/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3307
 Source Server Type    : MySQL
 Source Server Version : 50015 (5.0.15-nt)
 Source Host           : localhost:3307
 Source Schema         : mhtxswz

 Target Server Type    : MySQL
 Target Server Version : 50015 (5.0.15-nt)
 File Encoding         : 65001

 Date: 15/04/2024 10:23:00
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for addressinfo
-- ----------------------------
DROP TABLE IF EXISTS `addressinfo`;
CREATE TABLE `addressinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL DEFAULT NULL,
  `uname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `aliasname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `defaults` int(11) NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of addressinfo
-- ----------------------------
INSERT INTO `addressinfo` VALUES (4, 4, '张鹏', '绿地大厦1101', '15525252525', '公司', 1);
INSERT INTO `addressinfo` VALUES (5, 5, '刘冬冬', '中华大厦1121', '15529595559', '公司', 1);
INSERT INTO `addressinfo` VALUES (6, 28, 'gly', '学校宿舍2号楼201', '14251356921', '', 0);

-- ----------------------------
-- Table structure for browser
-- ----------------------------
DROP TABLE IF EXISTS `browser`;
CREATE TABLE `browser`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of browser
-- ----------------------------
INSERT INTO `browser` VALUES (1, 3, 4);
INSERT INTO `browser` VALUES (2, 7, 4);
INSERT INTO `browser` VALUES (6, 8, 5);
INSERT INTO `browser` VALUES (7, 6, 5);
INSERT INTO `browser` VALUES (9, 7, 5);

-- ----------------------------
-- Table structure for cartitem
-- ----------------------------
DROP TABLE IF EXISTS `cartitem`;
CREATE TABLE `cartitem`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL DEFAULT NULL,
  `gid` int(11) NULL DEFAULT NULL,
  `nums` int(11) NULL DEFAULT NULL,
  `checked` int(11) NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cartitem
-- ----------------------------

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '社会科学类');
INSERT INTO `category` VALUES (2, ' 自然科学类');
INSERT INTO `category` VALUES (3, '生活实用类');
INSERT INTO `category` VALUES (4, '文学类');
INSERT INTO `category` VALUES (5, '历史类');
INSERT INTO `category` VALUES (7, '工程技术类');
INSERT INTO `category` VALUES (8, '农业类');
INSERT INTO `category` VALUES (9, '医药卫生类');
INSERT INTO `category` VALUES (10, '经济管理类');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bianhao` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cid` int(11) NULL DEFAULT NULL,
  `origprice` double(8, 1) NULL DEFAULT NULL,
  `nowprice` double(8, 1) NULL DEFAULT NULL,
  `goodsimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gooddes` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `saleflag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `delflag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kucun` int(11) NULL DEFAULT NULL,
  `tj` int(11) NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '1001', '写给儿童的百科全书全套6册', 1, 88.0, 58.0, '/upload/1707122376687.jpg', '<p>\r\n	<img src=\"https://img.alicdn.com/imgextra/i2/376252794/O1CN01hpqjYi1WVhWDJKF2t_!!376252794.jpg\" />\r\n</p>', '1', '1', 1000, 1);
INSERT INTO `goods` VALUES (2, '1002', '会说话的孩了运气不会太差', 4, 99.0, 79.0, '/upload/1707295573441.jpg', '<p>\r\n	<img src=\"/ueditor/jsp/upload/image/20240205/1707122262843059511.jpg\" />\r\n</p>', '1', '1', 999, 0);
INSERT INTO `goods` VALUES (3, '1003', '儿童宇宙百科全书精装版', 2, 89.0, 80.0, '/upload/1707121284771.jpg', '<p><img src=\"/ueditor/jsp/upload/image/20240205/1707121315332028815.jpg\"/></p>', '-1', '1', 998, 1);
INSERT INTO `goods` VALUES (4, '1004', '夏洛的网', 4, 39.0, 30.0, '/upload/1707121431370.jpg', '<p><span class=\"Attrs--attr--33ShB6X\" style=\"display: inline-block; width: 253.965px; text-overflow: ellipsis; overflow: hidden; padding: 0px 6px; box-sizing: border-box;\">书名：夏洛的网</span><span class=\"Attrs--attr--33ShB6X\" style=\"display: inline-block; width: 253.965px; text-overflow: ellipsis; overflow: hidden; padding: 0px 6px; box-sizing: border-box;\">适用年龄：9岁-12岁</span><span class=\"Attrs--attr--33ShB6X\" style=\"display: inline-block; width: 253.965px; text-overflow: ellipsis; overflow: hidden; padding: 0px 6px; box-sizing: border-box;\">ISBN编号：9787532757848</span></p><p><span class=\"Attrs--attr--33ShB6X\" style=\"display: inline-block; width: 253.965px; text-overflow: ellipsis; overflow: hidden; padding: 0px 6px; box-sizing: border-box;\">作者：[美]E·B·怀特著 任溶溶译</span><span class=\"Attrs--attr--33ShB6X\" style=\"display: inline-block; width: 253.965px; text-overflow: ellipsis; overflow: hidden; padding: 0px 6px; box-sizing: border-box;\">译者：任溶溶</span><span class=\"Attrs--attr--33ShB6X\" style=\"display: inline-block; width: 253.965px; text-overflow: ellipsis; overflow: hidden; padding: 0px 6px; box-sizing: border-box;\">定价：37.00元</span></p><p><span class=\"Attrs--attr--33ShB6X\" style=\"display: inline-block; width: 253.965px; text-overflow: ellipsis; overflow: hidden; padding: 0px 6px; box-sizing: border-box;\">分册名：夏洛的网【学校指定】</span><span class=\"Attrs--attr--33ShB6X\" style=\"display: inline-block; width: 253.965px; text-overflow: ellipsis; overflow: hidden; padding: 0px 6px; box-sizing: border-box;\">分册名：【2册】夏洛的网+稻草人</span><span class=\"Attrs--attr--33ShB6X\" style=\"display: inline-block; width: 253.965px; text-overflow: ellipsis; overflow: hidden; padding: 0px 6px; box-sizing: border-box;\">分册名：【2册】夏洛的网+时代广场的蟋蟀</span></p><p><span class=\"Attrs--attr--33ShB6X\" style=\"display: inline-block; width: 253.965px; text-overflow: ellipsis; overflow: hidden; padding: 0px 6px; box-sizing: border-box;\">分册名：夏洛的网+窗边的小豆豆【套装更优惠】</span><span class=\"Attrs--attr--33ShB6X\" style=\"display: inline-block; width: 253.965px; text-overflow: ellipsis; overflow: hidden; padding: 0px 6px; box-sizing: border-box;\">分册名：【2册】夏洛的网+亲爱的汉修先生</span><span class=\"Attrs--attr--33ShB6X\" style=\"display: inline-block; width: 253.965px; text-overflow: ellipsis; overflow: hidden; padding: 0px 6px; box-sizing: border-box;\">分册名：【2册】夏洛的网+帽子的秘密</span></p><p><span class=\"Attrs--attr--33ShB6X\" style=\"display: inline-block; width: 253.965px; text-overflow: ellipsis; overflow: hidden; padding: 0px 6px; box-sizing: border-box;\">分册名：夏洛的网+长袜子皮皮【套装更优惠】</span><span class=\"Attrs--attr--33ShB6X\" style=\"display: inline-block; width: 253.965px; text-overflow: ellipsis; overflow: hidden; padding: 0px 6px; box-sizing: border-box;\">分册名：【全3册】夏洛的网+吹小号的天鹅+精灵鼠小弟</span><span class=\"Attrs--attr--33ShB6X\" style=\"display: inline-block; width: 253.965px; text-overflow: ellipsis; overflow: hidden; padding: 0px 6px; box-sizing: border-box;\">分册名：三年级课外书6册</span></p><p><span class=\"Attrs--attr--33ShB6X\" style=\"display: inline-block; width: 253.965px; text-overflow: ellipsis; overflow: hidden; padding: 0px 6px; box-sizing: border-box;\">分册名：窗边的小豆豆</span><span class=\"Attrs--attr--33ShB6X\" style=\"display: inline-block; width: 253.965px; text-overflow: ellipsis; overflow: hidden; padding: 0px 6px; box-sizing: border-box;\">分册名：袁珂中国神话故事集</span><span class=\"Attrs--attr--33ShB6X\" style=\"display: inline-block; width: 253.965px; text-overflow: ellipsis; overflow: hidden; padding: 0px 6px; box-sizing: border-box;\">分册名：平凡的世界</span></p><p><span class=\"Attrs--attr--33ShB6X\" style=\"display: inline-block; width: 253.965px; text-overflow: ellipsis; overflow: hidden; padding: 0px 6px; box-sizing: border-box;\">正：副书名：夏洛的网</span><span class=\"Attrs--attr--33ShB6X\" style=\"display: inline-block; width: 253.965px; text-overflow: ellipsis; overflow: hidden; padding: 0px 6px; box-sizing: border-box;\">开本：32开</span><span class=\"Attrs--attr--33ShB6X\" style=\"display: inline-block; width: 253.965px; text-overflow: ellipsis; overflow: hidden; padding: 0px 6px; box-sizing: border-box; color: rgb(0, 0, 0);\">是否是套装：否</span></p><p><span class=\"Attrs--attr--33ShB6X\" style=\"display: inline-block; width: 253.965px; text-overflow: ellipsis; overflow: hidden; padding: 0px 6px; box-sizing: border-box;\">出版社名称：上海译文出版社</span></p><p><br/></p>', '1', '1', 997, 1);
INSERT INTO `goods` VALUES (5, '1005', 'Java语言程序设计', 7, 55.0, 35.0, '/upload/1707119276088.jpeg', '<p><img src=\"/mhtxswz//ueditor/jsp/upload/image/20240205/1707119322724048592.jpeg\" title=\"1707119322724048592.jpeg\" alt=\"f.jpeg\"/></p>', '1', '1', 994, 1);
INSERT INTO `goods` VALUES (6, '1006', '线性代数同步辅导与课后习题详解', 2, 59.0, 45.0, '/upload/1707119228067.jpg', '<p>鈥<img src=\"/mhtxswz//ueditor/jsp/upload/image/20240205/1707119256435007092.jpg\" title=\"1707119256435007092.jpg\" alt=\"c.jpg\"/>�<br/></p>', '1', '1', 1000, 0);
INSERT INTO `goods` VALUES (7, '1007', '线性代数', 2, 39.0, 35.0, '/upload/1707119165917.jpg', '<p>\r\n	<img src=\"/mhtxswz/ueditor/jsp/upload/image/20221207/1670398589202015172.jpg\" title=\"1670398589202015172.jpg\" alt=\"279b14211d191a07.jpg\" />\r\n</p>', '1', '1', 995, NULL);
INSERT INTO `goods` VALUES (8, '1008', '面向对象程序设计教程', 7, 45.0, 42.0, '/upload/1707119009761.jpg', '<p>\r\n	<span class=\"Attrs--attr--33ShB6X\"> </span> \r\n</p>\r\n<div class=\"ItemDetail--attrs--3t-mTb3\" style=\"font-family:tahoma, arial, \" background-color:#ffffff;\"=\"\">\r\n<div>\r\n	<div class=\"Attrs--attrSection--2_G8xGa\" style=\"font-family:\" font-size:14px;color:#4e4e4e;margin-left:-6px;\"=\"\">\r\n				ISBN编号：9787302337829书名：Java面向对象程序设计实训教程作者：邵欣欣//蒋晶晶\r\n</div>\r\n<div class=\"Attrs--attrSection--2_G8xGa\" style=\"font-family:\" font-size:14px;color:#4e4e4e;margin-left:-6px;\"=\"\">\r\n				定价：34.50元书名：Java面向对象程序设计实训教程是否是套装：否\r\n	</div>\r\n<div class=\"Attrs--attrSection--2_G8xGa\" style=\"font-family:\" font-size:14px;color:#4e4e4e;margin-left:-6px;\"=\"\">\r\n				出版社名称：清华大学出版社\r\n</div>\r\n	</div>\r\n</div>\r\n<div class=\"desc-root\" style=\"font-family:tahoma, arial, \" background-color:#ffffff;\"=\"\">\r\n<div class=\"descV8-container\">\r\n	<div class=\"descV8-richtext\">\r\n		<img class=\"desc_anchor lazyload\" id=\"desc-module-1\" src=\"https://assets.alicdn.com/kissy/1.0.0/build/imglazyload/spaceball.gif\" />............<img class=\"desc_anchor lazyload\" id=\"desc-module-2\" src=\"https://assets.alicdn.com/kissy/1.0.0/build/imglazyload/spaceball.gif\" /> \r\n		<div style=\"margin:0px auto 20px;border:1px solid #EDEDED;\">\r\n			<div style=\"margin:0px auto;color:#333333;font-weight:bold;\">\r\n				基本信息\r\n			</div>\r\n			<div style=\"margin:0px auto;color:#666666;\">\r\n				<table border=\"0\" cellpadding=\"5\" cellspacing=\"10\" style=\"border:1px solid grey;width:733.806px;\" class=\"ke-zeroborder\">\r\n					<tbody>\r\n						<tr>\r\n							<td style=\"border:1px solid grey;\">\r\n								<strong>商品名称：</strong> \r\n							</td>\r\n							<td width=\"420px\" style=\"border:1px solid grey;\">\r\n								Java面向对象程序设计实训教程（高等学校计算机专业教材精选·算法与程序设计）\r\n							</td>\r\n							<td style=\"border:1px solid grey;\">\r\n								<strong>开本：</strong> \r\n							</td>\r\n							<td style=\"border:1px solid grey;\">\r\n								12k\r\n							</td>\r\n						</tr>\r\n						<tr>\r\n							<td style=\"border:1px solid grey;\">\r\n								<strong>作者：</strong> \r\n							</td>\r\n							<td style=\"border:1px solid grey;\">\r\n								邵欣欣//蒋晶晶\r\n							</td>\r\n							<td style=\"border:1px solid grey;\">\r\n								<strong>定价：</strong> \r\n							</td>\r\n							<td style=\"border:1px solid grey;\">\r\n								34.50\r\n							</td>\r\n						</tr>\r\n						<tr>\r\n							<td style=\"border:1px solid grey;\">\r\n								<strong>ISBN号：</strong> \r\n							</td>\r\n							<td style=\"border:1px solid grey;\">\r\n								9787302337829\r\n							</td>\r\n							<td style=\"border:1px solid grey;\">\r\n								<strong>出版时间：</strong> \r\n							</td>\r\n							<td style=\"border:1px solid grey;\">\r\n								2013-10-01\r\n							</td>\r\n						</tr>\r\n						<tr>\r\n							<td style=\"border:1px solid grey;\">\r\n								<strong>出版社：</strong> \r\n							</td>\r\n							<td style=\"border:1px solid grey;\">\r\n								清华大学出版社\r\n							</td>\r\n							<td style=\"border:1px solid grey;\">\r\n								<strong>印刷时间：</strong> \r\n							</td>\r\n							<td style=\"border:1px solid grey;\">\r\n							</td>\r\n						</tr>\r\n						<tr>\r\n							<td style=\"border:1px solid grey;\">\r\n								<strong>版次：</strong> \r\n							</td>\r\n							<td style=\"border:1px solid grey;\">\r\n								1\r\n							</td>\r\n							<td style=\"border:1px solid grey;\">\r\n								<strong>印次：</strong> \r\n							</td>\r\n							<td style=\"border:1px solid grey;\">\r\n								1\r\n							</td>\r\n						</tr>\r\n					</tbody>\r\n				</table>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n	</div>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>', '-1', '1', 1000, 0);

-- ----------------------------
-- Table structure for lunbo
-- ----------------------------
DROP TABLE IF EXISTS `lunbo`;
CREATE TABLE `lunbo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fujian` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of lunbo
-- ----------------------------
INSERT INTO `lunbo` VALUES (3, '/upload/1708429248409.jpg');
INSERT INTO `lunbo` VALUES (4, '/upload/1708429264916.jpg');
INSERT INTO `lunbo` VALUES (5, '/upload/1708429275296.jpg');

-- ----------------------------
-- Table structure for newsinfo
-- ----------------------------
DROP TABLE IF EXISTS `newsinfo`;
CREATE TABLE `newsinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contents` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `pdate` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of newsinfo
-- ----------------------------
INSERT INTO `newsinfo` VALUES (1, '春节期间发货通知', '<p>春节期间发货通知</p><p>个别地方不发货，其余地方正常发货</p><p><br/></p>', '2022-12-07 15:42:03');

-- ----------------------------
-- Table structure for orderinfo
-- ----------------------------
DROP TABLE IF EXISTS `orderinfo`;
CREATE TABLE `orderinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderno` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `totalmoney` double(9, 1) NULL DEFAULT NULL,
  `realmoney` double(9, 1) NULL DEFAULT NULL,
  `orderstate` int(11) NULL DEFAULT NULL,
  `paytype` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kdno` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kdname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `appraise` int(11) NULL DEFAULT NULL,
  `fhdate` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shdate` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of orderinfo
-- ----------------------------
INSERT INTO `orderinfo` VALUES (1, '20221207155835', 4, 661.0, 661.0, 4, 'alipay', '张鹏', '绿地大厦1101', '15525252525', 'SF12121', '顺丰', 1, '2022-12-07 15:59:18', '2022-12-07 15:58:35');
INSERT INTO `orderinfo` VALUES (2, '20230516155412', 5, 39.0, 39.0, 2, 'alipay', '???', '????1121', '15529595559', NULL, NULL, 0, NULL, '2023-05-16 15:54:12');
INSERT INTO `orderinfo` VALUES (3, '20240411100452', 28, 79.0, 79.0, 2, 'alipay', 'gly', '学校宿舍2号楼201', '14251356921', NULL, NULL, 0, NULL, '2024-04-11 10:04:52');

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oid` int(11) NULL DEFAULT NULL,
  `gid` int(11) NULL DEFAULT NULL,
  `quantity` int(11) NULL DEFAULT NULL,
  `price` double(9, 1) NULL DEFAULT NULL,
  `total` double(9, 1) NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES (1, 1, 3, 2, 89.0, 178.0);
INSERT INTO `orderitem` VALUES (2, 1, 5, 6, 35.0, 210.0);
INSERT INTO `orderitem` VALUES (3, 1, 7, 4, 39.0, 156.0);
INSERT INTO `orderitem` VALUES (4, 1, 4, 3, 39.0, 117.0);
INSERT INTO `orderitem` VALUES (5, 2, 7, 1, 39.0, 39.0);
INSERT INTO `orderitem` VALUES (6, 3, 2, 1, 79.0, 79.0);

-- ----------------------------
-- Table structure for pinglun
-- ----------------------------
DROP TABLE IF EXISTS `pinglun`;
CREATE TABLE `pinglun`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `fs` int(11) NULL DEFAULT NULL,
  `plnr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `plsj` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `huifu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hfsj` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pinglun
-- ----------------------------
INSERT INTO `pinglun` VALUES (1, 3, 4, 5, '非常好吃', '2023-12-07 16:00:45', NULL, NULL);
INSERT INTO `pinglun` VALUES (2, 5, 4, 5, '不错的书籍', '2023-12-07 16:00:45', NULL, NULL);
INSERT INTO `pinglun` VALUES (3, 7, 4, 5, '我的最爱', '2024-01-07 16:00:45', NULL, NULL);
INSERT INTO `pinglun` VALUES (4, 4, 4, 5, '默认好评', '2022-12-07 16:00:45', NULL, NULL);

-- ----------------------------
-- Table structure for tadmin
-- ----------------------------
DROP TABLE IF EXISTS `tadmin`;
CREATE TABLE `tadmin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `upwd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tadmin
-- ----------------------------
INSERT INTO `tadmin` VALUES (1, 'admin', '123456', '张管理', '15525252525');
INSERT INTO `tadmin` VALUES (2, 'gly', '123456', '张小名', '15556665656');
INSERT INTO `tadmin` VALUES (3, 'user003', '123456', '李军', '13451245188');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `upwd` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `delflag` int(11) NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES (2, 'zs01', '123456', '15529595559', '冻结', 0);
INSERT INTO `userinfo` VALUES (4, 'user002', '123456', '15525252525', '正常', 0);
INSERT INTO `userinfo` VALUES (5, 'user001', '123456', '18322222222', '正常', 0);
INSERT INTO `userinfo` VALUES (28, '123456', '123456', '13700542185', '正常', 0);
INSERT INTO `userinfo` VALUES (29, '1234561', '123456', '14556895236', '正常', 0);
INSERT INTO `userinfo` VALUES (30, '1', '1', '13451245188', '正常', 0);
INSERT INTO `userinfo` VALUES (31, '12', '1', '13451245188', '正常', 0);
INSERT INTO `userinfo` VALUES (32, '123123', '123123', '15656895623', '正常', 0);

SET FOREIGN_KEY_CHECKS = 1;
