/*
 Navicat Premium Data Transfer

 Source Server         : tagbilaran_db
 Source Server Type    : MySQL
 Source Server Version : 50640
 Source Host           : localhost:3306
 Source Schema         : tagbilaran_waterworks2

 Target Server Type    : MySQL
 Target Server Version : 50640
 File Encoding         : 65001

 Date: 29/04/2020 08:53:32
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
INSERT INTO `sys_rule` VALUES ('RUL-3122a9f8:1719a2d6391:-7cd2', 'DEPLOYED', 'WATERWBILL_DISCOUNT', 'waterworkspayment', 'discount', 'water bill discount', NULL, 50000, NULL, NULL, '2020-04-21 08:41:03', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL-54f2b5cd:167813a3810:-7b83', 'DEPLOYED', 'COMPUTATION_FOR_SENIOR', 'waterworkscomputation', 'initial', 'Computation consumption for SENIOR', NULL, 60000, NULL, NULL, '2018-12-06 10:07:59', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL-7c70974f:171aef4aa82:-745b', 'DEPLOYED', 'MAP_WATER_ACCOUNT_PRIOR', 'waterworkspayment', 'summary', 'MAP_WATER_ACCOUNT_PRIOR', NULL, 50000, NULL, NULL, '2020-04-25 09:54:05', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL-7c70974f:171aef4aa82:-7aa4', 'DEPLOYED', 'MAP_WATER_ACCOUNT', 'waterworkspayment', 'summary', 'MAP_WATER_ACCOUNT', NULL, 50000, NULL, NULL, '2020-04-25 09:47:19', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL-7c70974f:171aef4aa82:-7c95', 'DEPLOYED', 'APPLY_DEPOSIT', 'waterworkspayment', 'payment', 'APPLY DEPOSIT', NULL, 50000, NULL, NULL, '2020-04-25 09:45:10', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL-9750e42:171632eee69:-7417', 'DEPLOYED', 'ADD_ENV_FEE', 'waterworksbilling', 'computefee', 'ADD ENVIRONMENTAL FEE', NULL, 50000, NULL, NULL, '2020-04-10 16:44:40', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL-f2f3022:1714888cbde:-6b2b', 'DEPLOYED', 'BILLING_PERIOD_OTHER_DATES', 'waterworksbillingschedule', 'post-initial', 'determine reading, billing, discount and due dates', NULL, 50000, NULL, NULL, '2020-04-05 18:05:52', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL-f2f3022:1714888cbde:-7e1f', 'DEPLOYED', 'S1_BILLING_PERIOD', 'waterworksbillingschedule', 'initial', 'Billing Period for schedule group 1', NULL, 50000, NULL, NULL, '2020-04-05 16:40:35', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL2650bec3:1718623ce07:-7d14', 'DEPLOYED', 'ADD_INSTALLMENT_BILL', 'waterworksbilling', 'computefee', 'add installment bill', NULL, 50000, NULL, NULL, '2020-04-17 11:30:27', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL273a1fe9:134951a1bcf:-3109', 'DEPLOYED', 'COMPUTATION_FOR_SUBDIVISION', 'waterworkscomputation', 'initial', 'Computation consumption for SUBDIVISION', NULL, 60000, NULL, NULL, '2018-11-24 17:05:12', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL273a1fe9:134951a1bcf:-31f7', 'DEPLOYED', 'COMPUTATION_FOR_INDUSTRIAL_BULK', 'waterworkscomputation', 'initial', 'Computation consumption for industrial and bulk', NULL, 50000, NULL, NULL, '2018-11-24 16:59:07', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL2ae95b31:170896138b4:-7bf8', 'APPROVED', 'WATER_BILLING_PERIOD_30', 'waterworksbillingschedule', 'initial', 'water billing schedule for 30', NULL, 50000, NULL, NULL, '2020-02-28 09:30:51', 'USR5b13925b:17066eb8fad:-7eac', 'EMN3', 1);
INSERT INTO `sys_rule` VALUES ('RUL5939ba7a:16927ecacfc:-4dc9', 'DEPLOYED', 'COMPUTATION_FOR_LOT_DONOR', 'waterworkscomputation', 'initial', 'COMPUTATION_FOR_LOT_DONOR', NULL, 80000, NULL, NULL, '2019-02-26 16:34:35', 'USR26329f24:16927d6dd3f:-7caa', 'AFIEL', 1);
INSERT INTO `sys_rule` VALUES ('RUL5939ba7a:16927ecacfc:-6cc0', 'DEPLOYED', 'COMMERCIAL', 'waterworkscomputation', 'initial', 'Computation consumption for COMMERCIAL', NULL, 50000, NULL, NULL, '2019-02-26 15:34:09', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL5de3f7b7:171951e807a:-746c', 'DEPLOYED', 'WATER_SURCHARGE', 'waterworksbilling', 'surcharge', 'WATER SURCHARGE', NULL, 50000, NULL, NULL, '2020-04-20 09:36:14', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL746193b0:1684af9777d:-760b', 'DEPLOYED', 'APPLY_EXCESS_PAYMENT', 'waterworkspayment', 'payment', 'APPLY EXCESS PAYMENT', NULL, 50000, NULL, NULL, '2019-01-14 14:17:09', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL746193b0:1684af9777d:-77bd', 'DEPLOYED', 'APPLY_PAYMENT', 'waterworkspayment', 'payment', 'APPLY PAYMENT', NULL, 50000, NULL, NULL, '2019-01-14 14:16:20', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL77046b1c:1692cc75e1b:-7acb', 'APPROVED', 'S04', 'waterworksbillingschedule', 'initial', 'Batch 4: Every 22nd day of the month', NULL, 50000, NULL, NULL, '2019-02-27 11:07:38', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL77046b1c:1692cc75e1b:-7b69', 'APPROVED', 'S03', 'waterworksbillingschedule', 'initial', 'Batch 3: Every 15th day of the month', NULL, 50000, NULL, NULL, '2019-02-27 11:06:35', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL77046b1c:1692cc75e1b:-7c1d', 'APPROVED', 'S02', 'waterworksbillingschedule', 'initial', 'Batch 2: Every 8th day of the month', NULL, 50000, NULL, NULL, '2019-02-27 11:05:15', 'USR-ADMIN', 'ADMIN', 1);
INSERT INTO `sys_rule` VALUES ('RUL77046b1c:1692cc75e1b:-7d31', 'APPROVED', 'S01', 'waterworksbillingschedule', 'initial', 'Batch 1: Every 1st day of the month', NULL, 50000, NULL, NULL, '2019-02-27 11:02:21', 'USR-ADMIN', 'ADMIN', 1);
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
INSERT INTO `sys_rule_action` VALUES ('RA-6c2874cd:160ed01f3d2:-7fc4', 'RULa6b099d:eb1f3248b7:-75ed', 'waterworks.actions.ComputeConsumption', 'compute-consumption', 0);
INSERT INTO `sys_rule_action` VALUES ('RA-6c2874cd:160ed01f3d2:-7fcb', 'RULa6b099d:eb1f3248b7:-7630', 'waterworks.actions.ComputeConsumption', 'compute-consumption', 0);
INSERT INTO `sys_rule_action` VALUES ('RA-7fd7225d:1692ca418ad:-7fe5', 'RUL77046b1c:1692cc75e1b:-7acb', 'treasury.actions.AddVarInteger', 'add-var-integer', 0);
INSERT INTO `sys_rule_action` VALUES ('RA-7fd7225d:1692ca418ad:-7fea', 'RUL77046b1c:1692cc75e1b:-7b69', 'treasury.actions.AddVarInteger', 'add-var-integer', 0);
INSERT INTO `sys_rule_action` VALUES ('RA-7fd7225d:1692ca418ad:-7fef', 'RUL77046b1c:1692cc75e1b:-7c1d', 'treasury.actions.AddVarInteger', 'add-var-integer', 0);
INSERT INTO `sys_rule_action` VALUES ('RA-7fd7225d:1692ca418ad:-7ff4', 'RUL77046b1c:1692cc75e1b:-7d31', 'treasury.actions.AddVarInteger', 'add-var-integer', 0);
INSERT INTO `sys_rule_action` VALUES ('RA6b47a6f1:16927d455fb:-7f92', 'RUL5939ba7a:16927ecacfc:-4dc9', 'waterworks.actions.ComputeConsumption', 'compute-consumption', 0);
INSERT INTO `sys_rule_action` VALUES ('RA6b47a6f1:16927d455fb:-7f9b', 'RUL5939ba7a:16927ecacfc:-6cc0', 'waterworks.actions.ComputeConsumption', 'compute-consumption', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT-2ebf3254:1677d2a3a0a:-69be', 'RUL273a1fe9:134951a1bcf:-31f7', 'waterworks.actions.ComputeConsumption', 'compute-consumption', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT-54f2b5cd:167813a3810:-7973', 'RUL-54f2b5cd:167813a3810:-7b83', 'waterworks.actions.ComputeConsumption', 'compute-consumption', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT-62ffb7d6:171b6f40b87:-7a02', 'RUL-7c70974f:171aef4aa82:-7aa4', 'treasury.actions.SetBillItemAccount', 'set-billitem-account', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT-6471644e:171b69fea57:-6758', 'RUL-3122a9f8:1719a2d6391:-7cd2', 'treasury.actions.AddDiscountItem', 'add-discount-item', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT-6bdca530:16fa295b523:-7b93', 'RUL746193b0:1684af9777d:-760b', 'treasury.actions.AddCreditBillItem', 'add-credit-billitem', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT-7c70974f:171aef4aa82:-7bc1', 'RUL-7c70974f:171aef4aa82:-7c95', 'treasury.actions.AddCreditBillItem', 'add-credit-billitem', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT-9750e42:171632eee69:-6ffe', 'RUL-9750e42:171632eee69:-7417', 'waterworks.actions.AddWaterBillItem', 'add-waterbillitem', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT-9750e42:171632eee69:-71f4', 'RUL-9750e42:171632eee69:-7417', 'waterworks.actions.AddWaterBillItem', 'add-waterbillitem', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT-f2f3022:1714888cbde:-6a65', 'RUL-f2f3022:1714888cbde:-6b2b', 'waterworks.actions.SetWaterBillingPeriod', 'set-waterworks-billing-period', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT-f2f3022:1714888cbde:-797e', 'RUL-f2f3022:1714888cbde:-7e1f', 'waterworks.actions.SetWaterBillingPeriod', 'set-waterworks-billing-period', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT12e086d3:17186707c0f:-7988', 'RUL2650bec3:1718623ce07:-7d14', 'waterworks.actions.AddRecurringWaterBillItem', 'add-recurring-waterbillitem', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT1692b21d:171b729715e:-79db', 'RUL-7c70974f:171aef4aa82:-745b', 'treasury.actions.SetBillItemAccount', 'set-billitem-account', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT273a1fe9:134951a1bcf:-2162', 'RUL273a1fe9:134951a1bcf:-3109', 'waterworks.actions.ComputeConsumption', 'compute-consumption', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT2ae95b31:170896138b4:-7826', 'RUL2ae95b31:170896138b4:-7bf8', 'waterworks.actions.SetWaterBillingPeriod', 'set-waterworks-billing-period', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT5de3f7b7:171951e807a:-667f', 'RUL5de3f7b7:171951e807a:-746c', 'waterworks.actions.AddWaterBillItem', 'add-waterbillitem', 0);
INSERT INTO `sys_rule_action` VALUES ('RACT746193b0:1684af9777d:-7656', 'RUL746193b0:1684af9777d:-77bd', 'treasury.actions.ApplyPayment', 'apply-payment', 0);
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
INSERT INTO `sys_rule_action_param` VALUES ('RAP-7fd7225d:1692ca418ad:-7fe3', 'RA-7fd7225d:1692ca418ad:-7fe5', 'treasury.actions.AddVarInteger.tag', 'days', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RAP-7fd7225d:1692ca418ad:-7fe4', 'RA-7fd7225d:1692ca418ad:-7fe5', 'treasury.actions.AddVarInteger.value', NULL, NULL, NULL, NULL, '22', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RAP-7fd7225d:1692ca418ad:-7fe8', 'RA-7fd7225d:1692ca418ad:-7fea', 'treasury.actions.AddVarInteger.value', NULL, NULL, NULL, NULL, '15', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RAP-7fd7225d:1692ca418ad:-7fe9', 'RA-7fd7225d:1692ca418ad:-7fea', 'treasury.actions.AddVarInteger.tag', 'days', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RAP-7fd7225d:1692ca418ad:-7fed', 'RA-7fd7225d:1692ca418ad:-7fef', 'treasury.actions.AddVarInteger.tag', 'days', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RAP-7fd7225d:1692ca418ad:-7fee', 'RA-7fd7225d:1692ca418ad:-7fef', 'treasury.actions.AddVarInteger.value', NULL, NULL, NULL, NULL, '8', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RAP-7fd7225d:1692ca418ad:-7ff2', 'RA-7fd7225d:1692ca418ad:-7ff4', 'treasury.actions.AddVarInteger.value', NULL, NULL, NULL, NULL, '1', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RAP-7fd7225d:1692ca418ad:-7ff3', 'RA-7fd7225d:1692ca418ad:-7ff4', 'treasury.actions.AddVarInteger.tag', 'days', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RAP6b47a6f1:16927d455fb:-7f90', 'RA6b47a6f1:16927d455fb:-7f92', 'waterworks.actions.ComputeConsumption.ref', NULL, NULL, 'RC6b47a6f1:16927d455fb:-7f94', 'WC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RAP6b47a6f1:16927d455fb:-7f91', 'RA6b47a6f1:16927d455fb:-7f92', 'waterworks.actions.ComputeConsumption.amount', NULL, NULL, 'RCC6b47a6f1:16927d455fb:-7f93', 'VOL', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"0\">\n    <tr>\n        <td colspan=\"3\">Use Variable: VOL</td>\n    </tr>\n    \n        <tr>\n            <th>Greater than</th>\n            <th>Less than or equal to</th>\n            <th>Formula</th>\n        </tr>\n    \n    \n    \n        <tr>\n            <td></td>\n            <td>10.00</td>\n            <td>0</td>\n        </tr>\n    \n        <tr>\n            <td>10.00</td>\n            <td>20.00</td>\n            <td>62</td>\n        </tr>\n    \n        <tr>\n            <td>20.00</td>\n            <td>30.00</td>\n            <td>((VOL-10)*7)+62</td>\n        </tr>\n    \n        <tr>\n            <td>30.00</td>\n            <td>40.00</td>\n            <td>((VOL-20)*8)+132</td>\n        </tr>\n    \n        <tr>\n            <td>40.00</td>\n            <td>50.00</td>\n            <td>((VOL-30)*11)+212</td>\n        </tr>\n    \n        <tr>\n            <td>50.00</td>\n            <td>60.00</td>\n            <td>((VOL-40)*14)+322</td>\n        </tr>\n    \n        <tr>\n            <td>60.00</td>\n            <td>70.00</td>\n            <td>((VOL-50)*17)+462</td>\n        </tr>\n    \n        <tr>\n            <td>70.00</td>\n            <td>80.00</td>\n            <td>((VOL-60)*20)+632</td>\n        </tr>\n    \n        <tr>\n            <td>80.00</td>\n            <td>90.00</td>\n            <td>((VOL-70)*23)+832</td>\n        </tr>\n    \n</table>', 'range', NULL, NULL, NULL, '[[to:10.00,value:\"0\",from:0],[to:20.00,value:\"62\",from:10.00],[to:30.00,value:\"((VOL-10)*7)+62\",from:20.00],[to:40.00,value:\"((VOL-20)*8)+132\",from:30.00],[to:50.00,value:\"((VOL-30)*11)+212\",from:40.00],[value:\"((VOL-40)*14)+322\",from:50.00,to:60.00],[from:60.00,to:70.00,value:\"((VOL-50)*17)+462\"],[from:70.00,to:80.00,value:\"((VOL-60)*20)+632\"],[from:80.00,to:90.00,value:\"((VOL-70)*23)+832\"]]', NULL, 1);
INSERT INTO `sys_rule_action_param` VALUES ('RAP6b47a6f1:16927d455fb:-7f99', 'RA6b47a6f1:16927d455fb:-7f9b', 'waterworks.actions.ComputeConsumption.ref', NULL, NULL, 'RC6b47a6f1:16927d455fb:-7f9d', 'WC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RAP6b47a6f1:16927d455fb:-7f9a', 'RA6b47a6f1:16927d455fb:-7f9b', 'waterworks.actions.ComputeConsumption.amount', NULL, NULL, 'RCC6b47a6f1:16927d455fb:-7f9c', 'VOL', 'VOL * 23', 'expression', NULL, NULL, NULL, '[[to:10.00,value:\"25\",from:0],[to:20.00,value:\"35\",from:10.00],[to:30.00,value:\"55\",from:20.00],[to:40.00,value:\"85\",from:30.00],[to:50.00,value:\"150\",from:40.00],[value:\"150\",from:50.00]]', NULL, 1);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-2ebf3254:1677d2a3a0a:-67ca', 'RACT273a1fe9:134951a1bcf:-2162', 'waterworks.actions.ComputeConsumption.amount', NULL, NULL, NULL, NULL, 'def v = VOL; \ndef cm = UNITS * 10; \ndef totals = []; \ndef n = v - cm;\nif ( n > 0) totals << (cm * 1.8);  \nelse totals << (v * 1.8); \n\nv = (n > 0 ? n : 0); n = v - cm; \nif ( n > 0) totals << (cm * 2.3);  \nelse totals << (v * 2.3); \n\nv = (n > 0 ? n : 0); n = v - cm; \nif ( n > 0) totals << (cm * 2.8);  \nelse totals << (v * 2.8); \n\nv = (n > 0 ? n : 0); n = v - cm; \nif ( n > 0) totals << (cm * 3.4);  \nelse totals << (v * 3.4); \n\nv = (n > 0 ? n : 0); \ntotals << (v > 0 ? v : 0) * 5.0; \nreturn (totals ? totals.sum{it} : 0.0); ', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-2ebf3254:1677d2a3a0a:-67f5', 'RACT273a1fe9:134951a1bcf:-2162', 'waterworks.actions.ComputeConsumption.ref', NULL, NULL, 'RC-a002ae:16744d718df:-7ff1', 'WC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-2ebf3254:1677d2a3a0a:-697d', 'RACT-2ebf3254:1677d2a3a0a:-69be', 'waterworks.actions.ComputeConsumption.amount', NULL, NULL, 'RCONST-694f3c0a:1677d756f0d:-7561', 'VOL', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"0\">\n    <tr>\n        <td colspan=\"3\">Use Variable: VOL</td>\n    </tr>\n    \n        <tr>\n            <th>Greater than</th>\n            <th>Less than or equal to</th>\n            <th>Formula</th>\n        </tr>\n    \n    \n    \n        <tr>\n            <td></td>\n            <td>10.00</td>\n            <td>192</td>\n        </tr>\n    \n        <tr>\n            <td>10.00</td>\n            <td>20.00</td>\n            <td>192 + ((VOL-10) * 6.9)</td>\n        </tr>\n    \n        <tr>\n            <td>20.00</td>\n            <td>30.00</td>\n            <td>261 + ((VOL-20) * 8.4)</td>\n        </tr>\n    \n        <tr>\n            <td>30.00</td>\n            <td>40.00</td>\n            <td>345 + ((VOL-30) * 10.2)</td>\n        </tr>\n    \n        <tr>\n            <td>40.00</td>\n            <td>50.00</td>\n            <td>447 + ((VOL-40) * 12.3)</td>\n        </tr>\n    \n        <tr>\n            <td>50.00</td>\n            <td></td>\n            <td>570 + ((VOL-50) * 15)</td>\n        </tr>\n    \n</table>', 'range', NULL, NULL, NULL, '[[to:10.00,value:\"192\",from:0],[to:20.00,value:\"192 + ((VOL-10) * 6.9)\",from:10.00],[to:30.00,value:\"261 + ((VOL-20) * 8.4)\",from:20.00],[to:40.00,value:\"345 + ((VOL-30) * 10.2)\",from:30.00],[to:50.00,value:\"447 + ((VOL-40) * 12.3)\",from:40.00],[value:\"570 + ((VOL-50) * 15)\",from:50.00]]', NULL, 1);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-2ebf3254:1677d2a3a0a:-69a8', 'RACT-2ebf3254:1677d2a3a0a:-69be', 'waterworks.actions.ComputeConsumption.ref', NULL, NULL, 'RCOND-694f3c0a:1677d756f0d:-7588', 'WC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-2ebf3254:1677d2a3a0a:-6c1f', 'RA-6c2874cd:160ed01f3d2:-7fc4', 'waterworks.actions.ComputeConsumption.amount', NULL, NULL, 'RCONST-694f3c0a:1677d756f0d:-777a', 'VOL', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"0\">\n    <tr>\n        <td colspan=\"3\">Use Variable: VOL</td>\n    </tr>\n    \n        <tr>\n            <th>Greater than</th>\n            <th>Less than or equal to</th>\n            <th>Formula</th>\n        </tr>\n    \n    \n    \n        <tr>\n            <td></td>\n            <td>10.00</td>\n            <td>40</td>\n        </tr>\n    \n        <tr>\n            <td>10.00</td>\n            <td>20.00</td>\n            <td>40 + ((VOL-10) * 4.60)</td>\n        </tr>\n    \n        <tr>\n            <td>20.00</td>\n            <td>30.00</td>\n            <td>86 + ((VOL-20) * 5.60)</td>\n        </tr>\n    \n        <tr>\n            <td>30.00</td>\n            <td>40.00</td>\n            <td>142 + ((VOL-30) * 6.80)</td>\n        </tr>\n    \n        <tr>\n            <td>40.00</td>\n            <td>50.00</td>\n            <td>210 + ((VOL-40) * 8.20)</td>\n        </tr>\n    \n        <tr>\n            <td>50.00</td>\n            <td></td>\n            <td>292 + ((VOL-50) * 10.00)</td>\n        </tr>\n    \n</table>', 'range', NULL, NULL, NULL, '[[to:10.00,value:\"40\",from:0],[to:20.00,value:\"40 + ((VOL-10) * 4.60)\",from:10.00],[to:30.00,value:\"86 + ((VOL-20) * 5.60)\",from:20.00],[to:40.00,value:\"142 + ((VOL-30) * 6.80)\",from:30.00],[to:50.00,value:\"210 + ((VOL-40) * 8.20)\",from:40.00],[value:\"292 + ((VOL-50) * 10.00)\",from:50.00]]', NULL, 1);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-2ebf3254:1677d2a3a0a:-6c4a', 'RA-6c2874cd:160ed01f3d2:-7fc4', 'waterworks.actions.ComputeConsumption.ref', NULL, NULL, 'RCOND-694f3c0a:1677d756f0d:-77aa', 'WC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-2ebf3254:1677d2a3a0a:-6ff6', 'RA-6c2874cd:160ed01f3d2:-7fcb', 'waterworks.actions.ComputeConsumption.amount', NULL, NULL, 'RCONST-2ebf3254:1677d2a3a0a:-2d16', 'VOL', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"0\">\n    <tr>\n        <td colspan=\"3\">Use Variable: VOL</td>\n    </tr>\n    \n        <tr>\n            <th>Greater than</th>\n            <th>Less than or equal to</th>\n            <th>Formula</th>\n        </tr>\n    \n    \n    \n        <tr>\n            <td></td>\n            <td>10.00</td>\n            <td>20</td>\n        </tr>\n    \n        <tr>\n            <td>10.00</td>\n            <td>20.00</td>\n            <td>20 + ((VOL-10) * 2.30)</td>\n        </tr>\n    \n        <tr>\n            <td>20.00</td>\n            <td>30.00</td>\n            <td>43 + ((VOL-20) * 2.80)</td>\n        </tr>\n    \n        <tr>\n            <td>30.00</td>\n            <td>40.00</td>\n            <td>71 + ((VOL-30) * 3.40)</td>\n        </tr>\n    \n        <tr>\n            <td>40.00</td>\n            <td>50.00</td>\n            <td>105 + ((VOL-40) * 4.10)</td>\n        </tr>\n    \n        <tr>\n            <td>50.00</td>\n            <td></td>\n            <td>146 + ((VOL-50) * 5.00)</td>\n        </tr>\n    \n</table>', 'range', NULL, NULL, NULL, '[[to:10.00,value:\"20\",from:0],[to:20.00,value:\"20 + ((VOL-10) * 2.30)\",from:10.00],[to:30.00,value:\"43 + ((VOL-20) * 2.80)\",from:20.00],[to:40.00,value:\"71 + ((VOL-30) * 3.40)\",from:30.00],[to:50.00,value:\"105 + ((VOL-40) * 4.10)\",from:40.00],[value:\"146 + ((VOL-50) * 5.00)\",from:50.00]]', NULL, 1);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-2ebf3254:1677d2a3a0a:-7006', 'RA-6c2874cd:160ed01f3d2:-7fcb', 'waterworks.actions.ComputeConsumption.ref', NULL, NULL, 'RCOND-2ebf3254:1677d2a3a0a:-2d46', 'WC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-54f2b5cd:167813a3810:-794d', 'RACT-54f2b5cd:167813a3810:-7973', 'waterworks.actions.ComputeConsumption.amount', NULL, NULL, NULL, NULL, 'def amount = 0.0; \nif ( VOL <= 10 ) amount = 20.0;  \nelse if ( VOL <= 20 ) amount = 20.0 + ((VOL-10) * 2.30); \nelse if ( VOL <= 30 ) amount = 43.0 + ((VOL-20) * 2.80);\nelse if ( VOL <= 40 ) amount = 71.0 + ((VOL-30) * 3.40);\nelse if ( VOL <= 50 ) amount = 105.0 + ((VOL-40) * 4.10);\nelse amount = 146.0 + ((VOL-50) * 5.00); \n\ndef value = (amount > 0 ? amount * 0.80 : 0.0);\ndef bd = new java.math.BigDecimal(value.toString());\nreturn bd.setScale(1, java.math.RoundingMode.HALF_UP);', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-54f2b5cd:167813a3810:-795d', 'RACT-54f2b5cd:167813a3810:-7973', 'waterworks.actions.ComputeConsumption.ref', NULL, NULL, 'RC61484a76:167813a20bc:-7ff6', 'WC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-62ffb7d6:171b6f40b87:-79cb', 'RACT-62ffb7d6:171b6f40b87:-7a02', 'treasury.actions.SetBillItemAccount.account', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ITMACCTc16aa82:1712918d256:-7de3', 'WATERWORKS SALES (CURRENT)', NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-62ffb7d6:171b6f40b87:-79ea', 'RACT-62ffb7d6:171b6f40b87:-7a02', 'treasury.actions.SetBillItemAccount.billitem', NULL, NULL, 'RCOND-7c70974f:171aef4aa82:-7693', 'WBI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-6471644e:171b69fea57:-6721', 'RACT-6471644e:171b69fea57:-6758', 'treasury.actions.AddDiscountItem.amount', NULL, NULL, NULL, NULL, 'PRINCIPAL * 0.10', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-6471644e:171b69fea57:-6740', 'RACT-6471644e:171b69fea57:-6758', 'treasury.actions.AddDiscountItem.billitem', NULL, NULL, 'RCOND-3122a9f8:1719a2d6391:-74c6', 'WBI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-64c0c2ae:171480a1054:-7c10', 'RACT2ae95b31:170896138b4:-7826', 'waterworks.actions.SetWaterBillingPeriod.todate', NULL, NULL, NULL, NULL, '@MONTHEND(   @DATE(  YEAR, MON,  1 )  )', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-64c0c2ae:171480a1054:-7c8f', 'RACT2ae95b31:170896138b4:-7826', 'waterworks.actions.SetWaterBillingPeriod.fromdate', NULL, NULL, NULL, NULL, '@DATE(YEAR , MON, 1 )', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-6bdca530:16fa295b523:-7b4d', 'RACT-6bdca530:16fa295b523:-7b93', 'treasury.actions.AddCreditBillItem.amount', NULL, NULL, NULL, NULL, 'AMT', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-6bdca530:16fa295b523:-7b7b', 'RACT-6bdca530:16fa295b523:-7b93', 'treasury.actions.AddCreditBillItem.billcode', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WATER_ADVANCE_PAYMENT', 'WATER ADVANCE PAYMENT', NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-7c70974f:171aef4aa82:-7b66', 'RACT-7c70974f:171aef4aa82:-7bc1', 'treasury.actions.AddCreditBillItem.amount', NULL, NULL, NULL, NULL, 'AMT', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-7c70974f:171aef4aa82:-7b9b', 'RACT-7c70974f:171aef4aa82:-7bc1', 'treasury.actions.AddCreditBillItem.billcode', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WATER_ADVANCE_PAYMENT', 'WATER ADVANCE PAYMENT', NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-7d0701e6:171b9484429:-797d', 'RACT-6471644e:171b69fea57:-6758', 'treasury.actions.AddDiscountItem.account', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ITMACCTc16aa82:1712918d256:-7d97', 'WATERWORKS DISCOUNT', NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-9750e42:171632eee69:-6f49', 'RACT-9750e42:171632eee69:-6ffe', 'waterworks.actions.AddWaterBillItem.amount', NULL, NULL, NULL, NULL, '50', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-9750e42:171632eee69:-6f88', 'RACT-9750e42:171632eee69:-6ffe', 'waterworks.actions.AddWaterBillItem.billcode', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WATER_LAB_CHARGE', 'WATER LAB CHARGES', NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-9750e42:171632eee69:-6fb8', 'RACT-9750e42:171632eee69:-6ffe', 'waterworks.actions.AddWaterBillItem.month', NULL, NULL, 'RCONST-9750e42:171632eee69:-72ea', 'MON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-9750e42:171632eee69:-6fe0', 'RACT-9750e42:171632eee69:-6ffe', 'waterworks.actions.AddWaterBillItem.year', NULL, NULL, 'RCONST-9750e42:171632eee69:-735c', 'YR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-9750e42:171632eee69:-7135', 'RACT-9750e42:171632eee69:-71f4', 'waterworks.actions.AddWaterBillItem.amount', NULL, NULL, NULL, NULL, '100', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-9750e42:171632eee69:-717e', 'RACT-9750e42:171632eee69:-71f4', 'waterworks.actions.AddWaterBillItem.billcode', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WATER_ENVFEE', 'ENVIRONMENTAL FEE', NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-9750e42:171632eee69:-71ae', 'RACT-9750e42:171632eee69:-71f4', 'waterworks.actions.AddWaterBillItem.month', NULL, NULL, 'RCONST-9750e42:171632eee69:-72ea', 'MON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-9750e42:171632eee69:-71d6', 'RACT-9750e42:171632eee69:-71f4', 'waterworks.actions.AddWaterBillItem.year', NULL, NULL, 'RCONST-9750e42:171632eee69:-735c', 'YR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-f2f3022:1714888cbde:-69cf', 'RACT-f2f3022:1714888cbde:-6a65', 'waterworks.actions.SetWaterBillingPeriod.readingdate', NULL, NULL, NULL, NULL, '@DAYADD( TODATE , 2 )', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-f2f3022:1714888cbde:-6a23', 'RACT-f2f3022:1714888cbde:-6a65', 'waterworks.actions.SetWaterBillingPeriod.billingperiod', NULL, NULL, 'RCOND-f2f3022:1714888cbde:-6afa', 'BILPRD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-f2f3022:1714888cbde:-77b5', 'RACT-f2f3022:1714888cbde:-797e', 'waterworks.actions.SetWaterBillingPeriod.billexpirydate', NULL, NULL, NULL, NULL, '@MONTHEND(   @DATE( YR, MON+1, 1) )', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-f2f3022:1714888cbde:-7815', 'RACT-f2f3022:1714888cbde:-797e', 'waterworks.actions.SetWaterBillingPeriod.todate', NULL, NULL, NULL, NULL, '@MONTHEND(   @DATE( YR, MON, 1) )', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-f2f3022:1714888cbde:-7867', 'RACT-f2f3022:1714888cbde:-797e', 'waterworks.actions.SetWaterBillingPeriod.fromdate', NULL, NULL, NULL, NULL, '@DATE( YR, MON, 1 )', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT-f2f3022:1714888cbde:-78b7', 'RACT-f2f3022:1714888cbde:-797e', 'waterworks.actions.SetWaterBillingPeriod.billingperiod', NULL, NULL, 'RCOND-f2f3022:1714888cbde:-7b8c', 'BILPRD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT12e086d3:17186707c0f:-78e0', 'RACT12e086d3:17186707c0f:-7988', 'waterworks.actions.AddRecurringWaterBillItem.amount', NULL, NULL, NULL, NULL, 'return ( Math.abs( AMTDUE - INSTAMT ) < 10 )  ? AMTDUE : INSTAMT;', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT12e086d3:17186707c0f:-7914', 'RACT12e086d3:17186707c0f:-7988', 'waterworks.actions.AddRecurringWaterBillItem.month', NULL, NULL, 'RCONST2650bec3:1718623ce07:-7bf8', 'MON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT12e086d3:17186707c0f:-7940', 'RACT12e086d3:17186707c0f:-7988', 'waterworks.actions.AddRecurringWaterBillItem.year', NULL, NULL, 'RCONST2650bec3:1718623ce07:-7c6a', 'YR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT12e086d3:17186707c0f:-795e', 'RACT12e086d3:17186707c0f:-7988', 'waterworks.actions.AddRecurringWaterBillItem.refitem', NULL, NULL, 'RCOND2650bec3:1718623ce07:-7a07', 'WBR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT1692b21d:171b729715e:-79a3', 'RACT1692b21d:171b729715e:-79db', 'treasury.actions.SetBillItemAccount.account', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ITMACCTc16aa82:1712918d256:-7e34', 'WATERWORKS SALES - PREVIOUS', NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT1692b21d:171b729715e:-79c3', 'RACT1692b21d:171b729715e:-79db', 'treasury.actions.SetBillItemAccount.billitem', NULL, NULL, 'RCOND1692b21d:171b729715e:-7bcf', 'WBI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT2ae95b31:170896138b4:-77f0', 'RACT2ae95b31:170896138b4:-7826', 'waterworks.actions.SetWaterBillingPeriod.billingperiod', NULL, NULL, 'RCOND2ae95b31:170896138b4:-7b06', 'BILPRD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT50817b3e:1714a4657d5:-7bdb', 'RACT-f2f3022:1714888cbde:-6a65', 'waterworks.actions.SetWaterBillingPeriod.duedate', NULL, NULL, NULL, NULL, '@DAYADD( TODATE , 15 )', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT50817b3e:1714a4657d5:-7c40', 'RACT-f2f3022:1714888cbde:-6a65', 'waterworks.actions.SetWaterBillingPeriod.discdate', NULL, NULL, NULL, NULL, '@DAYADD( TODATE , 10 )', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT50817b3e:1714a4657d5:-7ca3', 'RACT-f2f3022:1714888cbde:-6a65', 'waterworks.actions.SetWaterBillingPeriod.billingenddate', NULL, NULL, NULL, NULL, '@DAYADD( TODATE , 7 )', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT50817b3e:1714a4657d5:-7d04', 'RACT-f2f3022:1714888cbde:-6a65', 'waterworks.actions.SetWaterBillingPeriod.billdate', NULL, NULL, NULL, NULL, '@DAYADD( TODATE , 5  )', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT50817b3e:1714a4657d5:-7d64', 'RACT-f2f3022:1714888cbde:-6a65', 'waterworks.actions.SetWaterBillingPeriod.readingenddate', NULL, NULL, NULL, NULL, '@DAYADD( TODATE , 4 )', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT5de3f7b7:171951e807a:-6592', 'RACT5de3f7b7:171951e807a:-667f', 'waterworks.actions.AddWaterBillItem.billcode', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WATER_FEE_SURCHARGE', 'WATER SURCHARGE', NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT5de3f7b7:171951e807a:-660b', 'RACT5de3f7b7:171951e807a:-667f', 'waterworks.actions.AddWaterBillItem.amount', NULL, NULL, NULL, NULL, 'AMT * 0.14', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT5de3f7b7:171951e807a:-6639', 'RACT5de3f7b7:171951e807a:-667f', 'waterworks.actions.AddWaterBillItem.month', NULL, NULL, 'RCONST5de3f7b7:171951e807a:-67ca', 'MON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT5de3f7b7:171951e807a:-6661', 'RACT5de3f7b7:171951e807a:-667f', 'waterworks.actions.AddWaterBillItem.year', NULL, NULL, 'RCONST5de3f7b7:171951e807a:-682b', 'YR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_action_param` VALUES ('RULACT746193b0:1684af9777d:-764a', 'RACT746193b0:1684af9777d:-7656', 'treasury.actions.ApplyPayment.payment', NULL, NULL, 'RCOND746193b0:1684af9777d:-7722', 'PMT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
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
INSERT INTO `sys_rule_actiondef` VALUES ('treasury.actions.AddRevenueShareByOrg', 'add-share-by-org', 'Add Revenue Share By Org', 1, 'add-share-by-org', 'TREASURY', 'treasury.actions.AddRevenueShareByOrg');
INSERT INTO `sys_rule_actiondef` VALUES ('treasury.actions.AddSurchargeItem', 'add-surcharge-item', 'Add Surcharge', 3, 'add-surcharge-item', 'TREASURY', 'treasury.actions.AddSurchargeItem');
INSERT INTO `sys_rule_actiondef` VALUES ('treasury.actions.AddVarDate', 'add-vardate', 'Add Variable Date', 1, 'add-vardate', 'TREASURY', 'treasury.actions.AddVarDate');
INSERT INTO `sys_rule_actiondef` VALUES ('treasury.actions.AddVarInteger', 'add-var-integer', 'Add Var Integer', 1, 'add-var-integer', 'TREASURY', 'treasury.actions.AddVarInteger');
INSERT INTO `sys_rule_actiondef` VALUES ('treasury.actions.ApplyPayment', 'apply-payment', 'Apply Payment', 5, 'apply-payment', 'TREASURY', 'treasury.actions.ApplyPayment');
INSERT INTO `sys_rule_actiondef` VALUES ('treasury.actions.ComputeFee', 'compute-fee', 'Compute Fee', 0, 'compute-fee', 'treasury', 'treasury.actions.ComputeFee');
INSERT INTO `sys_rule_actiondef` VALUES ('treasury.actions.RemoveDiscountItem', 'remove-discount', 'Remove Discount', 1, 'remove-discount', 'TREASURY', 'treasury.actions.RemoveDiscountItem');
INSERT INTO `sys_rule_actiondef` VALUES ('treasury.actions.SetBillItemAccount', 'set-billitem-account', 'Set Bill Item Account', 4, 'set-billitem-account', 'TREASURY', 'treasury.actions.SetBillItemAccount');
INSERT INTO `sys_rule_actiondef` VALUES ('treasury.actions.SetBillItemProperty', 'set-billitem-property', 'Set BillItem Property Value', 10, 'set-billitem-property', 'TREASURY', 'treasury.actions.SetBillItemProperty');
INSERT INTO `sys_rule_actiondef` VALUES ('waterworks.actions.AddRecurringWaterBillItem', 'add-recurring-waterbillitem', 'Add Recurring Water Bill Item', 0, 'add-recurring-waterbillitem', 'waterworks', 'waterworks.actions.AddRecurringWaterBillItem');
INSERT INTO `sys_rule_actiondef` VALUES ('waterworks.actions.AddWaterBillItem', 'add-waterbillitem', 'Add Water Bill Item', 0, 'add-waterbillitem', 'waterworks', 'waterworks.actions.AddWaterBillItem');
INSERT INTO `sys_rule_actiondef` VALUES ('waterworks.actions.AddWaterConsumption', 'add-waterconsumption', 'Add Water Consumption', 1, 'add-waterconsumption', 'WATERWORKS', 'waterworks.actions.AddWaterConsumption');
INSERT INTO `sys_rule_actiondef` VALUES ('waterworks.actions.ComputeConsumption', 'compute-consumption', 'Compute Consumption', 0, 'compute-consumption', 'waterworks', 'waterworks.actions.ComputeConsumption');
INSERT INTO `sys_rule_actiondef` VALUES ('waterworks.actions.SetWaterBillingPeriod', 'set-waterworks-billing-period', 'Set Waterworks Billing Period', 1, 'set-waterworks-billing-period', 'WATERWORKS', 'waterworks.actions.SetWaterBillingPeriod');
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
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddCreditBillItem.account', 'treasury.actions.AddCreditBillItem', 'account', 1, 'Account', NULL, 'lookup', 'revenueitem:lookup', 'objid', 'title', NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddCreditBillItem.amount', 'treasury.actions.AddCreditBillItem', 'amount', 2, 'Amount', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddCreditBillItem.billcode', 'treasury.actions.AddCreditBillItem', 'billcode', 1, 'Bill code', NULL, 'lookup', 'waterworks_itemaccount:lookup', 'objid', 'title', 'string', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddCreditBillItem.reftype', 'treasury.actions.AddCreditBillItem', 'reftype', 3, 'Ref Type', 'string', 'string', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddDiscountItem.account', 'treasury.actions.AddDiscountItem', 'account', 4, 'Account', NULL, 'lookup', 'revenueitem:lookup', 'objid', 'title', NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddDiscountItem.amount', 'treasury.actions.AddDiscountItem', 'amount', 2, 'Amount', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddDiscountItem.billcode', 'treasury.actions.AddDiscountItem', 'billcode', 3, 'Billcode', NULL, 'lookup', 'waterworks_itemaccount:lookup', 'objid', 'title', 'string', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddDiscountItem.billitem', 'treasury.actions.AddDiscountItem', 'billitem', 1, 'Bill Item', NULL, 'var', NULL, NULL, NULL, 'treasury.facts.AbstractBillItem', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddExcessBillItem.account', 'treasury.actions.AddExcessBillItem', 'account', 1, 'Account', NULL, 'lookup', 'revenueitem:lookup', 'objid', 'title', NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddExcessBillItem.amount', 'treasury.actions.AddExcessBillItem', 'amount', 2, 'Amount', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddInterestItem.account', 'treasury.actions.AddInterestItem', 'account', 2, 'Account', NULL, 'lookup', 'revenueitem:lookup', 'objid', 'title', 'string', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddInterestItem.amount', 'treasury.actions.AddInterestItem', 'amount', 3, 'Amount', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddInterestItem.billcode', 'treasury.actions.AddInterestItem', 'billcode', 3, 'Billcode', NULL, 'lookup', 'waterworks_itemaccount:lookup', 'objid', 'title', 'string', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddInterestItem.billitem', 'treasury.actions.AddInterestItem', 'billitem', 1, 'Bill Item', NULL, 'var', NULL, NULL, NULL, 'treasury.facts.AbstractBillItem', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddRevenueShareByOrg.amount', 'treasury.actions.AddRevenueShareByOrg', 'amount', 4, 'Amount', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddRevenueShareByOrg.org', 'treasury.actions.AddRevenueShareByOrg', 'org', 3, 'Org', NULL, 'var', NULL, NULL, NULL, 'enterprise.facts.Org', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddRevenueShareByOrg.payableaccount', 'treasury.actions.AddRevenueShareByOrg', 'payableaccount', 2, 'Payable Account', NULL, 'lookup', 'payableaccount:lookup', 'objid', 'title', 'string', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddRevenueShareByOrg.refitem', 'treasury.actions.AddRevenueShareByOrg', 'refitem', 1, 'Ref Item', NULL, 'var', 'revenueitem:lookup', 'objid', 'title', 'treasury.facts.AbstractBillItem', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddSurchargeItem.account', 'treasury.actions.AddSurchargeItem', 'account', 2, 'Account', NULL, 'lookup', 'revenueitem:lookup', 'objid', 'title', 'string', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddSurchargeItem.amount', 'treasury.actions.AddSurchargeItem', 'amount', 2, 'Amount', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddSurchargeItem.billcode', 'treasury.actions.AddSurchargeItem', 'billcode', 3, 'Bill code', NULL, 'lookup', 'waterworks_itemaccount:lookup', 'objid', 'title', 'string', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddSurchargeItem.billitem', 'treasury.actions.AddSurchargeItem', 'billitem', 1, 'Bill Item', NULL, 'var', NULL, NULL, NULL, 'treasury.facts.AbstractBillItem', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddSurchargeItem.txntype', 'treasury.actions.AddSurchargeItem', 'txntype', 4, 'Txn Type', NULL, 'lookup', 'billitem_txntype:lookup', 'objid', 'title', 'string', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddVarDate.date', 'treasury.actions.AddVarDate', 'date', 2, 'Date', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddVarDate.tag', 'treasury.actions.AddVarDate', 'tag', 1, 'Tag', 'string', 'string', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddVarInteger.tag', 'treasury.actions.AddVarInteger', 'tag', 2, 'Tag', 'string', 'string', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('treasury.actions.AddVarInteger.value', 'treasury.actions.AddVarInteger', 'value', 1, 'Value', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
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
INSERT INTO `sys_rule_actiondef_param` VALUES ('waterworks.actions.AddRecurringWaterBillItem.amount', 'waterworks.actions.AddRecurringWaterBillItem', 'amount', 3, 'Amount', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('waterworks.actions.AddRecurringWaterBillItem.month', 'waterworks.actions.AddRecurringWaterBillItem', 'month', 2, 'Month', NULL, 'var', NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('waterworks.actions.AddRecurringWaterBillItem.refitem', 'waterworks.actions.AddRecurringWaterBillItem', 'refitem', 4, 'Reference Item', NULL, 'var', NULL, NULL, NULL, 'waterworks.facts.WaterBillRecurringFee', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('waterworks.actions.AddRecurringWaterBillItem.year', 'waterworks.actions.AddRecurringWaterBillItem', 'year', 1, 'Year', NULL, 'var', NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('waterworks.actions.AddWaterBillItem.amount', 'waterworks.actions.AddWaterBillItem', 'amount', 3, 'Amount', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('waterworks.actions.AddWaterBillItem.billcode', 'waterworks.actions.AddWaterBillItem', 'billcode', 4, 'Bill code', NULL, 'lookup', 'waterworks_itemaccount:lookup', 'objid', 'title', 'string', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('waterworks.actions.AddWaterBillItem.month', 'waterworks.actions.AddWaterBillItem', 'month', 2, 'Month', NULL, 'var', NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('waterworks.actions.AddWaterBillItem.year', 'waterworks.actions.AddWaterBillItem', 'year', 1, 'Year', NULL, 'var', NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('waterworks.actions.AddWaterConsumption.volume', 'waterworks.actions.AddWaterConsumption', 'volume', 1, 'Volume', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('waterworks.actions.ComputeConsumption.amount', 'waterworks.actions.ComputeConsumption', 'amount', 1, 'Amount', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('waterworks.actions.ComputeConsumption.ref', 'waterworks.actions.ComputeConsumption', 'ref', 2, 'Ref', NULL, 'var', NULL, NULL, NULL, 'waterworks.facts.WaterConsumption', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('waterworks.actions.SetWaterBillingPeriod.billdate', 'waterworks.actions.SetWaterBillingPeriod', 'billdate', 6, 'Bill Date', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('waterworks.actions.SetWaterBillingPeriod.billexpirydate', 'waterworks.actions.SetWaterBillingPeriod', 'billexpirydate', 10, 'Bill Expiry Date', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('waterworks.actions.SetWaterBillingPeriod.billingenddate', 'waterworks.actions.SetWaterBillingPeriod', 'billingenddate', 7, 'Billing End Date', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('waterworks.actions.SetWaterBillingPeriod.billingperiod', 'waterworks.actions.SetWaterBillingPeriod', 'billingperiod', 1, 'Billing Period', NULL, 'var', NULL, NULL, NULL, 'waterworks.facts.WaterBillingPeriod', NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('waterworks.actions.SetWaterBillingPeriod.discdate', 'waterworks.actions.SetWaterBillingPeriod', 'discdate', 8, 'Discount Date', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('waterworks.actions.SetWaterBillingPeriod.duedate', 'waterworks.actions.SetWaterBillingPeriod', 'duedate', 9, 'Due Date', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('waterworks.actions.SetWaterBillingPeriod.fromdate', 'waterworks.actions.SetWaterBillingPeriod', 'fromdate', 2, 'From Date', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('waterworks.actions.SetWaterBillingPeriod.readingdate', 'waterworks.actions.SetWaterBillingPeriod', 'readingdate', 4, 'Reading Date', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('waterworks.actions.SetWaterBillingPeriod.readingenddate', 'waterworks.actions.SetWaterBillingPeriod', 'readingenddate', 5, 'Reading End Date', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_rule_actiondef_param` VALUES ('waterworks.actions.SetWaterBillingPeriod.todate', 'waterworks.actions.SetWaterBillingPeriod', 'todate', 3, 'To Date', NULL, 'expression', NULL, NULL, NULL, NULL, NULL);
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
INSERT INTO `sys_rule_condition` VALUES ('RC-6c2874cd:160ed01f3d2:-7fc6', 'RULa6b099d:eb1f3248b7:-75ed', 'wateraccount', 'waterworks.facts.WaterAccount', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC-6c2874cd:160ed01f3d2:-7fcf', 'RULa6b099d:eb1f3248b7:-7630', 'wateraccount', 'waterworks.facts.WaterAccount', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC-7fd7225d:1692ca418ad:-7fe7', 'RUL77046b1c:1692cc75e1b:-7acb', 'waterworks.facts.WaterScheduleGroup', 'waterworks.facts.WaterScheduleGroup', 'WBS', 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC-7fd7225d:1692ca418ad:-7fec', 'RUL77046b1c:1692cc75e1b:-7b69', 'waterworks.facts.WaterScheduleGroup', 'waterworks.facts.WaterScheduleGroup', 'WBS', 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC-7fd7225d:1692ca418ad:-7ff1', 'RUL77046b1c:1692cc75e1b:-7c1d', 'waterworks.facts.WaterScheduleGroup', 'waterworks.facts.WaterScheduleGroup', 'WBS', 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC-7fd7225d:1692ca418ad:-7ff6', 'RUL77046b1c:1692cc75e1b:-7d31', 'waterworks.facts.WaterScheduleGroup', 'waterworks.facts.WaterScheduleGroup', 'WBS', 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC-a002ae:16744d718df:-7ff1', 'RUL273a1fe9:134951a1bcf:-3109', 'WaterConsumption', 'waterworks.facts.WaterConsumption', 'WC', 1, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC-a002ae:16744d718df:-7ff7', 'RUL273a1fe9:134951a1bcf:-31f7', 'wateraccount', 'waterworks.facts.WaterAccount', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC61484a76:167813a20bc:-7ff6', 'RUL-54f2b5cd:167813a3810:-7b83', 'waterworks.facts.WaterConsumption', 'waterworks.facts.WaterConsumption', 'WC', 2, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC61484a76:167813a20bc:-7ff8', 'RUL-54f2b5cd:167813a3810:-7b83', 'wateraccount', 'waterworks.facts.WaterAccount', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC6b47a6f1:16927d455fb:-7f94', 'RUL5939ba7a:16927ecacfc:-4dc9', 'waterworks.facts.WaterConsumption', 'waterworks.facts.WaterConsumption', 'WC', 2, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC6b47a6f1:16927d455fb:-7f9d', 'RUL5939ba7a:16927ecacfc:-6cc0', 'waterworks.facts.WaterConsumption', 'waterworks.facts.WaterConsumption', 'WC', 2, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RC6b47a6f1:16927d455fb:-7f9f', 'RUL5939ba7a:16927ecacfc:-6cc0', 'wateraccount', 'waterworks.facts.WaterAccount', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND-2ebf3254:1677d2a3a0a:-2d46', 'RULa6b099d:eb1f3248b7:-7630', 'waterworks.facts.WaterConsumption', 'waterworks.facts.WaterConsumption', 'WC', 2, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND-3122a9f8:1719a2d6391:-74c6', 'RUL-3122a9f8:1719a2d6391:-7cd2', 'waterworks.facts.WaterBillItem', 'waterworks.facts.WaterBillItem', 'WBI', 3, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND-3122a9f8:1719a2d6391:-7872', 'RUL-3122a9f8:1719a2d6391:-7cd2', 'treasury.facts.TransactionDate', 'treasury.facts.TransactionDate', NULL, 2, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND-3122a9f8:1719a2d6391:-7a54', 'RUL-3122a9f8:1719a2d6391:-7cd2', 'waterworks.facts.WaterBill', 'waterworks.facts.WaterBill', 'WB', 1, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND-54f2b5cd:167813a3810:-7ad9', 'RUL-54f2b5cd:167813a3810:-7b83', 'waterworks.facts.WaterworksAttribute', 'waterworks.facts.WaterworksAttribute', NULL, 2, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND-694f3c0a:1677d756f0d:-7588', 'RUL273a1fe9:134951a1bcf:-31f7', 'waterworks.facts.WaterConsumption', 'waterworks.facts.WaterConsumption', 'WC', 2, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND-694f3c0a:1677d756f0d:-77aa', 'RULa6b099d:eb1f3248b7:-75ed', 'waterworks.facts.WaterConsumption', 'waterworks.facts.WaterConsumption', 'WC', 2, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND-7c70974f:171aef4aa82:-73f4', 'RUL-7c70974f:171aef4aa82:-745b', 'waterworks.facts.WaterBill', 'waterworks.facts.WaterBill', 'WB', 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND-7c70974f:171aef4aa82:-7693', 'RUL-7c70974f:171aef4aa82:-7aa4', 'waterworks.facts.WaterBillItem', 'waterworks.facts.WaterBillItem', 'WBI', 1, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND-7c70974f:171aef4aa82:-792a', 'RUL-7c70974f:171aef4aa82:-7aa4', 'waterworks.facts.WaterBill', 'waterworks.facts.WaterBill', 'WB', 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND-7c70974f:171aef4aa82:-7c2c', 'RUL-7c70974f:171aef4aa82:-7c95', 'treasury.facts.Deposit', 'treasury.facts.Deposit', 'PMT', 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND-9750e42:171632eee69:-73a8', 'RUL-9750e42:171632eee69:-7417', 'waterworks.facts.WaterBill', 'waterworks.facts.WaterBill', 'WB', 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND-f2f3022:1714888cbde:-6afa', 'RUL-f2f3022:1714888cbde:-6b2b', 'waterworks.facts.WaterBillingPeriod', 'waterworks.facts.WaterBillingPeriod', 'BILPRD', 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND-f2f3022:1714888cbde:-7b8c', 'RUL-f2f3022:1714888cbde:-7e1f', 'waterworks.facts.WaterBillingPeriod', 'waterworks.facts.WaterBillingPeriod', 'BILPRD', 1, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND-f2f3022:1714888cbde:-7bf7', 'RUL-f2f3022:1714888cbde:-7e1f', 'waterworks.facts.WaterScheduleGroup', 'waterworks.facts.WaterScheduleGroup', 'WBS', 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND1692b21d:171b729715e:-7bcf', 'RUL-7c70974f:171aef4aa82:-745b', 'waterworks.facts.WaterBillItem', 'waterworks.facts.WaterBillItem', 'WBI', 1, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND2650bec3:1718623ce07:-7a07', 'RUL2650bec3:1718623ce07:-7d14', 'waterworks.facts.WaterBillRecurringFee', 'waterworks.facts.WaterBillRecurringFee', 'WBR', 1, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND2650bec3:1718623ce07:-7cb6', 'RUL2650bec3:1718623ce07:-7d14', 'waterworks.facts.WaterBill', 'waterworks.facts.WaterBill', 'WB', 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND273a1fe9:134951a1bcf:-2f23', 'RUL273a1fe9:134951a1bcf:-3109', 'waterworks.facts.WaterworksAttribute', 'waterworks.facts.WaterworksAttribute', NULL, 2, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND273a1fe9:134951a1bcf:-2fb2', 'RUL273a1fe9:134951a1bcf:-3109', 'waterworks.facts.WaterAccount', 'waterworks.facts.WaterAccount', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND2ae95b31:170896138b4:-794e', 'RUL2ae95b31:170896138b4:-7bf8', 'treasury.facts.HolidayFact', 'treasury.facts.HolidayFact', 'HOLIDAYS', 2, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND2ae95b31:170896138b4:-7b06', 'RUL2ae95b31:170896138b4:-7bf8', 'waterworks.facts.WaterBillingPeriod', 'waterworks.facts.WaterBillingPeriod', 'BILPRD', 1, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND2ae95b31:170896138b4:-7b97', 'RUL2ae95b31:170896138b4:-7bf8', 'waterworks.facts.WaterScheduleGroup', 'waterworks.facts.WaterScheduleGroup', 'WBS', 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND44c93e47:171b65f15f1:-77bb', 'RUL-3122a9f8:1719a2d6391:-7cd2', 'treasury.facts.Payment', 'treasury.facts.Payment', 'PMT', 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND5939ba7a:16927ecacfc:-4ce4', 'RUL5939ba7a:16927ecacfc:-4dc9', 'waterworks.facts.WaterworksAttribute', 'waterworks.facts.WaterworksAttribute', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND5de3f7b7:171951e807a:-6873', 'RUL5de3f7b7:171951e807a:-746c', 'waterworks.facts.WaterBillItem', 'waterworks.facts.WaterBillItem', 'WBI', 2, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND5de3f7b7:171951e807a:-7338', 'RUL5de3f7b7:171951e807a:-746c', 'treasury.facts.TransactionDate', 'treasury.facts.TransactionDate', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND5de3f7b7:171951e807a:-7406', 'RUL5de3f7b7:171951e807a:-746c', 'waterworks.facts.WaterBill', 'waterworks.facts.WaterBill', 'WB', 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND746193b0:1684af9777d:-7548', 'RUL746193b0:1684af9777d:-760b', 'treasury.facts.ExcessPayment', 'treasury.facts.ExcessPayment', 'EXPMT', 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition` VALUES ('RCOND746193b0:1684af9777d:-7722', 'RUL746193b0:1684af9777d:-77bd', 'treasury.facts.Payment', 'treasury.facts.Payment', 'PMT', 0, NULL, NULL, NULL, NULL, NULL, 0);
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
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC-6c2874cd:160ed01f3d2:-7fc5', 'RC-6c2874cd:160ed01f3d2:-7fc6', 'waterworks.facts.WaterAccount.classification', 'classification', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"COMMERCIAL\",value:\"COMMERCIAL\"]]', NULL, 1);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC-6c2874cd:160ed01f3d2:-7fce', 'RC-6c2874cd:160ed01f3d2:-7fcf', 'waterworks.facts.WaterAccount.classification', 'classification', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"RESIDENTIAL\",value:\"RESIDENTIAL\"],[key:\"GOVERNMENT\",value:\"GOVERNMENT\"]]', NULL, 1);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC-7fd7225d:1692ca418ad:-7fe6', 'RC-7fd7225d:1692ca418ad:-7fe7', 'waterworks.facts.WaterScheduleGroup.id', 'id', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"S04\",value:\"S04\"]]', NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC-7fd7225d:1692ca418ad:-7feb', 'RC-7fd7225d:1692ca418ad:-7fec', 'waterworks.facts.WaterScheduleGroup.id', 'id', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"S03\",value:\"S03\"]]', NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC-7fd7225d:1692ca418ad:-7ff0', 'RC-7fd7225d:1692ca418ad:-7ff1', 'waterworks.facts.WaterScheduleGroup.id', 'id', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"S02\",value:\"S02\"]]', NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC-7fd7225d:1692ca418ad:-7ff5', 'RC-7fd7225d:1692ca418ad:-7ff6', 'waterworks.facts.WaterScheduleGroup.id', 'id', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"30\",value:\"30\"]]', NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC-a002ae:16744d718df:-7ff6', 'RC-a002ae:16744d718df:-7ff7', 'waterworks.facts.WaterAccount.classification', 'classification', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"INDUSTRIAL\",value:\"INDUSTRIAL\"],[key:\"BULK\",value:\"BULK\"]]', NULL, 1);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC61484a76:167813a20bc:-7ff5', 'RC61484a76:167813a20bc:-7ff6', 'waterworks.facts.WaterConsumption.volume', 'volume', 'VOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC61484a76:167813a20bc:-7ff7', 'RC61484a76:167813a20bc:-7ff8', 'waterworks.facts.WaterAccount.classification', 'classification', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"RESIDENTIAL\",value:\"RESIDENTIAL\"]]', NULL, 1);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC6b47a6f1:16927d455fb:-7f93', 'RC6b47a6f1:16927d455fb:-7f94', 'waterworks.facts.WaterConsumption.volume', 'volume', 'VOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC6b47a6f1:16927d455fb:-7f9c', 'RC6b47a6f1:16927d455fb:-7f9d', 'waterworks.facts.WaterConsumption.volume', 'volume', 'VOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC6b47a6f1:16927d455fb:-7f9e', 'RC6b47a6f1:16927d455fb:-7f9f', 'waterworks.facts.WaterAccount.classification', 'classification', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"COMMERCIAL\",value:\"COMMERCIAL\"]]', NULL, 1);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-2ebf3254:1677d2a3a0a:-2d16', 'RCOND-2ebf3254:1677d2a3a0a:-2d46', 'waterworks.facts.WaterConsumption.volume', 'volume', 'VOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-2ebf3254:1677d2a3a0a:-6881', 'RC-a002ae:16744d718df:-7ff1', 'waterworks.facts.WaterConsumption.volume', 'volume', 'VOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-3122a9f8:1719a2d6391:-72f7', 'RCOND-3122a9f8:1719a2d6391:-74c6', 'waterworks.facts.WaterBillItem.amount', 'amount', 'AMT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-3122a9f8:1719a2d6391:-73a9', 'RCOND-3122a9f8:1719a2d6391:-74c6', 'waterworks.facts.WaterBillItem.billcode', 'billcode', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"WATER_FEE\",value:\"WATER FEE\"]]', NULL, 2);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-3122a9f8:1719a2d6391:-741b', 'RCOND-3122a9f8:1719a2d6391:-74c6', 'waterworks.facts.WaterBillItem.month', 'month', NULL, 'equal to', '==', 1, 'RCONST-3122a9f8:1719a2d6391:-7630', 'BMON', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-3122a9f8:1719a2d6391:-747e', 'RCOND-3122a9f8:1719a2d6391:-74c6', 'waterworks.facts.WaterBillItem.year', 'year', NULL, 'equal to', '==', 1, 'RCONST-3122a9f8:1719a2d6391:-76d1', 'BYR', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-3122a9f8:1719a2d6391:-7630', 'RCOND-3122a9f8:1719a2d6391:-7a54', 'waterworks.facts.WaterBill.month', 'month', 'BMON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-3122a9f8:1719a2d6391:-76d1', 'RCOND-3122a9f8:1719a2d6391:-7a54', 'waterworks.facts.WaterBill.year', 'year', 'BYR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-3122a9f8:1719a2d6391:-7844', 'RCOND-3122a9f8:1719a2d6391:-7872', 'treasury.facts.TransactionDate.date', 'date', NULL, 'on or before', '<=', 1, 'RCONST-3122a9f8:1719a2d6391:-7902', 'DISCDATE', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-3122a9f8:1719a2d6391:-7902', 'RCOND-3122a9f8:1719a2d6391:-7a54', 'waterworks.facts.WaterBill.discdate', 'discdate', 'DISCDATE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-3122a9f8:1719a2d6391:-79fe', 'RCOND-3122a9f8:1719a2d6391:-7a54', 'waterworks.facts.WaterBill.balanceforward', 'balanceforward', NULL, 'less than or equal to', '<=', NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-54f2b5cd:167813a3810:-7ac9', 'RCOND-54f2b5cd:167813a3810:-7ad9', 'waterworks.facts.WaterworksAttribute.name', 'name', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"SENIOR\",value:\"SENIOR CITIZEN\"]]', NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-62ffb7d6:171b6f40b87:-7c78', 'RCOND-7c70974f:171aef4aa82:-7693', 'waterworks.facts.WaterBillItem.billcode', 'billcode', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"WATER_FEE\",value:\"WATER FEE\"]]', NULL, 2);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-6471644e:171b69fea57:-716e', 'RCOND-3122a9f8:1719a2d6391:-74c6', 'waterworks.facts.WaterBillItem.principal', 'principal', 'PRINCIPAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-6471644e:171b69fea57:-7c6a', 'RCOND-3122a9f8:1719a2d6391:-7a54', 'waterworks.facts.WaterBill.totalunpaid', 'totalunpaid', NULL, 'less than or equal to', '<=', 1, 'RCONST44c93e47:171b65f15f1:-77ab', 'AMTPAID', NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-694f3c0a:1677d756f0d:-7561', 'RCOND-694f3c0a:1677d756f0d:-7588', 'waterworks.facts.WaterConsumption.volume', 'volume', 'VOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-694f3c0a:1677d756f0d:-777a', 'RCOND-694f3c0a:1677d756f0d:-77aa', 'waterworks.facts.WaterConsumption.volume', 'volume', 'VOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-7c70974f:171aef4aa82:-75e8', 'RCOND-7c70974f:171aef4aa82:-7693', 'waterworks.facts.WaterBillItem.month', 'month', NULL, 'equal to', '==', 1, 'RCONST-7c70974f:171aef4aa82:-7879', 'MON', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-7c70974f:171aef4aa82:-764b', 'RCOND-7c70974f:171aef4aa82:-7693', 'waterworks.facts.WaterBillItem.year', 'year', NULL, 'equal to', '==', 1, 'RCONST-7c70974f:171aef4aa82:-78e4', 'YR', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-7c70974f:171aef4aa82:-7879', 'RCOND-7c70974f:171aef4aa82:-792a', 'waterworks.facts.WaterBill.month', 'month', 'MON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-7c70974f:171aef4aa82:-78e4', 'RCOND-7c70974f:171aef4aa82:-792a', 'waterworks.facts.WaterBill.year', 'year', 'YR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-7c70974f:171aef4aa82:-7c1c', 'RCOND-7c70974f:171aef4aa82:-7c2c', 'treasury.facts.Deposit.amount', 'amount', 'AMT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-9750e42:171632eee69:-72ea', 'RCOND-9750e42:171632eee69:-73a8', 'waterworks.facts.WaterBill.month', 'month', 'MON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-9750e42:171632eee69:-735c', 'RCOND-9750e42:171632eee69:-73a8', 'waterworks.facts.WaterBill.year', 'year', 'YR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-f2f3022:1714888cbde:-6a97', 'RCOND-f2f3022:1714888cbde:-6afa', 'waterworks.facts.WaterBillingPeriod.todate', 'todate', 'TODATE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-f2f3022:1714888cbde:-7ace', 'RCOND-f2f3022:1714888cbde:-7b8c', 'waterworks.facts.WaterBillingPeriod.month', 'month', 'MON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-f2f3022:1714888cbde:-7b31', 'RCOND-f2f3022:1714888cbde:-7b8c', 'waterworks.facts.WaterBillingPeriod.year', 'year', 'YR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST-f2f3022:1714888cbde:-7be7', 'RCOND-f2f3022:1714888cbde:-7bf7', 'waterworks.facts.WaterScheduleGroup.id', 'id', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"S1\",value:\"S1\"]]', NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST1692b21d:171b729715e:-7aa4', 'RCOND1692b21d:171b729715e:-7bcf', 'waterworks.facts.WaterBillItem.billcode', 'billcode', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"WATER_FEE\",value:\"WATER FEE\"]]', NULL, 1);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST1692b21d:171b729715e:-7b74', 'RCOND1692b21d:171b729715e:-7bcf', 'waterworks.facts.WaterBillItem.yearmonth', 'yearmonth', NULL, 'less than', '<', 1, 'RCONST1692b21d:171b729715e:-7c85', 'YRMON', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST1692b21d:171b729715e:-7c85', 'RCOND-7c70974f:171aef4aa82:-73f4', 'waterworks.facts.WaterBill.yearmonth', 'yearmonth', 'YRMON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST2650bec3:1718623ce07:-75db', 'RCOND2650bec3:1718623ce07:-7a07', 'waterworks.facts.WaterBillRecurringFee.amtdue', 'amtdue', 'AMTDUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST2650bec3:1718623ce07:-783b', 'RCOND2650bec3:1718623ce07:-7a07', 'waterworks.facts.WaterBillRecurringFee.amount', 'amount', 'PRIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST2650bec3:1718623ce07:-78d9', 'RCOND2650bec3:1718623ce07:-7a07', 'waterworks.facts.WaterBillRecurringFee.installmentamount', 'installmentamount', 'INSTAMT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST2650bec3:1718623ce07:-7956', 'RCOND2650bec3:1718623ce07:-7a07', 'waterworks.facts.WaterBillRecurringFee.term', 'term', 'TERM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST2650bec3:1718623ce07:-79bf', 'RCOND2650bec3:1718623ce07:-7a07', 'waterworks.facts.WaterBillRecurringFee.type', 'type', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[\"installment\"]', NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST2650bec3:1718623ce07:-7bf8', 'RCOND2650bec3:1718623ce07:-7cb6', 'waterworks.facts.WaterBill.month', 'month', 'MON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST2650bec3:1718623ce07:-7c6a', 'RCOND2650bec3:1718623ce07:-7cb6', 'waterworks.facts.WaterBill.year', 'year', 'YR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST273a1fe9:134951a1bcf:-2f13', 'RCOND273a1fe9:134951a1bcf:-2f23', 'waterworks.facts.WaterworksAttribute.name', 'name', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"SUBDIVISION\",value:\"SUBDIVISION\"]]', NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST273a1fe9:134951a1bcf:-2f64', 'RCOND273a1fe9:134951a1bcf:-2fb2', 'waterworks.facts.WaterAccount.units', 'units', 'UNITS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST2a36a888:1719581dc18:-765e', 'RCOND5de3f7b7:171951e807a:-7406', 'waterworks.facts.WaterBill.month', 'month', 'BMON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST2a36a888:1719581dc18:-76e6', 'RCOND5de3f7b7:171951e807a:-7406', 'waterworks.facts.WaterBill.year', 'year', 'BYR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST2ae95b31:170896138b4:-79d3', 'RCOND2ae95b31:170896138b4:-7b06', 'waterworks.facts.WaterBillingPeriod.month', 'month', 'MON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST2ae95b31:170896138b4:-7a39', 'RCOND2ae95b31:170896138b4:-7b06', 'waterworks.facts.WaterBillingPeriod.year', 'year', 'YEAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST2ae95b31:170896138b4:-7b87', 'RCOND2ae95b31:170896138b4:-7b97', 'waterworks.facts.WaterScheduleGroup.id', 'id', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"30\",value:\"30\"]]', NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST44c93e47:171b65f15f1:-77ab', 'RCOND44c93e47:171b65f15f1:-77bb', 'treasury.facts.Payment.amount', 'amount', 'AMTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST5939ba7a:16927ecacfc:-4cd5', 'RCOND5939ba7a:16927ecacfc:-4ce4', 'waterworks.facts.WaterworksAttribute.name', 'name', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"LOT_DONOR\",value:\"LOT_DONOR\"]]', NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST5de3f7b7:171951e807a:-6290', 'RCOND5de3f7b7:171951e807a:-6873', 'waterworks.facts.WaterBillItem.billcode', 'billcode', NULL, 'is any of the ff.', 'matches', NULL, NULL, NULL, NULL, NULL, NULL, '[[key:\"WATER_FEE\",value:\"WATER FEE\"]]', NULL, 3);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST5de3f7b7:171951e807a:-6751', 'RCOND5de3f7b7:171951e807a:-6873', 'waterworks.facts.WaterBillItem.amount', 'amount', 'AMT', 'greater than', '>', NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, 2);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST5de3f7b7:171951e807a:-67ca', 'RCOND5de3f7b7:171951e807a:-6873', 'waterworks.facts.WaterBillItem.month', 'month', 'MON', 'equal to', '==', 1, 'RCONST2a36a888:1719581dc18:-765e', 'BMON', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST5de3f7b7:171951e807a:-682b', 'RCOND5de3f7b7:171951e807a:-6873', 'waterworks.facts.WaterBillItem.year', 'year', 'YR', 'equal to', '==', 1, 'RCONST2a36a888:1719581dc18:-76e6', 'BYR', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST5de3f7b7:171951e807a:-730a', 'RCOND5de3f7b7:171951e807a:-7338', 'treasury.facts.TransactionDate.date', 'date', NULL, 'on or after', '>=', 1, 'RCONST5de3f7b7:171951e807a:-739f', 'DUEDATE', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST5de3f7b7:171951e807a:-739f', 'RCOND5de3f7b7:171951e807a:-7406', 'waterworks.facts.WaterBill.duedate', 'duedate', 'DUEDATE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST746193b0:1684af9777d:-7538', 'RCOND746193b0:1684af9777d:-7548', 'treasury.facts.ExcessPayment.amount', 'amount', 'AMT', 'greater than', '>', NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCONST746193b0:1684af9777d:-76ec', 'RCOND746193b0:1684af9777d:-7722', 'treasury.facts.Payment.amount', 'amount', NULL, 'greater than', '>', NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, 0);
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
INSERT INTO `sys_rule_condition_var` VALUES ('RC-7fd7225d:1692ca418ad:-7fe7', 'RC-7fd7225d:1692ca418ad:-7fe7', 'RUL77046b1c:1692cc75e1b:-7acb', 'WBS', 'waterworks.facts.WaterBlockSchedule', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RC-7fd7225d:1692ca418ad:-7fec', 'RC-7fd7225d:1692ca418ad:-7fec', 'RUL77046b1c:1692cc75e1b:-7b69', 'WBS', 'waterworks.facts.WaterBlockSchedule', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RC-7fd7225d:1692ca418ad:-7ff1', 'RC-7fd7225d:1692ca418ad:-7ff1', 'RUL77046b1c:1692cc75e1b:-7c1d', 'WBS', 'waterworks.facts.WaterBlockSchedule', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RC-7fd7225d:1692ca418ad:-7ff6', 'RC-7fd7225d:1692ca418ad:-7ff6', 'RUL77046b1c:1692cc75e1b:-7d31', 'WBS', 'waterworks.facts.WaterBlockSchedule', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RC-a002ae:16744d718df:-7ff1', 'RC-a002ae:16744d718df:-7ff1', 'RUL273a1fe9:134951a1bcf:-3109', 'WC', 'waterworks.facts.WaterConsumption', 1);
INSERT INTO `sys_rule_condition_var` VALUES ('RC61484a76:167813a20bc:-7ff6', 'RC61484a76:167813a20bc:-7ff6', 'RUL-54f2b5cd:167813a3810:-7b83', 'WC', 'waterworks.facts.WaterConsumption', 2);
INSERT INTO `sys_rule_condition_var` VALUES ('RC6b47a6f1:16927d455fb:-7f94', 'RC6b47a6f1:16927d455fb:-7f94', 'RUL5939ba7a:16927ecacfc:-4dc9', 'WC', 'waterworks.facts.WaterConsumption', 2);
INSERT INTO `sys_rule_condition_var` VALUES ('RC6b47a6f1:16927d455fb:-7f9d', 'RC6b47a6f1:16927d455fb:-7f9d', 'RUL5939ba7a:16927ecacfc:-6cc0', 'WC', 'waterworks.facts.WaterConsumption', 2);
INSERT INTO `sys_rule_condition_var` VALUES ('RCC61484a76:167813a20bc:-7ff5', 'RC61484a76:167813a20bc:-7ff6', 'RUL-54f2b5cd:167813a3810:-7b83', 'VOL', 'integer', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCC6b47a6f1:16927d455fb:-7f93', 'RC6b47a6f1:16927d455fb:-7f94', 'RUL5939ba7a:16927ecacfc:-4dc9', 'VOL', 'integer', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCC6b47a6f1:16927d455fb:-7f9c', 'RC6b47a6f1:16927d455fb:-7f9d', 'RUL5939ba7a:16927ecacfc:-6cc0', 'VOL', 'integer', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND-2ebf3254:1677d2a3a0a:-2d46', 'RCOND-2ebf3254:1677d2a3a0a:-2d46', 'RULa6b099d:eb1f3248b7:-7630', 'WC', 'waterworks.facts.WaterConsumption', 2);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND-3122a9f8:1719a2d6391:-74c6', 'RCOND-3122a9f8:1719a2d6391:-74c6', 'RUL-3122a9f8:1719a2d6391:-7cd2', 'WBI', 'waterworks.facts.WaterBillItem', 3);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND-3122a9f8:1719a2d6391:-7a54', 'RCOND-3122a9f8:1719a2d6391:-7a54', 'RUL-3122a9f8:1719a2d6391:-7cd2', 'WB', 'waterworks.facts.WaterBill', 1);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND-694f3c0a:1677d756f0d:-7588', 'RCOND-694f3c0a:1677d756f0d:-7588', 'RUL273a1fe9:134951a1bcf:-31f7', 'WC', 'waterworks.facts.WaterConsumption', 2);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND-694f3c0a:1677d756f0d:-77aa', 'RCOND-694f3c0a:1677d756f0d:-77aa', 'RULa6b099d:eb1f3248b7:-75ed', 'WC', 'waterworks.facts.WaterConsumption', 2);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND-7c70974f:171aef4aa82:-73f4', 'RCOND-7c70974f:171aef4aa82:-73f4', 'RUL-7c70974f:171aef4aa82:-745b', 'WB', 'waterworks.facts.WaterBill', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND-7c70974f:171aef4aa82:-7693', 'RCOND-7c70974f:171aef4aa82:-7693', 'RUL-7c70974f:171aef4aa82:-7aa4', 'WBI', 'waterworks.facts.WaterBillItem', 1);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND-7c70974f:171aef4aa82:-792a', 'RCOND-7c70974f:171aef4aa82:-792a', 'RUL-7c70974f:171aef4aa82:-7aa4', 'WB', 'waterworks.facts.WaterBill', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND-7c70974f:171aef4aa82:-7c2c', 'RCOND-7c70974f:171aef4aa82:-7c2c', 'RUL-7c70974f:171aef4aa82:-7c95', 'PMT', 'treasury.facts.Deposit', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND-9750e42:171632eee69:-73a8', 'RCOND-9750e42:171632eee69:-73a8', 'RUL-9750e42:171632eee69:-7417', 'WB', 'waterworks.facts.WaterBill', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND-f2f3022:1714888cbde:-6afa', 'RCOND-f2f3022:1714888cbde:-6afa', 'RUL-f2f3022:1714888cbde:-6b2b', 'BILPRD', 'waterworks.facts.WaterBillingPeriod', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND-f2f3022:1714888cbde:-7b8c', 'RCOND-f2f3022:1714888cbde:-7b8c', 'RUL-f2f3022:1714888cbde:-7e1f', 'BILPRD', 'waterworks.facts.WaterBillingPeriod', 1);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND-f2f3022:1714888cbde:-7bf7', 'RCOND-f2f3022:1714888cbde:-7bf7', 'RUL-f2f3022:1714888cbde:-7e1f', 'WBS', 'waterworks.facts.WaterScheduleGroup', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND1692b21d:171b729715e:-7bcf', 'RCOND1692b21d:171b729715e:-7bcf', 'RUL-7c70974f:171aef4aa82:-745b', 'WBI', 'waterworks.facts.WaterBillItem', 1);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND2650bec3:1718623ce07:-7a07', 'RCOND2650bec3:1718623ce07:-7a07', 'RUL2650bec3:1718623ce07:-7d14', 'WBR', 'waterworks.facts.WaterBillRecurringFee', 1);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND2650bec3:1718623ce07:-7cb6', 'RCOND2650bec3:1718623ce07:-7cb6', 'RUL2650bec3:1718623ce07:-7d14', 'WB', 'waterworks.facts.WaterBill', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND2ae95b31:170896138b4:-794e', 'RCOND2ae95b31:170896138b4:-794e', 'RUL2ae95b31:170896138b4:-7bf8', 'HOLIDAYS', 'treasury.facts.HolidayFact', 2);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND2ae95b31:170896138b4:-7b06', 'RCOND2ae95b31:170896138b4:-7b06', 'RUL2ae95b31:170896138b4:-7bf8', 'BILPRD', 'waterworks.facts.WaterBillingPeriod', 1);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND2ae95b31:170896138b4:-7b97', 'RCOND2ae95b31:170896138b4:-7b97', 'RUL2ae95b31:170896138b4:-7bf8', 'WBS', 'waterworks.facts.WaterBlockSchedule', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND44c93e47:171b65f15f1:-77bb', 'RCOND44c93e47:171b65f15f1:-77bb', 'RUL-3122a9f8:1719a2d6391:-7cd2', 'PMT', 'treasury.facts.Payment', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND5de3f7b7:171951e807a:-6873', 'RCOND5de3f7b7:171951e807a:-6873', 'RUL5de3f7b7:171951e807a:-746c', 'WBI', 'waterworks.facts.WaterBillItem', 2);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND5de3f7b7:171951e807a:-7406', 'RCOND5de3f7b7:171951e807a:-7406', 'RUL5de3f7b7:171951e807a:-746c', 'WB', 'waterworks.facts.WaterBill', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND746193b0:1684af9777d:-7548', 'RCOND746193b0:1684af9777d:-7548', 'RUL746193b0:1684af9777d:-760b', 'EXPMT', 'treasury.facts.ExcessPayment', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCOND746193b0:1684af9777d:-7722', 'RCOND746193b0:1684af9777d:-7722', 'RUL746193b0:1684af9777d:-77bd', 'PMT', 'treasury.facts.Payment', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST-2ebf3254:1677d2a3a0a:-2d16', 'RCOND-2ebf3254:1677d2a3a0a:-2d46', 'RULa6b099d:eb1f3248b7:-7630', 'VOL', 'integer', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST-2ebf3254:1677d2a3a0a:-6881', 'RC-a002ae:16744d718df:-7ff1', 'RUL273a1fe9:134951a1bcf:-3109', 'VOL', 'integer', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST-3122a9f8:1719a2d6391:-72f7', 'RCOND-3122a9f8:1719a2d6391:-74c6', 'RUL-3122a9f8:1719a2d6391:-7cd2', 'AMT', 'decimal', 3);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST-3122a9f8:1719a2d6391:-7630', 'RCOND-3122a9f8:1719a2d6391:-7a54', 'RUL-3122a9f8:1719a2d6391:-7cd2', 'BMON', 'integer', 4);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST-3122a9f8:1719a2d6391:-76d1', 'RCOND-3122a9f8:1719a2d6391:-7a54', 'RUL-3122a9f8:1719a2d6391:-7cd2', 'BYR', 'integer', 3);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST-3122a9f8:1719a2d6391:-7902', 'RCOND-3122a9f8:1719a2d6391:-7a54', 'RUL-3122a9f8:1719a2d6391:-7cd2', 'DISCDATE', 'date', 2);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST-6471644e:171b69fea57:-716e', 'RCOND-3122a9f8:1719a2d6391:-74c6', 'RUL-3122a9f8:1719a2d6391:-7cd2', 'PRINCIPAL', 'decimal', 4);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST-694f3c0a:1677d756f0d:-7561', 'RCOND-694f3c0a:1677d756f0d:-7588', 'RUL273a1fe9:134951a1bcf:-31f7', 'VOL', 'integer', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST-694f3c0a:1677d756f0d:-777a', 'RCOND-694f3c0a:1677d756f0d:-77aa', 'RULa6b099d:eb1f3248b7:-75ed', 'VOL', 'integer', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST-7c70974f:171aef4aa82:-7879', 'RCOND-7c70974f:171aef4aa82:-792a', 'RUL-7c70974f:171aef4aa82:-7aa4', 'MON', 'integer', 1);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST-7c70974f:171aef4aa82:-78e4', 'RCOND-7c70974f:171aef4aa82:-792a', 'RUL-7c70974f:171aef4aa82:-7aa4', 'YR', 'integer', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST-7c70974f:171aef4aa82:-7c1c', 'RCOND-7c70974f:171aef4aa82:-7c2c', 'RUL-7c70974f:171aef4aa82:-7c95', 'AMT', 'decimal', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST-9750e42:171632eee69:-72ea', 'RCOND-9750e42:171632eee69:-73a8', 'RUL-9750e42:171632eee69:-7417', 'MON', 'integer', 1);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST-9750e42:171632eee69:-735c', 'RCOND-9750e42:171632eee69:-73a8', 'RUL-9750e42:171632eee69:-7417', 'YR', 'integer', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST-f2f3022:1714888cbde:-6a97', 'RCOND-f2f3022:1714888cbde:-6afa', 'RUL-f2f3022:1714888cbde:-6b2b', 'TODATE', 'date', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST-f2f3022:1714888cbde:-7ace', 'RCOND-f2f3022:1714888cbde:-7b8c', 'RUL-f2f3022:1714888cbde:-7e1f', 'MON', 'integer', 1);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST-f2f3022:1714888cbde:-7b31', 'RCOND-f2f3022:1714888cbde:-7b8c', 'RUL-f2f3022:1714888cbde:-7e1f', 'YR', 'integer', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST1692b21d:171b729715e:-7c85', 'RCOND-7c70974f:171aef4aa82:-73f4', 'RUL-7c70974f:171aef4aa82:-745b', 'YRMON', 'integer', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST2650bec3:1718623ce07:-75db', 'RCOND2650bec3:1718623ce07:-7a07', 'RUL2650bec3:1718623ce07:-7d14', 'AMTDUE', 'decimal', 4);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST2650bec3:1718623ce07:-783b', 'RCOND2650bec3:1718623ce07:-7a07', 'RUL2650bec3:1718623ce07:-7d14', 'PRIN', 'decimal', 3);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST2650bec3:1718623ce07:-78d9', 'RCOND2650bec3:1718623ce07:-7a07', 'RUL2650bec3:1718623ce07:-7d14', 'INSTAMT', 'decimal', 2);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST2650bec3:1718623ce07:-7956', 'RCOND2650bec3:1718623ce07:-7a07', 'RUL2650bec3:1718623ce07:-7d14', 'TERM', 'integer', 1);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST2650bec3:1718623ce07:-7bf8', 'RCOND2650bec3:1718623ce07:-7cb6', 'RUL2650bec3:1718623ce07:-7d14', 'MON', 'integer', 1);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST2650bec3:1718623ce07:-7c6a', 'RCOND2650bec3:1718623ce07:-7cb6', 'RUL2650bec3:1718623ce07:-7d14', 'YR', 'integer', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST273a1fe9:134951a1bcf:-2f64', 'RCOND273a1fe9:134951a1bcf:-2fb2', 'RUL273a1fe9:134951a1bcf:-3109', 'UNITS', 'integer', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST2a36a888:1719581dc18:-765e', 'RCOND5de3f7b7:171951e807a:-7406', 'RUL5de3f7b7:171951e807a:-746c', 'BMON', 'integer', 2);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST2a36a888:1719581dc18:-76e6', 'RCOND5de3f7b7:171951e807a:-7406', 'RUL5de3f7b7:171951e807a:-746c', 'BYR', 'integer', 1);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST2ae95b31:170896138b4:-79d3', 'RCOND2ae95b31:170896138b4:-7b06', 'RUL2ae95b31:170896138b4:-7bf8', 'MON', 'integer', 1);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST2ae95b31:170896138b4:-7a39', 'RCOND2ae95b31:170896138b4:-7b06', 'RUL2ae95b31:170896138b4:-7bf8', 'YEAR', 'integer', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST44c93e47:171b65f15f1:-77ab', 'RCOND44c93e47:171b65f15f1:-77bb', 'RUL-3122a9f8:1719a2d6391:-7cd2', 'AMTPAID', 'decimal', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST5de3f7b7:171951e807a:-6751', 'RCOND5de3f7b7:171951e807a:-6873', 'RUL5de3f7b7:171951e807a:-746c', 'AMT', 'decimal', 2);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST5de3f7b7:171951e807a:-67ca', 'RCOND5de3f7b7:171951e807a:-6873', 'RUL5de3f7b7:171951e807a:-746c', 'MON', 'integer', 1);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST5de3f7b7:171951e807a:-682b', 'RCOND5de3f7b7:171951e807a:-6873', 'RUL5de3f7b7:171951e807a:-746c', 'YR', 'integer', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST5de3f7b7:171951e807a:-739f', 'RCOND5de3f7b7:171951e807a:-7406', 'RUL5de3f7b7:171951e807a:-746c', 'DUEDATE', 'date', 0);
INSERT INTO `sys_rule_condition_var` VALUES ('RCONST746193b0:1684af9777d:-7538', 'RCOND746193b0:1684af9777d:-7548', 'RUL746193b0:1684af9777d:-760b', 'AMT', 'decimal', 0);
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
INSERT INTO `sys_rule_deployed` VALUES ('RUL-3122a9f8:1719a2d6391:-7cd2', '\npackage waterworkspayment.WATERWBILL_DISCOUNT;\nimport waterworkspayment.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"WATERWBILL_DISCOUNT\"\n	agenda-group \"discount\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		PMT: treasury.facts.Payment (  AMTPAID:amount ) \n		\n		WB: waterworks.facts.WaterBill (  balanceforward <= 0.00,DISCDATE:discdate,BYR:year,BMON:month,totalunpaid <= AMTPAID ) \n		\n		 treasury.facts.TransactionDate (  date <= DISCDATE ) \n		\n		WBI: waterworks.facts.WaterBillItem (  year == BYR,month == BMON,billcode matches \"WATER_FEE\",AMT:amount,PRINCIPAL:principal ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"PMT\", PMT );\n		\n		bindings.put(\"AMTPAID\", AMTPAID );\n		\n		bindings.put(\"WB\", WB );\n		\n		bindings.put(\"DISCDATE\", DISCDATE );\n		\n		bindings.put(\"WBI\", WBI );\n		\n		bindings.put(\"AMT\", AMT );\n		\n		bindings.put(\"BYR\", BYR );\n		\n		bindings.put(\"BMON\", BMON );\n		\n		bindings.put(\"PRINCIPAL\", PRINCIPAL );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"billitem\", WBI );\n_p0.put( \"amount\", (new ActionExpression(\"PRINCIPAL * 0.10\", bindings)) );\n_p0.put( \"account\", new KeyValue(\"ITMACCTc16aa82:1712918d256:-7d97\", \"WATERWORKS DISCOUNT\") );\naction.execute( \"add-discount-item\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL-54f2b5cd:167813a3810:-7b83', '\npackage waterworkscomputation.COMPUTATION_FOR_SENIOR;\nimport waterworkscomputation.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"COMPUTATION_FOR_SENIOR\"\n	agenda-group \"initial\"\n	salience 60000\n	no-loop\n	when\n		\n		\n		 waterworks.facts.WaterAccount (  classification matches \"RESIDENTIAL\" ) \n		\n		WC: waterworks.facts.WaterConsumption (  VOL:volume ) \n		\n		 waterworks.facts.WaterworksAttribute (  name matches \"SENIOR\" ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"VOL\", VOL );\n		\n		bindings.put(\"WC\", WC );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"amount\", (new ActionExpression(\"def amount = 0.0;  if ( VOL <= 10 ) amount = 20.0;   else if ( VOL <= 20 ) amount = 20.0 + ((VOL-10) * 2.30);  else if ( VOL <= 30 ) amount = 43.0 + ((VOL-20) * 2.80); else if ( VOL <= 40 ) amount = 71.0 + ((VOL-30) * 3.40); else if ( VOL <= 50 ) amount = 105.0 + ((VOL-40) * 4.10); else amount = 146.0 + ((VOL-50) * 5.00);   def value = (amount > 0 ? amount * 0.80 : 0.0); def bd = new java.math.BigDecimal(value.toString()); return bd.setScale(1, java.math.RoundingMode.HALF_UP);\", bindings)) );\n_p0.put( \"ref\", WC );\naction.execute( \"compute-consumption\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL-7c70974f:171aef4aa82:-745b', '\npackage waterworkspayment.MAP_WATER_ACCOUNT_PRIOR;\nimport waterworkspayment.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"MAP_WATER_ACCOUNT_PRIOR\"\n	agenda-group \"summary\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		WB: waterworks.facts.WaterBill (  YRMON:yearmonth ) \n		\n		WBI: waterworks.facts.WaterBillItem (  yearmonth < YRMON,billcode matches \"WATER_FEE\" ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"WB\", WB );\n		\n		bindings.put(\"YRMON\", YRMON );\n		\n		bindings.put(\"WBI\", WBI );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"billitem\", WBI );\n_p0.put( \"account\", new KeyValue(\"ITMACCTc16aa82:1712918d256:-7e34\", \"WATERWORKS SALES - PREVIOUS\") );\naction.execute( \"set-billitem-account\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL-7c70974f:171aef4aa82:-7aa4', '\npackage waterworkspayment.MAP_WATER_ACCOUNT;\nimport waterworkspayment.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"MAP_WATER_ACCOUNT\"\n	agenda-group \"summary\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		WB: waterworks.facts.WaterBill (  YR:year,MON:month ) \n		\n		WBI: waterworks.facts.WaterBillItem (  year == YR,month == MON,billcode matches \"WATER_FEE\" ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"WB\", WB );\n		\n		bindings.put(\"YR\", YR );\n		\n		bindings.put(\"WBI\", WBI );\n		\n		bindings.put(\"MON\", MON );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"billitem\", WBI );\n_p0.put( \"account\", new KeyValue(\"ITMACCTc16aa82:1712918d256:-7de3\", \"WATERWORKS SALES (CURRENT)\") );\naction.execute( \"set-billitem-account\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL-7c70974f:171aef4aa82:-7c95', '\npackage waterworkspayment.APPLY_DEPOSIT;\nimport waterworkspayment.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"APPLY_DEPOSIT\"\n	agenda-group \"payment\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		PMT: treasury.facts.Deposit (  AMT:amount ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"PMT\", PMT );\n		\n		bindings.put(\"AMT\", AMT );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"billcode\", new KeyValue(\"WATER_ADVANCE_PAYMENT\", \"WATER ADVANCE PAYMENT\") );\n_p0.put( \"amount\", (new ActionExpression(\"AMT\", bindings)) );\naction.execute( \"add-credit-billitem\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL-9750e42:171632eee69:-7417', '\npackage waterworksbilling.ADD_ENV_FEE;\nimport waterworksbilling.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"ADD_ENV_FEE\"\n	agenda-group \"computefee\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		WB: waterworks.facts.WaterBill (  YR:year,MON:month ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"WB\", WB );\n		\n		bindings.put(\"YR\", YR );\n		\n		bindings.put(\"MON\", MON );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"year\", YR );\n_p0.put( \"month\", MON );\n_p0.put( \"amount\", (new ActionExpression(\"50\", bindings)) );\n_p0.put( \"billcode\", new KeyValue(\"WATER_LAB_CHARGE\", \"WATER LAB CHARGES\") );\naction.execute( \"add-waterbillitem\",_p0,drools);\nMap _p1 = new HashMap();\n_p1.put( \"year\", YR );\n_p1.put( \"month\", MON );\n_p1.put( \"amount\", (new ActionExpression(\"100\", bindings)) );\n_p1.put( \"billcode\", new KeyValue(\"WATER_ENVFEE\", \"ENVIRONMENTAL FEE\") );\naction.execute( \"add-waterbillitem\",_p1,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL-f2f3022:1714888cbde:-6b2b', '\npackage waterworksbillingschedule.BILLING_PERIOD_OTHER_DATES;\nimport waterworksbillingschedule.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"BILLING_PERIOD_OTHER_DATES\"\n	agenda-group \"post-initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		BILPRD: waterworks.facts.WaterBillingPeriod (  TODATE:todate ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"BILPRD\", BILPRD );\n		\n		bindings.put(\"TODATE\", TODATE );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"billingperiod\", BILPRD );\n_p0.put( \"readingdate\", (new ActionExpression(\"@DAYADD( TODATE , 2 )\", bindings)) );\n_p0.put( \"readingenddate\", (new ActionExpression(\"@DAYADD( TODATE , 4 )\", bindings)) );\n_p0.put( \"billdate\", (new ActionExpression(\"@DAYADD( TODATE , 5  )\", bindings)) );\n_p0.put( \"billingenddate\", (new ActionExpression(\"@DAYADD( TODATE , 7 )\", bindings)) );\n_p0.put( \"discdate\", (new ActionExpression(\"@DAYADD( TODATE , 10 )\", bindings)) );\n_p0.put( \"duedate\", (new ActionExpression(\"@DAYADD( TODATE , 15 )\", bindings)) );\naction.execute( \"set-waterworks-billing-period\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL-f2f3022:1714888cbde:-7e1f', '\npackage waterworksbillingschedule.S1_BILLING_PERIOD;\nimport waterworksbillingschedule.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"S1_BILLING_PERIOD\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		WBS: waterworks.facts.WaterScheduleGroup (  id matches \"S1\" ) \n		\n		BILPRD: waterworks.facts.WaterBillingPeriod (  YR:year,MON:month ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"WBS\", WBS );\n		\n		bindings.put(\"YR\", YR );\n		\n		bindings.put(\"BILPRD\", BILPRD );\n		\n		bindings.put(\"MON\", MON );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"billingperiod\", BILPRD );\n_p0.put( \"fromdate\", (new ActionExpression(\"@DATE( YR, MON, 1 )\", bindings)) );\n_p0.put( \"todate\", (new ActionExpression(\"@MONTHEND(   @DATE( YR, MON, 1) )\", bindings)) );\n_p0.put( \"billexpirydate\", (new ActionExpression(\"@MONTHEND(   @DATE( YR, MON+1, 1) )\", bindings)) );\naction.execute( \"set-waterworks-billing-period\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL2650bec3:1718623ce07:-7d14', '\npackage waterworksbilling.ADD_INSTALLMENT_BILL;\nimport waterworksbilling.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"ADD_INSTALLMENT_BILL\"\n	agenda-group \"computefee\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		WB: waterworks.facts.WaterBill (  YR:year,MON:month ) \n		\n		WBR: waterworks.facts.WaterBillRecurringFee (  type matches \"installment\",TERM:term,INSTAMT:installmentamount,PRIN:amount,AMTDUE:amtdue ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"WB\", WB );\n		\n		bindings.put(\"YR\", YR );\n		\n		bindings.put(\"WBR\", WBR );\n		\n		bindings.put(\"TERM\", TERM );\n		\n		bindings.put(\"MON\", MON );\n		\n		bindings.put(\"INSTAMT\", INSTAMT );\n		\n		bindings.put(\"PRIN\", PRIN );\n		\n		bindings.put(\"AMTDUE\", AMTDUE );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"year\", YR );\n_p0.put( \"month\", MON );\n_p0.put( \"amount\", (new ActionExpression(\"return ( Math.abs( AMTDUE - INSTAMT ) < 10 )  ? AMTDUE : INSTAMT;\", bindings)) );\n_p0.put( \"refitem\", WBR );\naction.execute( \"add-recurring-waterbillitem\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL273a1fe9:134951a1bcf:-3109', '\npackage waterworkscomputation.COMPUTATION_FOR_SUBDIVISION;\nimport waterworkscomputation.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"COMPUTATION_FOR_SUBDIVISION\"\n	agenda-group \"initial\"\n	salience 60000\n	no-loop\n	when\n		\n		\n		WC: waterworks.facts.WaterConsumption (  VOL:volume ) \n		\n		 waterworks.facts.WaterAccount (  UNITS:units ) \n		\n		 waterworks.facts.WaterworksAttribute (  name matches \"SUBDIVISION\" ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"VOL\", VOL );\n		\n		bindings.put(\"UNITS\", UNITS );\n		\n		bindings.put(\"WC\", WC );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"amount\", (new ActionExpression(\"def v = VOL;  def cm = UNITS * 10;  def totals = [];  def n = v - cm; if ( n > 0) totals << (cm * 1.8);   else totals << (v * 1.8);   v = (n > 0 ? n : 0); n = v - cm;  if ( n > 0) totals << (cm * 2.3);   else totals << (v * 2.3);   v = (n > 0 ? n : 0); n = v - cm;  if ( n > 0) totals << (cm * 2.8);   else totals << (v * 2.8);   v = (n > 0 ? n : 0); n = v - cm;  if ( n > 0) totals << (cm * 3.4);   else totals << (v * 3.4);   v = (n > 0 ? n : 0);  totals << (v > 0 ? v : 0) * 5.0;  return (totals ? totals.sum{it} : 0.0); \", bindings)) );\n_p0.put( \"ref\", WC );\naction.execute( \"compute-consumption\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL273a1fe9:134951a1bcf:-31f7', '\npackage waterworkscomputation.COMPUTATION_FOR_INDUSTRIAL_BULK;\nimport waterworkscomputation.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"COMPUTATION_FOR_INDUSTRIAL_BULK\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		 waterworks.facts.WaterAccount (  classification matches \"INDUSTRIAL|BULK\" ) \n		\n		WC: waterworks.facts.WaterConsumption (  VOL:volume ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"VOL\", VOL );\n		\n		bindings.put(\"WC\", WC );\n		\n	RangeEntry re0 = new RangeEntry(\"COMPUTATION_FOR_INDUSTRIAL_BULK\");\nre0.setBindings(bindings);\nre0.setIntvalue(VOL);\nre0.getParams().put( \"amount\", 0.0 );\nre0.getParams().put( \"ref\", WC );\ninsert(re0);\n\nend\n\n\n	\nrule \"compute-consumption_0_0\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		\n		rv: RangeEntry( id==\"COMPUTATION_FOR_INDUSTRIAL_BULK\", intvalue <= 10.00 )\n		\n	then\n		Map bindings = rv.getBindings();\n		Map params = rv.getParams();\n		params.put( \"amount\", (new ActionExpression(\"192\", bindings)) );	\n		 \n		action.execute( \"compute-consumption\",params, drools);\nend\n\n\n	\nrule \"compute-consumption_0_1\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		rv: RangeEntry( id==\"COMPUTATION_FOR_INDUSTRIAL_BULK\", intvalue > 10.00, intvalue <= 20.00 )\n		\n		\n		\n	then\n		Map bindings = rv.getBindings();\n		Map params = rv.getParams();\n		params.put( \"amount\", (new ActionExpression(\"192 + ((VOL-10) * 6.9)\", bindings)) );	\n		 \n		action.execute( \"compute-consumption\",params, drools);\nend\n\n\n	\nrule \"compute-consumption_0_2\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		rv: RangeEntry( id==\"COMPUTATION_FOR_INDUSTRIAL_BULK\", intvalue > 20.00, intvalue <= 30.00 )\n		\n		\n		\n	then\n		Map bindings = rv.getBindings();\n		Map params = rv.getParams();\n		params.put( \"amount\", (new ActionExpression(\"261 + ((VOL-20) * 8.4)\", bindings)) );	\n		 \n		action.execute( \"compute-consumption\",params, drools);\nend\n\n\n	\nrule \"compute-consumption_0_3\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		rv: RangeEntry( id==\"COMPUTATION_FOR_INDUSTRIAL_BULK\", intvalue > 30.00, intvalue <= 40.00 )\n		\n		\n		\n	then\n		Map bindings = rv.getBindings();\n		Map params = rv.getParams();\n		params.put( \"amount\", (new ActionExpression(\"345 + ((VOL-30) * 10.2)\", bindings)) );	\n		 \n		action.execute( \"compute-consumption\",params, drools);\nend\n\n\n	\nrule \"compute-consumption_0_4\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		rv: RangeEntry( id==\"COMPUTATION_FOR_INDUSTRIAL_BULK\", intvalue > 40.00, intvalue <= 50.00 )\n		\n		\n		\n	then\n		Map bindings = rv.getBindings();\n		Map params = rv.getParams();\n		params.put( \"amount\", (new ActionExpression(\"447 + ((VOL-40) * 12.3)\", bindings)) );	\n		 \n		action.execute( \"compute-consumption\",params, drools);\nend\n\n\n	\nrule \"compute-consumption_0_5\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		rv: RangeEntry( id==\"COMPUTATION_FOR_INDUSTRIAL_BULK\", intvalue > 50.00 )\n		\n		\n	then\n		Map bindings = rv.getBindings();\n		Map params = rv.getParams();\n		params.put( \"amount\", (new ActionExpression(\"570 + ((VOL-50) * 15)\", bindings)) );	\n		 \n		action.execute( \"compute-consumption\",params, drools);\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL5939ba7a:16927ecacfc:-4dc9', '\npackage waterworkscomputation.COMPUTATION_FOR_LOT_DONOR;\nimport waterworkscomputation.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"COMPUTATION_FOR_LOT_DONOR\"\n	agenda-group \"initial\"\n	salience 80000\n	no-loop\n	when\n		\n		\n		 waterworks.facts.WaterworksAttribute (  name matches \"LOT_DONOR\" ) \n		\n		WC: waterworks.facts.WaterConsumption (  VOL:volume ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"VOL\", VOL );\n		\n		bindings.put(\"WC\", WC );\n		\n	RangeEntry re0 = new RangeEntry(\"COMPUTATION_FOR_LOT_DONOR\");\nre0.setBindings(bindings);\nre0.setIntvalue(VOL);\nre0.getParams().put( \"amount\", 0.0 );\nre0.getParams().put( \"ref\", WC );\ninsert(re0);\n\nend\n\n\n	\nrule \"compute-consumption_0_0\"\n	agenda-group \"initial\"\n	salience 80000\n	no-loop\n	when\n		\n		\n		\n		rv: RangeEntry( id==\"COMPUTATION_FOR_LOT_DONOR\", intvalue <= 10.00 )\n		\n	then\n		Map bindings = rv.getBindings();\n		Map params = rv.getParams();\n		params.put( \"amount\", (new ActionExpression(\"0\", bindings)) );	\n		 \n		action.execute( \"compute-consumption\",params, drools);\nend\n\n\n	\nrule \"compute-consumption_0_1\"\n	agenda-group \"initial\"\n	salience 80000\n	no-loop\n	when\n		\n		rv: RangeEntry( id==\"COMPUTATION_FOR_LOT_DONOR\", intvalue > 10.00, intvalue <= 20.00 )\n		\n		\n		\n	then\n		Map bindings = rv.getBindings();\n		Map params = rv.getParams();\n		params.put( \"amount\", (new ActionExpression(\"62\", bindings)) );	\n		 \n		action.execute( \"compute-consumption\",params, drools);\nend\n\n\n	\nrule \"compute-consumption_0_2\"\n	agenda-group \"initial\"\n	salience 80000\n	no-loop\n	when\n		\n		rv: RangeEntry( id==\"COMPUTATION_FOR_LOT_DONOR\", intvalue > 20.00, intvalue <= 30.00 )\n		\n		\n		\n	then\n		Map bindings = rv.getBindings();\n		Map params = rv.getParams();\n		params.put( \"amount\", (new ActionExpression(\"((VOL-10)*7)+62\", bindings)) );	\n		 \n		action.execute( \"compute-consumption\",params, drools);\nend\n\n\n	\nrule \"compute-consumption_0_3\"\n	agenda-group \"initial\"\n	salience 80000\n	no-loop\n	when\n		\n		rv: RangeEntry( id==\"COMPUTATION_FOR_LOT_DONOR\", intvalue > 30.00, intvalue <= 40.00 )\n		\n		\n		\n	then\n		Map bindings = rv.getBindings();\n		Map params = rv.getParams();\n		params.put( \"amount\", (new ActionExpression(\"((VOL-20)*8)+132\", bindings)) );	\n		 \n		action.execute( \"compute-consumption\",params, drools);\nend\n\n\n	\nrule \"compute-consumption_0_4\"\n	agenda-group \"initial\"\n	salience 80000\n	no-loop\n	when\n		\n		rv: RangeEntry( id==\"COMPUTATION_FOR_LOT_DONOR\", intvalue > 40.00, intvalue <= 50.00 )\n		\n		\n		\n	then\n		Map bindings = rv.getBindings();\n		Map params = rv.getParams();\n		params.put( \"amount\", (new ActionExpression(\"((VOL-30)*11)+212\", bindings)) );	\n		 \n		action.execute( \"compute-consumption\",params, drools);\nend\n\n\n	\nrule \"compute-consumption_0_5\"\n	agenda-group \"initial\"\n	salience 80000\n	no-loop\n	when\n		\n		rv: RangeEntry( id==\"COMPUTATION_FOR_LOT_DONOR\", intvalue > 50.00, intvalue <= 60.00 )\n		\n		\n		\n	then\n		Map bindings = rv.getBindings();\n		Map params = rv.getParams();\n		params.put( \"amount\", (new ActionExpression(\"((VOL-40)*14)+322\", bindings)) );	\n		 \n		action.execute( \"compute-consumption\",params, drools);\nend\n\n\n	\nrule \"compute-consumption_0_6\"\n	agenda-group \"initial\"\n	salience 80000\n	no-loop\n	when\n		\n		rv: RangeEntry( id==\"COMPUTATION_FOR_LOT_DONOR\", intvalue > 60.00, intvalue <= 70.00 )\n		\n		\n		\n	then\n		Map bindings = rv.getBindings();\n		Map params = rv.getParams();\n		params.put( \"amount\", (new ActionExpression(\"((VOL-50)*17)+462\", bindings)) );	\n		 \n		action.execute( \"compute-consumption\",params, drools);\nend\n\n\n	\nrule \"compute-consumption_0_7\"\n	agenda-group \"initial\"\n	salience 80000\n	no-loop\n	when\n		\n		rv: RangeEntry( id==\"COMPUTATION_FOR_LOT_DONOR\", intvalue > 70.00, intvalue <= 80.00 )\n		\n		\n		\n	then\n		Map bindings = rv.getBindings();\n		Map params = rv.getParams();\n		params.put( \"amount\", (new ActionExpression(\"((VOL-60)*20)+632\", bindings)) );	\n		 \n		action.execute( \"compute-consumption\",params, drools);\nend\n\n\n	\nrule \"compute-consumption_0_8\"\n	agenda-group \"initial\"\n	salience 80000\n	no-loop\n	when\n		\n		rv: RangeEntry( id==\"COMPUTATION_FOR_LOT_DONOR\", intvalue > 80.00, intvalue <= 90.00 )\n		\n		\n		\n	then\n		Map bindings = rv.getBindings();\n		Map params = rv.getParams();\n		params.put( \"amount\", (new ActionExpression(\"((VOL-70)*23)+832\", bindings)) );	\n		 \n		action.execute( \"compute-consumption\",params, drools);\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL5939ba7a:16927ecacfc:-6cc0', '\npackage waterworkscomputation.COMMERCIAL;\nimport waterworkscomputation.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"COMMERCIAL\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		 waterworks.facts.WaterAccount (  classification matches \"COMMERCIAL\" ) \n		\n		WC: waterworks.facts.WaterConsumption (  VOL:volume ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"VOL\", VOL );\n		\n		bindings.put(\"WC\", WC );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"amount\", (new ActionExpression(\"VOL * 23\", bindings)) );\n_p0.put( \"ref\", WC );\naction.execute( \"compute-consumption\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL5de3f7b7:171951e807a:-746c', '\npackage waterworksbilling.WATER_SURCHARGE;\nimport waterworksbilling.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"WATER_SURCHARGE\"\n	agenda-group \"surcharge\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		WB: waterworks.facts.WaterBill (  DUEDATE:duedate,BYR:year,BMON:month ) \n		\n		 treasury.facts.TransactionDate (  date >= DUEDATE ) \n		\n		WBI: waterworks.facts.WaterBillItem (  YR:year == BYR,MON:month == BMON,AMT:amount > 0.00,billcode matches \"WATER_FEE\" ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"WB\", WB );\n		\n		bindings.put(\"YR\", YR );\n		\n		bindings.put(\"DUEDATE\", DUEDATE );\n		\n		bindings.put(\"BYR\", BYR );\n		\n		bindings.put(\"MON\", MON );\n		\n		bindings.put(\"WBI\", WBI );\n		\n		bindings.put(\"BMON\", BMON );\n		\n		bindings.put(\"AMT\", AMT );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"year\", YR );\n_p0.put( \"month\", MON );\n_p0.put( \"amount\", (new ActionExpression(\"AMT * 0.14\", bindings)) );\n_p0.put( \"billcode\", new KeyValue(\"WATER_FEE_SURCHARGE\", \"WATER SURCHARGE\") );\naction.execute( \"add-waterbillitem\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL746193b0:1684af9777d:-760b', '\npackage waterworkspayment.APPLY_EXCESS_PAYMENT;\nimport waterworkspayment.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"APPLY_EXCESS_PAYMENT\"\n	agenda-group \"payment\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		EXPMT: treasury.facts.ExcessPayment (  AMT:amount > 0.00 ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"EXPMT\", EXPMT );\n		\n		bindings.put(\"AMT\", AMT );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"billcode\", new KeyValue(\"WATER_ADVANCE_PAYMENT\", \"WATER ADVANCE PAYMENT\") );\n_p0.put( \"amount\", (new ActionExpression(\"AMT\", bindings)) );\naction.execute( \"add-credit-billitem\",_p0,drools);\n\nend\n\n\n	');
INSERT INTO `sys_rule_deployed` VALUES ('RUL746193b0:1684af9777d:-77bd', '\npackage waterworkspayment.APPLY_PAYMENT;\nimport waterworkspayment.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"APPLY_PAYMENT\"\n	agenda-group \"payment\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		PMT: treasury.facts.Payment (  amount > 0.00 ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"PMT\", PMT );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"payment\", PMT );\naction.execute( \"apply-payment\",_p0,drools);\n\nend\n\n\n	');
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
INSERT INTO `sys_rule_fact` VALUES ('treasury.facts.BillItem', 'treasury.facts.BillItem', 'Bill Item', 'treasury.facts.BillItem', 1, NULL, 'BILLITEM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TREASURY', 'treasury.facts.AbstractBillItem');
INSERT INTO `sys_rule_fact` VALUES ('treasury.facts.CashReceipt', 'treasury.facts.CashReceipt', 'Cash Receipt', 'treasury.facts.CashReceipt', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TREASURY', NULL);
INSERT INTO `sys_rule_fact` VALUES ('treasury.facts.CreditBillItem', 'treasury.facts.CreditBillItem', 'Credit Bill Item', 'treasury.facts.CreditBillItem', 1, NULL, 'CRBILL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TREASURY', 'treasury.facts.AbstractBillItem');
INSERT INTO `sys_rule_fact` VALUES ('treasury.facts.Deposit', 'treasury.facts.Deposit', 'Deposit', 'treasury.facts.Deposit', 5, NULL, 'PMT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TREASURY', NULL);
INSERT INTO `sys_rule_fact` VALUES ('treasury.facts.DueDate', 'treasury.facts.DueDate', 'Due Date', 'treasury.facts.DueDate', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TREASURY', NULL);
INSERT INTO `sys_rule_fact` VALUES ('treasury.facts.ExcessPayment', 'treasury.facts.ExcessPayment', 'Excess Payment', 'treasury.facts.ExcessPayment', 5, NULL, 'EXPMT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TREASURY', NULL);
INSERT INTO `sys_rule_fact` VALUES ('treasury.facts.HolidayFact', 'treasury.facts.HolidayFact', 'Holidays', 'treasury.facts.HolidayFact', 1, NULL, 'HOLIDAYS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TREASURY', NULL);
INSERT INTO `sys_rule_fact` VALUES ('treasury.facts.MonthEntry', 'treasury.facts.MonthEntry', 'Month Entry', 'treasury.facts.MonthEntry', 1, NULL, 'MONTHENTRY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TREASURY', NULL);
INSERT INTO `sys_rule_fact` VALUES ('treasury.facts.Payment', 'treasury.facts.Payment', 'Payment', 'treasury.facts.Payment', 5, NULL, 'PMT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TREASURY', NULL);
INSERT INTO `sys_rule_fact` VALUES ('treasury.facts.Requirement', 'treasury.facts.Requirement', 'Requirement', 'treasury.facts.Requirement', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'treasury', NULL);
INSERT INTO `sys_rule_fact` VALUES ('treasury.facts.TransactionDate', 'treasury.facts.TransactionDate', 'Transaction Date', 'treasury.facts.TransactionDate', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TREASURY', NULL);
INSERT INTO `sys_rule_fact` VALUES ('treasury.facts.VarDate', 'treasury.facts.VarDate', 'Variable Date', 'treasury.facts.VarDate', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TREASURY', NULL);
INSERT INTO `sys_rule_fact` VALUES ('treasury.facts.VarInteger', 'treasury.facts.VarInteger', 'Var Integer', 'treasury.facts.VarInteger', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TREASURY', NULL);
INSERT INTO `sys_rule_fact` VALUES ('waterworks.facts.WaterAccount', 'waterworks.facts.WaterAccount', 'Water Account', 'waterworks.facts.WaterAccount', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'waterworks', NULL);
INSERT INTO `sys_rule_fact` VALUES ('waterworks.facts.WaterBill', 'waterworks.facts.WaterBill', 'Water Bill', 'waterworks.facts.WaterBill', 1, NULL, 'WB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WATERWORKS', NULL);
INSERT INTO `sys_rule_fact` VALUES ('waterworks.facts.WaterBillingPeriod', 'waterworks.facts.WaterBillingPeriod', 'Water Billing Period', 'waterworks.facts.WaterBillingPeriod', 1, NULL, 'BILPRD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TREASURY', NULL);
INSERT INTO `sys_rule_fact` VALUES ('waterworks.facts.WaterBillItem', 'waterworks.facts.WaterBillItem', 'Water Bill Item', 'waterworks.facts.WaterBillItem', 0, NULL, 'WBI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WATERWORKS', 'treasury.facts.AbstractBillItem');
INSERT INTO `sys_rule_fact` VALUES ('waterworks.facts.WaterBillRecurringFee', 'waterworks.facts.WaterBillRecurringFee', 'Waterworks Bill Recurring Fee', 'waterworks.facts.WaterBillRecurringFee', 1, NULL, 'WBR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WATERWORKS', NULL);
INSERT INTO `sys_rule_fact` VALUES ('waterworks.facts.WaterConsumption', 'waterworks.facts.WaterConsumption', 'Water Consumption', 'waterworks.facts.WaterConsumption', 1, NULL, 'WC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WATERWORKS', NULL);
INSERT INTO `sys_rule_fact` VALUES ('waterworks.facts.WaterMeter', 'waterworks.facts.WaterMeter', 'Water Meter', 'waterworks.facts.WaterMeter', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WATERWORKS', NULL);
INSERT INTO `sys_rule_fact` VALUES ('waterworks.facts.WaterScheduleGroup', 'waterworks.facts.WaterScheduleGroup', 'Water Schedule Group', 'waterworks.facts.WaterScheduleGroup', 1, NULL, 'WBS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WATERWORKS', NULL);
INSERT INTO `sys_rule_fact` VALUES ('waterworks.facts.WaterworksAttribute', 'waterworks.facts.WaterworksAttribute', 'Waterworks Attribute', 'waterworks.facts.WaterworksAttribute', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WATERWORKS', NULL);
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
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.BillItem.paypriority', 'treasury.facts.BillItem', 'paypriority', 'Pay Priority', 'integer', 18, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.BillItem.refid', 'treasury.facts.BillItem', 'refid', 'Ref ID', 'string', 16, 'var', NULL, NULL, NULL, NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.BillItem.remarks', 'treasury.facts.BillItem', 'remarks', 'Remarks', 'string', 17, 'string', NULL, NULL, NULL, NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.BillItem.sortorder', 'treasury.facts.BillItem', 'sortorder', 'Sort Order', 'integer', 19, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.BillItem.surcharge', 'treasury.facts.BillItem', 'surcharge', 'Surcharge', 'decimal', 5, 'decimal', NULL, NULL, NULL, NULL, NULL, NULL, 'decimal', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.BillItem.tag', 'treasury.facts.BillItem', 'tag', 'Tag', 'string', 20, 'string', NULL, NULL, NULL, NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.BillItem.todate', 'treasury.facts.BillItem', 'todate', 'To Date', 'date', 15, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.BillItem.txntype', 'treasury.facts.BillItem', 'txntype', 'Txn Type', 'string', 6, 'lookup', 'billitem_txntype:lookup', 'objid', 'title', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.BillItem.year', 'treasury.facts.BillItem', 'year', 'Year', 'integer', 12, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.CashReceipt.receiptdate', 'treasury.facts.CashReceipt', 'receiptdate', 'Receipt Date', 'date', 2, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.CashReceipt.txnmode', 'treasury.facts.CashReceipt', 'txnmode', 'Txn Mode', 'string', 1, 'string', NULL, NULL, NULL, NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.CreditBillItem.amount', 'treasury.facts.CreditBillItem', 'amount', 'Amount', 'decimal', 1, 'decimal', NULL, NULL, NULL, NULL, NULL, NULL, 'decimal', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.CreditBillItem.billcode', 'treasury.facts.CreditBillItem', 'billcode', 'Bill code', 'string', 2, 'lookup', 'waterworks_itemaccount:lookup', 'objid', 'title', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.Deposit.amount', 'treasury.facts.Deposit', 'amount', 'Amount', 'decimal', 1, 'decimal', NULL, NULL, NULL, NULL, NULL, NULL, 'decimal', NULL);
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
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.TransactionDate.date', 'treasury.facts.TransactionDate', 'date', 'Date', 'date', 1, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.TransactionDate.day', 'treasury.facts.TransactionDate', 'day', 'Day', 'integer', 4, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.TransactionDate.month', 'treasury.facts.TransactionDate', 'month', 'Month', 'integer', 3, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.TransactionDate.qtr', 'treasury.facts.TransactionDate', 'qtr', 'Qtr', 'integer', 5, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.TransactionDate.tag', 'treasury.facts.TransactionDate', 'tag', 'Tag', 'string', 6, 'string', NULL, NULL, NULL, NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.TransactionDate.year', 'treasury.facts.TransactionDate', 'year', 'Year', 'integer', 2, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.VarDate.date', 'treasury.facts.VarDate', 'date', 'Date', 'date', 1, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.VarDate.day', 'treasury.facts.VarDate', 'day', 'Day', 'integer', 4, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.VarDate.month', 'treasury.facts.VarDate', 'month', 'Month', 'integer', 3, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.VarDate.qtr', 'treasury.facts.VarDate', 'qtr', 'Qtr', 'integer', 5, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.VarDate.tag', 'treasury.facts.VarDate', 'tag', 'Tag', 'string', 6, 'string', NULL, NULL, NULL, NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.VarDate.year', 'treasury.facts.VarDate', 'year', 'Year', 'integer', 2, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.VarInteger.tag', 'treasury.facts.VarInteger', 'tag', 'Tag', 'string', 2, 'string', NULL, NULL, NULL, NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('treasury.facts.VarInteger.value', 'treasury.facts.VarInteger', 'value', 'Value', 'integer', 1, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterAccount.barangay', 'waterworks.facts.WaterAccount', 'barangay', 'Barangay', 'string', 3, 'lookup', 'barangay:lookup', 'objid', 'name', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterAccount.classification', 'waterworks.facts.WaterAccount', 'classification', 'Classification', 'string', 1, 'lookup', 'waterworks_classification:lookup', 'objid', 'description', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterAccount.hasarrears', 'waterworks.facts.WaterAccount', 'hasarrears', 'Has Arrears', 'boolean', 7, 'boolean', NULL, NULL, NULL, NULL, NULL, NULL, 'boolean', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterAccount.metered', 'waterworks.facts.WaterAccount', 'metered', 'Metered', 'boolean', 6, 'boolean', NULL, NULL, NULL, NULL, NULL, NULL, 'boolean', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterAccount.metersize', 'waterworks.facts.WaterAccount', 'metersize', 'Meter Size', 'string', 2, 'lookup', 'waterworks_metersize:lookup', 'objid', 'title', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterAccount.state', 'waterworks.facts.WaterAccount', 'state', 'State', 'string', 5, 'lov', NULL, NULL, NULL, NULL, NULL, NULL, 'string', 'WATERWORKS_ACCOUNT_STATE');
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterAccount.units', 'waterworks.facts.WaterAccount', 'units', 'No. of Units', 'integer', 4, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBill.balanceforward', 'waterworks.facts.WaterBill', 'balanceforward', 'Balance Forward', 'decimal', 3, 'decimal', NULL, NULL, NULL, NULL, NULL, NULL, 'decimal', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBill.billdate', 'waterworks.facts.WaterBill', 'billdate', 'Bill Date', 'date', 4, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBill.discdate', 'waterworks.facts.WaterBill', 'discdate', 'Disc. Date', 'date', 7, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBill.duedate', 'waterworks.facts.WaterBill', 'duedate', 'Due Date', 'date', 8, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBill.expirydate', 'waterworks.facts.WaterBill', 'expirydate', 'Expiry Date', 'date', 9, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBill.fromdate', 'waterworks.facts.WaterBill', 'fromdate', 'From Date', 'date', 5, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBill.month', 'waterworks.facts.WaterBill', 'month', 'Month', 'integer', 2, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBill.todate', 'waterworks.facts.WaterBill', 'todate', 'To Date', 'date', 6, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBill.totalunpaid', 'waterworks.facts.WaterBill', 'totalunpaid', 'Total Unpaid', 'decimal', 10, 'decimal', NULL, NULL, NULL, NULL, NULL, NULL, 'decimal', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBill.year', 'waterworks.facts.WaterBill', 'year', 'Year', 'integer', 1, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBill.yearmonth', 'waterworks.facts.WaterBill', 'yearmonth', 'Year Month', 'integer', 11, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillingPeriod.billdate', 'waterworks.facts.WaterBillingPeriod', 'billdate', 'Bill Date', 'date', 7, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillingPeriod.billexpirydate', 'waterworks.facts.WaterBillingPeriod', 'billexpirydate', 'Bill Expiry Date', 'date', 11, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillingPeriod.billingenddate', 'waterworks.facts.WaterBillingPeriod', 'billingenddate', 'Billing End Date', 'date', 8, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillingPeriod.discdate', 'waterworks.facts.WaterBillingPeriod', 'discdate', 'Discount Date', 'date', 9, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillingPeriod.duedate', 'waterworks.facts.WaterBillingPeriod', 'duedate', 'Due Date', 'date', 10, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillingPeriod.fromdate', 'waterworks.facts.WaterBillingPeriod', 'fromdate', 'From Date', 'date', 3, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillingPeriod.month', 'waterworks.facts.WaterBillingPeriod', 'month', 'Month', 'integer', 1, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillingPeriod.readingdate', 'waterworks.facts.WaterBillingPeriod', 'readingdate', 'Reading Date', 'date', 5, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillingPeriod.readingenddate', 'waterworks.facts.WaterBillingPeriod', 'readingenddate', 'Reading End Date', 'date', 6, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillingPeriod.todate', 'waterworks.facts.WaterBillingPeriod', 'todate', 'To Date', 'date', 4, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillingPeriod.year', 'waterworks.facts.WaterBillingPeriod', 'year', 'Year', 'integer', 2, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillItem.amount', 'waterworks.facts.WaterBillItem', 'amount', 'Amount', 'decimal', 2, 'decimal', NULL, NULL, NULL, NULL, NULL, NULL, 'decimal', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillItem.amtpaid', 'waterworks.facts.WaterBillItem', 'amtpaid', 'Amt Paid', 'decimal', 8, 'decimal', NULL, NULL, NULL, NULL, NULL, NULL, 'decimal', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillItem.billcode', 'waterworks.facts.WaterBillItem', 'billcode', 'Bill code', 'string', 1, 'lookup', 'waterworks_itemaccount:lookup', 'objid', 'title', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillItem.month', 'waterworks.facts.WaterBillItem', 'month', 'Month', 'integer', 4, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillItem.principal', 'waterworks.facts.WaterBillItem', 'principal', 'Principal', 'decimal', 7, 'decimal', NULL, NULL, NULL, NULL, NULL, NULL, 'decimal', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillItem.remarks', 'waterworks.facts.WaterBillItem', 'remarks', 'Remarks', 'string', 6, 'string', NULL, NULL, NULL, NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillItem.volume', 'waterworks.facts.WaterBillItem', 'volume', 'Volume', 'integer', 5, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillItem.year', 'waterworks.facts.WaterBillItem', 'year', 'Year', 'integer', 3, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillItem.yearmonth', 'waterworks.facts.WaterBillItem', 'yearmonth', 'Year Month', 'integer', 9, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillRecurringFee.amount', 'waterworks.facts.WaterBillRecurringFee', 'amount', 'Amount', 'decimal', 7, 'decimal', NULL, NULL, NULL, NULL, NULL, NULL, 'decimal', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillRecurringFee.amtdue', 'waterworks.facts.WaterBillRecurringFee', 'amtdue', 'Amt Due', 'decimal', 8, 'decimal', NULL, NULL, NULL, NULL, NULL, NULL, 'decimal', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillRecurringFee.billcode', 'waterworks.facts.WaterBillRecurringFee', 'billcode', 'Bill code', 'string', 4, 'lookup', 'waterworks_itemaccount:lookup', 'objid', 'title', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillRecurringFee.installmentamount', 'waterworks.facts.WaterBillRecurringFee', 'installmentamount', 'Installment Amount', 'decimal', 5, 'decimal', NULL, NULL, NULL, NULL, NULL, NULL, 'decimal', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillRecurringFee.startmonth', 'waterworks.facts.WaterBillRecurringFee', 'startmonth', 'Start Month', 'integer', 2, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillRecurringFee.startyear', 'waterworks.facts.WaterBillRecurringFee', 'startyear', 'Start Year', 'integer', 1, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillRecurringFee.term', 'waterworks.facts.WaterBillRecurringFee', 'term', 'Term', 'integer', 6, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterBillRecurringFee.type', 'waterworks.facts.WaterBillRecurringFee', 'type', 'Type', 'string', 3, 'lov', NULL, NULL, NULL, NULL, NULL, NULL, 'string', 'WATERWORKS_RECURRINGFEE_TYPE');
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterConsumption.amount', 'waterworks.facts.WaterConsumption', 'amount', 'Amount', 'decimal', 4, 'decimal', NULL, NULL, NULL, NULL, NULL, NULL, 'decimal', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterConsumption.amtdue', 'waterworks.facts.WaterConsumption', 'amtdue', 'Amount Due', 'decimal', 5, 'decimal', NULL, NULL, NULL, NULL, NULL, NULL, 'decimal', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterConsumption.disconnectiondate', 'waterworks.facts.WaterConsumption', 'disconnectiondate', 'Disconnection Date', 'date', 8, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterConsumption.duedate', 'waterworks.facts.WaterConsumption', 'duedate', 'Due Date', 'date', 6, 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterConsumption.month', 'waterworks.facts.WaterConsumption', 'month', 'Month', 'integer', 3, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterConsumption.refid', 'waterworks.facts.WaterConsumption', 'refid', 'Ref Id', 'string', 9, 'string', NULL, NULL, NULL, NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterConsumption.status', 'waterworks.facts.WaterConsumption', 'status', 'Status', 'string', 7, 'lov', NULL, NULL, NULL, NULL, NULL, NULL, 'string', 'WATERWORKS_BILLING_STATUS');
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterConsumption.volume', 'waterworks.facts.WaterConsumption', 'volume', 'Volume', 'integer', 1, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterConsumption.year', 'waterworks.facts.WaterConsumption', 'year', 'Year', 'integer', 2, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, 'integer', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterMeter.capacity', 'waterworks.facts.WaterMeter', 'capacity', 'Capacity', 'string', 3, 'var', NULL, NULL, NULL, NULL, NULL, NULL, 'WATERWORKS_METER_CAPACITY', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterMeter.sizeid', 'waterworks.facts.WaterMeter', 'sizeid', 'Size', 'string', 1, 'lookup', 'waterworks_metersize:lookup', 'objid', 'title', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterMeter.state', 'waterworks.facts.WaterMeter', 'state', 'Status', 'string', 2, 'var', NULL, NULL, NULL, NULL, NULL, NULL, 'WATERWORKS_METER_STATE', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterScheduleGroup.id', 'waterworks.facts.WaterScheduleGroup', 'id', 'ID', 'string', 1, 'lookup', 'waterworks_schedule_group:lookup', 'objid', 'objid', NULL, NULL, NULL, 'string', NULL);
INSERT INTO `sys_rule_fact_field` VALUES ('waterworks.facts.WaterworksAttribute.name', 'waterworks.facts.WaterworksAttribute', 'name', 'Name', 'string', 1, 'lookup', 'waterworks_attribute:lookup', 'name', 'title', NULL, NULL, NULL, 'string', NULL);
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
INSERT INTO `sys_rulegroup` VALUES ('account-mapping', 'waterworkspayment', 'Account Mapping', 4);
INSERT INTO `sys_rulegroup` VALUES ('billing', 'waterworksbilling', 'Billing Initial', 1);
INSERT INTO `sys_rulegroup` VALUES ('computefee', 'waterworksapplication', 'Compute Fee', 1);
INSERT INTO `sys_rulegroup` VALUES ('computefee', 'waterworksbilling', 'Compute Fee', 2);
INSERT INTO `sys_rulegroup` VALUES ('discount', 'waterworkspayment', 'Discount', 1);
INSERT INTO `sys_rulegroup` VALUES ('initial', 'waterworksapplication', 'Initial', 0);
INSERT INTO `sys_rulegroup` VALUES ('initial', 'waterworksbillingschedule', 'Initial', 0);
INSERT INTO `sys_rulegroup` VALUES ('initial', 'waterworkscomputation', 'Initial', 0);
INSERT INTO `sys_rulegroup` VALUES ('interest', 'waterworksbilling', 'Compute Interest', 4);
INSERT INTO `sys_rulegroup` VALUES ('payment', 'waterworkspayment', 'Payment', 2);
INSERT INTO `sys_rulegroup` VALUES ('post-initial', 'waterworksbillingschedule', 'Post Initial', 1);
INSERT INTO `sys_rulegroup` VALUES ('pre-computation', 'waterworkscomputation', 'Pre-Computation', 0);
INSERT INTO `sys_rulegroup` VALUES ('requirement', 'waterworksapplication', 'Requirements', 5);
INSERT INTO `sys_rulegroup` VALUES ('summary', 'waterworksbilling', 'Summary', 5);
INSERT INTO `sys_rulegroup` VALUES ('summary', 'waterworkspayment', 'Summary', 3);
INSERT INTO `sys_rulegroup` VALUES ('surcharge', 'waterworksbilling', 'Compute Surcharge', 3);
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
INSERT INTO `sys_ruleset` VALUES ('waterworkspayment', 'Water Works Payment', 'waterworkspayment', 'WATERWORKS', 'RULE_AUTHOR', NULL);
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
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworkspayment', 'enterprise.actions.ThrowException');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworksbilling', 'treasury.actions.AddCreditBillItem');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworkspayment', 'treasury.actions.AddCreditBillItem');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworkspayment', 'treasury.actions.AddDiscountItem');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworksbilling', 'treasury.actions.AddInterestItem');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworksbilling', 'treasury.actions.AddSurchargeItem');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworksbilling', 'treasury.actions.AddVarDate');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworkscomputation', 'treasury.actions.AddVarInteger');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworkspayment', 'treasury.actions.ApplyPayment');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworksapplication', 'treasury.actions.ComputeFee');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworksapplication', 'treasury.actions.SetBillItemAccount');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworksbilling', 'treasury.actions.SetBillItemAccount');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworkspayment', 'treasury.actions.SetBillItemAccount');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworksbilling', 'treasury.actions.SetBillItemProperty');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworksbilling', 'waterworks.actions.AddRecurringWaterBillItem');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworksbilling', 'waterworks.actions.AddWaterBillItem');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworkscomputation', 'waterworks.actions.ComputeConsumption');
INSERT INTO `sys_ruleset_actiondef` VALUES ('waterworksbillingschedule', 'waterworks.actions.SetWaterBillingPeriod');
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
INSERT INTO `sys_ruleset_fact` VALUES ('waterworkspayment', 'com.rameses.rules.common.CurrentDate');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksapplication', 'treasury.facts.BillItem');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworkspayment', 'treasury.facts.Deposit');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworkspayment', 'treasury.facts.ExcessPayment');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbillingschedule', 'treasury.facts.HolidayFact');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworkspayment', 'treasury.facts.Payment');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksapplication', 'treasury.facts.Requirement');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbilling', 'treasury.facts.TransactionDate');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworkspayment', 'treasury.facts.TransactionDate');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworkscomputation', 'treasury.facts.VarInteger');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbilling', 'waterworks.facts.WaterAccount');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworkscomputation', 'waterworks.facts.WaterAccount');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworkspayment', 'waterworks.facts.WaterAccount');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbilling', 'waterworks.facts.WaterBill');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworkspayment', 'waterworks.facts.WaterBill');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbillingschedule', 'waterworks.facts.WaterBillingPeriod');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbilling', 'waterworks.facts.WaterBillItem');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworkspayment', 'waterworks.facts.WaterBillItem');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbilling', 'waterworks.facts.WaterBillRecurringFee');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworkscomputation', 'waterworks.facts.WaterConsumption');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworkscomputation', 'waterworks.facts.WaterMeter');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbillingschedule', 'waterworks.facts.WaterScheduleGroup');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworksbilling', 'waterworks.facts.WaterworksAttribute');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworkscomputation', 'waterworks.facts.WaterworksAttribute');
INSERT INTO `sys_ruleset_fact` VALUES ('waterworkspayment', 'waterworks.facts.WaterworksAttribute');
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
-- Records of sys_var
-- ----------------------------
BEGIN;
INSERT INTO `sys_var` VALUES ('waterworks_acctno_format', 'WA-[org]-[%06d]', NULL, NULL, NULL);
INSERT INTO `sys_var` VALUES ('waterworks_billno_format', 'WB-[yyyyMM]-[%05d]', NULL, NULL, NULL);
COMMIT;

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
INSERT INTO `sys_wf` VALUES ('waterworks_application', 'Waterworks Application', 'WATERWORKS');
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
INSERT INTO `sys_wf_node` VALUES ('approval', 'waterworks_application', 'Approval', 'state', 4, NULL, NULL, NULL, '[type:\"state\",fillColor:\"#c0c0c0\",pos:[568,73],size:[146,63]]', '[:]', 1);
INSERT INTO `sys_wf_node` VALUES ('approved', 'waterworks_batch_billing', 'Approved', 'state', 7, 0, 'WATERWORKS', NULL, '[fillColor:\"#c0c0c0\",type:\"state\",pos:[748,103],size:[100,50]]', '[show_reading:true]', NULL);
INSERT INTO `sys_wf_node` VALUES ('assessment', 'waterworks_application', 'Assessment', 'state', 3, NULL, NULL, NULL, '[type:\"state\",fillColor:\"#c0c0c0\",pos:[367,69],size:[134,65]]', '[:]', 1);
INSERT INTO `sys_wf_node` VALUES ('draft', 'waterworks_batch_billing', 'Draft', 'state', 2, 0, 'WATERWORKS', NULL, '[fillColor:\"#c0c0c0\",type:\"state\",pos:[123,170],size:[109,53]]', '[:]', NULL);
INSERT INTO `sys_wf_node` VALUES ('end', 'waterworks_application', 'Completed', 'end', 7, NULL, NULL, NULL, '[type:\"end\",fillColor:\"#ff0000\",pos:[756,57],size:[32,32]]', '[:]', NULL);
INSERT INTO `sys_wf_node` VALUES ('end', 'waterworks_batch_billing', 'Completed', 'end', 8, 0, 'WATERWORKS', NULL, '[fillColor:\"#ff0000\",type:\"end\",pos:[923,260],size:[32,32]]', '[show_reading:true]', NULL);
INSERT INTO `sys_wf_node` VALUES ('for-approval', 'waterworks_batch_billing', 'For Approval', 'state', 6, 0, 'WATERWORKS', NULL, '[fillColor:\"#c0c0c0\",type:\"state\",pos:[661,222],size:[100,50]]', '[show_reading:true]', NULL);
INSERT INTO `sys_wf_node` VALUES ('for-reading', 'waterworks_batch_billing', 'For Reading', 'state', 5, 0, 'WATERWORKS', NULL, '[fillColor:\"#c0c0c0\",type:\"state\",pos:[576,53],size:[100,50]]', '[show_reading:true]', NULL);
INSERT INTO `sys_wf_node` VALUES ('for-review', 'waterworks_batch_billing', 'For Review', 'state', 4, 0, 'WATERWORKS', NULL, '[fillColor:\"#c0c0c0\",type:\"state\",pos:[438,100],size:[100,50]]', '[:]', NULL);
INSERT INTO `sys_wf_node` VALUES ('payment', 'waterworks_application', 'Payment', 'state', 5, NULL, NULL, NULL, '[type:\"state\",fillColor:\"#c0c0c0\",pos:[340,166],size:[130,67]]', '[:]', NULL);
INSERT INTO `sys_wf_node` VALUES ('processing', 'waterworks_batch_billing', 'Processing', 'state', 3, 0, 'WATERWORKS', NULL, '[fillColor:\"#c0c0c0\",type:\"state\",pos:[249,76],size:[100,50]]', '[:]', NULL);
INSERT INTO `sys_wf_node` VALUES ('releasing', 'waterworks_application', 'Releasing', 'state', 6, NULL, NULL, NULL, '[type:\"state\",fillColor:\"#c0c0c0\",pos:[573,165],size:[154,69]]', '[:]', NULL);
INSERT INTO `sys_wf_node` VALUES ('start', 'waterworks_application', 'start', 'start', 1, NULL, NULL, NULL, '[type:\"start\",fillColor:\"#00ff00\",pos:[52,22],size:[32,32]]', '[:]', NULL);
INSERT INTO `sys_wf_node` VALUES ('start', 'waterworks_batch_billing', 'Start', 'start', 1, 0, 'WATERWORKS', NULL, '[fillColor:\"#00ff00\",type:\"start\",pos:[72,60],size:[32,32]]', '[:]', NULL);
INSERT INTO `sys_wf_node` VALUES ('verify-requirements', 'waterworks_application', 'Verify Requirements', 'state', 2, NULL, NULL, NULL, '[type:\"state\",fillColor:\"#c0c0c0\",pos:[99,66],size:[160,66]]', '[:]', 1);
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
INSERT INTO `sys_wf_transition` VALUES ('approval', 'waterworks_application', 'approve', 'payment', 0, NULL, '[showConfirm:true,confirmMessage:\"You are about to approve this for payment. Proceed?\"]', NULL, 'Approve for Payment', '[points:[568,131,470,169],type:\"arrow\",pos:[470,131],size:[98,38]]');
INSERT INTO `sys_wf_transition` VALUES ('approved', 'waterworks_batch_billing', 'post', 'end', 0, NULL, '[showConfirm:true,confirmMessage:\"You are about to post this to the ledger. Proceed?\"]', NULL, 'Post', '[points:[827,148,934,266],type:\"arrow\",pos:[827,148],size:[107,118]]');
INSERT INTO `sys_wf_transition` VALUES ('approved', 'waterworks_batch_billing', 'revert', 'for-reading', 1, NULL, '[:]', NULL, 'Revert', '[points:[748,103,676,77],type:\"arrow\",pos:[676,77],size:[72,26]]');
INSERT INTO `sys_wf_transition` VALUES ('assessment', 'waterworks_application', 'send-for-approval', 'approval', 0, NULL, '[:]', NULL, 'Send for Approval', '[points:[501,100,568,100],type:\"arrow\",pos:[501,100],size:[67,0]]');
INSERT INTO `sys_wf_transition` VALUES ('draft', 'waterworks_batch_billing', 'submit', 'processing', 0, NULL, '[autostart:true]', NULL, 'Submit for Processing', '[points:[210,170,268,125],type:\"arrow\",pos:[210,125],size:[58,45]]');
INSERT INTO `sys_wf_transition` VALUES ('for-approval', 'waterworks_batch_billing', 'approve', 'approved', 0, NULL, '[:]', NULL, 'Approve', '[points:[712,224,773,149],type:\"arrow\",pos:[712,149],size:[61,75]]');
INSERT INTO `sys_wf_transition` VALUES ('for-approval', 'waterworks_batch_billing', 'revert', 'for-reading', 1, NULL, '[:]', NULL, 'Revert', '[points:[661,222,602,104],type:\"arrow\",pos:[602,104],size:[59,118]]');
INSERT INTO `sys_wf_transition` VALUES ('for-reading', 'waterworks_batch_billing', 'submit', 'for-approval', 0, NULL, '[:]', NULL, 'Submit for Approval', '[points:[635,102,692,220],type:\"arrow\",pos:[635,102],size:[57,118]]');
INSERT INTO `sys_wf_transition` VALUES ('for-review', 'waterworks_batch_billing', 'revert', 'draft', 1, NULL, '[:]', NULL, 'Revert', '[points:[492,150,505,213,377,274,232,217],type:\"arrow\",pos:[232,150],size:[273,124]]');
INSERT INTO `sys_wf_transition` VALUES ('for-review', 'waterworks_batch_billing', 'submit', 'for-reading', 0, NULL, '[showPrompt:true]', NULL, 'Submit for Reading', '[points:[538,107,576,95],type:\"arrow\",pos:[538,95],size:[38,12]]');
INSERT INTO `sys_wf_transition` VALUES ('payment', 'waterworks_application', 'post-payment', 'releasing', 0, NULL, '[visibleWhen:\"#{ false }\"]', NULL, 'Post Payment', '[points:[470,200,499,203,573,204],type:\"arrow\",pos:[470,200],size:[103,4]]');
INSERT INTO `sys_wf_transition` VALUES ('processing', 'waterworks_batch_billing', 'submit', 'for-review', 0, NULL, '[:]', NULL, 'Submit for Review', '[points:[311,126,313,147,366,181,442,133],type:\"arrow\",pos:[311,126],size:[131,55]]');
INSERT INTO `sys_wf_transition` VALUES ('releasing', 'waterworks_application', 'release', 'end', 0, NULL, '[showConfirm:true,confirmMessage:\"You are about to release this document. Proceed?\"]', NULL, 'Release', '[points:[684,165,763,89],type:\"arrow\",pos:[684,89],size:[79,76]]');
INSERT INTO `sys_wf_transition` VALUES ('start', 'waterworks_application', 'start', 'verify-requirements', 0, NULL, '[:]', NULL, 'Start', '[points:[84,46,124,66],type:\"arrow\",pos:[84,46],size:[40,20]]');
INSERT INTO `sys_wf_transition` VALUES ('start', 'waterworks_batch_billing', 'submit', 'draft', 0, NULL, '[autostart:true]', NULL, NULL, '[points:[104,80,160,170],type:\"arrow\",pos:[104,80],size:[56,90]]');
INSERT INTO `sys_wf_transition` VALUES ('verify-requirements', 'waterworks_application', 'send-for-assessment', 'assessment', 0, NULL, '[:]', NULL, 'Send for Assessment', '[points:[259,97,367,96],type:\"arrow\",pos:[259,96],size:[108,1]]');
COMMIT;

-- ----------------------------
-- Table structure for waterworks_account
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_account`;
CREATE TABLE `waterworks_account` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  `acctno` varchar(50) DEFAULT NULL,
  `acctinfoid` varchar(50) DEFAULT NULL,
  `dtstarted` date DEFAULT NULL,
  `applicationid` varchar(50) DEFAULT NULL,
  `remarks` text,
  `ukey` varchar(50) NOT NULL DEFAULT '',
  `seqno` int(11) DEFAULT NULL,
  `billid` varchar(50) DEFAULT NULL,
  `lng` float(255,0) DEFAULT NULL,
  `lat` float(255,0) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  UNIQUE KEY `uix_acctno` (`acctno`,`ukey`) USING BTREE,
  KEY `ix_acctno` (`acctno`) USING BTREE,
  KEY `ix_applicationid` (`applicationid`) USING BTREE,
  KEY `fk_waterworks_account_acctinfoid` (`acctinfoid`) USING BTREE,
  KEY `fk_waterworks_account_billid` (`billid`) USING BTREE,
  CONSTRAINT `fk_waterworks_account_acctinfoid` FOREIGN KEY (`acctinfoid`) REFERENCES `waterworks_account_info` (`objid`),
  CONSTRAINT `fk_waterworks_account_applicationid` FOREIGN KEY (`applicationid`) REFERENCES `waterworks_application` (`objid`),
  CONSTRAINT `fk_waterworks_account_billid` FOREIGN KEY (`billid`) REFERENCES `waterworks_bill` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Table structure for waterworks_account_info
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_account_info`;
CREATE TABLE `waterworks_account_info` (
  `objid` varchar(50) NOT NULL,
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
  `units` int(11) DEFAULT NULL,
  `stuboutid` varchar(50) DEFAULT NULL,
  `subareaid` varchar(50) NOT NULL,
  `attributes` varchar(500) DEFAULT NULL,
  `meterstate` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  UNIQUE KEY `fk_waterworks_account_meter` (`meterid`) USING BTREE,
  KEY `fk_waterworks_account_classification` (`classificationid`) USING BTREE,
  KEY `ix_acctname` (`acctname`) USING BTREE,
  KEY `ix_owner_objid` (`owner_objid`) USING BTREE,
  KEY `ix_meterid` (`meterid`) USING BTREE,
  KEY `fk_waterworks_account_stuboutid` (`stuboutid`) USING BTREE,
  KEY `fk_waterworks_account_subareaid` (`subareaid`) USING BTREE,
  CONSTRAINT `waterworks_account_info_ibfk_2` FOREIGN KEY (`classificationid`) REFERENCES `waterworks_classification` (`objid`),
  CONSTRAINT `waterworks_account_info_ibfk_3` FOREIGN KEY (`meterid`) REFERENCES `waterworks_meter` (`objid`),
  CONSTRAINT `waterworks_account_info_ibfk_4` FOREIGN KEY (`stuboutid`) REFERENCES `waterworks_stubout` (`objid`),
  CONSTRAINT `waterworks_account_info_ibfk_5` FOREIGN KEY (`subareaid`) REFERENCES `waterworks_subarea` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for waterworks_area
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_area`;
CREATE TABLE `waterworks_area` (
  `objid` varchar(50) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  UNIQUE KEY `uix_code` (`code`) USING BTREE
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
-- Records of waterworks_attribute
-- ----------------------------
BEGIN;
INSERT INTO `waterworks_attribute` VALUES ('LOT_DONOR', 'LOT DONOR');
INSERT INTO `waterworks_attribute` VALUES ('SENIOR', 'SENIOR CITIZEN');
INSERT INTO `waterworks_attribute` VALUES ('SUBDIVISION', 'SUBDIVISION');
COMMIT;

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
  `subareaid` varchar(50) DEFAULT NULL,
  `dtposted` datetime DEFAULT NULL,
  `postedby_objid` varchar(50) DEFAULT NULL,
  `postedby_name` varchar(255) DEFAULT NULL,
  `reader_objid` varchar(50) DEFAULT NULL,
  `reader_name` varchar(255) DEFAULT NULL,
  `periodid` varchar(50) DEFAULT NULL,
  `taskid` varchar(50) DEFAULT NULL,
  `readingdate` date DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  UNIQUE KEY `uix_subareaid_periodid` (`subareaid`,`periodid`) USING BTREE,
  KEY `ix_dtcreated` (`dtcreated`) USING BTREE,
  KEY `ix_createdby_objid` (`createdby_objid`) USING BTREE,
  KEY `ix_zoneid` (`subareaid`) USING BTREE,
  KEY `ix_dtposted` (`dtposted`) USING BTREE,
  KEY `ix_postedby_objid` (`postedby_objid`) USING BTREE,
  KEY `ix_reader_objid` (`reader_objid`) USING BTREE,
  KEY `ix_taskid` (`taskid`) USING BTREE,
  KEY `ix_scheduleid` (`periodid`) USING BTREE,
  KEY `ix_readingdate` (`readingdate`) USING BTREE,
  CONSTRAINT `fk_waterworks_batch_billing_periodid` FOREIGN KEY (`periodid`) REFERENCES `waterworks_billing_period` (`objid`),
  CONSTRAINT `fk_waterworks_batch_billing_subareaid` FOREIGN KEY (`subareaid`) REFERENCES `waterworks_subarea` (`objid`),
  CONSTRAINT `fk_waterworks_batch_billing_taskid` FOREIGN KEY (`taskid`) REFERENCES `waterworks_batch_billing_task` (`taskid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Table structure for waterworks_bill
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_bill`;
CREATE TABLE `waterworks_bill` (
  `objid` varchar(50) NOT NULL,
  `billno` varchar(50) DEFAULT NULL,
  `billdate` date DEFAULT NULL,
  `acctid` varchar(50) DEFAULT NULL,
  `acctinfoid` varchar(50) DEFAULT NULL,
  `batchid` varchar(50) DEFAULT NULL,
  `txnmode` varchar(10) DEFAULT NULL,
  `periodid` varchar(50) DEFAULT NULL,
  `expirydate` date DEFAULT NULL,
  `state` varchar(32) DEFAULT NULL,
  `balanceforward` decimal(16,2) DEFAULT NULL,
  `billed` int(11) DEFAULT NULL,
  `billrefno` varchar(50) DEFAULT NULL,
  `printed` int(11) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `createdby_objid` varchar(50) DEFAULT NULL,
  `createdby_name` varchar(255) DEFAULT NULL,
  `dtcreated` datetime DEFAULT NULL,
  `validitydate` date DEFAULT NULL,
  `initial` int(255) DEFAULT NULL,
  `step` int(10) DEFAULT NULL,
  `consumptionid` varchar(50) DEFAULT NULL,
  `totalcredits` decimal(16,2) DEFAULT '0.00',
  `totalprevunpaid` decimal(16,2) DEFAULT '0.00',
  `totalbillunpaid` decimal(16,2) DEFAULT '0.00',
  `billamount` decimal(16,2) DEFAULT '0.00',
  `totalsurcharge` decimal(16,2) DEFAULT '0.00',
  `totalpayment` decimal(16,2) DEFAULT '0.00',
  `totaldiscount` decimal(16,2) DEFAULT '0.00',
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `ix_batchid` (`batchid`) USING BTREE,
  KEY `fk_waterworks_bill_acctid` (`acctid`) USING BTREE,
  KEY `fk_waterworks_bill_acctinfoid` (`acctinfoid`) USING BTREE,
  KEY `fk_waterworks_bill_periodid` (`periodid`) USING BTREE,
  KEY `fk_waterworks_bill_consumptionid` (`consumptionid`) USING BTREE,
  CONSTRAINT `fk_waterworks_bill_acctid` FOREIGN KEY (`acctid`) REFERENCES `waterworks_account` (`objid`),
  CONSTRAINT `fk_waterworks_bill_acctinfoid` FOREIGN KEY (`acctinfoid`) REFERENCES `waterworks_account_info` (`objid`),
  CONSTRAINT `fk_waterworks_bill_batchid` FOREIGN KEY (`batchid`) REFERENCES `waterworks_batch_billing` (`objid`),
  CONSTRAINT `fk_waterworks_bill_consumptionid` FOREIGN KEY (`consumptionid`) REFERENCES `waterworks_consumption` (`objid`),
  CONSTRAINT `fk_waterworks_bill_periodid` FOREIGN KEY (`periodid`) REFERENCES `waterworks_billing_period` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for waterworks_billing_period
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_billing_period`;
CREATE TABLE `waterworks_billing_period` (
  `objid` varchar(50) NOT NULL,
  `scheduleid` varchar(50) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `fromdate` date DEFAULT NULL,
  `todate` date DEFAULT NULL,
  `readingdate` date DEFAULT NULL,
  `readingenddate` date DEFAULT NULL,
  `billdate` date DEFAULT NULL,
  `billingenddate` date DEFAULT NULL,
  `discdate` date DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `billexpirydate` date DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  UNIQUE KEY `uix_scheduleid_year_month` (`scheduleid`,`year`,`month`) USING BTREE,
  KEY `ix_schedule_objid` (`scheduleid`) USING BTREE,
  KEY `ix_year` (`year`) USING BTREE,
  KEY `ix_month` (`month`) USING BTREE,
  KEY `ix_readingdate` (`readingdate`) USING BTREE,
  KEY `objid` (`objid`,`scheduleid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for waterworks_billitem
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_billitem`;
CREATE TABLE `waterworks_billitem` (
  `objid` varchar(50) NOT NULL,
  `acctid` varchar(50) NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `itemid` varchar(50) NOT NULL,
  `billid` varchar(50) DEFAULT NULL,
  `particulars` varchar(255) DEFAULT NULL,
  `amount` decimal(16,2) DEFAULT NULL,
  `amtpaid` decimal(16,2) DEFAULT NULL,
  `discount` decimal(16,2) DEFAULT NULL,
  `system` int(255) DEFAULT NULL,
  `consumptionid` varchar(50) DEFAULT NULL,
  `billed` int(255) DEFAULT NULL,
  `txndate` date DEFAULT NULL,
  `recurringfeeid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  UNIQUE KEY `uix_waterworks_billitem_mindex` (`billid`,`itemid`,`year`,`month`) USING BTREE,
  KEY `fk_waterworks_billitem_consumptionid` (`consumptionid`) USING BTREE,
  KEY `fk_waterworks_billitem_itemid` (`itemid`) USING BTREE,
  KEY `idx_waterworks_billitem_year` (`year`) USING BTREE,
  KEY `idx_waterworks_billitem_month` (`month`) USING BTREE,
  KEY `fk_waterworks_billitem_acctid` (`acctid`) USING BTREE,
  KEY `fk_waterworks_billitem_recurringfeeid` (`recurringfeeid`) USING BTREE,
  CONSTRAINT `fk_waterworks_billitem_acctid` FOREIGN KEY (`acctid`) REFERENCES `waterworks_account` (`objid`),
  CONSTRAINT `fk_waterworks_billitem_billid` FOREIGN KEY (`billid`) REFERENCES `waterworks_bill` (`objid`),
  CONSTRAINT `fk_waterworks_billitem_consumptionid` FOREIGN KEY (`consumptionid`) REFERENCES `waterworks_consumption` (`objid`),
  CONSTRAINT `fk_waterworks_billitem_itemid` FOREIGN KEY (`itemid`) REFERENCES `waterworks_itemaccount` (`objid`),
  CONSTRAINT `fk_waterworks_billitem_recurringfeeid` FOREIGN KEY (`recurringfeeid`) REFERENCES `waterworks_recurringfee` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `acctid` varchar(50) NOT NULL,
  `meterid` varchar(50) DEFAULT NULL,
  `year` int(255) NOT NULL,
  `month` int(255) NOT NULL,
  `billid` varchar(50) DEFAULT NULL,
  `txnmode` varchar(50) DEFAULT NULL,
  `reading` int(11) DEFAULT NULL,
  `volume` int(11) DEFAULT NULL,
  `amount` decimal(16,2) DEFAULT NULL,
  `state` varchar(32) DEFAULT NULL,
  `hold` int(11) NOT NULL DEFAULT '0',
  `reason` varchar(255) DEFAULT NULL,
  `reader_objid` varchar(50) DEFAULT NULL,
  `reader_name` varchar(255) DEFAULT NULL,
  `readingdate` date DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  UNIQUE KEY `uix_acctid_year_month` (`acctid`,`year`,`month`) USING BTREE,
  KEY `fk_waterworks_consumption_meterid` (`meterid`) USING BTREE,
  KEY `fk_waterworks_consumption_billid` (`billid`) USING BTREE,
  CONSTRAINT `fk_waterworks_consumption_acctid` FOREIGN KEY (`acctid`) REFERENCES `waterworks_account` (`objid`),
  CONSTRAINT `fk_waterworks_consumption_billid` FOREIGN KEY (`billid`) REFERENCES `waterworks_bill` (`objid`),
  CONSTRAINT `fk_waterworks_consumption_meterid` FOREIGN KEY (`meterid`) REFERENCES `waterworks_meter` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for waterworks_credit
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_credit`;
CREATE TABLE `waterworks_credit` (
  `objid` varchar(50) NOT NULL,
  `acctid` varchar(50) DEFAULT NULL,
  `paymentrefid` varchar(50) DEFAULT NULL,
  `dr` decimal(16,2) DEFAULT NULL,
  `cr` decimal(16,2) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `ix_acctid` (`acctid`) USING BTREE,
  KEY `fk_waterworks_credit_paymentrefid` (`paymentrefid`) USING BTREE,
  CONSTRAINT `fk_waterworks_credit_acctid` FOREIGN KEY (`acctid`) REFERENCES `waterworks_account` (`objid`),
  CONSTRAINT `fk_waterworks_credit_paymentrefid` FOREIGN KEY (`paymentrefid`) REFERENCES `waterworks_payment` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for waterworks_itemaccount
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_itemaccount`;
CREATE TABLE `waterworks_itemaccount` (
  `objid` varchar(50) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `sortorder` int(10) DEFAULT NULL,
  `itemtype` varchar(50) DEFAULT NULL,
  `system` int(255) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of waterworks_itemaccount
-- ----------------------------
BEGIN;
INSERT INTO `waterworks_itemaccount` VALUES ('WATER_FEE', 'WATER FEE', 100, 'WATER_FEE', 1);
INSERT INTO `waterworks_itemaccount` VALUES ('WATER_FEE_SURCHARGE', 'WATER SURCHARGE', 300, 'SURCHARGE', 1);
COMMIT;

-- ----------------------------
-- Table structure for waterworks_itemaccount_mapping
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_itemaccount_mapping`;
CREATE TABLE `waterworks_itemaccount_mapping` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(255) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `fund_objid` varchar(50) DEFAULT NULL,
  `fund_title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `fk_waterworks_itemaccount_mapping_parentid` (`parentid`) USING BTREE,
  CONSTRAINT `fk_waterworks_itemaccount_mapping_parentid` FOREIGN KEY (`parentid`) REFERENCES `waterworks_itemaccount` (`objid`)
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
  `currentacctid` varchar(50) DEFAULT NULL,
  `ukey` varchar(50) NOT NULL DEFAULT '',
  `reading` int(255) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  UNIQUE KEY `uix_serialno` (`serialno`,`ukey`) USING BTREE,
  KEY `ix_brand` (`brand`) USING BTREE,
  KEY `ix_sizeid` (`sizeid`) USING BTREE,
  KEY `ix_state` (`state`) USING BTREE,
  KEY `ix_currentacctid` (`currentacctid`) USING BTREE,
  CONSTRAINT `fk_waterworks_meter_currentacctid` FOREIGN KEY (`currentacctid`) REFERENCES `waterworks_account_info` (`objid`),
  CONSTRAINT `fk_waterworks_meter_sizeid` FOREIGN KEY (`sizeid`) REFERENCES `waterworks_metersize` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Table structure for waterworks_payment
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_payment`;
CREATE TABLE `waterworks_payment` (
  `objid` varchar(50) NOT NULL,
  `refno` varchar(50) DEFAULT NULL,
  `reftype` varchar(50) DEFAULT NULL,
  `refid` varchar(50) DEFAULT NULL,
  `refdate` date DEFAULT NULL,
  `discount` decimal(16,2) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `voided` int(11) DEFAULT NULL,
  `txnmode` varchar(50) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `acctid` varchar(50) DEFAULT NULL,
  `billid` varchar(50) DEFAULT NULL,
  `appid` varchar(50) DEFAULT NULL,
  `pmttxntype` varchar(50) DEFAULT NULL,
  `txndate` datetime DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `ix_refid` (`refid`) USING BTREE,
  KEY `ix_refno` (`refno`) USING BTREE,
  KEY `ix_refdate` (`refdate`) USING BTREE,
  KEY `fk_waterworks_payment_acctid` (`acctid`) USING BTREE,
  KEY `fk_waterworks_payment_billid` (`billid`) USING BTREE,
  CONSTRAINT `fk_waterworks_payment_acctid` FOREIGN KEY (`acctid`) REFERENCES `waterworks_account` (`objid`),
  CONSTRAINT `fk_waterworks_payment_billid` FOREIGN KEY (`billid`) REFERENCES `waterworks_bill` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for waterworks_payment_item
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_payment_item`;
CREATE TABLE `waterworks_payment_item` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  `refid` varchar(50) DEFAULT NULL,
  `reftype` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `ix_parentid` (`parentid`) USING BTREE,
  KEY `ix_refid` (`refid`) USING BTREE,
  KEY `ix_reftype` (`reftype`) USING BTREE,
  CONSTRAINT `fk_waterworks_payment_item_parentid` FOREIGN KEY (`parentid`) REFERENCES `waterworks_payment` (`objid`),
  CONSTRAINT `fk_waterworks_payment_item_refid` FOREIGN KEY (`refid`) REFERENCES `waterworks_billitem` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for waterworks_recurringfee
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_recurringfee`;
CREATE TABLE `waterworks_recurringfee` (
  `objid` varchar(50) NOT NULL,
  `acctid` varchar(50) DEFAULT NULL,
  `itemid` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `startyear` int(5) DEFAULT NULL,
  `startmonth` int(5) DEFAULT NULL,
  `amount` decimal(16,2) DEFAULT NULL,
  `amtbilled` decimal(16,2) DEFAULT NULL,
  `system` int(255) DEFAULT NULL,
  `refid` varchar(50) DEFAULT NULL,
  `reftype` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `installmentamount` decimal(16,2) DEFAULT NULL,
  `term` int(10) DEFAULT NULL,
  `particulars` varchar(255) DEFAULT NULL,
  `principal` decimal(16,2) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `fk_waterworks_recurringfee_acctid` (`acctid`) USING BTREE,
  CONSTRAINT `fk_waterworks_recurringfee_acctid` FOREIGN KEY (`acctid`) REFERENCES `waterworks_account` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for waterworks_schedule_group
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_schedule_group`;
CREATE TABLE `waterworks_schedule_group` (
  `objid` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for waterworks_stubout
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_stubout`;
CREATE TABLE `waterworks_stubout` (
  `objid` varchar(50) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `subareaid` varchar(50) NOT NULL,
  `barangay_objid` varchar(50) DEFAULT NULL,
  `barangay_name` varchar(100) DEFAULT NULL,
  `lng` float(255,0) DEFAULT NULL,
  `lat` float(255,0) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `ix_zoneid` (`subareaid`) USING BTREE,
  KEY `ix_barangay_objid` (`barangay_objid`) USING BTREE,
  CONSTRAINT `fk_waterworks_stubout_subareaid` FOREIGN KEY (`subareaid`) REFERENCES `waterworks_subarea` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for waterworks_subarea
-- ----------------------------
DROP TABLE IF EXISTS `waterworks_subarea`;
CREATE TABLE `waterworks_subarea` (
  `objid` varchar(50) NOT NULL,
  `areaid` varchar(50) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `schedulegroupid` varchar(50) NOT NULL,
  `barangay_objid` varchar(50) DEFAULT NULL,
  `barangay_name` varchar(150) DEFAULT NULL,
  `periodid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `fk_waterworks_subarea_areaid` (`areaid`) USING BTREE,
  KEY `fk_waterworks_subarea_nextperiodid_schedulegroupid` (`periodid`,`schedulegroupid`) USING BTREE,
  KEY `fk_waterworks_subarea_schedulegroupid` (`schedulegroupid`) USING BTREE,
  CONSTRAINT `fk_waterworks_subarea_areaid` FOREIGN KEY (`areaid`) REFERENCES `waterworks_area` (`objid`),
  CONSTRAINT `fk_waterworks_subarea_nextperiodid` FOREIGN KEY (`periodid`) REFERENCES `waterworks_billing_period` (`objid`),
  CONSTRAINT `fk_waterworks_subarea_schedulegroupid` FOREIGN KEY (`schedulegroupid`) REFERENCES `waterworks_schedule_group` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- View structure for vw_waterworks_account
-- ----------------------------
DROP VIEW IF EXISTS `vw_waterworks_account`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_waterworks_account` AS select `wa`.`objid` AS `objid`,`wa`.`state` AS `state`,`wa`.`acctno` AS `acctno`,`wa`.`acctinfoid` AS `acctinfoid`,`wa`.`dtstarted` AS `dtstarted`,`wa`.`applicationid` AS `applicationid`,`wa`.`remarks` AS `remarks`,`wa`.`ukey` AS `ukey`,`wa`.`seqno` AS `seqno`,`wa`.`billid` AS `billid`,`ai`.`acctname` AS `acctname`,`ai`.`owner_objid` AS `owner_objid`,`ai`.`owner_name` AS `owner_name`,`ai`.`address_type` AS `address_type`,`ai`.`address_text` AS `address_text`,`ai`.`address_barangay_objid` AS `address_barangay_objid`,`ai`.`address_barangay_name` AS `address_barangay_name`,`ai`.`address_city` AS `address_city`,`ai`.`address_province` AS `address_province`,`ai`.`address_municipality` AS `address_municipality`,`ai`.`address_unitno` AS `address_unitno`,`ai`.`address_street` AS `address_street`,`ai`.`address_subdivision` AS `address_subdivision`,`ai`.`address_bldgno` AS `address_bldgno`,`ai`.`address_bldgname` AS `address_bldgname`,`ai`.`address_pin` AS `address_pin`,`ai`.`stuboutid` AS `stuboutid`,`ai`.`subareaid` AS `subareaid`,`ai`.`meterid` AS `meterid`,`ai`.`classificationid` AS `classificationid`,`ai`.`units` AS `units`,`ai`.`attributes` AS `attributes`,`ai`.`meterstate` AS `meterstate` from ((`waterworks_account` `wa` join `waterworks_account_info` `ai` on((`wa`.`acctinfoid` = `ai`.`objid`))) left join `waterworks_meter` `wm` on((`ai`.`meterid` = `wm`.`objid`)));

-- ----------------------------
-- View structure for vw_waterworks_bill
-- ----------------------------
DROP VIEW IF EXISTS `vw_waterworks_bill`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_waterworks_bill` AS select `wb`.`objid` AS `objid`,`wb`.`billno` AS `billno`,`wb`.`billdate` AS `billdate`,`wb`.`acctid` AS `acctid`,`wb`.`acctinfoid` AS `acctinfoid`,`wb`.`batchid` AS `batchid`,`wb`.`txnmode` AS `txnmode`,`wb`.`periodid` AS `periodid`,`wb`.`expirydate` AS `expirydate`,`wb`.`state` AS `state`,`wb`.`balanceforward` AS `balanceforward`,`wb`.`billed` AS `billed`,`wb`.`billrefno` AS `billrefno`,`wb`.`printed` AS `printed`,`wb`.`remarks` AS `remarks`,`wb`.`createdby_objid` AS `createdby_objid`,`wb`.`createdby_name` AS `createdby_name`,`wb`.`dtcreated` AS `dtcreated`,`wb`.`validitydate` AS `validitydate`,`wb`.`initial` AS `initial`,`wb`.`step` AS `step`,`wb`.`consumptionid` AS `consumptionid`,`wb`.`totalcredits` AS `totalcredits`,`wb`.`totalprevunpaid` AS `totalprevunpaid`,`wb`.`totalbillunpaid` AS `totalbillunpaid`,`wb`.`billamount` AS `billamount`,`wb`.`totalsurcharge` AS `totalsurcharge`,`wb`.`totalpayment` AS `totalpayment`,`wb`.`totaldiscount` AS `totaldiscount`,`a`.`acctno` AS `acctno`,`ai`.`acctname` AS `acctname`,`a`.`state` AS `acctstate`,`a`.`seqno` AS `seqno`,`ai`.`subareaid` AS `subareaid`,`ai`.`address_text` AS `address_text`,`ai`.`classificationid` AS `classificationid`,`ai`.`stuboutid` AS `stuboutid`,`ai`.`meterid` AS `meterid`,`ai`.`meterstate` AS `meterstate`,`sarea`.`code` AS `subarea_code`,`sarea`.`barangay_name` AS `subarea_barangay_name`,`area`.`code` AS `area_code`,`p`.`year` AS `period_year`,`p`.`month` AS `period_month`,`p`.`fromdate` AS `period_fromdate`,`p`.`todate` AS `period_todate`,`p`.`readingdate` AS `period_readingdate`,`p`.`readingenddate` AS `period_readingenddate`,`p`.`billdate` AS `period_billdate`,`p`.`billingenddate` AS `period_billingenddate`,`p`.`discdate` AS `period_discdate`,`p`.`duedate` AS `period_duedate`,`p`.`billexpirydate` AS `period_billexpirydate` from (((((`waterworks_bill` `wb` join `waterworks_account` `a` on((`a`.`objid` = `wb`.`acctid`))) join `waterworks_account_info` `ai` on((`wb`.`acctinfoid` = `ai`.`objid`))) join `waterworks_subarea` `sarea` on((`ai`.`subareaid` = `sarea`.`objid`))) join `waterworks_area` `area` on((`sarea`.`areaid` = `area`.`objid`))) join `waterworks_billing_period` `p` on((`wb`.`periodid` = `p`.`objid`)));

-- ----------------------------
-- View structure for vw_waterworks_bill_consumption
-- ----------------------------
DROP VIEW IF EXISTS `vw_waterworks_bill_consumption`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_waterworks_bill_consumption` AS select `wc`.`objid` AS `objid`,`wc`.`billid` AS `billid`,`wc`.`reading` AS `reading`,`wc`.`volume` AS `volume`,`wc`.`amount` AS `amount`,`wc`.`hold` AS `hold`,`wc`.`reason` AS `reason`,`wc`.`readingdate` AS `readingdate`,`wc`.`reader_objid` AS `reader_objid`,`wc`.`reader_name` AS `reader_name`,`prev`.`reading` AS `prev_reading` from (`waterworks_consumption` `wc` left join `waterworks_consumption` `prev` on(((`prev`.`acctid` = `wc`.`acctid`) and (`prev`.`meterid` = `wc`.`meterid`) and (((`prev`.`year` * 12) + `prev`.`month`) = (((`wc`.`year` * 12) + `wc`.`month`) - 1)))));

-- ----------------------------
-- View structure for vw_waterworks_consumption
-- ----------------------------
DROP VIEW IF EXISTS `vw_waterworks_consumption`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_waterworks_consumption` AS select `wc`.`objid` AS `objid`,`wc`.`acctid` AS `acctid`,`wc`.`meterid` AS `meterid`,`wc`.`year` AS `year`,`wc`.`month` AS `month`,`wc`.`billid` AS `billid`,`wc`.`txnmode` AS `txnmode`,`wc`.`reading` AS `reading`,`wc`.`volume` AS `volume`,`wc`.`amount` AS `amount`,`wc`.`state` AS `state`,`wc`.`hold` AS `hold`,`wc`.`reason` AS `reason`,`wc`.`reader_objid` AS `reader_objid`,`wc`.`reader_name` AS `reader_name`,`wc`.`readingdate` AS `readingdate`,`prev`.`reading` AS `prev_reading`,`prev`.`month` AS `prev_month`,`prev`.`year` AS `prev_year` from (`waterworks_consumption` `wc` left join `waterworks_consumption` `prev` on(((`prev`.`acctid` = `wc`.`acctid`) and (`prev`.`meterid` = `wc`.`meterid`) and (((`prev`.`year` * 12) + `prev`.`month`) = (((`wc`.`year` * 12) + `wc`.`month`) - 1)))));

SET FOREIGN_KEY_CHECKS = 1;
