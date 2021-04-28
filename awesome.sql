/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : awesome

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 26/04/2021 17:03:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for blogs
-- ----------------------------
DROP TABLE IF EXISTS `blogs`;
CREATE TABLE `blogs`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_image` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `summary` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` double NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_created_at`(`created_at`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blogs
-- ----------------------------
INSERT INTO `blogs` VALUES ('001619408376772fc833b979fcd4ff48b142dc97f1631d7000', '0016194025021897ccdd59cb9434cc9aaaa75fc3ff243b4000', 'chun', 'http://www.gravatar.com/avatar/92bf387c9c1bcc8f40e2af19a2086ee4?d=mm&s=120', '番茄', '西红柿', '萨达撒多', 1619408376.77239);
INSERT INTO `blogs` VALUES ('0016194272341557c38c01ddaea428195186650bb141aef000', '0016194025021897ccdd59cb9434cc9aaaa75fc3ff243b4000', 'chun', 'http://www.gravatar.com/avatar/92bf387c9c1bcc8f40e2af19a2086ee4?d=mm&s=120', '疯子', 'fwick', '暗示法撒旦撒旦', 1619427234.15509);
INSERT INTO `blogs` VALUES ('001619427247169a313d229362947eeac228f6c91b5a2a4000', '0016194025021897ccdd59cb9434cc9aaaa75fc3ff243b4000', 'chun', 'http://www.gravatar.com/avatar/92bf387c9c1bcc8f40e2af19a2086ee4?d=mm&s=120', 'boss', '大萨奥所多', '啊实打实大师多', 1619427247.16993);

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `blog_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_image` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` double NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_created_at`(`created_at`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('00161942715010962d9610849f64d7cbfa1c235ba2c503c000', '001619408376772fc833b979fcd4ff48b142dc97f1631d7000', '0016194025021897ccdd59cb9434cc9aaaa75fc3ff243b4000', 'chun', 'http://www.gravatar.com/avatar/92bf387c9c1bcc8f40e2af19a2086ee4?d=mm&s=120', '狗屎', 1619427150.10838);
INSERT INTO `comments` VALUES ('001619427263788f78a87cf60244bda8cc717d8ba7af647000', '001619427247169a313d229362947eeac228f6c91b5a2a4000', '0016194025021897ccdd59cb9434cc9aaaa75fc3ff243b4000', 'chun', 'http://www.gravatar.com/avatar/92bf387c9c1bcc8f40e2af19a2086ee4?d=mm&s=120', '狗', 1619427263.78881);
INSERT INTO `comments` VALUES ('023.413521032', '001619408376772fc833b979fcd4ff48b142dc97f1631d7000', '0016194025021897ccdd59cb9434cc9aaaa75fc3ff243b4000', 'chun', 'http://www.gravatar.com/avatar/92bf387c9c1bcc8f40e2af19a2086ee4?d=mm&s=120', '你好', 1619408376.77239);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `passwd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` double NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_email`(`email`) USING BTREE,
  INDEX `idx_created_at`(`created_at`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('0016190810751944b6e26b28fc04a8d85697975b961e1aa000', 'test@qq.com', '1234567890', 0, 'Test', 'about:blank', 1619081075.19489);
INSERT INTO `users` VALUES ('0016194025021897ccdd59cb9434cc9aaaa75fc3ff243b4000', '978747358@qq.com', 'e2fb30b552ad0611a8436464b3d83393761c6e6b', 1, 'chun', 'http://www.gravatar.com/avatar/92bf387c9c1bcc8f40e2af19a2086ee4?d=mm&s=120', 1619402502.18977);

SET FOREIGN_KEY_CHECKS = 1;
