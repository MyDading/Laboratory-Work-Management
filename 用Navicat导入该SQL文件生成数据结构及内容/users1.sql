/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : users

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 03/07/2019 16:43:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES (1, 'LJZ', '00001');
INSERT INTO `login` VALUES (2, 'LYD', '00002');
INSERT INTO `login` VALUES (3, 'HWG', '00003');
INSERT INTO `login` VALUES (4, 'LD', '00004');
INSERT INTO `login` VALUES (5, 'HXR', '00005');
INSERT INTO `login` VALUES (6, 'CHH', '00006');
INSERT INTO `login` VALUES (7, 'LX', '00007');
INSERT INTO `login` VALUES (8, '陈远宏', '00008');
INSERT INTO `login` VALUES (9, '王尼玛', '0100');
INSERT INTO `login` VALUES (10, '张全蛋', '10086');
INSERT INTO `login` VALUES (11, '木子', '00010');
INSERT INTO `login` VALUES (12, '荆轲', '00012');
INSERT INTO `login` VALUES (13, '张三', '10086');

-- ----------------------------
-- Table structure for login_message
-- ----------------------------
DROP TABLE IF EXISTS `login_message`;
CREATE TABLE `login_message`  (
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login_message
-- ----------------------------
INSERT INTO `login_message` VALUES ('00001', 'LJZ', '00001');
INSERT INTO `login_message` VALUES ('00002', 'LYD', '00002');
INSERT INTO `login_message` VALUES ('00003', 'HWG', '00003');
INSERT INTO `login_message` VALUES ('00004', 'LD', '00004');
INSERT INTO `login_message` VALUES ('00005', 'HXR', '00005');
INSERT INTO `login_message` VALUES ('00006', 'CHH', '00006');
INSERT INTO `login_message` VALUES ('00007', 'LX', '00007');
INSERT INTO `login_message` VALUES ('00008', '陈远宏', '00008');

-- ----------------------------
-- Table structure for user_message
-- ----------------------------
DROP TABLE IF EXISTS `user_message`;
CREATE TABLE `user_message`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `branch` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `other` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  CONSTRAINT `user_message_ibfk_1` FOREIGN KEY (`id`) REFERENCES `login_message` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_message
-- ----------------------------
INSERT INTO `user_message` VALUES ('00001', 'LJZ', 'INNOLUX', '81823', 'SET', NULL);
INSERT INTO `user_message` VALUES ('00002', 'LYD', 'INNOLUX', '87541', 'SET', NULL);
INSERT INTO `user_message` VALUES ('00003', 'HWG', 'INNOLUX', '82112', 'SET', NULL);
INSERT INTO `user_message` VALUES ('00004', 'LD', 'INNOLUX', '82134', 'SET', NULL);
INSERT INTO `user_message` VALUES ('00005', 'HXR', 'INNOLUX', '80783', 'SET', NULL);
INSERT INTO `user_message` VALUES ('00006', 'CHH', 'INNOLUX', '81705', 'SET', NULL);

SET FOREIGN_KEY_CHECKS = 1;
