package cn.itcast.model.models.match;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import cn.itcast.model.beans.BasicTagBean;
import cn.itcast.model.beans.MetaDataBean;
import cn.itcast.model.tools.hbase.HBaseTools;
import org.apache.commons.lang.StringUtils;
import org.apache.spark.SparkConf;
import org.apache.spark.sql.Column;
import org.apache.spark.sql.Dataset;
import org.apache.spark.sql.Row;
import org.apache.spark.sql.SparkSession;
import org.apache.spark.sql.functions;
import org.apache.spark.storage.StorageLevel;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.common.base.Preconditions;
import cn.itcast.model.models.AbstractModel;
import cn.itcast.model.models.ModelConfig;
import cn.itcast.model.tools.parser.MetaParser;
import cn.itcast.model.tools.spark.sql.SQLHBase;

/**
 * 用户政治面貌标签模型
 * Created by mengyao
 * 2019年6月3日
 */
public class Tag13Model extends AbstractModel {

	private Logger logger = LoggerFactory.getLogger(getClass());
	
	private static String appName = Tag13Model.class.getSimpleName();
	private ModelConfig modelConfig = new ModelConfig();
	private SparkConf sparkConf;
	private SparkSession session;
	private List<BasicTagBean> tag;
	
	
	public Tag13Model() {
		super(appName, "用户政治面貌标签模型");
		sparkConf=new SparkConf()
				.setAppName(appName)
				.setMaster(modelConfig.getSparkMaster())
				.registerKryoClasses(new Class[] {BasicTagBean.class});
		session = SQLHBase.getSession(sparkConf);
		logger.info("==== 已初始化SparkSQL相关配置 ====");
	}
	
	@Override
	public String getType() {
		return ModelType.MATCH.toString();
	}
	
	/**
	 * 13  政治面貌
	 * 80 群众=1
	 * 81 党员=2
	 * 82 无党派人士=3
	 */
	@SuppressWarnings("serial")
	@Override
	public List<BasicTagBean> getTag() {
		if (null == tag) {
			// SQL按照level字段升序，确保第一条数据是4级标签
			Dataset<Row> rowDF = session.read().jdbc(
					modelConfig.getMySQLUrl(),
					"(SELECT `id`,`name`,`industry`,`rule`,`business`,`level`,`pid`,`ctime`,`utime`,`state`,`remark` FROM `tags`.`tbl_basic_tag` WHERE id = 13 UNION SELECT `id`,`name`,`industry`,`rule`,`business`,`level`,`pid`,`ctime`,`utime`,`state`,`remark` FROM `tags`.`tbl_basic_tag` WHERE pid = 13 ORDER BY `level` ASC) AS btag", 
					new Properties() {{setProperty("driver", modelConfig.getMySQLDriver());}}
					);
			List<Row> rows = rowDF.collectAsList();
			if (rows.size() > 0) {
				tag = new LinkedList<BasicTagBean>();
				rows.forEach(row -> {
					BasicTagBean bean = new BasicTagBean();
					if (!row.isNullAt(0)) {bean.setId(row.getLong(0));}
					if (!row.isNullAt(1)) {bean.setName(row.getString(1));}
					if (!row.isNullAt(2)) {bean.setIndustry(row.getString(2));}
					if (!row.isNullAt(3)) {bean.setRule(row.getString(3));}
					if (!row.isNullAt(4)) {bean.setBusiness(row.getString(4));}
					if (!row.isNullAt(5)) {bean.setLevel(row.getInt(5));}
					if (!row.isNullAt(6)) {bean.setPid(row.getLong(6));}
					if (!row.isNullAt(7)) {bean.setCtime(row.getTimestamp(7).toString());}
					if (!row.isNullAt(8)) {bean.setUtime(row.getTimestamp(8).toString());}
					if (!row.isNullAt(9)) {bean.setState(row.getInt(9));}
					if (!row.isNullAt(10)) {bean.setRemark(row.getString(10));}
					tag.add(bean);
				});
				rowDF.unpersist();
			}			
		}
		logger.info("==== 模型所需的标签数据为: {} ====", tag);
		return tag;
	}

	@Override
	public void compute() {
		if (null == tag || tag.size() == 0) {
			logger.error("==== 没有该模型的标签数据！  ====");
			throw new RuntimeException();
		} else {
			// 四级标签规则必须存在
			String rule = tag.get(0).getRule();
			if (StringUtils.isEmpty(rule)) {
				logger.error("==== 四级标签规则不存在！ ====");
				throw new RuntimeException();
			} else {
				MetaDataBean meta = MetaParser.getParser(rule).getMeta();
				if (null == meta || StringUtils.isEmpty(meta.getInType())) {
					logger.error("==== 标签规则解析失败！ ====");
					throw new RuntimeException();
				} else {
					if (meta.getInType().toLowerCase().equals("hbase")) {
						Map<String, String> options = null;
						// 获取数据源表配置
						String table = meta.getHbaseTable();
						Preconditions.checkNotNull(table, "数据源表名必须不为空！");
						String family = meta.getFamily();
						Preconditions.checkNotNull(family, "数据源表的列簇必须不为空");
						String selectFields = meta.getSelectFieldNames();
						Preconditions.checkNotNull(selectFields, "数据源表的查询展示字段必须不为空！");
						String whereFields = meta.getWhereFieldNames();
						// 验证数据源的查询条件
						if (StringUtils.isEmpty(whereFields)) {
							//如果没有有查询条件
							options = modelConfig.getOptions(table, family, selectFields);
							logger.info("==== 数据源table={},family={},selectFileds={} ====", table, family, selectFields);
						} else {
							//如果有查询条件
							options = modelConfig.getOptions(table, family, selectFields, whereFields);
							logger.info("==== 数据源table={},family={},selectFileds={},whereFields={} ====", table, family, selectFields, whereFields);
						}
						// 获取画像表配置
						String profileTable = modelConfig.getProfileTableName();
						Preconditions.checkNotNull(profileTable, "画像表的表名必须不为空！");
						String userFamily = modelConfig.getProfileTableFamilyUser();
						Preconditions.checkNotNull(userFamily, "画像表的列簇必须不为空！");
						String userFamilyAlias = modelConfig.getProfileTableFamilyUserAlias();
						Preconditions.checkNotNull(userFamilyAlias, "画像表的RowKey前缀必须不为空！");
						// qualifier=userId
						String userIdColumn = modelConfig.getProfileFamilyUserCol();
						Preconditions.checkNotNull(userIdColumn, "画像表的userId列必须不为空！");
						// qualifier=tagIds
						String tagIdsColumn = modelConfig.getProfileCommonCol();
						Preconditions.checkNotNull(tagIdsColumn, "画像表的tagIds列必须不为空！");
						// 获取HBase数据源插件实现
						String format = modelConfig.getFormat();
						Dataset<Row> rowDF = session.read()
								.format(format)
								.options(options)
								.load();
						Dataset<Row> cacheDF = rowDF.persist(StorageLevel.DISK_ONLY());
						// 五级 群众标签
						BasicTagBean qzTag = tag.get(1);
						long qzId = qzTag.getId();
						String qz = qzTag.getRule();
						// 五级 党员标签
						BasicTagBean dyTag = tag.get(2);
						long dyId = dyTag.getId();
						String dy = dyTag.getRule();
						// 五级 无党派人士标签
						BasicTagBean wdpTag = tag.get(3);
						long wdpId = wdpTag.getId();
						String wdp = wdpTag.getRule();
						
						//用户-关联五级标签,该DataFrame的Schema为userid,tagId,marriage
						Dataset<Row> politicalFaceTagDF = cacheDF.select(new Column("id"), functions
								.when(new Column("politicalFace").equalTo(qz), qzId+"")//如果是群众
								.when(new Column("politicalFace").equalTo(dy), dyId+"")//如果是党员
								.when(new Column("politicalFace").equalTo(wdp), wdpId+"")//如果无党派人士
								.alias("tagId"), new Column("politicalFace"));
						//logger.debug("==== 计算条数：{} ====", politicalFaceTagDF.count());
						
						HBaseTools build = HBaseTools.build();
						//获取已存在的画像数据
						Map<String, Map<String, String>> existProfileData = build.scan(profileTable, userFamily);
						// 封装画像数据
						List<Row> rows = politicalFaceTagDF.collectAsList();
						if (rows.size() > 0) {
							Map<String, Map<String, String>> kvs = new HashMap<String, Map<String,String>>();
							rows.forEach(row -> {
								Map<String, String> kv = new HashMap<String,String>();
								String rowKey = null;
								if (!row.isNullAt(0)) {
									rowKey = row.getString(0)+"";
									kv.put(userIdColumn, rowKey);
								}
								if (!row.isNullAt(1)) {
									kv.put(tagIdsColumn, row.getString(1));
								}
								if (!StringUtils.isEmpty(rowKey)) {
									rowKey = userFamilyAlias + rowKey;
								}
								// 取出本次计算完成用户ID和五级标签
								String newUserId = kv.get(userIdColumn);
								String newTagId = kv.get(tagIdsColumn);
								if (StringUtils.isEmpty(newUserId)||StringUtils.isEmpty(newTagId)) {
									logger.info("==== 本次计算完成，但是没有结果！ ====");//本次计算完成，但是没有结果
								} else {
									// 说明画像表是空表，直接新增
									if (existProfileData.size() == 0) {
										kvs.put(rowKey, kv);
									} else {// 如果不是空表，则验证
										Map<String, String> map = existProfileData.get(rowKey);
										// 没有该用户的画像数据，直接新增
										if (null == map) {
											kvs.put(rowKey, kv);
										} else {// 有该用户的画像数据，取出
											String existTagIds = map.get(tagIdsColumn);
											if (!StringUtils.isEmpty(existTagIds)) {
												if (!existTagIds.contains(newTagId)) {// 用户存在，但本次计算的标签不存在
													kv.put(tagIdsColumn, existTagIds+","+newTagId);//在已有的标签后面追加本次计算的标签
													kvs.put(rowKey, kv);
												} else {
													logger.info("==== 该{}用户已存在ID={}的标签！ ====", rowKey, newTagId);
												}
											}
										}
									}
								}
							});
							//写入画像表
							build.addRows(profileTable, userFamily, kvs);
							build.close();
						} else {
							logger.info("==== 作业计算完成，但计算结果为空！ ====");
						}
					}
				}
			}
		}
	}
	
	@Override
	public void clear() {
		if (null != session) {
			session.close();
			logger.info("==== 释放SparkSQL相关资源 ====");
		}
	}
	
	public static void main(String[] args) {
		Tag13Model tagModel = new Tag13Model();
		tagModel.execute();
	}
	
}
