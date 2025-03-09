/*
 Navicat Premium Data Transfer

 Source Server         : mysql5.6
 Source Server Type    : MySQL
 Source Server Version : 50620
 Source Host           : localhost:3306
 Source Schema         : 2024_daglxt

 Target Server Type    : MySQL
 Target Server Version : 50620
 File Encoding         : 65001

 Date: 06/03/2025 11:16:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bs_book_address
-- ----------------------------
DROP TABLE IF EXISTS `bs_book_address`;
CREATE TABLE `bs_book_address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `address_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bs_book_address
-- ----------------------------
INSERT INTO `bs_book_address` VALUES (5, '正常');
INSERT INTO `bs_book_address` VALUES (6, '走失');

-- ----------------------------
-- Table structure for bs_book_info
-- ----------------------------
DROP TABLE IF EXISTS `bs_book_info`;
CREATE TABLE `bs_book_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '上架时间',
  `publication_date` datetime(0) NULL DEFAULT NULL COMMENT '出版时间',
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作者 ',
  `press` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出版社',
  `book_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '书籍名称',
  `sort_id` int(11) NULL DEFAULT NULL COMMENT '分类id',
  `address_id` int(11) NULL DEFAULT NULL COMMENT '地址id',
  `rfid_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'rfid',
  `select_number` int(11) NULL DEFAULT NULL COMMENT '借阅次数',
  `photo_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片地址',
  `book_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图书状态，1可借，2不可借',
  `book_count` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图书数量',
  `raters_number` int(11) NULL DEFAULT NULL,
  `raters` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isbn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bs_book_info
-- ----------------------------
INSERT INTO `bs_book_info` VALUES (23, '2025-03-06 10:02:19', '2025-03-11 00:00:00', '佳佳', NULL, '萨摩耶', 21, 5, '21C42B05', 0, 'https://scwtest20200706.oss-cn-beijing.aliyuncs.com/img/824f8d5e-ab9b-4691-8b69-616d2d39acd9gougou.jpg', '不可借', '0', 1, '5', NULL);
INSERT INTO `bs_book_info` VALUES (24, '2025-03-06 10:03:29', '2025-03-13 00:00:00', '无', NULL, '猫猫', 20, 6, 'D3D16F1A', 2, 'https://scwtest20200706.oss-cn-beijing.aliyuncs.com/img/bab6f301-0b9a-48d3-9505-b9455201a6efmaomao.jpg', '可借', '3', 1, '5', NULL);

-- ----------------------------
-- Table structure for bs_book_sort
-- ----------------------------
DROP TABLE IF EXISTS `bs_book_sort`;
CREATE TABLE `bs_book_sort`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sort_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bs_book_sort
-- ----------------------------
INSERT INTO `bs_book_sort` VALUES (20, '流浪');
INSERT INTO `bs_book_sort` VALUES (21, '家养');

-- ----------------------------
-- Table structure for bs_borrow
-- ----------------------------
DROP TABLE IF EXISTS `bs_borrow`;
CREATE TABLE `bs_borrow`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` int(11) NULL DEFAULT NULL COMMENT '借阅用户id',
  `book_id` int(11) NULL DEFAULT NULL COMMENT '被借阅书籍id',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '预计还书时间',
  `boorrw_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '借阅状态 0- 未归还 1-已归还',
  `get_time` datetime(0) NULL DEFAULT NULL COMMENT '实际借书时间',
  `return_time` datetime(0) NULL DEFAULT NULL COMMENT '实际还书时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bs_borrow
-- ----------------------------
INSERT INTO `bs_borrow` VALUES (17, 9, 24, '2025-03-06 00:00:00', '0', '2025-03-06 10:23:36', NULL);
INSERT INTO `bs_borrow` VALUES (18, 16, 24, '2025-03-07 00:00:00', '0', '2025-03-04 09:24:33', NULL);
INSERT INTO `bs_borrow` VALUES (19, 15, 24, '2025-03-06 10:42:48', '0', '2025-03-06 08:22:43', NULL);
INSERT INTO `bs_borrow` VALUES (20, 10, 24, '2025-03-06 00:00:00', '0', '2025-03-06 10:49:46', NULL);

-- ----------------------------
-- Table structure for bs_mode
-- ----------------------------
DROP TABLE IF EXISTS `bs_mode`;
CREATE TABLE `bs_mode`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modes` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bs_mode
-- ----------------------------
INSERT INTO `bs_mode` VALUES (1, 2);

-- ----------------------------
-- Table structure for bs_phone
-- ----------------------------
DROP TABLE IF EXISTS `bs_phone`;
CREATE TABLE `bs_phone`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户手机号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bs_phone
-- ----------------------------
INSERT INTO `bs_phone` VALUES (1, 13, '13173381157');
INSERT INTO `bs_phone` VALUES (2, 9, '13173381157');
INSERT INTO `bs_phone` VALUES (3, 10, '13173381157');
INSERT INTO `bs_phone` VALUES (4, 11, '13173381157');
INSERT INTO `bs_phone` VALUES (5, 14, '13173381157');
INSERT INTO `bs_phone` VALUES (6, 15, '13173381155');
INSERT INTO `bs_phone` VALUES (7, 16, '18552255620');

-- ----------------------------
-- Table structure for bs_rfid
-- ----------------------------
DROP TABLE IF EXISTS `bs_rfid`;
CREATE TABLE `bs_rfid`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `rfid_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ic卡id',
  `rfid_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否已读0-未读 1-已读',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bs_rfid
-- ----------------------------
INSERT INTO `bs_rfid` VALUES (1, 'D3D16F1A', '1');

-- ----------------------------
-- Table structure for bs_score
-- ----------------------------
DROP TABLE IF EXISTS `bs_score`;
CREATE TABLE `bs_score`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bs_score
-- ----------------------------
INSERT INTO `bs_score` VALUES (1, 1, 100);
INSERT INTO `bs_score` VALUES (2, 9, 92);
INSERT INTO `bs_score` VALUES (3, 10, 98);
INSERT INTO `bs_score` VALUES (4, 11, 100);
INSERT INTO `bs_score` VALUES (5, 13, 99);
INSERT INTO `bs_score` VALUES (6, 14, 99);
INSERT INTO `bs_score` VALUES (7, 15, 100);
INSERT INTO `bs_score` VALUES (8, 16, 100);

-- ----------------------------
-- Table structure for bs_token
-- ----------------------------
DROP TABLE IF EXISTS `bs_token`;
CREATE TABLE `bs_token`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '授权信息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bs_token
-- ----------------------------
INSERT INTO `bs_token` VALUES (1, 1, '08744721-ae73-4dfb-a097-7adf2c6f543b');
INSERT INTO `bs_token` VALUES (2, 2, NULL);
INSERT INTO `bs_token` VALUES (3, 4, '845f62bc-f3b4-4ef5-89a2-5a8cb2c9312a');
INSERT INTO `bs_token` VALUES (4, 5, 'bbca0a4d-9914-4e5c-8805-81f001bd8901');
INSERT INTO `bs_token` VALUES (5, 6, 'c4a3e52b-5411-446f-94e9-08c281317653');
INSERT INTO `bs_token` VALUES (6, 7, '26c5578c-6066-40d8-9abc-bc056863aab9');
INSERT INTO `bs_token` VALUES (7, 8, 'f427f94b-c185-4d38-b1ac-a5677ddbf5ca');
INSERT INTO `bs_token` VALUES (8, 9, '8f5eb70e-06a4-4850-bad9-464cf064155d');
INSERT INTO `bs_token` VALUES (9, 10, '3528507a-3a6e-4e68-9621-e0bf121a9617');
INSERT INTO `bs_token` VALUES (10, 11, 'c2702139-9d2d-434a-8ee5-f83d64c9f0d9');
INSERT INTO `bs_token` VALUES (11, 12, '842f5911-7c2b-49ce-96e8-6d2cbda43881');
INSERT INTO `bs_token` VALUES (12, 13, '3bdd0bb9-7926-4e91-9354-df51869b208f');
INSERT INTO `bs_token` VALUES (13, 14, '437fd162-010c-46ab-a234-d519cae969fe');
INSERT INTO `bs_token` VALUES (14, 15, '31e9916b-c6a6-4f0d-bd9b-dbe39f3daa8a');
INSERT INTO `bs_token` VALUES (15, 16, '10b9b648-3034-477c-be99-b3576b90a6b4');

-- ----------------------------
-- Table structure for bs_user
-- ----------------------------
DROP TABLE IF EXISTS `bs_user`;
CREATE TABLE `bs_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT ' 密码',
  `identity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份 0-管理员 1-普通用户',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `major` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业',
  `grade` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年级',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `book_count` int(11) NULL DEFAULT NULL COMMENT '借书次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bs_user
-- ----------------------------
INSERT INTO `bs_user` VALUES (1, 'admin', 'admin', '0', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `bs_user` VALUES (9, '2017010001', '2017010001', '1', 18, '男', '网络工程', '2017', '林宪宇', 29);
INSERT INTO `bs_user` VALUES (10, '2017010002', '2017010002', '1', 18, '女', '软件工程', '2017', '王天1', 53);
INSERT INTO `bs_user` VALUES (11, '2017010003', '2017010003', '1', 18, '男', '嵌入式', '2017', '陈杨', 6);
INSERT INTO `bs_user` VALUES (14, '2017010005', '2017010005', '1', 18, '男', '网络工程', '2017', '吴天', 1);
INSERT INTO `bs_user` VALUES (15, '2017010006', '2017010006', '1', 18, '女', '云计算', '2017', '陈思思', 0);
INSERT INTO `bs_user` VALUES (16, '4181154050', '4181154050', '1', 22, '男', '通信工程（嵌入式）', '18', '吴永尼', 0);

-- ----------------------------
-- Table structure for bs_verdue_record
-- ----------------------------
DROP TABLE IF EXISTS `bs_verdue_record`;
CREATE TABLE `bs_verdue_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL DEFAULT NULL,
  `borrow_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bs_verdue_record
-- ----------------------------
INSERT INTO `bs_verdue_record` VALUES (13, 9, 5);
INSERT INTO `bs_verdue_record` VALUES (14, 9, 6);
INSERT INTO `bs_verdue_record` VALUES (15, 13, 9);
INSERT INTO `bs_verdue_record` VALUES (16, 14, 10);
INSERT INTO `bs_verdue_record` VALUES (17, 9, 11);
INSERT INTO `bs_verdue_record` VALUES (18, 9, 12);
INSERT INTO `bs_verdue_record` VALUES (19, 9, 13);
INSERT INTO `bs_verdue_record` VALUES (20, 9, 14);
INSERT INTO `bs_verdue_record` VALUES (21, 9, 15);
INSERT INTO `bs_verdue_record` VALUES (22, 10, 16);
INSERT INTO `bs_verdue_record` VALUES (23, 9, 7);
INSERT INTO `bs_verdue_record` VALUES (24, 10, 8);

SET FOREIGN_KEY_CHECKS = 1;
