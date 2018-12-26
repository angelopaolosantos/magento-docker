#!/bin/bash
echo "Changing base url in mariadb..."
docker-compose exec -T mariadb mysql -u 'root' < ./mysql-change-base-url.sql

echo "flushing cache..."
docker-compose exec -T magento bash -c 'cd /opt/bitnami/magento/htdocs && bin/magento cache:flush'

echo "DONE!"
