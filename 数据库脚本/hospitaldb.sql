/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50556
Source Host           : localhost:3306
Source Database       : hospitaldb

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2019-05-16 11:47:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) NOT NULL,
  `upwd` varchar(50) NOT NULL,
  `role` varchar(20) DEFAULT NULL,
  `registerTime` varchar(30) DEFAULT NULL,
  `lastLoginTime` varchar(30) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'zhou1', '96e79218965eb72c92a549dd5a330112', '职员', '2019-05-16 09:17:44', '2019-05-16 09:17:44', 'zhou1@qq.com');
INSERT INTO `tb_user` VALUES ('2', 'zhou2', 'e3ceb5881a0a1fdaad01296d7554868d', '检修员', '2019-05-16 09:17:44', '2019-05-16 09:17:44', 'zhou2@qq.com');
INSERT INTO `tb_user` VALUES ('3', 'zhou3', '1a100d2c0dab19c4430e7d73762b3423', '管理员', '2019-05-16 09:17:44', '2019-05-16 09:17:44', 'zhou3@qq.com');
