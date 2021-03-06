package org.springframework.beans.factory.config;

import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import org.springframework.beans.BeansException;

public class AccessiblePropertyPlaceholderConfigurerImpl extends PropertyPlaceholderConfigurer implements
		AccessiblePropertyPlaceholderConfigurer {

	private Map<String, String> propertiesMap;
	// Default as in PropertyPlaceholderConfigurer
	private int springSystemPropertiesMode = SYSTEM_PROPERTIES_MODE_FALLBACK;

	@Override
	public void setSystemPropertiesMode(int systemPropertiesMode) {
		super.setSystemPropertiesMode(systemPropertiesMode);
		springSystemPropertiesMode = systemPropertiesMode;
	}

	@Override
	protected void processProperties(ConfigurableListableBeanFactory beanFactory, Properties props)
			throws BeansException {
		super.processProperties(beanFactory, props);

		propertiesMap = new HashMap<String, String>();
		for (Object key : props.keySet()) {
			String keyStr = key.toString();
			String valueStr = resolvePlaceholder(keyStr, props, springSystemPropertiesMode);
			propertiesMap.put(keyStr, valueStr);
		}
	}

	@Override
	public Map<String, String> getProperties() {
		return propertiesMap;
	}

}
