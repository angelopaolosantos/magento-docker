use bitnami_magento;
update core_config_data set value="http://10.10.56.2/" where path='web/secure/base_url';
update core_config_data set value="http://10.10.56.2/" where path='web/unsecure/base_url';
