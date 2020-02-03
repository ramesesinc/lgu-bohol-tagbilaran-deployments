-- MySQL dump 10.13  Distrib 5.1.73, for Win64 (unknown)
--
-- Host: localhost    Database: waterworks
-- ------------------------------------------------------
-- Server version	5.5.59

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `sys_email_template`
--

DROP TABLE IF EXISTS `sys_email_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_email_template` (
  `objid` varchar(50) NOT NULL,
  `message` mediumtext,
  PRIMARY KEY (`objid`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_email_template`
--

LOCK TABLES `sys_email_template` WRITE;
/*!40000 ALTER TABLE `sys_email_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_email_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_rule`
--

DROP TABLE IF EXISTS `sys_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rule` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(25) NULL,
  `name` varchar(50) NOT NULL,
  `ruleset` varchar(50) NOT NULL,
  `rulegroup` varchar(50) NULL,
  `title` varchar(250) NULL,
  `description` longtext,
  `salience` int(11) NULL,
  `effectivefrom` date NULL,
  `effectiveto` date NULL,
  `dtfiled` datetime NULL,
  `user_objid` varchar(50) NULL,
  `user_name` varchar(100) NULL,
  `noloop` int(11) NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_rulegroup_ruleset` (`rulegroup`,`ruleset`),
  KEY `ix_ruleset` (`ruleset`),
  CONSTRAINT `fk_sys_rule_rulegroup_ruleset` FOREIGN KEY (`rulegroup`, `ruleset`) REFERENCES `sys_rulegroup` (`name`, `ruleset`),
  CONSTRAINT `fk_sys_rule_ruleset` FOREIGN KEY (`ruleset`) REFERENCES `sys_ruleset` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_rule`
--

LOCK TABLES `sys_rule` WRITE;
/*!40000 ALTER TABLE `sys_rule` DISABLE KEYS */;
INSERT INTO `sys_rule` VALUES ('RUL-173a0991:1688ea323e8:-7657','DRAFT','REMOVE_DISCOUNT','waterworksbilling','summary','REMOVE DISCOUNT',NULL,50000,NULL,NULL,'2019-01-27 17:42:38','USR-ADMIN','ADMIN',1),('RUL-1b141bca:163491825b0:-7e43','DEPLOYED','S01','waterworksbillingschedule','initial','day 1',NULL,50000,NULL,NULL,'2018-05-10 16:13:06','USR-ADMIN','ADMIN',1),('RUL-316b7756:16d900d6052:-721d','DEPLOYED','PENALTY_EFFECTIVITY','waterworksbilling','initial','PENALTY EFFECTIVITY',NULL,50000,NULL,NULL,'2019-10-03 13:50:23','USR-ADMIN','ADMIN',1),('RUL-316b7756:16d900d6052:-7f24','DEPLOYED','COMPUTE_SURCHARGE','waterworksbilling','surcharge','COMPUTE SURCHARGE',NULL,50000,NULL,NULL,'2019-10-03 13:38:15','USR-ADMIN','ADMIN',1),('RUL-34fcc9d0:16348fa1256:-78df','DEPLOYED','DETERMINE_READING_DATE','waterworksbillingschedule','post-initial','DETERMINE_READING_DATE',NULL,50000,NULL,NULL,'2018-05-10 15:54:59','USR-ADMIN','ADMIN',1),('RUL-34fcc9d0:16348fa1256:-79da','DEPLOYED','DETERMINE_SCHEDULE','waterworksbillingschedule','post-initial','DETERMINE SCHEDULE',NULL,100000,NULL,NULL,'2018-05-10 15:52:52','USR-ADMIN','ADMIN',1),('RUL-41d808ec:16fa2b737d3:-7a69','DEPLOYED','CREDIT_BALANCE_MAPPING','waterworksbilling','account-mapping','CREDIT_BALANCE_MAPPING',NULL,50000,NULL,NULL,'2020-01-14 15:57:05','USR-6bf98eba:1254696a2c9:-7ff6','ADMIN',1),('RUL-54f2b5cd:167813a3810:-7b83','DEPLOYED','COMPUTATION_FOR_SENIOR','waterworkscomputation','initial','Computation consumption for SENIOR',NULL,60000,NULL,NULL,'2018-12-06 10:07:59','USR-ADMIN','ADMIN',1),('RUL273a1fe9:134951a1bcf:-3109','DEPLOYED','COMPUTATION_FOR_SUBDIVISION','waterworkscomputation','initial','Computation consumption for SUBDIVISION',NULL,60000,NULL,NULL,'2018-11-24 17:05:12','USR-ADMIN','ADMIN',1),('RUL273a1fe9:134951a1bcf:-31f7','DEPLOYED','COMPUTATION_FOR_INDUSTRIAL_BULK','waterworkscomputation','initial','Computation consumption for industrial and bulk',NULL,50000,NULL,NULL,'2018-11-24 16:59:07','USR-ADMIN','ADMIN',1),('RUL2c46bd2e:1620eb5fe9d:-7750','DEPLOYED','DETERMINE_BILLING_DATES','waterworksbillingschedule','post-initial','DETERMINE BILLING DATES',NULL,50000,NULL,NULL,'2018-03-10 15:09:14','USR-ADMIN','ADMIN',1),('RUL2c46bd2e:1620eb5fe9d:-7ec5','DEPLOYED','DETERMINE_READING_DUE_DATE','waterworksbillingschedule','post-initial','DETERMINE READING DUE DATE',NULL,50000,NULL,NULL,'2018-03-10 15:02:25','USR-ADMIN','ADMIN',1),('RUL38ede6eb:16888143c74:-7f8c','APPROVED','COMPUTE_DISCOUNT','waterworksbilling','discount','compute discount',NULL,50000,NULL,NULL,'2019-01-26 10:56:49','USR-ADMIN','ADMIN',1),('RUL5b2b695a:1620ec467e4:-7b26','DEPLOYED','DETERMINE_DUE_DATE','waterworksbillingschedule','post-initial','DETERMINE DUE DATE',NULL,50000,NULL,NULL,'2018-03-10 15:23:32','USR-ADMIN','ADMIN',1),('RUL5b2b695a:1620ec467e4:-7e9b','DEPLOYED','DETERMINE_DISC_DUE_DATE','waterworksbillingschedule','post-initial','DETERMINE DISC DUE DATE',NULL,50000,NULL,NULL,'2018-03-10 15:21:02','USR-ADMIN','ADMIN',1),('RUL746193b0:1684af9777d:-7390','DEPLOYED','WATER_BILL_REMARKS','waterworksbilling','summary','WATER BILL REMARKS',NULL,50000,NULL,NULL,'2019-01-14 14:19:31','USR-ADMIN','ADMIN',1),('RUL746193b0:1684af9777d:-760b','DEPLOYED','APPLY_EXCESS_PAYMENT','waterworksbilling','payment','APPLY EXCESS PAYMENT',NULL,50000,NULL,NULL,'2019-01-14 14:17:09','USR-ADMIN','ADMIN',1),('RUL746193b0:1684af9777d:-77bd','DEPLOYED','APPLY_PAYMENT','waterworksbilling','payment','APPLY PAYMENT',NULL,50000,NULL,NULL,'2019-01-14 14:16:20','USR-ADMIN','ADMIN',1),('RUL746193b0:1684af9777d:-7901','DEPLOYED','PRIOR_SALES_MAPPING','waterworksbilling','account-mapping','PRIOR SALES MAPPING',NULL,50000,NULL,NULL,'2019-01-14 14:15:12','USR-ADMIN','ADMIN',1),('RUL746193b0:1684af9777d:-7b3e','DEPLOYED','ARREAR_SALES_MAPPING','waterworksbilling','account-mapping','ARREAR SALES MAPPING',NULL,50000,NULL,NULL,'2019-01-14 14:14:05','USR-ADMIN','ADMIN',1),('RUL746193b0:1684af9777d:-7f28','DEPLOYED','CURRENT_SALES_MAPPING','waterworksbilling','account-mapping','CURRENT SALES MAPPING',NULL,50000,NULL,NULL,'2019-01-14 14:11:52','USR-ADMIN','ADMIN',1),('RULa6b099d:eb1f3248b7:-75ed','DEPLOYED','COMPUTATION_FOR_COMMERCIAL','waterworkscomputation','initial','Computation consumption for COMMERCIAL',NULL,50000,NULL,NULL,'2018-01-13 16:45:10','USR5dc62ef:160e9053989:-7fd2','CWD',1),('RULa6b099d:eb1f3248b7:-7630','DEPLOYED','COMPUTATION_FOR_RESIDENTAIL','waterworkscomputation','initial','Computation consumption for RESIDENTIAL',NULL,50000,NULL,NULL,'2018-01-13 16:44:48','USR5dc62ef:160e9053989:-7fd2','CWD',1);
/*!40000 ALTER TABLE `sys_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_rule_action`
--

DROP TABLE IF EXISTS `sys_rule_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rule_action` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) NULL,
  `actiondef_objid` varchar(50) NULL,
  `actiondef_name` varchar(50) NULL,
  `pos` int(11) NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_parentid` (`parentid`),
  KEY `ix_actiondef_objid` (`actiondef_objid`),
  CONSTRAINT `fk_sys_rule_action_actiondef_objid` FOREIGN KEY (`actiondef_objid`) REFERENCES `sys_rule_actiondef` (`objid`),
  CONSTRAINT `fk_sys_rule_action_parentid` FOREIGN KEY (`parentid`) REFERENCES `sys_rule` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_rule_action`
--

LOCK TABLES `sys_rule_action` WRITE;
/*!40000 ALTER TABLE `sys_rule_action` DISABLE KEYS */;
INSERT INTO `sys_rule_action` VALUES ('RA-531043eb:16fa30e5e51:-7fff','RUL-41d808ec:16fa2b737d3:-7a69','treasury.actions.SetBillItemAccount','set-billitem-account',0),('RA-6c2874cd:160ed01f3d2:-7fc4','RULa6b099d:eb1f3248b7:-75ed','waterworks.actions.ComputeConsumption','compute-consumption',0),('RA-6c2874cd:160ed01f3d2:-7fcb','RULa6b099d:eb1f3248b7:-7630','waterworks.actions.ComputeConsumption','compute-consumption',0),('RA216faf2b:16348e519b7:-7fe5','RUL-34fcc9d0:16348fa1256:-79da','treasury.actions.AddVarDate','add-vardate',0),('RA2f280dc1:1684ad50113:-7fd6','RUL746193b0:1684af9777d:-7901','treasury.actions.SetBillItemAccount','set-billitem-account',0),('RA2f280dc1:1684ad50113:-7fdf','RUL746193b0:1684af9777d:-7b3e','treasury.actions.SetBillItemAccount','set-billitem-account',0),('RACT-173a0991:1688ea323e8:-59d0','RUL-173a0991:1688ea323e8:-7657','treasury.actions.RemoveDiscountItem','remove-discount',0),('RACT-18601aa3:168883a5d31:-7f27','RUL38ede6eb:16888143c74:-7f8c','treasury.actions.AddDiscountItem','add-discount-item',0),('RACT-21b6b0b3:16f89ad96d4:-7ac1','RUL-316b7756:16d900d6052:-7f24','treasury.actions.AddSurchargeItem','add-surcharge-item',0),('RACT-2ebf3254:1677d2a3a0a:-69be','RUL273a1fe9:134951a1bcf:-31f7','waterworks.actions.ComputeConsumption','compute-consumption',0),('RACT-316b7756:16d900d6052:-70e9','RUL-316b7756:16d900d6052:-721d','treasury.actions.AddVarDate','add-vardate',0),('RACT-34fcc9d0:16348fa1256:-7760','RUL-34fcc9d0:16348fa1256:-78df','treasury.actions.AddVarDate','add-vardate',0),('RACT-34fcc9d0:16348fa1256:-7909','RUL-34fcc9d0:16348fa1256:-79da','treasury.actions.AddVarDate','add-vardate',0),('RACT-54f2b5cd:167813a3810:-7973','RUL-54f2b5cd:167813a3810:-7b83','waterworks.actions.ComputeConsumption','compute-consumption',0),('RACT-6bdca530:16fa295b523:-7b93','RUL746193b0:1684af9777d:-760b','treasury.actions.AddCreditBillItem','add-credit-billitem',0),('RACT1d2a6d27:167772f1bbb:-7bd2','RUL-1b141bca:163491825b0:-7e43','treasury.actions.AddVarInteger','add-var-integer',0),('RACT273a1fe9:134951a1bcf:-2162','RUL273a1fe9:134951a1bcf:-3109','waterworks.actions.ComputeConsumption','compute-consumption',0),('RACT2c46bd2e:1620eb5fe9d:-72d9','RUL2c46bd2e:1620eb5fe9d:-7750','treasury.actions.AddVarDate','add-vardate',0),('RACT2c46bd2e:1620eb5fe9d:-7a13','RUL2c46bd2e:1620eb5fe9d:-7ec5','treasury.actions.AddVarDate','add-vardate',0),('RACT5818723f:1684b4acf6c:-7df4','RUL746193b0:1684af9777d:-7390','treasury.actions.SetBillItemProperty','set-billitem-property',0),('RACT5b2b695a:1620ec467e4:-79b2','RUL5b2b695a:1620ec467e4:-7b26','treasury.actions.AddVarDate','add-vardate',0),('RACT5b2b695a:1620ec467e4:-7cb0','RUL5b2b695a:1620ec467e4:-7e9b','treasury.actions.AddVarDate','add-vardate',0),('RACT746193b0:1684af9777d:-7656','RUL746193b0:1684af9777d:-77bd','treasury.actions.ApplyPayment','apply-payment',0),('RACT746193b0:1684af9777d:-7bc1','RUL746193b0:1684af9777d:-7f28','treasury.actions.SetBillItemAccount','set-billitem-account',0);
/*!40000 ALTER TABLE `sys_rule_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_rule_action_param`
--

DROP TABLE IF EXISTS `sys_rule_action_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rule_action_param` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) NULL,
  `actiondefparam_objid` varchar(100) NULL,
  `stringvalue` varchar(255) NULL,
  `booleanvalue` int(11) NULL,
  `var_objid` varchar(50) NULL,
  `var_name` varchar(50) NULL,
  `expr` longtext,
  `exprtype` varchar(25) NULL,
  `pos` int(11) NULL,
  `obj_key` varchar(50) NULL,
  `obj_value` varchar(255) NULL,
  `listvalue` longtext,
  `lov` varchar(50) NULL,
  `rangeoption` int(11) NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_parentid` (`parentid`),
  KEY `ix_var_objid` (`var_objid`),
  KEY `ix_actiondefparam_objid` (`actiondefparam_objid`),
  CONSTRAINT `fk_sys_rule_action_param_actiondefparam_objid` FOREIGN KEY (`actiondefparam_objid`) REFERENCES `sys_rule_actiondef_param` (`objid`),
  CONSTRAINT `fk_sys_rule_action_param_parentid` FOREIGN KEY (`parentid`) REFERENCES `sys_rule_action` (`objid`),
  CONSTRAINT `fk_sys_rule_action_param_var_objid` FOREIGN KEY (`var_objid`) REFERENCES `sys_rule_condition_var` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_rule_action_param`
--

LOCK TABLES `sys_rule_action_param` WRITE;
/*!40000 ALTER TABLE `sys_rule_action_param` DISABLE KEYS */;
INSERT INTO `sys_rule_action_param` VALUES ('RAP-531043eb:16fa30e5e51:-7ffd','RA-531043eb:16fa30e5e51:-7fff','treasury.actions.SetBillItemAccount.billitem',NULL,NULL,'RCOND-41d808ec:16fa2b737d3:-7999','CBAL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RAP-531043eb:16fa30e5e51:-7ffe','RA-531043eb:16fa30e5e51:-7fff','treasury.actions.SetBillItemAccount.billcode',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'WATER_TAX_CREDIT','WATER SALES - TAX CREDIT',NULL,NULL,NULL),('RAP2f280dc1:1684ad50113:-7fd4','RA2f280dc1:1684ad50113:-7fd6','treasury.actions.SetBillItemAccount.billitem',NULL,NULL,'RC2f280dc1:1684ad50113:-7fdc','WBI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RAP2f280dc1:1684ad50113:-7fdd','RA2f280dc1:1684ad50113:-7fdf','treasury.actions.SetBillItemAccount.billitem',NULL,NULL,'RC2f280dc1:1684ad50113:-7fe5','WBI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT-173a0991:1688ea323e8:-59c4','RACT-173a0991:1688ea323e8:-59d0','treasury.actions.RemoveDiscountItem.billitem',NULL,NULL,'RCOND-173a0991:1688ea323e8:-5f60','WBI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT-18601aa3:168883a5d31:-7ecc','RACT-18601aa3:168883a5d31:-7f27','treasury.actions.AddDiscountItem.amount',NULL,NULL,NULL,NULL,'def d = new java.text.DecimalFormat(\'0.0\').format(PRIN * 0.05); \nreturn new BigDecimal( d.toString());\n','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT-18601aa3:168883a5d31:-7ef8','RACT-18601aa3:168883a5d31:-7f27','treasury.actions.AddDiscountItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ITMACCT-1f0bd8fa1d36d5ce0019084c0b40e06e','ICWS WATER BILL - DISCOUNT',NULL,NULL,NULL),('RULACT-18601aa3:168883a5d31:-7f13','RACT-18601aa3:168883a5d31:-7f27','treasury.actions.AddDiscountItem.billitem',NULL,NULL,'RCOND38ede6eb:16888143c74:-7569','WBI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT-1e197aa1:16778a6c7e9:-78a3','RACT1d2a6d27:167772f1bbb:-7bd2','treasury.actions.AddVarInteger.tag','days',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT-21b6b0b3:16f89ad96d4:-577e','RACT746193b0:1684af9777d:-7bc1','treasury.actions.SetBillItemAccount.billcode',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'WATER_SALES','WATER SALES',NULL,NULL,NULL),('RULACT-21b6b0b3:16f89ad96d4:-5811','RA2f280dc1:1684ad50113:-7fdf','treasury.actions.SetBillItemAccount.billcode',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'WATER_SALES','WATER SALES',NULL,NULL,NULL),('RULACT-21b6b0b3:16f89ad96d4:-58a4','RA2f280dc1:1684ad50113:-7fd6','treasury.actions.SetBillItemAccount.billcode',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'WATER_SALES','WATER SALES',NULL,NULL,NULL),('RULACT-21b6b0b3:16f89ad96d4:-7a32','RACT-21b6b0b3:16f89ad96d4:-7ac1','treasury.actions.AddSurchargeItem.billcode',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'REVITEM-66153714:140b876a648:-7ec9','ICWS WATER BILL PENALTY',NULL,NULL,NULL),('RULACT-21b6b0b3:16f89ad96d4:-7a8a','RACT-21b6b0b3:16f89ad96d4:-7ac1','treasury.actions.AddSurchargeItem.amount',NULL,NULL,NULL,NULL,'AMT * 0.14','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT-21b6b0b3:16f89ad96d4:-7aa9','RACT-21b6b0b3:16f89ad96d4:-7ac1','treasury.actions.AddSurchargeItem.billitem',NULL,NULL,'RCOND-316b7756:16d900d6052:-699a','WBI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT-2ebf3254:1677d2a3a0a:-67ca','RACT273a1fe9:134951a1bcf:-2162','waterworks.actions.ComputeConsumption.amount',NULL,NULL,NULL,NULL,'def v = VOL; \ndef cm = UNITS * 10; \ndef totals = []; \ndef n = v - cm;\nif ( n > 0) totals << (cm * 1.8);  \nelse totals << (v * 1.8); \n\nv = (n > 0 ? n : 0); n = v - cm; \nif ( n > 0) totals << (cm * 2.3);  \nelse totals << (v * 2.3); \n\nv = (n > 0 ? n : 0); n = v - cm; \nif ( n > 0) totals << (cm * 2.8);  \nelse totals << (v * 2.8); \n\nv = (n > 0 ? n : 0); n = v - cm; \nif ( n > 0) totals << (cm * 3.4);  \nelse totals << (v * 3.4); \n\nv = (n > 0 ? n : 0); \ntotals << (v > 0 ? v : 0) * 5.0; \nreturn (totals ? totals.sum{it} : 0.0); ','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT-2ebf3254:1677d2a3a0a:-67f5','RACT273a1fe9:134951a1bcf:-2162','waterworks.actions.ComputeConsumption.ref',NULL,NULL,'RC-a002ae:16744d718df:-7ff1','WC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT-2ebf3254:1677d2a3a0a:-697d','RACT-2ebf3254:1677d2a3a0a:-69be','waterworks.actions.ComputeConsumption.amount',NULL,NULL,'RCONST-694f3c0a:1677d756f0d:-7561','VOL','<table border=\"1\" cellpadding=\"1\" cellspacing=\"0\">\n    <tr>\n        <td colspan=\"3\">Use Variable: VOL</td>\n    </tr>\n    \n        <tr>\n            <th>Greater than</th>\n            <th>Less than or equal to</th>\n            <th>Formula</th>\n        </tr>\n    \n    \n    \n        <tr>\n            <td></td>\n            <td>10.00</td>\n            <td>192</td>\n        </tr>\n    \n        <tr>\n            <td>10.00</td>\n            <td>20.00</td>\n            <td>192 + ((VOL-10) * 6.9)</td>\n        </tr>\n    \n        <tr>\n            <td>20.00</td>\n            <td>30.00</td>\n            <td>261 + ((VOL-20) * 8.4)</td>\n        </tr>\n    \n        <tr>\n            <td>30.00</td>\n            <td>40.00</td>\n            <td>345 + ((VOL-30) * 10.2)</td>\n        </tr>\n    \n        <tr>\n            <td>40.00</td>\n            <td>50.00</td>\n            <td>447 + ((VOL-40) * 12.3)</td>\n        </tr>\n    \n        <tr>\n            <td>50.00</td>\n            <td></td>\n            <td>570 + ((VOL-50) * 15)</td>\n        </tr>\n    \n</table>','range',NULL,NULL,NULL,'[[to:10.00,value:\"192\",from:0],[to:20.00,value:\"192 + ((VOL-10) * 6.9)\",from:10.00],[to:30.00,value:\"261 + ((VOL-20) * 8.4)\",from:20.00],[to:40.00,value:\"345 + ((VOL-30) * 10.2)\",from:30.00],[to:50.00,value:\"447 + ((VOL-40) * 12.3)\",from:40.00],[value:\"570 + ((VOL-50) * 15)\",from:50.00]]',NULL,1),('RULACT-2ebf3254:1677d2a3a0a:-69a8','RACT-2ebf3254:1677d2a3a0a:-69be','waterworks.actions.ComputeConsumption.ref',NULL,NULL,'RCOND-694f3c0a:1677d756f0d:-7588','WC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT-2ebf3254:1677d2a3a0a:-6c1f','RA-6c2874cd:160ed01f3d2:-7fc4','waterworks.actions.ComputeConsumption.amount',NULL,NULL,'RCONST-694f3c0a:1677d756f0d:-777a','VOL','<table border=\"1\" cellpadding=\"1\" cellspacing=\"0\">\n    <tr>\n        <td colspan=\"3\">Use Variable: VOL</td>\n    </tr>\n    \n        <tr>\n            <th>Greater than</th>\n            <th>Less than or equal to</th>\n            <th>Formula</th>\n        </tr>\n    \n    \n    \n        <tr>\n            <td></td>\n            <td>10.00</td>\n            <td>40</td>\n        </tr>\n    \n        <tr>\n            <td>10.00</td>\n            <td>20.00</td>\n            <td>40 + ((VOL-10) * 4.60)</td>\n        </tr>\n    \n        <tr>\n            <td>20.00</td>\n            <td>30.00</td>\n            <td>86 + ((VOL-20) * 5.60)</td>\n        </tr>\n    \n        <tr>\n            <td>30.00</td>\n            <td>40.00</td>\n            <td>142 + ((VOL-30) * 6.80)</td>\n        </tr>\n    \n        <tr>\n            <td>40.00</td>\n            <td>50.00</td>\n            <td>210 + ((VOL-40) * 8.20)</td>\n        </tr>\n    \n        <tr>\n            <td>50.00</td>\n            <td></td>\n            <td>292 + ((VOL-50) * 10.00)</td>\n        </tr>\n    \n</table>','range',NULL,NULL,NULL,'[[to:10.00,value:\"40\",from:0],[to:20.00,value:\"40 + ((VOL-10) * 4.60)\",from:10.00],[to:30.00,value:\"86 + ((VOL-20) * 5.60)\",from:20.00],[to:40.00,value:\"142 + ((VOL-30) * 6.80)\",from:30.00],[to:50.00,value:\"210 + ((VOL-40) * 8.20)\",from:40.00],[value:\"292 + ((VOL-50) * 10.00)\",from:50.00]]',NULL,1),('RULACT-2ebf3254:1677d2a3a0a:-6c4a','RA-6c2874cd:160ed01f3d2:-7fc4','waterworks.actions.ComputeConsumption.ref',NULL,NULL,'RCOND-694f3c0a:1677d756f0d:-77aa','WC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT-2ebf3254:1677d2a3a0a:-6ff6','RA-6c2874cd:160ed01f3d2:-7fcb','waterworks.actions.ComputeConsumption.amount',NULL,NULL,'RCONST-2ebf3254:1677d2a3a0a:-2d16','VOL','<table border=\"1\" cellpadding=\"1\" cellspacing=\"0\">\n    <tr>\n        <td colspan=\"3\">Use Variable: VOL</td>\n    </tr>\n    \n        <tr>\n            <th>Greater than</th>\n            <th>Less than or equal to</th>\n            <th>Formula</th>\n        </tr>\n    \n    \n    \n        <tr>\n            <td></td>\n            <td>10.00</td>\n            <td>20</td>\n        </tr>\n    \n        <tr>\n            <td>10.00</td>\n            <td>20.00</td>\n            <td>20 + ((VOL-10) * 2.30)</td>\n        </tr>\n    \n        <tr>\n            <td>20.00</td>\n            <td>30.00</td>\n            <td>43 + ((VOL-20) * 2.80)</td>\n        </tr>\n    \n        <tr>\n            <td>30.00</td>\n            <td>40.00</td>\n            <td>71 + ((VOL-30) * 3.40)</td>\n        </tr>\n    \n        <tr>\n            <td>40.00</td>\n            <td>50.00</td>\n            <td>105 + ((VOL-40) * 4.10)</td>\n        </tr>\n    \n        <tr>\n            <td>50.00</td>\n            <td></td>\n            <td>146 + ((VOL-50) * 5.00)</td>\n        </tr>\n    \n</table>','range',NULL,NULL,NULL,'[[to:10.00,value:\"20\",from:0],[to:20.00,value:\"20 + ((VOL-10) * 2.30)\",from:10.00],[to:30.00,value:\"43 + ((VOL-20) * 2.80)\",from:20.00],[to:40.00,value:\"71 + ((VOL-30) * 3.40)\",from:30.00],[to:50.00,value:\"105 + ((VOL-40) * 4.10)\",from:40.00],[value:\"146 + ((VOL-50) * 5.00)\",from:50.00]]',NULL,1),('RULACT-2ebf3254:1677d2a3a0a:-7006','RA-6c2874cd:160ed01f3d2:-7fcb','waterworks.actions.ComputeConsumption.ref',NULL,NULL,'RCOND-2ebf3254:1677d2a3a0a:-2d46','WC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT-316b7756:16d900d6052:-70c7','RACT-316b7756:16d900d6052:-70e9','treasury.actions.AddVarDate.date',NULL,NULL,NULL,NULL,'@DATE( 2019 , 10, 1 )','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT-316b7756:16d900d6052:-70d9','RACT-316b7756:16d900d6052:-70e9','treasury.actions.AddVarDate.tag','penaltyeffectivitydate',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT-54f2b5cd:167813a3810:-794d','RACT-54f2b5cd:167813a3810:-7973','waterworks.actions.ComputeConsumption.amount',NULL,NULL,NULL,NULL,'def amount = 0.0; \nif ( VOL <= 10 ) amount = 20.0;  \nelse if ( VOL <= 20 ) amount = 20.0 + ((VOL-10) * 2.30); \nelse if ( VOL <= 30 ) amount = 43.0 + ((VOL-20) * 2.80);\nelse if ( VOL <= 40 ) amount = 71.0 + ((VOL-30) * 3.40);\nelse if ( VOL <= 50 ) amount = 105.0 + ((VOL-40) * 4.10);\nelse amount = 146.0 + ((VOL-50) * 5.00); \n\ndef value = (amount > 0 ? amount * 0.80 : 0.0);\ndef bd = new java.math.BigDecimal(value.toString());\nreturn bd.setScale(1, java.math.RoundingMode.HALF_UP);','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT-54f2b5cd:167813a3810:-795d','RACT-54f2b5cd:167813a3810:-7973','waterworks.actions.ComputeConsumption.ref',NULL,NULL,'RC61484a76:167813a20bc:-7ff6','WC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT-6bdca530:16fa295b523:-7b4d','RACT-6bdca530:16fa295b523:-7b93','treasury.actions.AddCreditBillItem.amount',NULL,NULL,NULL,NULL,'AMT','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT-6bdca530:16fa295b523:-7b7b','RACT-6bdca530:16fa295b523:-7b93','treasury.actions.AddCreditBillItem.billcode',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'WATER_ADVANCE_PAYMENT','WATER ADVANCE PAYMENT',NULL,NULL,NULL),('RULACT16e4575c:1677753e95d:-7aef','RACT2c46bd2e:1620eb5fe9d:-7a13','treasury.actions.AddVarDate.date',NULL,NULL,NULL,NULL,'def dt = VARDATE;\n(1..4).each {\n     dt =  @FINDNEXTWORKDAY(  @DAYADD(  dt, 1 ), HOLIDAYS, 1  );\n};\nreturn dt;','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT16e4575c:1677753e95d:-7b03','RACT2c46bd2e:1620eb5fe9d:-7a13','treasury.actions.AddVarDate.tag','readingduedate',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT16e4575c:1677753e95d:-7dbc','RACT-34fcc9d0:16348fa1256:-7760','treasury.actions.AddVarDate.tag','readingdate',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT16e4575c:1677753e95d:-7dfa','RACT-34fcc9d0:16348fa1256:-7760','treasury.actions.AddVarDate.date',NULL,NULL,NULL,NULL,'DATE','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT1d2a6d27:167772f1bbb:-7bc2','RACT1d2a6d27:167772f1bbb:-7bd2','treasury.actions.AddVarInteger.value',NULL,NULL,NULL,NULL,'1','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT5818723f:1684b4acf6c:-7d8c','RACT5818723f:1684b4acf6c:-7df4','treasury.actions.SetBillItemProperty.value',NULL,NULL,NULL,NULL,'@DATEFORMAT( FROMDATE , \'MMM-yyyy\' ) +\' - \'+ @DATEFORMAT( TODATE , \'MMM-yyyy\' )','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT5818723f:1684b4acf6c:-7dc5','RACT5818723f:1684b4acf6c:-7df4','treasury.actions.SetBillItemProperty.fieldname','remarks',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT5818723f:1684b4acf6c:-7de0','RACT5818723f:1684b4acf6c:-7df4','treasury.actions.SetBillItemProperty.billitem',NULL,NULL,'RCOND746193b0:1684af9777d:-7303','WBI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT746193b0:1684af9777d:-764a','RACT746193b0:1684af9777d:-7656','treasury.actions.ApplyPayment.payment',NULL,NULL,'RCOND746193b0:1684af9777d:-7722','PMT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT746193b0:1684af9777d:-7bb1','RACT746193b0:1684af9777d:-7bc1','treasury.actions.SetBillItemAccount.billitem',NULL,NULL,'RCOND746193b0:1684af9777d:-7cee','WBI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACTb701e29:16777f95d74:-740d','RACT-34fcc9d0:16348fa1256:-7909','treasury.actions.AddVarDate.date',NULL,NULL,NULL,NULL,'def dt = @DATE( YR, MON, 1  );\nfor( int i=1; i < DAYS; i++ ) {\n     dt = @FINDNEXTWORKDAY(  @DAYADD( dt, 1 ), HOLIDAYS, 1 );\n};\nreturn dt;','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACTb701e29:16777f95d74:-7421','RACT-34fcc9d0:16348fa1256:-7909','treasury.actions.AddVarDate.tag','toperiod',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACTb701e29:16777f95d74:-7448','RA216faf2b:16348e519b7:-7fe5','treasury.actions.AddVarDate.date',NULL,NULL,NULL,NULL,'def dt = @MONTHADD( @DATE( YR, MON, 1  ), -1 );\nfor( int i=1; i < DAYS; i++ ) {\n     dt = @FINDNEXTWORKDAY(  @DAYADD( dt, 1 ), HOLIDAYS, 1 );\n};\nreturn dt; ','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACTb701e29:16777f95d74:-745c','RA216faf2b:16348e519b7:-7fe5','treasury.actions.AddVarDate.tag','fromperiod',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACTb701e29:16777f95d74:-7827','RACT2c46bd2e:1620eb5fe9d:-72d9','treasury.actions.AddVarDate.date',NULL,NULL,NULL,NULL,'return  VARDATE;','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACTb701e29:16777f95d74:-783b','RACT2c46bd2e:1620eb5fe9d:-72d9','treasury.actions.AddVarDate.tag','billingduedate',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACTb701e29:16777f95d74:-7977','RACT5b2b695a:1620ec467e4:-7cb0','treasury.actions.AddVarDate.date',NULL,NULL,NULL,NULL,'@FINDNEXTWORKDAY(  @DAYADD(  VARDATE, 15 ), HOLIDAYS, 1 );','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACTb701e29:16777f95d74:-799f','RACT5b2b695a:1620ec467e4:-7cb0','treasury.actions.AddVarDate.tag','discdate',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACTb701e29:16777f95d74:-7e32','RACT5b2b695a:1620ec467e4:-79b2','treasury.actions.AddVarDate.date',NULL,NULL,NULL,NULL,'@DAYADD(  VARDATE, 5 )','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACTb701e29:16777f95d74:-7e46','RACT5b2b695a:1620ec467e4:-79b2','treasury.actions.AddVarDate.tag','duedate',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sys_rule_action_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_rule_actiondef`
--

DROP TABLE IF EXISTS `sys_rule_actiondef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rule_actiondef` (
  `objid` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `title` varchar(250) NULL,
  `sortorder` int(11) NULL,
  `actionname` varchar(50) NULL,
  `domain` varchar(50) NULL,
  `actionclass` varchar(255) NULL,
  PRIMARY KEY (`objid`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_rule_actiondef`
--

LOCK TABLES `sys_rule_actiondef` WRITE;
/*!40000 ALTER TABLE `sys_rule_actiondef` DISABLE KEYS */;
INSERT INTO `sys_rule_actiondef` VALUES ('enterprise.actions.AddRequirement','add-requirement','Add Requirement',2,'add-requirement','enterprise','enterprise.actions.AddRequirement'),('enterprise.actions.PrintTest','print-test','Print Test',1,'print-test','ENTERPRISE','enterprise.actions.PrintTest'),('enterprise.actions.ThrowException','throw-exeception','Throw Exception',1,'throw-exeception','ENTERPRISE','enterprise.actions.ThrowException'),('treasury.actions.AddCreditBillItem','add-credit-billitem','Add Credit Bill Item',2,'add-credit-billitem','TREASURY','treasury.actions.AddCreditBillItem'),('treasury.actions.AddDiscountItem','add-discount-item','Add Discount',3,'add-discount-item','TREASURY','treasury.actions.AddDiscountItem'),('treasury.actions.AddExcessBillItem','add-excess-billitem','Add Excess Bill Item',2,'add-excess-billitem','TREASURY','treasury.actions.AddExcessBillItem'),('treasury.actions.AddInterestItem','add-interest-item','Add Interest',3,'add-interest-item','TREASURY','treasury.actions.AddInterestItem'),('treasury.actions.AddRevenueShare','add-share','Add Revenue Share',1,'add-share','TREASURY','treasury.actions.AddRevenueShare'),('treasury.actions.AddRevenueShareByOrg','add-share-by-org','Add Revenue Share By Org',1,'add-share-by-org','TREASURY','treasury.actions.AddRevenueShareByOrg'),('treasury.actions.AddSurchargeItem','add-surcharge-item','Add Surcharge',3,'add-surcharge-item','TREASURY','treasury.actions.AddSurchargeItem'),('treasury.actions.AddVarDate','add-vardate','Add Variable Date',1,'add-vardate','TREASURY','treasury.actions.AddVarDate'),('treasury.actions.AddVarDecimal','add-var-decimal','Add Var Decimal',1,'add-var-decimal','TREASURY','treasury.actions.AddVarDecimal'),('treasury.actions.AddVarInteger','add-var-integer','Add Var Integer',1,'add-var-integer','TREASURY','treasury.actions.AddVarInteger'),('treasury.actions.AddVarString','add-var-string','Add Var String',1,'add-var-string','TREASURY','treasury.actions.AddVarString'),('treasury.actions.ApplyPayment','apply-payment','Apply Payment',5,'apply-payment','TREASURY','treasury.actions.ApplyPayment'),('treasury.actions.ComputeFee','compute-fee','Compute Fee',0,'compute-fee','treasury','treasury.actions.ComputeFee'),('treasury.actions.RemoveDiscountItem','remove-discount','Remove Discount',1,'remove-discount','TREASURY','treasury.actions.RemoveDiscountItem'),('treasury.actions.SetBillItemAccount','set-billitem-account','Set Bill Item Account',4,'set-billitem-account','TREASURY','treasury.actions.SetBillItemAccount'),('treasury.actions.SetBillItemProperty','set-billitem-property','Set BillItem Property Value',10,'set-billitem-property','TREASURY','treasury.actions.SetBillItemProperty'),('waterworks.actions.AddRepeatingFee','add-repeating-fee','Add Repeating Fee',5,'add-repeating-fee','waterworks','waterworks.actions.AddRepeatingFee'),('waterworks.actions.AddWaterBillItem','add-waterbillitem','Add Water Bill Item',0,'add-waterbillitem','waterworks','waterworks.actions.AddWaterBillItem'),('waterworks.actions.AddWaterConsumption','add-waterconsumption','Add Water Consumption',1,'add-waterconsumption','WATERWORKS','waterworks.actions.AddWaterConsumption'),('waterworks.actions.ComputeConsumption','compute-consumption','Compute Consumption',0,'compute-consumption','waterworks','waterworks.actions.ComputeConsumption'),('waterworks.actions.SetBillingPeriod','set_billing_period','Set Waterworks Billing Period',1,'set_billing_period','waterworks','waterworks.actions.SetBillingPeriod'),('waterworks.actions.SetWaterConsumptionProperty','set-waterconsumpotion-property','Set Water Consumption Property Value',10,'set-waterconsumpotion-property','WATERWORKS','waterworks.actions.SetWaterConsumptionProperty');
/*!40000 ALTER TABLE `sys_rule_actiondef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_rule_actiondef_param`
--

DROP TABLE IF EXISTS `sys_rule_actiondef_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rule_actiondef_param` (
  `objid` varchar(100) NOT NULL DEFAULT '',
  `parentid` varchar(50) NULL,
  `name` varchar(50) NOT NULL,
  `sortorder` int(11) NULL,
  `title` varchar(50) NULL,
  `datatype` varchar(50) NULL,
  `handler` varchar(50) NULL,
  `lookuphandler` varchar(50) NULL,
  `lookupkey` varchar(50) NULL,
  `lookupvalue` varchar(50) NULL,
  `vardatatype` varchar(50) NULL,
  `lovname` varchar(50) NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_parentid` (`parentid`),
  CONSTRAINT `fk_sys_rule_actiondef_param_parentid` FOREIGN KEY (`parentid`) REFERENCES `sys_rule_actiondef` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_rule_actiondef_param`
--

LOCK TABLES `sys_rule_actiondef_param` WRITE;
/*!40000 ALTER TABLE `sys_rule_actiondef_param` DISABLE KEYS */;
INSERT INTO `sys_rule_actiondef_param` VALUES ('enterprise.actions.AddRequirement.message','enterprise.actions.AddRequirement','message',2,'Message',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('enterprise.actions.AddRequirement.reqtype','enterprise.actions.AddRequirement','reqtype',1,'Requirement Type',NULL,'lookup','sys_requirement_type:lookup','code','title','string',NULL),('enterprise.actions.AddRequirement.required','enterprise.actions.AddRequirement','required',4,'Required','boolean','boolean',NULL,NULL,NULL,'boolean',NULL),('enterprise.actions.AddRequirement.sortorder','enterprise.actions.AddRequirement','sortorder',3,'Sort Order','string','string',NULL,NULL,NULL,'string',NULL),('enterprise.actions.PrintTest.message','enterprise.actions.PrintTest','message',1,'Message',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('enterprise.actions.ThrowException.msg','enterprise.actions.ThrowException','msg',1,'Message',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddCreditBillItem.amount','treasury.actions.AddCreditBillItem','amount',2,'Amount',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddCreditBillItem.billcode','treasury.actions.AddCreditBillItem','billcode',1,'Bill code',NULL,'lookup','waterworks_itemaccount:lookup','objid','title','string',NULL),('treasury.actions.AddCreditBillItem.reftype','treasury.actions.AddCreditBillItem','reftype',3,'Ref Type','string','string',NULL,NULL,NULL,'string',NULL),('treasury.actions.AddDiscountItem.account','treasury.actions.AddDiscountItem','account',2,'Discount Account',NULL,'lookup','revenueitem:lookup','objid','title',NULL,NULL),('treasury.actions.AddDiscountItem.amount','treasury.actions.AddDiscountItem','amount',3,'Amount',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddDiscountItem.billcode','treasury.actions.AddDiscountItem','billcode',3,'Billcode',NULL,'lookup','waterworks_itemaccount:lookup','objid','title','string',NULL),('treasury.actions.AddDiscountItem.billitem','treasury.actions.AddDiscountItem','billitem',1,'Bill Item',NULL,'var',NULL,NULL,NULL,'treasury.facts.AbstractBillItem',NULL),('treasury.actions.AddExcessBillItem.account','treasury.actions.AddExcessBillItem','account',1,'Account',NULL,'lookup','revenueitem:lookup','objid','title',NULL,NULL),('treasury.actions.AddExcessBillItem.amount','treasury.actions.AddExcessBillItem','amount',2,'Amount',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddInterestItem.account','treasury.actions.AddInterestItem','account',2,'Account',NULL,'lookup','revenueitem:lookup','objid','title','string',NULL),('treasury.actions.AddInterestItem.amount','treasury.actions.AddInterestItem','amount',3,'Amount',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddInterestItem.billcode','treasury.actions.AddInterestItem','billcode',3,'Billcode',NULL,'lookup','waterworks_itemaccount:lookup','objid','title','string',NULL),('treasury.actions.AddInterestItem.billitem','treasury.actions.AddInterestItem','billitem',1,'Bill Item',NULL,'var',NULL,NULL,NULL,'treasury.facts.AbstractBillItem',NULL),('treasury.actions.AddRevenueShare.amount','treasury.actions.AddRevenueShare','amount',3,'Amount',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddRevenueShare.payableaccount','treasury.actions.AddRevenueShare','payableaccount',2,'Payable Account',NULL,'lookup','payableaccount:lookup','objid','title','string',NULL),('treasury.actions.AddRevenueShare.refitem','treasury.actions.AddRevenueShare','refitem',1,'Ref Item',NULL,'var','revenueitem:lookup','objid','title','treasury.facts.AbstractBillItem',NULL),('treasury.actions.AddRevenueShareByOrg.amount','treasury.actions.AddRevenueShareByOrg','amount',4,'Amount',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddRevenueShareByOrg.org','treasury.actions.AddRevenueShareByOrg','org',3,'Org',NULL,'var',NULL,NULL,NULL,'enterprise.facts.Org',NULL),('treasury.actions.AddRevenueShareByOrg.payableaccount','treasury.actions.AddRevenueShareByOrg','payableaccount',2,'Payable Account',NULL,'lookup','payableaccount:lookup','objid','title','string',NULL),('treasury.actions.AddRevenueShareByOrg.refitem','treasury.actions.AddRevenueShareByOrg','refitem',1,'Ref Item',NULL,'var','revenueitem:lookup','objid','title','treasury.facts.AbstractBillItem',NULL),('treasury.actions.AddSurchargeItem.amount','treasury.actions.AddSurchargeItem','amount',2,'Amount',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddSurchargeItem.billcode','treasury.actions.AddSurchargeItem','billcode',3,'Bill code',NULL,'lookup','waterworks_itemaccount:lookup','objid','title','string',NULL),('treasury.actions.AddSurchargeItem.billitem','treasury.actions.AddSurchargeItem','billitem',1,'Bill Item',NULL,'var',NULL,NULL,NULL,'treasury.facts.AbstractBillItem',NULL),('treasury.actions.AddVarDate.date','treasury.actions.AddVarDate','date',2,'Date',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddVarDate.tag','treasury.actions.AddVarDate','tag',1,'Tag','string','string',NULL,NULL,NULL,'string',NULL),('treasury.actions.AddVarDecimal.tag','treasury.actions.AddVarDecimal','tag',2,'Tag','string','string',NULL,NULL,NULL,'string',NULL),('treasury.actions.AddVarDecimal.value','treasury.actions.AddVarDecimal','value',1,'Value',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddVarInteger.tag','treasury.actions.AddVarInteger','tag',2,'Tag','string','string',NULL,NULL,NULL,'string',NULL),('treasury.actions.AddVarInteger.value','treasury.actions.AddVarInteger','value',1,'Value',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddVarString.tag','treasury.actions.AddVarString','tag',2,'Tag','string','string',NULL,NULL,NULL,'string',NULL),('treasury.actions.AddVarString.value','treasury.actions.AddVarString','value',1,'Value',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.ApplyPayment.payment','treasury.actions.ApplyPayment','payment',1,'Payment',NULL,'var',NULL,NULL,NULL,'treasury.facts.Payment',NULL),('treasury.actions.ComputeFee.account','treasury.actions.ComputeFee','account',1,'Account',NULL,'lookup','revenueitem:lookup','objid','title',NULL,NULL),('treasury.actions.ComputeFee.amount','treasury.actions.ComputeFee','amount',2,'Amount',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.ComputeFee.remarks','treasury.actions.ComputeFee','remarks',3,'Remarks',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.RemoveDiscountItem.billitem','treasury.actions.RemoveDiscountItem','billitem',1,'Bill Item',NULL,'var',NULL,NULL,NULL,'treasury.facts.AbstractBillItem',NULL),('treasury.actions.SetBillItemAccount.account','treasury.actions.SetBillItemAccount','account',2,'Account',NULL,'lookup','revenueitem:lookup','objid','title',NULL,NULL),('treasury.actions.SetBillItemAccount.billcode','treasury.actions.SetBillItemAccount','billcode',3,'Billcode',NULL,'lookup','waterworks_itemaccount:lookup','objid','title','string',NULL),('treasury.actions.SetBillItemAccount.billitem','treasury.actions.SetBillItemAccount','billitem',1,'Bill Item',NULL,'var',NULL,NULL,NULL,'treasury.facts.AbstractBillItem',NULL),('treasury.actions.SetBillItemProperty.billitem','treasury.actions.SetBillItemProperty','billitem',1,'Bill Item',NULL,'var',NULL,NULL,NULL,'treasury.facts.AbstractBillItem',NULL),('treasury.actions.SetBillItemProperty.fieldname','treasury.actions.SetBillItemProperty','fieldname',2,'Property Field Name',NULL,'fieldlist',NULL,'billitem',NULL,NULL,NULL),('treasury.actions.SetBillItemProperty.value','treasury.actions.SetBillItemProperty','value',3,'Value',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('waterworks.actions.AddRepeatingFee.account','waterworks.actions.AddRepeatingFee','account',1,'Account',NULL,'lookup','revenueitem:lookup','objid','title',NULL,NULL),('waterworks.actions.AddRepeatingFee.amount','waterworks.actions.AddRepeatingFee','amount',2,'Amount',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('waterworks.actions.AddRepeatingFee.remarks','waterworks.actions.AddRepeatingFee','remarks',3,'Remarks',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('waterworks.actions.AddWaterBillItem.amount','waterworks.actions.AddWaterBillItem','amount',5,'Amount',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('waterworks.actions.AddWaterBillItem.month','waterworks.actions.AddWaterBillItem','month',2,'Month',NULL,'var',NULL,NULL,NULL,'integer',NULL),('waterworks.actions.AddWaterBillItem.refid','waterworks.actions.AddWaterBillItem','refid',3,'Ref',NULL,'var',NULL,NULL,NULL,'string',NULL),('waterworks.actions.AddWaterBillItem.txntype','waterworks.actions.AddWaterBillItem','txntype',4,'Txn Type',NULL,'lookup','waterworks_txntype:lookup','objid','title',NULL,'WATERWORKS_TXNTYPE'),('waterworks.actions.AddWaterBillItem.year','waterworks.actions.AddWaterBillItem','year',1,'Year',NULL,'var',NULL,NULL,NULL,'integer',NULL),('waterworks.actions.AddWaterConsumption.volume','waterworks.actions.AddWaterConsumption','volume',1,'Volume',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('waterworks.actions.ComputeConsumption.amount','waterworks.actions.ComputeConsumption','amount',1,'Amount',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('waterworks.actions.ComputeConsumption.ref','waterworks.actions.ComputeConsumption','ref',2,'Ref',NULL,'var',NULL,NULL,NULL,'waterworks.facts.WaterConsumption',NULL),('waterworks.actions.SetBillingPeriod.period','waterworks.actions.SetBillingPeriod','period',1,'Period',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('waterworks.actions.SetWaterConsumptionProperty.fieldname','waterworks.actions.SetWaterConsumptionProperty','fieldname',2,'Property Field Name','string','string',NULL,'waterworks.facts.WaterConsumption',NULL,'string',NULL),('waterworks.actions.SetWaterConsumptionProperty.item','waterworks.actions.SetWaterConsumptionProperty','item',1,'Item',NULL,'var',NULL,NULL,NULL,'waterworks.facts.WaterConsumption',NULL),('waterworks.actions.SetWaterConsumptionProperty.value','waterworks.actions.SetWaterConsumptionProperty','value',3,'Value',NULL,'expression',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sys_rule_actiondef_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_rule_condition`
--

DROP TABLE IF EXISTS `sys_rule_condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rule_condition` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) NULL,
  `fact_name` varchar(50) NULL,
  `fact_objid` varchar(50) NULL,
  `varname` varchar(50) NULL,
  `pos` int(11) NULL,
  `ruletext` longtext,
  `displaytext` longtext,
  `dynamic_datatype` varchar(50) NULL,
  `dynamic_key` varchar(50) NULL,
  `dynamic_value` varchar(50) NULL,
  `notexist` int(11) NOT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_fact_objid` (`fact_objid`),
  KEY `ix_parentid` (`parentid`),
  CONSTRAINT `fk_sys_rule_condition_fact_objid` FOREIGN KEY (`fact_objid`) REFERENCES `sys_rule_fact` (`objid`),
  CONSTRAINT `fk_sys_rule_condition_parentid` FOREIGN KEY (`parentid`) REFERENCES `sys_rule` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_rule_condition`
--

LOCK TABLES `sys_rule_condition` WRITE;
/*!40000 ALTER TABLE `sys_rule_condition` DISABLE KEYS */;
INSERT INTO `sys_rule_condition` VALUES ('RC-6c2874cd:160ed01f3d2:-7fc6','RULa6b099d:eb1f3248b7:-75ed','wateraccount','waterworks.facts.WaterAccount',NULL,0,NULL,NULL,NULL,NULL,NULL,0),('RC-6c2874cd:160ed01f3d2:-7fcf','RULa6b099d:eb1f3248b7:-7630','wateraccount','waterworks.facts.WaterAccount',NULL,0,NULL,NULL,NULL,NULL,NULL,0),('RC-a002ae:16744d718df:-7ff1','RUL273a1fe9:134951a1bcf:-3109','WaterConsumption','waterworks.facts.WaterConsumption','WC',1,NULL,NULL,NULL,NULL,NULL,0),('RC-a002ae:16744d718df:-7ff7','RUL273a1fe9:134951a1bcf:-31f7','wateraccount','waterworks.facts.WaterAccount',NULL,0,NULL,NULL,NULL,NULL,NULL,0),('RC-c4c94d7:16d900ad4ab:-7ff5','RUL-316b7756:16d900d6052:-7f24','com.rameses.rules.common.CurrentDate','com.rameses.rules.common.CurrentDate',NULL,0,NULL,NULL,NULL,NULL,NULL,0),('RC216faf2b:16348e519b7:-7fe1','RUL-1b141bca:163491825b0:-7e43','waterworks.facts.WaterBlockSchedule','waterworks.facts.WaterBlockSchedule','WBS',0,NULL,NULL,NULL,NULL,NULL,0),('RC216faf2b:16348e519b7:-7fe8','RUL-34fcc9d0:16348fa1256:-79da','treasury.facts.VarInteger','treasury.facts.VarInteger',NULL,0,NULL,NULL,NULL,NULL,NULL,0),('RC216faf2b:16348e519b7:-7fe9','RUL-34fcc9d0:16348fa1256:-79da','treasury.facts.HolidayFact','treasury.facts.HolidayFact','HOLIDAYS',1,NULL,NULL,NULL,NULL,NULL,0),('RC216faf2b:16348e519b7:-7fec','RUL-34fcc9d0:16348fa1256:-79da','treasury.facts.BillingPeriod','treasury.facts.BillingPeriod','BILLPER',2,NULL,NULL,NULL,NULL,NULL,0),('RC2f280dc1:1684ad50113:-7fd9','RUL746193b0:1684af9777d:-7901','com.rameses.rules.common.CurrentDate','com.rameses.rules.common.CurrentDate',NULL,0,NULL,NULL,NULL,NULL,NULL,0),('RC2f280dc1:1684ad50113:-7fdc','RUL746193b0:1684af9777d:-7901','waterworks.facts.WaterBillItem','waterworks.facts.WaterBillItem','WBI',1,NULL,NULL,NULL,NULL,NULL,0),('RC2f280dc1:1684ad50113:-7fe2','RUL746193b0:1684af9777d:-7b3e','com.rameses.rules.common.CurrentDate','com.rameses.rules.common.CurrentDate',NULL,0,NULL,NULL,NULL,NULL,NULL,0),('RC2f280dc1:1684ad50113:-7fe5','RUL746193b0:1684af9777d:-7b3e','waterworks.facts.WaterBillItem','waterworks.facts.WaterBillItem','WBI',1,NULL,NULL,NULL,NULL,NULL,0),('RC61484a76:167813a20bc:-7ff6','RUL-54f2b5cd:167813a3810:-7b83','waterworks.facts.WaterConsumption','waterworks.facts.WaterConsumption','WC',2,NULL,NULL,NULL,NULL,NULL,0),('RC61484a76:167813a20bc:-7ff8','RUL-54f2b5cd:167813a3810:-7b83','wateraccount','waterworks.facts.WaterAccount',NULL,0,NULL,NULL,NULL,NULL,NULL,0),('RCOND-173a0991:1688ea323e8:-5f60','RUL-173a0991:1688ea323e8:-7657','waterworks.facts.WaterBillItem','waterworks.facts.WaterBillItem','WBI',1,NULL,NULL,NULL,NULL,NULL,0),('RCOND-18601aa3:168883a5d31:-511a','RUL38ede6eb:16888143c74:-7f8c','waterworks.facts.WaterBillItem','waterworks.facts.WaterBillItem','',3,NULL,NULL,NULL,NULL,NULL,1),('RCOND-2ebf3254:1677d2a3a0a:-2d46','RULa6b099d:eb1f3248b7:-7630','waterworks.facts.WaterConsumption','waterworks.facts.WaterConsumption','WC',2,NULL,NULL,NULL,NULL,NULL,0),('RCOND-316b7756:16d900d6052:-699a','RUL-316b7756:16d900d6052:-7f24','waterworks.facts.WaterBillItem','waterworks.facts.WaterBillItem','WBI',2,NULL,NULL,NULL,NULL,NULL,0),('RCOND-316b7756:16d900d6052:-6e48','RUL-316b7756:16d900d6052:-7f24','treasury.facts.VarDate','treasury.facts.VarDate',NULL,1,NULL,NULL,NULL,NULL,NULL,0),('RCOND-316b7756:16d900d6052:-7167','RUL-316b7756:16d900d6052:-721d','com.rameses.rules.common.CurrentDate','com.rameses.rules.common.CurrentDate',NULL,0,NULL,NULL,NULL,NULL,NULL,0),('RCOND-34fcc9d0:16348fa1256:-7896','RUL-34fcc9d0:16348fa1256:-78df','treasury.facts.VarDate','treasury.facts.VarDate',NULL,0,NULL,NULL,NULL,NULL,NULL,0),('RCOND-41d808ec:16fa2b737d3:-7999','RUL-41d808ec:16fa2b737d3:-7a69','treasury.facts.CreditBalanceBillItem','treasury.facts.CreditBalanceBillItem','CBAL',1,NULL,NULL,NULL,NULL,NULL,0),('RCOND-54f2b5cd:167813a3810:-7ad9','RUL-54f2b5cd:167813a3810:-7b83','waterworks.facts.WaterworksAttribute','waterworks.facts.WaterworksAttribute',NULL,2,NULL,NULL,NULL,NULL,NULL,0),('RCOND-694f3c0a:1677d756f0d:-7588','RUL273a1fe9:134951a1bcf:-31f7','waterworks.facts.WaterConsumption','waterworks.facts.WaterConsumption','WC',2,NULL,NULL,NULL,NULL,NULL,0),('RCOND-694f3c0a:1677d756f0d:-77aa','RULa6b099d:eb1f3248b7:-75ed','waterworks.facts.WaterConsumption','waterworks.facts.WaterConsumption','WC',2,NULL,NULL,NULL,NULL,NULL,0),('RCOND273a1fe9:134951a1bcf:-2f23','RUL273a1fe9:134951a1bcf:-3109','waterworks.facts.WaterworksAttribute','waterworks.facts.WaterworksAttribute',NULL,2,NULL,NULL,NULL,NULL,NULL,0),('RCOND273a1fe9:134951a1bcf:-2fb2','RUL273a1fe9:134951a1bcf:-3109','waterworks.facts.WaterAccount','waterworks.facts.WaterAccount',NULL,1,NULL,NULL,NULL,NULL,NULL,0),('RCOND2c46bd2e:1620eb5fe9d:-7538','RUL2c46bd2e:1620eb5fe9d:-7750','treasury.facts.HolidayFact','treasury.facts.HolidayFact','HOLIDAYS',1,NULL,NULL,NULL,NULL,NULL,0),('RCOND2c46bd2e:1620eb5fe9d:-76c7','RUL2c46bd2e:1620eb5fe9d:-7750','treasury.facts.VarDate','treasury.facts.VarDate',NULL,0,NULL,NULL,NULL,NULL,NULL,0),('RCOND2c46bd2e:1620eb5fe9d:-788f','RUL2c46bd2e:1620eb5fe9d:-7ec5','treasury.facts.HolidayFact','treasury.facts.HolidayFact','HOLIDAYS',1,NULL,NULL,NULL,NULL,NULL,0),('RCOND2c46bd2e:1620eb5fe9d:-7b90','RUL2c46bd2e:1620eb5fe9d:-7ec5','treasury.facts.VarDate','treasury.facts.VarDate',NULL,0,NULL,NULL,NULL,NULL,NULL,0),('RCOND38ede6eb:16888143c74:-7569','RUL38ede6eb:16888143c74:-7f8c','waterworks.facts.WaterBillItem','waterworks.facts.WaterBillItem','WBI',2,NULL,NULL,NULL,NULL,NULL,0),('RCOND38ede6eb:16888143c74:-7a1c','RUL38ede6eb:16888143c74:-7f8c','com.rameses.rules.common.CurrentDate','com.rameses.rules.common.CurrentDate',NULL,1,NULL,NULL,NULL,NULL,NULL,0),('RCOND38ede6eb:16888143c74:-7caf','RUL38ede6eb:16888143c74:-7f8c','treasury.facts.CashReceipt','treasury.facts.CashReceipt',NULL,0,NULL,NULL,NULL,NULL,NULL,0),('RCOND5b2b695a:1620ec467e4:-7a9c','RUL5b2b695a:1620ec467e4:-7b26','treasury.facts.VarDate','treasury.facts.VarDate',NULL,0,NULL,NULL,NULL,NULL,NULL,0),('RCOND5b2b695a:1620ec467e4:-7d04','RUL5b2b695a:1620ec467e4:-7e9b','treasury.facts.HolidayFact','treasury.facts.HolidayFact','HOLIDAYS',1,NULL,NULL,NULL,NULL,NULL,0),('RCOND5b2b695a:1620ec467e4:-7e12','RUL5b2b695a:1620ec467e4:-7e9b','treasury.facts.VarDate','treasury.facts.VarDate',NULL,0,NULL,NULL,NULL,NULL,NULL,0),('RCOND746193b0:1684af9777d:-7303','RUL746193b0:1684af9777d:-7390','waterworks.facts.WaterBillItem','waterworks.facts.WaterBillItem','WBI',0,NULL,NULL,NULL,NULL,NULL,0),('RCOND746193b0:1684af9777d:-7548','RUL746193b0:1684af9777d:-760b','treasury.facts.ExcessPayment','treasury.facts.ExcessPayment','EXPMT',0,NULL,NULL,NULL,NULL,NULL,0),('RCOND746193b0:1684af9777d:-7722','RUL746193b0:1684af9777d:-77bd','treasury.facts.Payment','treasury.facts.Payment','PMT',0,NULL,NULL,NULL,NULL,NULL,0),('RCOND746193b0:1684af9777d:-7cee','RUL746193b0:1684af9777d:-7f28','waterworks.facts.WaterBillItem','waterworks.facts.WaterBillItem','WBI',1,NULL,NULL,NULL,NULL,NULL,0),('RCOND746193b0:1684af9777d:-7ec3','RUL746193b0:1684af9777d:-7f28','com.rameses.rules.common.CurrentDate','com.rameses.rules.common.CurrentDate',NULL,0,NULL,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `sys_rule_condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_rule_condition_constraint`
--

DROP TABLE IF EXISTS `sys_rule_condition_constraint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rule_condition_constraint` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) NULL,
  `field_objid` varchar(100) NULL,
  `fieldname` varchar(50) NULL,
  `varname` varchar(50) NULL,
  `operator_caption` varchar(50) NULL,
  `operator_symbol` varchar(50) NULL,
  `usevar` int(11) NULL,
  `var_objid` varchar(50) NULL,
  `var_name` varchar(50) NULL,
  `decimalvalue` decimal(16,2) NULL,
  `intvalue` int(11) NULL,
  `stringvalue` varchar(255) NULL,
  `listvalue` longtext,
  `datevalue` date NULL,
  `pos` int(11) NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_parentid` (`parentid`),
  KEY `ix_var_objid` (`var_objid`),
  KEY `ix_field_objid` (`field_objid`),
  CONSTRAINT `fk_sys_rule_condition_constraint_field_objid` FOREIGN KEY (`field_objid`) REFERENCES `sys_rule_fact_field` (`objid`),
  CONSTRAINT `fk_sys_rule_condition_constraint_parentid` FOREIGN KEY (`parentid`) REFERENCES `sys_rule_condition` (`objid`),
  CONSTRAINT `fk_sys_rule_condition_constraint_var_objid` FOREIGN KEY (`var_objid`) REFERENCES `sys_rule_condition_var` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_rule_condition_constraint`
--

LOCK TABLES `sys_rule_condition_constraint` WRITE;
/*!40000 ALTER TABLE `sys_rule_condition_constraint` DISABLE KEYS */;
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC-6c2874cd:160ed01f3d2:-7fc5','RC-6c2874cd:160ed01f3d2:-7fc6','waterworks.facts.WaterAccount.classification','classification',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"COMMERCIAL\",value:\"COMMERCIAL\"]]',NULL,1),('RCC-6c2874cd:160ed01f3d2:-7fce','RC-6c2874cd:160ed01f3d2:-7fcf','waterworks.facts.WaterAccount.classification','classification',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"RESIDENTIAL\",value:\"RESIDENTIAL\"],[key:\"GOVERNMENT\",value:\"GOVERNMENT\"]]',NULL,1),('RCC-a002ae:16744d718df:-7ff6','RC-a002ae:16744d718df:-7ff7','waterworks.facts.WaterAccount.classification','classification',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"INDUSTRIAL\",value:\"INDUSTRIAL\"],[key:\"BULK\",value:\"BULK\"]]',NULL,1),('RCC-c4c94d7:16d900ad4ab:-7ff4','RC-c4c94d7:16d900ad4ab:-7ff5','com.rameses.rules.common.CurrentDate.date','date','CDATE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCC216faf2b:16348e519b7:-7fe0','RC216faf2b:16348e519b7:-7fe1','waterworks.facts.WaterBlockSchedule.id','id',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"S1\",value:\"S1\"]]',NULL,0),('RCC2f280dc1:1684ad50113:-7fd7','RC2f280dc1:1684ad50113:-7fd9','com.rameses.rules.common.CurrentDate.year','year','YR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCC2f280dc1:1684ad50113:-7fd8','RC2f280dc1:1684ad50113:-7fd9','com.rameses.rules.common.CurrentDate.month','month','MON',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCC2f280dc1:1684ad50113:-7fda','RC2f280dc1:1684ad50113:-7fdc','waterworks.facts.WaterBillItem.year','year',NULL,'equal to','==',1,'RCC2f280dc1:1684ad50113:-7fd7','YR',NULL,NULL,NULL,NULL,NULL,0),('RCC2f280dc1:1684ad50113:-7fdb','RC2f280dc1:1684ad50113:-7fdc','waterworks.facts.WaterBillItem.month','month',NULL,'less than','<',1,'RCC2f280dc1:1684ad50113:-7fd8','MON',NULL,NULL,NULL,NULL,NULL,1),('RCC2f280dc1:1684ad50113:-7fe0','RC2f280dc1:1684ad50113:-7fe2','com.rameses.rules.common.CurrentDate.year','year','YR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCC2f280dc1:1684ad50113:-7fe3','RC2f280dc1:1684ad50113:-7fe5','waterworks.facts.WaterBillItem.year','year',NULL,'less than','<',1,'RCC2f280dc1:1684ad50113:-7fe0','YR',NULL,NULL,NULL,NULL,NULL,0),('RCC61484a76:167813a20bc:-7ff5','RC61484a76:167813a20bc:-7ff6','waterworks.facts.WaterConsumption.volume','volume','VOL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCC61484a76:167813a20bc:-7ff7','RC61484a76:167813a20bc:-7ff8','waterworks.facts.WaterAccount.classification','classification',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"RESIDENTIAL\",value:\"RESIDENTIAL\"]]',NULL,1),('RCONST-173a0991:1688ea323e8:-5eb9','RCOND-173a0991:1688ea323e8:-5f60','waterworks.facts.WaterBillItem.partialunpaid','partialunpaid','PU','greater than','>',NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,0),('RCONST-18601aa3:168883a5d31:-50c3','RCOND-18601aa3:168883a5d31:-511a','waterworks.facts.WaterBillItem.duedate','duedate',NULL,'before','<',1,'RCONST38ede6eb:16888143c74:-79ef','CURRDATE',NULL,NULL,NULL,NULL,NULL,0),('RCONST-2ebf3254:1677d2a3a0a:-2d16','RCOND-2ebf3254:1677d2a3a0a:-2d46','waterworks.facts.WaterConsumption.volume','volume','VOL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCONST-2ebf3254:1677d2a3a0a:-6881','RC-a002ae:16744d718df:-7ff1','waterworks.facts.WaterConsumption.volume','volume','VOL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCONST-316b7756:16d900d6052:-6869','RCOND-316b7756:16d900d6052:-699a','waterworks.facts.WaterBillItem.duedate','duedate',NULL,'before','<',1,'RCC-c4c94d7:16d900ad4ab:-7ff4','CDATE',NULL,NULL,NULL,NULL,NULL,2),('RCONST-316b7756:16d900d6052:-68eb','RCOND-316b7756:16d900d6052:-699a','waterworks.facts.WaterBillItem.duedate','duedate',NULL,'on or after','>=',1,'RCONST-316b7756:16d900d6052:-6d92','PEDATE',NULL,NULL,NULL,NULL,NULL,1),('RCONST-316b7756:16d900d6052:-6952','RCOND-316b7756:16d900d6052:-699a','waterworks.facts.WaterBillItem.amount','amount','AMT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCONST-316b7756:16d900d6052:-6d92','RCOND-316b7756:16d900d6052:-6e48','treasury.facts.VarDate.date','date','PEDATE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCONST-316b7756:16d900d6052:-6dca','RCOND-316b7756:16d900d6052:-6e48','treasury.facts.VarDate.tag','tag',NULL,'equal to','==',NULL,NULL,NULL,NULL,NULL,'penaltyeffectivitydate',NULL,NULL,0),('RCONST-54f2b5cd:167813a3810:-7ac9','RCOND-54f2b5cd:167813a3810:-7ad9','waterworks.facts.WaterworksAttribute.name','name',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"SENIOR\",value:\"SENIOR CITIZEN\"]]',NULL,0),('RCONST-694f3c0a:1677d756f0d:-7561','RCOND-694f3c0a:1677d756f0d:-7588','waterworks.facts.WaterConsumption.volume','volume','VOL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCONST-694f3c0a:1677d756f0d:-777a','RCOND-694f3c0a:1677d756f0d:-77aa','waterworks.facts.WaterConsumption.volume','volume','VOL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCONST16e4575c:1677753e95d:-7b90','RCOND2c46bd2e:1620eb5fe9d:-7b90','treasury.facts.VarDate.tag','tag',NULL,'equal to','==',NULL,NULL,NULL,NULL,NULL,'readingdate',NULL,NULL,1),('RCONST16e4575c:1677753e95d:-7c90','RCOND2c46bd2e:1620eb5fe9d:-7b90','treasury.facts.VarDate.date','date','VARDATE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCONST16e4575c:1677753e95d:-7eb5','RCOND-34fcc9d0:16348fa1256:-7896','treasury.facts.VarDate.tag','tag',NULL,'equal to','==',NULL,NULL,NULL,NULL,NULL,'toperiod',NULL,NULL,1),('RCONST16e4575c:1677753e95d:-7f40','RCOND-34fcc9d0:16348fa1256:-7896','treasury.facts.VarDate.date','date','DATE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCONST273a1fe9:134951a1bcf:-2f13','RCOND273a1fe9:134951a1bcf:-2f23','waterworks.facts.WaterworksAttribute.name','name',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"SUBDIVISION\",value:\"SUBDIVISION\"]]',NULL,0),('RCONST273a1fe9:134951a1bcf:-2f64','RCOND273a1fe9:134951a1bcf:-2fb2','waterworks.facts.WaterAccount.units','units','UNITS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCONST38ede6eb:16888143c74:-70f9','RCOND38ede6eb:16888143c74:-7569','waterworks.facts.WaterBillItem.principal','principal','PRIN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2),('RCONST38ede6eb:16888143c74:-74b1','RCOND38ede6eb:16888143c74:-7569','waterworks.facts.WaterBillItem.amount','amount','AMT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCONST38ede6eb:16888143c74:-7514','RCOND38ede6eb:16888143c74:-7569','waterworks.facts.WaterBillItem.duedate','duedate',NULL,'on or after','>=',1,'RCONST38ede6eb:16888143c74:-79ef','CURRDATE',NULL,NULL,NULL,NULL,NULL,0),('RCONST38ede6eb:16888143c74:-79ef','RCOND38ede6eb:16888143c74:-7a1c','com.rameses.rules.common.CurrentDate.date','date','CURRDATE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCONST746193b0:1684af9777d:-690d','RCOND746193b0:1684af9777d:-7303','waterworks.facts.WaterBillItem.todate','todate','TODATE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCONST746193b0:1684af9777d:-6993','RCOND746193b0:1684af9777d:-7303','waterworks.facts.WaterBillItem.fromdate','fromdate','FROMDATE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCONST746193b0:1684af9777d:-7538','RCOND746193b0:1684af9777d:-7548','treasury.facts.ExcessPayment.amount','amount','AMT','greater than','>',NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,0),('RCONST746193b0:1684af9777d:-76ec','RCOND746193b0:1684af9777d:-7722','treasury.facts.Payment.amount','amount',NULL,'greater than','>',NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,0),('RCONST746193b0:1684af9777d:-7cb7','RCOND746193b0:1684af9777d:-7cee','waterworks.facts.WaterBillItem.year','year',NULL,'equal to','==',1,'RCONST746193b0:1684af9777d:-7e9a','YR',NULL,NULL,NULL,NULL,NULL,0),('RCONST746193b0:1684af9777d:-7e58','RCOND746193b0:1684af9777d:-7ec3','com.rameses.rules.common.CurrentDate.month','month','MON',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCONST746193b0:1684af9777d:-7e9a','RCOND746193b0:1684af9777d:-7ec3','com.rameses.rules.common.CurrentDate.year','year','YR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCONSTb701e29:16777f95d74:-7139','RC216faf2b:16348e519b7:-7fe8','treasury.facts.VarInteger.tag','tag',NULL,'equal to','==',NULL,NULL,NULL,NULL,NULL,'days',NULL,NULL,1),('RCONSTb701e29:16777f95d74:-716a','RC216faf2b:16348e519b7:-7fe8','treasury.facts.VarInteger.value','value','DAYS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCONSTb701e29:16777f95d74:-7538','RC216faf2b:16348e519b7:-7fec','treasury.facts.BillingPeriod.year','year','YR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCONSTb701e29:16777f95d74:-7573','RC216faf2b:16348e519b7:-7fec','treasury.facts.BillingPeriod.month','month','MON',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCONSTb701e29:16777f95d74:-78c2','RCOND2c46bd2e:1620eb5fe9d:-76c7','treasury.facts.VarDate.date','date','VARDATE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCONSTb701e29:16777f95d74:-78f1','RCOND2c46bd2e:1620eb5fe9d:-76c7','treasury.facts.VarDate.tag','tag',NULL,'equal to','==',NULL,NULL,NULL,NULL,NULL,'readingduedate',NULL,NULL,0),('RCONSTb701e29:16777f95d74:-7a26','RCOND5b2b695a:1620ec467e4:-7e12','treasury.facts.VarDate.date','date','VARDATE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCONSTb701e29:16777f95d74:-7a5b','RCOND5b2b695a:1620ec467e4:-7e12','treasury.facts.VarDate.tag','tag',NULL,'equal to','==',NULL,NULL,NULL,NULL,NULL,'billingduedate',NULL,NULL,0),('RCONSTb701e29:16777f95d74:-7dce','RCOND5b2b695a:1620ec467e4:-7a9c','treasury.facts.VarDate.tag','tag',NULL,'equal to','==',NULL,NULL,NULL,NULL,NULL,'discdate',NULL,NULL,1),('RCONSTb701e29:16777f95d74:-7eb1','RCOND5b2b695a:1620ec467e4:-7a9c','treasury.facts.VarDate.date','date','VARDATE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `sys_rule_condition_constraint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_rule_condition_var`
--

DROP TABLE IF EXISTS `sys_rule_condition_var`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rule_condition_var` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) NULL,
  `ruleid` varchar(50) NULL,
  `varname` varchar(50) NULL,
  `datatype` varchar(50) NULL,
  `pos` int(11) NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_parentid` (`parentid`),
  CONSTRAINT `fk_sys_rule_condition_var_parentid` FOREIGN KEY (`parentid`) REFERENCES `sys_rule_condition` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_rule_condition_var`
--

LOCK TABLES `sys_rule_condition_var` WRITE;
/*!40000 ALTER TABLE `sys_rule_condition_var` DISABLE KEYS */;
INSERT INTO `sys_rule_condition_var` VALUES ('RC-a002ae:16744d718df:-7ff1','RC-a002ae:16744d718df:-7ff1','RUL273a1fe9:134951a1bcf:-3109','WC','waterworks.facts.WaterConsumption',1),('RC216faf2b:16348e519b7:-7fe1','RC216faf2b:16348e519b7:-7fe1','RUL-1b141bca:163491825b0:-7e43','WBS','waterworks.facts.WaterBlockSchedule',0),('RC216faf2b:16348e519b7:-7fe9','RC216faf2b:16348e519b7:-7fe9','RUL-34fcc9d0:16348fa1256:-79da','HOLIDAYS','treasury.facts.HolidayFact',1),('RC216faf2b:16348e519b7:-7fec','RC216faf2b:16348e519b7:-7fec','RUL-34fcc9d0:16348fa1256:-79da','BILLPER','treasury.facts.BillingPeriod',2),('RC2f280dc1:1684ad50113:-7fdc','RC2f280dc1:1684ad50113:-7fdc','RUL746193b0:1684af9777d:-7901','WBI','waterworks.facts.WaterBillItem',1),('RC2f280dc1:1684ad50113:-7fe5','RC2f280dc1:1684ad50113:-7fe5','RUL746193b0:1684af9777d:-7b3e','WBI','waterworks.facts.WaterBillItem',1),('RC61484a76:167813a20bc:-7ff6','RC61484a76:167813a20bc:-7ff6','RUL-54f2b5cd:167813a3810:-7b83','WC','waterworks.facts.WaterConsumption',2),('RCC-c4c94d7:16d900ad4ab:-7ff4','RC-c4c94d7:16d900ad4ab:-7ff5','RUL-316b7756:16d900d6052:-7f24','CDATE','date',0),('RCC2f280dc1:1684ad50113:-7fd7','RC2f280dc1:1684ad50113:-7fd9','RUL746193b0:1684af9777d:-7901','YR','integer',0),('RCC2f280dc1:1684ad50113:-7fd8','RC2f280dc1:1684ad50113:-7fd9','RUL746193b0:1684af9777d:-7901','MON','integer',1),('RCC2f280dc1:1684ad50113:-7fe0','RC2f280dc1:1684ad50113:-7fe2','RUL746193b0:1684af9777d:-7b3e','YR','integer',0),('RCC61484a76:167813a20bc:-7ff5','RC61484a76:167813a20bc:-7ff6','RUL-54f2b5cd:167813a3810:-7b83','VOL','integer',0),('RCOND-173a0991:1688ea323e8:-5f60','RCOND-173a0991:1688ea323e8:-5f60','RUL-173a0991:1688ea323e8:-7657','WBI','waterworks.facts.WaterBillItem',1),('RCOND-2ebf3254:1677d2a3a0a:-2d46','RCOND-2ebf3254:1677d2a3a0a:-2d46','RULa6b099d:eb1f3248b7:-7630','WC','waterworks.facts.WaterConsumption',2),('RCOND-316b7756:16d900d6052:-699a','RCOND-316b7756:16d900d6052:-699a','RUL-316b7756:16d900d6052:-7f24','WBI','waterworks.facts.WaterBillItem',2),('RCOND-41d808ec:16fa2b737d3:-7999','RCOND-41d808ec:16fa2b737d3:-7999','RUL-41d808ec:16fa2b737d3:-7a69','CBAL','treasury.facts.CreditBalanceBillItem',1),('RCOND-694f3c0a:1677d756f0d:-7588','RCOND-694f3c0a:1677d756f0d:-7588','RUL273a1fe9:134951a1bcf:-31f7','WC','waterworks.facts.WaterConsumption',2),('RCOND-694f3c0a:1677d756f0d:-77aa','RCOND-694f3c0a:1677d756f0d:-77aa','RULa6b099d:eb1f3248b7:-75ed','WC','waterworks.facts.WaterConsumption',2),('RCOND2c46bd2e:1620eb5fe9d:-7538','RCOND2c46bd2e:1620eb5fe9d:-7538','RUL2c46bd2e:1620eb5fe9d:-7750','HOLIDAYS','treasury.facts.HolidayFact',1),('RCOND2c46bd2e:1620eb5fe9d:-788f','RCOND2c46bd2e:1620eb5fe9d:-788f','RUL2c46bd2e:1620eb5fe9d:-7ec5','HOLIDAYS','treasury.facts.HolidayFact',1),('RCOND38ede6eb:16888143c74:-7569','RCOND38ede6eb:16888143c74:-7569','RUL38ede6eb:16888143c74:-7f8c','WBI','waterworks.facts.WaterBillItem',2),('RCOND5b2b695a:1620ec467e4:-7d04','RCOND5b2b695a:1620ec467e4:-7d04','RUL5b2b695a:1620ec467e4:-7e9b','HOLIDAYS','treasury.facts.HolidayFact',1),('RCOND746193b0:1684af9777d:-7303','RCOND746193b0:1684af9777d:-7303','RUL746193b0:1684af9777d:-7390','WBI','waterworks.facts.WaterBillItem',0),('RCOND746193b0:1684af9777d:-7548','RCOND746193b0:1684af9777d:-7548','RUL746193b0:1684af9777d:-760b','EXPMT','treasury.facts.ExcessPayment',0),('RCOND746193b0:1684af9777d:-7722','RCOND746193b0:1684af9777d:-7722','RUL746193b0:1684af9777d:-77bd','PMT','treasury.facts.Payment',0),('RCOND746193b0:1684af9777d:-7cee','RCOND746193b0:1684af9777d:-7cee','RUL746193b0:1684af9777d:-7f28','WBI','waterworks.facts.WaterBillItem',1),('RCONST-173a0991:1688ea323e8:-5eb9','RCOND-173a0991:1688ea323e8:-5f60','RUL-173a0991:1688ea323e8:-7657','PU','decimal',0),('RCONST-2ebf3254:1677d2a3a0a:-2d16','RCOND-2ebf3254:1677d2a3a0a:-2d46','RULa6b099d:eb1f3248b7:-7630','VOL','integer',0),('RCONST-2ebf3254:1677d2a3a0a:-6881','RC-a002ae:16744d718df:-7ff1','RUL273a1fe9:134951a1bcf:-3109','VOL','integer',0),('RCONST-316b7756:16d900d6052:-6952','RCOND-316b7756:16d900d6052:-699a','RUL-316b7756:16d900d6052:-7f24','AMT','decimal',0),('RCONST-316b7756:16d900d6052:-6d92','RCOND-316b7756:16d900d6052:-6e48','RUL-316b7756:16d900d6052:-7f24','PEDATE','date',1),('RCONST-694f3c0a:1677d756f0d:-7561','RCOND-694f3c0a:1677d756f0d:-7588','RUL273a1fe9:134951a1bcf:-31f7','VOL','integer',0),('RCONST-694f3c0a:1677d756f0d:-777a','RCOND-694f3c0a:1677d756f0d:-77aa','RULa6b099d:eb1f3248b7:-75ed','VOL','integer',0),('RCONST16e4575c:1677753e95d:-7c90','RCOND2c46bd2e:1620eb5fe9d:-7b90','RUL2c46bd2e:1620eb5fe9d:-7ec5','VARDATE','date',0),('RCONST16e4575c:1677753e95d:-7f40','RCOND-34fcc9d0:16348fa1256:-7896','RUL-34fcc9d0:16348fa1256:-78df','DATE','date',0),('RCONST273a1fe9:134951a1bcf:-2f64','RCOND273a1fe9:134951a1bcf:-2fb2','RUL273a1fe9:134951a1bcf:-3109','UNITS','integer',0),('RCONST2c46bd2e:1620eb5fe9d:-7652','RCOND2c46bd2e:1620eb5fe9d:-76c7','RUL2c46bd2e:1620eb5fe9d:-7750','VARDATE','date',1),('RCONST2c46bd2e:1620eb5fe9d:-7aaf','RCOND2c46bd2e:1620eb5fe9d:-7b90','RUL2c46bd2e:1620eb5fe9d:-7ec5','VARDATE','date',1),('RCONST38ede6eb:16888143c74:-70f9','RCOND38ede6eb:16888143c74:-7569','RUL38ede6eb:16888143c74:-7f8c','PRIN','decimal',2),('RCONST38ede6eb:16888143c74:-74b1','RCOND38ede6eb:16888143c74:-7569','RUL38ede6eb:16888143c74:-7f8c','AMT','decimal',1),('RCONST38ede6eb:16888143c74:-79ef','RCOND38ede6eb:16888143c74:-7a1c','RUL38ede6eb:16888143c74:-7f8c','CURRDATE','date',0),('RCONST5b2b695a:1620ec467e4:-7a3b','RCOND5b2b695a:1620ec467e4:-7a9c','RUL5b2b695a:1620ec467e4:-7b26','VARDATE','date',0),('RCONST746193b0:1684af9777d:-690d','RCOND746193b0:1684af9777d:-7303','RUL746193b0:1684af9777d:-7390','TODATE','date',1),('RCONST746193b0:1684af9777d:-6993','RCOND746193b0:1684af9777d:-7303','RUL746193b0:1684af9777d:-7390','FROMDATE','date',0),('RCONST746193b0:1684af9777d:-7538','RCOND746193b0:1684af9777d:-7548','RUL746193b0:1684af9777d:-760b','AMT','decimal',0),('RCONST746193b0:1684af9777d:-7e58','RCOND746193b0:1684af9777d:-7ec3','RUL746193b0:1684af9777d:-7f28','MON','integer',1),('RCONST746193b0:1684af9777d:-7e9a','RCOND746193b0:1684af9777d:-7ec3','RUL746193b0:1684af9777d:-7f28','YR','integer',0),('RCONSTb701e29:16777f95d74:-716a','RC216faf2b:16348e519b7:-7fe8','RUL-34fcc9d0:16348fa1256:-79da','DAYS','integer',0),('RCONSTb701e29:16777f95d74:-7538','RC216faf2b:16348e519b7:-7fec','RUL-34fcc9d0:16348fa1256:-79da','YR','integer',1),('RCONSTb701e29:16777f95d74:-7573','RC216faf2b:16348e519b7:-7fec','RUL-34fcc9d0:16348fa1256:-79da','MON','integer',0),('RCONSTb701e29:16777f95d74:-7a26','RCOND5b2b695a:1620ec467e4:-7e12','RUL5b2b695a:1620ec467e4:-7e9b','VARDATE','date',1);
/*!40000 ALTER TABLE `sys_rule_condition_var` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_rule_deployed`
--

DROP TABLE IF EXISTS `sys_rule_deployed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rule_deployed` (
  `objid` varchar(50) NOT NULL,
  `ruletext` longtext,
  PRIMARY KEY (`objid`),
  CONSTRAINT `fk_sys_rule_deployed_objid` FOREIGN KEY (`objid`) REFERENCES `sys_rule` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `sys_rule_fact`
--

DROP TABLE IF EXISTS `sys_rule_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rule_fact` (
  `objid` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `title` varchar(160) NULL,
  `factclass` varchar(50) NULL,
  `sortorder` int(11) NULL,
  `handler` varchar(50) NULL,
  `defaultvarname` varchar(25) NULL,
  `dynamic` int(11) NULL,
  `lookuphandler` varchar(50) NULL,
  `lookupkey` varchar(50) NULL,
  `lookupvalue` varchar(50) NULL,
  `lookupdatatype` varchar(50) NULL,
  `dynamicfieldname` varchar(50) NULL,
  `builtinconstraints` varchar(50) NULL,
  `domain` varchar(50) NULL,
  `factsuperclass` varchar(50) NULL,
  PRIMARY KEY (`objid`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_rule_fact`
--

LOCK TABLES `sys_rule_fact` WRITE;
/*!40000 ALTER TABLE `sys_rule_fact` DISABLE KEYS */;
INSERT INTO `sys_rule_fact` VALUES ('com.rameses.rules.common.CurrentDate','com.rameses.rules.common.CurrentDate','Current Date','com.rameses.rules.common.CurrentDate',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SYSTEM',NULL),('treasury.facts.Attribute','treasury.facts.Attribute','Attribute','treasury.facts.Attribute',1,NULL,'ATT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.BillDate','treasury.facts.BillDate','Bill Date','treasury.facts.BillDate',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.BillingPeriod','treasury.facts.BillingPeriod','Billing Period','treasury.facts.BillingPeriod',1,NULL,'BILPRD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.BillItem','treasury.facts.BillItem','Bill Item','treasury.facts.BillItem',1,NULL,'BILLITEM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY','treasury.facts.AbstractBillItem'),('treasury.facts.CashReceipt','treasury.facts.CashReceipt','Cash Receipt','treasury.facts.CashReceipt',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.CreditBalanceBillItem','treasury.facts.CreditBalanceBillItem','Credit Balance Bill Item','treasury.facts.CreditBalanceBillItem',1,NULL,'CBAL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY','treasury.facts.AbstractBillItem'),('treasury.facts.CreditBillItem','treasury.facts.CreditBillItem','Credit Bill Item','treasury.facts.CreditBillItem',1,NULL,'CRBILL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY','treasury.facts.AbstractBillItem'),('treasury.facts.DueDate','treasury.facts.DueDate','Due Date','treasury.facts.DueDate',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.ExcessPayment','treasury.facts.ExcessPayment','Excess Payment','treasury.facts.ExcessPayment',5,NULL,'EXPMT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.HolidayFact','treasury.facts.HolidayFact','Holidays','treasury.facts.HolidayFact',1,NULL,'HOLIDAYS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.MonthEntry','treasury.facts.MonthEntry','Month Entry','treasury.facts.MonthEntry',1,NULL,'MONTHENTRY',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.Payment','treasury.facts.Payment','Payment','treasury.facts.Payment',5,NULL,'PMT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.Requirement','treasury.facts.Requirement','Requirement','treasury.facts.Requirement',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'treasury',NULL),('treasury.facts.VarDate','treasury.facts.VarDate','Variable Date','treasury.facts.VarDate',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.VarDecimal','treasury.facts.VarDecimal','Var Decimal','treasury.facts.VarDecimal',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.VarInteger','treasury.facts.VarInteger','Var Integer','treasury.facts.VarInteger',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.VarString','treasury.facts.VarString','Var String','treasury.facts.VarString',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('waterworks.facts.Sector','waterworks.facts.Sector','Waterworks Sector','waterworks.facts.Sector',1,NULL,'WSEC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'WATERWORKS',NULL),('waterworks.facts.Stubout','waterworks.facts.Stubout','Stubout','waterworks.facts.Stubout',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'waterworks',NULL),('waterworks.facts.WaterAccount','waterworks.facts.WaterAccount','Water Account','waterworks.facts.WaterAccount',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'waterworks',NULL),('waterworks.facts.WaterBillItem','waterworks.facts.WaterBillItem','Water Bill Item','waterworks.facts.WaterBillItem',0,NULL,'WBI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'WATERWORKS','treasury.facts.AbstractBillItem'),('waterworks.facts.WaterBlockSchedule','waterworks.facts.WaterBlockSchedule','Water Block Schedule','waterworks.facts.WaterBlockSchedule',1,NULL,'WBS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'WATERWORKS',NULL),('waterworks.facts.WaterConsumption','waterworks.facts.WaterConsumption','Water Consumption','waterworks.facts.WaterConsumption',1,NULL,'WC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'WATERWORKS',NULL),('waterworks.facts.WaterInstallment','waterworks.facts.WaterInstallment','Waterworks Installment','waterworks.facts.WaterInstallment',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'waterworks',NULL),('waterworks.facts.WaterMeter','waterworks.facts.WaterMeter','Water Meter','waterworks.facts.WaterMeter',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'WATERWORKS',NULL),('waterworks.facts.WaterworksAttribute','waterworks.facts.WaterworksAttribute','Waterworks Attribute','waterworks.facts.WaterworksAttribute',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'WATERWORKS',NULL),('waterworks.facts.Zone','waterworks.facts.Zone','Waterworks Zone','waterworks.facts.Zone',1,NULL,'WZON',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'WATERWORKS',NULL);
/*!40000 ALTER TABLE `sys_rule_fact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_rule_fact_field`
--

DROP TABLE IF EXISTS `sys_rule_fact_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rule_fact_field` (
  `objid` varchar(100) NOT NULL DEFAULT '',
  `parentid` varchar(50) NULL,
  `name` varchar(50) NOT NULL,
  `title` varchar(160) NULL,
  `datatype` varchar(50) NULL,
  `sortorder` int(11) NULL,
  `handler` varchar(50) NULL,
  `lookuphandler` varchar(50) NULL,
  `lookupkey` varchar(50) NULL,
  `lookupvalue` varchar(50) NULL,
  `lookupdatatype` varchar(50) NULL,
  `multivalued` int(11) NULL,
  `required` int(11) NULL,
  `vardatatype` varchar(50) NULL,
  `lovname` varchar(50) NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_parentid` (`parentid`),
  CONSTRAINT `fk_sys_rule_fact_field_parentid` FOREIGN KEY (`parentid`) REFERENCES `sys_rule_fact` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_rule_fact_field`
--

LOCK TABLES `sys_rule_fact_field` WRITE;
/*!40000 ALTER TABLE `sys_rule_fact_field` DISABLE KEYS */;
INSERT INTO `sys_rule_fact_field` VALUES ('com.rameses.rules.common.CurrentDate.date','com.rameses.rules.common.CurrentDate','date','Date','date',4,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('com.rameses.rules.common.CurrentDate.day','com.rameses.rules.common.CurrentDate','day','Day','integer',5,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('com.rameses.rules.common.CurrentDate.month','com.rameses.rules.common.CurrentDate','month','Month','integer',3,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('com.rameses.rules.common.CurrentDate.qtr','com.rameses.rules.common.CurrentDate','qtr','Qtr','integer',1,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('com.rameses.rules.common.CurrentDate.year','com.rameses.rules.common.CurrentDate','year','Year','integer',2,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.Attribute.name','treasury.facts.Attribute','name','Name','string',1,'lookup','attribute:lookup','name','title',NULL,NULL,NULL,'string',NULL),('treasury.facts.BillDate.date','treasury.facts.BillDate','date','Date','date',1,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('treasury.facts.BillDate.day','treasury.facts.BillDate','day','Day','integer',4,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.BillDate.month','treasury.facts.BillDate','month','Month','integer',3,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.BillDate.qtr','treasury.facts.BillDate','qtr','Qtr','integer',5,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.BillDate.year','treasury.facts.BillDate','year','Year','integer',2,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.BillingPeriod.fromdate','treasury.facts.BillingPeriod','fromdate','From Date','date',3,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('treasury.facts.BillingPeriod.month','treasury.facts.BillingPeriod','month','Month','integer',1,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.BillingPeriod.todate','treasury.facts.BillingPeriod','todate','To Date','date',4,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('treasury.facts.BillingPeriod.year','treasury.facts.BillingPeriod','year','Year','integer',2,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.BillItem.account','treasury.facts.BillItem','account','Account','string',3,'lookup','revenueitem:lookup','objid','title',NULL,NULL,NULL,'object',NULL),('treasury.facts.BillItem.account.objid','treasury.facts.BillItem','account.objid','Account','string',2,'lookup','revenueitem:lookup','objid','title',NULL,NULL,NULL,'string',NULL),('treasury.facts.BillItem.amount','treasury.facts.BillItem','amount','Amount','decimal',1,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('treasury.facts.BillItem.billcode','treasury.facts.BillItem','billcode','Bill code','string',16,'lookup','waterworks_itemaccount:lookup','objid','title',NULL,NULL,NULL,'string',NULL),('treasury.facts.BillItem.billrefid','treasury.facts.BillItem','billrefid','Bill Ref ID','string',7,'var',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.BillItem.discount','treasury.facts.BillItem','discount','Discount','decimal',8,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('treasury.facts.BillItem.duedate','treasury.facts.BillItem','duedate','Due Date','date',4,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('treasury.facts.BillItem.fromdate','treasury.facts.BillItem','fromdate','From Date','date',14,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('treasury.facts.BillItem.interest','treasury.facts.BillItem','interest','Interest','decimal',11,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('treasury.facts.BillItem.month','treasury.facts.BillItem','month','Month','integer',13,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.BillItem.org','treasury.facts.BillItem','org','Org','string',10,'var',NULL,NULL,NULL,NULL,NULL,NULL,'enterprise.facts.Org',NULL),('treasury.facts.BillItem.parentaccount','treasury.facts.BillItem','parentaccount','Parent Account','string',9,'lookup','revenueitem:lookup','objid','title',NULL,NULL,NULL,'object',NULL),('treasury.facts.BillItem.surcharge','treasury.facts.BillItem','surcharge','Surcharge','decimal',5,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('treasury.facts.BillItem.todate','treasury.facts.BillItem','todate','To Date','date',15,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('treasury.facts.BillItem.txntype','treasury.facts.BillItem','txntype','Txn Type','string',6,'lookup','billitem_txntype:lookup','objid','title',NULL,NULL,NULL,'string',NULL),('treasury.facts.BillItem.year','treasury.facts.BillItem','year','Year','integer',12,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.CashReceipt.receiptdate','treasury.facts.CashReceipt','receiptdate','Receipt Date','date',2,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('treasury.facts.CashReceipt.txnmode','treasury.facts.CashReceipt','txnmode','Txn Mode','string',1,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.CreditBalanceBillItem.amount','treasury.facts.CreditBalanceBillItem','amount','Amount','decimal',1,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('treasury.facts.CreditBalanceBillItem.billcode','treasury.facts.CreditBalanceBillItem','billcode','Bill code','string',2,'lookup','waterworks_itemaccount:lookup','objid','title',NULL,NULL,NULL,'string',NULL),('treasury.facts.CreditBillItem.amount','treasury.facts.CreditBillItem','amount','Amount','decimal',1,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('treasury.facts.CreditBillItem.billcode','treasury.facts.CreditBillItem','billcode','Bill code','string',2,'lookup','waterworks_itemaccount:lookup','objid','title',NULL,NULL,NULL,'string',NULL),('treasury.facts.DueDate.date','treasury.facts.DueDate','date','Date','date',1,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('treasury.facts.DueDate.day','treasury.facts.DueDate','day','Day','integer',4,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.DueDate.month','treasury.facts.DueDate','month','Month','integer',3,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.DueDate.qtr','treasury.facts.DueDate','qtr','Qtr','integer',5,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.DueDate.year','treasury.facts.DueDate','year','Year','integer',2,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.ExcessPayment.amount','treasury.facts.ExcessPayment','amount','Amount','decimal',1,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('treasury.facts.HolidayFact.id','treasury.facts.HolidayFact','id','ID','string',1,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.MonthEntry.duedate','treasury.facts.MonthEntry','duedate','Due date','date',13,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('treasury.facts.MonthEntry.first','treasury.facts.MonthEntry','first','First','boolean',11,'boolean',NULL,NULL,NULL,NULL,NULL,NULL,'boolean',NULL),('treasury.facts.MonthEntry.fromdate','treasury.facts.MonthEntry','fromdate','From Date','date',4,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('treasury.facts.MonthEntry.fromday','treasury.facts.MonthEntry','fromday','From Day','integer',6,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.MonthEntry.index','treasury.facts.MonthEntry','index','Index','integer',10,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.MonthEntry.last','treasury.facts.MonthEntry','last','Last','boolean',12,'boolean',NULL,NULL,NULL,NULL,NULL,NULL,'boolean',NULL),('treasury.facts.MonthEntry.maxdays','treasury.facts.MonthEntry','maxdays','Month Max Days','integer',9,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.MonthEntry.month','treasury.facts.MonthEntry','month','Month','integer',2,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.MonthEntry.numdays','treasury.facts.MonthEntry','numdays','No. of Days','integer',8,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.MonthEntry.qtr','treasury.facts.MonthEntry','qtr','Qtr','integer',3,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.MonthEntry.todate','treasury.facts.MonthEntry','todate','To Date','date',5,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('treasury.facts.MonthEntry.today','treasury.facts.MonthEntry','today','To Day','integer',7,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.MonthEntry.year','treasury.facts.MonthEntry','year','Year','integer',1,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.Payment.amount','treasury.facts.Payment','amount','Amount','decimal',1,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('treasury.facts.Requirement.code','treasury.facts.Requirement','code','Code','string',1,'lookup','requirementtype:lookup','code','title',NULL,NULL,NULL,'string',NULL),('treasury.facts.Requirement.completed','treasury.facts.Requirement','completed','Completed','boolean',2,'boolean',NULL,NULL,NULL,NULL,NULL,NULL,'boolean',NULL),('treasury.facts.VarDate.date','treasury.facts.VarDate','date','Date','date',1,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('treasury.facts.VarDate.day','treasury.facts.VarDate','day','Day','integer',4,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.VarDate.month','treasury.facts.VarDate','month','Month','integer',3,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.VarDate.qtr','treasury.facts.VarDate','qtr','Qtr','integer',5,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.VarDate.tag','treasury.facts.VarDate','tag','Tag','string',6,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.VarDate.year','treasury.facts.VarDate','year','Year','integer',2,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.VarDecimal.tag','treasury.facts.VarDecimal','tag','Tag','string',2,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.VarDecimal.value','treasury.facts.VarDecimal','value','Value','decimal',1,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('treasury.facts.VarInteger.tag','treasury.facts.VarInteger','tag','Tag','string',2,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.VarInteger.value','treasury.facts.VarInteger','value','Value','integer',1,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.VarString.tag','treasury.facts.VarString','tag','Tag','string',2,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.VarString.value','treasury.facts.VarString','value','Value','string',1,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('waterworks.facts.Sector.objid','waterworks.facts.Sector','objid','ID','string',1,'lookup','waterworks_sector:lookup','objid','code',NULL,NULL,NULL,'string',NULL),('waterworks.facts.Stubout.barangay','waterworks.facts.Stubout','barangay','Barangay','string',3,'lookup','barangay:lookup','objid','name',NULL,NULL,NULL,'string',NULL),('waterworks.facts.Stubout.sector','waterworks.facts.Stubout','sector','Sector','string',2,'lookup','waterworks_sector:lookup','objid','code',NULL,NULL,NULL,'string',NULL),('waterworks.facts.Stubout.zone','waterworks.facts.Stubout','zone','Zone','string',1,'lookup','waterworks_sector_zone:lookup','objid','code',NULL,NULL,NULL,'string',NULL),('waterworks.facts.WaterAccount.barangay','waterworks.facts.WaterAccount','barangay','Barangay','string',3,'lookup','barangay:lookup','objid','name',NULL,NULL,NULL,'string',NULL),('waterworks.facts.WaterAccount.classification','waterworks.facts.WaterAccount','classification','Classification','string',1,'lookup','waterworks_classification:lookup','objid','description',NULL,NULL,NULL,'string',NULL),('waterworks.facts.WaterAccount.metered','waterworks.facts.WaterAccount','metered','Metered','boolean',6,'boolean',NULL,NULL,NULL,NULL,NULL,NULL,'boolean',NULL),('waterworks.facts.WaterAccount.metersize','waterworks.facts.WaterAccount','metersize','Meter Size','string',2,'lookup','waterworks_metersize:lookup','objid','title',NULL,NULL,NULL,'string',NULL),('waterworks.facts.WaterAccount.state','waterworks.facts.WaterAccount','state','State','string',5,'lov',NULL,NULL,NULL,NULL,NULL,NULL,'string','WATERWORKS_ACCOUNT_STATE'),('waterworks.facts.WaterAccount.units','waterworks.facts.WaterAccount','units','No. of Units','integer',4,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('waterworks.facts.WaterBillItem.account','waterworks.facts.WaterBillItem','account','Account','string',1,'lookup','revenueitem:lookup','objid','title',NULL,NULL,NULL,'string',NULL),('waterworks.facts.WaterBillItem.amount','waterworks.facts.WaterBillItem','amount','Amount','decimal',3,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('waterworks.facts.WaterBillItem.amtpaid','waterworks.facts.WaterBillItem','amtpaid','Amt Paid','decimal',17,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('waterworks.facts.WaterBillItem.billcode','waterworks.facts.WaterBillItem','billcode','Bill code','string',2,'lookup','waterworks_itemaccount:lookup','objid','title',NULL,NULL,NULL,'string',NULL),('waterworks.facts.WaterBillItem.duedate','waterworks.facts.WaterBillItem','duedate','Due Date','date',7,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('waterworks.facts.WaterBillItem.fromdate','waterworks.facts.WaterBillItem','fromdate','From Date','date',13,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('waterworks.facts.WaterBillItem.frommonth','waterworks.facts.WaterBillItem','frommonth','From Month','integer',10,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('waterworks.facts.WaterBillItem.fromyear','waterworks.facts.WaterBillItem','fromyear','From Year','integer',9,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('waterworks.facts.WaterBillItem.month','waterworks.facts.WaterBillItem','month','Month','integer',6,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('waterworks.facts.WaterBillItem.partialunpaid','waterworks.facts.WaterBillItem','partialunpaid','Partial Unpaid','decimal',18,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('waterworks.facts.WaterBillItem.principal','waterworks.facts.WaterBillItem','principal','Principal','decimal',16,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('waterworks.facts.WaterBillItem.remarks','waterworks.facts.WaterBillItem','remarks','Remarks','string',15,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('waterworks.facts.WaterBillItem.todate','waterworks.facts.WaterBillItem','todate','To Date','date',14,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('waterworks.facts.WaterBillItem.tomonth','waterworks.facts.WaterBillItem','tomonth','To Month','integer',12,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('waterworks.facts.WaterBillItem.toyear','waterworks.facts.WaterBillItem','toyear','To Year','integer',11,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('waterworks.facts.WaterBillItem.txntype','waterworks.facts.WaterBillItem','txntype','Txn Type','string',4,'lov',NULL,NULL,NULL,NULL,NULL,NULL,'string','WATERWORKS_BILLING_GROUP_OPTION'),('waterworks.facts.WaterBillItem.volume','waterworks.facts.WaterBillItem','volume','Volume','integer',8,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('waterworks.facts.WaterBillItem.year','waterworks.facts.WaterBillItem','year','Year','integer',5,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('waterworks.facts.WaterBlockSchedule.id','waterworks.facts.WaterBlockSchedule','id','ID','string',1,'lookup','waterworks_block_schedule:lookup','objid','objid',NULL,NULL,NULL,'string',NULL),('waterworks.facts.WaterConsumption.amount','waterworks.facts.WaterConsumption','amount','Amount','decimal',4,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('waterworks.facts.WaterConsumption.amtdue','waterworks.facts.WaterConsumption','amtdue','Amount Due','decimal',5,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('waterworks.facts.WaterConsumption.disconnectiondate','waterworks.facts.WaterConsumption','disconnectiondate','Disconnection Date','date',8,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('waterworks.facts.WaterConsumption.duedate','waterworks.facts.WaterConsumption','duedate','Due Date','date',6,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('waterworks.facts.WaterConsumption.month','waterworks.facts.WaterConsumption','month','Month','integer',3,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('waterworks.facts.WaterConsumption.refid','waterworks.facts.WaterConsumption','refid','Ref Id','string',9,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('waterworks.facts.WaterConsumption.status','waterworks.facts.WaterConsumption','status','Status','string',7,'lov',NULL,NULL,NULL,NULL,NULL,NULL,'string','WATERWORKS_BILLING_STATUS'),('waterworks.facts.WaterConsumption.volume','waterworks.facts.WaterConsumption','volume','Volume','integer',1,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('waterworks.facts.WaterConsumption.year','waterworks.facts.WaterConsumption','year','Year','integer',2,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('waterworks.facts.WaterInstallment.amount','waterworks.facts.WaterInstallment','amount','Amount','decimal',3,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('waterworks.facts.WaterInstallment.month','waterworks.facts.WaterInstallment','month','Month','integer',2,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('waterworks.facts.WaterInstallment.refid','waterworks.facts.WaterInstallment','refid','RefId','string',4,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('waterworks.facts.WaterInstallment.txntype','waterworks.facts.WaterInstallment','txntype','Txn Type','string',5,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('waterworks.facts.WaterInstallment.year','waterworks.facts.WaterInstallment','year','Year','integer',1,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('waterworks.facts.WaterMeter.capacity','waterworks.facts.WaterMeter','capacity','Capacity','string',3,'var',NULL,NULL,NULL,NULL,NULL,NULL,'WATERWORKS_METER_CAPACITY',NULL),('waterworks.facts.WaterMeter.sizeid','waterworks.facts.WaterMeter','sizeid','Size','string',1,'lookup','waterworks_metersize:lookup','objid','title',NULL,NULL,NULL,'string',NULL),('waterworks.facts.WaterMeter.state','waterworks.facts.WaterMeter','state','Status','string',2,'var',NULL,NULL,NULL,NULL,NULL,NULL,'WATERWORKS_METER_STATE',NULL),('waterworks.facts.WaterworksAttribute.name','waterworks.facts.WaterworksAttribute','name','Name','string',1,'lookup','waterworks_attribute:lookup','name','title',NULL,NULL,NULL,'string',NULL),('waterworks.facts.Zone.barangayid','waterworks.facts.Zone','barangayid','Barangay','string',3,'lookup','barangay:lookup','objid','name',NULL,NULL,NULL,'string',NULL),('waterworks.facts.Zone.objid','waterworks.facts.Zone','objid','Zone','string',1,'lookup','waterworks_zone:lookup','objid','code',NULL,NULL,NULL,'string',NULL),('waterworks.facts.Zone.sectorid','waterworks.facts.Zone','sectorid','Sector','string',2,'lookup','waterworks_sector:lookup','objid','code',NULL,NULL,NULL,'string',NULL);
/*!40000 ALTER TABLE `sys_rule_fact_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_rulegroup`
--

DROP TABLE IF EXISTS `sys_rulegroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rulegroup` (
  `name` varchar(50) NOT NULL,
  `ruleset` varchar(50) NOT NULL,
  `title` varchar(160) NULL,
  `sortorder` int(11) NULL,
  PRIMARY KEY (`name`,`ruleset`),
  KEY `ix_ruleset` (`ruleset`),
  CONSTRAINT `fk_sys_rulegroup_ruleset` FOREIGN KEY (`ruleset`) REFERENCES `sys_ruleset` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_rulegroup`
--

LOCK TABLES `sys_rulegroup` WRITE;
/*!40000 ALTER TABLE `sys_rulegroup` DISABLE KEYS */;
INSERT INTO `sys_rulegroup` VALUES ('account-mapping','waterworksbilling','Account Mapping',8),('billing','waterworksbilling','Billing Initial',1),('build-schedule','waterworksbilling','Build Schedule',0),('computefee','waterworksapplication','Compute Fee',1),('computefee','waterworksbilling','Compute Fee',2),('discount','waterworksbilling','Compute Discount',3),('initial','waterworksapplication','Initial',0),('initial','waterworksbilling','Initial',0),('initial','waterworksbillingschedule','Initial',0),('initial','waterworkscomputation','Initial',1),('interest','waterworksbilling','Compute Interest',5),('payment','waterworksbilling','Payment',6),('post-initial','waterworksbillingschedule','Post Initial',1),('pre-computation','waterworkscomputation','Pre-Computation',0),('requirement','waterworksapplication','Requirements',5),('summary','waterworksapplication','Summary',5),('summary','waterworksbilling','Summary',7),('surcharge','waterworksbilling','Compute Surcharge',4);
/*!40000 ALTER TABLE `sys_rulegroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_ruleset`
--

DROP TABLE IF EXISTS `sys_ruleset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_ruleset` (
  `name` varchar(50) NOT NULL,
  `title` varchar(160) NULL,
  `packagename` varchar(50) NULL,
  `domain` varchar(50) NULL,
  `role` varchar(50) NULL,
  `permission` varchar(50) NULL,
  PRIMARY KEY (`name`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_ruleset`
--

LOCK TABLES `sys_ruleset` WRITE;
/*!40000 ALTER TABLE `sys_ruleset` DISABLE KEYS */;
INSERT INTO `sys_ruleset` VALUES ('waterworksapplication','Water Works Application','waterworksapplication','WATERWORKS','RULE_AUTHOR',NULL),('waterworksbilling','Water Works Billing','waterworksbilling','WATERWORKS','RULE_AUTHOR',NULL),('waterworksbillingschedule','Water Works Billing Schedule','waterworksbillingschedule','WATERWORKS','RULE_AUTHOR',NULL),('waterworkscomputation','Water Works Computation','waterworkscomputation','WATERWORKS','RULE_AUTHOR',NULL);
/*!40000 ALTER TABLE `sys_ruleset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_ruleset_actiondef`
--

DROP TABLE IF EXISTS `sys_ruleset_actiondef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_ruleset_actiondef` (
  `ruleset` varchar(50) NOT NULL,
  `actiondef` varchar(50) NOT NULL,
  PRIMARY KEY (`ruleset`,`actiondef`),
  KEY `ix_actiondef` (`actiondef`),
  CONSTRAINT `fk_sys_ruleset_actiondef_actiondef` FOREIGN KEY (`actiondef`) REFERENCES `sys_rule_actiondef` (`objid`),
  CONSTRAINT `fk_sys_ruleset_actiondef_ruleset` FOREIGN KEY (`ruleset`) REFERENCES `sys_ruleset` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_ruleset_actiondef`
--

LOCK TABLES `sys_ruleset_actiondef` WRITE;
/*!40000 ALTER TABLE `sys_ruleset_actiondef` DISABLE KEYS */;
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworksapplication','enterprise.actions.AddRequirement'),('waterworksbilling','enterprise.actions.PrintTest'),('waterworkscomputation','enterprise.actions.ThrowException'),('waterworksbilling','treasury.actions.AddCreditBillItem'),('waterworksbilling','treasury.actions.AddDiscountItem'),('waterworksbilling','treasury.actions.AddInterestItem'),('waterworksbilling','treasury.actions.AddSurchargeItem'),('waterworksbilling','treasury.actions.AddVarDate'),('waterworksbillingschedule','treasury.actions.AddVarDate'),('waterworksbillingschedule','treasury.actions.AddVarDecimal'),('waterworksbillingschedule','treasury.actions.AddVarInteger'),('waterworkscomputation','treasury.actions.AddVarInteger'),('waterworksbillingschedule','treasury.actions.AddVarString'),('waterworksbilling','treasury.actions.ApplyPayment'),('waterworksapplication','treasury.actions.ComputeFee'),('waterworksbilling','treasury.actions.RemoveDiscountItem'),('waterworksapplication','treasury.actions.SetBillItemAccount'),('waterworksbilling','treasury.actions.SetBillItemAccount'),('waterworksbilling','treasury.actions.SetBillItemProperty'),('waterworksbilling','waterworks.actions.AddRepeatingFee'),('waterworksbilling','waterworks.actions.AddWaterBillItem'),('waterworkscomputation','waterworks.actions.ComputeConsumption'),('waterworksbilling','waterworks.actions.SetBillingPeriod'),('waterworksbilling','waterworks.actions.SetWaterConsumptionProperty'),('waterworkscomputation','waterworks.actions.SetWaterConsumptionProperty');
/*!40000 ALTER TABLE `sys_ruleset_actiondef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_ruleset_fact`
--

DROP TABLE IF EXISTS `sys_ruleset_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_ruleset_fact` (
  `ruleset` varchar(50) NOT NULL,
  `rulefact` varchar(50) NOT NULL,
  PRIMARY KEY (`ruleset`,`rulefact`),
  KEY `ix_rulefact` (`rulefact`),
  CONSTRAINT `fk_sys_ruleset_fact_rulefact` FOREIGN KEY (`rulefact`) REFERENCES `sys_rule_fact` (`objid`),
  CONSTRAINT `fk_sys_ruleset_fact_ruleset` FOREIGN KEY (`ruleset`) REFERENCES `sys_ruleset` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_ruleset_fact`
--

LOCK TABLES `sys_ruleset_fact` WRITE;
/*!40000 ALTER TABLE `sys_ruleset_fact` DISABLE KEYS */;
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbilling','com.rameses.rules.common.CurrentDate'),('waterworksbilling','treasury.facts.BillDate'),('waterworksbilling','treasury.facts.BillingPeriod'),('waterworksbillingschedule','treasury.facts.BillingPeriod'),('waterworksapplication','treasury.facts.BillItem'),('waterworksbilling','treasury.facts.BillItem'),('waterworksbilling','treasury.facts.CashReceipt'),('waterworksbilling','treasury.facts.CreditBalanceBillItem'),('waterworksbilling','treasury.facts.CreditBillItem'),('waterworksbilling','treasury.facts.DueDate'),('waterworksbilling','treasury.facts.ExcessPayment'),('waterworksbilling','treasury.facts.HolidayFact'),('waterworksbillingschedule','treasury.facts.HolidayFact'),('waterworksbilling','treasury.facts.MonthEntry'),('waterworksbilling','treasury.facts.Payment'),('waterworksapplication','treasury.facts.Requirement'),('waterworksbilling','treasury.facts.VarDate'),('waterworksbillingschedule','treasury.facts.VarDate'),('waterworksbillingschedule','treasury.facts.VarDecimal'),('waterworksbillingschedule','treasury.facts.VarInteger'),('waterworkscomputation','treasury.facts.VarInteger'),('waterworksbillingschedule','treasury.facts.VarString'),('waterworksbilling','waterworks.facts.Sector'),('waterworksbilling','waterworks.facts.Stubout'),('waterworksbilling','waterworks.facts.WaterAccount'),('waterworkscomputation','waterworks.facts.WaterAccount'),('waterworksbilling','waterworks.facts.WaterBillItem'),('waterworksbilling','waterworks.facts.WaterBlockSchedule'),('waterworksbillingschedule','waterworks.facts.WaterBlockSchedule'),('waterworksbilling','waterworks.facts.WaterConsumption'),('waterworkscomputation','waterworks.facts.WaterConsumption'),('waterworksbilling','waterworks.facts.WaterInstallment'),('waterworkscomputation','waterworks.facts.WaterMeter'),('waterworksbilling','waterworks.facts.WaterworksAttribute'),('waterworkscomputation','waterworks.facts.WaterworksAttribute'),('waterworksbilling','waterworks.facts.Zone');
/*!40000 ALTER TABLE `sys_ruleset_fact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_sequence`
--

DROP TABLE IF EXISTS `sys_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_sequence` (
  `objid` varchar(100) NOT NULL,
  `nextSeries` int(11) NULL,
  PRIMARY KEY (`objid`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_sequence`
--

LOCK TABLES `sys_sequence` WRITE;
/*!40000 ALTER TABLE `sys_sequence` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_usergroup`
--

DROP TABLE IF EXISTS `sys_usergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_usergroup` (
  `objid` varchar(50) NOT NULL,
  `title` varchar(255) NULL,
  `domain` varchar(25) NULL,
  `userclass` varchar(25) NULL,
  `orgclass` varchar(50) NULL,
  `role` varchar(50) NULL,
  PRIMARY KEY (`objid`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_usergroup`
--

LOCK TABLES `sys_usergroup` WRITE;
/*!40000 ALTER TABLE `sys_usergroup` DISABLE KEYS */;
INSERT INTO `sys_usergroup` VALUES ('WATERWORKS.MASTER','WATERWORKS MASTER','WATERWORKS','usergroup',NULL,'MASTER'),('WATERWORKS.READER','WATERWORKS READER','WATERWORKS','usergroup',NULL,'READER'),('WATERWORKS.REPORT','WATERWORKS REPORT','WATERWORKS','usergroup',NULL,'REPORT'),('WATERWORKS.RULE_AUTHOR','WATERWORKS RULE_AUTHOR','WATERWORKS','usergroup',NULL,'RULE_AUTHOR'),('WATERWORKS.SHARED','WATERWORKS SHARED','WATERWORKS','usergroup',NULL,'SHARED');
/*!40000 ALTER TABLE `sys_usergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_var`
--

DROP TABLE IF EXISTS `sys_var`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_var` (
  `name` varchar(50) NOT NULL,
  `value` longtext,
  `description` varchar(255) NULL,
  `datatype` varchar(15) NULL,
  `category` varchar(50) NULL,
  PRIMARY KEY (`name`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_var`
--

LOCK TABLES `sys_var` WRITE;
/*!40000 ALTER TABLE `sys_var` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_var` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_wf`
--

DROP TABLE IF EXISTS `sys_wf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_wf` (
  `name` varchar(50) NOT NULL,
  `title` varchar(100) NULL,
  `domain` varchar(50) NULL,
  PRIMARY KEY (`name`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_wf`
--

LOCK TABLES `sys_wf` WRITE;
/*!40000 ALTER TABLE `sys_wf` DISABLE KEYS */;
INSERT INTO `sys_wf` VALUES ('waterworks_batch_billing','Waterworks Batch Billing','WATERWORKS');
/*!40000 ALTER TABLE `sys_wf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_wf_node`
--

DROP TABLE IF EXISTS `sys_wf_node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_wf_node` (
  `name` varchar(50) NOT NULL,
  `processname` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(100) NULL,
  `nodetype` varchar(10) NULL,
  `idx` int(11) NULL,
  `salience` int(11) NULL,
  `domain` varchar(50) NULL,
  `role` varchar(255) NULL,
  `ui` text,
  `properties` text,
  `tracktime` int(11) NULL,
  PRIMARY KEY (`name`,`processname`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_wf_node`
--

LOCK TABLES `sys_wf_node` WRITE;
/*!40000 ALTER TABLE `sys_wf_node` DISABLE KEYS */;
INSERT INTO `sys_wf_node` VALUES ('approved','waterworks_batch_billing','Approved','state',7,0,'WATERWORKS',NULL,'[fillColor:\"#c0c0c0\",type:\"state\",pos:[748,103],size:[100,50]]','[show_reading:true]',NULL),('draft','waterworks_batch_billing','Draft','state',2,0,'WATERWORKS',NULL,'[fillColor:\"#c0c0c0\",type:\"state\",pos:[123,170],size:[109,53]]','[:]',NULL),('end','waterworks_batch_billing','Completed','end',8,0,'WATERWORKS',NULL,'[fillColor:\"#ff0000\",type:\"end\",pos:[923,260],size:[32,32]]','[show_reading:true]',NULL),('for-approval','waterworks_batch_billing','For Approval','state',6,0,'WATERWORKS',NULL,'[fillColor:\"#c0c0c0\",type:\"state\",pos:[661,222],size:[100,50]]','[show_reading:true]',NULL),('for-reading','waterworks_batch_billing','For Reading','state',5,0,'WATERWORKS',NULL,'[fillColor:\"#c0c0c0\",type:\"state\",pos:[576,53],size:[100,50]]','[show_reading:true]',NULL),('for-review','waterworks_batch_billing','For Review','state',4,0,'WATERWORKS',NULL,'[fillColor:\"#c0c0c0\",type:\"state\",pos:[438,100],size:[100,50]]','[:]',NULL),('processing','waterworks_batch_billing','Processing','state',3,0,'WATERWORKS',NULL,'[fillColor:\"#c0c0c0\",type:\"state\",pos:[249,76],size:[100,50]]','[:]',NULL),('start','waterworks_batch_billing','Start','start',1,0,'WATERWORKS',NULL,'[fillColor:\"#00ff00\",type:\"start\",pos:[72,60],size:[32,32]]','[:]',NULL);
/*!40000 ALTER TABLE `sys_wf_node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_wf_transition`
--

DROP TABLE IF EXISTS `sys_wf_transition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_wf_transition` (
  `parentid` varchar(50) NOT NULL DEFAULT '',
  `processname` varchar(50) NOT NULL DEFAULT '',
  `action` varchar(50) NOT NULL,
  `to` varchar(50) NOT NULL,
  `idx` int(11) NULL,
  `eval` mediumtext,
  `properties` varchar(255) NULL,
  `permission` varchar(255) NULL,
  `caption` varchar(255) NULL,
  `ui` text,
  PRIMARY KEY (`parentid`,`processname`,`to`,`action`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_wf_transition`
--

LOCK TABLES `sys_wf_transition` WRITE;
/*!40000 ALTER TABLE `sys_wf_transition` DISABLE KEYS */;
INSERT INTO `sys_wf_transition` VALUES ('approved','waterworks_batch_billing','post','end',0,NULL,'[showConfirm:true,confirmMessage:\"You are about to post this to the ledger. Proceed?\"]',NULL,'Post','[points:[827,148,934,266],type:\"arrow\",pos:[827,148],size:[107,118]]'),('approved','waterworks_batch_billing','revert','for-reading',1,NULL,'[:]',NULL,'Revert','[points:[748,103,676,77],type:\"arrow\",pos:[676,77],size:[72,26]]'),('draft','waterworks_batch_billing','submit','processing',0,NULL,'[autostart:true]',NULL,'Submit for Processing','[points:[210,170,268,125],type:\"arrow\",pos:[210,125],size:[58,45]]'),('for-approval','waterworks_batch_billing','approve','approved',0,NULL,'[:]',NULL,'Approve','[points:[712,224,773,149],type:\"arrow\",pos:[712,149],size:[61,75]]'),('for-approval','waterworks_batch_billing','revert','for-reading',1,NULL,'[:]',NULL,'Revert','[points:[661,222,602,104],type:\"arrow\",pos:[602,104],size:[59,118]]'),('for-reading','waterworks_batch_billing','submit','for-approval',0,NULL,'[:]',NULL,'Submit for Approval','[points:[635,102,692,220],type:\"arrow\",pos:[635,102],size:[57,118]]'),('for-review','waterworks_batch_billing','revert','draft',1,NULL,'[:]',NULL,'Revert','[points:[492,150,505,213,377,274,232,217],type:\"arrow\",pos:[232,150],size:[273,124]]'),('for-review','waterworks_batch_billing','submit','for-reading',0,NULL,'[showPrompt:true]',NULL,'Submit for Reading','[points:[538,107,576,95],type:\"arrow\",pos:[538,95],size:[38,12]]'),('processing','waterworks_batch_billing','submit','for-review',0,NULL,'[:]',NULL,'Submit for Review','[points:[311,126,313,147,366,181,442,133],type:\"arrow\",pos:[311,126],size:[131,55]]'),('start','waterworks_batch_billing','submit','draft',0,NULL,'[autostart:true]',NULL,NULL,'[points:[104,80,160,170],type:\"arrow\",pos:[104,80],size:[56,90]]');
/*!40000 ALTER TABLE `sys_wf_transition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vw_report_billing_summary`
--

DROP TABLE IF EXISTS `vw_report_billing_summary`;
/*!50001 DROP VIEW IF EXISTS `vw_report_billing_summary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_report_billing_summary` (
 `year` tinyint NOT NULL,
  `month` tinyint NOT NULL,
  `barangay_objid` tinyint NOT NULL,
  `barangay_name` tinyint NOT NULL,
  `zone_objid` tinyint NOT NULL,
  `zone_code` tinyint NOT NULL,
  `zone_title` tinyint NOT NULL,
  `res_metered` tinyint NOT NULL,
  `res_meteredvol` tinyint NOT NULL,
  `res_meteredamt` tinyint NOT NULL,
  `res_defective` tinyint NOT NULL,
  `res_defectivevol` tinyint NOT NULL,
  `res_defectiveamt` tinyint NOT NULL,
  `res_unmetered` tinyint NOT NULL,
  `res_unmeteredvol` tinyint NOT NULL,
  `res_unmeteredamt` tinyint NOT NULL,
  `com_metered` tinyint NOT NULL,
  `com_meteredvol` tinyint NOT NULL,
  `com_meteredamt` tinyint NOT NULL,
  `com_defective` tinyint NOT NULL,
  `com_defectivevol` tinyint NOT NULL,
  `com_defectiveamt` tinyint NOT NULL,
  `com_unmetered` tinyint NOT NULL,
  `com_unmeteredvol` tinyint NOT NULL,
  `com_unmeteredamt` tinyint NOT NULL,
  `ind_metered` tinyint NOT NULL,
  `ind_meteredvol` tinyint NOT NULL,
  `ind_meteredamt` tinyint NOT NULL,
  `ind_defective` tinyint NOT NULL,
  `ind_defectivevol` tinyint NOT NULL,
  `ind_defectiveamt` tinyint NOT NULL,
  `ind_unmetered` tinyint NOT NULL,
  `ind_unmeteredvol` tinyint NOT NULL,
  `ind_unmeteredamt` tinyint NOT NULL,
  `gov_metered` tinyint NOT NULL,
  `gov_meteredvol` tinyint NOT NULL,
  `gov_meteredamt` tinyint NOT NULL,
  `gov_defective` tinyint NOT NULL,
  `gov_defectivevol` tinyint NOT NULL,
  `gov_defectiveamt` tinyint NOT NULL,
  `gov_unmetered` tinyint NOT NULL,
  `gov_unmeteredvol` tinyint NOT NULL,
  `gov_unmeteredamt` tinyint NOT NULL,
  `bulk_metered` tinyint NOT NULL,
  `bulk_meteredvol` tinyint NOT NULL,
  `bulk_meteredamt` tinyint NOT NULL,
  `bulk_defective` tinyint NOT NULL,
  `bulk_defectivevol` tinyint NOT NULL,
  `bulk_defectiveamt` tinyint NOT NULL,
  `bulk_unmetered` tinyint NOT NULL,
  `bulk_unmeteredvol` tinyint NOT NULL,
  `bulk_unmeteredamt` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_waterworks_account`
--

DROP TABLE IF EXISTS `vw_waterworks_account`;
/*!50001 DROP VIEW IF EXISTS `vw_waterworks_account`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_waterworks_account` (
 `objid` tinyint NOT NULL,
  `acctno` tinyint NOT NULL,
  `acctname` tinyint NOT NULL,
  `address_text` tinyint NOT NULL,
  `classificationid` tinyint NOT NULL,
  `classification` tinyint NOT NULL,
  `sectorid` tinyint NOT NULL,
  `zoneid` tinyint NOT NULL,
  `zone_code` tinyint NOT NULL,
  `indexno` tinyint NOT NULL,
  `stuboutnode_stubout_code` tinyint NOT NULL,
  `meterid` tinyint NOT NULL,
  `meter_serialno` tinyint NOT NULL,
  `meter_branch` tinyint NOT NULL,
  `meter_capacity` tinyint NOT NULL,
  `meter_size_title` tinyint NOT NULL,
  `meter_state` tinyint NOT NULL,
  `meter_lastreading` tinyint NOT NULL,
  `meter_lastreadingdate` tinyint NOT NULL,
  `meterstatus` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_waterworks_billing`
--

DROP TABLE IF EXISTS `vw_waterworks_billing`;
/*!50001 DROP VIEW IF EXISTS `vw_waterworks_billing`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_waterworks_billing` (
 `objid` tinyint NOT NULL,
  `batchid` tinyint NOT NULL,
  `acctid` tinyint NOT NULL,
  `billno` tinyint NOT NULL,
  `consumptionid` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `surcharge` tinyint NOT NULL,
  `interest` tinyint NOT NULL,
  `otherfees` tinyint NOT NULL,
  `credits` tinyint NOT NULL,
  `arrears` tinyint NOT NULL,
  `averageconsumption` tinyint NOT NULL,
  `billed` tinyint NOT NULL,
  `unpaidmonths` tinyint NOT NULL,
  `refbillno` tinyint NOT NULL,
  `printed` tinyint NOT NULL,
  `acctno` tinyint NOT NULL,
  `acctname` tinyint NOT NULL,
  `acctstate` tinyint NOT NULL,
  `addresstext` tinyint NOT NULL,
  `classificationid` tinyint NOT NULL,
  `meterstate` tinyint NOT NULL,
  `prevreading` tinyint NOT NULL,
  `reading` tinyint NOT NULL,
  `volume` tinyint NOT NULL,
  `amount` tinyint NOT NULL,
  `amtpaid` tinyint NOT NULL,
  `rate` tinyint NOT NULL,
  `hold` tinyint NOT NULL,
  `subtotal` tinyint NOT NULL,
  `meterid` tinyint NOT NULL,
  `meter_objid` tinyint NOT NULL,
  `meter_capacity` tinyint NOT NULL,
  `meter_size` tinyint NOT NULL,
  `fromperiod` tinyint NOT NULL,
  `toperiod` tinyint NOT NULL,
  `readingdate` tinyint NOT NULL,
  `discdate` tinyint NOT NULL,
  `duedate` tinyint NOT NULL,
  `zone_objid` tinyint NOT NULL,
  `zone_code` tinyint NOT NULL,
  `indexno` tinyint NOT NULL,
  `periodindexno` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_waterworks_billing_schedule`
--

DROP TABLE IF EXISTS `vw_waterworks_billing_schedule`;
/*!50001 DROP VIEW IF EXISTS `vw_waterworks_billing_schedule`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_waterworks_billing_schedule` (
 `objid` tinyint NOT NULL,
  `scheduleid` tinyint NOT NULL,
  `year` tinyint NOT NULL,
  `month` tinyint NOT NULL,
  `fromperiod` tinyint NOT NULL,
  `toperiod` tinyint NOT NULL,
  `readingdate` tinyint NOT NULL,
  `readingduedate` tinyint NOT NULL,
  `billingduedate` tinyint NOT NULL,
  `discdate` tinyint NOT NULL,
  `duedate` tinyint NOT NULL,
  `periodindexno` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_waterworks_consumption`
--

DROP TABLE IF EXISTS `vw_waterworks_consumption`;
/*!50001 DROP VIEW IF EXISTS `vw_waterworks_consumption`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_waterworks_consumption` (
 `objid` tinyint NOT NULL,
  `acctid` tinyint NOT NULL,
  `txnmode` tinyint NOT NULL,
  `prevreading` tinyint NOT NULL,
  `reading` tinyint NOT NULL,
  `volume` tinyint NOT NULL,
  `rate` tinyint NOT NULL,
  `amount` tinyint NOT NULL,
  `amtpaid` tinyint NOT NULL,
  `batchid` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `meterid` tinyint NOT NULL,
  `scheduleid` tinyint NOT NULL,
  `hold` tinyint NOT NULL,
  `discount` tinyint NOT NULL,
  `balance` tinyint NOT NULL,
  `year` tinyint NOT NULL,
  `month` tinyint NOT NULL,
  `fromperiod` tinyint NOT NULL,
  `toperiod` tinyint NOT NULL,
  `readingdate` tinyint NOT NULL,
  `readingduedate` tinyint NOT NULL,
  `billingduedate` tinyint NOT NULL,
  `discdate` tinyint NOT NULL,
  `duedate` tinyint NOT NULL,
  `indexno` tinyint NOT NULL,
  `acctno` tinyint NOT NULL,
  `acctname` tinyint NOT NULL,
  `periodindexno` tinyint NOT NULL,
  `batch_objid` tinyint NOT NULL,
  `batch_readingdate` tinyint NOT NULL,
  `bill_objid` tinyint NOT NULL,
  `bill_otherfees` tinyint NOT NULL,
  `bill_arrears` tinyint NOT NULL,
  `bill_credits` tinyint NOT NULL,
  `bill_surcharge` tinyint NOT NULL,
  `bill_interest` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_waterworks_stubout_node`
--

DROP TABLE IF EXISTS `vw_waterworks_stubout_node`;
/*!50001 DROP VIEW IF EXISTS `vw_waterworks_stubout_node`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_waterworks_stubout_node` (
 `objid` tinyint NOT NULL,
  `indexno` tinyint NOT NULL,
  `stubout_objid` tinyint NOT NULL,
  `stubout_code` tinyint NOT NULL,
  `zone_objid` tinyint NOT NULL,
  `zone_code` tinyint NOT NULL,
  `sector_objid` tinyint NOT NULL,
  `sector_code` tinyint NOT NULL,
  `barangay_objid` tinyint NOT NULL,
  `barangay_name` tinyint NOT NULL,
  `schedule_objid` tinyint NOT NULL,
  `acctid` tinyint NOT NULL,
  `acctno` tinyint NOT NULL,
  `acctname` tinyint NOT NULL,
  `currentacctid` tinyint NOT NULL,
  `stuboutid` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `waterworks_account`
--

DROP TABLE IF EXISTS `waterworks_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waterworks_account` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(50) NULL,
  `dtstarted` date NULL,
  `acctno` varchar(50) NULL,
  `applicationid` varchar(50) NULL,
  `acctname` varchar(255) NULL,
  `owner_objid` varchar(50) NULL,
  `owner_name` varchar(255) NULL,
  `address_type` varchar(50) NULL,
  `address_barangay_objid` varchar(50) NULL,
  `address_barangay_name` varchar(50) NULL,
  `address_text` varchar(255) NULL,
  `address_city` varchar(50) NULL,
  `address_province` varchar(50) NULL,
  `address_municipality` varchar(50) NULL,
  `address_unitno` varchar(50) NULL,
  `address_street` varchar(50) NULL,
  `address_subdivision` varchar(50) NULL,
  `address_bldgno` varchar(50) NULL,
  `address_bldgname` varchar(50) NULL,
  `address_pin` varchar(50) NULL,
  `meterid` varchar(50) NULL,
  `classificationid` varchar(50) NULL,
  `lastdatepaid` datetime NULL,
  `stuboutnodeid` varchar(50) NULL,
  `lastbilldate` date NULL,
  `units` int(11) NULL,
  `remarks` text,
  `ukey` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`objid`),
  UNIQUE KEY `fk_waterworks_account_meter` (`meterid`),
  UNIQUE KEY `uix_acctno` (`acctno`,`ukey`),
  KEY `fk_waterworks_account_classification` (`classificationid`),
  KEY `ix_acctno` (`acctno`),
  KEY `ix_applicationid` (`applicationid`),
  KEY `ix_dtstarted` (`dtstarted`),
  KEY `ix_acctname` (`acctname`),
  KEY `ix_owner_objid` (`owner_objid`),
  KEY `ix_meterid` (`meterid`),
  KEY `ix_stuboutnodeid` (`stuboutnodeid`),
  KEY `ix_lastbilldate` (`lastbilldate`),
  CONSTRAINT `fk_waterworks_account_applicationid` FOREIGN KEY (`applicationid`) REFERENCES `waterworks_application` (`objid`),
  CONSTRAINT `fk_waterworks_account_classificationid` FOREIGN KEY (`classificationid`) REFERENCES `waterworks_classification` (`objid`),
  CONSTRAINT `fk_waterworks_account_meterid` FOREIGN KEY (`meterid`) REFERENCES `waterworks_meter` (`objid`),
  CONSTRAINT `fk_waterworks_account_stuboutnodeid` FOREIGN KEY (`stuboutnodeid`) REFERENCES `waterworks_stubout_node` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waterworks_account`
--

LOCK TABLES `waterworks_account` WRITE;
/*!40000 ALTER TABLE `waterworks_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `waterworks_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waterworks_account_attribute`
--

DROP TABLE IF EXISTS `waterworks_account_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waterworks_account_attribute` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) NULL,
  `attribute_name` varchar(50) NULL,
  PRIMARY KEY (`objid`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waterworks_account_attribute`
--

LOCK TABLES `waterworks_account_attribute` WRITE;
/*!40000 ALTER TABLE `waterworks_account_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `waterworks_account_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waterworks_application`
--

DROP TABLE IF EXISTS `waterworks_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waterworks_application` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(50) NULL,
  `dtfiled` date NULL,
  `appno` varchar(50) NULL,
  `acctid` varchar(50) NULL,
  `classificationid` varchar(50) NULL,
  `acctname` varchar(50) NULL,
  `owner_objid` varchar(50) NULL,
  `owner_name` varchar(255) NULL,
  `address_type` varchar(50) NULL,
  `address_barangay_objid` varchar(50) NULL,
  `address_barangay_name` varchar(50) NULL,
  `address_text` varchar(50) NULL,
  `address_city` varchar(50) NULL,
  `address_province` varchar(50) NULL,
  `address_municipality` varchar(50) NULL,
  `address_unitno` varchar(50) NULL,
  `address_street` varchar(50) NULL,
  `address_subdivision` varchar(50) NULL,
  `address_bldgno` varchar(50) NULL,
  `address_bldgname` varchar(50) NULL,
  `address_pin` varchar(50) NULL,
  `stuboutid` varchar(50) NULL,
  `stuboutindex` int(11) NULL,
  `meterid` varchar(50) NULL,
  `initialreading` int(11) NULL,
  `installer_name` varchar(255) NULL,
  `installer_objid` varchar(50) NULL,
  `dtinstalled` date NULL,
  `signature` longtext,
  `meterprovider` varchar(255) NULL,
  `stuboutnodeid` varchar(50) NULL,
  `metersizeid` varchar(50) NULL,
  `taskid` varchar(50) NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_classificationid` (`classificationid`),
  KEY `ix_acctname` (`acctname`),
  KEY `ix_owner_objid` (`owner_objid`),
  KEY `ix_address_barangay_objid` (`address_barangay_objid`),
  KEY `ix_stuboutid` (`stuboutid`),
  KEY `ix_meterid` (`meterid`),
  KEY `ix_installer_objid` (`installer_objid`),
  KEY `ix_dtinstalled` (`dtinstalled`),
  KEY `fk_waterworks_application_taskid` (`taskid`),
  CONSTRAINT `fk_waterworks_application_taskid` FOREIGN KEY (`taskid`) REFERENCES `waterworks_application_task` (`taskid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waterworks_application`
--

LOCK TABLES `waterworks_application` WRITE;
/*!40000 ALTER TABLE `waterworks_application` DISABLE KEYS */;
/*!40000 ALTER TABLE `waterworks_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waterworks_application_bom`
--

DROP TABLE IF EXISTS `waterworks_application_bom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waterworks_application_bom` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) NULL,
  `state` varchar(10) NULL,
  `item_objid` varchar(50) NULL,
  `item_code` varchar(50) NULL,
  `item_title` varchar(255) NULL,
  `item_unit` varchar(10) NULL,
  `qty` int(11) NULL,
  `qtyissued` int(11) NULL,
  `item_unitprice` decimal(10,2) NULL,
  `cwdsupplied` int(11) NULL,
  `remarks` varchar(50) NULL,
  KEY `fk_application_bom` (`parentid`),
  CONSTRAINT `fk_waterworks_application_bom_parentid` FOREIGN KEY (`parentid`) REFERENCES `waterworks_application` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waterworks_application_bom`
--

LOCK TABLES `waterworks_application_bom` WRITE;
/*!40000 ALTER TABLE `waterworks_application_bom` DISABLE KEYS */;
/*!40000 ALTER TABLE `waterworks_application_bom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waterworks_application_fee`
--

DROP TABLE IF EXISTS `waterworks_application_fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waterworks_application_fee` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) NULL,
  `duedate` date NULL,
  `txntype` varchar(10) NULL,
  `item_objid` varchar(50) NULL,
  `item_code` varchar(50) NULL,
  `item_title` varchar(255) NULL,
  `remarks` varchar(255) NULL,
  `amount` decimal(16,2) NULL,
  `amtpaid` decimal(16,2) NULL,
  `installmentid` varchar(50) NULL,
  PRIMARY KEY (`objid`),
  KEY `fk_application_fee_application` (`parentid`),
  CONSTRAINT `fk_waterworks_application_fee_parentid` FOREIGN KEY (`parentid`) REFERENCES `waterworks_application` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waterworks_application_fee`
--

LOCK TABLES `waterworks_application_fee` WRITE;
/*!40000 ALTER TABLE `waterworks_application_fee` DISABLE KEYS */;
/*!40000 ALTER TABLE `waterworks_application_fee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waterworks_application_requirement`
--

DROP TABLE IF EXISTS `waterworks_application_requirement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waterworks_application_requirement` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) NULL,
  `code` varchar(50) NULL,
  `title` varchar(255) NULL,
  `refno` varchar(50) NULL,
  `refid` varchar(50) NULL,
  `sortorder` int(11) NULL,
  `required` tinyint(4) NULL,
  `complied` tinyint(4) NULL,
  `dtcomplied` datetime NULL,
  `verifier_objid` varchar(50) NULL,
  `verifier_name` varchar(255) NULL,
  `remarks` varchar(255) NULL,
  `info` longtext,
  `dtissued` date NULL,
  `expirydate` date NULL,
  PRIMARY KEY (`objid`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waterworks_application_requirement`
--

LOCK TABLES `waterworks_application_requirement` WRITE;
/*!40000 ALTER TABLE `waterworks_application_requirement` DISABLE KEYS */;
/*!40000 ALTER TABLE `waterworks_application_requirement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waterworks_application_task`
--

DROP TABLE IF EXISTS `waterworks_application_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waterworks_application_task` (
  `taskid` varchar(50) NOT NULL,
  `refid` varchar(50) NULL,
  `parentprocessid` varchar(50) NULL,
  `state` varchar(50) NULL,
  `startdate` datetime NULL,
  `enddate` datetime NULL,
  `assignee_objid` varchar(50) NULL,
  `assignee_name` varchar(100) NULL,
  `actor_objid` varchar(50) NULL,
  `actor_name` varchar(100) NULL,
  `message` varchar(255) NULL,
  `prevtaskid` varchar(50) NULL,
  `dtcreated` datetime NULL,
  PRIMARY KEY (`taskid`),
  KEY `ix_refid` (`refid`),
  CONSTRAINT `fk_waterworks_application_task_refid` FOREIGN KEY (`refid`) REFERENCES `waterworks_application` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waterworks_application_task`
--

LOCK TABLES `waterworks_application_task` WRITE;
/*!40000 ALTER TABLE `waterworks_application_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `waterworks_application_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waterworks_attribute`
--

DROP TABLE IF EXISTS `waterworks_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waterworks_attribute` (
  `name` varchar(50) NOT NULL,
  `title` varchar(100) NULL,
  PRIMARY KEY (`name`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waterworks_attribute`
--

LOCK TABLES `waterworks_attribute` WRITE;
/*!40000 ALTER TABLE `waterworks_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `waterworks_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waterworks_batch_billing`
--

DROP TABLE IF EXISTS `waterworks_batch_billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waterworks_batch_billing` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(50) NULL,
  `dtcreated` datetime NULL,
  `createdby_objid` varchar(50) NULL,
  `createdby_name` varchar(255) NULL,
  `zoneid` varchar(50) NULL,
  `dtposted` datetime NULL,
  `postedby_objid` varchar(50) NULL,
  `postedby_name` varchar(255) NULL,
  `reader_objid` varchar(50) NULL,
  `reader_name` varchar(255) NULL,
  `scheduleid` varchar(50) NULL,
  `taskid` varchar(50) NULL,
  `readingdate` date NOT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_dtcreated` (`dtcreated`),
  KEY `ix_createdby_objid` (`createdby_objid`),
  KEY `ix_zoneid` (`zoneid`),
  KEY `ix_dtposted` (`dtposted`),
  KEY `ix_postedby_objid` (`postedby_objid`),
  KEY `ix_reader_objid` (`reader_objid`),
  KEY `ix_taskid` (`taskid`),
  KEY `ix_scheduleid` (`scheduleid`),
  KEY `ix_readingdate` (`readingdate`),
  CONSTRAINT `fk_waterworks_batch_billing_scheduleid` FOREIGN KEY (`scheduleid`) REFERENCES `waterworks_billing_schedule` (`objid`),
  CONSTRAINT `fk_waterworks_batch_billing_taskid` FOREIGN KEY (`taskid`) REFERENCES `waterworks_batch_billing_task` (`taskid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waterworks_batch_billing`
--

LOCK TABLES `waterworks_batch_billing` WRITE;
/*!40000 ALTER TABLE `waterworks_batch_billing` DISABLE KEYS */;
/*!40000 ALTER TABLE `waterworks_batch_billing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waterworks_batch_billing_task`
--

DROP TABLE IF EXISTS `waterworks_batch_billing_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waterworks_batch_billing_task` (
  `taskid` varchar(50) NOT NULL,
  `refid` varchar(50) NULL,
  `parentprocessid` varchar(50) NULL,
  `state` varchar(50) NULL,
  `startdate` datetime NULL,
  `enddate` datetime NULL,
  `assignee_objid` varchar(50) NULL,
  `assignee_name` varchar(100) NULL,
  `actor_objid` varchar(50) NULL,
  `actor_name` varchar(100) NULL,
  `message` varchar(255) NULL,
  `dtcreated` datetime NULL,
  `prevtaskid` varchar(50) NULL,
  PRIMARY KEY (`taskid`),
  KEY `ix_refid` (`refid`),
  CONSTRAINT `fk_waterworks_batch_billing_task_refid` FOREIGN KEY (`refid`) REFERENCES `waterworks_batch_billing` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waterworks_batch_billing_task`
--

LOCK TABLES `waterworks_batch_billing_task` WRITE;
/*!40000 ALTER TABLE `waterworks_batch_billing_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `waterworks_batch_billing_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waterworks_billing`
--

DROP TABLE IF EXISTS `waterworks_billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waterworks_billing` (
  `objid` varchar(50) NOT NULL,
  `batchid` varchar(50) NULL,
  `acctid` varchar(50) NULL,
  `billno` varchar(50) NULL,
  `consumptionid` varchar(50) NULL,
  `state` varchar(32) NULL,
  `surcharge` decimal(16,2) NULL,
  `interest` decimal(16,2) NULL,
  `otherfees` decimal(16,2) NULL,
  `credits` decimal(16,2) NULL,
  `arrears` decimal(16,2) NULL,
  `averageconsumption` int(11) NULL,
  `billed` int(11) NULL,
  `unpaidmonths` int(11) NULL,
  `refbillno` varchar(50) NULL,
  `printed` int(11) NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `uix_batchid_acctid` (`batchid`,`acctid`),
  KEY `ix_batchid` (`batchid`),
  KEY `ix_consumptionid` (`consumptionid`),
  CONSTRAINT `fk_waterworks_billing_batchid` FOREIGN KEY (`batchid`) REFERENCES `waterworks_batch_billing` (`objid`),
  CONSTRAINT `fk_waterworks_billing_consumptionid` FOREIGN KEY (`consumptionid`) REFERENCES `waterworks_consumption` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waterworks_billing`
--

LOCK TABLES `waterworks_billing` WRITE;
/*!40000 ALTER TABLE `waterworks_billing` DISABLE KEYS */;
/*!40000 ALTER TABLE `waterworks_billing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waterworks_billing_schedule`
--

DROP TABLE IF EXISTS `waterworks_billing_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waterworks_billing_schedule` (
  `objid` varchar(50) NOT NULL,
  `scheduleid` varchar(50) NULL,
  `year` int(11) NULL,
  `month` int(11) NULL,
  `fromperiod` date NULL,
  `toperiod` date NULL,
  `readingdate` date NULL,
  `readingduedate` date NULL,
  `billingduedate` date NULL,
  `discdate` date NULL,
  `duedate` date NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `uix_scheduleid_year_month` (`scheduleid`,`year`,`month`),
  KEY `ix_schedule_objid` (`scheduleid`),
  KEY `ix_year` (`year`),
  KEY `ix_month` (`month`),
  KEY `ix_readingdate` (`readingdate`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waterworks_billing_schedule`
--

LOCK TABLES `waterworks_billing_schedule` WRITE;
/*!40000 ALTER TABLE `waterworks_billing_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `waterworks_billing_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waterworks_block_schedule`
--

DROP TABLE IF EXISTS `waterworks_block_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waterworks_block_schedule` (
  `objid` varchar(50) NOT NULL,
  `description` varchar(255) NULL,
  PRIMARY KEY (`objid`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waterworks_block_schedule`
--

LOCK TABLES `waterworks_block_schedule` WRITE;
/*!40000 ALTER TABLE `waterworks_block_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `waterworks_block_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waterworks_changelog`
--

DROP TABLE IF EXISTS `waterworks_changelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waterworks_changelog` (
  `objid` varchar(50) NOT NULL,
  `refid` varchar(50) NOT NULL,
  `reftype` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `oldvalue` text,
  `newvalue` text,
  `dtfiled` datetime NULL,
  `filedby_name` varchar(255) NULL,
  `remarks` varchar(255) NULL,
  `controlno` varchar(32) NULL,
  `filedby_objid` varchar(50) NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_refid` (`refid`),
  KEY `ix_reftype` (`reftype`),
  KEY `ix_action` (`action`),
  KEY `ix_dtfiled` (`dtfiled`),
  KEY `ix_controlno` (`controlno`),
  KEY `ix_filedby_objid` (`filedby_objid`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waterworks_changelog`
--

LOCK TABLES `waterworks_changelog` WRITE;
/*!40000 ALTER TABLE `waterworks_changelog` DISABLE KEYS */;
/*!40000 ALTER TABLE `waterworks_changelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waterworks_classification`
--

DROP TABLE IF EXISTS `waterworks_classification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waterworks_classification` (
  `objid` varchar(50) NOT NULL,
  `description` varchar(255) NULL,
  PRIMARY KEY (`objid`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waterworks_classification`
--

LOCK TABLES `waterworks_classification` WRITE;
/*!40000 ALTER TABLE `waterworks_classification` DISABLE KEYS */;
/*!40000 ALTER TABLE `waterworks_classification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waterworks_consumption`
--

DROP TABLE IF EXISTS `waterworks_consumption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waterworks_consumption` (
  `objid` varchar(50) NOT NULL,
  `acctid` varchar(50) NULL,
  `txnmode` varchar(50) NULL,
  `prevreading` int(11) NULL,
  `reading` int(11) NULL,
  `volume` int(11) NULL,
  `rate` decimal(16,2) NULL,
  `amount` decimal(16,2) NULL,
  `amtpaid` decimal(16,2) NULL,
  `batchid` varchar(50) NULL,
  `state` varchar(32) NULL,
  `meterid` varchar(50) NULL,
  `scheduleid` varchar(50) NULL,
  `hold` int(11) NOT NULL DEFAULT '0',
  `discount` decimal(16,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`objid`),
  UNIQUE KEY `uix_acctid_scheduleid` (`acctid`,`scheduleid`),
  KEY `ix_batchid` (`batchid`),
  KEY `ix_meterid` (`meterid`),
  KEY `ix_scheduleid` (`scheduleid`),
  KEY `ix_acctid` (`acctid`),
  CONSTRAINT `fk_waterworks_consumption_acctid` FOREIGN KEY (`acctid`) REFERENCES `waterworks_account` (`objid`),
  CONSTRAINT `fk_waterworks_consumption_batchid` FOREIGN KEY (`batchid`) REFERENCES `waterworks_batch_billing` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waterworks_consumption`
--

LOCK TABLES `waterworks_consumption` WRITE;
/*!40000 ALTER TABLE `waterworks_consumption` DISABLE KEYS */;
/*!40000 ALTER TABLE `waterworks_consumption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waterworks_credit`
--

DROP TABLE IF EXISTS `waterworks_credit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waterworks_credit` (
  `objid` varchar(50) NOT NULL,
  `acctid` varchar(50) NULL,
  `refno` varchar(50) NULL,
  `refid` varchar(50) NULL,
  `reftype` varchar(50) NULL,
  `refdate` date NULL,
  `dr` decimal(16,2) NULL,
  `cr` decimal(16,2) NULL,
  `remarks` varchar(255) NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_acctid` (`acctid`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waterworks_credit`
--

LOCK TABLES `waterworks_credit` WRITE;
/*!40000 ALTER TABLE `waterworks_credit` DISABLE KEYS */;
/*!40000 ALTER TABLE `waterworks_credit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waterworks_formula`
--

DROP TABLE IF EXISTS `waterworks_formula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waterworks_formula` (
  `classificationid` varchar(100) NOT NULL,
  `varname` varchar(50) NULL,
  `expr` longtext,
  PRIMARY KEY (`classificationid`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waterworks_formula`
--

LOCK TABLES `waterworks_formula` WRITE;
/*!40000 ALTER TABLE `waterworks_formula` DISABLE KEYS */;
/*!40000 ALTER TABLE `waterworks_formula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waterworks_installment`
--

DROP TABLE IF EXISTS `waterworks_installment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waterworks_installment` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(10) NULL,
  `controlno` varchar(100) NULL,
  `doctype` varchar(10) NULL,
  `dtfiled` datetime NULL,
  `particulars` varchar(255) NULL,
  `term` int(11) NULL,
  `downpayment` decimal(16,2) NULL,
  `enddate` date NULL,
  `acctid` varchar(50) NULL,
  `applicationid` varchar(50) NULL,
  `installmentamount` decimal(16,2) NULL,
  `lastbilldate` date NULL,
  `amtbilled` decimal(16,2) NULL,
  `amount` decimal(16,2) NULL,
  `amtpaid` decimal(16,2) NULL,
  `txntype_objid` varchar(50) NULL,
  `startyear` int(11) NULL,
  `startmonth` int(11) NULL,
  `txntypeid` varchar(50) NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_acctid` (`acctid`),
  KEY `ix_applicationid` (`applicationid`),
  KEY `ix_enddate` (`enddate`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waterworks_installment`
--

LOCK TABLES `waterworks_installment` WRITE;
/*!40000 ALTER TABLE `waterworks_installment` DISABLE KEYS */;
/*!40000 ALTER TABLE `waterworks_installment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waterworks_itemaccount`
--

DROP TABLE IF EXISTS `waterworks_itemaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waterworks_itemaccount` (
  `objid` varchar(50) NOT NULL,
  `title` varchar(255) NULL,
  `item_objid` varchar(50) NULL,
  `item_code` varchar(50) NULL,
  `item_title` varchar(255) NULL,
  `item_fund_objid` varchar(50) NULL,
  `sortorder` int(10) NULL,
  PRIMARY KEY (`objid`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waterworks_itemaccount`
--

LOCK TABLES `waterworks_itemaccount` WRITE;
/*!40000 ALTER TABLE `waterworks_itemaccount` DISABLE KEYS */;
/*!40000 ALTER TABLE `waterworks_itemaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waterworks_material`
--

DROP TABLE IF EXISTS `waterworks_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waterworks_material` (
  `objid` varchar(50) NOT NULL,
  `code` varchar(10) NULL,
  `title` varchar(255) NULL,
  `unitprice` decimal(16,2) NULL,
  `unit` varchar(10) NULL,
  `installmentprice` decimal(16,2) NULL,
  `unitcost` decimal(16,2) NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `uix_waterworks_code` (`code`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waterworks_material`
--

LOCK TABLES `waterworks_material` WRITE;
/*!40000 ALTER TABLE `waterworks_material` DISABLE KEYS */;
/*!40000 ALTER TABLE `waterworks_material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waterworks_meter`
--

DROP TABLE IF EXISTS `waterworks_meter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waterworks_meter` (
  `objid` varchar(50) NOT NULL,
  `serialno` varchar(50) NULL,
  `brand` varchar(50) NULL,
  `sizeid` varchar(50) NULL,
  `capacity` int(11) NULL,
  `stocktype` varchar(50) NULL,
  `state` varchar(32) NOT NULL,
  `lastreading` int(11) NULL,
  `lastreadingdate` date NULL,
  `currentacctid` varchar(50) NULL,
  `ukey` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`objid`),
  UNIQUE KEY `uix_serialno` (`serialno`,`ukey`),
  KEY `ix_brand` (`brand`),
  KEY `ix_sizeid` (`sizeid`),
  KEY `ix_state` (`state`),
  KEY `ix_lastreadingdate` (`lastreadingdate`),
  KEY `ix_currentacctid` (`currentacctid`),
  CONSTRAINT `fk_waterworks_meter_currentacctid` FOREIGN KEY (`currentacctid`) REFERENCES `waterworks_account` (`objid`),
  CONSTRAINT `fk_waterworks_meter_sizeid` FOREIGN KEY (`sizeid`) REFERENCES `waterworks_metersize` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waterworks_meter`
--

LOCK TABLES `waterworks_meter` WRITE;
/*!40000 ALTER TABLE `waterworks_meter` DISABLE KEYS */;
/*!40000 ALTER TABLE `waterworks_meter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waterworks_metersize`
--

DROP TABLE IF EXISTS `waterworks_metersize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waterworks_metersize` (
  `objid` varchar(50) NOT NULL,
  `title` varchar(255) NULL,
  PRIMARY KEY (`objid`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waterworks_metersize`
--

LOCK TABLES `waterworks_metersize` WRITE;
/*!40000 ALTER TABLE `waterworks_metersize` DISABLE KEYS */;
/*!40000 ALTER TABLE `waterworks_metersize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waterworks_mobile_header`
--

DROP TABLE IF EXISTS `waterworks_mobile_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waterworks_mobile_header` (
  `batchid` varchar(50) NOT NULL,
  `state` int(11) NULL,
  PRIMARY KEY (`batchid`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waterworks_mobile_header`
--

LOCK TABLES `waterworks_mobile_header` WRITE;
/*!40000 ALTER TABLE `waterworks_mobile_header` DISABLE KEYS */;
/*!40000 ALTER TABLE `waterworks_mobile_header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waterworks_mobile_info`
--

DROP TABLE IF EXISTS `waterworks_mobile_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waterworks_mobile_info` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(50) NULL,
  `acctno` varchar(50) NULL,
  `acctname` varchar(255) NULL,
  `address` varchar(255) NULL,
  `serialno` varchar(50) NULL,
  `sectorid` varchar(50) NULL,
  `sectorcode` varchar(50) NULL,
  `lastreading` int(11) NULL,
  `classificationid` varchar(50) NULL,
  `barcode` varchar(50) NULL,
  `batchid` varchar(50) NULL,
  `month` int(11) NULL,
  `year` int(11) NULL,
  `period` varchar(50) NULL,
  `duedate` date NULL,
  `discodate` date NULL,
  `rundate` datetime NULL,
  `items` longtext,
  `info` longtext,
  `itemaccountid` varchar(50) NULL,
  `stuboutid` varchar(50) NULL,
  `sortorder` int(11) NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_itemaccountid` (`itemaccountid`),
  KEY `ix_batchid` (`batchid`),
  KEY `ix_classificationid` (`classificationid`),
  KEY `ix_stuboutid` (`stuboutid`),
  KEY `ix_sectorid` (`sectorid`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waterworks_mobile_info`
--

LOCK TABLES `waterworks_mobile_info` WRITE;
/*!40000 ALTER TABLE `waterworks_mobile_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `waterworks_mobile_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waterworks_otherfee`
--

DROP TABLE IF EXISTS `waterworks_otherfee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waterworks_otherfee` (
  `objid` varchar(50) NOT NULL,
  `acctid` varchar(50) NOT NULL,
  `item_objid` varchar(50) NOT NULL,
  `item_code` varchar(25) NULL,
  `item_title` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `amount` decimal(16,4) NOT NULL,
  `amtpaid` decimal(16,4) NOT NULL,
  `remarks` varchar(255) NULL,
  `discount` decimal(16,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`objid`),
  KEY `ix_acctid` (`acctid`),
  KEY `ix_item_objid` (`item_objid`),
  KEY `ix_year` (`year`),
  KEY `ix_month` (`month`),
  CONSTRAINT `fk_waterworks_otherfee_itemobjid` FOREIGN KEY (`item_objid`) REFERENCES `waterworks_itemaccount` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waterworks_otherfee`
--

LOCK TABLES `waterworks_otherfee` WRITE;
/*!40000 ALTER TABLE `waterworks_otherfee` DISABLE KEYS */;
/*!40000 ALTER TABLE `waterworks_otherfee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waterworks_payment`
--

DROP TABLE IF EXISTS `waterworks_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waterworks_payment` (
  `objid` varchar(50) NOT NULL,
  `refno` varchar(50) NULL,
  `reftype` varchar(50) NULL,
  `refid` varchar(50) NULL,
  `refdate` date NULL,
  `amount` decimal(10,2) NULL,
  `voided` int(11) NULL,
  `txnmode` varchar(50) NULL,
  `remarks` varchar(255) NULL,
  `acctid` varchar(50) NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_refid` (`refid`),
  KEY `ix_refno` (`refno`),
  KEY `ix_refdate` (`refdate`),
  KEY `fk_waterworks_payment_acctid` (`acctid`),
  CONSTRAINT `fk_waterworks_payment_acctid` FOREIGN KEY (`acctid`) REFERENCES `waterworks_account` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waterworks_payment`
--

LOCK TABLES `waterworks_payment` WRITE;
/*!40000 ALTER TABLE `waterworks_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `waterworks_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waterworks_payment_item`
--

DROP TABLE IF EXISTS `waterworks_payment_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waterworks_payment_item` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) NULL,
  `amount` decimal(10,2) NULL,
  `discount` decimal(10,2) NULL,
  `surcharge` decimal(10,2) NULL,
  `interest` decimal(10,2) NULL,
  `remarks` varchar(50) NULL,
  `refid` varchar(50) NULL,
  `reftype` varchar(50) NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_parentid` (`parentid`),
  KEY `ix_refid` (`refid`),
  KEY `ix_reftype` (`reftype`),
  CONSTRAINT `fk_waterworks_payment_item_parentid` FOREIGN KEY (`parentid`) REFERENCES `waterworks_payment` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waterworks_payment_item`
--

LOCK TABLES `waterworks_payment_item` WRITE;
/*!40000 ALTER TABLE `waterworks_payment_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `waterworks_payment_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waterworks_sector`
--

DROP TABLE IF EXISTS `waterworks_sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waterworks_sector` (
  `objid` varchar(50) NOT NULL,
  `code` varchar(50) NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `uix_code` (`code`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waterworks_sector`
--

LOCK TABLES `waterworks_sector` WRITE;
/*!40000 ALTER TABLE `waterworks_sector` DISABLE KEYS */;
/*!40000 ALTER TABLE `waterworks_sector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waterworks_stubout`
--

DROP TABLE IF EXISTS `waterworks_stubout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waterworks_stubout` (
  `objid` varchar(50) NOT NULL,
  `code` varchar(50) NULL,
  `description` varchar(255) NULL,
  `zoneid` varchar(50) NULL,
  `barangay_objid` varchar(50) NULL,
  `barangay_name` varchar(100) NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_zoneid` (`zoneid`),
  KEY `ix_barangay_objid` (`barangay_objid`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waterworks_stubout`
--

LOCK TABLES `waterworks_stubout` WRITE;
/*!40000 ALTER TABLE `waterworks_stubout` DISABLE KEYS */;
/*!40000 ALTER TABLE `waterworks_stubout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waterworks_stubout_node`
--

DROP TABLE IF EXISTS `waterworks_stubout_node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waterworks_stubout_node` (
  `objid` varchar(50) NOT NULL,
  `stuboutid` varchar(50) NULL,
  `indexno` int(11) NOT NULL,
  `currentacctid` varchar(50) NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_stuboutid` (`stuboutid`),
  KEY `ix_currentacctid` (`currentacctid`),
  CONSTRAINT `fk_waterworks_stubout_node_currentacctid` FOREIGN KEY (`currentacctid`) REFERENCES `waterworks_account` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waterworks_stubout_node`
--

LOCK TABLES `waterworks_stubout_node` WRITE;
/*!40000 ALTER TABLE `waterworks_stubout_node` DISABLE KEYS */;
/*!40000 ALTER TABLE `waterworks_stubout_node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waterworks_zone`
--

DROP TABLE IF EXISTS `waterworks_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waterworks_zone` (
  `objid` varchar(50) NOT NULL,
  `sectorid` varchar(50) NULL,
  `code` varchar(50) NULL,
  `description` varchar(255) NULL,
  `schedule_objid` varchar(50) NULL,
  `batchid` varchar(50) NULL,
  `nextscheduleid` varchar(50) NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_sectorid_code` (`sectorid`,`code`),
  KEY `ix_schedule_objid` (`schedule_objid`),
  KEY `ix_nextscheduleid` (`nextscheduleid`),
  CONSTRAINT `fk_waterworks_zone_sectorid` FOREIGN KEY (`sectorid`) REFERENCES `waterworks_sector` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waterworks_zone`
--

LOCK TABLES `waterworks_zone` WRITE;
/*!40000 ALTER TABLE `waterworks_zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `waterworks_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `vw_report_billing_summary`
--

/*!50001 DROP TABLE IF EXISTS `vw_report_billing_summary`*/;
/*!50001 DROP VIEW IF EXISTS `vw_report_billing_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_report_billing_summary` AS select `wbs`.`year` AS `year`,`wbs`.`month` AS `month`,`ws`.`barangay_objid` AS `barangay_objid`,`ws`.`barangay_name` AS `barangay_name`,`wz`.`objid` AS `zone_objid`,`wz`.`code` AS `zone_code`,`ws`.`description` AS `zone_title`,(case when ((`cl`.`objid` = 'RESIDENTIAL') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'ACTIVE')) then 1 else 0 end) AS `res_metered`,(case when ((`cl`.`objid` = 'RESIDENTIAL') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'ACTIVE')) then `wc`.`volume` else 0 end) AS `res_meteredvol`,(case when ((`cl`.`objid` = 'RESIDENTIAL') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'ACTIVE')) then `wc`.`amount` else 0 end) AS `res_meteredamt`,(case when ((`cl`.`objid` = 'RESIDENTIAL') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'DEFECTIVE')) then 1 else 0 end) AS `res_defective`,(case when ((`cl`.`objid` = 'RESIDENTIAL') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'DEFECTIVE')) then `wc`.`volume` else 0 end) AS `res_defectivevol`,(case when ((`cl`.`objid` = 'RESIDENTIAL') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'DEFECTIVE')) then `wc`.`amount` else 0 end) AS `res_defectiveamt`,(case when ((`cl`.`objid` = 'RESIDENTIAL') and (`wa`.`state` = 'ACTIVE') and isnull(`wm`.`objid`)) then 1 else 0 end) AS `res_unmetered`,(case when ((`cl`.`objid` = 'RESIDENTIAL') and (`wa`.`state` = 'ACTIVE') and isnull(`wm`.`objid`)) then `wc`.`volume` else 0 end) AS `res_unmeteredvol`,(case when ((`cl`.`objid` = 'RESIDENTIAL') and (`wa`.`state` = 'ACTIVE') and isnull(`wm`.`objid`)) then `wc`.`amount` else 0 end) AS `res_unmeteredamt`,(case when ((`cl`.`objid` = 'COMMERCIAL') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'ACTIVE')) then 1 else 0 end) AS `com_metered`,(case when ((`cl`.`objid` = 'COMMERCIAL') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'ACTIVE')) then `wc`.`volume` else 0 end) AS `com_meteredvol`,(case when ((`cl`.`objid` = 'COMMERCIAL') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'ACTIVE')) then `wc`.`amount` else 0 end) AS `com_meteredamt`,(case when ((`cl`.`objid` = 'COMMERCIAL') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'DEFECTIVE')) then 1 else 0 end) AS `com_defective`,(case when ((`cl`.`objid` = 'COMMERCIAL') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'DEFECTIVE')) then `wc`.`volume` else 0 end) AS `com_defectivevol`,(case when ((`cl`.`objid` = 'COMMERCIAL') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'DEFECTIVE')) then `wc`.`amount` else 0 end) AS `com_defectiveamt`,(case when ((`cl`.`objid` = 'COMMERCIAL') and (`wa`.`state` = 'ACTIVE') and isnull(`wm`.`objid`)) then 1 else 0 end) AS `com_unmetered`,(case when ((`cl`.`objid` = 'COMMERCIAL') and (`wa`.`state` = 'ACTIVE') and isnull(`wm`.`objid`)) then `wc`.`volume` else 0 end) AS `com_unmeteredvol`,(case when ((`cl`.`objid` = 'COMMERCIAL') and (`wa`.`state` = 'ACTIVE') and isnull(`wm`.`objid`)) then `wc`.`amount` else 0 end) AS `com_unmeteredamt`,(case when ((`cl`.`objid` = 'INDUSTRIAL') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'ACTIVE')) then 1 else 0 end) AS `ind_metered`,(case when ((`cl`.`objid` = 'INDUSTRIAL') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'ACTIVE')) then `wc`.`volume` else 0 end) AS `ind_meteredvol`,(case when ((`cl`.`objid` = 'INDUSTRIAL') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'ACTIVE')) then `wc`.`amount` else 0 end) AS `ind_meteredamt`,(case when ((`cl`.`objid` = 'INDUSTRIAL') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'DEFECTIVE')) then 1 else 0 end) AS `ind_defective`,(case when ((`cl`.`objid` = 'INDUSTRIAL') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'DEFECTIVE')) then `wc`.`volume` else 0 end) AS `ind_defectivevol`,(case when ((`cl`.`objid` = 'INDUSTRIAL') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'DEFECTIVE')) then `wc`.`amount` else 0 end) AS `ind_defectiveamt`,(case when ((`cl`.`objid` = 'INDUSTRIAL') and (`wa`.`state` = 'ACTIVE') and isnull(`wm`.`objid`)) then 1 else 0 end) AS `ind_unmetered`,(case when ((`cl`.`objid` = 'INDUSTRIAL') and (`wa`.`state` = 'ACTIVE') and isnull(`wm`.`objid`)) then `wc`.`volume` else 0 end) AS `ind_unmeteredvol`,(case when ((`cl`.`objid` = 'INDUSTRIAL') and (`wa`.`state` = 'ACTIVE') and isnull(`wm`.`objid`)) then `wc`.`amount` else 0 end) AS `ind_unmeteredamt`,(case when ((`cl`.`objid` = 'GOVERNMENT') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'ACTIVE')) then 1 else 0 end) AS `gov_metered`,(case when ((`cl`.`objid` = 'GOVERNMENT') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'ACTIVE')) then `wc`.`volume` else 0 end) AS `gov_meteredvol`,(case when ((`cl`.`objid` = 'GOVERNMENT') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'ACTIVE')) then `wc`.`amount` else 0 end) AS `gov_meteredamt`,(case when ((`cl`.`objid` = 'GOVERNMENT') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'DEFECTIVE')) then 1 else 0 end) AS `gov_defective`,(case when ((`cl`.`objid` = 'GOVERNMENT') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'DEFECTIVE')) then `wc`.`volume` else 0 end) AS `gov_defectivevol`,(case when ((`cl`.`objid` = 'GOVERNMENT') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'DEFECTIVE')) then `wc`.`amount` else 0 end) AS `gov_defectiveamt`,(case when ((`cl`.`objid` = 'GOVERNMENT') and (`wa`.`state` = 'ACTIVE') and isnull(`wm`.`objid`)) then 1 else 0 end) AS `gov_unmetered`,(case when ((`cl`.`objid` = 'GOVERNMENT') and (`wa`.`state` = 'ACTIVE') and isnull(`wm`.`objid`)) then `wc`.`volume` else 0 end) AS `gov_unmeteredvol`,(case when ((`cl`.`objid` = 'GOVERNMENT') and (`wa`.`state` = 'ACTIVE') and isnull(`wm`.`objid`)) then `wc`.`amount` else 0 end) AS `gov_unmeteredamt`,(case when ((`cl`.`objid` = 'BULK') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'ACTIVE')) then 1 else 0 end) AS `bulk_metered`,(case when ((`cl`.`objid` = 'BULK') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'ACTIVE')) then `wc`.`volume` else 0 end) AS `bulk_meteredvol`,(case when ((`cl`.`objid` = 'BULK') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'ACTIVE')) then `wc`.`amount` else 0 end) AS `bulk_meteredamt`,(case when ((`cl`.`objid` = 'BULK') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'DEFECTIVE')) then 1 else 0 end) AS `bulk_defective`,(case when ((`cl`.`objid` = 'BULK') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'DEFECTIVE')) then `wc`.`volume` else 0 end) AS `bulk_defectivevol`,(case when ((`cl`.`objid` = 'BULK') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'DEFECTIVE')) then `wc`.`amount` else 0 end) AS `bulk_defectiveamt`,(case when ((`cl`.`objid` = 'BULK') and (`wa`.`state` = 'ACTIVE') and isnull(`wm`.`objid`)) then 1 else 0 end) AS `bulk_unmetered`,(case when ((`cl`.`objid` = 'BULK') and (`wa`.`state` = 'ACTIVE') and isnull(`wm`.`objid`)) then `wc`.`volume` else 0 end) AS `bulk_unmeteredvol`,(case when ((`cl`.`objid` = 'BULK') and (`wa`.`state` = 'ACTIVE') and isnull(`wm`.`objid`)) then `wc`.`amount` else 0 end) AS `bulk_unmeteredamt` from (((((((`waterworks_billing_schedule` `wbs` join `waterworks_consumption` `wc` on((`wc`.`scheduleid` = `wbs`.`objid`))) join `waterworks_account` `wa` on((`wa`.`objid` = `wc`.`acctid`))) join `waterworks_stubout_node` `wsn` on((`wsn`.`objid` = `wa`.`stuboutnodeid`))) join `waterworks_stubout` `ws` on((`ws`.`objid` = `wsn`.`stuboutid`))) join `waterworks_zone` `wz` on((`wz`.`objid` = `ws`.`zoneid`))) join `waterworks_classification` `cl` on((`cl`.`objid` = `wa`.`classificationid`))) left join `waterworks_meter` `wm` on((`wm`.`objid` = `wa`.`meterid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_waterworks_account`
--

/*!50001 DROP TABLE IF EXISTS `vw_waterworks_account`*/;
/*!50001 DROP VIEW IF EXISTS `vw_waterworks_account`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_waterworks_account` AS select `wa`.`objid` AS `objid`,`wa`.`acctno` AS `acctno`,`wa`.`acctname` AS `acctname`,`wa`.`address_text` AS `address_text`,`wa`.`classificationid` AS `classificationid`,`wa`.`classificationid` AS `classification`,`z`.`sectorid` AS `sectorid`,`z`.`objid` AS `zoneid`,`z`.`code` AS `zone_code`,`sn`.`indexno` AS `indexno`,`ws`.`code` AS `stuboutnode_stubout_code`,`m`.`objid` AS `meterid`,`m`.`serialno` AS `meter_serialno`,`m`.`brand` AS `meter_branch`,`m`.`capacity` AS `meter_capacity`,`ms`.`title` AS `meter_size_title`,`m`.`state` AS `meter_state`,`m`.`lastreading` AS `meter_lastreading`,`m`.`lastreadingdate` AS `meter_lastreadingdate`,(case when isnull(`m`.`objid`) then 'UNMETERED' when (`m`.`state` = 'ACTIVE') then 'METERED' else `m`.`state` end) AS `meterstatus` from (((((`waterworks_account` `wa` left join `waterworks_meter` `m` on((`wa`.`meterid` = `m`.`objid`))) left join `waterworks_metersize` `ms` on((`m`.`sizeid` = `ms`.`objid`))) left join `waterworks_stubout_node` `sn` on((`wa`.`stuboutnodeid` = `sn`.`objid`))) left join `waterworks_stubout` `ws` on((`sn`.`stuboutid` = `ws`.`objid`))) left join `waterworks_zone` `z` on((`z`.`objid` = `ws`.`zoneid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_waterworks_billing`
--

/*!50001 DROP TABLE IF EXISTS `vw_waterworks_billing`*/;
/*!50001 DROP VIEW IF EXISTS `vw_waterworks_billing`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_waterworks_billing` AS select `wb`.`objid` AS `objid`,`wb`.`batchid` AS `batchid`,`wb`.`acctid` AS `acctid`,`wb`.`billno` AS `billno`,`wb`.`consumptionid` AS `consumptionid`,`wb`.`state` AS `state`,`wb`.`surcharge` AS `surcharge`,`wb`.`interest` AS `interest`,`wb`.`otherfees` AS `otherfees`,`wb`.`credits` AS `credits`,`wb`.`arrears` AS `arrears`,`wb`.`averageconsumption` AS `averageconsumption`,`wb`.`billed` AS `billed`,`wb`.`unpaidmonths` AS `unpaidmonths`,`wb`.`refbillno` AS `refbillno`,`wb`.`printed` AS `printed`,`wa`.`acctno` AS `acctno`,`wa`.`acctname` AS `acctname`,`wa`.`state` AS `acctstate`,`wa`.`address_text` AS `addresstext`,`wa`.`classificationid` AS `classificationid`,(case when isnull(`wc`.`meterid`) then 'UNMETERED' else `wm`.`state` end) AS `meterstate`,`wc`.`prevreading` AS `prevreading`,`wc`.`reading` AS `reading`,`wc`.`volume` AS `volume`,`wc`.`amount` AS `amount`,`wc`.`amtpaid` AS `amtpaid`,`wc`.`rate` AS `rate`,`wc`.`hold` AS `hold`,((((`wb`.`arrears` + `wb`.`otherfees`) + `wb`.`surcharge`) + `wb`.`interest`) - `wb`.`credits`) AS `subtotal`,`wm`.`objid` AS `meterid`,`wm`.`objid` AS `meter_objid`,`wm`.`capacity` AS `meter_capacity`,`wm`.`sizeid` AS `meter_size`,`bs`.`fromperiod` AS `fromperiod`,`bs`.`toperiod` AS `toperiod`,`wbb`.`readingdate` AS `readingdate`,`bs`.`discdate` AS `discdate`,`bs`.`duedate` AS `duedate`,`z`.`objid` AS `zone_objid`,`z`.`code` AS `zone_code`,`sn`.`indexno` AS `indexno`,((`bs`.`year` * 12) + `bs`.`month`) AS `periodindexno` from ((((((((`waterworks_billing` `wb` join `waterworks_batch_billing` `wbb` on((`wbb`.`objid` = `wb`.`batchid`))) join `waterworks_consumption` `wc` on((`wc`.`objid` = `wb`.`consumptionid`))) join `waterworks_account` `wa` on((`wa`.`objid` = `wb`.`acctid`))) left join `waterworks_meter` `wm` on((`wm`.`objid` = `wc`.`meterid`))) left join `waterworks_stubout_node` `sn` on((`sn`.`objid` = `wa`.`stuboutnodeid`))) left join `waterworks_stubout` `ws` on((`ws`.`objid` = `sn`.`stuboutid`))) left join `waterworks_zone` `z` on((`z`.`objid` = `ws`.`zoneid`))) left join `waterworks_billing_schedule` `bs` on((`bs`.`objid` = `wc`.`scheduleid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_waterworks_billing_schedule`
--

/*!50001 DROP TABLE IF EXISTS `vw_waterworks_billing_schedule`*/;
/*!50001 DROP VIEW IF EXISTS `vw_waterworks_billing_schedule`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_waterworks_billing_schedule` AS select `bs`.`objid` AS `objid`,`bs`.`scheduleid` AS `scheduleid`,`bs`.`year` AS `year`,`bs`.`month` AS `month`,`bs`.`fromperiod` AS `fromperiod`,`bs`.`toperiod` AS `toperiod`,`bs`.`readingdate` AS `readingdate`,`bs`.`readingduedate` AS `readingduedate`,`bs`.`billingduedate` AS `billingduedate`,`bs`.`discdate` AS `discdate`,`bs`.`duedate` AS `duedate`,((`bs`.`year` * 12) + `bs`.`month`) AS `periodindexno` from `waterworks_billing_schedule` `bs` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_waterworks_consumption`
--

/*!50001 DROP TABLE IF EXISTS `vw_waterworks_consumption`*/;
/*!50001 DROP VIEW IF EXISTS `vw_waterworks_consumption`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_waterworks_consumption` AS select `wc`.`objid` AS `objid`,`wc`.`acctid` AS `acctid`,`wc`.`txnmode` AS `txnmode`,`wc`.`prevreading` AS `prevreading`,`wc`.`reading` AS `reading`,`wc`.`volume` AS `volume`,`wc`.`rate` AS `rate`,`wc`.`amount` AS `amount`,`wc`.`amtpaid` AS `amtpaid`,`wc`.`batchid` AS `batchid`,`wc`.`state` AS `state`,`wc`.`meterid` AS `meterid`,`wc`.`scheduleid` AS `scheduleid`,`wc`.`hold` AS `hold`,`wc`.`discount` AS `discount`,((`wc`.`amount` - `wc`.`amtpaid`) - `wc`.`discount`) AS `balance`,`s`.`year` AS `year`,`s`.`month` AS `month`,`s`.`fromperiod` AS `fromperiod`,`s`.`toperiod` AS `toperiod`,`s`.`readingdate` AS `readingdate`,`s`.`readingduedate` AS `readingduedate`,`s`.`billingduedate` AS `billingduedate`,`s`.`discdate` AS `discdate`,`s`.`duedate` AS `duedate`,`sn`.`indexno` AS `indexno`,`a`.`acctno` AS `acctno`,`a`.`acctname` AS `acctname`,((`s`.`year` * 12) + `s`.`month`) AS `periodindexno`,`bb`.`objid` AS `batch_objid`,`bb`.`readingdate` AS `batch_readingdate`,`b`.`objid` AS `bill_objid`,`b`.`otherfees` AS `bill_otherfees`,`b`.`arrears` AS `bill_arrears`,`b`.`credits` AS `bill_credits`,`b`.`surcharge` AS `bill_surcharge`,`b`.`interest` AS `bill_interest` from (((((`waterworks_consumption` `wc` join `waterworks_account` `a` on((`a`.`objid` = `wc`.`acctid`))) join `waterworks_stubout_node` `sn` on((`sn`.`objid` = `a`.`stuboutnodeid`))) left join `waterworks_billing_schedule` `s` on((`s`.`objid` = `wc`.`scheduleid`))) left join `waterworks_batch_billing` `bb` on((`bb`.`objid` = `wc`.`batchid`))) left join `waterworks_billing` `b` on((`b`.`consumptionid` = `wc`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_waterworks_stubout_node`
--

/*!50001 DROP TABLE IF EXISTS `vw_waterworks_stubout_node`*/;
/*!50001 DROP VIEW IF EXISTS `vw_waterworks_stubout_node`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_waterworks_stubout_node` AS select `son`.`objid` AS `objid`,`son`.`indexno` AS `indexno`,`so`.`objid` AS `stubout_objid`,`so`.`code` AS `stubout_code`,`zon`.`objid` AS `zone_objid`,`zon`.`code` AS `zone_code`,`sec`.`objid` AS `sector_objid`,`sec`.`code` AS `sector_code`,`so`.`barangay_objid` AS `barangay_objid`,`so`.`barangay_name` AS `barangay_name`,`sked`.`objid` AS `schedule_objid`,`wa`.`objid` AS `acctid`,`wa`.`acctno` AS `acctno`,`wa`.`acctname` AS `acctname`,`wa`.`objid` AS `currentacctid`,`so`.`objid` AS `stuboutid` from (((((`waterworks_stubout_node` `son` join `waterworks_stubout` `so` on((`son`.`stuboutid` = `so`.`objid`))) join `waterworks_zone` `zon` on((`so`.`zoneid` = `zon`.`objid`))) join `waterworks_sector` `sec` on((`zon`.`sectorid` = `sec`.`objid`))) left join `waterworks_block_schedule` `sked` on((`zon`.`schedule_objid` = `sked`.`objid`))) left join `waterworks_account` `wa` on((`wa`.`stuboutnodeid` = `son`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-03 11:40:18



INSERT INTO `waterworks_block_schedule` (`objid`, `description`) VALUES ('S1', 'schedule 1');

INSERT INTO `waterworks_classification` (`objid`, `description`) VALUES ('BULK', 'BULK');
INSERT INTO `waterworks_classification` (`objid`, `description`) VALUES ('COMMERCIAL', 'COMMERCIAL');
INSERT INTO `waterworks_classification` (`objid`, `description`) VALUES ('GOVERNMENT', 'GOVERNMENT');
INSERT INTO `waterworks_classification` (`objid`, `description`) VALUES ('INDUSTRIAL', 'INDUSTRIAL');
INSERT INTO `waterworks_classification` (`objid`, `description`) VALUES ('RESIDENTIAL', 'RESIDENTIAL');

INSERT INTO `waterworks_itemaccount` (`objid`, `title`, `sortorder`) VALUES ('WATER_ADVANCE_PAYMENT', 'WATER ADVANCE PAYMENT', '200');
INSERT INTO `waterworks_itemaccount` (`objid`, `title`, `sortorder`) VALUES ('WATER_CLEARANCE', 'WATER CLEARANCE', '1');
INSERT INTO `waterworks_itemaccount` (`objid`, `title`, `sortorder`) VALUES ('WATER_DISCOUNT', 'WATER DISCOUNT', '2');
INSERT INTO `waterworks_itemaccount` (`objid`, `title`, `sortorder`) VALUES ('WATER_SALES', 'WATER SALES', '1');
INSERT INTO `waterworks_itemaccount` (`objid`, `title`, `sortorder`) VALUES ('WATER_TAX_CREDIT', 'WATER SALES - TAX CREDIT', '1');

INSERT INTO `waterworks_metersize` (`objid`, `title`) VALUES ('FOUR_INCH', '4"');
INSERT INTO `waterworks_metersize` (`objid`, `title`) VALUES ('ONE_AND_HALF_INCH', '1 1/2"');
INSERT INTO `waterworks_metersize` (`objid`, `title`) VALUES ('ONE_HALF', '1/2"');
INSERT INTO `waterworks_metersize` (`objid`, `title`) VALUES ('ONE_INCH', '1"');
INSERT INTO `waterworks_metersize` (`objid`, `title`) VALUES ('SIX_INCH', '6"');
INSERT INTO `waterworks_metersize` (`objid`, `title`) VALUES ('THREE_FOURTH_INCH', '3/4"');
INSERT INTO `waterworks_metersize` (`objid`, `title`) VALUES ('THREE_INCH', '3"');
INSERT INTO `waterworks_metersize` (`objid`, `title`) VALUES ('TWO_INCH', '2"');

