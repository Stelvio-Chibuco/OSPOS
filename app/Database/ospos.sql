-- MySQL dump 10.13  Distrib 8.0.43, for Linux (x86_64)
--
-- Host: localhost    Database: ospos
-- ------------------------------------------------------
-- Server version	8.0.43

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ospos_app_config`
--

DROP TABLE IF EXISTS `ospos_app_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_app_config` (
  `key` varchar(50) NOT NULL,
  `value` varchar(500) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_app_config`
--

LOCK TABLES `ospos_app_config` WRITE;
/*!40000 ALTER TABLE `ospos_app_config` DISABLE KEYS */;
INSERT INTO `ospos_app_config` VALUES ('account_number',''),('address','Av. Samora Machel/Xai-Xai/Gaza/Mozambique'),('allow_duplicate_barcodes','0'),('barcode_content','id'),('barcode_first_row','category'),('barcode_font','Arial.ttf'),('barcode_font_size','10'),('barcode_formats','null'),('barcode_generate_if_empty','1'),('barcode_height','50'),('barcode_num_in_row','2'),('barcode_page_cellspacing','20'),('barcode_page_width','100'),('barcode_second_row','item_code'),('barcode_third_row','unit_price'),('barcode_type','EAN13'),('barcode_width','250'),('cash_decimals','2'),('cash_rounding_code','1'),('category_dropdown','0'),('clcdesq_api_key',''),('clcdesq_api_url',''),('company','CyberGorilla - Tecnologia'),('company_logo','logo1.png'),('country_codes','mz'),('currency_code','MZN'),('currency_decimals','2'),('currency_symbol','MTn'),('customer_reward_enable','0'),('dateformat','d/m/Y'),('date_or_time_format','0'),('default_receivings_discount','0'),('default_receivings_discount_type','0'),('default_register_mode','sale'),('default_sales_discount','1'),('default_sales_discount_type','0'),('default_tax_1_name','IVA'),('default_tax_1_rate','17'),('default_tax_2_name','Lixo'),('default_tax_2_rate','2'),('default_tax_category',''),('default_tax_code',''),('default_tax_jurisdiction',''),('default_tax_rate','8'),('derive_sale_quantity','0'),('dinner_table_enable','0'),('email','cybergorilla@cybergorilla.gz.mz'),('email_receipt_check_behaviour','last'),('enforce_privacy','0'),('fax',''),('financial_year','1'),('gcaptcha_enable','0'),('gcaptcha_secret_key',''),('gcaptcha_site_key',''),('giftcard_number','series'),('image_allowed_types','jpg,jpeg,gif,svg,webp,png'),('image_max_height','768'),('image_max_size','2048'),('image_max_width','1024'),('include_hsn','0'),('invoice_default_comments','This is a default comment'),('invoice_email_message','Dear {CU}, In attachment the receipt for sale {ISEQ}'),('invoice_enable','1'),('invoice_type','invoice'),('language','portuguese'),('language_code','pt-BR'),('last_used_invoice_number','0'),('last_used_quote_number','0'),('last_used_work_order_number','0'),('lines_per_page','25'),('line_sequence','0'),('login_form','floating_labels'),('mailchimp_api_key',''),('mailchimp_list_id',''),('mailpath','/usr/sbin/sendmail'),('msg_msg',''),('msg_pwd',''),('msg_src',''),('msg_uid',''),('multi_pack_enabled','0'),('notify_horizontal_position','center'),('notify_vertical_position','bottom'),('number_locale','pt-MZ'),('payment_message',''),('payment_options_order','cashdebitcredit'),('phone','+258 84 766 9125'),('print_bottom_margin',''),('print_delay_autoreturn','0'),('print_footer','0'),('print_header','0'),('print_left_margin',''),('print_receipt_check_behaviour','last'),('print_right_margin',''),('print_silently','0'),('print_top_margin',''),('protocol','mail'),('quantity_decimals','0'),('quote_default_comments','This is a default quote comment'),('receipt_font_size','12'),('receipt_show_company_name','1'),('receipt_show_description','1'),('receipt_show_serialnumber','1'),('receipt_show_taxes','1'),('receipt_show_tax_ind','1'),('receipt_show_total_discount','1'),('receipt_template','receipt_short'),('receiving_calculate_average_price','1'),('recv_invoice_format','{CO}'),('return_policy','Teste'),('sales_invoice_format','{CO}'),('sales_quote_format','Q%y{QSEQ:6}'),('smtp_crypto','ssl'),('smtp_host',''),('smtp_pass',''),('smtp_port','465'),('smtp_timeout','5'),('smtp_user',''),('statistics','1'),('suggestions_first_column','name'),('suggestions_second_column',''),('suggestions_third_column',''),('tax_decimals','2'),('tax_id','17'),('tax_included','0'),('theme','spacelab'),('thousands_separator','1'),('timeformat','H:i:s'),('timezone','Africa/Blantyre'),('use_destination_based_tax','0'),('website',''),('work_order_enable','0'),('work_order_format','W%y{WSEQ:6}');
/*!40000 ALTER TABLE `ospos_app_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_attribute_definitions`
--

DROP TABLE IF EXISTS `ospos_attribute_definitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_attribute_definitions` (
  `definition_id` int NOT NULL AUTO_INCREMENT,
  `definition_name` varchar(255) NOT NULL,
  `definition_type` varchar(45) NOT NULL,
  `definition_unit` varchar(16) DEFAULT NULL,
  `definition_flags` tinyint(1) NOT NULL,
  `definition_fk` int DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`definition_id`),
  KEY `definition_fk` (`definition_fk`),
  KEY `definition_name` (`definition_name`),
  KEY `definition_type` (`definition_type`),
  CONSTRAINT `fk_ospos_attribute_definitions_ibfk_1` FOREIGN KEY (`definition_fk`) REFERENCES `ospos_attribute_definitions` (`definition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_attribute_definitions`
--

LOCK TABLES `ospos_attribute_definitions` WRITE;
/*!40000 ALTER TABLE `ospos_attribute_definitions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ospos_attribute_definitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_attribute_links`
--

DROP TABLE IF EXISTS `ospos_attribute_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_attribute_links` (
  `attribute_id` int DEFAULT NULL,
  `definition_id` int NOT NULL,
  `item_id` int DEFAULT NULL,
  `sale_id` int DEFAULT NULL,
  `receiving_id` int DEFAULT NULL,
  `generated_unique_column` varchar(255) GENERATED ALWAYS AS ((case when ((`sale_id` is null) and (`receiving_id` is null) and (`item_id` is not null)) then concat(`definition_id`,_utf8mb4'-',`item_id`) else NULL end)) STORED,
  UNIQUE KEY `attribute_links_uq1` (`attribute_id`,`definition_id`,`item_id`,`sale_id`,`receiving_id`),
  UNIQUE KEY `attribute_links_uq2` (`item_id`,`receiving_id`,`sale_id`,`definition_id`,`attribute_id`),
  UNIQUE KEY `attribute_links_uq3` (`generated_unique_column`),
  KEY `attribute_id` (`attribute_id`),
  KEY `definition_id` (`definition_id`),
  KEY `item_id` (`item_id`),
  KEY `sale_id` (`sale_id`),
  KEY `receiving_id` (`receiving_id`),
  CONSTRAINT `ospos_attribute_links_ibfk_1` FOREIGN KEY (`definition_id`) REFERENCES `ospos_attribute_definitions` (`definition_id`) ON DELETE RESTRICT,
  CONSTRAINT `ospos_attribute_links_ibfk_2` FOREIGN KEY (`attribute_id`) REFERENCES `ospos_attribute_values` (`attribute_id`) ON DELETE RESTRICT,
  CONSTRAINT `ospos_attribute_links_ibfk_3` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
  CONSTRAINT `ospos_attribute_links_ibfk_4` FOREIGN KEY (`receiving_id`) REFERENCES `ospos_receivings` (`receiving_id`),
  CONSTRAINT `ospos_attribute_links_ibfk_5` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_attribute_links`
--

LOCK TABLES `ospos_attribute_links` WRITE;
/*!40000 ALTER TABLE `ospos_attribute_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `ospos_attribute_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_attribute_values`
--

DROP TABLE IF EXISTS `ospos_attribute_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_attribute_values` (
  `attribute_id` int NOT NULL AUTO_INCREMENT,
  `attribute_value` varchar(255) DEFAULT NULL,
  `attribute_date` date DEFAULT NULL,
  `attribute_decimal` decimal(7,3) DEFAULT NULL,
  PRIMARY KEY (`attribute_id`),
  UNIQUE KEY `attribute_value` (`attribute_value`),
  UNIQUE KEY `attribute_date` (`attribute_date`),
  UNIQUE KEY `attribute_decimal` (`attribute_decimal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_attribute_values`
--

LOCK TABLES `ospos_attribute_values` WRITE;
/*!40000 ALTER TABLE `ospos_attribute_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `ospos_attribute_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_cash_up`
--

DROP TABLE IF EXISTS `ospos_cash_up`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_cash_up` (
  `cashup_id` int NOT NULL AUTO_INCREMENT,
  `open_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `close_date` timestamp NULL DEFAULT NULL,
  `open_amount_cash` decimal(15,2) NOT NULL,
  `transfer_amount_cash` decimal(15,2) NOT NULL,
  `note` tinyint NOT NULL DEFAULT '0',
  `closed_amount_cash` decimal(15,2) NOT NULL,
  `closed_amount_card` decimal(15,2) NOT NULL,
  `closed_amount_check` decimal(15,2) NOT NULL,
  `closed_amount_total` decimal(15,2) NOT NULL,
  `description` varchar(255) NOT NULL,
  `open_employee_id` int NOT NULL,
  `close_employee_id` int NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `closed_amount_due` decimal(15,2) NOT NULL,
  PRIMARY KEY (`cashup_id`),
  KEY `open_employee_id` (`open_employee_id`),
  KEY `close_employee_id` (`close_employee_id`),
  CONSTRAINT `ospos_cash_up_ibfk_1` FOREIGN KEY (`open_employee_id`) REFERENCES `ospos_employees` (`person_id`),
  CONSTRAINT `ospos_cash_up_ibfk_2` FOREIGN KEY (`close_employee_id`) REFERENCES `ospos_employees` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_cash_up`
--

LOCK TABLES `ospos_cash_up` WRITE;
/*!40000 ALTER TABLE `ospos_cash_up` DISABLE KEYS */;
/*!40000 ALTER TABLE `ospos_cash_up` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_customers`
--

DROP TABLE IF EXISTS `ospos_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_customers` (
  `person_id` int NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `taxable` tinyint(1) NOT NULL DEFAULT '1',
  `tax_id` varchar(32) NOT NULL DEFAULT '',
  `sales_tax_code_id` int DEFAULT NULL,
  `package_id` int DEFAULT NULL,
  `points` int DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `discount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `discount_type` tinyint(1) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `employee_id` int NOT NULL,
  `consent` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`person_id`),
  KEY `package_id` (`package_id`),
  KEY `sales_tax_code_id` (`sales_tax_code_id`),
  KEY `account_number` (`account_number`),
  KEY `company_name` (`company_name`),
  CONSTRAINT `ospos_customers_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_people` (`person_id`),
  CONSTRAINT `ospos_customers_ibfk_2` FOREIGN KEY (`package_id`) REFERENCES `ospos_customers_packages` (`package_id`),
  CONSTRAINT `ospos_customers_ibfk_3` FOREIGN KEY (`sales_tax_code_id`) REFERENCES `ospos_tax_codes` (`tax_code_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_customers`
--

LOCK TABLES `ospos_customers` WRITE;
/*!40000 ALTER TABLE `ospos_customers` DISABLE KEYS */;
INSERT INTO `ospos_customers` VALUES (3,NULL,NULL,0,'',NULL,NULL,NULL,0,0.00,0,'2025-09-12 05:10:37',1,1);
/*!40000 ALTER TABLE `ospos_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_customers_packages`
--

DROP TABLE IF EXISTS `ospos_customers_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_customers_packages` (
  `package_id` int NOT NULL AUTO_INCREMENT,
  `package_name` varchar(255) DEFAULT NULL,
  `points_percent` float NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`package_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_customers_packages`
--

LOCK TABLES `ospos_customers_packages` WRITE;
/*!40000 ALTER TABLE `ospos_customers_packages` DISABLE KEYS */;
INSERT INTO `ospos_customers_packages` VALUES (1,'Default',0,0),(2,'Bronze',10,0),(3,'Silver',20,0),(4,'Gold',30,0),(5,'Premium',50,0);
/*!40000 ALTER TABLE `ospos_customers_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_customers_points`
--

DROP TABLE IF EXISTS `ospos_customers_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_customers_points` (
  `id` int NOT NULL AUTO_INCREMENT,
  `person_id` int NOT NULL,
  `package_id` int NOT NULL,
  `sale_id` int NOT NULL,
  `points_earned` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `person_id` (`person_id`),
  KEY `package_id` (`package_id`),
  KEY `sale_id` (`sale_id`),
  CONSTRAINT `ospos_customers_points_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_customers` (`person_id`),
  CONSTRAINT `ospos_customers_points_ibfk_2` FOREIGN KEY (`package_id`) REFERENCES `ospos_customers_packages` (`package_id`),
  CONSTRAINT `ospos_customers_points_ibfk_3` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_customers_points`
--

LOCK TABLES `ospos_customers_points` WRITE;
/*!40000 ALTER TABLE `ospos_customers_points` DISABLE KEYS */;
/*!40000 ALTER TABLE `ospos_customers_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_dinner_tables`
--

DROP TABLE IF EXISTS `ospos_dinner_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_dinner_tables` (
  `dinner_table_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`dinner_table_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_dinner_tables`
--

LOCK TABLES `ospos_dinner_tables` WRITE;
/*!40000 ALTER TABLE `ospos_dinner_tables` DISABLE KEYS */;
INSERT INTO `ospos_dinner_tables` VALUES (1,'Delivery',0,0),(2,'Take Away',0,0);
/*!40000 ALTER TABLE `ospos_dinner_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_employees`
--

DROP TABLE IF EXISTS `ospos_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_employees` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `person_id` int NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `hash_version` tinyint(1) NOT NULL DEFAULT '2',
  `language` varchar(48) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`person_id`),
  UNIQUE KEY `username` (`username`),
  CONSTRAINT `ospos_employees_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_people` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_employees`
--

LOCK TABLES `ospos_employees` WRITE;
/*!40000 ALTER TABLE `ospos_employees` DISABLE KEYS */;
INSERT INTO `ospos_employees` VALUES ('admin','$2y$12$JUuC845X59btdEFV0DGvwO3gqhv2BZLOMfpdcSTgsJ0a08P9Gduse',1,0,2,'portuguese','pt-BR'),('operadora','$2y$12$2d1TVKUUhNtz.4RbhvMveeVSKv2IY4qad..oqgnuE0PwU.eiWY8SG',2,0,2,'portuguese','pt-BR');
/*!40000 ALTER TABLE `ospos_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_expense_categories`
--

DROP TABLE IF EXISTS `ospos_expense_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_expense_categories` (
  `expense_category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  `category_description` varchar(255) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`expense_category_id`),
  UNIQUE KEY `category_name` (`category_name`),
  KEY `category_description` (`category_description`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_expense_categories`
--

LOCK TABLES `ospos_expense_categories` WRITE;
/*!40000 ALTER TABLE `ospos_expense_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ospos_expense_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_expenses`
--

DROP TABLE IF EXISTS `ospos_expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_expenses` (
  `expense_id` int NOT NULL AUTO_INCREMENT,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `amount` decimal(15,2) NOT NULL,
  `payment_type` varchar(40) NOT NULL,
  `expense_category_id` int NOT NULL,
  `description` varchar(255) NOT NULL,
  `employee_id` int NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `supplier_tax_code` varchar(255) DEFAULT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `supplier_id` int DEFAULT NULL,
  PRIMARY KEY (`expense_id`),
  KEY `expense_category_id` (`expense_category_id`),
  KEY `employee_id` (`employee_id`),
  KEY `date` (`date`),
  KEY `payment_type` (`payment_type`),
  KEY `amount` (`amount`),
  KEY `ospos_expenses_ibfk_3` (`supplier_id`),
  CONSTRAINT `ospos_expenses_ibfk_1` FOREIGN KEY (`expense_category_id`) REFERENCES `ospos_expense_categories` (`expense_category_id`),
  CONSTRAINT `ospos_expenses_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`),
  CONSTRAINT `ospos_expenses_ibfk_3` FOREIGN KEY (`supplier_id`) REFERENCES `ospos_suppliers` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_expenses`
--

LOCK TABLES `ospos_expenses` WRITE;
/*!40000 ALTER TABLE `ospos_expenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ospos_expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_giftcards`
--

DROP TABLE IF EXISTS `ospos_giftcards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_giftcards` (
  `record_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `giftcard_id` int NOT NULL AUTO_INCREMENT,
  `giftcard_number` varchar(255) DEFAULT NULL,
  `value` decimal(15,2) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `person_id` int DEFAULT NULL,
  PRIMARY KEY (`giftcard_id`),
  UNIQUE KEY `giftcard_number` (`giftcard_number`),
  KEY `person_id` (`person_id`),
  CONSTRAINT `ospos_giftcards_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_people` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_giftcards`
--

LOCK TABLES `ospos_giftcards` WRITE;
/*!40000 ALTER TABLE `ospos_giftcards` DISABLE KEYS */;
/*!40000 ALTER TABLE `ospos_giftcards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_grants`
--

DROP TABLE IF EXISTS `ospos_grants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_grants` (
  `permission_id` varchar(255) NOT NULL,
  `person_id` int NOT NULL,
  `menu_group` varchar(32) DEFAULT 'home',
  PRIMARY KEY (`permission_id`,`person_id`),
  KEY `ospos_grants_ibfk_2` (`person_id`),
  CONSTRAINT `ospos_grants_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `ospos_permissions` (`permission_id`) ON DELETE CASCADE,
  CONSTRAINT `ospos_grants_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `ospos_employees` (`person_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_grants`
--

LOCK TABLES `ospos_grants` WRITE;
/*!40000 ALTER TABLE `ospos_grants` DISABLE KEYS */;
INSERT INTO `ospos_grants` VALUES ('attributes',1,'office'),('cashups',1,'home'),('config',1,'office'),('customers',1,'home'),('customers',2,'home'),('employees',1,'office'),('expenses',1,'home'),('expenses_categories',1,'office'),('giftcards',1,'home'),('giftcards',2,'home'),('home',1,'office'),('home',2,'home'),('items',1,'home'),('items_stock',1,'--'),('item_kits',1,'home'),('messages',1,'home'),('messages',2,'home'),('office',1,'home'),('receivings',1,'home'),('receivings',2,'home'),('receivings_stock',1,'--'),('receivings_stock',2,'--'),('reports',1,'home'),('reports',2,'home'),('reports_categories',1,'--'),('reports_categories',2,'--'),('reports_customers',1,'--'),('reports_customers',2,'--'),('reports_discounts',1,'--'),('reports_discounts',2,'--'),('reports_employees',1,'--'),('reports_expenses_categories',1,'--'),('reports_inventory',1,'--'),('reports_inventory',2,'--'),('reports_items',1,'--'),('reports_items',2,'--'),('reports_payments',1,'--'),('reports_payments',2,'--'),('reports_receivings',1,'--'),('reports_receivings',2,'--'),('reports_sales',1,'--'),('reports_sales',2,'--'),('reports_sales_taxes',1,'--'),('reports_suppliers',1,'--'),('reports_taxes',1,'--'),('sales',1,'home'),('sales',2,'home'),('sales_change_price',1,'--'),('sales_delete',1,'--'),('sales_stock',1,'--'),('sales_stock',2,'--'),('suppliers',1,'home');
/*!40000 ALTER TABLE `ospos_grants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_inventory`
--

DROP TABLE IF EXISTS `ospos_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_inventory` (
  `trans_id` int NOT NULL AUTO_INCREMENT,
  `trans_items` int NOT NULL DEFAULT '0',
  `trans_user` int NOT NULL DEFAULT '0',
  `trans_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `trans_comment` text NOT NULL,
  `trans_location` int NOT NULL,
  `trans_inventory` decimal(15,3) NOT NULL DEFAULT '0.000',
  PRIMARY KEY (`trans_id`),
  KEY `trans_items` (`trans_items`),
  KEY `trans_user` (`trans_user`),
  KEY `trans_location` (`trans_location`),
  KEY `trans_date` (`trans_date`),
  KEY `trans_items_trans_date` (`trans_items`,`trans_date`),
  CONSTRAINT `ospos_inventory_ibfk_1` FOREIGN KEY (`trans_items`) REFERENCES `ospos_items` (`item_id`),
  CONSTRAINT `ospos_inventory_ibfk_2` FOREIGN KEY (`trans_user`) REFERENCES `ospos_employees` (`person_id`),
  CONSTRAINT `ospos_inventory_ibfk_3` FOREIGN KEY (`trans_location`) REFERENCES `ospos_stock_locations` (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_inventory`
--

LOCK TABLES `ospos_inventory` WRITE;
/*!40000 ALTER TABLE `ospos_inventory` DISABLE KEYS */;
INSERT INTO `ospos_inventory` VALUES (1,1,1,'2025-09-12 05:16:59','Editar manualmente a quantidade',1,0.000),(2,2,1,'2025-09-12 05:18:21','Editar manualmente a quantidade',1,0.000),(3,3,1,'2025-09-12 05:22:02','Editar manualmente a quantidade',1,0.000),(4,4,1,'2025-09-12 05:23:24','Editar manualmente a quantidade',1,0.000),(5,5,1,'2025-09-12 05:24:42','Editar manualmente a quantidade',1,0.000),(6,6,1,'2025-09-12 05:26:17','Editar manualmente a quantidade',1,0.000),(7,7,1,'2025-09-12 05:27:29','Editar manualmente a quantidade',1,0.000),(8,2,1,'2025-09-12 05:28:35','RECV 1',1,10.000),(9,1,1,'2025-09-12 05:30:30','RECV 2',1,60.000),(10,8,1,'2025-09-12 05:32:57','Editar manualmente a quantidade',1,0.000),(11,8,1,'2025-09-12 05:35:40','POS 1',1,-1.000),(12,1,1,'2025-09-12 05:38:27','POS 2',1,-1.000);
/*!40000 ALTER TABLE `ospos_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_item_kit_items`
--

DROP TABLE IF EXISTS `ospos_item_kit_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_item_kit_items` (
  `item_kit_id` int NOT NULL,
  `item_id` int NOT NULL,
  `quantity` decimal(15,3) NOT NULL,
  `kit_sequence` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_kit_id`,`item_id`,`quantity`),
  KEY `ospos_item_kit_items_ibfk_2` (`item_id`),
  CONSTRAINT `ospos_item_kit_items_ibfk_1` FOREIGN KEY (`item_kit_id`) REFERENCES `ospos_item_kits` (`item_kit_id`) ON DELETE CASCADE,
  CONSTRAINT `ospos_item_kit_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_item_kit_items`
--

LOCK TABLES `ospos_item_kit_items` WRITE;
/*!40000 ALTER TABLE `ospos_item_kit_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ospos_item_kit_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_item_kits`
--

DROP TABLE IF EXISTS `ospos_item_kits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_item_kits` (
  `item_kit_id` int NOT NULL AUTO_INCREMENT,
  `item_kit_number` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `item_id` int NOT NULL DEFAULT '0',
  `kit_discount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `kit_discount_type` tinyint(1) NOT NULL DEFAULT '0',
  `price_option` tinyint(1) NOT NULL DEFAULT '0',
  `print_option` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_kit_id`),
  KEY `item_kit_number` (`item_kit_number`),
  KEY `name` (`name`,`description`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_item_kits`
--

LOCK TABLES `ospos_item_kits` WRITE;
/*!40000 ALTER TABLE `ospos_item_kits` DISABLE KEYS */;
/*!40000 ALTER TABLE `ospos_item_kits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_item_quantities`
--

DROP TABLE IF EXISTS `ospos_item_quantities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_item_quantities` (
  `item_id` int NOT NULL,
  `location_id` int NOT NULL,
  `quantity` decimal(15,3) NOT NULL DEFAULT '0.000',
  PRIMARY KEY (`item_id`,`location_id`),
  KEY `item_id` (`item_id`),
  KEY `location_id` (`location_id`),
  CONSTRAINT `ospos_item_quantities_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
  CONSTRAINT `ospos_item_quantities_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `ospos_stock_locations` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_item_quantities`
--

LOCK TABLES `ospos_item_quantities` WRITE;
/*!40000 ALTER TABLE `ospos_item_quantities` DISABLE KEYS */;
INSERT INTO `ospos_item_quantities` VALUES (1,1,59.000),(2,1,10.000),(3,1,0.000),(4,1,0.000),(5,1,0.000),(6,1,0.000),(7,1,0.000),(8,1,-1.000);
/*!40000 ALTER TABLE `ospos_item_quantities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_items`
--

DROP TABLE IF EXISTS `ospos_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_items` (
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `supplier_id` int DEFAULT NULL,
  `item_number` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `cost_price` decimal(15,2) NOT NULL,
  `unit_price` decimal(15,2) NOT NULL,
  `reorder_level` decimal(15,3) NOT NULL DEFAULT '0.000',
  `receiving_quantity` decimal(15,3) NOT NULL DEFAULT '1.000',
  `item_id` int NOT NULL AUTO_INCREMENT,
  `pic_filename` varchar(255) DEFAULT NULL,
  `allow_alt_description` tinyint(1) NOT NULL,
  `is_serialized` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `stock_type` tinyint(1) NOT NULL DEFAULT '0',
  `item_type` tinyint(1) NOT NULL DEFAULT '0',
  `tax_category_id` int DEFAULT NULL,
  `qty_per_pack` decimal(15,3) NOT NULL DEFAULT '1.000',
  `pack_name` varchar(8) DEFAULT 'Each',
  `low_sell_item_id` int DEFAULT '0',
  `hsn_code` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `items_uq1` (`supplier_id`,`item_id`,`deleted`,`item_type`),
  KEY `supplier_id` (`supplier_id`),
  KEY `item_number` (`item_number`),
  KEY `deleted` (`deleted`,`item_type`),
  KEY `item_id` (`item_id`,`deleted`),
  CONSTRAINT `ospos_items_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `ospos_suppliers` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_items`
--

LOCK TABLES `ospos_items` WRITE;
/*!40000 ALTER TABLE `ospos_items` DISABLE KEYS */;
INSERT INTO `ospos_items` VALUES ('Mouse Logitech M90','Acessórios',4,NULL,'',500.00,800.00,10.000,60.000,1,NULL,1,0,0,0,0,NULL,1.000,'Cada',1,''),('Teclado Mecânico Redragon K552','Acessórios',5,NULL,'',2000.00,3000.00,2.000,10.000,2,NULL,1,0,0,0,0,NULL,1.000,'Cada',2,''),('Manutenção Preventiva','Serviços de TI',NULL,NULL,'',2000.00,2000.00,0.000,0.000,3,NULL,1,0,0,0,0,NULL,1.000,'Cada',3,''),('Instalação de SO','Serviços de TI',NULL,NULL,'',1000.00,0.00,0.000,0.000,4,NULL,0,0,0,0,0,NULL,1.000,'Cada',4,''),('Design','Design',NULL,NULL,'',3500.00,3500.00,0.000,0.000,5,NULL,0,0,0,0,0,NULL,1.000,'Cada',5,''),('Consultoria (2h)','Segurança Informatica',NULL,NULL,'',5000.00,5000.00,0.000,0.000,6,NULL,1,0,0,0,0,NULL,1.000,'Cada',6,''),('Sistemas','Programação',NULL,NULL,'',25000.00,25000.00,0.000,0.000,7,NULL,0,0,0,0,0,NULL,1.000,'Cada',7,''),('Disco SSD 480GB Kingston','Acessórios',5,NULL,'',2500.00,4000.00,2.000,10.000,8,NULL,1,1,0,0,0,NULL,1.000,'Cada',8,'');
/*!40000 ALTER TABLE `ospos_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_items_taxes`
--

DROP TABLE IF EXISTS `ospos_items_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_items_taxes` (
  `item_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `percent` decimal(15,3) NOT NULL,
  PRIMARY KEY (`item_id`,`name`,`percent`),
  CONSTRAINT `ospos_items_taxes_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_items_taxes`
--

LOCK TABLES `ospos_items_taxes` WRITE;
/*!40000 ALTER TABLE `ospos_items_taxes` DISABLE KEYS */;
INSERT INTO `ospos_items_taxes` VALUES (1,'IVA',17.000),(1,'Lixo',2.000),(2,'IVA',17.000),(2,'Lixo',2.000),(3,'IVA',17.000),(3,'Lixo',2.000),(4,'IVA',17.000),(4,'Lixo',2.000),(5,'IVA',17.000),(5,'Lixo',2.000),(6,'IVA',17.000),(6,'Lixo',2.000),(7,'IVA',17.000),(7,'Lixo',2.000),(8,'IVA',17.000),(8,'Lixo',2.000);
/*!40000 ALTER TABLE `ospos_items_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_migrations`
--

DROP TABLE IF EXISTS `ospos_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_migrations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `group` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `namespace` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `time` int NOT NULL,
  `batch` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_migrations`
--

LOCK TABLES `ospos_migrations` WRITE;
/*!40000 ALTER TABLE `ospos_migrations` DISABLE KEYS */;
INSERT INTO `ospos_migrations` VALUES (1,'20170501150000','App\\Database\\Migrations\\Migration_Upgrade_To_3_1_1','development','App',1757673099,1),(2,'20170502221506','App\\Database\\Migrations\\Migration_Sales_Tax_Data','development','App',1757673099,1),(3,'20180225100000','App\\Database\\Migrations\\Migration_Upgrade_To_3_2_0','development','App',1757673100,1),(4,'20180501100000','App\\Database\\Migrations\\Migration_Upgrade_To_3_2_1','development','App',1757673100,1),(5,'20181015100000','App\\Database\\Migrations\\Migration_Attributes','development','App',1757673100,1),(6,'20190111270000','App\\Database\\Migrations\\Migration_Upgrade_To_3_3_0','development','App',1757673101,1),(7,'20190129212600','App\\Database\\Migrations\\Migration_IndiaGST','development','App',1757673102,1),(8,'20190213210000','App\\Database\\Migrations\\Migration_IndiaGST1','development','App',1757673102,1),(9,'20190220210000','App\\Database\\Migrations\\Migration_IndiaGST2','development','App',1757673102,1),(10,'20190301124900','App\\Database\\Migrations\\Migration_decimal_attribute_type','development','App',1757673102,1),(11,'20190317102600','App\\Database\\Migrations\\Migration_add_iso_4217','development','App',1757673102,1),(12,'20190427100000','App\\Database\\Migrations\\Migration_PaymentTracking','development','App',1757673102,1),(13,'20190502100000','App\\Database\\Migrations\\Migration_RefundTracking','development','App',1757673102,1),(14,'20190612100000','App\\Database\\Migrations\\Migration_DBFix','development','App',1757673103,1),(15,'20190615100000','App\\Database\\Migrations\\Migration_fix_attribute_datetime','development','App',1757673103,1),(16,'20190712150200','App\\Database\\Migrations\\Migration_fix_empty_reports','development','App',1757673103,1),(17,'20191008100000','App\\Database\\Migrations\\Migration_receipttaxindicator','development','App',1757673103,1),(18,'20191231100000','App\\Database\\Migrations\\Migration_PaymentDateFix','development','App',1757673103,1),(19,'20200125100000','App\\Database\\Migrations\\Migration_SalesChangePrice','development','App',1757673103,1),(20,'20200202000000','App\\Database\\Migrations\\Migration_TaxAmount','development','App',1757673103,1),(21,'20200215100000','App\\Database\\Migrations\\Migration_taxgroupconstraint','development','App',1757673103,1),(22,'20200508000000','App\\Database\\Migrations\\Migration_image_upload_defaults','development','App',1757673103,1),(23,'20200819000000','App\\Database\\Migrations\\Migration_modify_attr_links_constraint','development','App',1757673103,1),(24,'20201108100000','App\\Database\\Migrations\\Migration_cashrounding','development','App',1757673103,1),(25,'20201110000000','App\\Database\\Migrations\\Migration_add_item_kit_number','development','App',1757673103,1),(26,'20210103000000','App\\Database\\Migrations\\Migration_modify_session_datatype','development','App',1757673103,1),(27,'20210422000000','App\\Database\\Migrations\\Migration_database_optimizations','development','App',1757673107,1),(28,'20210422000001','App\\Database\\Migrations\\Migration_remove_duplicate_links','development','App',1757673107,1),(29,'20210714140000','App\\Database\\Migrations\\Migration_move_expenses_categories','development','App',1757673107,1),(30,'20220127000000','App\\Database\\Migrations\\Convert_to_ci4','development','App',1757673107,1),(31,'20230307000000','App\\Database\\Migrations\\IntToTinyint','development','App',1757673108,1),(32,'20230412000000','App\\Database\\Migrations\\Migration_add_missing_config','development','App',1757673108,1),(33,'20230412000001','App\\Database\\Migrations\\Migration_drop_account_number_index','development','App',1757673108,1),(34,'20240319000000','App\\Database\\Migrations\\Migration_Convert_Barcode_Types','development','App',1757673108,1),(35,'20240630000001','App\\Database\\Migrations\\Migration_fix_keys_for_db_upgrade','development','App',1757673108,1),(36,'20240826000000','App\\Database\\Migrations\\fix_duplicate_attributes','development','App',1757673110,1),(37,'20250213000000','App\\Database\\Migrations\\Migration_Attributes_fix_cascading_delete','development','App',1757673110,1),(38,'20250425000000','App\\Database\\Migrations\\Migration_sessions_migration','development','App',1757673111,1),(39,'20250519000000','App\\Database\\Migrations\\MigrationOptimizationIndices','development','App',1757673111,1),(40,'20250522000000','App\\Database\\Migrations\\AttributeLinksUniqueConstraint','development','App',1757673111,1),(41,'20250716170000','App\\Database\\Migrations\\Migration_MissingConfigKeys','development','App',1757673111,1),(42,'20250729170000','App\\Database\\Migrations\\Migration_NullableTaxCategoryId','development','App',1757673111,1);
/*!40000 ALTER TABLE `ospos_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_modules`
--

DROP TABLE IF EXISTS `ospos_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_modules` (
  `name_lang_key` varchar(255) NOT NULL,
  `desc_lang_key` varchar(255) NOT NULL,
  `sort` int NOT NULL,
  `module_id` varchar(255) NOT NULL,
  PRIMARY KEY (`module_id`),
  UNIQUE KEY `desc_lang_key` (`desc_lang_key`),
  UNIQUE KEY `name_lang_key` (`name_lang_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_modules`
--

LOCK TABLES `ospos_modules` WRITE;
/*!40000 ALTER TABLE `ospos_modules` DISABLE KEYS */;
INSERT INTO `ospos_modules` VALUES ('module_attributes','module_attributes_desc',107,'attributes'),('module_cashups','module_cashups_desc',110,'cashups'),('module_config','module_config_desc',900,'config'),('module_customers','module_customers_desc',10,'customers'),('module_employees','module_employees_desc',80,'employees'),('module_expenses','module_expenses_desc',108,'expenses'),('module_expenses_categories','module_expenses_categories_desc',109,'expenses_categories'),('module_giftcards','module_giftcards_desc',90,'giftcards'),('module_home','module_home_desc',1,'home'),('module_items','module_items_desc',20,'items'),('module_item_kits','module_item_kits_desc',30,'item_kits'),('module_messages','module_messages_desc',98,'messages'),('module_office','module_office_desc',999,'office'),('module_receivings','module_receivings_desc',60,'receivings'),('module_reports','module_reports_desc',50,'reports'),('module_sales','module_sales_desc',70,'sales'),('module_suppliers','module_suppliers_desc',40,'suppliers'),('module_taxes','module_taxes_desc',105,'taxes');
/*!40000 ALTER TABLE `ospos_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_people`
--

DROP TABLE IF EXISTS `ospos_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_people` (
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` int DEFAULT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `comments` text NOT NULL,
  `person_id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`person_id`),
  KEY `email` (`email`),
  KEY `first_name` (`first_name`,`last_name`,`email`,`phone_number`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_people`
--

LOCK TABLES `ospos_people` WRITE;
/*!40000 ALTER TABLE `ospos_people` DISABLE KEYS */;
INSERT INTO `ospos_people` VALUES ('Stelvio','Chibuco',1,'+258 84 766 9125','stelviochibuco@cybergorilla.gz.mz','Av. Samora Machel','Rua da Radio','Xai-Xai','Gaza','1200','Mo&ccedil;ambique','',1),('Querandre','Chibuco',0,'','','','','','','','','',2),('Aaaaaaa','Bbbbbbb',NULL,'','','','','','','','','',3),('Aaaaa','Bbbbb',NULL,'','','','','','','','','',4),('Bbbbb','Aaaaa',NULL,'','','','','','','','','',5),('Aaaaa','Zzzzz',NULL,'','','','','','','','','',6);
/*!40000 ALTER TABLE `ospos_people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_permissions`
--

DROP TABLE IF EXISTS `ospos_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_permissions` (
  `permission_id` varchar(255) NOT NULL,
  `module_id` varchar(255) NOT NULL,
  `location_id` int DEFAULT NULL,
  PRIMARY KEY (`permission_id`),
  KEY `module_id` (`module_id`),
  KEY `ospos_permissions_ibfk_2` (`location_id`),
  CONSTRAINT `ospos_permissions_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `ospos_modules` (`module_id`) ON DELETE CASCADE,
  CONSTRAINT `ospos_permissions_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `ospos_stock_locations` (`location_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_permissions`
--

LOCK TABLES `ospos_permissions` WRITE;
/*!40000 ALTER TABLE `ospos_permissions` DISABLE KEYS */;
INSERT INTO `ospos_permissions` VALUES ('attributes','attributes',NULL),('cashups','cashups',NULL),('config','config',NULL),('customers','customers',NULL),('employees','employees',NULL),('expenses','expenses',NULL),('expenses_categories','expenses_categories',NULL),('giftcards','giftcards',NULL),('home','home',NULL),('items','items',NULL),('items_stock','items',1),('item_kits','item_kits',NULL),('messages','messages',NULL),('office','office',NULL),('receivings','receivings',NULL),('receivings_stock','receivings',1),('reports','reports',NULL),('reports_categories','reports',NULL),('reports_customers','reports',NULL),('reports_discounts','reports',NULL),('reports_employees','reports',NULL),('reports_expenses_categories','reports',NULL),('reports_inventory','reports',NULL),('reports_items','reports',NULL),('reports_payments','reports',NULL),('reports_receivings','reports',NULL),('reports_sales','reports',NULL),('reports_sales_taxes','reports',NULL),('reports_suppliers','reports',NULL),('reports_taxes','reports',NULL),('sales','sales',NULL),('sales_change_price','sales',NULL),('sales_delete','sales',NULL),('sales_stock','sales',1),('suppliers','suppliers',NULL),('taxes','taxes',NULL);
/*!40000 ALTER TABLE `ospos_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_receivings`
--

DROP TABLE IF EXISTS `ospos_receivings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_receivings` (
  `receiving_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `supplier_id` int DEFAULT NULL,
  `employee_id` int NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `receiving_id` int NOT NULL AUTO_INCREMENT,
  `payment_type` varchar(20) DEFAULT NULL,
  `reference` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`receiving_id`),
  KEY `supplier_id` (`supplier_id`),
  KEY `employee_id` (`employee_id`),
  KEY `reference` (`reference`),
  KEY `receiving_time` (`receiving_time`),
  CONSTRAINT `ospos_receivings_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`),
  CONSTRAINT `ospos_receivings_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `ospos_suppliers` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_receivings`
--

LOCK TABLES `ospos_receivings` WRITE;
/*!40000 ALTER TABLE `ospos_receivings` DISABLE KEYS */;
INSERT INTO `ospos_receivings` VALUES ('2025-09-12 05:28:35',5,1,'',1,'Dinheiro','001'),('2025-09-12 05:30:30',NULL,1,'',2,'Dinheiro','002');
/*!40000 ALTER TABLE `ospos_receivings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_receivings_items`
--

DROP TABLE IF EXISTS `ospos_receivings_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_receivings_items` (
  `receiving_id` int NOT NULL DEFAULT '0',
  `item_id` int NOT NULL DEFAULT '0',
  `description` varchar(30) DEFAULT NULL,
  `serialnumber` varchar(30) DEFAULT NULL,
  `line` int NOT NULL,
  `quantity_purchased` decimal(15,3) NOT NULL DEFAULT '0.000',
  `item_cost_price` decimal(15,2) NOT NULL,
  `item_unit_price` decimal(15,2) NOT NULL,
  `discount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `discount_type` tinyint(1) NOT NULL DEFAULT '0',
  `item_location` int NOT NULL,
  `receiving_quantity` decimal(15,3) NOT NULL DEFAULT '1.000',
  PRIMARY KEY (`receiving_id`,`item_id`,`line`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `ospos_receivings_items_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
  CONSTRAINT `ospos_receivings_items_ibfk_2` FOREIGN KEY (`receiving_id`) REFERENCES `ospos_receivings` (`receiving_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_receivings_items`
--

LOCK TABLES `ospos_receivings_items` WRITE;
/*!40000 ALTER TABLE `ospos_receivings_items` DISABLE KEYS */;
INSERT INTO `ospos_receivings_items` VALUES (1,2,'','',1,1.000,2000.00,2000.00,0.00,0,1,10.000),(2,1,'','',1,1.000,500.00,500.00,0.00,0,1,60.000);
/*!40000 ALTER TABLE `ospos_receivings_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_sales`
--

DROP TABLE IF EXISTS `ospos_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_sales` (
  `sale_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int DEFAULT NULL,
  `employee_id` int NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `invoice_number` varchar(32) DEFAULT NULL,
  `dinner_table_id` int DEFAULT NULL,
  `sale_id` int NOT NULL AUTO_INCREMENT,
  `quote_number` varchar(32) DEFAULT NULL,
  `sale_status` tinyint(1) NOT NULL DEFAULT '0',
  `work_order_number` varchar(32) DEFAULT NULL,
  `sale_type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sale_id`),
  UNIQUE KEY `invoice_number` (`invoice_number`),
  KEY `customer_id` (`customer_id`),
  KEY `employee_id` (`employee_id`),
  KEY `sale_time` (`sale_time`),
  KEY `dinner_table_id` (`dinner_table_id`),
  CONSTRAINT `ospos_sales_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`),
  CONSTRAINT `ospos_sales_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `ospos_customers` (`person_id`),
  CONSTRAINT `ospos_sales_ibfk_3` FOREIGN KEY (`dinner_table_id`) REFERENCES `ospos_dinner_tables` (`dinner_table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_sales`
--

LOCK TABLES `ospos_sales` WRITE;
/*!40000 ALTER TABLE `ospos_sales` DISABLE KEYS */;
INSERT INTO `ospos_sales` VALUES ('2025-09-12 05:35:40',NULL,1,'',NULL,NULL,1,NULL,0,NULL,0),('2025-09-12 05:38:27',NULL,1,'',NULL,NULL,2,NULL,0,NULL,0);
/*!40000 ALTER TABLE `ospos_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_sales_items`
--

DROP TABLE IF EXISTS `ospos_sales_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_sales_items` (
  `sale_id` int NOT NULL DEFAULT '0',
  `item_id` int NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `serialnumber` varchar(30) DEFAULT NULL,
  `line` int NOT NULL DEFAULT '0',
  `quantity_purchased` decimal(15,3) NOT NULL DEFAULT '0.000',
  `item_cost_price` decimal(15,2) NOT NULL,
  `item_unit_price` decimal(15,2) NOT NULL,
  `discount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `discount_type` tinyint(1) NOT NULL DEFAULT '0',
  `item_location` int NOT NULL,
  `print_option` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sale_id`,`item_id`,`line`),
  KEY `sale_id` (`sale_id`),
  KEY `item_id` (`item_id`),
  KEY `item_location` (`item_location`),
  CONSTRAINT `ospos_sales_items_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
  CONSTRAINT `ospos_sales_items_ibfk_2` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`),
  CONSTRAINT `ospos_sales_items_ibfk_3` FOREIGN KEY (`item_location`) REFERENCES `ospos_stock_locations` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_sales_items`
--

LOCK TABLES `ospos_sales_items` WRITE;
/*!40000 ALTER TABLE `ospos_sales_items` DISABLE KEYS */;
INSERT INTO `ospos_sales_items` VALUES (1,8,'','',1,1.000,2500.00,4000.00,1.00,0,1,0),(2,1,'','',1,1.000,500.00,800.00,1.00,0,1,0);
/*!40000 ALTER TABLE `ospos_sales_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_sales_items_taxes`
--

DROP TABLE IF EXISTS `ospos_sales_items_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_sales_items_taxes` (
  `sale_id` int NOT NULL,
  `item_id` int NOT NULL,
  `line` int NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `percent` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax_type` tinyint(1) NOT NULL DEFAULT '0',
  `rounding_code` tinyint(1) NOT NULL DEFAULT '0',
  `cascade_sequence` tinyint(1) NOT NULL DEFAULT '0',
  `item_tax_amount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sales_tax_code_id` int DEFAULT NULL,
  `jurisdiction_id` int DEFAULT NULL,
  `tax_category_id` int DEFAULT NULL,
  PRIMARY KEY (`sale_id`,`item_id`,`line`,`name`,`percent`),
  KEY `sale_id` (`sale_id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `ospos_sales_items_taxes_ibfk_1` FOREIGN KEY (`sale_id`, `item_id`, `line`) REFERENCES `ospos_sales_items` (`sale_id`, `item_id`, `line`),
  CONSTRAINT `ospos_sales_items_taxes_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_sales_items_taxes`
--

LOCK TABLES `ospos_sales_items_taxes` WRITE;
/*!40000 ALTER TABLE `ospos_sales_items_taxes` DISABLE KEYS */;
INSERT INTO `ospos_sales_items_taxes` VALUES (1,8,1,'IVA',17.0000,1,1,0,673.2000,NULL,NULL,NULL),(1,8,1,'Lixo',2.0000,1,1,0,79.2000,NULL,NULL,NULL),(2,1,1,'IVA',17.0000,1,1,0,134.6400,NULL,NULL,NULL),(2,1,1,'Lixo',2.0000,1,1,0,15.8400,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ospos_sales_items_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_sales_payments`
--

DROP TABLE IF EXISTS `ospos_sales_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_sales_payments` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `sale_id` int NOT NULL,
  `payment_type` varchar(40) NOT NULL,
  `payment_amount` decimal(15,2) NOT NULL,
  `cash_refund` decimal(15,2) NOT NULL DEFAULT '0.00',
  `cash_adjustment` tinyint NOT NULL DEFAULT '0',
  `employee_id` int DEFAULT NULL,
  `payment_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reference_code` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`payment_id`),
  KEY `payment_sale` (`sale_id`,`payment_type`),
  KEY `employee_id` (`employee_id`),
  KEY `payment_time` (`payment_time`),
  CONSTRAINT `ospos_sales_payments_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`),
  CONSTRAINT `ospos_sales_payments_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_sales_payments`
--

LOCK TABLES `ospos_sales_payments` WRITE;
/*!40000 ALTER TABLE `ospos_sales_payments` DISABLE KEYS */;
INSERT INTO `ospos_sales_payments` VALUES (1,1,'Dinheiro',4800.00,87.60,0,1,'2025-09-12 11:35:40',''),(2,2,'Dinheiro',950.00,7.52,0,1,'2025-09-12 11:38:27','');
/*!40000 ALTER TABLE `ospos_sales_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_sales_reward_points`
--

DROP TABLE IF EXISTS `ospos_sales_reward_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_sales_reward_points` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sale_id` int NOT NULL,
  `earned` float NOT NULL,
  `used` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sale_id` (`sale_id`),
  CONSTRAINT `ospos_sales_reward_points_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_sales_reward_points`
--

LOCK TABLES `ospos_sales_reward_points` WRITE;
/*!40000 ALTER TABLE `ospos_sales_reward_points` DISABLE KEYS */;
/*!40000 ALTER TABLE `ospos_sales_reward_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_sales_taxes`
--

DROP TABLE IF EXISTS `ospos_sales_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_sales_taxes` (
  `sales_taxes_id` int NOT NULL AUTO_INCREMENT,
  `sale_id` int NOT NULL,
  `jurisdiction_id` int DEFAULT NULL,
  `tax_category_id` int DEFAULT NULL,
  `tax_type` smallint NOT NULL,
  `tax_group` varchar(32) NOT NULL,
  `sale_tax_basis` decimal(15,4) NOT NULL,
  `sale_tax_amount` decimal(15,4) NOT NULL,
  `print_sequence` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `tax_rate` decimal(15,4) NOT NULL,
  `sales_tax_code_id` int DEFAULT NULL,
  `rounding_code` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sales_taxes_id`),
  KEY `print_sequence` (`sale_id`,`print_sequence`,`tax_group`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_sales_taxes`
--

LOCK TABLES `ospos_sales_taxes` WRITE;
/*!40000 ALTER TABLE `ospos_sales_taxes` DISABLE KEYS */;
INSERT INTO `ospos_sales_taxes` VALUES (1,1,NULL,NULL,1,'IVA',3960.0000,673.2000,1,'IVA',17.0000,NULL,1),(2,1,NULL,NULL,1,'Lixo',3960.0000,79.2000,3,'Lixo',2.0000,NULL,1),(3,2,NULL,NULL,1,'IVA',792.0000,134.6400,1,'IVA',17.0000,NULL,1),(4,2,NULL,NULL,1,'Lixo',792.0000,15.8400,3,'Lixo',2.0000,NULL,1);
/*!40000 ALTER TABLE `ospos_sales_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_sessions`
--

DROP TABLE IF EXISTS `ospos_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_sessions` (
  `id` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data` blob NOT NULL,
  PRIMARY KEY (`id`,`ip_address`),
  KEY `ospos_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_sessions`
--

LOCK TABLES `ospos_sessions` WRITE;
/*!40000 ALTER TABLE `ospos_sessions` DISABLE KEYS */;
INSERT INTO `ospos_sessions` VALUES ('ospos_session:22a408e128e1c308867efb7e9d231ab9','127.0.0.1','2025-09-12 11:57:51',_binary '__ci_last_regenerate|i:1757678150;_ci_previous_url|s:85:\"http://localhost/reports/graphical_summary_sales/2025-09-12/2025-09-12/complete/all/0\";person_id|s:1:\"1\";menu_group|s:4:\"home\";allow_temp_items|i:0;item_location|s:1:\"1\";recv_stock_source|i:1;recv_cart|a:0:{}recv_mode|s:7:\"receive\";recv_supplier|i:-1;sale_id|i:-1;sales_location|i:1;sales_employee|i:1;cash_adjustment_amount|d:0;sales_customer|i:-1;cash_rounding|i:0;cash_mode|i:0;sales_cart|a:0:{}sales_mode|s:4:\"sale\";sales_payments|a:0:{}');
/*!40000 ALTER TABLE `ospos_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_stock_locations`
--

DROP TABLE IF EXISTS `ospos_stock_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_stock_locations` (
  `location_id` int NOT NULL AUTO_INCREMENT,
  `location_name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_stock_locations`
--

LOCK TABLES `ospos_stock_locations` WRITE;
/*!40000 ALTER TABLE `ospos_stock_locations` DISABLE KEYS */;
INSERT INTO `ospos_stock_locations` VALUES (1,'stock',0);
/*!40000 ALTER TABLE `ospos_stock_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_suppliers`
--

DROP TABLE IF EXISTS `ospos_suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_suppliers` (
  `person_id` int NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `agency_name` varchar(255) NOT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `tax_id` varchar(32) NOT NULL DEFAULT '',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `category` tinyint(1) NOT NULL,
  PRIMARY KEY (`person_id`),
  UNIQUE KEY `account_number` (`account_number`),
  KEY `category` (`category`),
  KEY `company_name` (`company_name`,`deleted`),
  CONSTRAINT `ospos_suppliers_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_people` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_suppliers`
--

LOCK TABLES `ospos_suppliers` WRITE;
/*!40000 ALTER TABLE `ospos_suppliers` DISABLE KEYS */;
INSERT INTO `ospos_suppliers` VALUES (4,'TechMoz Lda.','',NULL,'',0,0),(5,'GigaStore SA','',NULL,'',0,0),(6,'DesignXpress','',NULL,'',0,0);
/*!40000 ALTER TABLE `ospos_suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_tax_categories`
--

DROP TABLE IF EXISTS `ospos_tax_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_tax_categories` (
  `tax_category_id` int NOT NULL AUTO_INCREMENT,
  `tax_category` varchar(32) NOT NULL,
  `tax_group_sequence` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tax_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_tax_categories`
--

LOCK TABLES `ospos_tax_categories` WRITE;
/*!40000 ALTER TABLE `ospos_tax_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ospos_tax_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_tax_codes`
--

DROP TABLE IF EXISTS `ospos_tax_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_tax_codes` (
  `tax_code_id` int NOT NULL AUTO_INCREMENT,
  `tax_code` varchar(32) NOT NULL,
  `tax_code_name` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(255) NOT NULL DEFAULT '',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tax_code_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_tax_codes`
--

LOCK TABLES `ospos_tax_codes` WRITE;
/*!40000 ALTER TABLE `ospos_tax_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ospos_tax_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_tax_jurisdictions`
--

DROP TABLE IF EXISTS `ospos_tax_jurisdictions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_tax_jurisdictions` (
  `jurisdiction_id` int NOT NULL AUTO_INCREMENT,
  `jurisdiction_name` varchar(255) DEFAULT NULL,
  `tax_group` varchar(32) NOT NULL,
  `tax_type` smallint NOT NULL,
  `reporting_authority` varchar(255) DEFAULT NULL,
  `tax_group_sequence` tinyint(1) NOT NULL DEFAULT '0',
  `cascade_sequence` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jurisdiction_id`),
  UNIQUE KEY `tax_jurisdictions_uq1` (`tax_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_tax_jurisdictions`
--

LOCK TABLES `ospos_tax_jurisdictions` WRITE;
/*!40000 ALTER TABLE `ospos_tax_jurisdictions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ospos_tax_jurisdictions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospos_tax_rates`
--

DROP TABLE IF EXISTS `ospos_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospos_tax_rates` (
  `tax_rate_id` int NOT NULL AUTO_INCREMENT,
  `rate_tax_code_id` int NOT NULL,
  `rate_tax_category_id` int NOT NULL,
  `rate_jurisdiction_id` int NOT NULL,
  `tax_rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax_rounding_code` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tax_rate_id`),
  KEY `rate_tax_category_id` (`rate_tax_category_id`),
  KEY `rate_tax_code_id` (`rate_tax_code_id`),
  KEY `rate_jurisdiction_id` (`rate_jurisdiction_id`),
  CONSTRAINT `ospos_tax_rates_ibfk_1` FOREIGN KEY (`rate_tax_category_id`) REFERENCES `ospos_tax_categories` (`tax_category_id`),
  CONSTRAINT `ospos_tax_rates_ibfk_2` FOREIGN KEY (`rate_tax_code_id`) REFERENCES `ospos_tax_codes` (`tax_code_id`),
  CONSTRAINT `ospos_tax_rates_ibfk_3` FOREIGN KEY (`rate_jurisdiction_id`) REFERENCES `ospos_tax_jurisdictions` (`jurisdiction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospos_tax_rates`
--

LOCK TABLES `ospos_tax_rates` WRITE;
/*!40000 ALTER TABLE `ospos_tax_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `ospos_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  `user_agent` varchar(120) COLLATE utf8mb4_general_ci NOT NULL,
  `last_activity` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-12 14:06:14
