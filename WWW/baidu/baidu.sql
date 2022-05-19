/*
Navicat MySQL Data Transfer

Source Server         : data
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : baidu

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2022-05-17 18:44:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `upvote`
-- ----------------------------
DROP TABLE IF EXISTS `upvote`;
CREATE TABLE `upvote` (
  `upvote_id` int(10) NOT NULL AUTO_INCREMENT,
  `keyword_id` int(10) NOT NULL,
  `keyword_name` varchar(128) NOT NULL,
  `upvote_count` int(10) unsigned zerofill NOT NULL,
  PRIMARY KEY (`upvote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of upvote
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_date` datetime NOT NULL,
  `user_phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'zhangsan', '827ccb0eea8a706c4c34a16891f84e7b', '2022-05-15 20:29:53', '13632882399');
INSERT INTO `user` VALUES ('2', 'lisi', 'e10adc3949ba59abbe56e057f20f883e', '2022-05-15 20:29:53', '13632882400');
INSERT INTO `user` VALUES ('3', 'ceshi', 'cc17c30cd111c7215fc8f51f8790e0e1', '2022-05-15 21:11:54', '');

-- ----------------------------
-- Table structure for `words`
-- ----------------------------
DROP TABLE IF EXISTS `words`;
CREATE TABLE `words` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `keyword_title` varchar(255) DEFAULT NULL,
  `keyword_name` varchar(255) DEFAULT NULL,
  `keyword_body` varchar(255) DEFAULT NULL,
  `keyword_wenxian` varchar(255) DEFAULT NULL,
  `keyword_creattime` datetime DEFAULT NULL,
  `keyword_count` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of words
-- ----------------------------
