/*
 Navicat Premium Data Transfer

 Source Server         : etracs-mysql
 Source Server Type    : MySQL
 Source Server Version : 50640
 Source Host           : localhost:3306
 Source Schema         : tagbilaran_waterworks

 Target Server Type    : MySQL
 Target Server Version : 50640
 File Encoding         : 65001

 Date: 17/01/2020 15:18:10
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_email_template
-- ----------------------------
DROP TABLE IF EXISTS `sys_email_template`;
CREATE TABLE `sys_email_template` (
  `objid` varchar(50) NOT NULL,
  `message` mediumtext,
  PRIMARY KEY (`objid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_rule
-- ----------------------------
DROP TABLE IF EXISTS `sys_rule`;
CREATE TABLE `sys_rule` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(25) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `ruleset` varchar(50) NOT NULL,
  `rulegroup` varchar(50) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `description` longtext,
  `salience` int(11) DEFAULT NULL,
  `effectivefrom` date DEFAULT NULL,
  `effectiveto` date DEFAULT NULL,
  `dtfiled` datetime DEFAULT NULL,
  `user_objid` varchar(50) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `noloop` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `ix_rulegroup_ruleset` (`rulegroup`,`ruleset`) USING BTREE,
  KEY `ix_ruleset` (`ruleset`) USING BTREE,
  CONSTRAINT `fk_sys_rule_rulegroup_ruleset` FOREIGN KEY (`rulegroup`, `ruleset`) REFERENCES `sys_rulegroup` (`name`, `ruleset`),
  CONSTRAINT `fk_sys_rule_ruleset` FOREIGN KEY (`ruleset`) REFERENCES `sys_ruleset` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_rule
-- ----------------------------
BEGIN;
INSERT INTO `sys_rule` VALUES ('RUL-173a0991:1688ea323e8:-7657', 'DRAFT', 'REMOVE_DISCOUNT', 'waterworksbilling', 'summary', 'REMOVE DISCOUNT', NULL, 50000, NULL, NULL, '2019-01-27 17:42:38', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL-1b141bca:163491825b0:-76c8', 'DEPLOYED', 'S11', 'waterworksbillingschedule', 'initial', 'day 11', NULL, 50000, NULL, NULL, '2018-05-10 16:19:48', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL-1b141bca:163491825b0:-7ccb', 'DEPLOYED', 'S15', 'waterworksbillingschedule', 'initial', 'day 15', NULL, 50000, NULL, NULL, '2018-05-10 16:15:36', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL-1b141bca:163491825b0:-7cdc', 'DEPLOYED', 'S14', 'waterworksbillingschedule', 'initial', 'day 14', NULL, 50000, NULL, NULL, '2018-05-10 16:15:29', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL-1b141bca:163491825b0:-7ced', 'DEPLOYED', 'S13', 'waterworksbillingschedule', 'initial', 'day 13', NULL, 50000, NULL, NULL, '2018-05-10 16:15:20', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL-1b141bca:163491825b0:-7cfe', 'DEPLOYED', 'S12', 'waterworksbillingschedule', 'initial', 'day 12', NULL, 50000, NULL, NULL, '2018-05-10 16:15:14', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL-1b141bca:163491825b0:-7d0f', 'DEPLOYED', 'S10', 'waterworksbillingschedule', 'initial', 'day 10', NULL, 50000, NULL, NULL, '2018-05-10 16:15:06', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL-1b141bca:163491825b0:-7d20', 'DEPLOYED', 'S09', 'waterworksbillingschedule', 'initial', 'day 9', NULL, 50000, NULL, NULL, '2018-05-10 16:14:58', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL-1b141bca:163491825b0:-7d31', 'DEPLOYED', 'S08', 'waterworksbillingschedule', 'initial', 'day 8', NULL, 50000, NULL, NULL, '2018-05-10 16:14:51', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL-1b141bca:163491825b0:-7d42', 'DEPLOYED', 'S07', 'waterworksbillingschedule', 'initial', 'day 7', NULL, 50000, NULL, NULL, '2018-05-10 16:14:43', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL-1b141bca:163491825b0:-7d53', 'DEPLOYED', 'S06', 'waterworksbillingschedule', 'initial', 'day 6', NULL, 50000, NULL, NULL, '2018-05-10 16:14:36', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL-1b141bca:163491825b0:-7d64', 'DEPLOYED', 'S05', 'waterworksbillingschedule', 'initial', 'day 5', NULL, 50000, NULL, NULL, '2018-05-10 16:14:27', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL-1b141bca:163491825b0:-7ddb', 'DEPLOYED', 'S04', 'waterworksbillingschedule', 'initial', 'day 4', NULL, 50000, NULL, NULL, '2018-05-10 16:13:55', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL-1b141bca:163491825b0:-7e04', 'DEPLOYED', 'S03', 'waterworksbillingschedule', 'initial', 'day 3', NULL, 50000, NULL, NULL, '2018-05-10 16:13:36', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL-1b141bca:163491825b0:-7e15', 'DEPLOYED', 'S02', 'waterworksbillingschedule', 'initial', 'day 2', NULL, 50000, NULL, NULL, '2018-05-10 16:13:26', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL-1b141bca:163491825b0:-7e43', 'DEPLOYED', 'S01', 'waterworksbillingschedule', 'initial', 'day 1', NULL, 50000, NULL, NULL, '2018-05-10 16:13:06', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL-30c89e38:16d8f56b53e:-5b57', 'DEPLOYED', 'TEMP', 'waterworksbillingschedule', 'initial', 'day 1', NULL, 50000, NULL, NULL, '2019-10-03 10:55:52', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL-316b7756:16d900d6052:-721d', 'DEPLOYED', 'PENALTY_EFFECTIVITY', 'waterworksbilling', 'initial', 'PENALTY EFFECTIVITY', NULL, 50000, NULL, NULL, '2019-10-03 13:50:23', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL-316b7756:16d900d6052:-7f24', 'DEPLOYED', 'COMPUTE_SURCHARGE', 'waterworksbilling', 'surcharge', 'COMPUTE SURCHARGE', NULL, 50000, NULL, NULL, '2019-10-03 13:38:15', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL-34fcc9d0:16348fa1256:-78df', 'DEPLOYED', 'DETERMINE_READING_DATE', 'waterworksbillingschedule', 'post-initial', 'DETERMINE_READING_DATE', NULL, 50000, NULL, NULL, '2018-05-10 15:54:59', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL-34fcc9d0:16348fa1256:-79da', 'DEPLOYED', 'DETERMINE_SCHEDULE', 'waterworksbillingschedule', 'post-initial', 'DETERMINE SCHEDULE', NULL, 100000, NULL, NULL, '2018-05-10 15:52:52', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL-41d808ec:16fa2b737d3:-7a69', 'DEPLOYED', 'CREDIT_BALANCE_MAPPING', 'waterworksbilling', 'account-mapping', 'CREDIT_BALANCE_MAPPING', NULL, 50000, NULL, NULL, '2020-01-14 15:57:05', 'USR-6bf98eba:1254696a2c9:-7ff6', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL-49040ede:16a24c0c55b:-7f39', 'DEPLOYED', 'DETERMINE_DUE_DATE_2019', 'waterworksbillingschedule', 'post-initial', 'DETERMINE DUE DATE', NULL, 1000, NULL, NULL, '2019-04-16 14:19:21', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL-54f2b5cd:167813a3810:-7b83', 'DEPLOYED', 'COMPUTATION_FOR_SENIOR', 'waterworkscomputation', 'initial', 'Computation consumption for SENIOR', NULL, 60000, NULL, NULL, '2018-12-06 10:07:59', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL273a1fe9:134951a1bcf:-3109', 'DEPLOYED', 'COMPUTATION_FOR_SUBDIVISION', 'waterworkscomputation', 'initial', 'Computation consumption for SUBDIVISION', NULL, 60000, NULL, NULL, '2018-11-24 17:05:12', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL273a1fe9:134951a1bcf:-31f7', 'DEPLOYED', 'COMPUTATION_FOR_INDUSTRIAL_BULK', 'waterworkscomputation', 'initial', 'Computation consumption for industrial and bulk', NULL, 50000, NULL, NULL, '2018-11-24 16:59:07', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL28fc614a:1674a1cf9f8:-7639', 'DEPLOYED', 'COMPUTE_UNMETERED_VOLUME', 'waterworkscomputation', 'pre-computation', 'COMPUTE_UNMETERED_VOLUME', NULL, 50000, NULL, NULL, '2018-11-25 18:11:02', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL2c46bd2e:1620eb5fe9d:-7750', 'DEPLOYED', 'DETERMINE_BILLING_DATES', 'waterworksbillingschedule', 'post-initial', 'DETERMINE BILLING DATES', NULL, 50000, NULL, NULL, '2018-03-10 15:09:14', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL2c46bd2e:1620eb5fe9d:-7ec5', 'DEPLOYED', 'DETERMINE_READING_DUE_DATE', 'waterworksbillingschedule', 'post-initial', 'DETERMINE READING DUE DATE', NULL, 50000, NULL, NULL, '2018-03-10 15:02:25', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL38ede6eb:16888143c74:-7f8c', 'APPROVED', 'COMPUTE_DISCOUNT', 'waterworksbilling', 'discount', 'compute discount', NULL, 50000, NULL, NULL, '2019-01-26 10:56:49', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL5640320c:16776fbbf58:-7f2b', 'DEPLOYED', 'S16', 'waterworksbillingschedule', 'initial', 'day 16', NULL, 50000, NULL, NULL, '2018-12-04 10:13:05', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL5b2b695a:1620ec467e4:-7b26', 'DEPLOYED', 'DETERMINE_DUE_DATE', 'waterworksbillingschedule', 'post-initial', 'DETERMINE DUE DATE', NULL, 50000, '2020-01-01', NULL, '2018-03-10 15:23:32', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL5b2b695a:1620ec467e4:-7e9b', 'DEPLOYED', 'DETERMINE_DISC_DUE_DATE', 'waterworksbillingschedule', 'post-initial', 'DETERMINE DISC DUE DATE', NULL, 50000, NULL, NULL, '2018-03-10 15:21:02', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL746193b0:1684af9777d:-7390', 'DEPLOYED', 'WATER_BILL_REMARKS', 'waterworksbilling', 'summary', 'WATER BILL REMARKS', NULL, 50000, NULL, NULL, '2019-01-14 14:19:31', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL746193b0:1684af9777d:-760b', 'DEPLOYED', 'APPLY_EXCESS_PAYMENT', 'waterworksbilling', 'payment', 'APPLY EXCESS PAYMENT', NULL, 50000, NULL, NULL, '2019-01-14 14:17:09', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL746193b0:1684af9777d:-77bd', 'DEPLOYED', 'APPLY_PAYMENT', 'waterworksbilling', 'payment', 'APPLY PAYMENT', NULL, 50000, NULL, NULL, '2019-01-14 14:16:20', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL746193b0:1684af9777d:-7901', 'DEPLOYED', 'PRIOR_SALES_MAPPING', 'waterworksbilling', 'account-mapping', 'PRIOR SALES MAPPING', NULL, 50000, NULL, NULL, '2019-01-14 14:15:12', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL746193b0:1684af9777d:-7b3e', 'DEPLOYED', 'ARREAR_SALES_MAPPING', 'waterworksbilling', 'account-mapping', 'ARREAR SALES MAPPING', NULL, 50000, NULL, NULL, '2019-01-14 14:14:05', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL746193b0:1684af9777d:-7f28', 'DEPLOYED', 'CURRENT_SALES_MAPPING', 'waterworksbilling', 'account-mapping', 'CURRENT SALES MAPPING', NULL, 50000, NULL, NULL, '2019-01-14 14:11:52', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL755ab567:1697596f447:-7f89', 'APPROVED', 'DETERMINE_DISC_DUE_DATE_2019', 'waterworksbillingschedule', 'post-initial', 'DETERMINE DISC DUE DATE', NULL, 1000, '2019-01-01', '2019-12-31', '2019-03-13 13:51:43', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RULa6b099d:eb1f3248b7:-75ed', 'DEPLOYED', 'COMPUTATION_FOR_COMMERCIAL', 'waterworkscomputation', 'initial', 'Computation consumption for COMMERCIAL', NULL, 50000, NULL, NULL, '2018-01-13 16:45:10', 'USR5dc62ef:160e9053989:-7fd2', 'CWD', 1);
INSERT INTO `sys_rule` VALUES ('RULa6b099d:eb1f3248b7:-7630', 'DEPLOYED', 'COMPUTATION_FOR_RESIDENTAIL', 'waterworkscomputation', 'initial', 'Computation consumption for RESIDENTIAL', NULL, 50000, NULL, NULL, '2018-01-13 16:44:48', 'USR5dc62ef:160e9053989:-7fd2', 'CWD', 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_rule_action
-- ----------------------------
DROP TABLE IF EXISTS `sys_rule_action`;
CREATE TABLE `sys_rule_action` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) DEFAULT NULL,
  `actiondef_objid` varchar(50) DEFAULT NULL,
  `actiondef_name` varchar(50) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `ix_parentid` (`parentid`) USING BTREE,
  KEY `ix_actiondef_objid` (`actiondef_objid`) USING BTREE,
  CONSTRAINT `fk_sys_rule_action_actiondef_objid` FOREIGN KEY (`actiondef_objid`) REFERENCES `sys_rule_actiondef` (`objid`),
  CONSTRAINT `fk_sys_rule_action_parentid` FOREIGN KEY (`parentid`) REFERENCES `sys_rule` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_rule_action
-- ----------------------------
BEGIN;
INSERT INTO `sys_rule_action` VALUES ('RA-46aa24d5:16d8f5eba6e:-7ff7', 'RUL-30c89e38:16d8f56b53e:-5b57', 'treasury.actions.AddVarInteger', 'add-var-integer', 0);
INSERT INTO `sys_rule_action` VALUES ('RA-531043eb:16fa30e5e51:-7fff', 'RUL-41d808ec:16fa2b737d3:-7a69', 'treasury.actions.SetBillItemAccount', 'set-billitem-account', 0);
INSERT INTO `sys_rule_action` VALUES ('RA-6c2874cd:160ed01f3d2:-7fc4', 'RULa6b099d:eb1f3248b7:-75ed', 'waterworks.actions.ComputeConsumption', 'compute-consumption', 0);
INSERT INTO `sys_rule_action` VALUES ('RA-6c2874cd:160ed01f3d2:-7fcb', 'RULa6b099d:eb1f3248b7:-7630', 'waterworks.actions.ComputeConsumption', 'compute-consumption', 0);
INSERT INTO `sys_rule_action` VALUES ('RA1f6e64dc:169744dfdc7:-75f8', 'RUL755ab567:1697596f447:-7f89', 'treasury.actions.AddVarDate', 'add-vardate', 0);
INSERT INTO `sys_rule_action` VALUES ('RA216faf2b:16348e519b7:-7fe5', 'RUL-34fcc9d0:16348fa1256:-79da', 'treasury.actions.AddVarDate', 'add-vardate', 0);
INSERT INTO `sys_rule_action` VALUES ('RA2f280dc1:1684ad50113:-7fd6', 'RUL746193b0:1684af9777d:-7901', 'treasury.actions.SetBillItemAccount', 'set-billitem-account', 0);
INSERT INTO `sys_rule_action` VALUES ('RA2f280dc1:1684ad50113:-7fdf', 'RUL746193b0:1684af9777d:-7b3e', 'treasury.actions.SetBillItemAccount', 'set-billitem-account', 0);
INSERT INTO `sys_rule_action` VALUES ('RA5eef7e4:16a2366d172:-74b7', 'RUL-49040ede:16a24c0c55b:-7f39', 'treasury.actions.AddVarDate', 'add-vardate', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT-173a0991:1688ea323e8:-59d0', 'RUL-173a0991:1688ea323e8:-7657', 'treasury.actions.RemoveDiscountItem', 'remove-discount', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT-18601aa3:168883a5d31:-7f27', 'RUL38ede6eb:16888143c74:-7f8c', 'treasury.actions.AddDiscountItem', 'add-discount-item', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT-21b6b0b3:16f89ad96d4:-7ac1', 'RUL-316b7756:16d900d6052:-7f24', 'treasury.actions.AddSurchargeItem', 'add-surcharge-item', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT-2ebf3254:1677d2a3a0a:-69be', 'RUL273a1fe9:134951a1bcf:-31f7', 'waterworks.actions.ComputeConsumption', 'compute-consumption', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT-316b7756:16d900d6052:-70e9', 'RUL-316b7756:16d900d6052:-721d', 'treasury.actions.AddVarDate', 'add-vardate', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT-34fcc9d0:16348fa1256:-7760', 'RUL-34fcc9d0:16348fa1256:-78df', 'treasury.actions.AddVarDate', 'add-vardate', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT-34fcc9d0:16348fa1256:-7909', 'RUL-34fcc9d0:16348fa1256:-79da', 'treasury.actions.AddVarDate', 'add-vardate', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT-54f2b5cd:167813a3810:-7973', 'RUL-54f2b5cd:167813a3810:-7b83', 'waterworks.actions.ComputeConsumption', 'compute-consumption', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT-6bdca530:16fa295b523:-7b93', 'RUL746193b0:1684af9777d:-760b', 'treasury.actions.AddCreditBillItem', 'add-credit-billitem', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT1d2a6d27:167772f1bbb:-74b2', 'RUL-1b141bca:163491825b0:-76c8', 'treasury.actions.AddVarInteger', 'add-var-integer', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT1d2a6d27:167772f1bbb:-752d', 'RUL-1b141bca:163491825b0:-7ccb', 'treasury.actions.AddVarInteger', 'add-var-integer', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT1d2a6d27:167772f1bbb:-75b7', 'RUL-1b141bca:163491825b0:-7cdc', 'treasury.actions.AddVarInteger', 'add-var-integer', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT1d2a6d27:167772f1bbb:-7646', 'RUL-1b141bca:163491825b0:-7ced', 'treasury.actions.AddVarInteger', 'add-var-integer', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT1d2a6d27:167772f1bbb:-76c1', 'RUL-1b141bca:163491825b0:-7cfe', 'treasury.actions.AddVarInteger', 'add-var-integer', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT1d2a6d27:167772f1bbb:-773c', 'RUL-1b141bca:163491825b0:-7d0f', 'treasury.actions.AddVarInteger', 'add-var-integer', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT1d2a6d27:167772f1bbb:-77cf', 'RUL-1b141bca:163491825b0:-7d20', 'treasury.actions.AddVarInteger', 'add-var-integer', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT1d2a6d27:167772f1bbb:-784a', 'RUL-1b141bca:163491825b0:-7d31', 'treasury.actions.AddVarInteger', 'add-var-integer', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT1d2a6d27:167772f1bbb:-78c1', 'RUL-1b141bca:163491825b0:-7d42', 'treasury.actions.AddVarInteger', 'add-var-integer', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT1d2a6d27:167772f1bbb:-793c', 'RUL-1b141bca:163491825b0:-7d53', 'treasury.actions.AddVarInteger', 'add-var-integer', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT1d2a6d27:167772f1bbb:-79bc', 'RUL-1b141bca:163491825b0:-7d64', 'treasury.actions.AddVarInteger', 'add-var-integer', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT1d2a6d27:167772f1bbb:-7a41', 'RUL-1b141bca:163491825b0:-7ddb', 'treasury.actions.AddVarInteger', 'add-var-integer', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT1d2a6d27:167772f1bbb:-7abd', 'RUL-1b141bca:163491825b0:-7e04', 'treasury.actions.AddVarInteger', 'add-var-integer', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT1d2a6d27:167772f1bbb:-7b4e', 'RUL-1b141bca:163491825b0:-7e15', 'treasury.actions.AddVarInteger', 'add-var-integer', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT1d2a6d27:167772f1bbb:-7bd2', 'RUL-1b141bca:163491825b0:-7e43', 'treasury.actions.AddVarInteger', 'add-var-integer', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT1d2a6d27:167772f1bbb:-7c89', 'RUL5640320c:16776fbbf58:-7f2b', 'treasury.actions.AddVarInteger', 'add-var-integer', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT273a1fe9:134951a1bcf:-2162', 'RUL273a1fe9:134951a1bcf:-3109', 'waterworks.actions.ComputeConsumption', 'compute-consumption', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT28fc614a:1674a1cf9f8:-74ef', 'RUL28fc614a:1674a1cf9f8:-7639', 'waterworks.actions.SetWaterConsumptionProperty', 'set-waterconsumpotion-property', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT2c46bd2e:1620eb5fe9d:-72d9', 'RUL2c46bd2e:1620eb5fe9d:-7750', 'treasury.actions.AddVarDate', 'add-vardate', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT2c46bd2e:1620eb5fe9d:-7a13', 'RUL2c46bd2e:1620eb5fe9d:-7ec5', 'treasury.actions.AddVarDate', 'add-vardate', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT5818723f:1684b4acf6c:-7df4', 'RUL746193b0:1684af9777d:-7390', 'treasury.actions.SetBillItemProperty', 'set-billitem-property', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT5b2b695a:1620ec467e4:-79b2', 'RUL5b2b695a:1620ec467e4:-7b26', 'treasury.actions.AddVarDate', 'add-vardate', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT5b2b695a:1620ec467e4:-7cb0', 'RUL5b2b695a:1620ec467e4:-7e9b', 'treasury.actions.AddVarDate', 'add-vardate', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT746193b0:1684af9777d:-7656', 'RUL746193b0:1684af9777d:-77bd', 'treasury.actions.ApplyPayment', 'apply-payment', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT746193b0:1684af9777d:-7bc1', 'RUL746193b0:1684af9777d:-7f28', 'treasury.actions.SetBillItemAccount', 'set-billitem-account', 0);
COMMIT;

-- ----------------------------
-- Table structure for sys_rule_action_param
-- ----------------------------
DROP TABLE IF EXISTS `sys_rule_action_param`;
CREATE TABLE `sys_rule_action_param` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) DEFAULT NULL,
  `actiondefparam_objid` varchar(100) DEFAULT NULL,
  `stringvalue` varchar(255) DEFAULT NULL,
  `booleanvalue` int(11) DEFAULT NULL,
  `var_objid` varchar(50) DEFAULT NULL,
  `var_name` varchar(50) DEFAULT NULL,
  `expr` longtext,
  `exprtype` varchar(25) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  `obj_key` varchar(50) DEFAULT NULL,
  `obj_value` varchar(255) DEFAULT NULL,
  `listvalue` longtext,
  `lov` varchar(50) DEFAULT NULL,
  `rangeoption` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `ix_parentid` (`parentid`) USING BTREE,
  KEY `ix_var_objid` (`var_objid`) USING BTREE,
  KEY `ix_actiondefparam_objid` (`actiondefparam_objid`) USING BTREE,
  CONSTRAINT `fk_sys_rule_action_param_actiondefparam_objid` FOREIGN KEY (`actiondefparam_objid`) REFERENCES `sys_rule_actiondef_param` (`objid`),
  CONSTRAINT `fk_sys_rule_action_param_parentid` FOREIGN KEY (`parentid`) REFERENCES `sys_rule_action` (`objid`),
  CONSTRAINT `fk_sys_rule_action_param_var_objid` FOREIGN KEY (`var_objid`) REFERENCES `sys_rule_condition_var` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_rule_action_param
-- ----------------------------
BEGIN;
INSERT INTO `sys_rule_action_param` VALUES ('RAP-46aa24d5:16d8f5eba6e:-7ff5', 'RA-46aa24d5:16d8f5eba6e:-7ff7', 'treasury.actions.AddVarInteger.value', NULL, NULL, NULL, NULL, '1', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RAP-46aa24d5:16d8f5eba6e:-7ff6', 'RA-46aa24d5:16d8f5eba6e:-7ff7', 'treasury.actions.AddVarInteger.tag', 'days', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RAP-531043eb:16fa30e5e51:-7ffd', 'RA-531043eb:16fa30e5e51:-7fff', 'treasury.actions.SetBillItemAccount.billitem', NULL, NULL, 'RCOND-41d808ec:16fa2b737d3:-7999', 'CBAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RAP-531043eb:16fa30e5e51:-7ffe', 'RA-531043eb:16fa30e5e51:-7fff', 'treasury.actions.SetBillItemAccount.billcode', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WATER_TAX_CREDIT', 'WATER SALES - TAX CREDIT', NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RAP1f6e64dc:169744dfdc7:-75f6', 'RA1f6e64dc:169744dfdc7:-75f8', 'treasury.actions.AddVarDate.tag', 'discdate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RAP1f6e64dc:169744dfdc7:-75f7', 'RA1f6e64dc:169744dfdc7:-75f8', 'treasury.actions.AddVarDate.date', NULL, NULL, NULL, NULL, '@DATE( 2019 , 12,  31)', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RAP2f280dc1:1684ad50113:-7fd4', 'RA2f280dc1:1684ad50113:-7fd6', 'treasury.actions.SetBillItemAccount.billitem', NULL, NULL, 'RC2f280dc1:1684ad50113:-7fdc', 'WBI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RAP2f280dc1:1684ad50113:-7fdd', 'RA2f280dc1:1684ad50113:-7fdf', 'treasury.actions.SetBillItemAccount.billitem', NULL, NULL, 'RC2f280dc1:1684ad50113:-7fe5', 'WBI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RAP5eef7e4:16a2366d172:-74b5', 'RA5eef7e4:16a2366d172:-74b7', 'treasury.actions.AddVarDate.tag', 'duedate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RAP5eef7e4:16a2366d172:-74b6', 'RA5eef7e4:16a2366d172:-74b7', 'treasury.actions.AddVarDate.date', NULL, NULL, NULL, NULL, 'def discdate = @FINDNEXTWORKDAY( @DAYADD( VARDATE, 15 ), HOLIDAYS, 1 );\nreturn @DAYADD( discdate, 5 );', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-173a0991:1688ea323e8:-59c4', 'RACT-173a0991:1688ea323e8:-59d0', 'treasury.actions.RemoveDiscountItem.billitem', NULL, NULL, 'RCOND-173a0991:1688ea323e8:-5f60', 'WBI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-18601aa3:168883a5d31:-7ecc', 'RACT-18601aa3:168883a5d31:-7f27', 'treasury.actions.AddDiscountItem.amount', NULL, NULL, NULL, NULL, 'def d = new java.text.DecimalFormat(\'0.0\').format(PRIN * 0.05); \nreturn new BigDecimal( d.toString());\n', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-18601aa3:168883a5d31:-7ef8', 'RACT-18601aa3:168883a5d31:-7f27', 'treasury.actions.AddDiscountItem.account', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ITMACCT-1f0bd8fa1d36d5ce0019084c0b40e06e', 'ICWS WATER BILL - DISCOUNT', NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-18601aa3:168883a5d31:-7f13', 'RACT-18601aa3:168883a5d31:-7f27', 'treasury.actions.AddDiscountItem.billitem', NULL, NULL, 'RCOND38ede6eb:16888143c74:-7569', 'WBI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-1e197aa1:16778a6c7e9:-78a3', 'RACT1d2a6d27:167772f1bbb:-7bd2', 'treasury.actions.AddVarInteger.tag', 'days', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-1e197aa1:16778a6c7e9:-78e1', 'RACT1d2a6d27:167772f1bbb:-7b4e', 'treasury.actions.AddVarInteger.tag', 'days', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-1e197aa1:16778a6c7e9:-791d', 'RACT1d2a6d27:167772f1bbb:-7abd', 'treasury.actions.AddVarInteger.tag', 'days', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-1e197aa1:16778a6c7e9:-7959', 'RACT1d2a6d27:167772f1bbb:-7a41', 'treasury.actions.AddVarInteger.tag', 'days', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-1e197aa1:16778a6c7e9:-79a9', 'RACT1d2a6d27:167772f1bbb:-79bc', 'treasury.actions.AddVarInteger.tag', 'days', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-1e197aa1:16778a6c7e9:-79e7', 'RACT1d2a6d27:167772f1bbb:-793c', 'treasury.actions.AddVarInteger.tag', 'days', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-1e197aa1:16778a6c7e9:-7a25', 'RACT1d2a6d27:167772f1bbb:-78c1', 'treasury.actions.AddVarInteger.tag', 'days', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-1e197aa1:16778a6c7e9:-7a63', 'RACT1d2a6d27:167772f1bbb:-784a', 'treasury.actions.AddVarInteger.tag', 'days', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-1e197aa1:16778a6c7e9:-7ab5', 'RACT1d2a6d27:167772f1bbb:-77cf', 'treasury.actions.AddVarInteger.tag', 'days', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-1e197aa1:16778a6c7e9:-7af3', 'RACT1d2a6d27:167772f1bbb:-773c', 'treasury.actions.AddVarInteger.tag', 'days', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-1e197aa1:16778a6c7e9:-7b31', 'RACT1d2a6d27:167772f1bbb:-76c1', 'treasury.actions.AddVarInteger.tag', 'days', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-1e197aa1:16778a6c7e9:-7b83', 'RACT1d2a6d27:167772f1bbb:-7646', 'treasury.actions.AddVarInteger.tag', 'days', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-1e197aa1:16778a6c7e9:-7bbf', 'RACT1d2a6d27:167772f1bbb:-75b7', 'treasury.actions.AddVarInteger.tag', 'days', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-1e197aa1:16778a6c7e9:-7bfd', 'RACT1d2a6d27:167772f1bbb:-752d', 'treasury.actions.AddVarInteger.tag', 'days', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-1e197aa1:16778a6c7e9:-7c3d', 'RACT1d2a6d27:167772f1bbb:-74b2', 'treasury.actions.AddVarInteger.tag', 'days', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-21b6b0b3:16f89ad96d4:-577e', 'RACT746193b0:1684af9777d:-7bc1', 'treasury.actions.SetBillItemAccount.billcode', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WATER_SALES', 'WATER SALES', NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-21b6b0b3:16f89ad96d4:-5811', 'RA2f280dc1:1684ad50113:-7fdf', 'treasury.actions.SetBillItemAccount.billcode', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WATER_SALES', 'WATER SALES', NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-21b6b0b3:16f89ad96d4:-58a4', 'RA2f280dc1:1684ad50113:-7fd6', 'treasury.actions.SetBillItemAccount.billcode', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WATER_SALES', 'WATER SALES', NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-21b6b0b3:16f89ad96d4:-7a32', 'RACT-21b6b0b3:16f89ad96d4:-7ac1', 'treasury.actions.AddSurchargeItem.billcode', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'REVITEM-66153714:140b876a648:-7ec9', 'ICWS WATER BILL PENALTY', NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-21b6b0b3:16f89ad96d4:-7a8a', 'RACT-21b6b0b3:16f89ad96d4:-7ac1', 'treasury.actions.AddSurchargeItem.amount', NULL, NULL, NULL, NULL, 'AMT * 0.14', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-21b6b0b3:16f89ad96d4:-7aa9', 'RACT-21b6b0b3:16f89ad96d4:-7ac1', 'treasury.actions.AddSurchargeItem.billitem', NULL, NULL, 'RCOND-316b7756:16d900d6052:-699a', 'WBI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-2ebf3254:1677d2a3a0a:-67ca', 'RACT273a1fe9:134951a1bcf:-2162', 'waterworks.actions.ComputeConsumption.amount', NULL, NULL, NULL, NULL, 'def v = VOL; \ndef cm = UNITS * 10; \ndef totals = []; \ndef n = v - cm;\nif ( n > 0) totals << (cm * 1.8);  \nelse totals << (v * 1.8); \n\nv = (n > 0 ? n : 0); n = v - cm; \nif ( n > 0) totals << (cm * 2.3);  \nelse totals << (v * 2.3); \n\nv = (n > 0 ? n : 0); n = v - cm; \nif ( n > 0) totals << (cm * 2.8);  \nelse totals << (v * 2.8); \n\nv = (n > 0 ? n : 0); n = v - cm; \nif ( n > 0) totals << (cm * 3.4);  \nelse totals << (v * 3.4); \n\nv = (n > 0 ? n : 0); \ntotals << (v > 0 ? v : 0) * 5.0; \nreturn (totals ? totals.sum{it} : 0.0); ', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-2ebf3254:1677d2a3a0a:-67f5', 'RACT273a1fe9:134951a1bcf:-2162', 'waterworks.actions.ComputeConsumption.ref', NULL, NULL, 'RC-a002ae:16744d718df:-7ff1', 'WC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-2ebf3254:1677d2a3a0a:-697d', 'RACT-2ebf3254:1677d2a3a0a:-69be', 'waterworks.actions.ComputeConsumption.amount', NULL, NULL, 'RCONST-694f3c0a:1677d756f0d:-7561', 'VOL', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"0\">\n    <tr>\n        <td colspan=\"3\">Use Variable: VOL</td>\n    </tr>\n    \n        <tr>\n            <th>Greater than</th>\n            <th>Less than or equal to</th>\n            <th>Formula</th>\n        </tr>\n    \n    \n    \n        <tr>\n            <td></td>\n            <td>10.00</td>\n            <td>192</td>\n        </tr>\n    \n        <tr>\n            <td>10.00</td>\n            <td>20.00</td>\n            <td>192 + ((VOL-10) * 6.9)</td>\n        </tr>\n    \n        <tr>\n            <td>20.00</td>\n            <td>30.00</td>\n            <td>261 + ((VOL-20) * 8.4)</td>\n        </tr>\n    \n        <tr>\n            <td>30.00</td>\n            <td>40.00</td>\n            <td>345 + ((VOL-30) * 10.2)</td>\n        </tr>\n    \n        <tr>\n            <td>40.00</td>\n            <td>50.00</td>\n            <td>447 + ((VOL-40) * 12.3)</td>\n        </tr>\n    \n        <tr>\n            <td>50.00</td>\n            <td></td>\n            <td>570 + ((VOL-50) * 15)</td>\n        </tr>\n    \n</table>', 'range', NULL, NULL, NULL, '[[to:10.00,value:\"192\",from:0],[to:20.00,value:\"192 + ((VOL-10) * 6.9)\",from:10.00],[to:30.00,value:\"261 + ((VOL-20) * 8.4)\",from:20.00],[to:40.00,value:\"345 + ((VOL-30) * 10.2)\",from:30.00],[to:50.00,value:\"447 + ((VOL-40) * 12.3)\",from:40.00],[value:\"570 + ((VOL-50) * 15)\",from:50.00]]', NULL, 1);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-2ebf3254:1677d2a3a0a:-69a8', 'RACT-2ebf3254:1677d2a3a0a:-69be', 'waterworks.actions.ComputeConsumption.ref', NULL, NULL, 'RCOND-694f3c0a:1677d756f0d:-7588', 'WC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-2ebf3254:1677d2a3a0a:-6c1f', 'RA-6c2874cd:160ed01f3d2:-7fc4', 'waterworks.actions.ComputeConsumption.amount', NULL, NULL, 'RCONST-694f3c0a:1677d756f0d:-777a', 'VOL', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"0\">\n    <tr>\n        <td colspan=\"3\">Use Variable: VOL</td>\n    </tr>\n    \n        <tr>\n            <th>Greater than</th>\n            <th>Less than or equal to</th>\n            <th>Formula</th>\n        </tr>\n    \n    \n    \n        <tr>\n            <td></td>\n            <td>10.00</td>\n            <td>40</td>\n        </tr>\n    \n        <tr>\n            <td>10.00</td>\n            <td>20.00</td>\n            <td>40 + ((VOL-10) * 4.60)</td>\n        </tr>\n    \n        <tr>\n            <td>20.00</td>\n            <td>30.00</td>\n            <td>86 + ((VOL-20) * 5.60)</td>\n        </tr>\n    \n        <tr>\n            <td>30.00</td>\n            <td>40.00</td>\n            <td>142 + ((VOL-30) * 6.80)</td>\n        </tr>\n    \n        <tr>\n            <td>40.00</td>\n            <td>50.00</td>\n            <td>210 + ((VOL-40) * 8.20)</td>\n        </tr>\n    \n        <tr>\n            <td>50.00</td>\n            <td></td>\n            <td>292 + ((VOL-50) * 10.00)</td>\n        </tr>\n    \n</table>', 'range', NULL, NULL, NULL, '[[to:10.00,value:\"40\",from:0],[to:20.00,value:\"40 + ((VOL-10) * 4.60)\",from:10.00],[to:30.00,value:\"86 + ((VOL-20) * 5.60)\",from:20.00],[to:40.00,value:\"142 + ((VOL-30) * 6.80)\",from:30.00],[to:50.00,value:\"210 + ((VOL-40) * 8.20)\",from:40.00],[value:\"292 + ((VOL-50) * 10.00)\",from:50.00]]', NULL, 1);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-2ebf3254:1677d2a3a0a:-6c4a', 'RA-6c2874cd:160ed01f3d2:-7fc4', 'waterworks.actions.ComputeConsumption.ref', NULL, NULL, 'RCOND-694f3c0a:1677d756f0d:-77aa', 'WC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-2ebf3254:1677d2a3a0a:-6ff6', 'RA-6c2874cd:160ed01f3d2:-7fcb', 'waterworks.actions.ComputeConsumption.amount', NULL, NULL, 'RCONST-2ebf3254:1677d2a3a0a:-2d16', 'VOL', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"0\">\n    <tr>\n        <td colspan=\"3\">Use Variable: VOL</td>\n    </tr>\n    \n        <tr>\n            <th>Greater than</th>\n            <th>Less than or equal to</th>\n            <th>Formula</th>\n        </tr>\n    \n    \n    \n        <tr>\n            <td></td>\n            <td>10.00</td>\n            <td>20</td>\n        </tr>\n    \n        <tr>\n            <td>10.00</td>\n            <td>20.00</td>\n            <td>20 + ((VOL-10) * 2.30)</td>\n        </tr>\n    \n        <tr>\n            <td>20.00</td>\n            <td>30.00</td>\n            <td>43 + ((VOL-20) * 2.80)</td>\n        </tr>\n    \n        <tr>\n            <td>30.00</td>\n            <td>40.00</td>\n            <td>71 + ((VOL-30) * 3.40)</td>\n        </tr>\n    \n        <tr>\n            <td>40.00</td>\n            <td>50.00</td>\n            <td>105 + ((VOL-40) * 4.10)</td>\n        </tr>\n    \n        <tr>\n            <td>50.00</td>\n            <td></td>\n            <td>146 + ((VOL-50) * 5.00)</td>\n        </tr>\n    \n</table>', 'range', NULL, NULL, NULL, '[[to:10.00,value:\"20\",from:0],[to:20.00,value:\"20 + ((VOL-10) * 2.30)\",from:10.00],[to:30.00,value:\"43 + ((VOL-20) * 2.80)\",from:20.00],[to:40.00,value:\"71 + ((VOL-30) * 3.40)\",from:30.00],[to:50.00,value:\"105 + ((VOL-40) * 4.10)\",from:40.00],[value:\"146 + ((VOL-50) * 5.00)\",from:50.00]]', NULL, 1);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-2ebf3254:1677d2a3a0a:-7006', 'RA-6c2874cd:160ed01f3d2:-7fcb', 'waterworks.actions.ComputeConsumption.ref', NULL, NULL, 'RCOND-2ebf3254:1677d2a3a0a:-2d46', 'WC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-316b7756:16d900d6052:-70c7', 'RACT-316b7756:16d900d6052:-70e9', 'treasury.actions.AddVarDate.date', NULL, NULL, NULL, NULL, '@DATE( 2019 , 10, 1 )', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-316b7756:16d900d6052:-70d9', 'RACT-316b7756:16d900d6052:-70e9', 'treasury.actions.AddVarDate.tag', 'penaltyeffectivitydate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-54f2b5cd:167813a3810:-794d', 'RACT-54f2b5cd:167813a3810:-7973', 'waterworks.actions.ComputeConsumption.amount', NULL, NULL, NULL, NULL, 'def amount = 0.0; \nif ( VOL <= 10 ) amount = 20.0;  \nelse if ( VOL <= 20 ) amount = 20.0 + ((VOL-10) * 2.30); \nelse if ( VOL <= 30 ) amount = 43.0 + ((VOL-20) * 2.80);\nelse if ( VOL <= 40 ) amount = 71.0 + ((VOL-30) * 3.40);\nelse if ( VOL <= 50 ) amount = 105.0 + ((VOL-40) * 4.10);\nelse amount = 146.0 + ((VOL-50) * 5.00); \n\ndef value = (amount > 0 ? amount * 0.80 : 0.0);\ndef bd = new java.math.BigDecimal(value.toString());\nreturn bd.setScale(1, java.math.RoundingMode.HALF_UP);', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-54f2b5cd:167813a3810:-795d', 'RACT-54f2b5cd:167813a3810:-7973', 'waterworks.actions.ComputeConsumption.ref', NULL, NULL, 'RC61484a76:167813a20bc:-7ff6', 'WC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-6bdca530:16fa295b523:-7b4d', 'RACT-6bdca530:16fa295b523:-7b93', 'treasury.actions.AddCreditBillItem.amount', NULL, NULL, NULL, NULL, 'AMT', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-6bdca530:16fa295b523:-7b7b', 'RACT-6bdca530:16fa295b523:-7b93', 'treasury.actions.AddCreditBillItem.billcode', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WATER_ADVANCE_PAYMENT', 'WATER ADVANCE PAYMENT', NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT16e4575c:1677753e95d:-7aef', 'RACT2c46bd2e:1620eb5fe9d:-7a13', 'treasury.actions.AddVarDate.date', NULL, NULL, NULL, NULL, 'def dt = VARDATE;\n(1..4).each {\n     dt =  @FINDNEXTWORKDAY(  @DAYADD(  dt, 1 ), HOLIDAYS, 1  );\n};\nreturn dt;', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT16e4575c:1677753e95d:-7b03', 'RACT2c46bd2e:1620eb5fe9d:-7a13', 'treasury.actions.AddVarDate.tag', 'readingduedate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT16e4575c:1677753e95d:-7dbc', 'RACT-34fcc9d0:16348fa1256:-7760', 'treasury.actions.AddVarDate.tag', 'readingdate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT16e4575c:1677753e95d:-7dfa', 'RACT-34fcc9d0:16348fa1256:-7760', 'treasury.actions.AddVarDate.date', NULL, NULL, NULL, NULL, 'DATE', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT1d2a6d27:167772f1bbb:-74a2', 'RACT1d2a6d27:167772f1bbb:-74b2', 'treasury.actions.AddVarInteger.value', NULL, NULL, NULL, NULL, '11', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT1d2a6d27:167772f1bbb:-751d', 'RACT1d2a6d27:167772f1bbb:-752d', 'treasury.actions.AddVarInteger.value', NULL, NULL, NULL, NULL, '15', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT1d2a6d27:167772f1bbb:-75a7', 'RACT1d2a6d27:167772f1bbb:-75b7', 'treasury.actions.AddVarInteger.value', NULL, NULL, NULL, NULL, '14', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT1d2a6d27:167772f1bbb:-7636', 'RACT1d2a6d27:167772f1bbb:-7646', 'treasury.actions.AddVarInteger.value', NULL, NULL, NULL, NULL, '13', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT1d2a6d27:167772f1bbb:-76b1', 'RACT1d2a6d27:167772f1bbb:-76c1', 'treasury.actions.AddVarInteger.value', NULL, NULL, NULL, NULL, '12', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT1d2a6d27:167772f1bbb:-772c', 'RACT1d2a6d27:167772f1bbb:-773c', 'treasury.actions.AddVarInteger.value', NULL, NULL, NULL, NULL, '10', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT1d2a6d27:167772f1bbb:-77bf', 'RACT1d2a6d27:167772f1bbb:-77cf', 'treasury.actions.AddVarInteger.value', NULL, NULL, NULL, NULL, '9', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT1d2a6d27:167772f1bbb:-783a', 'RACT1d2a6d27:167772f1bbb:-784a', 'treasury.actions.AddVarInteger.value', NULL, NULL, NULL, NULL, '8', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT1d2a6d27:167772f1bbb:-78b1', 'RACT1d2a6d27:167772f1bbb:-78c1', 'treasury.actions.AddVarInteger.value', NULL, NULL, NULL, NULL, '7', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT1d2a6d27:167772f1bbb:-792c', 'RACT1d2a6d27:167772f1bbb:-793c', 'treasury.actions.AddVarInteger.value', NULL, NULL, NULL, NULL, '6', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT1d2a6d27:167772f1bbb:-79ac', 'RACT1d2a6d27:167772f1bbb:-79bc', 'treasury.actions.AddVarInteger.value', NULL, NULL, NULL, NULL, '5', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT1d2a6d27:167772f1bbb:-7a31', 'RACT1d2a6d27:167772f1bbb:-7a41', 'treasury.actions.AddVarInteger.value', NULL, NULL, NULL, NULL, '4', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT1d2a6d27:167772f1bbb:-7aac', 'RACT1d2a6d27:167772f1bbb:-7abd', 'treasury.actions.AddVarInteger.value', NULL, NULL, NULL, NULL, '3', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT1d2a6d27:167772f1bbb:-7b3e', 'RACT1d2a6d27:167772f1bbb:-7b4e', 'treasury.actions.AddVarInteger.value', NULL, NULL, NULL, NULL, '2', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT1d2a6d27:167772f1bbb:-7bc2', 'RACT1d2a6d27:167772f1bbb:-7bd2', 'treasury.actions.AddVarInteger.value', NULL, NULL, NULL, NULL, '1', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT1d2a6d27:167772f1bbb:-7c79', 'RACT1d2a6d27:167772f1bbb:-7c89', 'treasury.actions.AddVarInteger.value', NULL, NULL, NULL, NULL, '16', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT28fc614a:1674a1cf9f8:-74a2', 'RACT28fc614a:1674a1cf9f8:-74ef', 'waterworks.actions.SetWaterConsumptionProperty.value', NULL, NULL, NULL, NULL, 'UNITS * 57', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT28fc614a:1674a1cf9f8:-74bf', 'RACT28fc614a:1674a1cf9f8:-74ef', 'waterworks.actions.SetWaterConsumptionProperty.fieldname', 'volume', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT28fc614a:1674a1cf9f8:-74da', 'RACT28fc614a:1674a1cf9f8:-74ef', 'waterworks.actions.SetWaterConsumptionProperty.item', NULL, NULL, 'RCOND28fc614a:1674a1cf9f8:-7526', 'WC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT5818723f:1684b4acf6c:-7d8c', 'RACT5818723f:1684b4acf6c:-7df4', 'treasury.actions.SetBillItemProperty.value', NULL, NULL, NULL, NULL, '@DATEFORMAT( FROMDATE , \'MMM-yyyy\' ) +\' - \'+ @DATEFORMAT( TODATE , \'MMM-yyyy\' )', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT5818723f:1684b4acf6c:-7dc5', 'RACT5818723f:1684b4acf6c:-7df4', 'treasury.actions.SetBillItemProperty.fieldname', 'remarks', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT5818723f:1684b4acf6c:-7de0', 'RACT5818723f:1684b4acf6c:-7df4', 'treasury.actions.SetBillItemProperty.billitem', NULL, NULL, 'RCOND746193b0:1684af9777d:-7303', 'WBI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT746193b0:1684af9777d:-764a', 'RACT746193b0:1684af9777d:-7656', 'treasury.actions.ApplyPayment.payment', NULL, NULL, 'RCOND746193b0:1684af9777d:-7722', 'PMT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT746193b0:1684af9777d:-7bb1', 'RACT746193b0:1684af9777d:-7bc1', 'treasury.actions.SetBillItemAccount.billitem', NULL, NULL, 'RCOND746193b0:1684af9777d:-7cee', 'WBI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACTb701e29:16777f95d74:-7380', 'RACT1d2a6d27:167772f1bbb:-7c89', 'treasury.actions.AddVarInteger.tag', 'days', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACTb701e29:16777f95d74:-740d', 'RACT-34fcc9d0:16348fa1256:-7909', 'treasury.actions.AddVarDate.date', NULL, NULL, NULL, NULL, 'def dt = @DATE( YR, MON, 1  );\nfor( int i=1; i < DAYS; i++ ) {\n     dt = @FINDNEXTWORKDAY(  @DAYADD( dt, 1 ), HOLIDAYS, 1 );\n};\nreturn dt;', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACTb701e29:16777f95d74:-7421', 'RACT-34fcc9d0:16348fa1256:-7909', 'treasury.actions.AddVarDate.tag', 'toperiod', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACTb701e29:16777f95d74:-7448', 'RA216faf2b:16348e519b7:-7fe5', 'treasury.actions.AddVarDate.date', NULL, NULL, NULL, NULL, 'def dt = @MONTHADD( @DATE( YR, MON, 1  ), -1 );\nfor( int i=1; i < DAYS; i++ ) {\n     dt = @FINDNEXTWORKDAY(  @DAYADD( dt, 1 ), HOLIDAYS, 1 );\n};\nreturn dt; ', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACTb701e29:16777f95d74:-745c', 'RA216faf2b:16348e519b7:-7fe5', 'treasury.actions.AddVarDate.tag', 'fromperiod', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACTb701e29:16777f95d74:-7827', 'RACT2c46bd2e:1620eb5fe9d:-72d9', 'treasury.actions.AddVarDate.date', NULL, NULL, NULL, NULL, 'return  VARDATE;', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACTb701e29:16777f95d74:-783b', 'RACT2c46bd2e:1620eb5fe9d:-72d9', 'treasury.actions.AddVarDate.tag', 'billingduedate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACTb701e29:16777f95d74:-7977', 'RACT5b2b695a:1620ec467e4:-7cb0', 'treasury.actions.AddVarDate.date', NULL, NULL, NULL, NULL, '@FINDNEXTWORKDAY(  @DAYADD(  VARDATE, 15 ), HOLIDAYS, 1 );', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACTb701e29:16777f95d74:-799f', 'RACT5b2b695a:1620ec467e4:-7cb0', 'treasury.actions.AddVarDate.tag', 'discdate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACTb701e29:16777f95d74:-7e32', 'RACT5b2b695a:1620ec467e4:-79b2', 'treasury.actions.AddVarDate.date', NULL, NULL, NULL, NULL, '@DAYADD(  VARDATE, 5 )', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACTb701e29:16777f95d74:-7e46', 'RACT5b2b695a:1620ec467e4:-79b2', 'treasury.actions.AddVarDate.tag', 'duedate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_rule_actiondef
-- ----------------------------
DROP TABLE IF EXISTS `sys_rule_actiondef`;
CREATE TABLE `sys_rule_actiondef` (
  `objid` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `sortorder` int(11) DEFAULT NULL,
  `actionname` varchar(50) DEFAULT NULL,
  `domain` varchar(50) DEFAULT NULL,
  `actionclass` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_rule_actiondef
-- ----------------------------
BEGIN;
INSERT INTO `sys_rule_actiondef` VALUES ('enterprise.actions.AddRequirement', 'add-requirement', 'Add Requirement', 2, 'add-requirement', 'enterprise', 'enterprise.actions.AddRequirement');
INSERT INTO `sys_rule_actiondef` VALUES ('enterprise.actions.PrintTest', 'print-test', 'Print Test', 1, 'print-test', 'ENTERPRISE', 'enterprise.actions.PrintTest');
INSERT INTO `sys_rule_actiondef` VALUES ('enterprise.actions.ThrowException', 'throw-exeception', 'Throw Exception', 1, 'throw-exeception', 'ENTERPRISE', 'enterprise.actions.ThrowException');
INSERT INTO `sys_rule_actiondef` VALUES ('treasury.actions.AddCreditBillItem', 'add-credit-billitem', 'Add Credit Bill Item', 2, 'add-credit-billitem', 'TREASURY', 'treasury.actions.AddCreditBillItem');
INSERT INTO `sys_rule_actiondef` VALUES ('treasury.actions.AddDiscountItem', 'add-discount-item', 'Add Discount', 3, 'add-discount-item', 'TREASURY', 'treasury.actions.AddDiscountItem');
INSERT INTO `sys_rule_actiondef` VALUES ('treasury.actions.AddExcessBillItem', 'add-excess-billitem', 'Add Excess Bill Item', 2, 'add-excess-billitem', 'TREASURY', 'treasury.actions.AddExcessBillItem');
INSERT INTO `sys_rule_actiondef` VALUES ('treasury.actions.AddInterestItem', 'add-interest-item', 'Add Interest', 3, 'add-interest-item', 'TREASURY', 'treasury.actions.AddInterestItem');
INSERT INTO `sys_rule_actiondef` VALUES ('treasury.actions.AddRevenueShare', 'add-share', 'Add Revenue Share', 1, 'add-share', 'TREASURY', 'treasury.actions.AddRevenueShare');
INSERT INTO `sys_rule_actiondef` VALUES ('treasury.actions.AddRevenueShareByOrg', 'add-share-by-org', 'Add Revenue Share By Org', 1, 'add-share-by-org', 'TREASURY', 'treasury.actions.AddRevenueShareByOrg');
INSERT INTO `sys_rule_actiondef` VALUES ('treasury.actions.AddSurchargeItem', 'add-surcharge-item', 'Add Surcharge', 3, 'add-surcharge-item', 'TREASURY', 'treasury.actions.AddSurchargeItem');
INSERT INTO `sys_rule_actiondef` VALUES ('treasury.actions.AddVarDate', 'add-vardate', 'Add Variable Date', 1, 'add-vardate', 'TREASURY', 'treasury.actions.AddVarDate');
INSERT INTO `sys_rule_actiondef` VALUES ('treasury.actions.AddVarDecimal', 'add-var-decimal', 'Add Var Decimal', 1, 'add-var-decimal', 'TREASURY', 'treasury.actions.AddVarDecimal');
INSERT INTO `sys_rule_actiondef` VALUES ('treasury.actions.AddVarInteger', 'add-var-integer', 'Add Var Integer', 1, 'add-var-integer', 'TREASURY', 'treasury.actions.AddVarInteger');
INSERT INTO `sys_rule_actiondef` VALUES ('treasury.actions.AddVarString', 'add-var-string', 'Add Var String', 1, 'add-var-string', 'TREASURY', 'treasury.actions.AddVarString');
INSERT INTO `sys_rule_actiondef` VALUES ('treasury.actions.ApplyPayment', 'apply-payment', 'Apply Payment', 5, 'apply-payment', 'TREASURY', 'treasury.actions.ApplyPayment');
INSERT INTO `sys_rule_actiondef` VALUES ('treasury.actions.ComputeFee', 'compute-fee', 'Compute Fee', 0, 'compute-fee', 'treasury', 'treasury.actions.ComputeFee');
INSERT INTO `sys_rule_actiondef` VALUES ('treasury.actions.RemoveDiscountItem', 'remove-discount', 'Remove Discount', 1, 'remove-discount', 'TREASURY', 'treasury.actions.RemoveDiscountItem');
INSERT INTO `sys_rule_actiondef` VALUES ('treasury.actions.SetBillItemAccount', 'set-billitem-account', 'Set Bill Item Account', 4, 'set-billitem-account', 'TREASURY', 'treasury.actions.SetBillItemAccount');
INSERT INTO `sys_rule_actiondef` VALUES ('treasury.actions.SetBillItemProperty', 'set-billitem-property', 'Set BillItem Property Value', 10, 'set-billitem-property', 'TREASURY', 'treasury.actions.SetBillItemProperty');
INSERT INTO `sys_rule_actiondef` VALUES ('waterworks.actions.AddRepeatingFee', 'add-repeating-fee', 'Add Repeating Fee', 5, 'add-repeating-fee', 'waterworks', 'waterworks.actions.AddRepeatingFee');
INSERT INTO `sys_rule_actiondef` VALUES ('waterworks.actions.AddWaterBillItem', 'add-waterbillitem', 'Add Water Bill Item', 0, 'add-waterbillitem', 'waterworks', 'waterworks.actions.AddWaterBillItem');
INSERT INTO `sys_rule_actiondef` VALUES ('waterworks.actions.AddWaterConsumption', 'add-waterconsumption', 'Add Water Consumption', 1, 'add-waterconsumption', 'WATERWORKS', 'waterworks.actions.AddWaterConsumption');
INSERT INTO `sys_rule_actiondef` VALUES ('waterworks.actions.ComputeConsumption', 'compute-consumption', 'Compute Consumption', 0, 'compute-consumption', 'waterworks', 'waterworks.actions.ComputeConsumption');
INSERT INTO `sys_rule_actiondef` VALUES ('waterworks.actions.SetBillingPeriod', 'set_billing_period', 'Set Waterworks Billing Period', 1, 'set_billing_period', 'waterworks', 'waterworks.actions.SetBillingPeriod');
INSERT INTO `sys_rule_actiondef` VALUES ('waterworks.actions.SetWaterConsumptionProperty', 'set-waterconsumpotion-property', 'Set Water Consumption Property Value', 10, 'set-waterconsumpotion-property', 'WATERWORKS', 'waterworks.actions.SetWaterConsumptionProperty');
COMMIT;

-- ----------------------------
-- Table structure for sys_rule_actiondef_param
-- ----------------------------
DROP TABLE IF EXISTS `sys_rule_actiondef_param`;
CREATE TABLE `sys_rule_actiondef_param` (
  `objid` varchar(100) NOT NULL DEFAULT '',
  `parentid` varchar(50) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `sortorder` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `datatype` varchar(50) DEFAULT NULL,
  `handler` varchar(50) DEFAULT NULL,
  `lookuphandler` varchar(50) DEFAULT NULL,
  `lookupkey` varchar(50) DEFAULT NULL,
  `lookupvalue` varchar(50) DEFAULT NULL,
  `vardatatype` varchar(50) DEFAULT NULL,
  `lovname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `ix_parentid` (`parentid`) USING BTREE,
  CONSTRAINT `fk_sys_rule_actiondef_param_parentid` FOREIGN KEY (`parentid`) REFERENCES `sys_rule_actiondef` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_rule_actiondef_param
-- ----------------------------
BEGIN;
INSERT INTO `sys_rule_actiondef_param` VALUES ('enterprise.actions.AddRequirement.message', 'enterprise.actions.AddRequirement', 'message', 2, 'Message', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('enterprise.actions.AddRequirement.reqtype', 'enterprise.actions.AddRequirement', 'reqtype', 1, 'Requirement Type', NULL, 'lookup', 'sys_requirement_type:lookup', 'code', 'title', 'string', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('enterprise.actions.AddRequirement.required', 'enterprise.actions.AddRequirement', 'required', 4, 'Required', 'boolean', 'boolean', NULL, NULL, NULL, 'boolean', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('enterprise.actions.AddRequirement.sortorder', 'enterprise.actions.AddRequirement', 'sortorder', 3, 'Sort Order', 'string', 'string', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('enterprise.actions.PrintTest.message', 'enterprise.actions.PrintTest', 'message', 1, 'Message', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('enterprise.actions.ThrowException.msg', 'enterprise.actions.ThrowException', 'msg', 1, 'Message', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddCreditBillItem.amount', 'treasury.actions.AddCreditBillItem', 'amount', 2, 'Amount', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddCreditBillItem.billcode', 'treasury.actions.AddCreditBillItem', 'billcode', 1, 'Bill code', NULL, 'lookup', 'waterworks_itemaccount:lookup', 'objid', 'title', 'string', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddCreditBillItem.reftype', 'treasury.actions.AddCreditBillItem', 'reftype', 3, 'Ref Type', 'string', 'string', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddDiscountItem.account', 'treasury.actions.AddDiscountItem', 'account', 2, 'Discount Account', NULL, 'lookup', 'revenueitem:lookup', 'objid', 'title', NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddDiscountItem.amount', 'treasury.actions.AddDiscountItem', 'amount', 3, 'Amount', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddDiscountItem.billcode', 'treasury.actions.AddDiscountItem', 'billcode', 3, 'Billcode', NULL, 'lookup', 'waterworks_itemaccount:lookup', 'objid', 'title', 'string', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddDiscountItem.billitem', 'treasury.actions.AddDiscountItem', 'billitem', 1, 'Bill Item', NULL, 'var', NULL, NULL, NULL, 'treasury.facts.AbstractBillItem', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddExcessBillItem.account', 'treasury.actions.AddExcessBillItem', 'account', 1, 'Account', NULL, 'lookup', 'revenueitem:lookup', 'objid', 'title', NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddExcessBillItem.amount', 'treasury.actions.AddExcessBillItem', 'amount', 2, 'Amount', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddInterestItem.account', 'treasury.actions.AddInterestItem', 'account', 2, 'Account', NULL, 'lookup', 'revenueitem:lookup', 'objid', 'title', 'string', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddInterestItem.amount', 'treasury.actions.AddInterestItem', 'amount', 3, 'Amount', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddInterestItem.billcode', 'treasury.actions.AddInterestItem', 'billcode', 3, 'Billcode', NULL, 'lookup', 'waterworks_itemaccount:lookup', 'objid', 'title', 'string', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddInterestItem.billitem', 'treasury.actions.AddInterestItem', 'billitem', 1, 'Bill Item', NULL, 'var', NULL, NULL, NULL, 'treasury.facts.AbstractBillItem', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddRevenueShare.amount', 'treasury.actions.AddRevenueShare', 'amount', 3, 'Amount', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddRevenueShare.payableaccount', 'treasury.actions.AddRevenueShare', 'payableaccount', 2, 'Payable Account', NULL, 'lookup', 'payableaccount:lookup', 'objid', 'title', 'string', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddRevenueShare.refitem', 'treasury.actions.AddRevenueShare', 'refitem', 1, 'Ref Item', NULL, 'var', 'revenueitem:lookup', 'objid', 'title', 'treasury.facts.AbstractBillItem', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddRevenueShareByOrg.amount', 'treasury.actions.AddRevenueShareByOrg', 'amount', 4, 'Amount', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddRevenueShareByOrg.org', 'treasury.actions.AddRevenueShareByOrg', 'org', 3, 'Org', NULL, 'var', NULL, NULL, NULL, 'enterprise.facts.Org', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddRevenueShareByOrg.payableaccount', 'treasury.actions.AddRevenueShareByOrg', 'payableaccount', 2, 'Payable Account', NULL, 'lookup', 'payableaccount:lookup', 'objid', 'title', 'string', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddRevenueShareByOrg.refitem', 'treasury.actions.AddRevenueShareByOrg', 'refitem', 1, 'Ref Item', NULL, 'var', 'revenueitem:lookup', 'objid', 'title', 'treasury.facts.AbstractBillItem', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddSurchargeItem.amount', 'treasury.actions.AddSurchargeItem', 'amount', 2, 'Amount', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddSurchargeItem.billcode', 'treasury.actions.AddSurchargeItem', 'billcode', 3, 'Bill code', NULL, 'lookup', 'waterworks_itemaccount:lookup', 'objid', 'title', 'string', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddSurchargeItem.billitem', 'treasury.actions.AddSurchargeItem', 'billitem', 1, 'Bill Item', NULL, 'var', NULL, NULL, NULL, 'treasury.facts.AbstractBillItem', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddVarDate.date', 'treasury.actions.AddVarDate', 'date', 2, 'Date', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddVarDate.tag', 'treasury.actions.AddVarDate', 'tag', 1, 'Tag', 'string', 'string', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddVarDecimal.tag', 'treasury.actions.AddVarDecimal', 'tag', 2, 'Tag', 'string', 'string', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddVarDecimal.value', 'treasury.actions.AddVarDecimal', 'value', 1, 'Value', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddVarInteger.tag', 'treasury.actions.AddVarInteger', 'tag', 2, 'Tag', 'string', 'string', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddVarInteger.value', 'treasury.actions.AddVarInteger', 'value', 1, 'Value', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddVarString.tag', 'treasury.actions.AddVarString', 'tag', 2, 'Tag', 'string', 'string', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddVarString.value', 'treasury.actions.AddVarString', 'value', 1, 'Value', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.ApplyPayment.payment', 'treasury.actions.ApplyPayment', 'payment', 1, 'Payment', NULL, 'var', NULL, NULL, NULL, 'treasury.facts.Payment', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.ComputeFee.account', 'treasury.actions.ComputeFee', 'account', 1, 'Account', NULL, 'lookup', 'revenueitem:lookup', 'objid', 'title', NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.ComputeFee.amount', 'treasury.actions.ComputeFee', 'amount', 2, 'Amount', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.ComputeFee.remarks', 'treasury.actions.ComputeFee', 'remarks', 3, 'Remarks', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.RemoveDiscountItem.billitem', 'treasury.actions.RemoveDiscountItem', 'billitem', 1, 'Bill Item', NULL, 'var', NULL, NULL, NULL, 'treasury.facts.AbstractBillItem', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.SetBillItemAccount.account', 'treasury.actions.SetBillItemAccount', 'account', 2, 'Account', NULL, 'lookup', 'revenueitem:lookup', 'objid', 'title', NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.SetBillItemAccount.billcode', 'treasury.actions.SetBillItemAccount', 'billcode', 3, 'Billcode', NULL, 'lookup', 'waterworks_itemaccount:lookup', 'objid', 'title', 'string', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.SetBillItemAccount.billitem', 'treasury.actions.SetBillItemAccount', 'billitem', 1, 'Bill Item', NULL, 'var', NULL, NULL, NULL, 'treasury.facts.AbstractBillItem', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.SetBillItemProperty.billitem', 'treasury.actions.SetBillItemProperty', 'billitem', 1, 'Bill Item', NULL, 'var', NULL, NULL, NULL, 'treasury.facts.AbstractBillItem', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.SetBillItemProperty.fieldname', 'treasury.actions.SetBillItemProperty', 'fieldname', 2, 'Property Field Name', NULL, 'fieldlist', NULL, 'billitem', NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.SetBillItemProperty.value', 'treasury.actions.SetBillItemProperty', 'value', 3, 'Value', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('waterworks.actions.AddRepeatingFee.account', 'waterworks.actions.AddRepeatingFee', 'account', 1, 'Account', NULL, 'lookup', 'revenueitem:lookup', 'objid', 'title', NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('waterworks.actions.AddRepeatingFee.amount', 'waterworks.actions.AddRepeatingFee', 'amount', 2, 'Amount', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('waterworks.actions.AddRepeatingFee.remarks', 'waterworks.actions.AddRepeatingFee', 'remarks', 3, 'Remarks', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('waterworks.actions.AddWaterBillItem.amount', 'waterworks.actions.AddWaterBillItem', 'amount', 5, 'Amount', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('waterworks.actions.AddWaterBillItem.month', 'waterworks.actions.AddWaterBillItem', 'month', 2, 'Month', NULL, 'var', NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('waterworks.actions.AddWaterBillItem.refid', 'waterworks.actions.AddWaterBillItem', 'refid', 3, 'Ref', NULL, 'var', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('waterworks.actions.AddWaterBillItem.txntype', 'waterworks.actions.AddWaterBillItem', 'txntype', 4, 'Txn Type', NULL, 'lookup', 'waterworks_txntype:lookup', 'objid', 'title', NULL, 'WATERWORKS_TXNTYPE');
INSERT INTO `sys_rule_actiondef_param` VALUES ('waterworks.actions.AddWaterBillItem.year', 'waterworks.actions.AddWaterBillItem', 'year', 1, 'Year', NULL, 'var', NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('waterworks.actions.AddWaterConsumption.volume', 'waterworks.actions.AddWaterConsumption', 'volume', 1, 'Volume', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('waterworks.actions.ComputeConsumption.amount', 'waterworks.actions.ComputeConsumption', 'amount', 1, 'Amount', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('waterworks.actions.ComputeConsumption.ref', 'waterworks.actions.ComputeConsumption', 'ref', 2, 'Ref', NULL, 'var', NULL, NULL, NULL, 'waterworks.facts.WaterConsumption', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('waterworks.actions.SetBillingPeriod.period', 'waterworks.actions.SetBillingPeriod', 'period', 1, 'Period', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('waterworks.actions.SetWaterConsumptionProperty.fieldname', 'waterworks.actions.SetWaterConsumptionProperty', 'fieldname', 2, 'Property Field Name', 'string', 'string', NULL, 'waterworks.facts.WaterConsumption', NULL, 'string', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('waterworks.actions.SetWaterConsumptionProperty.item', 'waterworks.actions.SetWaterConsumptionProperty', 'item', 1, 'Item', NULL, 'var', NULL, NULL, NULL, 'waterworks.facts.WaterConsumption', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('waterworks.actions.SetWaterConsumptionProperty.value', 'waterworks.actions.SetWaterConsumptionProperty', 'value', 3, 'Value', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_rule_condition
-- ----------------------------
DROP TABLE IF EXISTS `sys_rule_condition`;
CREATE TABLE `sys_rule_condition` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) DEFAULT NULL,
  `fact_name` varchar(50) DEFAULT NULL,
  `fact_objid` varchar(50) DEFAULT NULL,
  `varname` varchar(50) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  `ruletext` longtext,
  `displaytext` longtext,
  `dynamic_datatype` varchar(50) DEFAULT NULL,
  `dynamic_key` varchar(50) DEFAULT NULL,
  `dynamic_value` varchar(50) DEFAULT NULL,
  `notexist` int(11) NOT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `ix_fact_objid` (`fact_objid`) USING BTREE,
  KEY `ix_parentid` (`parentid`) USING BTREE,
  CONSTRAINT `fk_sys_rule_condition_fact_objid` FOREIGN KEY (`fact_objid`) REFERENCES `sys_rule_fact` (`objid`),
  CONSTRAINT `fk_sys_rule_condition_parentid` FOREIGN KEY (`parentid`) REFERENCES `sys_rule` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_rule_condition
-- ----------------------------
BEGIN;
INSERT INTO `sys_rule_condition` VALUES ('RC-46aa24d5:16d8f5eba6e:-7ff9', 'RUL-30c89e38:16d8f56b53e:-5b57', 'waterworks.facts.WaterBlockSchedule', 'waterworks.facts.WaterBlockSchedule', 'WBS', 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC-6c2874cd:160ed01f3d2:-7fc6', 'RULa6b099d:eb1f3248b7:-75ed', 'wateraccount', 'waterworks.facts.WaterAccount', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC-6c2874cd:160ed01f3d2:-7fcf', 'RULa6b099d:eb1f3248b7:-7630', 'wateraccount', 'waterworks.facts.WaterAccount', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC-a002ae:16744d718df:-7ff1', 'RUL273a1fe9:134951a1bcf:-3109', 'WaterConsumption', 'waterworks.facts.WaterConsumption', 'WC', 1, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC-a002ae:16744d718df:-7ff7', 'RUL273a1fe9:134951a1bcf:-31f7', 'wateraccount', 'waterworks.facts.WaterAccount', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC-c4c94d7:16d900ad4ab:-7ff5', 'RUL-316b7756:16d900d6052:-7f24', 'com.rameses.rules.common.CurrentDate', 'com.rameses.rules.common.CurrentDate', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC1f6e64dc:169744dfdc7:-75fb', 'RUL755ab567:1697596f447:-7f89', 'treasury.facts.VarDate', 'treasury.facts.VarDate', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC1f6e64dc:169744dfdc7:-75fc', 'RUL755ab567:1697596f447:-7f89', 'treasury.facts.HolidayFact', 'treasury.facts.HolidayFact', 'HOLIDAYS', 1, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC216faf2b:16348e519b7:-7f9b', 'RUL-1b141bca:163491825b0:-76c8', 'waterworks.facts.WaterBlockSchedule', 'waterworks.facts.WaterBlockSchedule', 'WBS', 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC216faf2b:16348e519b7:-7fa0', 'RUL-1b141bca:163491825b0:-7ccb', 'waterworks.facts.WaterBlockSchedule', 'waterworks.facts.WaterBlockSchedule', 'WBS', 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC216faf2b:16348e519b7:-7fa5', 'RUL-1b141bca:163491825b0:-7cdc', 'waterworks.facts.WaterBlockSchedule', 'waterworks.facts.WaterBlockSchedule', 'WBS', 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC216faf2b:16348e519b7:-7faa', 'RUL-1b141bca:163491825b0:-7ced', 'waterworks.facts.WaterBlockSchedule', 'waterworks.facts.WaterBlockSchedule', 'WBS', 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC216faf2b:16348e519b7:-7faf', 'RUL-1b141bca:163491825b0:-7cfe', 'waterworks.facts.WaterBlockSchedule', 'waterworks.facts.WaterBlockSchedule', 'WBS', 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC216faf2b:16348e519b7:-7fb4', 'RUL-1b141bca:163491825b0:-7d0f', 'waterworks.facts.WaterBlockSchedule', 'waterworks.facts.WaterBlockSchedule', 'WBS', 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC216faf2b:16348e519b7:-7fb9', 'RUL-1b141bca:163491825b0:-7d20', 'waterworks.facts.WaterBlockSchedule', 'waterworks.facts.WaterBlockSchedule', 'WBS', 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC216faf2b:16348e519b7:-7fbe', 'RUL-1b141bca:163491825b0:-7d31', 'waterworks.facts.WaterBlockSchedule', 'waterworks.facts.WaterBlockSchedule', 'WBS', 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC216faf2b:16348e519b7:-7fc3', 'RUL-1b141bca:163491825b0:-7d42', 'waterworks.facts.WaterBlockSchedule', 'waterworks.facts.WaterBlockSchedule', 'WBS', 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC216faf2b:16348e519b7:-7fc8', 'RUL-1b141bca:163491825b0:-7d53', 'waterworks.facts.WaterBlockSchedule', 'waterworks.facts.WaterBlockSchedule', 'WBS', 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC216faf2b:16348e519b7:-7fcd', 'RUL-1b141bca:163491825b0:-7d64', 'waterworks.facts.WaterBlockSchedule', 'waterworks.facts.WaterBlockSchedule', 'WBS', 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC216faf2b:16348e519b7:-7fd2', 'RUL-1b141bca:163491825b0:-7ddb', 'waterworks.facts.WaterBlockSchedule', 'waterworks.facts.WaterBlockSchedule', 'WBS', 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC216faf2b:16348e519b7:-7fd7', 'RUL-1b141bca:163491825b0:-7e04', 'waterworks.facts.WaterBlockSchedule', 'waterworks.facts.WaterBlockSchedule', 'WBS', 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC216faf2b:16348e519b7:-7fdc', 'RUL-1b141bca:163491825b0:-7e15', 'waterworks.facts.WaterBlockSchedule', 'waterworks.facts.WaterBlockSchedule', 'WBS', 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC216faf2b:16348e519b7:-7fe1', 'RUL-1b141bca:163491825b0:-7e43', 'waterworks.facts.WaterBlockSchedule', 'waterworks.facts.WaterBlockSchedule', 'WBS', 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC216faf2b:16348e519b7:-7fe8', 'RUL-34fcc9d0:16348fa1256:-79da', 'treasury.facts.VarInteger', 'treasury.facts.VarInteger', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC216faf2b:16348e519b7:-7fe9', 'RUL-34fcc9d0:16348fa1256:-79da', 'treasury.facts.HolidayFact', 'treasury.facts.HolidayFact', 'HOLIDAYS', 1, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC216faf2b:16348e519b7:-7fec', 'RUL-34fcc9d0:16348fa1256:-79da', 'treasury.facts.BillingPeriod', 'treasury.facts.BillingPeriod', 'BILLPER', 2, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC2f280dc1:1684ad50113:-7fd9', 'RUL746193b0:1684af9777d:-7901', 'com.rameses.rules.common.CurrentDate', 'com.rameses.rules.common.CurrentDate', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC2f280dc1:1684ad50113:-7fdc', 'RUL746193b0:1684af9777d:-7901', 'waterworks.facts.WaterBillItem', 'waterworks.facts.WaterBillItem', 'WBI', 1, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC2f280dc1:1684ad50113:-7fe2', 'RUL746193b0:1684af9777d:-7b3e', 'com.rameses.rules.common.CurrentDate', 'com.rameses.rules.common.CurrentDate', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC2f280dc1:1684ad50113:-7fe5', 'RUL746193b0:1684af9777d:-7b3e', 'waterworks.facts.WaterBillItem', 'waterworks.facts.WaterBillItem', 'WBI', 1, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC5eef7e4:16a2366d172:-74ba', 'RUL-49040ede:16a24c0c55b:-7f39', 'treasury.facts.VarDate', 'treasury.facts.VarDate', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC61484a76:167813a20bc:-7ff6', 'RUL-54f2b5cd:167813a3810:-7b83', 'waterworks.facts.WaterConsumption', 'waterworks.facts.WaterConsumption', 'WC', 2, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC61484a76:167813a20bc:-7ff8', 'RUL-54f2b5cd:167813a3810:-7b83', 'wateraccount', 'waterworks.facts.WaterAccount', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND-173a0991:1688ea323e8:-5f60', 'RUL-173a0991:1688ea323e8:-7657', 'waterworks.facts.WaterBillItem', 'waterworks.facts.WaterBillItem', 'WBI', 1, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND-18601aa3:168883a5d31:-511a', 'RUL38ede6eb:16888143c74:-7f8c', 'waterworks.facts.WaterBillItem', 'waterworks.facts.WaterBillItem', '', 3, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_rule_condition` VALUES ('RCOND-2ebf3254:1677d2a3a0a:-2d46', 'RULa6b099d:eb1f3248b7:-7630', 'waterworks.facts.WaterConsumption', 'waterworks.facts.WaterConsumption', 'WC', 2, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND-316b7756:16d900d6052:-699a', 'RUL-316b7756:16d900d6052:-7f24', 'waterworks.facts.WaterBillItem', 'waterworks.facts.WaterBillItem', 'WBI', 2, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND-316b7756:16d900d6052:-6e48', 'RUL-316b7756:16d900d6052:-7f24', 'treasury.facts.VarDate', 'treasury.facts.VarDate', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND-316b7756:16d900d6052:-7167', 'RUL-316b7756:16d900d6052:-721d', 'com.rameses.rules.common.CurrentDate', 'com.rameses.rules.common.CurrentDate', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND-34fcc9d0:16348fa1256:-7896', 'RUL-34fcc9d0:16348fa1256:-78df', 'treasury.facts.VarDate', 'treasury.facts.VarDate', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND-41d808ec:16fa2b737d3:-7999', 'RUL-41d808ec:16fa2b737d3:-7a69', 'treasury.facts.CreditBalanceBillItem', 'treasury.facts.CreditBalanceBillItem', 'CBAL', 1, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND-49040ede:16a24c0c55b:-7e5e', 'RUL-49040ede:16a24c0c55b:-7f39', 'treasury.facts.HolidayFact', 'treasury.facts.HolidayFact', 'HOLIDAYS', 1, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND-54f2b5cd:167813a3810:-7ad9', 'RUL-54f2b5cd:167813a3810:-7b83', 'waterworks.facts.WaterworksAttribute', 'waterworks.facts.WaterworksAttribute', NULL, 2, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND-694f3c0a:1677d756f0d:-7588', 'RUL273a1fe9:134951a1bcf:-31f7', 'waterworks.facts.WaterConsumption', 'waterworks.facts.WaterConsumption', 'WC', 2, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND-694f3c0a:1677d756f0d:-77aa', 'RULa6b099d:eb1f3248b7:-75ed', 'waterworks.facts.WaterConsumption', 'waterworks.facts.WaterConsumption', 'WC', 2, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND1d2a6d27:167772f1bbb:-7cf8', 'RUL5640320c:16776fbbf58:-7f2b', 'waterworks.facts.WaterBlockSchedule', 'waterworks.facts.WaterBlockSchedule', 'WBS', 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND273a1fe9:134951a1bcf:-2f23', 'RUL273a1fe9:134951a1bcf:-3109', 'waterworks.facts.WaterworksAttribute', 'waterworks.facts.WaterworksAttribute', NULL, 2, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND273a1fe9:134951a1bcf:-2fb2', 'RUL273a1fe9:134951a1bcf:-3109', 'waterworks.facts.WaterAccount', 'waterworks.facts.WaterAccount', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND28fc614a:1674a1cf9f8:-7526', 'RUL28fc614a:1674a1cf9f8:-7639', 'waterworks.facts.WaterConsumption', 'waterworks.facts.WaterConsumption', 'WC', 1, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND28fc614a:1674a1cf9f8:-7601', 'RUL28fc614a:1674a1cf9f8:-7639', 'waterworks.facts.WaterAccount', 'waterworks.facts.WaterAccount', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND2c46bd2e:1620eb5fe9d:-7538', 'RUL2c46bd2e:1620eb5fe9d:-7750', 'treasury.facts.HolidayFact', 'treasury.facts.HolidayFact', 'HOLIDAYS', 1, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND2c46bd2e:1620eb5fe9d:-76c7', 'RUL2c46bd2e:1620eb5fe9d:-7750', 'treasury.facts.VarDate', 'treasury.facts.VarDate', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND2c46bd2e:1620eb5fe9d:-788f', 'RUL2c46bd2e:1620eb5fe9d:-7ec5', 'treasury.facts.HolidayFact', 'treasury.facts.HolidayFact', 'HOLIDAYS', 1, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND2c46bd2e:1620eb5fe9d:-7b90', 'RUL2c46bd2e:1620eb5fe9d:-7ec5', 'treasury.facts.VarDate', 'treasury.facts.VarDate', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND38ede6eb:16888143c74:-7569', 'RUL38ede6eb:16888143c74:-7f8c', 'waterworks.facts.WaterBillItem', 'waterworks.facts.WaterBillItem', 'WBI', 2, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND38ede6eb:16888143c74:-7a1c', 'RUL38ede6eb:16888143c74:-7f8c', 'com.rameses.rules.common.CurrentDate', 'com.rameses.rules.common.CurrentDate', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND38ede6eb:16888143c74:-7caf', 'RUL38ede6eb:16888143c74:-7f8c', 'treasury.facts.CashReceipt', 'treasury.facts.CashReceipt', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND5b2b695a:1620ec467e4:-7a9c', 'RUL5b2b695a:1620ec467e4:-7b26', 'treasury.facts.VarDate', 'treasury.facts.VarDate', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND5b2b695a:1620ec467e4:-7d04', 'RUL5b2b695a:1620ec467e4:-7e9b', 'treasury.facts.HolidayFact', 'treasury.facts.HolidayFact', 'HOLIDAYS', 1, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND5b2b695a:1620ec467e4:-7e12', 'RUL5b2b695a:1620ec467e4:-7e9b', 'treasury.facts.VarDate', 'treasury.facts.VarDate', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND746193b0:1684af9777d:-7303', 'RUL746193b0:1684af9777d:-7390', 'waterworks.facts.WaterBillItem', 'waterworks.facts.WaterBillItem', 'WBI', 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND746193b0:1684af9777d:-7548', 'RUL746193b0:1684af9777d:-760b', 'treasury.facts.ExcessPayment', 'treasury.facts.ExcessPayment', 'EXPMT', 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND746193b0:1684af9777d:-7722', 'RUL746193b0:1684af9777d:-77bd', 'treasury.facts.Payment', 'treasury.facts.Payment', 'PMT', 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND746193b0:1684af9777d:-7cee', 'RUL746193b0:1684af9777d:-7f28', 'waterworks.facts.WaterBillItem', 'waterworks.facts.WaterBillItem', 'WBI', 1, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND746193b0:1684af9777d:-7ec3', 'RUL746193b0:1684af9777d:-7f28', 'com.rameses.rules.common.CurrentDate', 'com.rameses.rules.common.CurrentDate', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0);
COMMIT;

-- ----------------------------
-- Table structure for sys_rule_condition_constraint
-- ----------------------------
DROP TABLE IF EXISTS `sys_rule_condition_constraint`;
CREATE TABLE `sys_rule_condition_constraint` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) DEFAULT NULL,
  `field_objid` varchar(100) DEFAULT NULL,
  `fieldname` varchar(50) DEFAULT NULL,
  `varname` varchar(50) DEFAULT NULL,
  `operator_caption` varchar(50) DEFAULT NULL,
  `operator_symbol` varchar(50) DEFAULT NULL,
  `usevar` int(11) DEFAULT NULL,
  `var_objid` varchar(50) DEFAULT NULL,
  `var_name` varchar(50) DEFAULT NULL,
  `decimalvalue` decimal(16,2) DEFAULT NULL,
  `intvalue` int(11) DEFAULT NULL,
  `stringvalue` varchar(255) DEFAULT NULL,
  `listvalue` longtext,
  `datevalue` date DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `ix_parentid` (`parentid`) USING BTREE,
  KEY `ix_var_objid` (`var_objid`) USING BTREE,
  KEY `ix_field_objid` (`field_objid`) USING BTREE,
  CONSTRAINT `fk_sys_rule_condition_constraint_field_objid` FOREIGN KEY (`field_objid`) REFERENCES `sys_rule_fact_field` (`objid`),
  CONSTRAINT `fk_sys_rule_condition_constraint_parentid` FOREIGN KEY (`parentid`) REFERENCES `sys_rule_condition` (`objid`),
  CONSTRAINT `fk_sys_rule_condition_constraint_var_objid` FOREIGN KEY (`var_objid`) REFERENCES `sys_rule_condition_var` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_rule_condition_constraint
-- ----------------------------
BEGIN;
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC-46aa24d5:16d8f5eba6e:-7ff8', 'RC-46aa24d5:16d8f5eba6e:-7ff9', 'waterworks.facts.WaterBlockSchedule.id', 'id', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"TEMP\",value:\"TEMP\"]]', NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC-6c2874cd:160ed01f3d2:-7fc5', 'RC-6c2874cd:160ed01f3d2:-7fc6', 'waterworks.facts.WaterAccount.classification', 'classification', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"COMMERCIAL\",value:\"COMMERCIAL\"]]', NULL, 1);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC-6c2874cd:160ed01f3d2:-7fce', 'RC-6c2874cd:160ed01f3d2:-7fcf', 'waterworks.facts.WaterAccount.classification', 'classification', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"RESIDENTIAL\",value:\"RESIDENTIAL\"],[key:\"GOVERNMENT\",value:\"GOVERNMENT\"]]', NULL, 1);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC-a002ae:16744d718df:-7ff6', 'RC-a002ae:16744d718df:-7ff7', 'waterworks.facts.WaterAccount.classification', 'classification', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"INDUSTRIAL\",value:\"INDUSTRIAL\"],[key:\"BULK\",value:\"BULK\"]]', NULL, 1);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC-c4c94d7:16d900ad4ab:-7ff4', 'RC-c4c94d7:16d900ad4ab:-7ff5', 'com.rameses.rules.common.CurrentDate.date', 'date', 'CDATE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC1f6e64dc:169744dfdc7:-75f9', 'RC1f6e64dc:169744dfdc7:-75fb', 'treasury.facts.VarDate.tag', 'tag', NULL, 'equal to', '==', NULL, NULL, NULL, NULL, NULL, 'billingduedate', NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC1f6e64dc:169744dfdc7:-75fa', 'RC1f6e64dc:169744dfdc7:-75fb', 'treasury.facts.VarDate.date', 'date', 'VARDATE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC216faf2b:16348e519b7:-7f9a', 'RC216faf2b:16348e519b7:-7f9b', 'waterworks.facts.WaterBlockSchedule.id', 'id', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"S11\",value:\"S11\"]]', NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC216faf2b:16348e519b7:-7f9f', 'RC216faf2b:16348e519b7:-7fa0', 'waterworks.facts.WaterBlockSchedule.id', 'id', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"S15\",value:\"S15\"]]', NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC216faf2b:16348e519b7:-7fa4', 'RC216faf2b:16348e519b7:-7fa5', 'waterworks.facts.WaterBlockSchedule.id', 'id', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"S14\",value:\"S14\"]]', NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC216faf2b:16348e519b7:-7fa9', 'RC216faf2b:16348e519b7:-7faa', 'waterworks.facts.WaterBlockSchedule.id', 'id', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"S13\",value:\"S13\"]]', NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC216faf2b:16348e519b7:-7fae', 'RC216faf2b:16348e519b7:-7faf', 'waterworks.facts.WaterBlockSchedule.id', 'id', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"S12\",value:\"S12\"]]', NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC216faf2b:16348e519b7:-7fb3', 'RC216faf2b:16348e519b7:-7fb4', 'waterworks.facts.WaterBlockSchedule.id', 'id', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"S10\",value:\"S10\"]]', NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC216faf2b:16348e519b7:-7fb8', 'RC216faf2b:16348e519b7:-7fb9', 'waterworks.facts.WaterBlockSchedule.id', 'id', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"S09\",value:\"S09\"]]', NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC216faf2b:16348e519b7:-7fbd', 'RC216faf2b:16348e519b7:-7fbe', 'waterworks.facts.WaterBlockSchedule.id', 'id', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"S08\",value:\"S08\"]]', NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC216faf2b:16348e519b7:-7fc2', 'RC216faf2b:16348e519b7:-7fc3', 'waterworks.facts.WaterBlockSchedule.id', 'id', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"S07\",value:\"S07\"]]', NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC216faf2b:16348e519b7:-7fc7', 'RC216faf2b:16348e519b7:-7fc8', 'waterworks.facts.WaterBlockSchedule.id', 'id', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"S06\",value:\"S06\"]]', NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC216faf2b:16348e519b7:-7fcc', 'RC216faf2b:16348e519b7:-7fcd', 'waterworks.facts.WaterBlockSchedule.id', 'id', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"S05\",value:\"S05\"]]', NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC216faf2b:16348e519b7:-7fd1', 'RC216faf2b:16348e519b7:-7fd2', 'waterworks.facts.WaterBlockSchedule.id', 'id', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"S04\",value:\"S04\"]]', NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC216faf2b:16348e519b7:-7fd6', 'RC216faf2b:16348e519b7:-7fd7', 'waterworks.facts.WaterBlockSchedule.id', 'id', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"S03\",value:\"S03\"]]', NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC216faf2b:16348e519b7:-7fdb', 'RC216faf2b:16348e519b7:-7fdc', 'waterworks.facts.WaterBlockSchedule.id', 'id', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"S02\",value:\"S02\"]]', NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC216faf2b:16348e519b7:-7fe0', 'RC216faf2b:16348e519b7:-7fe1', 'waterworks.facts.WaterBlockSchedule.id', 'id', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"S1\",value:\"S1\"]]', NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC2f280dc1:1684ad50113:-7fd7', 'RC2f280dc1:1684ad50113:-7fd9', 'com.rameses.rules.common.CurrentDate.year', 'year', 'YR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC2f280dc1:1684ad50113:-7fd8', 'RC2f280dc1:1684ad50113:-7fd9', 'com.rameses.rules.common.CurrentDate.month', 'month', 'MON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC2f280dc1:1684ad50113:-7fda', 'RC2f280dc1:1684ad50113:-7fdc', 'waterworks.facts.WaterBillItem.year', 'year', NULL, 'equal to', '==', 1, 'RCC2f280dc1:1684ad50113:-7fd7', 'YR', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC2f280dc1:1684ad50113:-7fdb', 'RC2f280dc1:1684ad50113:-7fdc', 'waterworks.facts.WaterBillItem.month', 'month', NULL, 'less than', '<', 1, 'RCC2f280dc1:1684ad50113:-7fd8', 'MON', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC2f280dc1:1684ad50113:-7fe0', 'RC2f280dc1:1684ad50113:-7fe2', 'com.rameses.rules.common.CurrentDate.year', 'year', 'YR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC2f280dc1:1684ad50113:-7fe3', 'RC2f280dc1:1684ad50113:-7fe5', 'waterworks.facts.WaterBillItem.year', 'year', NULL, 'less than', '<', 1, 'RCC2f280dc1:1684ad50113:-7fe0', 'YR', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC5eef7e4:16a2366d172:-74b8', 'RC5eef7e4:16a2366d172:-74ba', 'treasury.facts.VarDate.date', 'date', 'VARDATE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC5eef7e4:16a2366d172:-74b9', 'RC5eef7e4:16a2366d172:-74ba', 'treasury.facts.VarDate.tag', 'tag', NULL, 'equal to', '==', NULL, NULL, NULL, NULL, NULL, 'billingduedate', NULL, NULL, 1);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC61484a76:167813a20bc:-7ff5', 'RC61484a76:167813a20bc:-7ff6', 'waterworks.facts.WaterConsumption.volume', 'volume', 'VOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC61484a76:167813a20bc:-7ff7', 'RC61484a76:167813a20bc:-7ff8', 'waterworks.facts.WaterAccount.classification', 'classification', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"RESIDENTIAL\",value:\"RESIDENTIAL\"]]', NULL, 1);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-173a0991:1688ea323e8:-5eb9', 'RCOND-173a0991:1688ea323e8:-5f60', 'waterworks.facts.WaterBillItem.partialunpaid', 'partialunpaid', 'PU', 'greater than', '>', NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-18601aa3:168883a5d31:-50c3', 'RCOND-18601aa3:168883a5d31:-511a', 'waterworks.facts.WaterBillItem.duedate', 'duedate', NULL, 'before', '<', 1, 'RCONST38ede6eb:16888143c74:-79ef', 'CURRDATE', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-2ebf3254:1677d2a3a0a:-2d16', 'RCOND-2ebf3254:1677d2a3a0a:-2d46', 'waterworks.facts.WaterConsumption.volume', 'volume', 'VOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-2ebf3254:1677d2a3a0a:-6881', 'RC-a002ae:16744d718df:-7ff1', 'waterworks.facts.WaterConsumption.volume', 'volume', 'VOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-316b7756:16d900d6052:-6869', 'RCOND-316b7756:16d900d6052:-699a', 'waterworks.facts.WaterBillItem.duedate', 'duedate', NULL, 'before', '<', 1, 'RCC-c4c94d7:16d900ad4ab:-7ff4', 'CDATE', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-316b7756:16d900d6052:-68eb', 'RCOND-316b7756:16d900d6052:-699a', 'waterworks.facts.WaterBillItem.duedate', 'duedate', NULL, 'on or after', '>=', 1, 'RCONST-316b7756:16d900d6052:-6d92', 'PEDATE', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-316b7756:16d900d6052:-6952', 'RCOND-316b7756:16d900d6052:-699a', 'waterworks.facts.WaterBillItem.amount', 'amount', 'AMT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-316b7756:16d900d6052:-6d92', 'RCOND-316b7756:16d900d6052:-6e48', 'treasury.facts.VarDate.date', 'date', 'PEDATE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-316b7756:16d900d6052:-6dca', 'RCOND-316b7756:16d900d6052:-6e48', 'treasury.facts.VarDate.tag', 'tag', NULL, 'equal to', '==', NULL, NULL, NULL, NULL, NULL, 'penaltyeffectivitydate', NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-54f2b5cd:167813a3810:-7ac9', 'RCOND-54f2b5cd:167813a3810:-7ad9', 'waterworks.facts.WaterworksAttribute.name', 'name', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"SENIOR\",value:\"SENIOR CITIZEN\"]]', NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-694f3c0a:1677d756f0d:-7561', 'RCOND-694f3c0a:1677d756f0d:-7588', 'waterworks.facts.WaterConsumption.volume', 'volume', 'VOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-694f3c0a:1677d756f0d:-777a', 'RCOND-694f3c0a:1677d756f0d:-77aa', 'waterworks.facts.WaterConsumption.volume', 'volume', 'VOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST16e4575c:1677753e95d:-7b90', 'RCOND2c46bd2e:1620eb5fe9d:-7b90', 'treasury.facts.VarDate.tag', 'tag', NULL, 'equal to', '==', NULL, NULL, NULL, NULL, NULL, 'readingdate', NULL, NULL, 1);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST16e4575c:1677753e95d:-7c90', 'RCOND2c46bd2e:1620eb5fe9d:-7b90', 'treasury.facts.VarDate.date', 'date', 'VARDATE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST16e4575c:1677753e95d:-7eb5', 'RCOND-34fcc9d0:16348fa1256:-7896', 'treasury.facts.VarDate.tag', 'tag', NULL, 'equal to', '==', NULL, NULL, NULL, NULL, NULL, 'toperiod', NULL, NULL, 1);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST16e4575c:1677753e95d:-7f40', 'RCOND-34fcc9d0:16348fa1256:-7896', 'treasury.facts.VarDate.date', 'date', 'DATE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST1d2a6d27:167772f1bbb:-7ce8', 'RCOND1d2a6d27:167772f1bbb:-7cf8', 'waterworks.facts.WaterBlockSchedule.id', 'id', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"S16\",value:\"S16\"]]', NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST273a1fe9:134951a1bcf:-2f13', 'RCOND273a1fe9:134951a1bcf:-2f23', 'waterworks.facts.WaterworksAttribute.name', 'name', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"SUBDIVISION\",value:\"SUBDIVISION\"]]', NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST273a1fe9:134951a1bcf:-2f64', 'RCOND273a1fe9:134951a1bcf:-2fb2', 'waterworks.facts.WaterAccount.units', 'units', 'UNITS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST28fc614a:1674a1cf9f8:-7582', 'RCOND28fc614a:1674a1cf9f8:-7601', 'waterworks.facts.WaterAccount.metered', 'metered', NULL, 'not true', '== false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST28fc614a:1674a1cf9f8:-75cf', 'RCOND28fc614a:1674a1cf9f8:-7601', 'waterworks.facts.WaterAccount.units', 'units', 'UNITS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST38ede6eb:16888143c74:-70f9', 'RCOND38ede6eb:16888143c74:-7569', 'waterworks.facts.WaterBillItem.principal', 'principal', 'PRIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST38ede6eb:16888143c74:-74b1', 'RCOND38ede6eb:16888143c74:-7569', 'waterworks.facts.WaterBillItem.amount', 'amount', 'AMT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST38ede6eb:16888143c74:-7514', 'RCOND38ede6eb:16888143c74:-7569', 'waterworks.facts.WaterBillItem.duedate', 'duedate', NULL, 'on or after', '>=', 1, 'RCONST38ede6eb:16888143c74:-79ef', 'CURRDATE', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST38ede6eb:16888143c74:-79ef', 'RCOND38ede6eb:16888143c74:-7a1c', 'com.rameses.rules.common.CurrentDate.date', 'date', 'CURRDATE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST746193b0:1684af9777d:-690d', 'RCOND746193b0:1684af9777d:-7303', 'waterworks.facts.WaterBillItem.todate', 'todate', 'TODATE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST746193b0:1684af9777d:-6993', 'RCOND746193b0:1684af9777d:-7303', 'waterworks.facts.WaterBillItem.fromdate', 'fromdate', 'FROMDATE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST746193b0:1684af9777d:-7538', 'RCOND746193b0:1684af9777d:-7548', 'treasury.facts.ExcessPayment.amount', 'amount', 'AMT', 'greater than', '>', NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST746193b0:1684af9777d:-76ec', 'RCOND746193b0:1684af9777d:-7722', 'treasury.facts.Payment.amount', 'amount', NULL, 'greater than', '>', NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST746193b0:1684af9777d:-7cb7', 'RCOND746193b0:1684af9777d:-7cee', 'waterworks.facts.WaterBillItem.year', 'year', NULL, 'equal to', '==', 1, 'RCONST746193b0:1684af9777d:-7e9a', 'YR', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST746193b0:1684af9777d:-7e58', 'RCOND746193b0:1684af9777d:-7ec3', 'com.rameses.rules.common.CurrentDate.month', 'month', 'MON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST746193b0:1684af9777d:-7e9a', 'RCOND746193b0:1684af9777d:-7ec3', 'com.rameses.rules.common.CurrentDate.year', 'year', 'YR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONSTb701e29:16777f95d74:-7139', 'RC216faf2b:16348e519b7:-7fe8', 'treasury.facts.VarInteger.tag', 'tag', NULL, 'equal to', '==', NULL, NULL, NULL, NULL, NULL, 'days', NULL, NULL, 1);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONSTb701e29:16777f95d74:-716a', 'RC216faf2b:16348e519b7:-7fe8', 'treasury.facts.VarInteger.value', 'value', 'DAYS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONSTb701e29:16777f95d74:-7538', 'RC216faf2b:16348e519b7:-7fec', 'treasury.facts.BillingPeriod.year', 'year', 'YR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONSTb701e29:16777f95d74:-7573', 'RC216faf2b:16348e519b7:-7fec', 'treasury.facts.BillingPeriod.month', 'month', 'MON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONSTb701e29:16777f95d74:-78c2', 'RCOND2c46bd2e:1620eb5fe9d:-76c7', 'treasury.facts.VarDate.date', 'date', 'VARDATE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONSTb701e29:16777f95d74:-78f1', 'RCOND2c46bd2e:1620eb5fe9d:-76c7', 'treasury.facts.VarDate.tag', 'tag', NULL, 'equal to', '==', NULL, NULL, NULL, NULL, NULL, 'readingduedate', NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONSTb701e29:16777f95d74:-7a26', 'RCOND5b2b695a:1620ec467e4:-7e12', 'treasury.facts.VarDate.date', 'date', 'VARDATE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONSTb701e29:16777f95d74:-7a5b', 'RCOND5b2b695a:1620ec467e4:-7e12', 'treasury.facts.VarDate.tag', 'tag', NULL, 'equal to', '==', NULL, NULL, NULL, NULL, NULL, 'billingduedate', NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONSTb701e29:16777f95d74:-7dce', 'RCOND5b2b695a:1620ec467e4:-7a9c', 'treasury.facts.VarDate.tag', 'tag', NULL, 'equal to', '==', NULL, NULL, NULL, NULL, NULL, 'discdate', NULL, NULL, 1);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONSTb701e29:16777f95d74:-7eb1', 'RCOND5b2b695a:1620ec467e4:-7a9c', 'treasury.facts.VarDate.date', 'date', 'VARDATE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
COMMIT;

-- ----------------------------
-- Table structure for sys_rule_condition_var
-- ----------------------------
DROP TABLE IF EXISTS `sys_rule_condition_var`;
CREATE TABLE `sys_rule_condition_var` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) DEFAULT NULL,
  `ruleid` varchar(50) DEFAULT NULL,
  `varname` varchar(50) DEFAULT NULL,
  `datatype` varchar(50) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `ix_parentid` (`parentid`) USING BTREE,
  CONSTRAINT `fk_sys_rule_condition_var_parentid` FOREIGN KEY (`parentid`) REFERENCES `sys_rule_condition` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_rule_condition_var
-- ----------------------------
BEGIN;
INSERT INTO `sys_rule_condition_var` VALUES ('RC-46aa24d5:16d8f5eba6e:-7ff9', 'RC-46aa24d5:16d8f5eba6e:-7ff9', 'RUL-30c89e38:16d8f56b53e:-5b57', 'WBS', 'waterworks.facts.WaterBlockSchedule', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RC-a002ae:16744d718df:-7ff1', 'RC-a002ae:16744d718df:-7ff1', 'RUL273a1fe9:134951a1bcf:-3109', 'WC', 'waterworks.facts.WaterConsumption', 1);
INSERT INTO `sys_rule_condition_var` VALUES ('RC1f6e64dc:169744dfdc7:-75fc', 'RC1f6e64dc:169744dfdc7:-75fc', 'RUL755ab567:1697596f447:-7f89', 'HOLIDAYS', 'treasury.facts.HolidayFact', 1);
INSERT INTO `sys_rule_condition_var` VALUES ('RC216faf2b:16348e519b7:-7f9b', 'RC216faf2b:16348e519b7:-7f9b', 'RUL-1b141bca:163491825b0:-76c8', 'WBS', 'waterworks.facts.WaterBlockSchedule', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RC216faf2b:16348e519b7:-7fa0', 'RC216faf2b:16348e519b7:-7fa0', 'RUL-1b141bca:163491825b0:-7ccb', 'WBS', 'waterworks.facts.WaterBlockSchedule', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RC216faf2b:16348e519b7:-7fa5', 'RC216faf2b:16348e519b7:-7fa5', 'RUL-1b141bca:163491825b0:-7cdc', 'WBS', 'waterworks.facts.WaterBlockSchedule', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RC216faf2b:16348e519b7:-7faa', 'RC216faf2b:16348e519b7:-7faa', 'RUL-1b141bca:163491825b0:-7ced', 'WBS', 'waterworks.facts.WaterBlockSchedule', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RC216faf2b:16348e519b7:-7faf', 'RC216faf2b:16348e519b7:-7faf', 'RUL-1b141bca:163491825b0:-7cfe', 'WBS', 'waterworks.facts.WaterBlockSchedule', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RC216faf2b:16348e519b7:-7fb4', 'RC216faf2b:16348e519b7:-7fb4', 'RUL-1b141bca:163491825b0:-7d0f', 'WBS', 'waterworks.facts.WaterBlockSchedule', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RC216faf2b:16348e519b7:-7fb9', 'RC216faf2b:16348e519b7:-7fb9', 'RUL-1b141bca:163491825b0:-7d20', 'WBS', 'waterworks.facts.WaterBlockSchedule', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RC216faf2b:16348e519b7:-7fbe', 'RC216faf2b:16348e519b7:-7fbe', 'RUL-1b141bca:163491825b0:-7d31', 'WBS', 'waterworks.facts.WaterBlockSchedule', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RC216faf2b:16348e519b7:-7fc3', 'RC216faf2b:16348e519b7:-7fc3', 'RUL-1b141bca:163491825b0:-7d42', 'WBS', 'waterworks.facts.WaterBlockSchedule', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RC216faf2b:16348e519b7:-7fc8', 'RC216faf2b:16348e519b7:-7fc8', 'RUL-1b141bca:163491825b0:-7d53', 'WBS', 'waterworks.facts.WaterBlockSchedule', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RC216faf2b:16348e519b7:-7fcd', 'RC216faf2b:16348e519b7:-7fcd', 'RUL-1b141bca:163491825b0:-7d64', 'WBS', 'waterworks.facts.WaterBlockSchedule', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RC216faf2b:16348e519b7:-7fd2', 'RC216faf2b:16348e519b7:-7fd2', 'RUL-1b141bca:163491825b0:-7ddb', 'WBS', 'waterworks.facts.WaterBlockSchedule', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RC216faf2b:16348e519b7:-7fd7', 'RC216faf2b:16348e519b7:-7fd7', 'RUL-1b141bca:163491825b0:-7e04', 'WBS', 'waterworks.facts.WaterBlockSchedule', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RC216faf2b:16348e519b7:-7fdc', 'RC216faf2b:16348e519b7:-7fdc', 'RUL-1b141bca:163491825b0:-7e15', 'WBS', 'waterworks.facts.WaterBlockSchedule', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RC216faf2b:16348e519b7:-7fe1', 'RC216faf2b:16348e519b7:-7fe1', 'RUL-1b141bca:163491825b0:-7e43', 'WBS', 'waterworks.facts.WaterBlockSchedule', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RC216faf2b:16348e519b7:-7fe9', 'RC216faf2b:16348e519b7:-7fe9', 'RUL-34fcc9d0:16348fa1256:-79da', 'HOLIDAYS', 'treasury.facts.HolidayFact', 1);
INSERT INTO `sys_rule_condition_var` VALUES ('RC216faf2b:16348e519b7:-7fec', 'RC216faf2b:16348e519b7:-7fec', 'RUL-34fcc9d0:16348fa1256:-79da', 'BILLPER', 'treasury.facts.BillingPeriod', 2);
INSERT INTO `sys_rule_condition_var` VALUES ('RC2f280dc1:1684ad50113:-7fdc', 'RC2f280dc1:1684ad50113:-7fdc', 'RUL746193b0:1684af9777d:-7901', 'WBI', 'waterworks.facts.WaterBillItem', 1);
INSERT INTO `sys_rule_condition_var` VALUES ('RC2f280dc1:1684ad50113:-7fe5', 'RC2f280dc1:1684ad50113:-7fe5', 'RUL746193b0:1684af9777d:-7b3e', 'WBI', 'waterworks.facts.WaterBillItem', 1);
INSERT INTO `sys_rule_condition_var` VALUES ('RC61484a76:167813a20bc:-7ff6', 'RC61484a76:167813a20bc:-7ff6', 'RUL-54f2b5cd:167813a3810:-7b83', 'WC', 'waterworks.facts.WaterConsumption', 2);
INSERT INTO `sys_rule_condition_var` VALUES ('RCC-c4c94d7:16d900ad4ab:-7ff4', 'RC-c4c94d7:16d900ad4ab:-7ff5', 'RUL-316b7756:16d900d6052:-7f24', 'CDATE', 'date', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCC1f6e64dc:169744dfdc7:-75fa', 'RC1f6e64dc:169744dfdc7:-75fb', 'RUL755ab567:1697596f447:-7f89', 'VARDATE', 'date', 1);
INSERT INTO `sys_rule_condition_var` VALUES ('RCC2f280dc1:1684ad50113:-7fd7', 'RC2f280dc1:1684ad50113:-7fd9', 'RUL746193b0:1684af9777d:-7901', 'YR', 'integer', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCC2f280dc1:1684ad50113:-7fd8', 'RC2f280dc1:1684ad50113:-7fd9', 'RUL746193b0:1684af9777d:-7901', 'MON', 'integer', 1);
INSERT INTO `sys_rule_condition_var` VALUES ('RCC2f280dc1:1684ad50113:-7fe0', 'RC2f280dc1:1684ad50113:-7fe2', 'RUL746193b0:1684af9777d:-7b3e', 'YR', 'integer', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCC5eef7e4:16a2366d172:-74b8', 'RC5eef7e4:16a2366d172:-74ba', 'RUL-49040ede:16a24c0c55b:-7f39', 'VARDATE', 'date', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCC61484a76:167813a20bc:-7ff5', 'RC61484a76:167813a20bc:-7ff6', 'RUL-54f2b5cd:167813a3810:-7b83', 'VOL', 'integer', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND-173a0991:1688ea323e8:-5f60', 'RCOND-173a0991:1688ea323e8:-5f60', 'RUL-173a0991:1688ea323e8:-7657', 'WBI', 'waterworks.facts.WaterBillItem', 1);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND-2ebf3254:1677d2a3a0a:-2d46', 'RCOND-2ebf3254:1677d2a3a0a:-2d46', 'RULa6b099d:eb1f3248b7:-7630', 'WC', 'waterworks.facts.WaterConsumption', 2);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND-316b7756:16d900d6052:-699a', 'RCOND-316b7756:16d900d6052:-699a', 'RUL-316b7756:16d900d6052:-7f24', 'WBI', 'waterworks.facts.WaterBillItem', 2);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND-41d808ec:16fa2b737d3:-7999', 'RCOND-41d808ec:16fa2b737d3:-7999', 'RUL-41d808ec:16fa2b737d3:-7a69', 'CBAL', 'treasury.facts.CreditBalanceBillItem', 1);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND-49040ede:16a24c0c55b:-7e5e', 'RCOND-49040ede:16a24c0c55b:-7e5e', 'RUL-49040ede:16a24c0c55b:-7f39', 'HOLIDAYS', 'treasury.facts.HolidayFact', 1);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND-694f3c0a:1677d756f0d:-7588', 'RCOND-694f3c0a:1677d756f0d:-7588', 'RUL273a1fe9:134951a1bcf:-31f7', 'WC', 'waterworks.facts.WaterConsumption', 2);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND-694f3c0a:1677d756f0d:-77aa', 'RCOND-694f3c0a:1677d756f0d:-77aa', 'RULa6b099d:eb1f3248b7:-75ed', 'WC', 'waterworks.facts.WaterConsumption', 2);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND1d2a6d27:167772f1bbb:-7cf8', 'RCOND1d2a6d27:167772f1bbb:-7cf8', 'RUL5640320c:16776fbbf58:-7f2b', 'WBS', 'waterworks.facts.WaterBlockSchedule', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND28fc614a:1674a1cf9f8:-7526', 'RCOND28fc614a:1674a1cf9f8:-7526', 'RUL28fc614a:1674a1cf9f8:-7639', 'WC', 'waterworks.facts.WaterConsumption', 1);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND2c46bd2e:1620eb5fe9d:-7538', 'RCOND2c46bd2e:1620eb5fe9d:-7538', 'RUL2c46bd2e:1620eb5fe9d:-7750', 'HOLIDAYS', 'treasury.facts.HolidayFact', 1);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND2c46bd2e:1620eb5fe9d:-788f', 'RCOND2c46bd2e:1620eb5fe9d:-788f', 'RUL2c46bd2e:1620eb5fe9d:-7ec5', 'HOLIDAYS', 'treasury.facts.HolidayFact', 1);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND38ede6eb:16888143c74:-7569', 'RCOND38ede6eb:16888143c74:-7569', 'RUL38ede6eb:16888143c74:-7f8c', 'WBI', 'waterworks.facts.WaterBillItem', 2);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND5b2b695a:1620ec467e4:-7d04', 'RCOND5b2b695a:1620ec467e4:-7d04', 'RUL5b2b695a:1620ec467e4:-7e9b', 'HOLIDAYS', 'treasury.facts.HolidayFact', 1);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND746193b0:1684af9777d:-7303', 'RCOND746193b0:1684af9777d:-7303', 'RUL746193b0:1684af9777d:-7390', 'WBI', 'waterworks.facts.WaterBillItem', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND746193b0:1684af9777d:-7548', 'RCOND746193b0:1684af9777d:-7548', 'RUL746193b0:1684af9777d:-760b', 'EXPMT', 'treasury.facts.ExcessPayment', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND746193b0:1684af9777d:-7722', 'RCOND746193b0:1684af9777d:-7722', 'RUL746193b0:1684af9777d:-77bd', 'PMT', 'treasury.facts.Payment', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND746193b0:1684af9777d:-7cee', 'RCOND746193b0:1684af9777d:-7cee', 'RUL746193b0:1684af9777d:-7f28', 'WBI', 'waterworks.facts.WaterBillItem', 1);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST-173a0991:1688ea323e8:-5eb9', 'RCOND-173a0991:1688ea323e8:-5f60', 'RUL-173a0991:1688ea323e8:-7657', 'PU', 'decimal', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST-2ebf3254:1677d2a3a0a:-2d16', 'RCOND-2ebf3254:1677d2a3a0a:-2d46', 'RULa6b099d:eb1f3248b7:-7630', 'VOL', 'integer', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST-2ebf3254:1677d2a3a0a:-6881', 'RC-a002ae:16744d718df:-7ff1', 'RUL273a1fe9:134951a1bcf:-3109', 'VOL', 'integer', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST-316b7756:16d900d6052:-6952', 'RCOND-316b7756:16d900d6052:-699a', 'RUL-316b7756:16d900d6052:-7f24', 'AMT', 'decimal', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST-316b7756:16d900d6052:-6d92', 'RCOND-316b7756:16d900d6052:-6e48', 'RUL-316b7756:16d900d6052:-7f24', 'PEDATE', 'date', 1);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST-694f3c0a:1677d756f0d:-7561', 'RCOND-694f3c0a:1677d756f0d:-7588', 'RUL273a1fe9:134951a1bcf:-31f7', 'VOL', 'integer', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST-694f3c0a:1677d756f0d:-777a', 'RCOND-694f3c0a:1677d756f0d:-77aa', 'RULa6b099d:eb1f3248b7:-75ed', 'VOL', 'integer', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST16e4575c:1677753e95d:-7c90', 'RCOND2c46bd2e:1620eb5fe9d:-7b90', 'RUL2c46bd2e:1620eb5fe9d:-7ec5', 'VARDATE', 'date', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST16e4575c:1677753e95d:-7f40', 'RCOND-34fcc9d0:16348fa1256:-7896', 'RUL-34fcc9d0:16348fa1256:-78df', 'DATE', 'date', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST273a1fe9:134951a1bcf:-2f64', 'RCOND273a1fe9:134951a1bcf:-2fb2', 'RUL273a1fe9:134951a1bcf:-3109', 'UNITS', 'integer', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST28fc614a:1674a1cf9f8:-75cf', 'RCOND28fc614a:1674a1cf9f8:-7601', 'RUL28fc614a:1674a1cf9f8:-7639', 'UNITS', 'integer', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST2c46bd2e:1620eb5fe9d:-7652', 'RCOND2c46bd2e:1620eb5fe9d:-76c7', 'RUL2c46bd2e:1620eb5fe9d:-7750', 'VARDATE', 'date', 1);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST2c46bd2e:1620eb5fe9d:-7aaf', 'RCOND2c46bd2e:1620eb5fe9d:-7b90', 'RUL2c46bd2e:1620eb5fe9d:-7ec5', 'VARDATE', 'date', 1);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST38ede6eb:16888143c74:-70f9', 'RCOND38ede6eb:16888143c74:-7569', 'RUL38ede6eb:16888143c74:-7f8c', 'PRIN', 'decimal', 2);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST38ede6eb:16888143c74:-74b1', 'RCOND38ede6eb:16888143c74:-7569', 'RUL38ede6eb:16888143c74:-7f8c', 'AMT', 'decimal', 1);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST38ede6eb:16888143c74:-79ef', 'RCOND38ede6eb:16888143c74:-7a1c', 'RUL38ede6eb:16888143c74:-7f8c', 'CURRDATE', 'date', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST5b2b695a:1620ec467e4:-7a3b', 'RCOND5b2b695a:1620ec467e4:-7a9c', 'RUL5b2b695a:1620ec467e4:-7b26', 'VARDATE', 'date', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST746193b0:1684af9777d:-690d', 'RCOND746193b0:1684af9777d:-7303', 'RUL746193b0:1684af9777d:-7390', 'TODATE', 'date', 1);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST746193b0:1684af9777d:-6993', 'RCOND746193b0:1684af9777d:-7303', 'RUL746193b0:1684af9777d:-7390', 'FROMDATE', 'date', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST746193b0:1684af9777d:-7538', 'RCOND746193b0:1684af9777d:-7548', 'RUL746193b0:1684af9777d:-760b', 'AMT', 'decimal', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST746193b0:1684af9777d:-7e58', 'RCOND746193b0:1684af9777d:-7ec3', 'RUL746193b0:1684af9777d:-7f28', 'MON', 'integer', 1);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST746193b0:1684af9777d:-7e9a', 'RCOND746193b0:1684af9777d:-7ec3', 'RUL746193b0:1684af9777d:-7f28', 'YR', 'integer', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONSTb701e29:16777f95d74:-716a', 'RC216faf2b:16348e519b7:-7fe8', 'RUL-34fcc9d0:16348fa1256:-79da', 'DAYS', 'integer', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONSTb701e29:16777f95d74:-7538', 'RC216faf2b:16348e519b7:-7fec', 'RUL-34fcc9d0:16348fa1256:-79da', 'YR', 'integer', 1);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONSTb701e29:16777f95d74:-7573', 'RC216faf2b:16348e519b7:-7fec', 'RUL-34fcc9d0:16348fa1256:-79da', 'MON', 'integer', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONSTb701e29:16777f95d74:-7a26', 'RCOND5b2b695a:1620ec467e4:-7e12', 'RUL5b2b695a:1620ec467e4:-7e9b', 'VARDATE', 'date', 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_rule_deployed
-- ----------------------------
DROP TABLE IF EXISTS `sys_rule_deployed`;
CREATE TABLE `sys_rule_deployed` (
  `objid` varchar(50) NOT NULL,
  `ruletext` longtext,
  PRIMARY KEY (`objid`) USING BTREE,
  CONSTRAINT `fk_sys_rule_deployed_objid` FOREIGN KEY (`objid`) REFERENCES `sys_rule` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_rule_deployed
-- ----------------------------
BEGIN;
INSERT INTO `sys_rule_deployed` VALUES ('RUL-1b141bca:163491825b0:-76c8', '\npackage waterworksbillingschedule.S11;\nimport waterworksbillingschedule.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"S11\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		WBS: waterworks.facts.WaterBlockSchedule (  id matches \"S11\" ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"WBS\", WBS );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"value\", (new ActionExpression(\"11\", bindings)) );\n_p0.put( \"tag\", \"days\" );\naction.execute( \"add-var-integer\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL-1b141bca:163491825b0:-7ccb', '\npackage waterworksbillingschedule.S15;\nimport waterworksbillingschedule.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"S15\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		WBS: waterworks.facts.WaterBlockSchedule (  id matches \"S15\" ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"WBS\", WBS );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"value\", (new ActionExpression(\"15\", bindings)) );\n_p0.put( \"tag\", \"days\" );\naction.execute( \"add-var-integer\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL-1b141bca:163491825b0:-7cdc', '\npackage waterworksbillingschedule.S14;\nimport waterworksbillingschedule.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"S14\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		WBS: waterworks.facts.WaterBlockSchedule (  id matches \"S14\" ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"WBS\", WBS );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"value\", (new ActionExpression(\"14\", bindings)) );\n_p0.put( \"tag\", \"days\" );\naction.execute( \"add-var-integer\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL-1b141bca:163491825b0:-7ced', '\npackage waterworksbillingschedule.S13;\nimport waterworksbillingschedule.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"S13\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		WBS: waterworks.facts.WaterBlockSchedule (  id matches \"S13\" ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"WBS\", WBS );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"value\", (new ActionExpression(\"13\", bindings)) );\n_p0.put( \"tag\", \"days\" );\naction.execute( \"add-var-integer\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL-1b141bca:163491825b0:-7cfe', '\npackage waterworksbillingschedule.S12;\nimport waterworksbillingschedule.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"S12\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		WBS: waterworks.facts.WaterBlockSchedule (  id matches \"S12\" ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"WBS\", WBS );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"value\", (new ActionExpression(\"12\", bindings)) );\n_p0.put( \"tag\", \"days\" );\naction.execute( \"add-var-integer\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL-1b141bca:163491825b0:-7d0f', '\npackage waterworksbillingschedule.S10;\nimport waterworksbillingschedule.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"S10\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		WBS: waterworks.facts.WaterBlockSchedule (  id matches \"S10\" ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"WBS\", WBS );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"value\", (new ActionExpression(\"10\", bindings)) );\n_p0.put( \"tag\", \"days\" );\naction.execute( \"add-var-integer\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL-1b141bca:163491825b0:-7d20', '\npackage waterworksbillingschedule.S09;\nimport waterworksbillingschedule.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"S09\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		WBS: waterworks.facts.WaterBlockSchedule (  id matches \"S09\" ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"WBS\", WBS );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"value\", (new ActionExpression(\"9\", bindings)) );\n_p0.put( \"tag\", \"days\" );\naction.execute( \"add-var-integer\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL-1b141bca:163491825b0:-7d31', '\npackage waterworksbillingschedule.S08;\nimport waterworksbillingschedule.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"S08\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		WBS: waterworks.facts.WaterBlockSchedule (  id matches \"S08\" ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"WBS\", WBS );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"value\", (new ActionExpression(\"8\", bindings)) );\n_p0.put( \"tag\", \"days\" );\naction.execute( \"add-var-integer\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL-1b141bca:163491825b0:-7d42', '\npackage waterworksbillingschedule.S07;\nimport waterworksbillingschedule.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"S07\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		WBS: waterworks.facts.WaterBlockSchedule (  id matches \"S07\" ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"WBS\", WBS );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"value\", (new ActionExpression(\"7\", bindings)) );\n_p0.put( \"tag\", \"days\" );\naction.execute( \"add-var-integer\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL-1b141bca:163491825b0:-7d53', '\npackage waterworksbillingschedule.S06;\nimport waterworksbillingschedule.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"S06\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		WBS: waterworks.facts.WaterBlockSchedule (  id matches \"S06\" ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"WBS\", WBS );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"value\", (new ActionExpression(\"6\", bindings)) );\n_p0.put( \"tag\", \"days\" );\naction.execute( \"add-var-integer\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL-1b141bca:163491825b0:-7d64', '\npackage waterworksbillingschedule.S05;\nimport waterworksbillingschedule.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"S05\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		WBS: waterworks.facts.WaterBlockSchedule (  id matches \"S05\" ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"WBS\", WBS );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"value\", (new ActionExpression(\"5\", bindings)) );\n_p0.put( \"tag\", \"days\" );\naction.execute( \"add-var-integer\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL-1b141bca:163491825b0:-7ddb', '\npackage waterworksbillingschedule.S04;\nimport waterworksbillingschedule.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"S04\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		WBS: waterworks.facts.WaterBlockSchedule (  id matches \"S04\" ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"WBS\", WBS );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"value\", (new ActionExpression(\"4\", bindings)) );\n_p0.put( \"tag\", \"days\" );\naction.execute( \"add-var-integer\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL-1b141bca:163491825b0:-7e04', '\npackage waterworksbillingschedule.S03;\nimport waterworksbillingschedule.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"S03\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		WBS: waterworks.facts.WaterBlockSchedule (  id matches \"S03\" ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"WBS\", WBS );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"value\", (new ActionExpression(\"3\", bindings)) );\n_p0.put( \"tag\", \"days\" );\naction.execute( \"add-var-integer\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL-1b141bca:163491825b0:-7e15', '\npackage waterworksbillingschedule.S02;\nimport waterworksbillingschedule.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"S02\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		WBS: waterworks.facts.WaterBlockSchedule (  id matches \"S02\" ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"WBS\", WBS );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"value\", (new ActionExpression(\"2\", bindings)) );\n_p0.put( \"tag\", \"days\" );\naction.execute( \"add-var-integer\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL-1b141bca:163491825b0:-7e43', '\npackage waterworksbillingschedule.S01;\nimport waterworksbillingschedule.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"S01\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		WBS: waterworks.facts.WaterBlockSchedule (  id matches \"S1\" ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"WBS\", WBS );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"value\", (new ActionExpression(\"1\", bindings)) );\n_p0.put( \"tag\", \"days\" );\naction.execute( \"add-var-integer\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL-30c89e38:16d8f56b53e:-5b57', '\npackage waterworksbillingschedule.TEMP;\nimport waterworksbillingschedule.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"TEMP\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		WBS: waterworks.facts.WaterBlockSchedule (  id matches \"TEMP\" ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"WBS\", WBS );\n		\n	Map _p0 = new HashMap();\r\n_p0.put( \"value\", (new ActionExpression(\"1\", bindings)) );\r\n_p0.put( \"tag\", \"days\" );\r\naction.execute( \"add-var-integer\",_p0,drools);\r\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL-316b7756:16d900d6052:-721d', '\npackage waterworksbilling.PENALTY_EFFECTIVITY;\nimport waterworksbilling.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"PENALTY_EFFECTIVITY\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		 com.rameses.rules.common.CurrentDate (   ) \n		\n	then\n		Map bindings = new HashMap();\n		\n	Map _p0 = new HashMap();\r\n_p0.put( \"tag\", \"penaltyeffectivitydate\" );\r\n_p0.put( \"date\", (new ActionExpression(\"@DATE( 2019 , 10, 1 )\", bindings)) );\r\naction.execute( \"add-vardate\",_p0,drools);\r\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL-316b7756:16d900d6052:-7f24', '\npackage waterworksbilling.COMPUTE_SURCHARGE;\nimport waterworksbilling.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"COMPUTE_SURCHARGE\"\n	agenda-group \"surcharge\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		 com.rameses.rules.common.CurrentDate (  CDATE:date ) \n		\n		 treasury.facts.VarDate (  tag == \"penaltyeffectivitydate\",PEDATE:date ) \n		\n		WBI: waterworks.facts.WaterBillItem (  AMT:amount,duedate >= PEDATE,duedate < CDATE ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"CDATE\", CDATE );\n		\n		bindings.put(\"AMT\", AMT );\n		\n		bindings.put(\"PEDATE\", PEDATE );\n		\n		bindings.put(\"WBI\", WBI );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"billitem\", WBI );\n_p0.put( \"amount\", (new ActionExpression(\"AMT * 0.14\", bindings)) );\n_p0.put( \"billcode\", new KeyValue(\"REVITEM-66153714:140b876a648:-7ec9\", \"ICWS WATER BILL PENALTY\") );\naction.execute( \"add-surcharge-item\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL-34fcc9d0:16348fa1256:-78df', '\npackage waterworksbillingschedule.DETERMINE_READING_DATE;\nimport waterworksbillingschedule.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"DETERMINE_READING_DATE\"\n	agenda-group \"post-initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		 treasury.facts.VarDate (  DATE:date,tag == \"toperiod\" ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"DATE\", DATE );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"tag\", \"readingdate\" );\n_p0.put( \"date\", (new ActionExpression(\"DATE\", bindings)) );\naction.execute( \"add-vardate\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL-34fcc9d0:16348fa1256:-79da', '\npackage waterworksbillingschedule.DETERMINE_SCHEDULE;\nimport waterworksbillingschedule.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"DETERMINE_SCHEDULE\"\n	agenda-group \"post-initial\"\n	salience 100000\n	no-loop\n	when\n		\n		\n		 treasury.facts.VarInteger (  DAYS:value,tag == \"days\" ) \n		\n		HOLIDAYS: treasury.facts.HolidayFact (   ) \n		\n		BILLPER: treasury.facts.BillingPeriod (  MON:month,YR:year ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"DAYS\", DAYS );\n		\n		bindings.put(\"MON\", MON );\n		\n		bindings.put(\"HOLIDAYS\", HOLIDAYS );\n		\n		bindings.put(\"YR\", YR );\n		\n		bindings.put(\"BILLPER\", BILLPER );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"tag\", \"fromperiod\" );\n_p0.put( \"date\", (new ActionExpression(\"def dt = @MONTHADD( @DATE( YR, MON, 1  ), -1 ); for( int i=1; i < DAYS; i++ ) {      dt = @FINDNEXTWORKDAY(  @DAYADD( dt, 1 ), HOLIDAYS, 1 ); }; return dt; \", bindings)) );\naction.execute( \"add-vardate\",_p0,drools);\nMap _p1 = new HashMap();\n_p1.put( \"tag\", \"toperiod\" );\n_p1.put( \"date\", (new ActionExpression(\"def dt = @DATE( YR, MON, 1  ); for( int i=1; i < DAYS; i++ ) {      dt = @FINDNEXTWORKDAY(  @DAYADD( dt, 1 ), HOLIDAYS, 1 ); }; return dt;\", bindings)) );\naction.execute( \"add-vardate\",_p1,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL-41d808ec:16fa2b737d3:-7a69', '\npackage waterworksbilling.CREDIT_BALANCE_MAPPING;\nimport waterworksbilling.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"CREDIT_BALANCE_MAPPING\"\n	agenda-group \"account-mapping\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		CBAL: treasury.facts.CreditBalanceBillItem (   ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"CBAL\", CBAL );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"billitem\", CBAL );\n_p0.put( \"billcode\", new KeyValue(\"WATER_TAX_CREDIT\", \"WATER SALES - TAX CREDIT\") );\naction.execute( \"set-billitem-account\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL-49040ede:16a24c0c55b:-7f39', '\npackage waterworksbillingschedule.DETERMINE_DUE_DATE_2019;\nimport waterworksbillingschedule.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"DETERMINE_DUE_DATE_2019\"\n	agenda-group \"post-initial\"\n	salience 1000\n	no-loop\n	when\n		\n		\n		 treasury.facts.VarDate (  VARDATE:date,tag == \"billingduedate\" ) \n		\n		HOLIDAYS: treasury.facts.HolidayFact (   ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"VARDATE\", VARDATE );\n		\n		bindings.put(\"HOLIDAYS\", HOLIDAYS );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"tag\", \"duedate\" );\n_p0.put( \"date\", (new ActionExpression(\"def discdate = @FINDNEXTWORKDAY( @DAYADD( VARDATE, 15 ), HOLIDAYS, 1 ); return @DAYADD( discdate, 5 );\", bindings)) );\naction.execute( \"add-vardate\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL-54f2b5cd:167813a3810:-7b83', '\npackage waterworkscomputation.COMPUTATION_FOR_SENIOR;\nimport waterworkscomputation.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"COMPUTATION_FOR_SENIOR\"\n	agenda-group \"initial\"\n	salience 60000\n	no-loop\n	when\n		\n		\n		 waterworks.facts.WaterAccount (  classification matches \"RESIDENTIAL\" ) \n		\n		WC: waterworks.facts.WaterConsumption (  VOL:volume ) \n		\n		 waterworks.facts.WaterworksAttribute (  name matches \"SENIOR\" ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"VOL\", VOL );\n		\n		bindings.put(\"WC\", WC );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"amount\", (new ActionExpression(\"def amount = 0.0;  if ( VOL <= 10 ) amount = 20.0;   else if ( VOL <= 20 ) amount = 20.0 + ((VOL-10) * 2.30);  else if ( VOL <= 30 ) amount = 43.0 + ((VOL-20) * 2.80); else if ( VOL <= 40 ) amount = 71.0 + ((VOL-30) * 3.40); else if ( VOL <= 50 ) amount = 105.0 + ((VOL-40) * 4.10); else amount = 146.0 + ((VOL-50) * 5.00);   def value = (amount > 0 ? amount * 0.80 : 0.0); def bd = new java.math.BigDecimal(value.toString()); return bd.setScale(1, java.math.RoundingMode.HALF_UP);\", bindings)) );\n_p0.put( \"ref\", WC );\naction.execute( \"compute-consumption\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL273a1fe9:134951a1bcf:-3109', '\npackage waterworkscomputation.COMPUTATION_FOR_SUBDIVISION;\nimport waterworkscomputation.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"COMPUTATION_FOR_SUBDIVISION\"\n	agenda-group \"initial\"\n	salience 60000\n	no-loop\n	when\n		\n		\n		WC: waterworks.facts.WaterConsumption (  VOL:volume ) \n		\n		 waterworks.facts.WaterAccount (  UNITS:units ) \n		\n		 waterworks.facts.WaterworksAttribute (  name matches \"SUBDIVISION\" ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"VOL\", VOL );\n		\n		bindings.put(\"UNITS\", UNITS );\n		\n		bindings.put(\"WC\", WC );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"amount\", (new ActionExpression(\"def v = VOL;  def cm = UNITS * 10;  def totals = [];  def n = v - cm; if ( n > 0) totals << (cm * 1.8);   else totals << (v * 1.8);   v = (n > 0 ? n : 0); n = v - cm;  if ( n > 0) totals << (cm * 2.3);   else totals << (v * 2.3);   v = (n > 0 ? n : 0); n = v - cm;  if ( n > 0) totals << (cm * 2.8);   else totals << (v * 2.8);   v = (n > 0 ? n : 0); n = v - cm;  if ( n > 0) totals << (cm * 3.4);   else totals << (v * 3.4);   v = (n > 0 ? n : 0);  totals << (v > 0 ? v : 0) * 5.0;  return (totals ? totals.sum{it} : 0.0); \", bindings)) );\n_p0.put( \"ref\", WC );\naction.execute( \"compute-consumption\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL273a1fe9:134951a1bcf:-31f7', '\npackage waterworkscomputation.COMPUTATION_FOR_INDUSTRIAL_BULK;\nimport waterworkscomputation.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"COMPUTATION_FOR_INDUSTRIAL_BULK\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		 waterworks.facts.WaterAccount (  classification matches \"INDUSTRIAL|BULK\" ) \n		\n		WC: waterworks.facts.WaterConsumption (  VOL:volume ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"VOL\", VOL );\n		\n		bindings.put(\"WC\", WC );\n		\n	RangeEntry re0 = new RangeEntry(\"COMPUTATION_FOR_INDUSTRIAL_BULK\");\nre0.setBindings(bindings);\nre0.setIntvalue(VOL);\nre0.getParams().put( \"amount\", 0.0 );\nre0.getParams().put( \"ref\", WC );\ninsert(re0);\n\nend\n\n\n	\nrule \"compute-consumption_0_0\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		\n		rv: RangeEntry( id==\"COMPUTATION_FOR_INDUSTRIAL_BULK\", intvalue <= 10.00 )\n		\n	then\n		Map bindings = rv.getBindings();\n		Map params = rv.getParams();\n		params.put( \"amount\", (new ActionExpression(\"192\", bindings)) );	\n		 \n		action.execute( \"compute-consumption\",params, drools);\nend\n\n\n	\nrule \"compute-consumption_0_1\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		rv: RangeEntry( id==\"COMPUTATION_FOR_INDUSTRIAL_BULK\", intvalue > 10.00, intvalue <= 20.00 )\n		\n		\n		\n	then\n		Map bindings = rv.getBindings();\n		Map params = rv.getParams();\n		params.put( \"amount\", (new ActionExpression(\"192 + ((VOL-10) * 6.9)\", bindings)) );	\n		 \n		action.execute( \"compute-consumption\",params, drools);\nend\n\n\n	\nrule \"compute-consumption_0_2\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		rv: RangeEntry( id==\"COMPUTATION_FOR_INDUSTRIAL_BULK\", intvalue > 20.00, intvalue <= 30.00 )\n		\n		\n		\n	then\n		Map bindings = rv.getBindings();\n		Map params = rv.getParams();\n		params.put( \"amount\", (new ActionExpression(\"261 + ((VOL-20) * 8.4)\", bindings)) );	\n		 \n		action.execute( \"compute-consumption\",params, drools);\nend\n\n\n	\nrule \"compute-consumption_0_3\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		rv: RangeEntry( id==\"COMPUTATION_FOR_INDUSTRIAL_BULK\", intvalue > 30.00, intvalue <= 40.00 )\n		\n		\n		\n	then\n		Map bindings = rv.getBindings();\n		Map params = rv.getParams();\n		params.put( \"amount\", (new ActionExpression(\"345 + ((VOL-30) * 10.2)\", bindings)) );	\n		 \n		action.execute( \"compute-consumption\",params, drools);\nend\n\n\n	\nrule \"compute-consumption_0_4\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		rv: RangeEntry( id==\"COMPUTATION_FOR_INDUSTRIAL_BULK\", intvalue > 40.00, intvalue <= 50.00 )\n		\n		\n		\n	then\n		Map bindings = rv.getBindings();\n		Map params = rv.getParams();\n		params.put( \"amount\", (new ActionExpression(\"447 + ((VOL-40) * 12.3)\", bindings)) );	\n		 \n		action.execute( \"compute-consumption\",params, drools);\nend\n\n\n	\nrule \"compute-consumption_0_5\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		rv: RangeEntry( id==\"COMPUTATION_FOR_INDUSTRIAL_BULK\", intvalue > 50.00 )\n		\n		\n	then\n		Map bindings = rv.getBindings();\n		Map params = rv.getParams();\n		params.put( \"amount\", (new ActionExpression(\"570 + ((VOL-50) * 15)\", bindings)) );	\n		 \n		action.execute( \"compute-consumption\",params, drools);\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL28fc614a:1674a1cf9f8:-7639', '\npackage waterworkscomputation.COMPUTE_UNMETERED_VOLUME;\nimport waterworkscomputation.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"COMPUTE_UNMETERED_VOLUME\"\n	agenda-group \"pre-computation\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		 waterworks.facts.WaterAccount (  UNITS:units,metered == false  ) \n		\n		WC: waterworks.facts.WaterConsumption (   ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"UNITS\", UNITS );\n		\n		bindings.put(\"WC\", WC );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"item\", WC );\n_p0.put( \"fieldname\", \"volume\" );\n_p0.put( \"value\", (new ActionExpression(\"UNITS * 57\", bindings)) );\naction.execute( \"set-waterconsumpotion-property\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL2c46bd2e:1620eb5fe9d:-7750', '\npackage waterworksbillingschedule.DETERMINE_BILLING_DATES;\nimport waterworksbillingschedule.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"DETERMINE_BILLING_DATES\"\n	agenda-group \"post-initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		 treasury.facts.VarDate (  tag == \"readingduedate\",VARDATE:date ) \n		\n		HOLIDAYS: treasury.facts.HolidayFact (   ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"HOLIDAYS\", HOLIDAYS );\n		\n		bindings.put(\"VARDATE\", VARDATE );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"tag\", \"billingduedate\" );\n_p0.put( \"date\", (new ActionExpression(\"return  VARDATE;\", bindings)) );\naction.execute( \"add-vardate\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL2c46bd2e:1620eb5fe9d:-7ec5', '\npackage waterworksbillingschedule.DETERMINE_READING_DUE_DATE;\nimport waterworksbillingschedule.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"DETERMINE_READING_DUE_DATE\"\n	agenda-group \"post-initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		 treasury.facts.VarDate (  VARDATE:date,tag == \"readingdate\" ) \n		\n		HOLIDAYS: treasury.facts.HolidayFact (   ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"VARDATE\", VARDATE );\n		\n		bindings.put(\"HOLIDAYS\", HOLIDAYS );\n		\n		bindings.put(\"VARDATE\", VARDATE );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"tag\", \"readingduedate\" );\n_p0.put( \"date\", (new ActionExpression(\"def dt = VARDATE; (1..4).each {      dt =  @FINDNEXTWORKDAY(  @DAYADD(  dt, 1 ), HOLIDAYS, 1  ); }; return dt;\", bindings)) );\naction.execute( \"add-vardate\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL5640320c:16776fbbf58:-7f2b', '\npackage waterworksbillingschedule.S16;\nimport waterworksbillingschedule.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"S16\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		WBS: waterworks.facts.WaterBlockSchedule (  id matches \"S16\" ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"WBS\", WBS );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"value\", (new ActionExpression(\"16\", bindings)) );\n_p0.put( \"tag\", \"days\" );\naction.execute( \"add-var-integer\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL5b2b695a:1620ec467e4:-7b26', '\npackage waterworksbillingschedule.DETERMINE_DUE_DATE;\nimport waterworksbillingschedule.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"DETERMINE_DUE_DATE\"\n	agenda-group \"post-initial\"\n	salience 50000\n	no-loop\n	when\n		EffectiveDate(numericDate >= 20200101)\n		\n		 treasury.facts.VarDate (  VARDATE:date,tag == \"discdate\" ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"VARDATE\", VARDATE );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"tag\", \"duedate\" );\n_p0.put( \"date\", (new ActionExpression(\"@DAYADD(  VARDATE, 5 )\", bindings)) );\naction.execute( \"add-vardate\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL5b2b695a:1620ec467e4:-7e9b', '\npackage waterworksbillingschedule.DETERMINE_DISC_DUE_DATE;\nimport waterworksbillingschedule.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"DETERMINE_DISC_DUE_DATE\"\n	agenda-group \"post-initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		 treasury.facts.VarDate (  tag == \"billingduedate\",VARDATE:date ) \n		\n		HOLIDAYS: treasury.facts.HolidayFact (   ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"HOLIDAYS\", HOLIDAYS );\n		\n		bindings.put(\"VARDATE\", VARDATE );\n		\n	Map _p0 = new HashMap();\r\n_p0.put( \"tag\", \"discdate\" );\r\n_p0.put( \"date\", (new ActionExpression(\"@FINDNEXTWORKDAY(  @DAYADD(  VARDATE, 15 ), HOLIDAYS, 1 );\", bindings)) );\r\naction.execute( \"add-vardate\",_p0,drools);\r\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL746193b0:1684af9777d:-7390', '\npackage waterworksbilling.WATER_BILL_REMARKS;\nimport waterworksbilling.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"WATER_BILL_REMARKS\"\n	agenda-group \"summary\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		WBI: waterworks.facts.WaterBillItem (  FROMDATE:fromdate,TODATE:todate ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"WBI\", WBI );\n		\n		bindings.put(\"FROMDATE\", FROMDATE );\n		\n		bindings.put(\"TODATE\", TODATE );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"billitem\", WBI );\n_p0.put( \"fieldname\", \"remarks\" );\n_p0.put( \"value\", (new ActionExpression(\"@DATEFORMAT( FROMDATE , \'MMM-yyyy\' ) +\' - \'+ @DATEFORMAT( TODATE , \'MMM-yyyy\' )\", bindings)) );\naction.execute( \"set-billitem-property\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL746193b0:1684af9777d:-760b', '\npackage waterworksbilling.APPLY_EXCESS_PAYMENT;\nimport waterworksbilling.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"APPLY_EXCESS_PAYMENT\"\n	agenda-group \"payment\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		EXPMT: treasury.facts.ExcessPayment (  AMT:amount > 0.00 ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"EXPMT\", EXPMT );\n		\n		bindings.put(\"AMT\", AMT );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"billcode\", new KeyValue(\"WATER_ADVANCE_PAYMENT\", \"WATER ADVANCE PAYMENT\") );\n_p0.put( \"amount\", (new ActionExpression(\"AMT\", bindings)) );\naction.execute( \"add-credit-billitem\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL746193b0:1684af9777d:-77bd', '\npackage waterworksbilling.APPLY_PAYMENT;\nimport waterworksbilling.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"APPLY_PAYMENT\"\n	agenda-group \"payment\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		PMT: treasury.facts.Payment (  amount > 0.00 ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"PMT\", PMT );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"payment\", PMT );\naction.execute( \"apply-payment\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL746193b0:1684af9777d:-7901', '\npackage waterworksbilling.PRIOR_SALES_MAPPING;\nimport waterworksbilling.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"PRIOR_SALES_MAPPING\"\n	agenda-group \"account-mapping\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		 com.rameses.rules.common.CurrentDate (  YR:year,MON:month ) \n		\n		WBI: waterworks.facts.WaterBillItem (  year == YR,month < MON ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"YR\", YR );\n		\n		bindings.put(\"WBI\", WBI );\n		\n		bindings.put(\"MON\", MON );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"billitem\", WBI );\n_p0.put( \"billcode\", new KeyValue(\"WATER_SALES\", \"WATER SALES\") );\naction.execute( \"set-billitem-account\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL746193b0:1684af9777d:-7b3e', '\npackage waterworksbilling.ARREAR_SALES_MAPPING;\nimport waterworksbilling.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"ARREAR_SALES_MAPPING\"\n	agenda-group \"account-mapping\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		 com.rameses.rules.common.CurrentDate (  YR:year ) \n		\n		WBI: waterworks.facts.WaterBillItem (  year < YR ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"YR\", YR );\n		\n		bindings.put(\"WBI\", WBI );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"billitem\", WBI );\n_p0.put( \"billcode\", new KeyValue(\"WATER_SALES\", \"WATER SALES\") );\naction.execute( \"set-billitem-account\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL746193b0:1684af9777d:-7f28', '\npackage waterworksbilling.CURRENT_SALES_MAPPING;\nimport waterworksbilling.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"CURRENT_SALES_MAPPING\"\n	agenda-group \"account-mapping\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		 com.rameses.rules.common.CurrentDate (  YR:year,MON:month ) \n		\n		WBI: waterworks.facts.WaterBillItem (  year == YR ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"YR\", YR );\n		\n		bindings.put(\"WBI\", WBI );\n		\n		bindings.put(\"MON\", MON );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"billitem\", WBI );\n_p0.put( \"billcode\", new KeyValue(\"WATER_SALES\", \"WATER SALES\") );\naction.execute( \"set-billitem-account\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RULa6b099d:eb1f3248b7:-75ed', '\npackage waterworkscomputation.COMPUTATION_FOR_COMMERCIAL;\nimport waterworkscomputation.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"COMPUTATION_FOR_COMMERCIAL\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		 waterworks.facts.WaterAccount (  classification matches \"COMMERCIAL\" ) \n		\n		WC: waterworks.facts.WaterConsumption (  VOL:volume ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"VOL\", VOL );\n		\n		bindings.put(\"WC\", WC );\n		\n	RangeEntry re0 = new RangeEntry(\"COMPUTATION_FOR_COMMERCIAL\");\nre0.setBindings(bindings);\nre0.setIntvalue(VOL);\nre0.getParams().put( \"amount\", 0.0 );\nre0.getParams().put( \"ref\", WC );\ninsert(re0);\n\nend\n\n\n	\nrule \"compute-consumption_0_0\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		\n		rv: RangeEntry( id==\"COMPUTATION_FOR_COMMERCIAL\", intvalue <= 10.00 )\n		\n	then\n		Map bindings = rv.getBindings();\n		Map params = rv.getParams();\n		params.put( \"amount\", (new ActionExpression(\"40\", bindings)) );	\n		 \n		action.execute( \"compute-consumption\",params, drools);\nend\n\n\n	\nrule \"compute-consumption_0_1\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		rv: RangeEntry( id==\"COMPUTATION_FOR_COMMERCIAL\", intvalue > 10.00, intvalue <= 20.00 )\n		\n		\n		\n	then\n		Map bindings = rv.getBindings();\n		Map params = rv.getParams();\n		params.put( \"amount\", (new ActionExpression(\"40 + ((VOL-10) * 4.60)\", bindings)) );	\n		 \n		action.execute( \"compute-consumption\",params, drools);\nend\n\n\n	\nrule \"compute-consumption_0_2\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		rv: RangeEntry( id==\"COMPUTATION_FOR_COMMERCIAL\", intvalue > 20.00, intvalue <= 30.00 )\n		\n		\n		\n	then\n		Map bindings = rv.getBindings();\n		Map params = rv.getParams();\n		params.put( \"amount\", (new ActionExpression(\"86 + ((VOL-20) * 5.60)\", bindings)) );	\n		 \n		action.execute( \"compute-consumption\",params, drools);\nend\n\n\n	\nrule \"compute-consumption_0_3\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		rv: RangeEntry( id==\"COMPUTATION_FOR_COMMERCIAL\", intvalue > 30.00, intvalue <= 40.00 )\n		\n		\n		\n	then\n		Map bindings = rv.getBindings();\n		Map params = rv.getParams();\n		params.put( \"amount\", (new ActionExpression(\"142 + ((VOL-30) * 6.80)\", bindings)) );	\n		 \n		action.execute( \"compute-consumption\",params, drools);\nend\n\n\n	\nrule \"compute-consumption_0_4\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		rv: RangeEntry( id==\"COMPUTATION_FOR_COMMERCIAL\", intvalue > 40.00, intvalue <= 50.00 )\n		\n		\n		\n	then\n		Map bindings = rv.getBindings();\n		Map params = rv.getParams();\n		params.put( \"amount\", (new ActionExpression(\"210 + ((VOL-40) * 8.20)\", bindings)) );	\n		 \n		action.execute( \"compute-consumption\",params, drools);\nend\n\n\n	\nrule \"compute-consumption_0_5\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		rv: RangeEntry( id==\"COMPUTATION_FOR_COMMERCIAL\", intvalue > 50.00 )\n		\n		\n	then\n		Map bindings = rv.getBindings();\n		Map params = rv.getParams();\n		params.put( \"amount\", (new ActionExpression(\"292 + ((VOL-50) * 10.00)\", bindings)) );	\n		 \n		action.execute( \"compute-consumption\",params, drools);\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RULa6b099d:eb1f3248b7:-7630', '\npackage waterworkscomputation.COMPUTATION_FOR_RESIDENTAIL;\nimport waterworkscomputation.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"COMPUTATION_FOR_RESIDENTAIL\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		 waterworks.facts.WaterAccount (  classification matches \"RESIDENTIAL|GOVERNMENT\" ) \n		\n		WC: waterworks.facts.WaterConsumption (  VOL:volume ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"VOL\", VOL );\n		\n		bindings.put(\"WC\", WC );\n		\n	RangeEntry re0 = new RangeEntry(\"COMPUTATION_FOR_RESIDENTAIL\");\nre0.setBindings(bindings);\nre0.setIntvalue(VOL);\nre0.getParams().put( \"amount\", 0.0 );\nre0.getParams().put( \"ref\", WC );\ninsert(re0);\n\nend\n\n\n	\nrule \"compute-consumption_0_0\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		\n		rv: RangeEntry( id==\"COMPUTATION_FOR_RESIDENTAIL\", intvalue <= 10.00 )\n		\n	then\n		Map bindings = rv.getBindings();\n		Map params = rv.getParams();\n		params.put( \"amount\", (new ActionExpression(\"20\", bindings)) );	\n		 \n		action.execute( \"compute-consumption\",params, drools);\nend\n\n\n	\nrule \"compute-consumption_0_1\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		rv: RangeEntry( id==\"COMPUTATION_FOR_RESIDENTAIL\", intvalue > 10.00, intvalue <= 20.00 )\n		\n		\n		\n	then\n		Map bindings = rv.getBindings();\n		Map params = rv.getParams();\n		params.put( \"amount\", (new ActionExpression(\"20 + ((VOL-10) * 2.30)\", bindings)) );	\n		 \n		action.execute( \"compute-consumption\",params, drools);\nend\n\n\n	\nrule \"compute-consumption_0_2\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		rv: RangeEntry( id==\"COMPUTATION_FOR_RESIDENTAIL\", intvalue > 20.00, intvalue <= 30.00 )\n		\n		\n		\n	then\n		Map bindings = rv.getBindings();\n		Map params = rv.getParams();\n		params.put( \"amount\", (new ActionExpression(\"43 + ((VOL-20) * 2.80)\", bindings)) );	\n		 \n		action.execute( \"compute-consumption\",params, drools);\nend\n\n\n	\nrule \"compute-consumption_0_3\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		rv: RangeEntry( id==\"COMPUTATION_FOR_RESIDENTAIL\", intvalue > 30.00, intvalue <= 40.00 )\n		\n		\n		\n	then\n		Map bindings = rv.getBindings();\n		Map params = rv.getParams();\n		params.put( \"amount\", (new ActionExpression(\"71 + ((VOL-30) * 3.40)\", bindings)) );	\n		 \n		action.execute( \"compute-consumption\",params, drools);\nend\n\n\n	\nrule \"compute-consumption_0_4\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		rv: RangeEntry( id==\"COMPUTATION_FOR_RESIDENTAIL\", intvalue > 40.00, intvalue <= 50.00 )\n		\n		\n		\n	then\n		Map bindings = rv.getBindings();\n		Map params = rv.getParams();\n		params.put( \"amount\", (new ActionExpression(\"105 + ((VOL-40) * 4.10)\", bindings)) );	\n		 \n		action.execute( \"compute-consumption\",params, drools);\nend\n\n\n	\nrule \"compute-consumption_0_5\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		rv: RangeEntry( id==\"COMPUTATION_FOR_RESIDENTAIL\", intvalue > 50.00 )\n		\n		\n	then\n		Map bindings = rv.getBindings();\n		Map params = rv.getParams();\n		params.put( \"amount\", (new ActionExpression(\"146 + ((VOL-50) * 5.00)\", bindings)) );	\n		 \n		action.execute( \"compute-consumption\",params, drools);\nend\n\n\n	');
COMMIT;

-- ----------------------------
-- Table structure for sys_rule_fact
-- ----------------------------
DROP TABLE IF EXISTS `sys_rule_fact`;
CREATE TABLE `sys_rule_fact` (
  `objid` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `title` varchar(160) DEFAULT NULL,
  `factclass` varchar(50) DEFAULT NULL,
  `sortorder` int(11) DEFAULT NULL,
  `handler` varchar(50) DEFAULT NULL,
  `defaultvarname` varchar(25) DEFAULT NULL,
  `dynamic` int(11) DEFAULT NULL,
  `lookuphandler` varchar(50) DEFAULT NULL,
  `lookupkey` varchar(50) DEFAULT NULL,
  `lookupvalue` varchar(50) DEFAULT NULL,
  `lookupdatatype` varchar(50) DEFAULT NULL,
  `dynamicfieldname` varchar(50) DEFAULT NULL,
  `builtinconstraints` varchar(50) DEFAULT NULL,
  `domain` varchar(50) DEFAULT NULL,
  `factsuperclass` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_rule_fact
-- ----------------------------
BEGIN;
INSERT INTO `sys_rule_fact` VALUES ('com.rameses.rules.common.CurrentDate', 'com.rameses.rules.common.CurrentDate', 'Current Date', 'com.rameses.rules.common.CurrentDate', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SYSTEM', NULL);
INSERT INTO `sys_rule_fact` VALUES ('treasury.facts.Attribute', 'treasury.facts.Attribute', 'Attribute', 'treasury.facts.Attribute', 1, NULL, 'ATT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TREASURY', NULL);
INSERT INTO `sys_rule_fact` VALUES ('treasury.facts.BillDate', 'treasury.facts.BillDate', 'Bill Date', 'treasury.facts.BillDate', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TREASURY', NULL);
INSERT INTO `sys_rule_fact` VALUES ('treasury.facts.BillingPeriod', 'treasury.facts.BillingPeriod', 'Billing Period', 'treasury.facts.BillingPeriod', 1, NULL, 'BILPRD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TREASURY', NULL);
INSERT INTO `sys_rule_fact` VALUES ('treasury.facts.BillItem', 'treasury.facts.BillItem', 'Bill Item', 'treasury.facts.BillItem', 1, NULL, 'BILLITEM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TREASURY', 'treasury.facts.AbstractBillItem');
INSERT INTO `sys_rule_fact` VALUES ('treasury.facts.CashReceipt', 'treasury.facts.CashReceipt', 'Cash Receipt', 'treasury.facts.CashReceipt', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TREASURY', NULL);
INSERT INTO `sys_rule_fact` VALUES ('treasury.facts.CreditBalanceBillItem', 'treasury.facts.CreditBalanceBillItem', 'Credit Balance Bill Item', 'treasury.facts.CreditBalanceBillItem', 1, NULL, 'CBAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TREASURY', 'treasury.facts.AbstractBillItem');
INSERT INTO `sys_rule_fact` VALUES ('treasury.facts.CreditBillItem', 'treasury.facts.CreditBillItem', 'Credit Bill Item', 'treasury.facts.CreditBillItem', 1, NULL, 'CRBILL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TREASURY', 'treasury.facts.AbstractBillItem');
INSERT INTO `sys_rule_fact` VALUES ('treasury.facts.DueDate', 'treasury.facts.DueDate', 'Due Date', 'treasury.facts.DueDate', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TREASURY', NULL);
INSERT INTO `sys_rule_fact` VALUES ('treasury.facts.ExcessPayment', 'treasury.facts.ExcessPayment', 'Excess Payment', 'treasury.facts.ExcessPayment', 5, NULL, 'EXPMT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TREASURY', NULL);
INSERT INTO `sys_rule_fact` VALUES ('treasury.facts.HolidayFact', 'treasury.facts.HolidayFact', 'Holidays', 'treasury.facts.HolidayFact', 1, NULL, 'HOLIDAYS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TREASURY', NULL);
INSERT INTO `sys_rule_fact` VALUES ('treasury.facts.MonthEntry', 'treasury.facts.MonthEntry', 'Month Entry', 'treasury.facts.MonthEntry', 1, NULL, 'MONTHENTRY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TREASURY', NULL);
INSERT INTO `sys_rule_fact` VALUES ('treasury.facts.Payment', 'treasury.facts.Payment', 'Payment', 'treasury.facts.Payment', 5, NULL, 'PMT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TREASURY', NULL);
INSERT INTO `sys_rule_fact` VALUES ('treasury.facts.Requirement', 'treasury.facts.Requirement', 'Requirement', 'treasury.facts.Requirement', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'treasury', NULL);
INSERT INTO `sys_rule_fact` VALUES ('treasury.facts.VarDate', 'treasury.facts.VarDate', 'Variable Date', 'treasury.facts.VarDate', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TREASURY', NULL);
INSERT INTO `sys_rule_fact` VALUES ('treasury.facts.VarDecimal', 'treasury.facts.VarDecimal', 'Var Decimal', 'treasury.facts.VarDecimal', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TREASURY', NULL);
INSERT INTO `sys_rule_fact` VALUES ('treasury.facts.VarInteger', 'treasury.facts.VarInteger', 'Var Integer', 'treasury.facts.VarInteger', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TREASURY', NULL);
INSERT INTO `sys_rule_fact` VALUES ('treasury.facts.VarString', 'treasury.facts.VarString', 'Var String', 'treasury.facts.VarString', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TREASURY', NULL);
INSERT INTO `sys_rule_fact` VALUES ('waterworks.facts.Sector', 'waterworks.facts.Sector', 'Waterworks Sector', 'waterworks.facts.Sector', 1, NULL, 'WSEC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WATERWORKS', NULL);
INSERT INTO `sys_rule_fact` VALUES ('waterworks.facts.Stubout', 'waterworks.facts.Stubout', 'Stubout', 'waterworks.facts.Stubout', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'waterworks', NULL);
INSERT INTO `sys_rule_fact` VALUES ('waterworks.facts.WaterAccount', 'waterworks.facts.WaterAccount', 'Water Account', 'waterworks.facts.WaterAccount', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'waterworks', NULL);
INSERT INTO `sys_rule_fact` VALUES ('waterworks.facts.WaterBillItem', 'waterworks.facts.WaterBillItem', 'Water Bill Item', 'waterworks.facts.WaterBillItem', 0, NULL, 'WBI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WATERWORKS', 'treasury.facts.AbstractBillItem');
INSERT INTO `sys_rule_fact` VALUES ('waterworks.facts.WaterBlockSchedule', 'waterworks.facts.WaterBlockSchedule', 'Water Block Schedule', 'waterworks.facts.WaterBlockSchedule', 1, NULL, 'WBS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WATERWORKS', NULL);
INSERT INTO `sys_rule_fact` VALUES ('waterworks.facts.WaterConsumption', 'waterworks.facts.WaterConsumption', 'Water Consumption', 'waterworks.facts.WaterConsumption', 1, NULL, 'WC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WATERWORKS', NULL);
INSERT INTO `sys_rule_fact` VALUES ('waterworks.facts.WaterInstallment', 'waterworks.facts.WaterInstallment', 'Waterworks Installment', 'waterworks.facts.WaterInstallment', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'waterworks', NULL);
INSERT INTO `sys_rule_fact` VALUES ('waterworks.facts.WaterMeter', 'waterworks.facts.WaterMeter', 'Water Meter', 'waterworks.facts.WaterMeter', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WATERWORKS', NULL);
INSERT INTO `sys_rule_fact` VALUES ('waterworks.facts.WaterworksAttribute', 'waterworks.facts.WaterworksAttribute', 'Waterworks Attribute', 'waterworks.facts.WaterworksAttribute', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WATERWORKS', NULL);
INSERT INTO `sys_rule_fact` VALUES ('waterworks.facts.Zone', 'waterworks.facts.Zone', 'Waterworks Zone', 'waterworks.facts.Zone', 1, NULL, 'WZON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WATERWORKS', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_rule_fact_field
-- ----------------------------
DROP TABLE IF EXISTS `sys_rule_fact_field`;
CREATE TABLE `sys_rule_fact_field` (
  `objid` varchar(100) NOT NULL DEFAULT '',
  `parentid` varchar(50) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `title` varchar(160) DEFAULT NULL,
  `datatype` varchar(50) DEFAULT NULL,
  `sortorder` int(11) DEFAULT NULL,
  `handler` varchar(50) DEFAULT NULL,
  `lookuphandler` varchar(50) DEFAULT NULL,
  `lookupkey` varchar(50) DEFAULT NULL,
  `lookupvalue` varchar(50) DEFAULT NULL,
  `lookupdatatype` varchar(50) DEFAULT NULL,
  `multivalued` int(11) DEFAULT NULL,
  `required` int(11) DEFAULT NULL,
  `vardatatype` varchar(50) DEFAULT NULL,
  `lovname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `ix_parentid` (`parentid`) USING BTREE,
  CONSTRAINT `fk_sys_rule_fact_field_parentid` FOREIGN KEY (`parentid`) REFERENCES `sys_rule_fact` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_rule_fact_field
-- ----------------------------
BEGIN;
INSERT INTO `sys_rule_fact_field` VALUES ('com.rameses.rules.common.CurrentDate.date', 'com.rameses.rules.common.CurrentDate', 'date', 'Date', 'date', 4, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('com.rameses.rules.common.CurrentDate.day', 'com.rameses.rules.common.CurrentDate', 'day', 'Day', 'integer', 5, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('com.rameses.rules.common.CurrentDate.month', 'com.rameses.rules.common.CurrentDate', 'month', 'Month', 'integer', 3, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('com.rameses.rules.common.CurrentDate.qtr', 'com.rameses.rules.common.CurrentDate', 'qtr', 'Qtr', 'integer', 1, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('com.rameses.rules.common.CurrentDate.year', 'com.rameses.rules.common.CurrentDate', 'year', 'Year', 'integer', 2, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.Attribute.name', 'treasury.facts.Attribute', 'name', 'Name', 'string', 1, 'lookup', 'attribute:lookup', 'name', 'title', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.BillDate.date', 'treasury.facts.BillDate', 'date', 'Date', 'date', 1, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.BillDate.day', 'treasury.facts.BillDate', 'day', 'Day', 'integer', 4, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.BillDate.month', 'treasury.facts.BillDate', 'month', 'Month', 'integer', 3, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.BillDate.qtr', 'treasury.facts.BillDate', 'qtr', 'Qtr', 'integer', 5, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.BillDate.year', 'treasury.facts.BillDate', 'year', 'Year', 'integer', 2, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.BillingPeriod.fromdate', 'treasury.facts.BillingPeriod', 'fromdate', 'From Date', 'date', 3, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.BillingPeriod.month', 'treasury.facts.BillingPeriod', 'month', 'Month', 'integer', 1, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.BillingPeriod.todate', 'treasury.facts.BillingPeriod', 'todate', 'To Date', 'date', 4, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.BillingPeriod.year', 'treasury.facts.BillingPeriod', 'year', 'Year', 'integer', 2, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.BillItem.account', 'treasury.facts.BillItem', 'account', 'Account', 'string', 3, 'lookup', 'revenueitem:lookup', 'objid', 'title', NULL, NULL, NULL, 'object', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.BillItem.account.objid', 'treasury.facts.BillItem', 'account.objid', 'Account', 'string', 2, 'lookup', 'revenueitem:lookup', 'objid', 'title', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.BillItem.amount', 'treasury.facts.BillItem', 'amount', 'Amount', 'decimal', 1, 'decimal', NULL, NULL, NULL, NULL, NULL, NULL, 'decimal', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.BillItem.billcode', 'treasury.facts.BillItem', 'billcode', 'Bill code', 'string', 16, 'lookup', 'waterworks_itemaccount:lookup', 'objid', 'title', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.BillItem.billrefid', 'treasury.facts.BillItem', 'billrefid', 'Bill Ref ID', 'string', 7, 'var', NULL, NULL, NULL, NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.BillItem.discount', 'treasury.facts.BillItem', 'discount', 'Discount', 'decimal', 8, 'decimal', NULL, NULL, NULL, NULL, NULL, NULL, 'decimal', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.BillItem.duedate', 'treasury.facts.BillItem', 'duedate', 'Due Date', 'date', 4, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.BillItem.fromdate', 'treasury.facts.BillItem', 'fromdate', 'From Date', 'date', 14, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.BillItem.interest', 'treasury.facts.BillItem', 'interest', 'Interest', 'decimal', 11, 'decimal', NULL, NULL, NULL, NULL, NULL, NULL, 'decimal', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.BillItem.month', 'treasury.facts.BillItem', 'month', 'Month', 'integer', 13, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.BillItem.org', 'treasury.facts.BillItem', 'org', 'Org', 'string', 10, 'var', NULL, NULL, NULL, NULL, NULL, NULL, 'enterprise.facts.Org', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.BillItem.parentaccount', 'treasury.facts.BillItem', 'parentaccount', 'Parent Account', 'string', 9, 'lookup', 'revenueitem:lookup', 'objid', 'title', NULL, NULL, NULL, 'object', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.BillItem.surcharge', 'treasury.facts.BillItem', 'surcharge', 'Surcharge', 'decimal', 5, 'decimal', NULL, NULL, NULL, NULL, NULL, NULL, 'decimal', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.BillItem.todate', 'treasury.facts.BillItem', 'todate', 'To Date', 'date', 15, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.BillItem.txntype', 'treasury.facts.BillItem', 'txntype', 'Txn Type', 'string', 6, 'lookup', 'billitem_txntype:lookup', 'objid', 'title', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.BillItem.year', 'treasury.facts.BillItem', 'year', 'Year', 'integer', 12, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.CashReceipt.receiptdate', 'treasury.facts.CashReceipt', 'receiptdate', 'Receipt Date', 'date', 2, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.CashReceipt.txnmode', 'treasury.facts.CashReceipt', 'txnmode', 'Txn Mode', 'string', 1, 'string', NULL, NULL, NULL, NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.CreditBalanceBillItem.amount', 'treasury.facts.CreditBalanceBillItem', 'amount', 'Amount', 'decimal', 1, 'decimal', NULL, NULL, NULL, NULL, NULL, NULL, 'decimal', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.CreditBalanceBillItem.billcode', 'treasury.facts.CreditBalanceBillItem', 'billcode', 'Bill code', 'string', 2, 'lookup', 'waterworks_itemaccount:lookup', 'objid', 'title', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.CreditBillItem.amount', 'treasury.facts.CreditBillItem', 'amount', 'Amount', 'decimal', 1, 'decimal', NULL, NULL, NULL, NULL, NULL, NULL, 'decimal', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.CreditBillItem.billcode', 'treasury.facts.CreditBillItem', 'billcode', 'Bill code', 'string', 2, 'lookup', 'waterworks_itemaccount:lookup', 'objid', 'title', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.DueDate.date', 'treasury.facts.DueDate', 'date', 'Date', 'date', 1, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.DueDate.day', 'treasury.facts.DueDate', 'day', 'Day', 'integer', 4, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.DueDate.month', 'treasury.facts.DueDate', 'month', 'Month', 'integer', 3, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.DueDate.qtr', 'treasury.facts.DueDate', 'qtr', 'Qtr', 'integer', 5, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.DueDate.year', 'treasury.facts.DueDate', 'year', 'Year', 'integer', 2, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.ExcessPayment.amount', 'treasury.facts.ExcessPayment', 'amount', 'Amount', 'decimal', 1, 'decimal', NULL, NULL, NULL, NULL, NULL, NULL, 'decimal', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.HolidayFact.id', 'treasury.facts.HolidayFact', 'id', 'ID', 'string', 1, 'string', NULL, NULL, NULL, NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.MonthEntry.duedate', 'treasury.facts.MonthEntry', 'duedate', 'Due date', 'date', 13, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.MonthEntry.first', 'treasury.facts.MonthEntry', 'first', 'First', 'boolean', 11, 'boolean', NULL, NULL, NULL, NULL, NULL, NULL, 'boolean', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.MonthEntry.fromdate', 'treasury.facts.MonthEntry', 'fromdate', 'From Date', 'date', 4, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.MonthEntry.fromday', 'treasury.facts.MonthEntry', 'fromday', 'From Day', 'integer', 6, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.MonthEntry.index', 'treasury.facts.MonthEntry', 'index', 'Index', 'integer', 10, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.MonthEntry.last', 'treasury.facts.MonthEntry', 'last', 'Last', 'boolean', 12, 'boolean', NULL, NULL, NULL, NULL, NULL, NULL, 'boolean', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.MonthEntry.maxdays', 'treasury.facts.MonthEntry', 'maxdays', 'Month Max Days', 'integer', 9, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.MonthEntry.month', 'treasury.facts.MonthEntry', 'month', 'Month', 'integer', 2, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.MonthEntry.numdays', 'treasury.facts.MonthEntry', 'numdays', 'No. of Days', 'integer', 8, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.MonthEntry.qtr', 'treasury.facts.MonthEntry', 'qtr', 'Qtr', 'integer', 3, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.MonthEntry.todate', 'treasury.facts.MonthEntry', 'todate', 'To Date', 'date', 5, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.MonthEntry.today', 'treasury.facts.MonthEntry', 'today', 'To Day', 'integer', 7, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.MonthEntry.year', 'treasury.facts.MonthEntry', 'year', 'Year', 'integer', 1, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.Payment.amount', 'treasury.facts.Payment', 'amount', 'Amount', 'decimal', 1, 'decimal', NULL, NULL, NULL, NULL, NULL, NULL, 'decimal', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.Requirement.code', 'treasury.facts.Requirement', 'code', 'Code', 'string', 1, 'lookup', 'requirementtype:lookup', 'code', 'title', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.Requirement.completed', 'treasury.facts.Requirement', 'completed', 'Completed', 'boolean', 2, 'boolean', NULL, NULL, NULL, NULL, NULL, NULL, 'boolean', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.VarDate.date', 'treasury.facts.VarDate', 'date', 'Date', 'date', 1, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.VarDate.day', 'treasury.facts.VarDate', 'day', 'Day', 'integer', 4, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.VarDate.month', 'treasury.facts.VarDate', 'month', 'Month', 'integer', 3, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.VarDate.qtr', 'treasury.facts.VarDate', 'qtr', 'Qtr', 'integer', 5, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.VarDate.tag', 'treasury.facts.VarDate', 'tag', 'Tag', 'string', 6, 'string', NULL, NULL, NULL, NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.VarDate.year', 'treasury.facts.VarDate', 'year', 'Year', 'integer', 2, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.VarDecimal.tag', 'treasury.facts.VarDecimal', 'tag', 'Tag', 'string', 2, 'string', NULL, NULL, NULL, NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.VarDecimal.value', 'treasury.facts.VarDecimal', 'value', 'Value', 'decimal', 1, 'decimal', NULL, NULL, NULL, NULL, NULL, NULL, 'decimal', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.VarInteger.tag', 'treasury.facts.VarInteger', 'tag', 'Tag', 'string', 2, 'string', NULL, NULL, NULL, NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.VarInteger.value', 'treasury.facts.VarInteger', 'value', 'Value', 'integer', 1, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.VarString.tag', 'treasury.facts.VarString', 'tag', 'Tag', 'string', 2, 'string', NULL, NULL, NULL, NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.VarString.value', 'treasury.facts.VarString', 'value', 'Value', 'string', 1, 'string', NULL, NULL, NULL, NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.Sector.objid', 'waterworks.facts.Sector', 'objid', 'ID', 'string', 1, 'lookup', 'waterworks_sector:lookup', 'objid', 'code', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.Stubout.barangay', 'waterworks.facts.Stubout', 'barangay', 'Barangay', 'string', 3, 'lookup', 'barangay:lookup', 'objid', 'name', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.Stubout.sector', 'waterworks.facts.Stubout', 'sector', 'Sector', 'string', 2, 'lookup', 'waterworks_sector:lookup', 'objid', 'code', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.Stubout.zone', 'waterworks.facts.Stubout', 'zone', 'Zone', 'string', 1, 'lookup', 'waterworks_sector_zone:lookup', 'objid', 'code', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterAccount.barangay', 'waterworks.facts.WaterAccount', 'barangay', 'Barangay', 'string', 3, 'lookup', 'barangay:lookup', 'objid', 'name', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterAccount.classification', 'waterworks.facts.WaterAccount', 'classification', 'Classification', 'string', 1, 'lookup', 'waterworks_classification:lookup', 'objid', 'description', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterAccount.metered', 'waterworks.facts.WaterAccount', 'metered', 'Metered', 'boolean', 6, 'boolean', NULL, NULL, NULL, NULL, NULL, NULL, 'boolean', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterAccount.metersize', 'waterworks.facts.WaterAccount', 'metersize', 'Meter Size', 'string', 2, 'lookup', 'waterworks_metersize:lookup', 'objid', 'title', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterAccount.state', 'waterworks.facts.WaterAccount', 'state', 'State', 'string', 5, 'lov', NULL, NULL, NULL, NULL, NULL, NULL, 'string', 'WATERWORKS_ACCOUNT_STATE');
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterAccount.units', 'waterworks.facts.WaterAccount', 'units', 'No. of Units', 'integer', 4, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillItem.account', 'waterworks.facts.WaterBillItem', 'account', 'Account', 'string', 1, 'lookup', 'revenueitem:lookup', 'objid', 'title', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillItem.amount', 'waterworks.facts.WaterBillItem', 'amount', 'Amount', 'decimal', 3, 'decimal', NULL, NULL, NULL, NULL, NULL, NULL, 'decimal', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillItem.amtpaid', 'waterworks.facts.WaterBillItem', 'amtpaid', 'Amt Paid', 'decimal', 17, 'decimal', NULL, NULL, NULL, NULL, NULL, NULL, 'decimal', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillItem.billcode', 'waterworks.facts.WaterBillItem', 'billcode', 'Bill code', 'string', 2, 'lookup', 'waterworks_itemaccount:lookup', 'objid', 'title', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillItem.duedate', 'waterworks.facts.WaterBillItem', 'duedate', 'Due Date', 'date', 7, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillItem.fromdate', 'waterworks.facts.WaterBillItem', 'fromdate', 'From Date', 'date', 13, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillItem.frommonth', 'waterworks.facts.WaterBillItem', 'frommonth', 'From Month', 'integer', 10, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillItem.fromyear', 'waterworks.facts.WaterBillItem', 'fromyear', 'From Year', 'integer', 9, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillItem.month', 'waterworks.facts.WaterBillItem', 'month', 'Month', 'integer', 6, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillItem.partialunpaid', 'waterworks.facts.WaterBillItem', 'partialunpaid', 'Partial Unpaid', 'decimal', 18, 'decimal', NULL, NULL, NULL, NULL, NULL, NULL, 'decimal', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillItem.principal', 'waterworks.facts.WaterBillItem', 'principal', 'Principal', 'decimal', 16, 'decimal', NULL, NULL, NULL, NULL, NULL, NULL, 'decimal', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillItem.remarks', 'waterworks.facts.WaterBillItem', 'remarks', 'Remarks', 'string', 15, 'string', NULL, NULL, NULL, NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillItem.todate', 'waterworks.facts.WaterBillItem', 'todate', 'To Date', 'date', 14, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillItem.tomonth', 'waterworks.facts.WaterBillItem', 'tomonth', 'To Month', 'integer', 12, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillItem.toyear', 'waterworks.facts.WaterBillItem', 'toyear', 'To Year', 'integer', 11, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillItem.txntype', 'waterworks.facts.WaterBillItem', 'txntype', 'Txn Type', 'string', 4, 'lov', NULL, NULL, NULL, NULL, NULL, NULL, 'string', 'WATERWORKS_BILLING_GROUP_OPTION');
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillItem.volume', 'waterworks.facts.WaterBillItem', 'volume', 'Volume', 'integer', 8, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillItem.year', 'waterworks.facts.WaterBillItem', 'year', 'Year', 'integer', 5, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBlockSchedule.id', 'waterworks.facts.WaterBlockSchedule', 'id', 'ID', 'string', 1, 'lookup', 'waterworks_block_schedule:lookup', 'objid', 'objid', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterConsumption.amount', 'waterworks.facts.WaterConsumption', 'amount', 'Amount', 'decimal', 4, 'decimal', NULL, NULL, NULL, NULL, NULL, NULL, 'decimal', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterConsumption.amtdue', 'waterworks.facts.WaterConsumption', 'amtdue', 'Amount Due', 'decimal', 5, 'decimal', NULL, NULL, NULL, NULL, NULL, NULL, 'decimal', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterConsumption.disconnectiondate', 'waterworks.facts.WaterConsumption', 'disconnectiondate', 'Disconnection Date', 'date', 8, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterConsumption.duedate', 'waterworks.facts.WaterConsumption', 'duedate', 'Due Date', 'date', 6, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterConsumption.month', 'waterworks.facts.WaterConsumption', 'month', 'Month', 'integer', 3, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterConsumption.refid', 'waterworks.facts.WaterConsumption', 'refid', 'Ref Id', 'string', 9, 'string', NULL, NULL, NULL, NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterConsumption.status', 'waterworks.facts.WaterConsumption', 'status', 'Status', 'string', 7, 'lov', NULL, NULL, NULL, NULL, NULL, NULL, 'string', 'WATERWORKS_BILLING_STATUS');
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterConsumption.volume', 'waterworks.facts.WaterConsumption', 'volume', 'Volume', 'integer', 1, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterConsumption.year', 'waterworks.facts.WaterConsumption', 'year', 'Year', 'integer', 2, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterInstallment.amount', 'waterworks.facts.WaterInstallment', 'amount', 'Amount', 'decimal', 3, 'decimal', NULL, NULL, NULL, NULL, NULL, NULL, 'decimal', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterInstallment.month', 'waterworks.facts.WaterInstallment', 'month', 'Month', 'integer', 2, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterInstallment.refid', 'waterworks.facts.WaterInstallment', 'refid', 'RefId', 'string', 4, 'string', NULL, NULL, NULL, NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterInstallment.txntype', 'waterworks.facts.WaterInstallment', 'txntype', 'Txn Type', 'string', 5, 'string', NULL, NULL, NULL, NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterInstallment.year', 'waterworks.facts.WaterInstallment', 'year', 'Year', 'integer', 1, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterMeter.capacity', 'waterworks.facts.WaterMeter', 'capacity', 'Capacity', 'string', 3, 'var', NULL, NULL, NULL, NULL, NULL, NULL, 'WATERWORKS_METER_CAPACITY', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterMeter.sizeid', 'waterworks.facts.WaterMeter', 'sizeid', 'Size', 'string', 1, 'lookup', 'waterworks_metersize:lookup', 'objid', 'title', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterMeter.state', 'waterworks.facts.WaterMeter', 'state', 'Status', 'string', 2, 'var', NULL, NULL, NULL, NULL, NULL, NULL, 'WATERWORKS_METER_STATE', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterworksAttribute.name', 'waterworks.facts.WaterworksAttribute', 'name', 'Name', 'string', 1, 'lookup', 'waterworks_attribute:lookup', 'name', 'title', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.Zone.barangayid', 'waterworks.facts.Zone', 'barangayid', 'Barangay', 'string', 3, 'lookup', 'barangay:lookup', 'objid', 'name', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.Zone.objid', 'waterworks.facts.Zone', 'objid', 'Zone', 'string', 1, 'lookup', 'waterworks_zone:lookup', 'objid', 'code', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.Zone.sectorid', 'waterworks.facts.Zone', 'sectorid', 'Sector', 'string', 2, 'lookup', 'waterworks_sector:lookup', 'objid', 'code', NULL, NULL, NULL, 'string', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_rulegroup
-- ----------------------------
DROP TABLE IF EXISTS `sys_rulegroup`;
CREATE TABLE `sys_rulegroup` (
  `name` varchar(50) NOT NULL,
  `ruleset` varchar(50) NOT NULL,
  `title` varchar(160) DEFAULT NULL,
  `sortorder` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`,`ruleset`) USING BTREE,
  KEY `ix_ruleset` (`ruleset`) USING BTREE,
  CONSTRAINT `fk_sys_rulegroup_ruleset` FOREIGN KEY (`ruleset`) REFERENCES `sys_ruleset` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_rulegroup
-- ----------------------------
BEGIN;
INSERT INTO `sys_rulegroup` VALUES ('account-mapping', 'waterworksbilling', 'Account Mapping', 8);
INSERT INTO `sys_rulegroup` VALUES ('billing', 'waterworksbilling', 'Billing Initial', 1);
INSERT INTO `sys_rulegroup` VALUES ('build-schedule', 'waterworksbilling', 'Build Schedule', 0);
INSERT INTO `sys_rulegroup` VALUES ('computefee', 'waterworksapplication', 'Compute Fee', 1);
INSERT INTO `sys_rulegroup` VALUES ('computefee', 'waterworksbilling', 'Compute Fee', 2);
INSERT INTO `sys_rulegroup` VALUES ('discount', 'waterworksbilling', 'Compute Discount', 3);
INSERT INTO `sys_rulegroup` VALUES ('initial', 'waterworksapplication', 'Initial', 0);
INSERT INTO `sys_rulegroup` VALUES ('initial', 'waterworksbilling', 'Initial', 0);
INSERT INTO `sys_rulegroup` VALUES ('initial', 'waterworksbillingschedule', 'Initial', 0);
INSERT INTO `sys_rulegroup` VALUES ('initial', 'waterworkscomputation', 'Initial', 1);
INSERT INTO `sys_rulegroup` VALUES ('interest', 'waterworksbilling', 'Compute Interest', 5);
INSERT INTO `sys_rulegroup` VALUES ('payment', 'waterworksbilling', 'Payment', 6);
INSERT INTO `sys_rulegroup` VALUES ('post-initial', 'waterworksbillingschedule', 'Post Initial', 1);
INSERT INTO `sys_rulegroup` VALUES ('pre-computation', 'waterworkscomputation', 'Pre-Computation', 0);
INSERT INTO `sys_rulegroup` VALUES ('requirement', 'waterworksapplication', 'Requirements', 5);
INSERT INTO `sys_rulegroup` VALUES ('summary', 'waterworksapplication', 'Summary', 5);
INSERT INTO `sys_rulegroup` VALUES ('summary', 'waterworksbilling', 'Summary', 7);
INSERT INTO `sys_rulegroup` VALUES ('surcharge', 'waterworksbilling', 'Compute Surcharge', 4);
COMMIT;

-- ----------------------------
-- Table structure for sys_ruleset
-- ----------------------------
DROP TABLE IF EXISTS `sys_ruleset`;
CREATE TABLE `sys_ruleset` (
  `name` varchar(50) NOT NULL,
  `title` varchar(160) DEFAULT NULL,
  `packagename` varchar(50) DEFAULT NULL,
  `domain` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `permission` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_ruleset
-- ----------------------------
BEGIN;
INSERT INTO `sys_ruleset` VALUES ('waterworksapplication', 'Water Works Application', 'waterworksapplication', 'WATERWORKS', 'RULE_AUTHOR', NULL);
INSERT INTO `sys_ruleset` VALUES ('waterworksbilling', 'Water Works Billing', 'waterworksbilling', 'WATERWORKS', 'RULE_AUTHOR', NULL);
INSERT INTO `sys_ruleset` VALUES ('waterworksbillingschedule', 'Water Works Billing Schedule', 'waterworksbillingschedule', 'WATERWORKS', 'RULE_AUTHOR', NULL);
INSERT INTO `sys_ruleset` VALUES ('waterworkscomputation', 'Water Works Computation', 'waterworkscomputation', 'WATERWORKS', 'RULE_AUTHOR', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_ruleset_actiondef
-- ----------------------------
DROP TABLE IF EXISTS `sys_ruleset_actiondef`;
CREATE TABLE `sys_ruleset_actiondef` (
  `ruleset` varchar(50) NOT NULL,
  `actiondef` varchar(50) NOT NULL,
  PRIMARY KEY (`ruleset`,`actiondef`) USING BTREE,
  KEY `ix_actiondef` (`actiondef`) USING BTREE,
  CONSTRAINT `fk_sys_ruleset_actiondef_actiondef` FOREIGN KEY (`actiondef`) REFERENCES `sys_rule_actiondef` (`objid`),
  CONSTRAINT `fk_sys_ruleset_actiondef_ruleset` FOREIGN KEY (`ruleset`) REFERENCES `sys_ruleset` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_ruleset_actiondef
-- ----------------------------
BEGIN;
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworksapplication', 'enterprise.actions.AddRequirement');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworksbilling', 'enterprise.actions.PrintTest');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworkscomputation', 'enterprise.actions.ThrowException');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworksbilling', 'treasury.actions.AddCreditBillItem');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworksbilling', 'treasury.actions.AddDiscountItem');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworksbilling', 'treasury.actions.AddInterestItem');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworksbilling', 'treasury.actions.AddSurchargeItem');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworksbilling', 'treasury.actions.AddVarDate');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworksbillingschedule', 'treasury.actions.AddVarDate');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworksbillingschedule', 'treasury.actions.AddVarDecimal');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworksbillingschedule', 'treasury.actions.AddVarInteger');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworkscomputation', 'treasury.actions.AddVarInteger');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworksbillingschedule', 'treasury.actions.AddVarString');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworksbilling', 'treasury.actions.ApplyPayment');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworksapplication', 'treasury.actions.ComputeFee');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworksbilling', 'treasury.actions.RemoveDiscountItem');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworksapplication', 'treasury.actions.SetBillItemAccount');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworksbilling', 'treasury.actions.SetBillItemAccount');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworksbilling', 'treasury.actions.SetBillItemProperty');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworksbilling', 'waterworks.actions.AddRepeatingFee');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworksbilling', 'waterworks.actions.AddWaterBillItem');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworkscomputation', 'waterworks.actions.ComputeConsumption');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworksbilling', 'waterworks.actions.SetBillingPeriod');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworksbilling', 'waterworks.actions.SetWaterConsumptionProperty');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworkscomputation', 'waterworks.actions.SetWaterConsumptionProperty');
COMMIT;

-- ----------------------------
-- Table structure for sys_ruleset_fact
-- ----------------------------
DROP TABLE IF EXISTS `sys_ruleset_fact`;
CREATE TABLE `sys_ruleset_fact` (
  `ruleset` varchar(50) NOT NULL,
  `rulefact` varchar(50) NOT NULL,
  PRIMARY KEY (`ruleset`,`rulefact`) USING BTREE,
  KEY `ix_rulefact` (`rulefact`) USING BTREE,
  CONSTRAINT `fk_sys_ruleset_fact_rulefact` FOREIGN KEY (`rulefact`) REFERENCES `sys_rule_fact` (`objid`),
  CONSTRAINT `fk_sys_ruleset_fact_ruleset` FOREIGN KEY (`ruleset`) REFERENCES `sys_ruleset` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_ruleset_fact
-- ----------------------------
BEGIN;
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbilling', 'com.rameses.rules.common.CurrentDate');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbilling', 'treasury.facts.BillDate');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbilling', 'treasury.facts.BillingPeriod');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbillingschedule', 'treasury.facts.BillingPeriod');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksapplication', 'treasury.facts.BillItem');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbilling', 'treasury.facts.BillItem');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbilling', 'treasury.facts.CashReceipt');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbilling', 'treasury.facts.CreditBalanceBillItem');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbilling', 'treasury.facts.CreditBillItem');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbilling', 'treasury.facts.DueDate');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbilling', 'treasury.facts.ExcessPayment');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbilling', 'treasury.facts.HolidayFact');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbillingschedule', 'treasury.facts.HolidayFact');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbilling', 'treasury.facts.MonthEntry');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbilling', 'treasury.facts.Payment');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksapplication', 'treasury.facts.Requirement');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbilling', 'treasury.facts.VarDate');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbillingschedule', 'treasury.facts.VarDate');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbillingschedule', 'treasury.facts.VarDecimal');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbillingschedule', 'treasury.facts.VarInteger');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworkscomputation', 'treasury.facts.VarInteger');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbillingschedule', 'treasury.facts.VarString');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbilling', 'waterworks.facts.Sector');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbilling', 'waterworks.facts.Stubout');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbilling', 'waterworks.facts.WaterAccount');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworkscomputation', 'waterworks.facts.WaterAccount');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbilling', 'waterworks.facts.WaterBillItem');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbilling', 'waterworks.facts.WaterBlockSchedule');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbillingschedule', 'waterworks.facts.WaterBlockSchedule');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbilling', 'waterworks.facts.WaterConsumption');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworkscomputation', 'waterworks.facts.WaterConsumption');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbilling', 'waterworks.facts.WaterInstallment');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworkscomputation', 'waterworks.facts.WaterMeter');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbilling', 'waterworks.facts.WaterworksAttribute');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworkscomputation', 'waterworks.facts.WaterworksAttribute');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbilling', 'waterworks.facts.Zone');
COMMIT;

-- ----------------------------
-- Table structure for sys_sequence
-- ----------------------------
DROP TABLE IF EXISTS `sys_sequence`;
CREATE TABLE `sys_sequence` (
  `objid` varchar(100) NOT NULL,
  `nextSeries` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_sequence
-- ----------------------------
BEGIN;
INSERT INTO `sys_sequence` VALUES ('CHANGEINFO201201', 7);
INSERT INTO `sys_sequence` VALUES ('CHANGEINFO201806', 3);
INSERT INTO `sys_sequence` VALUES ('CHANGEINFO201811', 62);
INSERT INTO `sys_sequence` VALUES ('CHANGEINFO201812', 1940);
INSERT INTO `sys_sequence` VALUES ('CHANGEINFO201901', 6749);
INSERT INTO `sys_sequence` VALUES ('CHANGEINFO201902', 9351);
INSERT INTO `sys_sequence` VALUES ('CHANGEINFO201903', 6140);
INSERT INTO `sys_sequence` VALUES ('CHANGEINFO201904', 2885);
INSERT INTO `sys_sequence` VALUES ('CHANGEINFO201905', 2930);
INSERT INTO `sys_sequence` VALUES ('CHANGEINFO201906', 2);
INSERT INTO `sys_sequence` VALUES ('CHANGEINFO201910', 2);
INSERT INTO `sys_sequence` VALUES ('CHANGEINFO202001', 2);
INSERT INTO `sys_sequence` VALUES ('WATERWORKS_CREDIT', 29637);
INSERT INTO `sys_sequence` VALUES ('waterworks_installment', 2);
COMMIT;

-- ----------------------------
-- Table structure for sys_usergroup
-- ----------------------------
DROP TABLE IF EXISTS `sys_usergroup`;
CREATE TABLE `sys_usergroup` (
  `objid` varchar(50) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `domain` varchar(25) DEFAULT NULL,
  `userclass` varchar(25) DEFAULT NULL,
  `orgclass` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_usergroup
-- ----------------------------
BEGIN;
INSERT INTO `sys_usergroup` VALUES ('WATERWORKS.MASTER', 'WATERWORKS MASTER', 'WATERWORKS', 'usergroup', NULL, 'MASTER');
INSERT INTO `sys_usergroup` VALUES ('WATERWORKS.READER', 'WATERWORKS READER', 'WATERWORKS', 'usergroup', NULL, 'READER');
INSERT INTO `sys_usergroup` VALUES ('WATERWORKS.REPORT', 'WATERWORKS REPORT', 'WATERWORKS', 'usergroup', NULL, 'REPORT');
INSERT INTO `sys_usergroup` VALUES ('WATERWORKS.RULE_AUTHOR', 'WATERWORKS RULE_AUTHOR', 'WATERWORKS', 'usergroup', NULL, 'RULE_AUTHOR');
INSERT INTO `sys_usergroup` VALUES ('WATERWORKS.SHARED', 'WATERWORKS SHARED', 'WATERWORKS', 'usergroup', NULL, 'SHARED');
COMMIT;

-- ----------------------------
-- Table structure for sys_var
-- ----------------------------
DROP TABLE IF EXISTS `sys_var`;
CREATE TABLE `sys_var` (
  `name` varchar(50) NOT NULL,
  `value` longtext,
  `description` varchar(255) DEFAULT NULL,
  `datatype` varchar(15) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_wf
-- ----------------------------
DROP TABLE IF EXISTS `sys_wf`;
CREATE TABLE `sys_wf` (
  `name` varchar(50) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `domain` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_wf
-- ----------------------------
BEGIN;
INSERT INTO `sys_wf` VALUES ('waterworks_batch_billing', 'Waterworks Batch Billing', 'WATERWORKS');
COMMIT;

-- ----------------------------
-- Table structure for sys_wf_node
-- ----------------------------
DROP TABLE IF EXISTS `sys_wf_node`;
CREATE TABLE `sys_wf_node` (
  `name` varchar(50) NOT NULL,
  `processname` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(100) DEFAULT NULL,
  `nodetype` varchar(10) DEFAULT NULL,
  `idx` int(11) DEFAULT NULL,
  `salience` int(11) DEFAULT NULL,
  `domain` varchar(50) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `ui` text,
  `properties` text,
  `tracktime` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`,`processname`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_wf_node
-- ----------------------------
BEGIN;
INSERT INTO `sys_wf_node` VALUES ('approved', 'waterworks_batch_billing', 'Approved', 'state', 7, 0, 'WATERWORKS', NULL, '[fillColor:\"#c0c0c0\",type:\"state\",pos:[748,103],size:[100,50]]', '[show_reading:true]', NULL);
INSERT INTO `sys_wf_node` VALUES ('draft', 'waterworks_batch_billing', 'Draft', 'state', 2, 0, 'WATERWORKS', NULL, '[fillColor:\"#c0c0c0\",type:\"state\",pos:[123,170],size:[109,53]]', '[:]', NULL);
INSERT INTO `sys_wf_node` VALUES ('end', 'waterworks_batch_billing', 'Completed', 'end', 8, 0, 'WATERWORKS', NULL, '[fillColor:\"#ff0000\",type:\"end\",pos:[923,260],size:[32,32]]', '[show_reading:true]', NULL);
INSERT INTO `sys_wf_node` VALUES ('for-approval', 'waterworks_batch_billing', 'For Approval', 'state', 6, 0, 'WATERWORKS', NULL, '[fillColor:\"#c0c0c0\",type:\"state\",pos:[661,222],size:[100,50]]', '[show_reading:true]', NULL);
INSERT INTO `sys_wf_node` VALUES ('for-reading', 'waterworks_batch_billing', 'For Reading', 'state', 5, 0, 'WATERWORKS', NULL, '[fillColor:\"#c0c0c0\",type:\"state\",pos:[576,53],size:[100,50]]', '[show_reading:true]', NULL);
INSERT INTO `sys_wf_node` VALUES ('for-review', 'waterworks_batch_billing', 'For Review', 'state', 4, 0, 'WATERWORKS', NULL, '[fillColor:\"#c0c0c0\",type:\"state\",pos:[438,100],size:[100,50]]', '[:]', NULL);
INSERT INTO `sys_wf_node` VALUES ('processing', 'waterworks_batch_billing', 'Processing', 'state', 3, 0, 'WATERWORKS', NULL, '[fillColor:\"#c0c0c0\",type:\"state\",pos:[249,76],size:[100,50]]', '[:]', NULL);
INSERT INTO `sys_wf_node` VALUES ('start', 'waterworks_batch_billing', 'Start', 'start', 1, 0, 'WATERWORKS', NULL, '[fillColor:\"#00ff00\",type:\"start\",pos:[72,60],size:[32,32]]', '[:]', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_wf_transition
-- ----------------------------
DROP TABLE IF EXISTS `sys_wf_transition`;
CREATE TABLE `sys_wf_transition` (
  `parentid` varchar(50) NOT NULL DEFAULT '',
  `processname` varchar(50) NOT NULL DEFAULT '',
  `action` varchar(50) NOT NULL,
  `to` varchar(50) NOT NULL,
  `idx` int(11) DEFAULT NULL,
  `eval` mediumtext,
  `properties` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `ui` text,
  PRIMARY KEY (`parentid`,`processname`,`to`,`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_wf_transition
-- ----------------------------
BEGIN;
INSERT INTO `sys_wf_transition` VALUES ('approved', 'waterworks_batch_billing', 'post', 'end', 0, NULL, '[showConfirm:true,confirmMessage:\"You are about to post this to the ledger. Proceed?\"]', NULL, 'Post', '[points:[827,148,934,266],type:\"arrow\",pos:[827,148],size:[107,118]]');
INSERT INTO `sys_wf_transition` VALUES ('approved', 'waterworks_batch_billing', 'revert', 'for-reading', 1, NULL, '[:]', NULL, 'Revert', '[points:[748,103,676,77],type:\"arrow\",pos:[676,77],size:[72,26]]');
INSERT INTO `sys_wf_transition` VALUES ('draft', 'waterworks_batch_billing', 'submit', 'processing', 0, NULL, '[autostart:true]', NULL, 'Submit for Processing', '[points:[210,170,268,125],type:\"arrow\",pos:[210,125],size:[58,45]]');
INSERT INTO `sys_wf_transition` VALUES ('for-approval', 'waterworks_batch_billing', 'approve', 'approved', 0, NULL, '[:]', NULL, 'Approve', '[points:[712,224,773,149],type:\"arrow\",pos:[712,149],size:[61,75]]');
INSERT INTO `sys_wf_transition` VALUES ('for-approval', 'waterworks_batch_billing', 'revert', 'for-reading', 1, NULL, '[:]', NULL, 'Revert', '[points:[661,222,602,104],type:\"arrow\",pos:[602,104],size:[59,118]]');
INSERT INTO `sys_wf_transition` VALUES ('for-reading', 'waterworks_batch_billing', 'submit', 'for-approval', 0, NULL, '[:]', NULL, 'Submit for Approval', '[points:[635,102,692,220],type:\"arrow\",pos:[635,102],size:[57,118]]');
INSERT INTO `sys_wf_transition` VALUES ('for-review', 'waterworks_batch_billing', 'revert', 'draft', 1, NULL, '[:]', NULL, 'Revert', '[points:[492,150,505,213,377,274,232,217],type:\"arrow\",pos:[232,150],size:[273,124]]');
INSERT INTO `sys_wf_transition` VALUES ('for-review', 'waterworks_batch_billing', 'submit', 'for-reading', 0, NULL, '[showPrompt:true]', NULL, 'Submit for Reading', '[points:[538,107,576,95],type:\"arrow\",pos:[538,95],size:[38,12]]');
INSERT INTO `sys_wf_transition` VALUES ('processing', 'waterworks_batch_billing', 'submit', 'for-review', 0, NULL, '[:]', NULL, 'Submit for Review', '[points:[311,126,313,147,366,181,442,133],type:\"arrow\",pos:[311,126],size:[131,55]]');
INSERT INTO `sys_wf_transition` VALUES ('start', 'waterworks_batch_billing', 'submit', 'draft', 0, NULL, '[autostart:true]', NULL, NULL, '[points:[104,80,160,170],type:\"arrow\",pos:[104,80],size:[56,90]]');
COMMIT;

-- ----------------------------
-- Table structure for waterworks_account
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_account`;
CREATE TABLE `waterworks_account` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  `dtstarted` date DEFAULT NULL,
  `acctno` varchar(50) DEFAULT NULL,
  `applicationid` varchar(50) DEFAULT NULL,
  `acctname` varchar(255) DEFAULT NULL,
  `owner_objid` varchar(50) DEFAULT NULL,
  `owner_name` varchar(255) DEFAULT NULL,
  `address_type` varchar(50) DEFAULT NULL,
  `address_barangay_objid` varchar(50) DEFAULT NULL,
  `address_barangay_name` varchar(50) DEFAULT NULL,
  `address_text` varchar(255) DEFAULT NULL,
  `address_city` varchar(50) DEFAULT NULL,
  `address_province` varchar(50) DEFAULT NULL,
  `address_municipality` varchar(50) DEFAULT NULL,
  `address_unitno` varchar(50) DEFAULT NULL,
  `address_street` varchar(50) DEFAULT NULL,
  `address_subdivision` varchar(50) DEFAULT NULL,
  `address_bldgno` varchar(50) DEFAULT NULL,
  `address_bldgname` varchar(50) DEFAULT NULL,
  `address_pin` varchar(50) DEFAULT NULL,
  `meterid` varchar(50) DEFAULT NULL,
  `classificationid` varchar(50) DEFAULT NULL,
  `lastdatepaid` datetime DEFAULT NULL,
  `stuboutnodeid` varchar(50) DEFAULT NULL,
  `lastbilldate` date DEFAULT NULL,
  `units` int(11) DEFAULT NULL,
  `remarks` text,
  PRIMARY KEY (`objid`) USING BTREE,
  UNIQUE KEY `fk_waterworks_account_meter` (`meterid`) USING BTREE,
  KEY `fk_waterworks_account_classification` (`classificationid`) USING BTREE,
  KEY `ix_acctno` (`acctno`) USING BTREE,
  KEY `ix_applicationid` (`applicationid`) USING BTREE,
  KEY `ix_dtstarted` (`dtstarted`) USING BTREE,
  KEY `ix_acctname` (`acctname`) USING BTREE,
  KEY `ix_owner_objid` (`owner_objid`) USING BTREE,
  KEY `ix_meterid` (`meterid`) USING BTREE,
  KEY `ix_stuboutnodeid` (`stuboutnodeid`) USING BTREE,
  KEY `ix_lastbilldate` (`lastbilldate`) USING BTREE,
  CONSTRAINT `fk_waterworks_account_applicationid` FOREIGN KEY (`applicationid`) REFERENCES `waterworks_application` (`objid`),
  CONSTRAINT `fk_waterworks_account_classificationid` FOREIGN KEY (`classificationid`) REFERENCES `waterworks_classification` (`objid`),
  CONSTRAINT `fk_waterworks_account_meterid` FOREIGN KEY (`meterid`) REFERENCES `waterworks_meter` (`objid`),
  CONSTRAINT `fk_waterworks_account_stuboutnodeid` FOREIGN KEY (`stuboutnodeid`) REFERENCES `waterworks_stubout_node` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of waterworks_account
-- ----------------------------
BEGIN;
INSERT INTO `waterworks_account` VALUES ('WACC-25143731:16f884f6eac:-74a3', 'ACTIVE', '2019-01-01', 'W001', NULL, 'NAZARENO, FELY', 'FITP00087705', 'NAZARENO, FELY', 'local', '13701064', 'BAGACAY', 'U1 BLDG 1\nBAGACAY,LEGAZPI CITY', 'LEGAZPI CITY', NULL, NULL, 'U1', NULL, NULL, 'BLDG 1', NULL, NULL, 'WM-25143731:16f884f6eac:-798c', 'RESIDENTIAL', NULL, 'WNODE-25143731:16f884f6eac:-7569', NULL, 1, NULL);
INSERT INTO `waterworks_account` VALUES ('WACC-7a1a88ba:16f8ea2b93e:-7dc7', 'ACTIVE', '2020-01-10', '56555521', NULL, 'FLORES, WORGIE', 'FITP00085517', 'FLORES, EFREN C.', 'local', '13701064', 'BAGACAY', 'BLDGH 1\nBAGACAY,LEGAZPI CITY', 'LEGAZPI CITY', NULL, NULL, NULL, NULL, NULL, NULL, 'BLDGH 1', NULL, 'WM-7a1a88ba:16f8ea2b93e:-7a15', 'RESIDENTIAL', NULL, 'WNODE-7a1a88ba:16f8ea2b93e:-7b06', NULL, 1, 'Test 2');
COMMIT;

-- ----------------------------
-- Table structure for waterworks_account_attribute
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_account_attribute`;
CREATE TABLE `waterworks_account_attribute` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) DEFAULT NULL,
  `attribute_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for waterworks_application
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_application`;
CREATE TABLE `waterworks_application` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  `dtfiled` date DEFAULT NULL,
  `appno` varchar(50) DEFAULT NULL,
  `acctid` varchar(50) DEFAULT NULL,
  `classificationid` varchar(50) DEFAULT NULL,
  `acctname` varchar(50) DEFAULT NULL,
  `owner_objid` varchar(50) DEFAULT NULL,
  `owner_name` varchar(255) DEFAULT NULL,
  `address_type` varchar(50) DEFAULT NULL,
  `address_barangay_objid` varchar(50) DEFAULT NULL,
  `address_barangay_name` varchar(50) DEFAULT NULL,
  `address_text` varchar(50) DEFAULT NULL,
  `address_city` varchar(50) DEFAULT NULL,
  `address_province` varchar(50) DEFAULT NULL,
  `address_municipality` varchar(50) DEFAULT NULL,
  `address_unitno` varchar(50) DEFAULT NULL,
  `address_street` varchar(50) DEFAULT NULL,
  `address_subdivision` varchar(50) DEFAULT NULL,
  `address_bldgno` varchar(50) DEFAULT NULL,
  `address_bldgname` varchar(50) DEFAULT NULL,
  `address_pin` varchar(50) DEFAULT NULL,
  `stuboutid` varchar(50) DEFAULT NULL,
  `stuboutindex` int(11) DEFAULT NULL,
  `meterid` varchar(50) DEFAULT NULL,
  `initialreading` int(11) DEFAULT NULL,
  `installer_name` varchar(255) DEFAULT NULL,
  `installer_objid` varchar(50) DEFAULT NULL,
  `dtinstalled` date DEFAULT NULL,
  `signature` longtext,
  `meterprovider` varchar(255) DEFAULT NULL,
  `stuboutnodeid` varchar(50) DEFAULT NULL,
  `metersizeid` varchar(50) DEFAULT NULL,
  `taskid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `ix_classificationid` (`classificationid`) USING BTREE,
  KEY `ix_acctname` (`acctname`) USING BTREE,
  KEY `ix_owner_objid` (`owner_objid`) USING BTREE,
  KEY `ix_address_barangay_objid` (`address_barangay_objid`) USING BTREE,
  KEY `ix_stuboutid` (`stuboutid`) USING BTREE,
  KEY `ix_meterid` (`meterid`) USING BTREE,
  KEY `ix_installer_objid` (`installer_objid`) USING BTREE,
  KEY `ix_dtinstalled` (`dtinstalled`) USING BTREE,
  KEY `fk_waterworks_application_taskid` (`taskid`),
  CONSTRAINT `fk_waterworks_application_taskid` FOREIGN KEY (`taskid`) REFERENCES `waterworks_application_task` (`taskid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for waterworks_application_bom
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_application_bom`;
CREATE TABLE `waterworks_application_bom` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `item_objid` varchar(50) DEFAULT NULL,
  `item_code` varchar(50) DEFAULT NULL,
  `item_title` varchar(255) DEFAULT NULL,
  `item_unit` varchar(10) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `qtyissued` int(11) DEFAULT NULL,
  `item_unitprice` decimal(10,2) DEFAULT NULL,
  `cwdsupplied` int(11) DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  KEY `fk_application_bom` (`parentid`) USING BTREE,
  CONSTRAINT `fk_waterworks_application_bom_parentid` FOREIGN KEY (`parentid`) REFERENCES `waterworks_application` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for waterworks_application_fee
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_application_fee`;
CREATE TABLE `waterworks_application_fee` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `txntype` varchar(10) DEFAULT NULL,
  `item_objid` varchar(50) DEFAULT NULL,
  `item_code` varchar(50) DEFAULT NULL,
  `item_title` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `amount` decimal(16,2) DEFAULT NULL,
  `amtpaid` decimal(16,2) DEFAULT NULL,
  `installmentid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `fk_application_fee_application` (`parentid`) USING BTREE,
  CONSTRAINT `fk_waterworks_application_fee_parentid` FOREIGN KEY (`parentid`) REFERENCES `waterworks_application` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for waterworks_application_requirement
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_application_requirement`;
CREATE TABLE `waterworks_application_requirement` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `refno` varchar(50) DEFAULT NULL,
  `refid` varchar(50) DEFAULT NULL,
  `sortorder` int(11) DEFAULT NULL,
  `required` tinyint(4) DEFAULT NULL,
  `complied` tinyint(4) DEFAULT NULL,
  `dtcomplied` datetime DEFAULT NULL,
  `verifier_objid` varchar(50) DEFAULT NULL,
  `verifier_name` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `info` longtext,
  `dtissued` date DEFAULT NULL,
  `expirydate` date DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for waterworks_application_task
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_application_task`;
CREATE TABLE `waterworks_application_task` (
  `taskid` varchar(50) NOT NULL,
  `refid` varchar(50) DEFAULT NULL,
  `parentprocessid` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `startdate` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  `assignee_objid` varchar(50) DEFAULT NULL,
  `assignee_name` varchar(100) DEFAULT NULL,
  `actor_objid` varchar(50) DEFAULT NULL,
  `actor_name` varchar(100) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `prevtaskid` varchar(50) DEFAULT NULL,
  `dtcreated` datetime DEFAULT NULL,
  PRIMARY KEY (`taskid`) USING BTREE,
  KEY `ix_refid` (`refid`) USING BTREE,
  CONSTRAINT `fk_waterworks_application_task_refid` FOREIGN KEY (`refid`) REFERENCES `waterworks_application` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for waterworks_attribute
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_attribute`;
CREATE TABLE `waterworks_attribute` (
  `name` varchar(50) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for waterworks_batch_billing
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_batch_billing`;
CREATE TABLE `waterworks_batch_billing` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  `dtcreated` datetime DEFAULT NULL,
  `createdby_objid` varchar(50) DEFAULT NULL,
  `createdby_name` varchar(255) DEFAULT NULL,
  `zoneid` varchar(50) DEFAULT NULL,
  `dtposted` datetime DEFAULT NULL,
  `postedby_objid` varchar(50) DEFAULT NULL,
  `postedby_name` varchar(255) DEFAULT NULL,
  `reader_objid` varchar(50) DEFAULT NULL,
  `reader_name` varchar(255) DEFAULT NULL,
  `scheduleid` varchar(50) DEFAULT NULL,
  `taskid` varchar(50) DEFAULT NULL,
  `readingdate` date NOT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `ix_dtcreated` (`dtcreated`) USING BTREE,
  KEY `ix_createdby_objid` (`createdby_objid`) USING BTREE,
  KEY `ix_zoneid` (`zoneid`) USING BTREE,
  KEY `ix_dtposted` (`dtposted`) USING BTREE,
  KEY `ix_postedby_objid` (`postedby_objid`) USING BTREE,
  KEY `ix_reader_objid` (`reader_objid`) USING BTREE,
  KEY `ix_taskid` (`taskid`) USING BTREE,
  KEY `ix_scheduleid` (`scheduleid`) USING BTREE,
  KEY `ix_readingdate` (`readingdate`) USING BTREE,
  CONSTRAINT `fk_waterworks_batch_billing_scheduleid` FOREIGN KEY (`scheduleid`) REFERENCES `waterworks_billing_schedule` (`objid`),
  CONSTRAINT `fk_waterworks_batch_billing_taskid` FOREIGN KEY (`taskid`) REFERENCES `waterworks_batch_billing_task` (`taskid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of waterworks_batch_billing
-- ----------------------------
BEGIN;
INSERT INTO `waterworks_batch_billing` VALUES ('WBILLA1202002', 'COMPLETED', '2020-01-17 10:25:33', 'USR-6bf98eba:1254696a2c9:-7ff6', 'ADMIN . ADMIN', 'WSZ-25143731:16f884f6eac:-773c', NULL, NULL, NULL, 'USR-6bf98eba:1254696a2c9:-7ff6', 'ADMIN ADMIN', 'S1-2020-02', 'WWBTCHTASK7039773f:16fb20b5434:-8000', '2020-02-01');
COMMIT;

-- ----------------------------
-- Table structure for waterworks_batch_billing_task
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_batch_billing_task`;
CREATE TABLE `waterworks_batch_billing_task` (
  `taskid` varchar(50) NOT NULL,
  `refid` varchar(50) DEFAULT NULL,
  `parentprocessid` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `startdate` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  `assignee_objid` varchar(50) DEFAULT NULL,
  `assignee_name` varchar(100) DEFAULT NULL,
  `actor_objid` varchar(50) DEFAULT NULL,
  `actor_name` varchar(100) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `dtcreated` datetime DEFAULT NULL,
  `prevtaskid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`taskid`) USING BTREE,
  KEY `ix_refid` (`refid`) USING BTREE,
  CONSTRAINT `fk_waterworks_batch_billing_task_refid` FOREIGN KEY (`refid`) REFERENCES `waterworks_batch_billing` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of waterworks_batch_billing_task
-- ----------------------------
BEGIN;
INSERT INTO `waterworks_batch_billing_task` VALUES ('WWBTCHTASK3bfd8fd7:16fb151ef54:-7ffa', 'WBILLA1202002', NULL, 'approved', NULL, '2020-01-17 13:48:04', NULL, NULL, 'USR-6bf98eba:1254696a2c9:-7ff6', 'ADMIN . ADMIN', NULL, '2020-01-17 10:45:05', 'WWBTCHTASK3bfd8fd7:16fb151ef54:-7ffb');
INSERT INTO `waterworks_batch_billing_task` VALUES ('WWBTCHTASK3bfd8fd7:16fb151ef54:-7ffb', 'WBILLA1202002', NULL, 'for-approval', NULL, '2020-01-17 10:45:05', NULL, NULL, 'USR-6bf98eba:1254696a2c9:-7ff6', 'ADMIN . ADMIN', NULL, '2020-01-17 10:42:24', 'WWBTCHTASK3bfd8fd7:16fb151ef54:-7ffc');
INSERT INTO `waterworks_batch_billing_task` VALUES ('WWBTCHTASK3bfd8fd7:16fb151ef54:-7ffc', 'WBILLA1202002', NULL, 'for-reading', NULL, '2020-01-17 10:42:24', NULL, NULL, 'USR-6bf98eba:1254696a2c9:-7ff6', 'ADMIN . ADMIN', '-', '2020-01-17 10:28:46', 'WWBTCHTASK3bfd8fd7:16fb151ef54:-7ffd');
INSERT INTO `waterworks_batch_billing_task` VALUES ('WWBTCHTASK3bfd8fd7:16fb151ef54:-7ffd', 'WBILLA1202002', NULL, 'for-review', NULL, '2020-01-17 10:28:46', NULL, NULL, 'USR-6bf98eba:1254696a2c9:-7ff6', 'ADMIN . ADMIN', NULL, '2020-01-17 10:25:57', 'WWBTCHTASK3bfd8fd7:16fb151ef54:-7ffe');
INSERT INTO `waterworks_batch_billing_task` VALUES ('WWBTCHTASK3bfd8fd7:16fb151ef54:-7ffe', 'WBILLA1202002', NULL, 'processing', NULL, '2020-01-17 10:25:57', NULL, NULL, 'USR-6bf98eba:1254696a2c9:-7ff6', 'ADMIN . ADMIN', NULL, '2020-01-17 10:25:51', 'WWBTCHTASK3bfd8fd7:16fb151ef54:-7fff');
INSERT INTO `waterworks_batch_billing_task` VALUES ('WWBTCHTASK3bfd8fd7:16fb151ef54:-7fff', 'WBILLA1202002', NULL, 'draft', '2020-01-17 10:25:34', '2020-01-17 10:25:51', NULL, NULL, 'USR-6bf98eba:1254696a2c9:-7ff6', 'ADMIN . ADMIN', NULL, '2020-01-17 10:25:34', 'WWBTCHTASK3bfd8fd7:16fb151ef54:-8000');
INSERT INTO `waterworks_batch_billing_task` VALUES ('WWBTCHTASK3bfd8fd7:16fb151ef54:-8000', 'WBILLA1202002', NULL, 'start', '2020-01-17 10:25:34', '2020-01-17 10:25:34', NULL, NULL, 'USR-6bf98eba:1254696a2c9:-7ff6', 'ADMIN . ADMIN', NULL, '2020-01-17 10:25:34', NULL);
INSERT INTO `waterworks_batch_billing_task` VALUES ('WWBTCHTASK7039773f:16fb20b5434:-8000', 'WBILLA1202002', NULL, 'end', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-17 13:48:04', 'WWBTCHTASK3bfd8fd7:16fb151ef54:-7ffa');
COMMIT;

-- ----------------------------
-- Table structure for waterworks_billing
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_billing`;
CREATE TABLE `waterworks_billing` (
  `objid` varchar(50) NOT NULL,
  `batchid` varchar(50) DEFAULT NULL,
  `acctid` varchar(50) DEFAULT NULL,
  `billno` varchar(50) DEFAULT NULL,
  `consumptionid` varchar(50) DEFAULT NULL,
  `state` varchar(32) DEFAULT NULL,
  `surcharge` decimal(16,2) DEFAULT NULL,
  `interest` decimal(16,2) DEFAULT NULL,
  `otherfees` decimal(16,2) DEFAULT NULL,
  `credits` decimal(16,2) DEFAULT NULL,
  `arrears` decimal(16,2) DEFAULT NULL,
  `averageconsumption` int(11) DEFAULT NULL,
  `billed` int(11) DEFAULT NULL,
  `unpaidmonths` int(11) DEFAULT NULL,
  `refbillno` varchar(50) DEFAULT NULL,
  `printed` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  UNIQUE KEY `uix_batchid_acctid` (`batchid`,`acctid`) USING BTREE,
  KEY `ix_batchid` (`batchid`) USING BTREE,
  KEY `ix_consumptionid` (`consumptionid`) USING BTREE,
  CONSTRAINT `fk_waterworks_billing_batchid` FOREIGN KEY (`batchid`) REFERENCES `waterworks_batch_billing` (`objid`),
  CONSTRAINT `fk_waterworks_billing_consumptionid` FOREIGN KEY (`consumptionid`) REFERENCES `waterworks_consumption` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of waterworks_billing
-- ----------------------------
BEGIN;
INSERT INTO `waterworks_billing` VALUES ('WBILLA1202002-0001', 'WBILLA1202002', 'WACC-25143731:16f884f6eac:-74a3', 'WBILLA1202002-0001', 'WACC-25143731:16f884f6eac:-74a3-S1-2020-02', 'DRAFT', 0.00, 0.00, 0.00, 5100.00, 0.00, 0, 1, 0, NULL, 0);
INSERT INTO `waterworks_billing` VALUES ('WBILLA1202002-0002', 'WBILLA1202002', 'WACC-7a1a88ba:16f8ea2b93e:-7dc7', 'WBILLA1202002-0002', 'WACC-7a1a88ba:16f8ea2b93e:-7dc7-S1-2020-02', 'DRAFT', 6.02, 0.00, 0.00, 0.00, 43.00, 0, 1, 0, NULL, 0);
COMMIT;

-- ----------------------------
-- Table structure for waterworks_billing_schedule
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_billing_schedule`;
CREATE TABLE `waterworks_billing_schedule` (
  `objid` varchar(50) NOT NULL,
  `scheduleid` varchar(50) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `fromperiod` date DEFAULT NULL,
  `toperiod` date DEFAULT NULL,
  `readingdate` date DEFAULT NULL,
  `readingduedate` date DEFAULT NULL,
  `billingduedate` date DEFAULT NULL,
  `discdate` date DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  UNIQUE KEY `uix_scheduleid_year_month` (`scheduleid`,`year`,`month`) USING BTREE,
  KEY `ix_schedule_objid` (`scheduleid`) USING BTREE,
  KEY `ix_year` (`year`) USING BTREE,
  KEY `ix_month` (`month`) USING BTREE,
  KEY `ix_readingdate` (`readingdate`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of waterworks_billing_schedule
-- ----------------------------
BEGIN;
INSERT INTO `waterworks_billing_schedule` VALUES ('S1-2019-10', 'S1', 2019, 10, '2019-09-01', '2019-10-01', '2019-10-01', '2019-10-07', '2019-10-07', '2019-10-22', '2019-10-27');
INSERT INTO `waterworks_billing_schedule` VALUES ('S1-2019-11', 'S1', 2019, 11, '2019-10-01', '2019-11-01', '2019-11-01', '2019-11-07', '2019-11-07', '2019-11-22', '2019-11-27');
INSERT INTO `waterworks_billing_schedule` VALUES ('S1-2020-01', 'S1', 2020, 1, '2019-12-01', '2020-01-01', '2020-01-01', '2020-01-07', '2020-01-07', '2020-01-22', '2020-01-27');
INSERT INTO `waterworks_billing_schedule` VALUES ('S1-2020-02', 'S1', 2020, 2, '2020-01-01', '2020-02-01', '2020-02-01', '2020-02-06', '2020-02-06', '2020-02-21', '2020-02-26');
INSERT INTO `waterworks_billing_schedule` VALUES ('S1-2020-03', 'S1', 2020, 3, '2020-02-01', '2020-03-01', '2020-03-01', '2020-03-05', '2020-03-05', '2020-03-20', '2020-03-25');
COMMIT;

-- ----------------------------
-- Table structure for waterworks_block_schedule
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_block_schedule`;
CREATE TABLE `waterworks_block_schedule` (
  `objid` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of waterworks_block_schedule
-- ----------------------------
BEGIN;
INSERT INTO `waterworks_block_schedule` VALUES ('S1', 'schedule 1');
COMMIT;

-- ----------------------------
-- Table structure for waterworks_changelog
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_changelog`;
CREATE TABLE `waterworks_changelog` (
  `objid` varchar(50) NOT NULL,
  `refid` varchar(50) NOT NULL,
  `reftype` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `oldvalue` text,
  `newvalue` text,
  `dtfiled` datetime DEFAULT NULL,
  `filedby_name` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `controlno` varchar(32) DEFAULT NULL,
  `filedby_objid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `ix_refid` (`refid`) USING BTREE,
  KEY `ix_reftype` (`reftype`) USING BTREE,
  KEY `ix_action` (`action`) USING BTREE,
  KEY `ix_dtfiled` (`dtfiled`) USING BTREE,
  KEY `ix_controlno` (`controlno`) USING BTREE,
  KEY `ix_filedby_objid` (`filedby_objid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of waterworks_changelog
-- ----------------------------
BEGIN;
INSERT INTO `waterworks_changelog` VALUES ('CHGINFO-1e1d870f:16f8960b389:-8000', 'WM-25143731:16f884f6eac:-798c', 'waterworks_meter', 'update', '[lastreading:0]', '[lastreading:100]', '2020-01-09 16:16:53', 'ADMIN . ADMIN', 'Add last reading', 'CI-2020010000000001', 'USR-6bf98eba:1254696a2c9:-7ff6');
COMMIT;

-- ----------------------------
-- Table structure for waterworks_classification
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_classification`;
CREATE TABLE `waterworks_classification` (
  `objid` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of waterworks_classification
-- ----------------------------
BEGIN;
INSERT INTO `waterworks_classification` VALUES ('BULK', 'BULK');
INSERT INTO `waterworks_classification` VALUES ('COMMERCIAL', 'COMMERCIAL');
INSERT INTO `waterworks_classification` VALUES ('GOVERNMENT', 'GOVERNMENT');
INSERT INTO `waterworks_classification` VALUES ('INDUSTRIAL', 'INDUSTRIAL');
INSERT INTO `waterworks_classification` VALUES ('RESIDENTIAL', 'RESIDENTIAL');
COMMIT;

-- ----------------------------
-- Table structure for waterworks_consumption
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_consumption`;
CREATE TABLE `waterworks_consumption` (
  `objid` varchar(50) NOT NULL,
  `acctid` varchar(50) DEFAULT NULL,
  `txnmode` varchar(50) DEFAULT NULL,
  `prevreading` int(11) DEFAULT NULL,
  `reading` int(11) DEFAULT NULL,
  `volume` int(11) DEFAULT NULL,
  `rate` decimal(16,2) DEFAULT NULL,
  `amount` decimal(16,2) DEFAULT NULL,
  `amtpaid` decimal(16,2) DEFAULT NULL,
  `batchid` varchar(50) DEFAULT NULL,
  `state` varchar(32) DEFAULT NULL,
  `meterid` varchar(50) DEFAULT NULL,
  `scheduleid` varchar(50) DEFAULT NULL,
  `hold` int(11) NOT NULL DEFAULT '0',
  `discount` decimal(16,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`objid`) USING BTREE,
  UNIQUE KEY `uix_acctid_scheduleid` (`acctid`,`scheduleid`) USING BTREE,
  KEY `ix_batchid` (`batchid`) USING BTREE,
  KEY `ix_meterid` (`meterid`) USING BTREE,
  KEY `ix_scheduleid` (`scheduleid`) USING BTREE,
  KEY `ix_acctid` (`acctid`) USING BTREE,
  CONSTRAINT `fk_waterworks_consumption_acctid` FOREIGN KEY (`acctid`) REFERENCES `waterworks_account` (`objid`),
  CONSTRAINT `fk_waterworks_consumption_batchid` FOREIGN KEY (`batchid`) REFERENCES `waterworks_batch_billing` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of waterworks_consumption
-- ----------------------------
BEGIN;
INSERT INTO `waterworks_consumption` VALUES ('WAC-25143731:16f884f6eac:-683b', 'WACC-25143731:16f884f6eac:-74a3', 'BEGIN_BALANCE', 100, 100, 0, NULL, 10000.00, 10000.00, NULL, 'POSTED', 'WM-25143731:16f884f6eac:-798c', 'S1-2019-11', 0, 0.00);
INSERT INTO `waterworks_consumption` VALUES ('WAC-47486f12:16fa82a4c3d:-7c00', 'WACC-7a1a88ba:16f8ea2b93e:-7dc7', 'CAPTURE', 230, 250, 20, NULL, 43.00, 0.00, NULL, 'POSTED', 'WM-7a1a88ba:16f8ea2b93e:-7a15', 'S1-2019-11', 0, 0.00);
INSERT INTO `waterworks_consumption` VALUES ('WACC-25143731:16f884f6eac:-74a3-S1-2020-02', 'WACC-25143731:16f884f6eac:-74a3', 'ONLINE', 100, 140, 40, 0.00, 105.00, 105.00, 'WBILLA1202002', 'POSTED', 'WM-25143731:16f884f6eac:-798c', 'S1-2020-02', 0, 0.00);
INSERT INTO `waterworks_consumption` VALUES ('WACC-7a1a88ba:16f8ea2b93e:-7dc7-S1-2020-02', 'WACC-7a1a88ba:16f8ea2b93e:-7dc7', 'ONLINE', 250, 270, 20, 0.00, 43.00, 0.00, 'WBILLA1202002', 'POSTED', 'WM-7a1a88ba:16f8ea2b93e:-7a15', 'S1-2020-02', 0, 0.00);
COMMIT;

-- ----------------------------
-- Table structure for waterworks_credit
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_credit`;
CREATE TABLE `waterworks_credit` (
  `objid` varchar(50) NOT NULL,
  `acctid` varchar(50) DEFAULT NULL,
  `refno` varchar(50) DEFAULT NULL,
  `refid` varchar(50) DEFAULT NULL,
  `reftype` varchar(50) DEFAULT NULL,
  `refdate` date DEFAULT NULL,
  `dr` decimal(16,2) DEFAULT NULL,
  `cr` decimal(16,2) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `ix_acctid` (`acctid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of waterworks_credit
-- ----------------------------
BEGIN;
INSERT INTO `waterworks_credit` VALUES ('WCRED-5a5214fc:16fad144d93:-7ff9', 'WACC-25143731:16f884f6eac:-74a3', 'A5500026', 'RCT-73f39491:16fac127b59:-7d6c', 'cashreceipt', '2020-01-16', 3000.00, 0.00, NULL);
INSERT INTO `waterworks_credit` VALUES ('WCRED-5a5214fc:16fad144d93:-7ffe', 'WACC-25143731:16f884f6eac:-74a3', 'A5500025', 'RCT-73f39491:16fac127b59:-7d79', 'cashreceipt', '2020-01-16', 2100.00, 0.00, NULL);
INSERT INTO `waterworks_credit` VALUES ('WCRED7039773f:16fb20b5434:-7ffe', 'WACC-25143731:16f884f6eac:-74a3', NULL, 'WBILLA1202002-0001', 'cashreceipt', NULL, 0.00, 105.00, NULL);
COMMIT;

-- ----------------------------
-- Table structure for waterworks_formula
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_formula`;
CREATE TABLE `waterworks_formula` (
  `classificationid` varchar(100) NOT NULL,
  `varname` varchar(50) DEFAULT NULL,
  `expr` longtext,
  PRIMARY KEY (`classificationid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for waterworks_installment
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_installment`;
CREATE TABLE `waterworks_installment` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(10) DEFAULT NULL,
  `controlno` varchar(100) DEFAULT NULL,
  `doctype` varchar(10) DEFAULT NULL,
  `dtfiled` datetime DEFAULT NULL,
  `particulars` varchar(255) DEFAULT NULL,
  `term` int(11) DEFAULT NULL,
  `downpayment` decimal(16,2) DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `acctid` varchar(50) DEFAULT NULL,
  `applicationid` varchar(50) DEFAULT NULL,
  `installmentamount` decimal(16,2) DEFAULT NULL,
  `lastbilldate` date DEFAULT NULL,
  `amtbilled` decimal(16,2) DEFAULT NULL,
  `amount` decimal(16,2) DEFAULT NULL,
  `amtpaid` decimal(16,2) DEFAULT NULL,
  `txntype_objid` varchar(50) DEFAULT NULL,
  `startyear` int(11) DEFAULT NULL,
  `startmonth` int(11) DEFAULT NULL,
  `txntypeid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `ix_acctid` (`acctid`) USING BTREE,
  KEY `ix_applicationid` (`applicationid`) USING BTREE,
  KEY `ix_enddate` (`enddate`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for waterworks_itemaccount
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_itemaccount`;
CREATE TABLE `waterworks_itemaccount` (
  `objid` varchar(50) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `item_objid` varchar(50) DEFAULT NULL,
  `item_code` varchar(50) DEFAULT NULL,
  `item_title` varchar(255) DEFAULT NULL,
  `item_fund_objid` varchar(50) DEFAULT NULL,
  `sortorder` int(10) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of waterworks_itemaccount
-- ----------------------------
BEGIN;
INSERT INTO `waterworks_itemaccount` VALUES ('REVITEM-66153714:140b876a648:-7ec9', 'ICWS WATER BILL PENALTY', 'FTFA00000661', '4-02-02-990-1', 'WATER BILL SURCHARGE', 'GENERAL', 100);
INSERT INTO `waterworks_itemaccount` VALUES ('REVITEM-677886ef:140be489c11:-7f4f', 'ICWS WATER RECONNECTION FEE', 'REVITEM-677886ef:140be489c11:-7f4f', '639-005', 'ICWS WATER RECONNECTION FEE', NULL, 100);
INSERT INTO `waterworks_itemaccount` VALUES ('WATER_ADVANCE_PAYMENT', 'WATER ADVANCE PAYMENT', 'ITMACCT44530f2d:16fa19a7292:-7bef', '4-02', 'WATER SALES - ADVANCE PAYMENT', 'GENERAL', 200);
INSERT INTO `waterworks_itemaccount` VALUES ('WATER_CLEARANCE', 'WATER CLEARANCE', 'ITMACCT42a35a90:160c40e80aa:-7533', '4-02-02-200', 'DRINKING WATER SITE CLEARANCE', 'GENERAL', 1);
INSERT INTO `waterworks_itemaccount` VALUES ('WATER_DISCOUNT', 'WATER DISCOUNT', 'ITMACCT44530f2d:16fa19a7292:-7b38', '4-02', 'WATER SALES DISCOUNT', 'GENERAL', 2);
INSERT INTO `waterworks_itemaccount` VALUES ('WATER_SALES', 'WATER SALES', 'ITMACCT44530f2d:16fa19a7292:-7d72', '4-02', 'WATER SALES', 'GENERAL', 1);
INSERT INTO `waterworks_itemaccount` VALUES ('WATER_TAX_CREDIT', 'WATER SALES - TAX CREDIT', 'ITMACCT-41d808ec:16fa2b737d3:-7d1f', '4-02', 'WATER TAX CREDIT', 'GENERAL', 1);
COMMIT;

-- ----------------------------
-- Table structure for waterworks_material
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_material`;
CREATE TABLE `waterworks_material` (
  `objid` varchar(50) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `unitprice` decimal(16,2) DEFAULT NULL,
  `unit` varchar(10) DEFAULT NULL,
  `installmentprice` decimal(16,2) DEFAULT NULL,
  `unitcost` decimal(16,2) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  UNIQUE KEY `uix_waterworks_code` (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for waterworks_meter
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_meter`;
CREATE TABLE `waterworks_meter` (
  `objid` varchar(50) NOT NULL,
  `serialno` varchar(50) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `sizeid` varchar(50) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `stocktype` varchar(50) DEFAULT NULL,
  `state` varchar(32) NOT NULL,
  `lastreading` int(11) DEFAULT NULL,
  `lastreadingdate` date DEFAULT NULL,
  `currentacctid` varchar(50) DEFAULT NULL,
  `ukey` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`objid`) USING BTREE,
  UNIQUE KEY `uix_serialno` (`serialno`,`ukey`) USING BTREE,
  KEY `ix_brand` (`brand`) USING BTREE,
  KEY `ix_sizeid` (`sizeid`) USING BTREE,
  KEY `ix_state` (`state`) USING BTREE,
  KEY `ix_lastreadingdate` (`lastreadingdate`) USING BTREE,
  KEY `ix_currentacctid` (`currentacctid`) USING BTREE,
  CONSTRAINT `fk_waterworks_meter_currentacctid` FOREIGN KEY (`currentacctid`) REFERENCES `waterworks_account` (`objid`),
  CONSTRAINT `fk_waterworks_meter_sizeid` FOREIGN KEY (`sizeid`) REFERENCES `waterworks_metersize` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of waterworks_meter
-- ----------------------------
BEGIN;
INSERT INTO `waterworks_meter` VALUES ('WM-25143731:16f884f6eac:-798c', '123456', 'METER 1', 'ONE_HALF', 10000, 'STOCK', 'ACTIVE', 140, '2020-02-01', 'WACC-25143731:16f884f6eac:-74a3', '');
INSERT INTO `waterworks_meter` VALUES ('WM-7a1a88ba:16f8ea2b93e:-7a15', '88765421', 'NON', 'FOUR_INCH', 10000, 'STOCK', 'ACTIVE', 270, '2020-02-01', 'WACC-7a1a88ba:16f8ea2b93e:-7dc7', '');
COMMIT;

-- ----------------------------
-- Table structure for waterworks_metersize
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_metersize`;
CREATE TABLE `waterworks_metersize` (
  `objid` varchar(50) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of waterworks_metersize
-- ----------------------------
BEGIN;
INSERT INTO `waterworks_metersize` VALUES ('FOUR_INCH', '4\"');
INSERT INTO `waterworks_metersize` VALUES ('ONE_AND_HALF_INCH', '1 1/2\"');
INSERT INTO `waterworks_metersize` VALUES ('ONE_HALF', '1/2\"');
INSERT INTO `waterworks_metersize` VALUES ('ONE_INCH', '1\"');
INSERT INTO `waterworks_metersize` VALUES ('SIX_INCH', '6\"');
INSERT INTO `waterworks_metersize` VALUES ('THREE_FOURTH_INCH', '3/4\"');
INSERT INTO `waterworks_metersize` VALUES ('THREE_INCH', '3\"');
INSERT INTO `waterworks_metersize` VALUES ('TWO_INCH', '2\"');
COMMIT;

-- ----------------------------
-- Table structure for waterworks_mobile_header
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_mobile_header`;
CREATE TABLE `waterworks_mobile_header` (
  `batchid` varchar(50) NOT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`batchid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for waterworks_mobile_info
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_mobile_info`;
CREATE TABLE `waterworks_mobile_info` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  `acctno` varchar(50) DEFAULT NULL,
  `acctname` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `serialno` varchar(50) DEFAULT NULL,
  `sectorid` varchar(50) DEFAULT NULL,
  `sectorcode` varchar(50) DEFAULT NULL,
  `lastreading` int(11) DEFAULT NULL,
  `classificationid` varchar(50) DEFAULT NULL,
  `barcode` varchar(50) DEFAULT NULL,
  `batchid` varchar(50) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `period` varchar(50) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `discodate` date DEFAULT NULL,
  `rundate` datetime DEFAULT NULL,
  `items` longtext,
  `info` longtext,
  `itemaccountid` varchar(50) DEFAULT NULL,
  `stuboutid` varchar(50) DEFAULT NULL,
  `sortorder` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `ix_itemaccountid` (`itemaccountid`) USING BTREE,
  KEY `ix_batchid` (`batchid`) USING BTREE,
  KEY `ix_classificationid` (`classificationid`) USING BTREE,
  KEY `ix_stuboutid` (`stuboutid`) USING BTREE,
  KEY `ix_sectorid` (`sectorid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for waterworks_otherfee
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_otherfee`;
CREATE TABLE `waterworks_otherfee` (
  `objid` varchar(50) NOT NULL,
  `acctid` varchar(50) NOT NULL,
  `item_objid` varchar(50) NOT NULL,
  `item_code` varchar(25) DEFAULT NULL,
  `item_title` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `amount` decimal(16,4) NOT NULL,
  `amtpaid` decimal(16,4) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `discount` decimal(16,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `ix_acctid` (`acctid`) USING BTREE,
  KEY `ix_item_objid` (`item_objid`) USING BTREE,
  KEY `ix_year` (`year`) USING BTREE,
  KEY `ix_month` (`month`) USING BTREE,
  CONSTRAINT `fk_waterworks_otherfee_itemobjid` FOREIGN KEY (`item_objid`) REFERENCES `waterworks_itemaccount` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of waterworks_otherfee
-- ----------------------------
BEGIN;
INSERT INTO `waterworks_otherfee` VALUES ('WAC3f461032:16fac365440:-7d60', 'WACC-25143731:16f884f6eac:-74a3', 'WATER_CLEARANCE', NULL, 'WATER CLEARANCE', 2019, 12, 1500.0000, 1500.0000, 'ADDED ITEMS', 0.00);
COMMIT;

-- ----------------------------
-- Table structure for waterworks_payment
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_payment`;
CREATE TABLE `waterworks_payment` (
  `objid` varchar(50) NOT NULL,
  `refno` varchar(50) DEFAULT NULL,
  `reftype` varchar(50) DEFAULT NULL,
  `refid` varchar(50) DEFAULT NULL,
  `refdate` date DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `voided` int(11) DEFAULT NULL,
  `txnmode` varchar(50) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `acctid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `ix_refid` (`refid`) USING BTREE,
  KEY `ix_refno` (`refno`) USING BTREE,
  KEY `ix_refdate` (`refdate`) USING BTREE,
  KEY `fk_waterworks_payment_acctid` (`acctid`),
  CONSTRAINT `fk_waterworks_payment_acctid` FOREIGN KEY (`acctid`) REFERENCES `waterworks_account` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of waterworks_payment
-- ----------------------------
BEGIN;
INSERT INTO `waterworks_payment` VALUES ('WP-2c445cfb:16fad118f1c:-7ffc', 'A5500024', 'cashreceipt', 'RCT-73f39491:16fac127b59:-7d81', '2020-01-16', 12900.00, 1, 'ONLINE', NULL, 'WACC-25143731:16f884f6eac:-74a3');
INSERT INTO `waterworks_payment` VALUES ('WP-5a5214fc:16fad144d93:-7ff8', 'A5500026', 'cashreceipt', 'RCT-73f39491:16fac127b59:-7d6c', '2020-01-16', 3000.00, 0, 'ONLINE', NULL, 'WACC-25143731:16f884f6eac:-74a3');
INSERT INTO `waterworks_payment` VALUES ('WP-5a5214fc:16fad144d93:-7ffd', 'A5500025', 'cashreceipt', 'RCT-73f39491:16fac127b59:-7d79', '2020-01-16', 15000.00, 0, 'ONLINE', NULL, 'WACC-25143731:16f884f6eac:-74a3');
INSERT INTO `waterworks_payment` VALUES ('WP5695937:16facf78b06:-7ffb', 'A5500023', 'cashreceipt', 'RCT-73f39491:16fac127b59:-7d95', '2020-01-16', 15000.00, 1, 'ONLINE', NULL, 'WACC-25143731:16f884f6eac:-74a3');
INSERT INTO `waterworks_payment` VALUES ('WP7039773f:16fb20b5434:-7ffd', 'WBILLA1202002-0001', 'billing', 'WBILLA1202002-0001', '2020-01-17', 5100.00, 0, 'ONLINE', NULL, 'WACC-25143731:16f884f6eac:-74a3');
COMMIT;

-- ----------------------------
-- Table structure for waterworks_payment_item
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_payment_item`;
CREATE TABLE `waterworks_payment_item` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `surcharge` decimal(10,2) DEFAULT NULL,
  `interest` decimal(10,2) DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  `refid` varchar(50) DEFAULT NULL,
  `reftype` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `ix_parentid` (`parentid`) USING BTREE,
  KEY `ix_refid` (`refid`) USING BTREE,
  KEY `ix_reftype` (`reftype`) USING BTREE,
  CONSTRAINT `fk_waterworks_payment_item_parentid` FOREIGN KEY (`parentid`) REFERENCES `waterworks_payment` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of waterworks_payment_item
-- ----------------------------
BEGIN;
INSERT INTO `waterworks_payment_item` VALUES ('WPI-2c445cfb:16fad118f1c:-7ffa', 'WP-2c445cfb:16fad118f1c:-7ffc', 1500.00, 0.00, 0.00, 0.00, NULL, 'WAC3f461032:16fac365440:-7d60', 'waterworks_otherfee');
INSERT INTO `waterworks_payment_item` VALUES ('WPI-2c445cfb:16fad118f1c:-7ffb', 'WP-2c445cfb:16fad118f1c:-7ffc', 10000.00, 0.00, 1400.00, 0.00, 'Oct-2019 - Nov-2019', 'WAC-25143731:16f884f6eac:-683b', 'waterworks_consumption');
INSERT INTO `waterworks_payment_item` VALUES ('WPI-5a5214fc:16fad144d93:-7ff7', 'WP-5a5214fc:16fad144d93:-7ff8', 3000.00, NULL, NULL, NULL, NULL, 'WCRED-5a5214fc:16fad144d93:-7ff9', 'waterworks_credit');
INSERT INTO `waterworks_payment_item` VALUES ('WPI-5a5214fc:16fad144d93:-7ffa', 'WP-5a5214fc:16fad144d93:-7ffd', 2100.00, NULL, NULL, NULL, NULL, 'WCRED-5a5214fc:16fad144d93:-7ffe', 'waterworks_credit');
INSERT INTO `waterworks_payment_item` VALUES ('WPI-5a5214fc:16fad144d93:-7ffb', 'WP-5a5214fc:16fad144d93:-7ffd', 1500.00, 0.00, 0.00, 0.00, NULL, 'WAC3f461032:16fac365440:-7d60', 'waterworks_otherfee');
INSERT INTO `waterworks_payment_item` VALUES ('WPI-5a5214fc:16fad144d93:-7ffc', 'WP-5a5214fc:16fad144d93:-7ffd', 10000.00, 0.00, 1400.00, 0.00, 'Oct-2019 - Nov-2019', 'WAC-25143731:16f884f6eac:-683b', 'waterworks_consumption');
INSERT INTO `waterworks_payment_item` VALUES ('WPI5695937:16facf78b06:-7ff8', 'WP5695937:16facf78b06:-7ffb', 2100.00, NULL, NULL, NULL, NULL, 'WCRED5695937:16facf78b06:-7ffc', 'waterworks_credit');
INSERT INTO `waterworks_payment_item` VALUES ('WPI5695937:16facf78b06:-7ff9', 'WP5695937:16facf78b06:-7ffb', 1500.00, 0.00, 0.00, 0.00, NULL, 'WAC3f461032:16fac365440:-7d60', 'waterworks_otherfee');
INSERT INTO `waterworks_payment_item` VALUES ('WPI5695937:16facf78b06:-7ffa', 'WP5695937:16facf78b06:-7ffb', 10000.00, 0.00, 1400.00, 0.00, 'Oct-2019 - Nov-2019', 'WAC-25143731:16f884f6eac:-683b', 'waterworks_consumption');
INSERT INTO `waterworks_payment_item` VALUES ('WPI7039773f:16fb20b5434:-7ffb', 'WP7039773f:16fb20b5434:-7ffd', -105.00, NULL, NULL, NULL, NULL, 'WCRED7039773f:16fb20b5434:-7ffe', 'waterworks_credit');
INSERT INTO `waterworks_payment_item` VALUES ('WPI7039773f:16fb20b5434:-7ffc', 'WP7039773f:16fb20b5434:-7ffd', 105.00, 0.00, 0.00, 0.00, 'Jan-2020 - Feb-2020', 'WACC-25143731:16f884f6eac:-74a3-S1-2020-02', 'waterworks_consumption');
COMMIT;

-- ----------------------------
-- Table structure for waterworks_sector
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_sector`;
CREATE TABLE `waterworks_sector` (
  `objid` varchar(50) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  UNIQUE KEY `uix_code` (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of waterworks_sector
-- ----------------------------
BEGIN;
INSERT INTO `waterworks_sector` VALUES ('13ea869:16f88c4fdea:-8000', 'A');
COMMIT;

-- ----------------------------
-- Table structure for waterworks_stubout
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_stubout`;
CREATE TABLE `waterworks_stubout` (
  `objid` varchar(50) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `zoneid` varchar(50) DEFAULT NULL,
  `barangay_objid` varchar(50) DEFAULT NULL,
  `barangay_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `ix_zoneid` (`zoneid`) USING BTREE,
  KEY `ix_barangay_objid` (`barangay_objid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of waterworks_stubout
-- ----------------------------
BEGIN;
INSERT INTO `waterworks_stubout` VALUES ('SO-25143731:16f884f6eac:-7649', 'A1', 'BAGONG ABRE', 'WSZ-25143731:16f884f6eac:-773c', '13703048', 'BAGONG ABRE');
COMMIT;

-- ----------------------------
-- Table structure for waterworks_stubout_node
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_stubout_node`;
CREATE TABLE `waterworks_stubout_node` (
  `objid` varchar(50) NOT NULL,
  `stuboutid` varchar(50) DEFAULT NULL,
  `indexno` int(11) NOT NULL,
  `currentacctid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `ix_stuboutid` (`stuboutid`) USING BTREE,
  KEY `ix_currentacctid` (`currentacctid`) USING BTREE,
  CONSTRAINT `fk_waterworks_stubout_node_currentacctid` FOREIGN KEY (`currentacctid`) REFERENCES `waterworks_account` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of waterworks_stubout_node
-- ----------------------------
BEGIN;
INSERT INTO `waterworks_stubout_node` VALUES ('WNODE-25143731:16f884f6eac:-7569', 'SO-25143731:16f884f6eac:-7649', 1, 'WACC-25143731:16f884f6eac:-74a3');
INSERT INTO `waterworks_stubout_node` VALUES ('WNODE-7a1a88ba:16f8ea2b93e:-7b06', 'SO-25143731:16f884f6eac:-7649', 2, 'WACC-7a1a88ba:16f8ea2b93e:-7dc7');
COMMIT;

-- ----------------------------
-- Table structure for waterworks_zone
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_zone`;
CREATE TABLE `waterworks_zone` (
  `objid` varchar(50) NOT NULL,
  `sectorid` varchar(50) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `schedule_objid` varchar(50) DEFAULT NULL,
  `batchid` varchar(50) DEFAULT NULL,
  `nextscheduleid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `ix_sectorid_code` (`sectorid`,`code`) USING BTREE,
  KEY `ix_schedule_objid` (`schedule_objid`) USING BTREE,
  KEY `ix_nextscheduleid` (`nextscheduleid`) USING BTREE,
  CONSTRAINT `fk_waterworks_zone_sectorid` FOREIGN KEY (`sectorid`) REFERENCES `waterworks_sector` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of waterworks_zone
-- ----------------------------
BEGIN;
INSERT INTO `waterworks_zone` VALUES ('WSZ-25143731:16f884f6eac:-773c', '13ea869:16f88c4fdea:-8000', 'A1', 'A1', 'S1', 'WBILLA1202002', 'S1-2020-03');
COMMIT;

-- ----------------------------
-- View structure for vw_report_billing_summary
-- ----------------------------
DROP VIEW IF EXISTS `vw_report_billing_summary`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_report_billing_summary` AS select `wbs`.`year` AS `year`,`wbs`.`month` AS `month`,`ws`.`barangay_objid` AS `barangay_objid`,`ws`.`barangay_name` AS `barangay_name`,`wz`.`objid` AS `zone_objid`,`wz`.`code` AS `zone_code`,`ws`.`description` AS `zone_title`,(case when ((`cl`.`objid` = 'RESIDENTIAL') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'ACTIVE')) then 1 else 0 end) AS `res_metered`,(case when ((`cl`.`objid` = 'RESIDENTIAL') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'ACTIVE')) then `wc`.`volume` else 0 end) AS `res_meteredvol`,(case when ((`cl`.`objid` = 'RESIDENTIAL') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'ACTIVE')) then `wc`.`amount` else 0 end) AS `res_meteredamt`,(case when ((`cl`.`objid` = 'RESIDENTIAL') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'DEFECTIVE')) then 1 else 0 end) AS `res_defective`,(case when ((`cl`.`objid` = 'RESIDENTIAL') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'DEFECTIVE')) then `wc`.`volume` else 0 end) AS `res_defectivevol`,(case when ((`cl`.`objid` = 'RESIDENTIAL') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'DEFECTIVE')) then `wc`.`amount` else 0 end) AS `res_defectiveamt`,(case when ((`cl`.`objid` = 'RESIDENTIAL') and (`wa`.`state` = 'ACTIVE') and isnull(`wm`.`objid`)) then 1 else 0 end) AS `res_unmetered`,(case when ((`cl`.`objid` = 'RESIDENTIAL') and (`wa`.`state` = 'ACTIVE') and isnull(`wm`.`objid`)) then `wc`.`volume` else 0 end) AS `res_unmeteredvol`,(case when ((`cl`.`objid` = 'RESIDENTIAL') and (`wa`.`state` = 'ACTIVE') and isnull(`wm`.`objid`)) then `wc`.`amount` else 0 end) AS `res_unmeteredamt`,(case when ((`cl`.`objid` = 'COMMERCIAL') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'ACTIVE')) then 1 else 0 end) AS `com_metered`,(case when ((`cl`.`objid` = 'COMMERCIAL') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'ACTIVE')) then `wc`.`volume` else 0 end) AS `com_meteredvol`,(case when ((`cl`.`objid` = 'COMMERCIAL') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'ACTIVE')) then `wc`.`amount` else 0 end) AS `com_meteredamt`,(case when ((`cl`.`objid` = 'COMMERCIAL') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'DEFECTIVE')) then 1 else 0 end) AS `com_defective`,(case when ((`cl`.`objid` = 'COMMERCIAL') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'DEFECTIVE')) then `wc`.`volume` else 0 end) AS `com_defectivevol`,(case when ((`cl`.`objid` = 'COMMERCIAL') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'DEFECTIVE')) then `wc`.`amount` else 0 end) AS `com_defectiveamt`,(case when ((`cl`.`objid` = 'COMMERCIAL') and (`wa`.`state` = 'ACTIVE') and isnull(`wm`.`objid`)) then 1 else 0 end) AS `com_unmetered`,(case when ((`cl`.`objid` = 'COMMERCIAL') and (`wa`.`state` = 'ACTIVE') and isnull(`wm`.`objid`)) then `wc`.`volume` else 0 end) AS `com_unmeteredvol`,(case when ((`cl`.`objid` = 'COMMERCIAL') and (`wa`.`state` = 'ACTIVE') and isnull(`wm`.`objid`)) then `wc`.`amount` else 0 end) AS `com_unmeteredamt`,(case when ((`cl`.`objid` = 'INDUSTRIAL') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'ACTIVE')) then 1 else 0 end) AS `ind_metered`,(case when ((`cl`.`objid` = 'INDUSTRIAL') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'ACTIVE')) then `wc`.`volume` else 0 end) AS `ind_meteredvol`,(case when ((`cl`.`objid` = 'INDUSTRIAL') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'ACTIVE')) then `wc`.`amount` else 0 end) AS `ind_meteredamt`,(case when ((`cl`.`objid` = 'INDUSTRIAL') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'DEFECTIVE')) then 1 else 0 end) AS `ind_defective`,(case when ((`cl`.`objid` = 'INDUSTRIAL') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'DEFECTIVE')) then `wc`.`volume` else 0 end) AS `ind_defectivevol`,(case when ((`cl`.`objid` = 'INDUSTRIAL') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'DEFECTIVE')) then `wc`.`amount` else 0 end) AS `ind_defectiveamt`,(case when ((`cl`.`objid` = 'INDUSTRIAL') and (`wa`.`state` = 'ACTIVE') and isnull(`wm`.`objid`)) then 1 else 0 end) AS `ind_unmetered`,(case when ((`cl`.`objid` = 'INDUSTRIAL') and (`wa`.`state` = 'ACTIVE') and isnull(`wm`.`objid`)) then `wc`.`volume` else 0 end) AS `ind_unmeteredvol`,(case when ((`cl`.`objid` = 'INDUSTRIAL') and (`wa`.`state` = 'ACTIVE') and isnull(`wm`.`objid`)) then `wc`.`amount` else 0 end) AS `ind_unmeteredamt`,(case when ((`cl`.`objid` = 'GOVERNMENT') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'ACTIVE')) then 1 else 0 end) AS `gov_metered`,(case when ((`cl`.`objid` = 'GOVERNMENT') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'ACTIVE')) then `wc`.`volume` else 0 end) AS `gov_meteredvol`,(case when ((`cl`.`objid` = 'GOVERNMENT') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'ACTIVE')) then `wc`.`amount` else 0 end) AS `gov_meteredamt`,(case when ((`cl`.`objid` = 'GOVERNMENT') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'DEFECTIVE')) then 1 else 0 end) AS `gov_defective`,(case when ((`cl`.`objid` = 'GOVERNMENT') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'DEFECTIVE')) then `wc`.`volume` else 0 end) AS `gov_defectivevol`,(case when ((`cl`.`objid` = 'GOVERNMENT') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'DEFECTIVE')) then `wc`.`amount` else 0 end) AS `gov_defectiveamt`,(case when ((`cl`.`objid` = 'GOVERNMENT') and (`wa`.`state` = 'ACTIVE') and isnull(`wm`.`objid`)) then 1 else 0 end) AS `gov_unmetered`,(case when ((`cl`.`objid` = 'GOVERNMENT') and (`wa`.`state` = 'ACTIVE') and isnull(`wm`.`objid`)) then `wc`.`volume` else 0 end) AS `gov_unmeteredvol`,(case when ((`cl`.`objid` = 'GOVERNMENT') and (`wa`.`state` = 'ACTIVE') and isnull(`wm`.`objid`)) then `wc`.`amount` else 0 end) AS `gov_unmeteredamt`,(case when ((`cl`.`objid` = 'BULK') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'ACTIVE')) then 1 else 0 end) AS `bulk_metered`,(case when ((`cl`.`objid` = 'BULK') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'ACTIVE')) then `wc`.`volume` else 0 end) AS `bulk_meteredvol`,(case when ((`cl`.`objid` = 'BULK') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'ACTIVE')) then `wc`.`amount` else 0 end) AS `bulk_meteredamt`,(case when ((`cl`.`objid` = 'BULK') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'DEFECTIVE')) then 1 else 0 end) AS `bulk_defective`,(case when ((`cl`.`objid` = 'BULK') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'DEFECTIVE')) then `wc`.`volume` else 0 end) AS `bulk_defectivevol`,(case when ((`cl`.`objid` = 'BULK') and (`wa`.`state` = 'ACTIVE') and (`wm`.`state` = 'DEFECTIVE')) then `wc`.`amount` else 0 end) AS `bulk_defectiveamt`,(case when ((`cl`.`objid` = 'BULK') and (`wa`.`state` = 'ACTIVE') and isnull(`wm`.`objid`)) then 1 else 0 end) AS `bulk_unmetered`,(case when ((`cl`.`objid` = 'BULK') and (`wa`.`state` = 'ACTIVE') and isnull(`wm`.`objid`)) then `wc`.`volume` else 0 end) AS `bulk_unmeteredvol`,(case when ((`cl`.`objid` = 'BULK') and (`wa`.`state` = 'ACTIVE') and isnull(`wm`.`objid`)) then `wc`.`amount` else 0 end) AS `bulk_unmeteredamt` from (((((((`waterworks_billing_schedule` `wbs` join `waterworks_consumption` `wc` on((`wc`.`scheduleid` = `wbs`.`objid`))) join `waterworks_account` `wa` on((`wa`.`objid` = `wc`.`acctid`))) join `waterworks_stubout_node` `wsn` on((`wsn`.`objid` = `wa`.`stuboutnodeid`))) join `waterworks_stubout` `ws` on((`ws`.`objid` = `wsn`.`stuboutid`))) join `waterworks_zone` `wz` on((`wz`.`objid` = `ws`.`zoneid`))) join `waterworks_classification` `cl` on((`cl`.`objid` = `wa`.`classificationid`))) left join `waterworks_meter` `wm` on((`wm`.`objid` = `wa`.`meterid`)));

-- ----------------------------
-- View structure for vw_waterworks_account
-- ----------------------------
DROP VIEW IF EXISTS `vw_waterworks_account`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_waterworks_account` AS select `wa`.`objid` AS `objid`,`wa`.`acctno` AS `acctno`,`wa`.`acctname` AS `acctname`,`wa`.`address_text` AS `address_text`,`wa`.`classificationid` AS `classificationid`,`wa`.`classificationid` AS `classification`,`z`.`sectorid` AS `sectorid`,`z`.`objid` AS `zoneid`,`z`.`code` AS `zone_code`,`sn`.`indexno` AS `indexno`,`ws`.`code` AS `stuboutnode_stubout_code`,`m`.`objid` AS `meterid`,`m`.`serialno` AS `meter_serialno`,`m`.`brand` AS `meter_branch`,`m`.`capacity` AS `meter_capacity`,`ms`.`title` AS `meter_size_title`,`m`.`state` AS `meter_state`,`m`.`lastreading` AS `meter_lastreading`,`m`.`lastreadingdate` AS `meter_lastreadingdate`,(case when isnull(`m`.`objid`) then 'UNMETERED' when (`m`.`state` = 'ACTIVE') then 'METERED' else `m`.`state` end) AS `meterstatus` from (((((`waterworks_account` `wa` left join `waterworks_meter` `m` on((`wa`.`meterid` = `m`.`objid`))) left join `waterworks_metersize` `ms` on((`m`.`sizeid` = `ms`.`objid`))) left join `waterworks_stubout_node` `sn` on((`wa`.`stuboutnodeid` = `sn`.`objid`))) left join `waterworks_stubout` `ws` on((`sn`.`stuboutid` = `ws`.`objid`))) left join `waterworks_zone` `z` on((`z`.`objid` = `ws`.`zoneid`)));

-- ----------------------------
-- View structure for vw_waterworks_billing
-- ----------------------------
DROP VIEW IF EXISTS `vw_waterworks_billing`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_waterworks_billing` AS select `wb`.`objid` AS `objid`,`wb`.`batchid` AS `batchid`,`wb`.`acctid` AS `acctid`,`wb`.`billno` AS `billno`,`wb`.`consumptionid` AS `consumptionid`,`wb`.`state` AS `state`,`wb`.`surcharge` AS `surcharge`,`wb`.`interest` AS `interest`,`wb`.`otherfees` AS `otherfees`,`wb`.`credits` AS `credits`,`wb`.`arrears` AS `arrears`,`wb`.`averageconsumption` AS `averageconsumption`,`wb`.`billed` AS `billed`,`wb`.`unpaidmonths` AS `unpaidmonths`,`wb`.`refbillno` AS `refbillno`,`wb`.`printed` AS `printed`,`wa`.`acctno` AS `acctno`,`wa`.`acctname` AS `acctname`,`wa`.`state` AS `acctstate`,`wa`.`address_text` AS `addresstext`,`wa`.`classificationid` AS `classificationid`,(case when isnull(`wc`.`meterid`) then 'UNMETERED' else `wm`.`state` end) AS `meterstate`,`wc`.`prevreading` AS `prevreading`,`wc`.`reading` AS `reading`,`wc`.`volume` AS `volume`,`wc`.`amount` AS `amount`,`wc`.`amtpaid` AS `amtpaid`,`wc`.`rate` AS `rate`,`wc`.`hold` AS `hold`,((((`wb`.`arrears` + `wb`.`otherfees`) + `wb`.`surcharge`) + `wb`.`interest`) - `wb`.`credits`) AS `subtotal`,`wm`.`objid` AS `meterid`,`wm`.`objid` AS `meter_objid`,`wm`.`capacity` AS `meter_capacity`,`wm`.`sizeid` AS `meter_size`,`bs`.`fromperiod` AS `fromperiod`,`bs`.`toperiod` AS `toperiod`,`wbb`.`readingdate` AS `readingdate`,`bs`.`discdate` AS `discdate`,`bs`.`duedate` AS `duedate`,`z`.`objid` AS `zone_objid`,`z`.`code` AS `zone_code`,`sn`.`indexno` AS `indexno`,((`bs`.`year` * 12) + `bs`.`month`) AS `periodindexno` from ((((((((`waterworks_billing` `wb` join `waterworks_batch_billing` `wbb` on((`wbb`.`objid` = `wb`.`batchid`))) join `waterworks_consumption` `wc` on((`wc`.`objid` = `wb`.`consumptionid`))) join `waterworks_account` `wa` on((`wa`.`objid` = `wb`.`acctid`))) left join `waterworks_meter` `wm` on((`wm`.`objid` = `wc`.`meterid`))) left join `waterworks_stubout_node` `sn` on((`sn`.`objid` = `wa`.`stuboutnodeid`))) left join `waterworks_stubout` `ws` on((`ws`.`objid` = `sn`.`stuboutid`))) left join `waterworks_zone` `z` on((`z`.`objid` = `ws`.`zoneid`))) left join `waterworks_billing_schedule` `bs` on((`bs`.`objid` = `wc`.`scheduleid`)));

-- ----------------------------
-- View structure for vw_waterworks_billing_schedule
-- ----------------------------
DROP VIEW IF EXISTS `vw_waterworks_billing_schedule`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_waterworks_billing_schedule` AS select `bs`.`objid` AS `objid`,`bs`.`scheduleid` AS `scheduleid`,`bs`.`year` AS `year`,`bs`.`month` AS `month`,`bs`.`fromperiod` AS `fromperiod`,`bs`.`toperiod` AS `toperiod`,`bs`.`readingdate` AS `readingdate`,`bs`.`readingduedate` AS `readingduedate`,`bs`.`billingduedate` AS `billingduedate`,`bs`.`discdate` AS `discdate`,`bs`.`duedate` AS `duedate`,((`bs`.`year` * 12) + `bs`.`month`) AS `periodindexno` from `waterworks_billing_schedule` `bs`;

-- ----------------------------
-- View structure for vw_waterworks_consumption
-- ----------------------------
DROP VIEW IF EXISTS `vw_waterworks_consumption`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_waterworks_consumption` AS select `wc`.`objid` AS `objid`,`wc`.`acctid` AS `acctid`,`wc`.`txnmode` AS `txnmode`,`wc`.`prevreading` AS `prevreading`,`wc`.`reading` AS `reading`,`wc`.`volume` AS `volume`,`wc`.`rate` AS `rate`,`wc`.`amount` AS `amount`,`wc`.`amtpaid` AS `amtpaid`,`wc`.`batchid` AS `batchid`,`wc`.`state` AS `state`,`wc`.`meterid` AS `meterid`,`wc`.`scheduleid` AS `scheduleid`,`wc`.`hold` AS `hold`,`wc`.`discount` AS `discount`,((`wc`.`amount` - `wc`.`amtpaid`) - `wc`.`discount`) AS `balance`,`s`.`year` AS `year`,`s`.`month` AS `month`,`s`.`fromperiod` AS `fromperiod`,`s`.`toperiod` AS `toperiod`,`s`.`readingdate` AS `readingdate`,`s`.`readingduedate` AS `readingduedate`,`s`.`billingduedate` AS `billingduedate`,`s`.`discdate` AS `discdate`,`s`.`duedate` AS `duedate`,`sn`.`indexno` AS `indexno`,`a`.`acctno` AS `acctno`,`a`.`acctname` AS `acctname`,((`s`.`year` * 12) + `s`.`month`) AS `periodindexno`,`bb`.`objid` AS `batch_objid`,`bb`.`readingdate` AS `batch_readingdate`,`b`.`objid` AS `bill_objid`,`b`.`otherfees` AS `bill_otherfees`,`b`.`arrears` AS `bill_arrears`,`b`.`credits` AS `bill_credits`,`b`.`surcharge` AS `bill_surcharge`,`b`.`interest` AS `bill_interest` from (((((`waterworks_consumption` `wc` join `waterworks_account` `a` on((`a`.`objid` = `wc`.`acctid`))) join `waterworks_stubout_node` `sn` on((`sn`.`objid` = `a`.`stuboutnodeid`))) left join `waterworks_billing_schedule` `s` on((`s`.`objid` = `wc`.`scheduleid`))) left join `waterworks_batch_billing` `bb` on((`bb`.`objid` = `wc`.`batchid`))) left join `waterworks_billing` `b` on((`b`.`consumptionid` = `wc`.`objid`)));

-- ----------------------------
-- View structure for vw_waterworks_stubout_node
-- ----------------------------
DROP VIEW IF EXISTS `vw_waterworks_stubout_node`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_waterworks_stubout_node` AS select `son`.`objid` AS `objid`,`son`.`indexno` AS `indexno`,`so`.`objid` AS `stubout_objid`,`so`.`code` AS `stubout_code`,`zon`.`objid` AS `zone_objid`,`zon`.`code` AS `zone_code`,`sec`.`objid` AS `sector_objid`,`sec`.`code` AS `sector_code`,`so`.`barangay_objid` AS `barangay_objid`,`so`.`barangay_name` AS `barangay_name`,`sked`.`objid` AS `schedule_objid`,`wa`.`objid` AS `acctid`,`wa`.`acctno` AS `acctno`,`wa`.`acctname` AS `acctname`,`wa`.`objid` AS `currentacctid`,`so`.`objid` AS `stuboutid` from (((((`waterworks_stubout_node` `son` join `waterworks_stubout` `so` on((`son`.`stuboutid` = `so`.`objid`))) join `waterworks_zone` `zon` on((`so`.`zoneid` = `zon`.`objid`))) join `waterworks_sector` `sec` on((`zon`.`sectorid` = `sec`.`objid`))) left join `waterworks_block_schedule` `sked` on((`zon`.`schedule_objid` = `sked`.`objid`))) left join `waterworks_account` `wa` on((`wa`.`stuboutnodeid` = `son`.`objid`)));

SET FOREIGN_KEY_CHECKS = 1;
