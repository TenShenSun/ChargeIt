/*
Navicat MySQL Data Transfer

Source Server         : Wx
Source Server Version : 50726
Source Host           : 39.106.82.233:3306
Source Database       : ChargeIt

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-05-03 19:18:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user_category
-- ----------------------------
DROP TABLE IF EXISTS `user_category`;
CREATE TABLE `user_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `yn` tinyint(1) DEFAULT NULL,
  `ts` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_category
-- ----------------------------
INSERT INTO `user_category` VALUES ('2', 'wxid_000003', '9', '0', '2019-05-03 17:45:27', '2019-05-03 17:45:12', '2019-05-03 17:45:27');
INSERT INTO `user_category` VALUES ('3', 'wxid_000001', '10', '0', '2019-05-03 17:45:36', '2019-05-03 17:45:08', '2019-05-03 17:45:36');
INSERT INTO `user_category` VALUES ('4', 'wxid_000001', '9', '0', '2019-05-03 17:48:20', '2019-05-03 17:45:48', '2019-05-03 17:48:18');
SET FOREIGN_KEY_CHECKS=1;
