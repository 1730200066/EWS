/*
 Navicat Premium Data Transfer

 Source Server         : mysql8.0.16
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : hospitaldb

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 21/05/2019 23:48:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `dname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `section_chief` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `dname`(`dname`) USING BTREE,
  INDEX `sectionchief`(`section_chief`) USING BTREE,
  CONSTRAINT `department_ibfk_1` FOREIGN KEY (`section_chief`) REFERENCES `employee` (`ename`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for device
-- ----------------------------
DROP TABLE IF EXISTS `device`;
CREATE TABLE `device`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `dname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dstatus` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_work_date` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `work_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `supplier` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message_of_repair` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `dname`(`dname`) USING BTREE,
  UNIQUE INDEX `supplier`(`supplier`) USING BTREE,
  UNIQUE INDEX `supplier_2`(`supplier`) USING BTREE,
  CONSTRAINT `device_ibfk_1` FOREIGN KEY (`supplier`) REFERENCES `supplier` (`sname`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ename` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `upwd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `true_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone_number` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date_of_birth` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `department` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uname`(`ename`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `business_licence` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `business_certificate` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sname`(`sname`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
