#!/bin/bash
mysql -h localhost -P 3306 -u root -padmin -e "DROP DATABASE IF EXISTS isu4_qualifir" 
mysql -h localhost -P 3306 -u root -padmin -e "DROP DATABASE IF EXISTS isu4_qualifier; CREATE DATABASE isu4_qualifier" 
mysql -h localhost -P 3306 -u root -padmin isu4_qualifier < /sql/schema.sql
mysql -h localhost -P 3306 -u root -padmin isu4_qualifier < /sql/dummy_users.sql
mysql -h localhost -P 3306 -u root -padmin isu4_qualifier < /sql/dummy_log.sql
