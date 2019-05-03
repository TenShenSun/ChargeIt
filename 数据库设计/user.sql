/*
Navicat MySQL Data Transfer

Source Server         : Wx
Source Server Version : 50726
Source Host           : 39.106.82.233:3306
Source Database       : ChargeIt

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-05-03 19:19:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `yn` tinyint(1) DEFAULT NULL,
  `ts` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('wxid_000001', '狗娃子', '0', '2019-05-03 17:15:16', '2019-05-03 16:51:39', '2019-05-03 17:15:16');
INSERT INTO `user` VALUES ('wxid_000002', '大憨子', '0', '2019-05-03 17:16:36', '2019-05-03 17:15:44', '2019-05-03 17:16:36');
INSERT INTO `user` VALUES ('wxid_000003', '二愣子', '0', '2019-05-03 17:29:50', '2019-05-03 17:28:46', '2019-05-03 17:29:50');
INSERT INTO `user` VALUES ('wxid_000004', '三傻子', '0', '2019-05-03 17:29:51', '2019-05-03 17:28:49', '2019-05-03 17:29:51');
INSERT INTO `user` VALUES ('wxid_000005', '四瘸子', '0', '2019-05-03 17:29:51', '2019-05-03 17:28:52', '2019-05-03 17:29:51');
INSERT INTO `user` VALUES ('wxid_000006', '五瞎子', '0', '2019-05-03 17:30:24', '2019-05-31 17:29:03', '2019-05-03 17:30:24');
SET FOREIGN_KEY_CHECKS=1;
