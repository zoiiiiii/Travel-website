/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : travel

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 22/09/2020 13:18:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '姓名',
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of admin
-- ----------------------------
BEGIN;
INSERT INTO `admin` VALUES ('1088810619659923456', 'admin', '$2a$10$a98.0TPYq4E.Gfo5FKlaMOj7vbb7hMcoLaF3u5Wd5Wr3X7Bld5d8a');
COMMIT;

-- ----------------------------
-- Table structure for carousel
-- ----------------------------
DROP TABLE IF EXISTS `carousel`;
CREATE TABLE `carousel` (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '标题',
  `comment` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '内容',
  `scenictime` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of carousel
-- ----------------------------
BEGIN;
INSERT INTO `carousel` VALUES ('1091587235217711104', 'By figure 1', 'Welcome to my graduation travel website', 'Have a nice trip');
INSERT INTO `carousel` VALUES ('1091595724371566592', 'By figure 2', 'Welcome to my graduation travel website', 'Have a nice trip');
INSERT INTO `carousel` VALUES ('1238372442030325760', 'By figure 3', 'Welcome to my graduation travel website', 'Have a nice trip');
COMMIT;

-- ----------------------------
-- Table structure for gallery
-- ----------------------------
DROP TABLE IF EXISTS `gallery`;
CREATE TABLE `gallery` (
  `id` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `img` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '图片',
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '标题',
  `comment` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '内容',
  `city` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '城市国家',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of gallery
-- ----------------------------
BEGIN;
INSERT INTO `gallery` VALUES ('1091999987228794880', 'https://zerolvyou.oss-cn-beijing.aliyuncs.com/img/2020-04-04/timg%20%281%29.jpeg', 'Aurora', '', NULL);
INSERT INTO `gallery` VALUES ('1092001865903693824', 'https://zerolvyou.oss-cn-beijing.aliyuncs.com/img/2020-04-04/timg%20%282%29.jpeg', 'Plain\nPlain', '', NULL);
INSERT INTO `gallery` VALUES ('1092017136898990080', 'https://zerolvyou.oss-cn-beijing.aliyuncs.com/img/2020-04-04/timg.jpeg', 'Lceland', '', NULL);
INSERT INTO `gallery` VALUES ('1092017173414600704', 'https://zerolvyou.oss-cn-beijing.aliyuncs.com/img/2020-04-04/timg%20%284%29.jpeg', 'Maple leaf', '', NULL);
INSERT INTO `gallery` VALUES ('1092017188929331200', 'https://zerolvyou.oss-cn-beijing.aliyuncs.com/img/2020-04-04/timg%20%285%29.jpeg', 'Lceland', '', NULL);
INSERT INTO `gallery` VALUES ('1092017201700986880', 'https://zerolvyou.oss-cn-beijing.aliyuncs.com/img/2020-04-04/%E6%97%A5%E6%9C%AC.jpeg', 'Japan', '', NULL);
INSERT INTO `gallery` VALUES ('1092017213319208960', 'https://zerolvyou.oss-cn-beijing.aliyuncs.com/img/2020-04-04/timg%20%283%29.jpeg', 'Glacier', '', NULL);
COMMIT;

-- ----------------------------
-- Table structure for hotel
-- ----------------------------
DROP TABLE IF EXISTS `hotel`;
CREATE TABLE `hotel` (
  `id` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '图片',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '酒店名称',
  `price` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `miaoshu` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '描述',
  `bed` int(10) DEFAULT NULL COMMENT '床数',
  `day` int(10) DEFAULT '1' COMMENT '天数',
  `star` int(10) DEFAULT '0' COMMENT '评论星',
  `startdate` datetime DEFAULT NULL COMMENT '入住时间',
  `addr` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '酒店城市',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of hotel
-- ----------------------------
BEGIN;
INSERT INTO `hotel` VALUES ('1246445713762086912', 'https://zerolvyou.oss-cn-beijing.aliyuncs.com/img/2020-04-04/bd5a4429fce54c2ba3e2f2675ceacabc-法属瓜德罗普岛酒店.jpg', '法属瓜德罗普岛酒店', 99.00, '', 64, NULL, NULL, NULL, '法属瓜德罗普岛酒店');
INSERT INTO `hotel` VALUES ('1246449289876008960', 'https://zerolvyou.oss-cn-beijing.aliyuncs.com/img/2020-04-04/8c0f3c6bc9e44ed7a801993b75d91761-布尔吉·阿勒阿拉伯酒店.jpeg', '阿拉伯塔酒店', 999.00, 'null', 0, NULL, NULL, NULL, '阿拉伯塔酒店');
INSERT INTO `hotel` VALUES ('1246449382930837504', 'https://zerolvyou.oss-cn-beijing.aliyuncs.com/img/2020-04-04/3ff17c64e9bf4bc7a89257a7123f4986-弗雷格特岛酒店.jpg', '弗雷格特岛酒店', 462.00, '', 125, NULL, NULL, NULL, '弗雷格特岛酒店');
INSERT INTO `hotel` VALUES ('1246449457958547456', 'https://zerolvyou.oss-cn-beijing.aliyuncs.com/img/2020-04-04/f0b2060d64c540139f74604e867983e8-龟岛酒店.jpeg', '龟岛酒店', 234.00, '', 61, NULL, NULL, NULL, '龟岛酒店');
INSERT INTO `hotel` VALUES ('1246449617958662144', 'https://zerolvyou.oss-cn-beijing.aliyuncs.com/img/2020-04-04/4571f7efac7b462f959a3ce831bda8e2-胡卡顶级度假庄园.jpg', '胡卡顶级度假庄园', 235.00, '', 15, NULL, NULL, NULL, '胡卡顶级度假庄园');
INSERT INTO `hotel` VALUES ('1246449708605960192', 'https://zerolvyou.oss-cn-beijing.aliyuncs.com/img/2020-04-04/a3ae69d2ef36493d896f93dc75d8015e-米高梅大酒店.jpeg', '米高梅大酒店', 123.00, '', 423, NULL, NULL, NULL, '米高梅大酒店');
INSERT INTO `hotel` VALUES ('1246449843343781888', 'https://zerolvyou.oss-cn-beijing.aliyuncs.com/img/2020-04-04/cddc61714ac94f3995a027cb4a3a2bf1-塞舌尔北岛酒店.jpeg', '塞舌尔北岛酒店', 236.00, '', 41, NULL, NULL, NULL, '塞舌尔北岛酒店');
INSERT INTO `hotel` VALUES ('1246449958624227328', 'https://zerolvyou.oss-cn-beijing.aliyuncs.com/img/2020-04-04/015d8f3b9f9049b1af2e7d85e7cc75dd-小棕榈岛酒店.jpeg', '小棕榈岛酒店', 145.00, '', 613, NULL, NULL, NULL, '小棕榈岛酒店');
INSERT INTO `hotel` VALUES ('1246450077620826112', 'https://zerolvyou.oss-cn-beijing.aliyuncs.com/img/2020-04-04/06f042fea8404baaa4abd3c94f8962e1-辛吉塔私人动物保护区.jpg', '辛吉塔私人动物保护区', 341.00, '', 36, NULL, NULL, NULL, '辛吉塔私人动物保护区');
COMMIT;

-- ----------------------------
-- Table structure for hotel_orders
-- ----------------------------
DROP TABLE IF EXISTS `hotel_orders`;
CREATE TABLE `hotel_orders` (
  `id` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'id',
  `scenicid` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '商品id',
  `userid` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '用户id',
  `qty` int(11) DEFAULT NULL COMMENT '数量',
  `payment` decimal(10,2) DEFAULT NULL COMMENT '总支付金额',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '状态',
  `paytime` datetime DEFAULT NULL COMMENT '支付时间',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '电话',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `scenicname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `begin` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '入住时间',
  `end` varchar(2255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '离开时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of hotel_orders
-- ----------------------------
BEGIN;
INSERT INTO `hotel_orders` VALUES ('1246612014921003008', '1246449289876008960', '1246611543674171392', 1, 146.00, '0', '2020-04-05 01:33:59', '18950200096', '小周周', '阿拉伯塔酒店', '2021-04-15', '275760-04-23');
INSERT INTO `hotel_orders` VALUES ('1247457943811100672', '1246617809792380928', '1247457523965464576', 1, 99.00, '0', '2020-04-07 09:35:25', '18950200096', 'KZero', '香格里拉酒店', '2020-04-29', '2020-04-30');
INSERT INTO `hotel_orders` VALUES ('1247811002068180992', '1246449457958547456', '1247457523965464576', 1, 234.00, '0', '2020-04-08 08:58:20', '18950200096', 'KZero', '龟岛酒店', '2020-04-30', '2020-05-02');
INSERT INTO `hotel_orders` VALUES ('1256101357913980928', '1246449708605960192', '1248264622890876928', 1, 123.00, '0', '2020-05-01 06:01:15', '18950200096', '鬼才', '米高梅大酒店', '2020-05-21', '2020-05-26');
INSERT INTO `hotel_orders` VALUES ('1263129398691332096', '1246445713762086912', '1248264622890876928', 1, 134.00, '0', '2020-05-20 15:28:11', '13328918913', '鬼才', '法属瓜德罗普岛酒店', '2020-05-20', '2020-05-30');
INSERT INTO `hotel_orders` VALUES ('1263372679392116736', '1246445713762086912', '1263371136131514368', 1, 99.00, '0', '2020-05-21 07:34:53', '18950200096', '嘻嘻', '法属瓜德罗普岛酒店', '2020-05-29', '2020-05-30');
INSERT INTO `hotel_orders` VALUES ('1263384968266604544', '1246445713762086912', '1263383414906118144', 1, 99.00, '0', '2020-05-21 08:23:43', '18950200096', '账号测试', '法属瓜德罗普岛酒店', '2020-05-21', '2020-05-30');
COMMIT;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'id',
  `scenicid` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '商品id',
  `userid` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '用户id',
  `qty` int(11) DEFAULT NULL COMMENT '数量',
  `payment` decimal(10,2) DEFAULT NULL COMMENT '总支付金额',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '状态',
  `paytime` datetime DEFAULT NULL COMMENT '支付时间',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '电话',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `scenicname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of orders
-- ----------------------------
BEGIN;
INSERT INTO `orders` VALUES ('1256101139030032384', '1246437947714629632', '1248264622890876928', 1, 9999.00, '1', '2020-05-01 06:00:23', '18950200096', '鬼才', 'China');
INSERT INTO `orders` VALUES ('1263127622797852672', '1246437947714629632', '1248264622890876928', 1, 9999.00, '0', '2020-05-20 15:21:07', '13328918913', '鬼才', 'China');
INSERT INTO `orders` VALUES ('1263372119435755520', '1246437947714629632', '1263371136131514368', 1, 9996.00, '1', '2020-05-21 07:32:40', '18950200096', '嘻嘻', 'China');
INSERT INTO `orders` VALUES ('1263384657133133824', '1246437947714629632', '1263383414906118144', 1, 9996.00, '1', '2020-05-21 08:22:29', '18950200096', '账号测试', 'China');
COMMIT;

-- ----------------------------
-- Table structure for scenic
-- ----------------------------
DROP TABLE IF EXISTS `scenic`;
CREATE TABLE `scenic` (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '景点名称',
  `img` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '景点图片',
  `price` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `miaoshu` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '描述',
  `comment` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '详情',
  `stock` int(32) DEFAULT NULL COMMENT '库存',
  `start` int(12) DEFAULT NULL COMMENT '评分',
  `contry` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '国家地区',
  `startdate` datetime DEFAULT NULL COMMENT '出发时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of scenic
-- ----------------------------
BEGIN;
INSERT INTO `scenic` VALUES ('1246437947714629632', 'China', 'https://zerolvyou.oss-cn-beijing.aliyuncs.com/img/2020-04-04/%E4%B8%AD%E5%9B%BD.jpeg', 9996.00, '世界上最温暖的国家', '你好，中国', 64, NULL, 'China', NULL);
INSERT INTO `scenic` VALUES ('1246438648993869824', 'Lceland', 'https://zerolvyou.oss-cn-beijing.aliyuncs.com/img/2020-04-04/%E5%86%B0%E5%B2%9B.jpeg', 8888.00, '', '', 0, NULL, 'null', NULL);
INSERT INTO `scenic` VALUES ('1246438954641190912', 'Janpan', 'https://zerolvyou.oss-cn-beijing.aliyuncs.com/img/2020-04-04/%E6%97%A5%E6%9C%AC.jpg', 7777.00, '', '', 0, NULL, 'Janpan', NULL);
INSERT INTO `scenic` VALUES ('1246439094747721728', 'United Kingdom', 'https://zerolvyou.oss-cn-beijing.aliyuncs.com/img/2020-04-04/%E8%8B%B1%E5%9B%BD.jpg', 3588.00, '', '', 134, NULL, '', NULL);
INSERT INTO `scenic` VALUES ('1246439360951808000', 'Vietnam', 'https://zerolvyou.oss-cn-beijing.aliyuncs.com/img/2020-04-04/a40f7ebcff944c01a4118f9eb53c0754-越南.jpeg', 5735.00, '', '', 27245, NULL, NULL, '2020-04-06 00:00:00');
INSERT INTO `scenic` VALUES ('1246439469223571456', 'Ltaly', 'https://zerolvyou.oss-cn-beijing.aliyuncs.com/img/2020-04-04/95895d0d3ec44010bc8dd035d0759e3b-意大利.jpg', 7912.00, '', '', 14, NULL, NULL, '2020-04-07 00:00:00');
INSERT INTO `scenic` VALUES ('1246439812581879808', 'Thailand', 'https://zerolvyou.oss-cn-beijing.aliyuncs.com/img/2020-04-04/541fab97d2674bcf90ce6d0e1e7e3489-泰国.jpeg', 6934.00, '', '', 163, NULL, NULL, '2020-04-15 00:00:00');
INSERT INTO `scenic` VALUES ('1246440038474510336', 'Taiwan', 'https://zerolvyou.oss-cn-beijing.aliyuncs.com/img/2020-04-04/%E5%8F%B0%E6%B9%BE.jpeg', 666.00, '', '', 42, NULL, 'null', NULL);
INSERT INTO `scenic` VALUES ('1246440126810746880', 'United States', 'https://zerolvyou.oss-cn-beijing.aliyuncs.com/img/2020-04-04/5ab4ac06bdb744dd88bb0b85b55e263b-美国.jpg', 6134.00, '', '', 124, NULL, '', NULL);
INSERT INTO `scenic` VALUES ('1246440232712728576', 'Africa', 'https://zerolvyou.oss-cn-beijing.aliyuncs.com/img/2020-04-04/%E9%9D%9E%E6%B4%B2.jpg', 7777.00, '', '', 26, NULL, '', NULL);
INSERT INTO `scenic` VALUES ('1246440327017459712', 'Argentina', 'https://zerolvyou.oss-cn-beijing.aliyuncs.com/img/2020-04-04/cd6b18d9d71649bf86f7ac9a12f365e2-阿根廷.jpeg', 5248.00, '', '', 237, NULL, NULL, '2020-04-29 00:00:00');
INSERT INTO `scenic` VALUES ('1246441190016479232', 'Hong Kong', 'https://zerolvyou.oss-cn-beijing.aliyuncs.com/img/2020-04-04/0189a637411f4a2f957ccf9cef5140ed-香港.jpeg', 6666.00, '', '', 61, NULL, 'null', NULL);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'id',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '姓名',
  `password` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '密码',
  `mobile` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '手机号码',
  `email` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `sex` char(6) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '1' COMMENT '性别，男1，女0',
  `age` int(16) DEFAULT NULL COMMENT '年龄',
  `salt` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '盐',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES ('1263364730879852544', 'x', '$2a$10$gSjf3ibLREWsLS5TyjOJl.RQgeAvzu5aW3eBKw6AhLGGDs41c1qrq', '13328918913', '86620598@qq.com', NULL, NULL, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
