/*
Navicat MySQL Data Transfer

Source Server         : stadium
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : stadium

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-01-02 18:38:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for badminton
-- ----------------------------
DROP TABLE IF EXISTS `badminton`;
CREATE TABLE `badminton` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `area` varchar(255) NOT NULL,
  `price` float(255,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of badminton
-- ----------------------------
INSERT INTO `badminton` VALUES ('1', 'A2-101羽毛球馆', '35平方米', '58');
INSERT INTO `badminton` VALUES ('2', 'A2-102羽毛球馆', '45平方米', '69');
INSERT INTO `badminton` VALUES ('3', 'A2-103羽毛球馆', '48平方米', '75');
INSERT INTO `badminton` VALUES ('4', 'A2-104羽毛球馆', '28平方米', '35');
INSERT INTO `badminton` VALUES ('5', 'A2-107羽毛球馆', '34平方米', '45');
INSERT INTO `badminton` VALUES ('6', 'A2-201羽毛球馆', '46平方米', '50');

-- ----------------------------
-- Table structure for basketball
-- ----------------------------
DROP TABLE IF EXISTS `basketball`;
CREATE TABLE `basketball` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `area` varchar(255) NOT NULL,
  `price` float(255,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of basketball
-- ----------------------------
INSERT INTO `basketball` VALUES ('1', 'A1篮球场', '56平方米', '56');
INSERT INTO `basketball` VALUES ('2', 'A3篮球场', '45平方米', '34');
INSERT INTO `basketball` VALUES ('3', 'A11篮球场', '57平方米', '58');
INSERT INTO `basketball` VALUES ('4', 'A9篮球场', '36平方米', '28');
INSERT INTO `basketball` VALUES ('5', 'A6篮球场', '37平方米', '29');

-- ----------------------------
-- Table structure for football
-- ----------------------------
DROP TABLE IF EXISTS `football`;
CREATE TABLE `football` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `area` varchar(255) NOT NULL,
  `price` float(255,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of football
-- ----------------------------
INSERT INTO `football` VALUES ('1', 'A1足球场', '67平方米', '67');
INSERT INTO `football` VALUES ('2', 'A3足球场', '45平方米', '45');
INSERT INTO `football` VALUES ('3', 'A6足球场', '56平方米', '56');
INSERT INTO `football` VALUES ('4', 'A10足球场', '47平方米', '49');
INSERT INTO `football` VALUES ('5', 'A11足球场', '36平方米', '39');

-- ----------------------------
-- Table structure for gymnasium
-- ----------------------------
DROP TABLE IF EXISTS `gymnasium`;
CREATE TABLE `gymnasium` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `area` varchar(255) NOT NULL,
  `price` float(255,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of gymnasium
-- ----------------------------
INSERT INTO `gymnasium` VALUES ('1', 'A3-103健身房', '35平方米', '56');
INSERT INTO `gymnasium` VALUES ('2', 'A3-109健身房', '45平方米', '78');
INSERT INTO `gymnasium` VALUES ('3', 'A7-205健身房', '38平方米', '56');
INSERT INTO `gymnasium` VALUES ('4', 'A10-109健身房', '48平方米', '80');
INSERT INTO `gymnasium` VALUES ('5', 'A2-309健身房', '56平方米', '100');

-- ----------------------------
-- Table structure for questionnaire
-- ----------------------------
DROP TABLE IF EXISTS `questionnaire`;
CREATE TABLE `questionnaire` (
  `qid` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `ServiceAttitude` varchar(255) NOT NULL,
  `facilityManagement` varchar(255) NOT NULL,
  `priceSuggestion` varchar(255) NOT NULL,
  `suggestion` varchar(255) NOT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of questionnaire
-- ----------------------------
INSERT INTO `questionnaire` VALUES ('1', '张三', '老师和管理员非常热心', '器材良好', '价格偏高', '价格适当降低适合学生需要');
INSERT INTO `questionnaire` VALUES ('2', '李四', '服务还不错', '器材少了点，有些陈旧', '价格适中', '建议器材更换或维修，并多准备器材');
INSERT INTO `questionnaire` VALUES ('3', '王五', '服务一般', '器材也一般', '价格偏高', '建议价格跟实际质量定标准');
INSERT INTO `questionnaire` VALUES ('4', '??', '????', '??????????', '??????????', '?????????');

-- ----------------------------
-- Table structure for stadium
-- ----------------------------
DROP TABLE IF EXISTS `stadium`;
CREATE TABLE `stadium` (
  `id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `price` float(255,0) DEFAULT NULL,
  `photoPath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of stadium
-- ----------------------------
INSERT INTO `stadium` VALUES ('12', '哈哈', '12', '12', '12', 'jpg');
INSERT INTO `stadium` VALUES ('13', '哈哈', '13', '13', '13', 'jpg');
INSERT INTO `stadium` VALUES ('15', '???', '36', '78', '34', 'jpg');
INSERT INTO `stadium` VALUES ('2', '足球场', '7点到9点', '38平方米', '48', null);
INSERT INTO `stadium` VALUES ('20', 'football', '78', '67', '78', null);
INSERT INTO `stadium` VALUES ('3', '羽毛球馆', '10点到11点', '56平方米', '59', null);
INSERT INTO `stadium` VALUES ('4', '健身房', '20点到21点', '76平方米', '78', null);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` int(255) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_age` varchar(255) NOT NULL,
  `user_sex` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '小红', '123', '22', '女', '张三@qq.com');
INSERT INTO `t_user` VALUES ('6', 'xiaoqiang', '12', '23', '?', 'xiaoqiang@qq.com');
