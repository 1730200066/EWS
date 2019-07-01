/*
 Navicat Premium Data Transfer

 Source Server         : mysql3306
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : hospital

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 25/06/2019 14:40:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_agency
-- ----------------------------
DROP TABLE IF EXISTS `t_agency`;
CREATE TABLE `t_agency`  (
  `t_agency_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `t_license` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_permit_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_agency_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`t_agency_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_agency
-- ----------------------------
INSERT INTO `t_agency` VALUES ('1', '3333', '222', '北京新希望健康仪器公司');
INSERT INTO `t_agency` VALUES ('2', '777', '66', '上海仪器器械管理公司');
INSERT INTO `t_agency` VALUES ('3', '34323', '432', '天津宏达器械公司');
INSERT INTO `t_agency` VALUES ('4', '222', '111', '天津健康体检仪器公司');

-- ----------------------------
-- Table structure for t_attenchment
-- ----------------------------
DROP TABLE IF EXISTS `t_attenchment`;
CREATE TABLE `t_attenchment`  (
  `t_attid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `t_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_attname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_atturl` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`t_attid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_attenchment
-- ----------------------------
INSERT INTO `t_attenchment` VALUES ('46c51437-7a9c-4cea-bf92-706fd7ceabad', '8ed2d6d6-0698-40b1-8e85-a495d9d7fb13', '设备导入模板.xlsx', 'fujian', '/hospital/uploadFile\\');
INSERT INTO `t_attenchment` VALUES ('4a7491df-e371-426c-b32f-c3d582733247', '51662e65-99bf-40d0-a5c4-2d435f11f152', 'google.jpg', 'headicon', '/hospital/uploadFile\\');
INSERT INTO `t_attenchment` VALUES ('6e598a2c-c593-4a36-949c-3fa9fb6f31ec', '268f0018-36e1-4a4f-aad8-ce810932c3e5', '01300543111029143262054331837_s.jpg', 'shebei', '/hospital/uploadFile\\');
INSERT INTO `t_attenchment` VALUES ('8d35d905-0995-418e-973c-e696ca2aacdc', '8ed2d6d6-0698-40b1-8e85-a495d9d7fb13', 'ocp 5-19.docx', 'fujian', '/hospital/uploadFile\\');
INSERT INTO `t_attenchment` VALUES ('e60bc4b7-33e4-417b-bac1-93a9944e9e3a', '42855f07-b499-465d-8c40-49c702a32319', '', 'headicon', '/hospital/uploadFile\\');

-- ----------------------------
-- Table structure for t_device
-- ----------------------------
DROP TABLE IF EXISTS `t_device`;
CREATE TABLE `t_device`  (
  `t_equip_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `t_agency_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_dic_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_device_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_dtype` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_factory` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_dnumber` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_buy_date` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_check_date` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_sid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_left_day` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_check_circle` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`t_equip_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_device
-- ----------------------------
INSERT INTO `t_device` VALUES ('1', '1', '75332473-cf66-4245-8882-85fa5bf75628', '电脑', NULL, NULL, '2', '2017-05-10', '2017-05-20', NULL, NULL, '30');
INSERT INTO `t_device` VALUES ('10', '1', '3970fba9-fa82-4de6-b964-5c87ad5aaf6d', '显微镜', NULL, NULL, '6', '2015-11-11', '2017-05-26', NULL, NULL, '10');
INSERT INTO `t_device` VALUES ('11', '1', '4', '呼吸机', NULL, NULL, '3', '2017-05-11', '2017-05-21', NULL, NULL, '7');
INSERT INTO `t_device` VALUES ('12', '1', '3970fba9-fa82-4de6-b964-5c87ad5aaf6d', '骨科牵引架', NULL, NULL, '8', '2016-07-21', '2017-05-26', NULL, NULL, '15');
INSERT INTO `t_device` VALUES ('13', '1', '7', '骨盆测量器', NULL, NULL, '10', '2016-05-26', '2017-05-26', NULL, NULL, '28');
INSERT INTO `t_device` VALUES ('14', '2', '6', '五官科工作台', NULL, NULL, '7', '2017-03-11', '2017-05-23', NULL, NULL, '7');
INSERT INTO `t_device` VALUES ('15', '3', '3970fba9-fa82-4de6-b964-5c87ad5aaf6d', '磨钻', NULL, NULL, '9', '2015-11-12', '2017-05-26', NULL, NULL, '18');
INSERT INTO `t_device` VALUES ('16', '3', '6', '耳鼻喉科诊疗台', NULL, NULL, '7', '2016-09-07', '2017-05-18', NULL, NULL, '15');
INSERT INTO `t_device` VALUES ('17', '4', '4', '心电图仪器', NULL, NULL, '3', '2016-07-06', '2017-05-21', NULL, NULL, '15');
INSERT INTO `t_device` VALUES ('18', '2', '7', '腹腔镜', NULL, NULL, '8', '2017-03-08', '2017-05-26', NULL, NULL, '16');
INSERT INTO `t_device` VALUES ('19', '4', '6', '听觉脑干诱发电位仪', NULL, NULL, '5', '2016-11-24', '2017-05-21', NULL, NULL, '7');
INSERT INTO `t_device` VALUES ('2', '2', '4', '临时起搏器', NULL, NULL, '5', '2017-01-04', '2017-05-26', NULL, NULL, '15');
INSERT INTO `t_device` VALUES ('20', '2', '3970fba9-fa82-4de6-b964-5c87ad5aaf6d', 'C臂', NULL, NULL, '7', '2017-05-17', '2017-05-26', NULL, NULL, '18');
INSERT INTO `t_device` VALUES ('21', '1', '7', '碎颅器', NULL, NULL, '6', '2016-04-06', '2017-05-26', NULL, NULL, '18');
INSERT INTO `t_device` VALUES ('22', '1', '5', '心电图仪器', NULL, NULL, '3', '2017-03-18', '2017-05-21', NULL, NULL, '15');
INSERT INTO `t_device` VALUES ('23', '2', '6', '纯音测听仪', NULL, NULL, '3', '2016-09-16', '2017-05-26', NULL, NULL, '20');
INSERT INTO `t_device` VALUES ('24', '2', '7', 'BBT自凝刀', NULL, NULL, '10', '2016-08-03', '2017-05-26', NULL, NULL, '27');
INSERT INTO `t_device` VALUES ('25', '2', '6', '声导抗设备', NULL, NULL, '5', '2016-12-15', '2017-05-20', NULL, NULL, '15');
INSERT INTO `t_device` VALUES ('26', '4', '7', '宫腔镜', NULL, NULL, '6', '2017-04-18', '2017-05-26', NULL, NULL, '25');
INSERT INTO `t_device` VALUES ('27', '3', '4', '心电监护仪', NULL, NULL, '3', '2017-05-04', '2017-05-23', NULL, NULL, '7');
INSERT INTO `t_device` VALUES ('28', '3', '4', '心脏彩超仪', NULL, NULL, '3', '2015-05-07', '2017-05-18', NULL, NULL, '15');
INSERT INTO `t_device` VALUES ('29', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `t_device` VALUES ('3', '1', '75332473-cf66-4245-8882-85fa5bf75628', '打印机', NULL, NULL, '1', '2017-05-13', '2017-05-20', NULL, NULL, '30');
INSERT INTO `t_device` VALUES ('4', '1', '7', '阿波罗低频共振', NULL, NULL, '10', '2017-02-23', '2017-05-26', NULL, NULL, '27');
INSERT INTO `t_device` VALUES ('5', '1', '7', '体外电场治疗仪', NULL, NULL, '10', '2016-06-22', '2017-05-26', NULL, NULL, '30');
INSERT INTO `t_device` VALUES ('6', '2', '5', '动脉造影', NULL, NULL, '15', '2016-05-12', '2017-05-26', NULL, NULL, '20');
INSERT INTO `t_device` VALUES ('7', '3', '3970fba9-fa82-4de6-b964-5c87ad5aaf6d', '电刀', NULL, NULL, '7', '2015-11-25', '2017-05-26', NULL, NULL, '15');
INSERT INTO `t_device` VALUES ('8', '3', '4', '临时起搏器', NULL, NULL, '5', '2017-03-08', '2017-05-20', NULL, NULL, '7');
INSERT INTO `t_device` VALUES ('9', '4', '4', '除颤仪', NULL, NULL, '7', '2017-05-04', '2017-05-26', NULL, NULL, '30');

-- ----------------------------
-- Table structure for t_dic_code
-- ----------------------------
DROP TABLE IF EXISTS `t_dic_code`;
CREATE TABLE `t_dic_code`  (
  `t_dic_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `t_dic_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`t_dic_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_dic_code
-- ----------------------------
INSERT INTO `t_dic_code` VALUES ('1111', '1', '管理员', '权限');
INSERT INTO `t_dic_code` VALUES ('222', '2', '操作员', '权限');
INSERT INTO `t_dic_code` VALUES ('2447ce18-f83c-43aa-8614-53a7cb7fc319', 'abfa598e-4efa-457e-8756-1153c553595f', '超级管理员', '权限');
INSERT INTO `t_dic_code` VALUES ('333', '3', '维护人员', '权限');
INSERT INTO `t_dic_code` VALUES ('3446e3c8-04ba-4c45-893d-469d44da1adb', '8c2bfe38-3e9f-465a-9d7d-ea62d9a7c21d', '测试类型 5', '测试类型');
INSERT INTO `t_dic_code` VALUES ('3f62a5b4-eca1-4abd-ae14-f9fa532fe3e4', '3f62a5b4-eca1-4abd-ae14-f9fa532fe3e4', '北京新希望健康仪器公司', '供应商');
INSERT INTO `t_dic_code` VALUES ('4444', '4', '内科', '科室');
INSERT INTO `t_dic_code` VALUES ('5555', '5', '心肺科', '科室');
INSERT INTO `t_dic_code` VALUES ('6666', '6', '耳鼻喉科', '科室');
INSERT INTO `t_dic_code` VALUES ('777', '7', '妇科', '科室');
INSERT INTO `t_dic_code` VALUES ('79b423bf-2935-4c54-b37c-72c43d84fab8', '4b3e072d-386e-4f4c-b080-290b5c8610ab', '我的数据', '我的类型');
INSERT INTO `t_dic_code` VALUES ('806ea705-8337-4a25-a773-c2e5d14f2b99', '9509556b-399d-402c-9569-ba0009cf060c', '测试类型 9', '测试类型');
INSERT INTO `t_dic_code` VALUES ('821d0708-fc80-4d73-acd0-3b398453e55f', 'a371e023-2690-42ef-95b6-759d76f388b9', '测试类型 1', '测试类型');
INSERT INTO `t_dic_code` VALUES ('85c91114-4b96-4b92-9de3-b541c3ddbd87', '2f80513a-a845-4f44-8371-996abcb984f5', '测试类型 3', '测试类型');
INSERT INTO `t_dic_code` VALUES ('8ed2d6d6-0698-40b1-8e85-a495d9d7fb13', '8ed2d6d6-0698-40b1-8e85-a495d9d7fb13', '上海仪器器械管理公司', '供应商');
INSERT INTO `t_dic_code` VALUES ('9b605fd4-1417-4ccc-9c32-33202abc66e7', '9b605fd4-1417-4ccc-9c32-33202abc66e7', '天津宏达器械公司', '供应商');
INSERT INTO `t_dic_code` VALUES ('9da04847-9ed2-4439-a0b3-fbc773474210', '756d2b65-0394-48f6-94a7-042c173245d4', '测试类型 4', '测试类型');
INSERT INTO `t_dic_code` VALUES ('a9cb2d0f-3da8-404b-92ca-9f703a1d4617', 'a9cb2d0f-3da8-404b-92ca-9f703a1d4617', '天津健康体检仪器公司', '供应商');
INSERT INTO `t_dic_code` VALUES ('c298af35-2f75-4d89-8b4a-25e114b8ece5', 'f9b048c1-da02-426e-9ff1-ea5e90882638', '测试类型 7', '测试类型');
INSERT INTO `t_dic_code` VALUES ('c32c6226-1455-4e5b-a89b-a4982eee00b7', 'bca95675-caa8-4c03-87f8-a7c5a4af57b0', '测试类型 13', '测试类型');
INSERT INTO `t_dic_code` VALUES ('c7f5e962-a349-4243-95c6-036e8013fb47', '3f6d87fd-0323-4e53-9e59-88fedac8f977', '测试类型 12', '测试类型');
INSERT INTO `t_dic_code` VALUES ('c8a0e175-20c3-4716-a9df-beddd3447a17', '3970fba9-fa82-4de6-b964-5c87ad5aaf6d', '骨科', '科室');
INSERT INTO `t_dic_code` VALUES ('c9dfd4f8-02e2-43cd-8d2d-cf7fb0e35eba', 'ecfa3a4d-0794-4cc9-a759-8efbe2c8f021', '测试类型 8', '测试类型');
INSERT INTO `t_dic_code` VALUES ('cc5caa47-5957-47f6-ad56-2da3c210fc2f', '2ac898d7-e1ff-4980-8cb7-f9699867cabe', '测试类型 11', '测试类型');
INSERT INTO `t_dic_code` VALUES ('df3de294-240e-4f5c-9603-dd160b58b73c', 'ad98e196-e420-464c-94f1-3945c1d5567a', '测试类型 10', '测试类型');
INSERT INTO `t_dic_code` VALUES ('f363145d-9e34-4706-8151-fc737581c416', 'ab73d9c7-fb90-423d-a453-97fb335880e7', '测试类型 2', '测试类型');
INSERT INTO `t_dic_code` VALUES ('f422d023-5441-41a0-8930-5f92c257ff19', '12161188-ad5f-4ee2-9b82-c4f699e9a260', '测试类型 6', '测试类型');
INSERT INTO `t_dic_code` VALUES ('fc5cf596-cb4d-4be0-84b4-0e3815dc1c00', '75332473-cf66-4245-8882-85fa5bf75628', '财务科', '科室');

-- ----------------------------
-- Table structure for t_equip_log
-- ----------------------------
DROP TABLE IF EXISTS `t_equip_log`;
CREATE TABLE `t_equip_log`  (
  `t_log_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_equip_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_log_addTime` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_fix_content` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`t_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_equip_log
-- ----------------------------
INSERT INTO `t_equip_log` VALUES ('1', '1', 'fd11f955-178c-4926-ad60-6f7f0451acfb', '2017-05-23', '维修成功');
INSERT INTO `t_equip_log` VALUES ('10', '086aa83e-93fc-4d96-8258-edfa49647a4d', '707fd145-56d9-4351-ab4d-ac9b4d43ddeb', '2017-05-21', '维修成功');
INSERT INTO `t_equip_log` VALUES ('11', '086aa83e-93fc-4d96-8258-edfa49647a4d', 'fef26d12-ed52-44c3-9186-e8334605eae2', '2017-05-18', '维修成功');
INSERT INTO `t_equip_log` VALUES ('2', '086aa83e-93fc-4d96-8258-edfa49647a4d', '8b5f1b13-46cb-40ff-9dd5-81c6904bec8c', '2017-05-23', '维修成功');
INSERT INTO `t_equip_log` VALUES ('3', '086aa83e-93fc-4d96-8258-edfa49647a4d', '97832a50-7a6f-437a-b614-75460a3e60d1', '2017-05-18', '维修成功');
INSERT INTO `t_equip_log` VALUES ('4', '086aa83e-93fc-4d96-8258-edfa49647a4d', 'f61b78dc-496d-450f-8bff-a0747e8c3db9', '2017-05-20', '维修成功');
INSERT INTO `t_equip_log` VALUES ('5', '086aa83e-93fc-4d96-8258-edfa49647a4d', 'c168eea6-72d0-4b75-9530-a9c8977fd180', '2017-05-21', '维修成功');
INSERT INTO `t_equip_log` VALUES ('6', '086aa83e-93fc-4d96-8258-edfa49647a4d', 'ecea62b9-ed70-43f4-8ed6-4e7d36d330af', '2017-05-21', '维修成功');
INSERT INTO `t_equip_log` VALUES ('7', '086aa83e-93fc-4d96-8258-edfa49647a4d', '0ee88724-8b97-47d0-bf0d-0c3ae0bc545d', '2017-05-20', '');
INSERT INTO `t_equip_log` VALUES ('8', '086aa83e-93fc-4d96-8258-edfa49647a4d', '3743f0bf-429f-45fc-9ce0-10dac858c585', '2017-05-20', '呵呵呵');
INSERT INTO `t_equip_log` VALUES ('9', '086aa83e-93fc-4d96-8258-edfa49647a4d', '086d0972-45af-49ec-a65d-aee0939e20e5', '2017-05-20', '');

-- ----------------------------
-- Table structure for t_person
-- ----------------------------
DROP TABLE IF EXISTS `t_person`;
CREATE TABLE `t_person`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `t_user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_dic_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_cname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_person
-- ----------------------------
INSERT INTO `t_person` VALUES ('1', '1', '4', '男', '135498382232', 'zhao@163.com', '赵小明');
INSERT INTO `t_person` VALUES ('4', '4', '5', '男', '13233454565', 'hanwang@163.com', '王先生');

-- ----------------------------
-- Table structure for t_sys_user
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user`;
CREATE TABLE `t_sys_user`  (
  `t_user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `t_user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_user_pwd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_role` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`t_user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sys_user
-- ----------------------------
INSERT INTO `t_sys_user` VALUES (1, 'haha', '12345678', '3', '1', NULL);
INSERT INTO `t_sys_user` VALUES (2, 'yangyanmeng', 'yangyanmeng', '1', '1', NULL);
INSERT INTO `t_sys_user` VALUES (3, 'haha3', '00000000', '3', '1', NULL);
INSERT INTO `t_sys_user` VALUES (4, 'xiaowang', 'xiaowang', '2', '1', NULL);
INSERT INTO `t_sys_user` VALUES (5, 'zhaopengxiang', 'zhaopengxiang', '1', '1', NULL);
INSERT INTO `t_sys_user` VALUES (6, 'admin', 'admin', '1', '1', NULL);
INSERT INTO `t_sys_user` VALUES (7, 'caozuo', '123', '3', '1', NULL);
INSERT INTO `t_sys_user` VALUES (8, 'zhouziwu1', 'zhouziwu', '3', NULL, NULL);

-- ----------------------------
-- Table structure for testtb
-- ----------------------------
DROP TABLE IF EXISTS `testtb`;
CREATE TABLE `testtb`  (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of testtb
-- ----------------------------
INSERT INTO `testtb` VALUES (1, 'bb', 13);

SET FOREIGN_KEY_CHECKS = 1;
