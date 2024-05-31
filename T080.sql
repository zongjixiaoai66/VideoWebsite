/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t080`;
CREATE DATABASE IF NOT EXISTS `t080` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t080`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springbootpist4/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springbootpist4/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springbootpist4/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `discussshipinfenxiang`;
CREATE TABLE IF NOT EXISTS `discussshipinfenxiang` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619786640655 DEFAULT CHARSET=utf8mb3 COMMENT='视频分享评论表';

DELETE FROM `discussshipinfenxiang`;
INSERT INTO `discussshipinfenxiang` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(91, '2021-04-30 12:41:53', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(92, '2021-04-30 12:41:53', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(93, '2021-04-30 12:41:53', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(94, '2021-04-30 12:41:53', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(95, '2021-04-30 12:41:53', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(96, '2021-04-30 12:41:53', 6, 6, '用户名6', '评论内容6', '回复内容6'),
	(1619786640654, '2021-04-30 12:43:59', 21, 1619786592006, '1', 'sadsaDad', NULL);

DROP TABLE IF EXISTS `discussshipinpaiming`;
CREATE TABLE IF NOT EXISTS `discussshipinpaiming` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb3 COMMENT='视频排名评论表';

DELETE FROM `discussshipinpaiming`;
INSERT INTO `discussshipinpaiming` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(101, '2021-04-30 12:41:53', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(102, '2021-04-30 12:41:53', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(103, '2021-04-30 12:41:53', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(104, '2021-04-30 12:41:53', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(105, '2021-04-30 12:41:53', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(106, '2021-04-30 12:41:53', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint DEFAULT NULL COMMENT '父节点id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619786723338 DEFAULT CHARSET=utf8mb3 COMMENT='交流论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `addtime`, `title`, `content`, `parentid`, `userid`, `username`, `isdone`) VALUES
	(61, '2021-04-30 12:41:53', '帖子标题1', '帖子内容1', 1, 1, '用户名1', '开放'),
	(62, '2021-04-30 12:41:53', '帖子标题2', '帖子内容2', 2, 2, '用户名2', '开放'),
	(63, '2021-04-30 12:41:53', '帖子标题3', '帖子内容3', 3, 3, '用户名3', '开放'),
	(64, '2021-04-30 12:41:53', '帖子标题4', '帖子内容4', 4, 4, '用户名4', '开放'),
	(65, '2021-04-30 12:41:53', '帖子标题5', '帖子内容5', 5, 5, '用户名5', '开放'),
	(66, '2021-04-30 12:41:53', '帖子标题6', '帖子内容6', 6, 6, '用户名6', '开放'),
	(1619786716580, '2021-04-30 12:45:16', 'add', '<p>请输入内容腌臜SAQ</p>', 0, 1619786592006, '1', '开放');

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619786736463 DEFAULT CHARSET=utf8mb3 COMMENT='留言板';

DELETE FROM `messages`;
INSERT INTO `messages` (`id`, `addtime`, `userid`, `username`, `content`, `reply`) VALUES
	(81, '2021-04-30 12:41:53', 1, '用户名1', '留言内容1', '回复内容1'),
	(82, '2021-04-30 12:41:53', 2, '用户名2', '留言内容2', '回复内容2'),
	(83, '2021-04-30 12:41:53', 3, '用户名3', '留言内容3', '回复内容3'),
	(84, '2021-04-30 12:41:53', 4, '用户名4', '留言内容4', '回复内容4'),
	(85, '2021-04-30 12:41:53', 5, '用户名5', '留言内容5', '回复内容5'),
	(86, '2021-04-30 12:41:53', 6, '用户名6', '留言内容6', '回复内容6'),
	(1619786736462, '2021-04-30 12:45:36', 1619786592006, '1', '这里可以给管理留言', '大萨达群奥');

DROP TABLE IF EXISTS `pingtaigonggao`;
CREATE TABLE IF NOT EXISTS `pingtaigonggao` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `neirong` longtext COMMENT '内容',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619786879550 DEFAULT CHARSET=utf8mb3 COMMENT='平台公告';

DELETE FROM `pingtaigonggao`;
INSERT INTO `pingtaigonggao` (`id`, `addtime`, `biaoti`, `neirong`, `faburen`, `faburiqi`, `tupian`) VALUES
	(41, '2021-04-30 12:41:52', '标题1', '内容1', '发布人1', '2021-04-30', 'http://localhost:8080/springbootpist4/upload/pingtaigonggao_tupian1.jpg'),
	(42, '2021-04-30 12:41:52', '标题2', '内容2', '发布人2', '2021-04-30', 'http://localhost:8080/springbootpist4/upload/pingtaigonggao_tupian2.jpg'),
	(43, '2021-04-30 12:41:52', '标题3', '内容3', '发布人3', '2021-04-30', 'http://localhost:8080/springbootpist4/upload/pingtaigonggao_tupian3.jpg'),
	(44, '2021-04-30 12:41:52', '标题4', '内容4', '发布人4', '2021-04-30', 'http://localhost:8080/springbootpist4/upload/pingtaigonggao_tupian4.jpg'),
	(45, '2021-04-30 12:41:52', '标题5', '内容5', '发布人5', '2021-04-30', 'http://localhost:8080/springbootpist4/upload/pingtaigonggao_tupian5.jpg'),
	(46, '2021-04-30 12:41:52', '标题6', '内容6', '发布人6', '2021-04-30', 'http://localhost:8080/springbootpist4/upload/pingtaigonggao_tupian6.jpg'),
	(1619786879549, '2021-04-30 12:47:59', '萨达', '<p>的撒发</p>', '范德萨发', '2021-04-30', NULL);

DROP TABLE IF EXISTS `shipinfenxiang`;
CREATE TABLE IF NOT EXISTS `shipinfenxiang` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shipinmingcheng` varchar(200) DEFAULT NULL COMMENT '视频名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `shipinjianjie` longtext COMMENT '视频简介',
  `shipinneirong` longtext COMMENT '视频内容',
  `bofangshizhang` varchar(200) DEFAULT NULL COMMENT '播放时长',
  `zaixianshipin` varchar(200) DEFAULT NULL COMMENT '在线视频',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619786774228 DEFAULT CHARSET=utf8mb3 COMMENT='视频分享';

DELETE FROM `shipinfenxiang`;
INSERT INTO `shipinfenxiang` (`id`, `addtime`, `shipinmingcheng`, `leixing`, `shipinjianjie`, `shipinneirong`, `bofangshizhang`, `zaixianshipin`, `faburiqi`, `fengmian`, `zhanghao`, `xingming`, `sfsh`, `shhf`, `thumbsupnum`, `crazilynum`, `clicktime`, `clicknum`) VALUES
	(21, '2021-04-30 12:41:52', '视频名称1', '类型1', '视频简介1', '视频内容1', '播放时长1', '', '2021-04-30', 'http://localhost:8080/springbootpist4/upload/shipinfenxiang_fengmian1.jpg', '账号1', '姓名1', '是', '', 2, 1, '2024-02-10 16:52:14', 5),
	(22, '2021-04-30 12:41:52', '视频名称2', '类型2', '视频简介2', '视频内容2', '播放时长2', '', '2021-04-30', 'http://localhost:8080/springbootpist4/upload/shipinfenxiang_fengmian2.jpg', '账号2', '姓名2', '是', '', 2, 2, '2021-04-30 20:41:52', 2),
	(23, '2021-04-30 12:41:52', '视频名称3', '类型3', '视频简介3', '视频内容3', '播放时长3', '', '2021-04-30', 'http://localhost:8080/springbootpist4/upload/shipinfenxiang_fengmian3.jpg', '账号3', '姓名3', '是', '', 3, 3, '2021-04-30 20:41:52', 3),
	(24, '2021-04-30 12:41:52', '视频名称4', '类型4', '视频简介4', '视频内容4', '播放时长4', '', '2021-04-30', 'http://localhost:8080/springbootpist4/upload/shipinfenxiang_fengmian4.jpg', '账号4', '姓名4', '是', '', 4, 4, '2021-04-30 20:41:52', 4),
	(25, '2021-04-30 12:41:52', '视频名称5', '类型5', '视频简介5', '视频内容5', '播放时长5', '', '2021-04-30', 'http://localhost:8080/springbootpist4/upload/shipinfenxiang_fengmian5.jpg', '账号5', '姓名5', '是', '', 5, 5, '2021-04-30 20:41:52', 5),
	(26, '2021-04-30 12:41:52', '视频名称6', '类型6', '视频简介6', '视频内容6', '播放时长6', '', '2021-04-30', 'http://localhost:8080/springbootpist4/upload/shipinfenxiang_fengmian6.jpg', '账号6', '姓名6', '是', '', 6, 6, '2021-04-30 20:41:52', 6),
	(1619786774227, '2021-04-30 12:46:14', '萨达', '类型1', '萨芬戴', '<p>FSAFDFDS </p>', '60分', NULL, '2021-04-22', NULL, '1', '1', '是', NULL, 0, 0, '2021-04-30 20:48:57', 1);

DROP TABLE IF EXISTS `shipinleixing`;
CREATE TABLE IF NOT EXISTS `shipinleixing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='视频类型';

DELETE FROM `shipinleixing`;
INSERT INTO `shipinleixing` (`id`, `addtime`, `leixing`) VALUES
	(51, '2021-04-30 12:41:53', '喜剧'),
	(52, '2021-04-30 12:41:53', '动作'),
	(53, '2021-04-30 12:41:53', '类型3'),
	(54, '2021-04-30 12:41:53', '类型4'),
	(55, '2021-04-30 12:41:53', '类型5'),
	(56, '2021-04-30 12:41:53', '类型6');

DROP TABLE IF EXISTS `shipinpaiming`;
CREATE TABLE IF NOT EXISTS `shipinpaiming` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shipinmingcheng` varchar(200) DEFAULT NULL COMMENT '视频名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `shipinjianjie` longtext COMMENT '视频简介',
  `bofangliang` int DEFAULT NULL COMMENT '播放量',
  `bofangshizhang` varchar(200) DEFAULT NULL COMMENT '播放时长',
  `zaixianshipin` varchar(200) DEFAULT NULL COMMENT '在线视频',
  `fabuzhe` varchar(200) DEFAULT NULL COMMENT '发布者',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619786861779 DEFAULT CHARSET=utf8mb3 COMMENT='视频排名';

DELETE FROM `shipinpaiming`;
INSERT INTO `shipinpaiming` (`id`, `addtime`, `shipinmingcheng`, `leixing`, `shipinjianjie`, `bofangliang`, `bofangshizhang`, `zaixianshipin`, `fabuzhe`, `faburiqi`, `fengmian`, `thumbsupnum`, `crazilynum`) VALUES
	(31, '2021-04-30 12:41:52', '视频名称1', '类型1', '视频简介1', 1, '播放时长1', '', '发布者1', '2021-04-30', 'http://localhost:8080/springbootpist4/upload/shipinpaiming_fengmian1.jpg', 2, 1),
	(32, '2021-04-30 12:41:52', '视频名称2', '类型2', '视频简介2', 2, '播放时长2', '', '发布者2', '2021-04-30', 'http://localhost:8080/springbootpist4/upload/shipinpaiming_fengmian2.jpg', 2, 2),
	(33, '2021-04-30 12:41:52', '视频名称3', '类型3', '视频简介3', 3, '播放时长3', '', '发布者3', '2021-04-30', 'http://localhost:8080/springbootpist4/upload/shipinpaiming_fengmian3.jpg', 3, 3),
	(34, '2021-04-30 12:41:52', '视频名称4', '类型4', '视频简介4', 4, '播放时长4', '', '发布者4', '2021-04-30', 'http://localhost:8080/springbootpist4/upload/shipinpaiming_fengmian4.jpg', 4, 4),
	(35, '2021-04-30 12:41:52', '视频名称5', '类型5', '视频简介5', 5, '播放时长5', '', '发布者5', '2021-04-30', 'http://localhost:8080/springbootpist4/upload/shipinpaiming_fengmian5.jpg', 5, 5),
	(36, '2021-04-30 12:41:52', '视频名称6', '类型6', '视频简介6', 6, '播放时长6', '', '发布者6', '2021-04-30', 'http://localhost:8080/springbootpist4/upload/shipinpaiming_fengmian6.jpg', 6, 6),
	(1619786861778, '2021-04-30 12:47:41', 'adsa', '类型1', '沙发等方式', 500000, '60分钟', NULL, '阿达', '2021-04-11', NULL, 0, 0);

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619786695639 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;
INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`) VALUES
	(1619786631651, '2021-04-30 12:43:51', 1619786592006, 21, 'shipinfenxiang', '视频名称1', 'http://localhost:8080/springbootpist4/upload/shipinfenxiang_fengmian1.jpg'),
	(1619786695638, '2021-04-30 12:44:55', 1619786592006, 31, 'shipinpaiming', '视频名称1', 'http://localhost:8080/springbootpist4/upload/shipinpaiming_fengmian1.jpg');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1619786592006, '1', 'yonghu', '用户', '5tapchd6negw8h7jssuahzvcto08xiks', '2021-04-30 12:43:33', '2021-04-30 13:48:52'),
	(2, 1, 'abo', 'users', '管理员', '6zuehh53y8s88o6bssl4axllndqmsunc', '2021-04-30 12:46:39', '2024-02-10 09:47:03'),
	(3, 11, '用户1', 'yonghu', '用户', 'cvqbleq3reknnve3yc4w7e9ic02bcpg5', '2024-02-10 08:53:21', '2024-02-10 09:53:21');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-04-30 12:41:53');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619786592007 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `xingbie`, `shouji`, `youxiang`, `shenfenzheng`) VALUES
	(11, '2021-04-30 12:41:52', '用户1', '123456', '姓名1', '男', '13823888881', '773890001@qq.com', '440300199101010001'),
	(12, '2021-04-30 12:41:52', '用户2', '123456', '姓名2', '男', '13823888882', '773890002@qq.com', '440300199202020002'),
	(13, '2021-04-30 12:41:52', '用户3', '123456', '姓名3', '男', '13823888883', '773890003@qq.com', '440300199303030003'),
	(14, '2021-04-30 12:41:52', '用户4', '123456', '姓名4', '男', '13823888884', '773890004@qq.com', '440300199404040004'),
	(15, '2021-04-30 12:41:52', '用户5', '123456', '姓名5', '男', '13823888885', '773890005@qq.com', '440300199505050005'),
	(16, '2021-04-30 12:41:52', '用户6', '123456', '姓名6', '男', '13823888886', '773890006@qq.com', '440300199606060006'),
	(1619786592006, '2021-04-30 12:43:12', '1', '1', '1', '男', NULL, NULL, NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
