DROP DATABASE IF EXISTS django5hna8;

CREATE DATABASE django5hna8 default character set utf8mb4 collate utf8mb4_general_ci;

USE django5hna8;

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`zhanghao` varchar(200) NOT NULL UNIQUE   COMMENT '账号',
	`mima` varchar(200) NOT NULL   COMMENT '密码',
	`xingming` varchar(200)    COMMENT '姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`shouji` varchar(200)    COMMENT '手机',
	`youxiang` varchar(200)    COMMENT '邮箱',
	`shenfenzheng` varchar(200)    COMMENT '身份证',
	`zhaopian` varchar(200)    COMMENT '照片',
	`money` float   default '0' COMMENT '余额',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

INSERT INTO yonghu(id,zhanghao,mima,xingming,xingbie,shouji,youxiang,shenfenzheng,zhaopian,money) VALUES(11,'用户1','123456','姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/django5hna8/upload/yonghu_zhaopian1.jpg',100);
INSERT INTO yonghu(id,zhanghao,mima,xingming,xingbie,shouji,youxiang,shenfenzheng,zhaopian,money) VALUES(12,'用户2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/django5hna8/upload/yonghu_zhaopian2.jpg',100);
INSERT INTO yonghu(id,zhanghao,mima,xingming,xingbie,shouji,youxiang,shenfenzheng,zhaopian,money) VALUES(13,'用户3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/django5hna8/upload/yonghu_zhaopian3.jpg',100);
INSERT INTO yonghu(id,zhanghao,mima,xingming,xingbie,shouji,youxiang,shenfenzheng,zhaopian,money) VALUES(14,'用户4','123456','姓名4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/django5hna8/upload/yonghu_zhaopian4.jpg',100);
INSERT INTO yonghu(id,zhanghao,mima,xingming,xingbie,shouji,youxiang,shenfenzheng,zhaopian,money) VALUES(15,'用户5','123456','姓名5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/django5hna8/upload/yonghu_zhaopian5.jpg',100);
INSERT INTO yonghu(id,zhanghao,mima,xingming,xingbie,shouji,youxiang,shenfenzheng,zhaopian,money) VALUES(16,'用户6','123456','姓名6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/django5hna8/upload/yonghu_zhaopian6.jpg',100);

DROP TABLE IF EXISTS `shangchenggonggao`;

CREATE TABLE `shangchenggonggao` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`gonggaobiaoti` varchar(200)    COMMENT '公告标题',
	`gonggaoleixing` varchar(200)    COMMENT '公告类型',
	`gonggaoneirong` longtext    COMMENT '公告内容',
	`fabushijian` date    COMMENT '发布时间',
	`faburen` varchar(200)    COMMENT '发布人',
	`fujian` varchar(200)    COMMENT '附件',
	`fengmian` varchar(200)    COMMENT '封面',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商城公告';

INSERT INTO shangchenggonggao(id,gonggaobiaoti,gonggaoleixing,gonggaoneirong,fabushijian,faburen,fujian,fengmian) VALUES(21,'公告标题1','公告类型1','公告内容1',CURRENT_TIMESTAMP,'发布人1','','http://localhost:8080/django5hna8/upload/shangchenggonggao_fengmian1.jpg');
INSERT INTO shangchenggonggao(id,gonggaobiaoti,gonggaoleixing,gonggaoneirong,fabushijian,faburen,fujian,fengmian) VALUES(22,'公告标题2','公告类型2','公告内容2',CURRENT_TIMESTAMP,'发布人2','','http://localhost:8080/django5hna8/upload/shangchenggonggao_fengmian2.jpg');
INSERT INTO shangchenggonggao(id,gonggaobiaoti,gonggaoleixing,gonggaoneirong,fabushijian,faburen,fujian,fengmian) VALUES(23,'公告标题3','公告类型3','公告内容3',CURRENT_TIMESTAMP,'发布人3','','http://localhost:8080/django5hna8/upload/shangchenggonggao_fengmian3.jpg');
INSERT INTO shangchenggonggao(id,gonggaobiaoti,gonggaoleixing,gonggaoneirong,fabushijian,faburen,fujian,fengmian) VALUES(24,'公告标题4','公告类型4','公告内容4',CURRENT_TIMESTAMP,'发布人4','','http://localhost:8080/django5hna8/upload/shangchenggonggao_fengmian4.jpg');
INSERT INTO shangchenggonggao(id,gonggaobiaoti,gonggaoleixing,gonggaoneirong,fabushijian,faburen,fujian,fengmian) VALUES(25,'公告标题5','公告类型5','公告内容5',CURRENT_TIMESTAMP,'发布人5','','http://localhost:8080/django5hna8/upload/shangchenggonggao_fengmian5.jpg');
INSERT INTO shangchenggonggao(id,gonggaobiaoti,gonggaoleixing,gonggaoneirong,fabushijian,faburen,fujian,fengmian) VALUES(26,'公告标题6','公告类型6','公告内容6',CURRENT_TIMESTAMP,'发布人6','','http://localhost:8080/django5hna8/upload/shangchenggonggao_fengmian6.jpg');

DROP TABLE IF EXISTS `gonggaoleixing`;

CREATE TABLE `gonggaoleixing` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`gonggaoleixing` varchar(200)    COMMENT '公告类型',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公告类型';

INSERT INTO gonggaoleixing(id,gonggaoleixing) VALUES(31,'公告类型1');
INSERT INTO gonggaoleixing(id,gonggaoleixing) VALUES(32,'公告类型2');
INSERT INTO gonggaoleixing(id,gonggaoleixing) VALUES(33,'公告类型3');
INSERT INTO gonggaoleixing(id,gonggaoleixing) VALUES(34,'公告类型4');
INSERT INTO gonggaoleixing(id,gonggaoleixing) VALUES(35,'公告类型5');
INSERT INTO gonggaoleixing(id,gonggaoleixing) VALUES(36,'公告类型6');

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`shangpinbianhao` varchar(200)  UNIQUE   COMMENT '商品编号',
	`shangpinmingcheng` varchar(200) NOT NULL   COMMENT '商品名称',
	`shangpinleibie` varchar(200)    COMMENT '商品类别',
	`guige` varchar(200)    COMMENT '规格',
	`chandi` varchar(200)    COMMENT '产地',
	`baozhiqi` varchar(200)    COMMENT '保质期',
	`shuliang` int    COMMENT '数量',
	`shangpinxiangqing` longtext    COMMENT '商品详情',
	`tupian` varchar(200) NOT NULL   COMMENT '图片',
	`clicktime` datetime    COMMENT '最近点击时间',
	`clicknum` int   default '0' COMMENT '点击次数',
	`price` float NOT NULL   COMMENT '价格',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品信息';

INSERT INTO shangpinxinxi(id,shangpinbianhao,shangpinmingcheng,shangpinleibie,guige,chandi,baozhiqi,shuliang,shangpinxiangqing,tupian,clicktime,clicknum,price) VALUES(41,'商品编号1','商品名称1','商品类别1','规格1','产地1','保质期1',1,'商品详情1','http://localhost:8080/django5hna8/upload/shangpinxinxi_tupian1.jpg',CURRENT_TIMESTAMP,1,99.9);
INSERT INTO shangpinxinxi(id,shangpinbianhao,shangpinmingcheng,shangpinleibie,guige,chandi,baozhiqi,shuliang,shangpinxiangqing,tupian,clicktime,clicknum,price) VALUES(42,'商品编号2','商品名称2','商品类别2','规格2','产地2','保质期2',2,'商品详情2','http://localhost:8080/django5hna8/upload/shangpinxinxi_tupian2.jpg',CURRENT_TIMESTAMP,2,99.9);
INSERT INTO shangpinxinxi(id,shangpinbianhao,shangpinmingcheng,shangpinleibie,guige,chandi,baozhiqi,shuliang,shangpinxiangqing,tupian,clicktime,clicknum,price) VALUES(43,'商品编号3','商品名称3','商品类别3','规格3','产地3','保质期3',3,'商品详情3','http://localhost:8080/django5hna8/upload/shangpinxinxi_tupian3.jpg',CURRENT_TIMESTAMP,3,99.9);
INSERT INTO shangpinxinxi(id,shangpinbianhao,shangpinmingcheng,shangpinleibie,guige,chandi,baozhiqi,shuliang,shangpinxiangqing,tupian,clicktime,clicknum,price) VALUES(44,'商品编号4','商品名称4','商品类别4','规格4','产地4','保质期4',4,'商品详情4','http://localhost:8080/django5hna8/upload/shangpinxinxi_tupian4.jpg',CURRENT_TIMESTAMP,4,99.9);
INSERT INTO shangpinxinxi(id,shangpinbianhao,shangpinmingcheng,shangpinleibie,guige,chandi,baozhiqi,shuliang,shangpinxiangqing,tupian,clicktime,clicknum,price) VALUES(45,'商品编号5','商品名称5','商品类别5','规格5','产地5','保质期5',5,'商品详情5','http://localhost:8080/django5hna8/upload/shangpinxinxi_tupian5.jpg',CURRENT_TIMESTAMP,5,99.9);
INSERT INTO shangpinxinxi(id,shangpinbianhao,shangpinmingcheng,shangpinleibie,guige,chandi,baozhiqi,shuliang,shangpinxiangqing,tupian,clicktime,clicknum,price) VALUES(46,'商品编号6','商品名称6','商品类别6','规格6','产地6','保质期6',6,'商品详情6','http://localhost:8080/django5hna8/upload/shangpinxinxi_tupian6.jpg',CURRENT_TIMESTAMP,6,99.9);

DROP TABLE IF EXISTS `shangpinleibie`;

CREATE TABLE `shangpinleibie` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`shangpinleibie` varchar(200)    COMMENT '商品类别',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品类别';

INSERT INTO shangpinleibie(id,shangpinleibie) VALUES(51,'商品类别1');
INSERT INTO shangpinleibie(id,shangpinleibie) VALUES(52,'商品类别2');
INSERT INTO shangpinleibie(id,shangpinleibie) VALUES(53,'商品类别3');
INSERT INTO shangpinleibie(id,shangpinleibie) VALUES(54,'商品类别4');
INSERT INTO shangpinleibie(id,shangpinleibie) VALUES(55,'商品类别5');
INSERT INTO shangpinleibie(id,shangpinleibie) VALUES(56,'商品类别6');

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`adminid` bigint    COMMENT '管理员id',
	`ask` longtext    COMMENT '提问',
	`reply` longtext    COMMENT '回复',
	`isreply` int    COMMENT '是否回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客服中心';

INSERT INTO chat(id,userid,adminid,ask,reply,isreply) VALUES(61,1,1,'提问1','回复1',1);
INSERT INTO chat(id,userid,adminid,ask,reply,isreply) VALUES(62,2,2,'提问2','回复2',2);
INSERT INTO chat(id,userid,adminid,ask,reply,isreply) VALUES(63,3,3,'提问3','回复3',3);
INSERT INTO chat(id,userid,adminid,ask,reply,isreply) VALUES(64,4,4,'提问4','回复4',4);
INSERT INTO chat(id,userid,adminid,ask,reply,isreply) VALUES(65,5,5,'提问5','回复5',5);
INSERT INTO chat(id,userid,adminid,ask,reply,isreply) VALUES(66,6,6,'提问6','回复6',6);

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`tablename` varchar(200)   default 'shangpinxinxi' COMMENT '商品表名',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`goodid` bigint NOT NULL   COMMENT '商品id',
	`goodname` varchar(200)    COMMENT '商品名称',
	`picture` varchar(200)    COMMENT '图片',
	`buynumber` int NOT NULL   COMMENT '购买数量',
	`price` float    COMMENT '单价',
	`discountprice` float    COMMENT '会员价',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';


DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`orderid` varchar(200) NOT NULL UNIQUE   COMMENT '订单编号',
	`tablename` varchar(200)   default 'shangpinxinxi' COMMENT '商品表名',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`goodid` bigint NOT NULL   COMMENT '商品id',
	`goodname` varchar(200)    COMMENT '商品名称',
	`picture` varchar(200)    COMMENT '商品图片',
	`buynumber` int NOT NULL   COMMENT '购买数量',
	`price` float NOT NULL  default '0' COMMENT '价格/积分',
	`discountprice` float   default '0' COMMENT '折扣价格',
	`total` float NOT NULL  default '0' COMMENT '总价格/总积分',
	`discounttotal` float   default '0' COMMENT '折扣总价格',
	`type` int   default '1' COMMENT '支付类型',
	`status` varchar(200)    COMMENT '状态',
	`address` varchar(200)    COMMENT '地址',
	`tel` varchar(200)    COMMENT '电话',
	`consignee` varchar(200)    COMMENT '收货人',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';


DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`address` varchar(200) NOT NULL   COMMENT '地址',
	`name` varchar(200) NOT NULL   COMMENT '收货人',
	`phone` varchar(200) NOT NULL   COMMENT '电话',
	`isdefault` varchar(200) NOT NULL   COMMENT '是否默认地址[是/否]',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地址';

INSERT INTO `address`(id,userid,address,name,phone,isdefault) VALUES (1, 1, '宇宙银河系金星1号', '金某', '13823888881', '是');
INSERT INTO `address`(id,userid,address,name,phone,isdefault) VALUES (2, 2, '宇宙银河系木星1号', '木某', '13823888882', '是');
INSERT INTO `address`(id,userid,address,name,phone,isdefault) VALUES (3, 3, '宇宙银河系水星1号', '水某', '13823888883', '是');
INSERT INTO `address`(id,userid,address,name,phone,isdefault) VALUES (4, 4, '宇宙银河系火星1号', '火某', '13823888884', '是');
INSERT INTO `address`(id,userid,address,name,phone,isdefault) VALUES (5, 5, '宇宙银河系土星1号', '土某', '13823888885', '是');
INSERT INTO `address`(id,userid,address,name,phone,isdefault) VALUES (6, 6, '宇宙银河系月球1号', '月某', '13823888886', '是');

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`refid` bigint    COMMENT '收藏id',
	`tablename` varchar(200)    COMMENT '表名',
	`name` varchar(200) NOT NULL   COMMENT '收藏名称',
	`picture` varchar(200) NOT NULL   COMMENT '收藏图片',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';


DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`title` varchar(200) NOT NULL   COMMENT '标题',
	`introduction` longtext    COMMENT '简介',
	`picture` varchar(200) NOT NULL   COMMENT '图片',
	`content` longtext NOT NULL   COMMENT '内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='最新资讯';

INSERT INTO news(id,title,introduction,picture,content) VALUES(111,'标题1','简介1','http://localhost:8080/django5hna8/upload/news_picture1.jpg','内容1');
INSERT INTO news(id,title,introduction,picture,content) VALUES(112,'标题2','简介2','http://localhost:8080/django5hna8/upload/news_picture2.jpg','内容2');
INSERT INTO news(id,title,introduction,picture,content) VALUES(113,'标题3','简介3','http://localhost:8080/django5hna8/upload/news_picture3.jpg','内容3');
INSERT INTO news(id,title,introduction,picture,content) VALUES(114,'标题4','简介4','http://localhost:8080/django5hna8/upload/news_picture4.jpg','内容4');
INSERT INTO news(id,title,introduction,picture,content) VALUES(115,'标题5','简介5','http://localhost:8080/django5hna8/upload/news_picture5.jpg','内容5');
INSERT INTO news(id,title,introduction,picture,content) VALUES(116,'标题6','简介6','http://localhost:8080/django5hna8/upload/news_picture6.jpg','内容6');

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`nickname` varchar(200)    COMMENT '用户名',
	`content` longtext NOT NULL   COMMENT '评论内容',
	`reply` longtext    COMMENT '回复内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';

INSERT INTO discussshangpinxinxi(id,refid,userid,nickname,content,reply) VALUES(121,1,1,'用户名1','评论内容1','回复内容1');
INSERT INTO discussshangpinxinxi(id,refid,userid,nickname,content,reply) VALUES(122,2,2,'用户名2','评论内容2','回复内容2');
INSERT INTO discussshangpinxinxi(id,refid,userid,nickname,content,reply) VALUES(123,3,3,'用户名3','评论内容3','回复内容3');
INSERT INTO discussshangpinxinxi(id,refid,userid,nickname,content,reply) VALUES(124,4,4,'用户名4','评论内容4','回复内容4');
INSERT INTO discussshangpinxinxi(id,refid,userid,nickname,content,reply) VALUES(125,5,5,'用户名5','评论内容5','回复内容5');
INSERT INTO discussshangpinxinxi(id,refid,userid,nickname,content,reply) VALUES(126,6,6,'用户名6','评论内容6','回复内容6');


DROP TABLE IF EXISTS `config`;

CREATE TABLE `config`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`name` varchar(100) NOT NULL COMMENT '配置参数名称',
	`value` varchar(100) COMMENT '配置参数值',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

insert into config(id,name,value) values(1,'picture1','http://localhost:8080/django5hna8/upload/picture1.jpg');
insert into config(id,name,value) values(2,'picture2','http://localhost:8080/django5hna8/upload/picture2.jpg');
insert into config(id,name,value) values(3,'picture3','http://localhost:8080/django5hna8/upload/picture3.jpg');
insert into config(id,name) values(6,'homepage');


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`password` varchar(100) NOT NULL COMMENT '密码',
	`role` varchar(100) default '管理员' COMMENT '角色',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into users(id,username, password) values(1,'abo','abo');


