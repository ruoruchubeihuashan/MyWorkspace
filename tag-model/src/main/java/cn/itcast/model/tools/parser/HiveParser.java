package cn.itcast.model.tools.parser;

import java.util.Map;

import cn.itcast.model.beans.MetaDataBean;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 
 * @author mengyao
 *
 */
public class HiveParser extends MetaParser {

	private Logger logger = LoggerFactory.getLogger(getClass());
	
	
	private final String DRIVER = "driver";
	private final String URL = "url";
	private final String USERNAME = "username";
	private final String PASSWORD = "password";
	private final String DB_TABLE = "dbTable";
	private final String SQL = "sql";
	private Map<String, String> ruleMap;
	
	HiveParser(Map<String, String> ruleMap) {
		this.ruleMap = ruleMap;
	}

	@Override
	public MetaDataBean getMeta() {
		logger.info("==== Rule map is: {} ====", ruleMap);
		MetaDataBean meta = new MetaDataBean()
				.buildHiveMeta(
						ruleMap.get(DRIVER), 
						ruleMap.get(URL), 
						ruleMap.get(USERNAME), 
						ruleMap.get(PASSWORD), 
						ruleMap.get(DB_TABLE), 
						ruleMap.get(SQL));
		debugMeta(meta);
		return meta;
	}
	
	/**
	 * 
	 * @param meta
	 */
	private void debugMeta(MetaDataBean meta) {
		logger.info("==== {} : {},{},{},{},{},{} ====", 
				HiveParser.class.getSimpleName(), 
				meta.getDriver(), 
				meta.getUrl(),
				meta.getUsername(),
				meta.getPassword(),
				meta.getDbTable(),
				meta.getSql()
				);
	}
	
}
