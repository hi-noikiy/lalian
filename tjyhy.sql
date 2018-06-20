/*
Navicat MySQL Data Transfer

Source Server         : svn
Source Server Version : 50556
Source Host           : 192.168.1.2:3306
Source Database       : tjyhy

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2017-12-12 09:26:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tw_admin
-- ----------------------------
DROP TABLE IF EXISTS `tw_admin`;
CREATE TABLE `tw_admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL DEFAULT '',
  `username` char(16) NOT NULL,
  `nickname` varchar(50) NOT NULL DEFAULT '',
  `moble` varchar(50) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL,
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0',
  `last_login_ip` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

-- ----------------------------
-- Records of tw_admin
-- ----------------------------
INSERT INTO `tw_admin` VALUES ('1', '', 'admin', '', '', '821f3157e1a3456bfe1a000a1adf0862', '0', '0', '0', '0', '0', '1');

-- ----------------------------
-- Table structure for tw_adver
-- ----------------------------
DROP TABLE IF EXISTS `tw_adver`;
CREATE TABLE `tw_adver` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `img` varchar(100) NOT NULL DEFAULT '',
  `type` varchar(50) NOT NULL DEFAULT '',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `look` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 电脑端 1手机端',
  `fenlei` int(1) DEFAULT '0' COMMENT '0中文1英文',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='广告图片表';

-- ----------------------------
-- Records of tw_adver
-- ----------------------------
INSERT INTO `tw_adver` VALUES ('2', 'm-banner', '', 'http://tupiancw.oss-cn-beijing.aliyuncs.com/hyjy/banner.jpg', '', '0', '1509984000', '1511417032', '1', '1', '0');
INSERT INTO `tw_adver` VALUES ('3', 'm-banner1', '', 'http://tupiancw.oss-cn-beijing.aliyuncs.com/hyjy/banner.jpg', '', '0', '1512094655', '1512094656', '1', '1', '0');
INSERT INTO `tw_adver` VALUES ('4', 'p-banner', '', 'http://tupiancw.oss-cn-beijing.aliyuncs.com/hyjy/p-banner2.png', '', '0', '1512057600', '1512057600', '1', '0', '0');
INSERT INTO `tw_adver` VALUES ('5', 'e-banner', '', 'http://tupiancw.oss-cn-beijing.aliyuncs.com/hyjy/p-banner2.png', '', '0', '1512057600', '1512057600', '1', '0', '1');
INSERT INTO `tw_adver` VALUES ('6', 'e-mbanner', '', 'http://tupiancw.oss-cn-beijing.aliyuncs.com/hyjy/sybnaner.jpg', '', '0', '1512057600', '1512057600', '1', '1', '1');
INSERT INTO `tw_adver` VALUES ('7', 'm-banner2', '', 'http://tupiancw.oss-cn-beijing.aliyuncs.com/hyjy/sybnaner.jpg', '', '0', '1512057600', '1512057600', '1', '1', '1');

-- ----------------------------
-- Table structure for tw_article
-- ----------------------------
DROP TABLE IF EXISTS `tw_article`;
CREATE TABLE `tw_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8,
  `adminid` int(10) unsigned NOT NULL DEFAULT '1',
  `type` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `footer` int(11) unsigned NOT NULL DEFAULT '0',
  `index` int(11) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `img` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title_en` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content_en` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `type` (`type`),
  KEY `adminid` (`adminid`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tw_article
-- ----------------------------
INSERT INTO `tw_article` VALUES ('33', '法律声明', '', '1', 'aboutus', '0', '1', '1', '2', '1503825988', '1503763200', '0', '', '', null);
INSERT INTO `tw_article` VALUES ('34', '免责声明', '', '1', 'aboutus', '0', '1', '1', '3', '1503826010', '1503763200', '0', '', '', null);
INSERT INTO `tw_article` VALUES ('35', '注册指南', '<p>2121212121</p>', '1', 'firstclass', '0', '1', '1', '0', '1503826557', '1503763200', '1', '', '', null);
INSERT INTO `tw_article` VALUES ('36', '交易指南', '', '1', 'firstclass', '0', '1', '1', '0', '1503826599', '1503763200', '1', '', '', null);
INSERT INTO `tw_article` VALUES ('37', '充值提现', '<p>本平台是币币交易平台，暂不支持法币直接参与充值提现，只支持莱特币(LTC)、比特币(BTC)、超级现金(BCC)、建设链(BECC)、币付币(CPC)的充值提现业务。敬请谅解！</p>', '1', 'notice', '0', '1', '1', '1', '1506159428', '1506159428', '0', '', 'Deposit and Withdraw', '<p>Deposit and Withdraw</p>');
INSERT INTO `tw_article` VALUES ('39', '转币指南', '', '1', 'firstclass', '0', '1', '1', '0', '1503826766', '1503763200', '1', '', '', null);
INSERT INTO `tw_article` VALUES ('40', '交易手续费', '', '1', 'firstclass', '0', '1', '1', '0', '1503826855', '1503763200', '1', '', '', null);
INSERT INTO `tw_article` VALUES ('74', '收不到邮件怎么办？', '', '1', 'faq', '0', '0', '0', '100', '1501743208', '1501689600', '0', '', '', null);
INSERT INTO `tw_article` VALUES ('75', '用户注册', '', '1', 'firstclass', '0', '1', '1', '1', '1503818514', '1503799200', '0', '', '', null);
INSERT INTO `tw_article` VALUES ('77', '费用说明', '', '1', 'aboutus', '0', '1', '1', '4', '1503546836', '1503504000', '1', '', 'Cost statement', '');
INSERT INTO `tw_article` VALUES ('91', '用户注册协议', '<p>用户注册协议<br/></p>', '1', 'aboutus', '0', '1', '1', '1', '1503847449', '1503763200', '1', '', 'User agreement', '<p>User agreement</p>');
INSERT INTO `tw_article` VALUES ('107', '公告测试标题', '<p>公告测试标题</p>', '1', 'notice', '0', '1', '1', '0', '1511770887', '1511712000', '1', '', '', null);
INSERT INTO `tw_article` VALUES ('108', '官方公告测试标题', '<p>官方公告测试标题2</p>', '1', 'notice', '0', '1', '1', '0', '1511771031', '1511712000', '1', '', 'The official announcement', '<p>The official announcement</p>');
INSERT INTO `tw_article` VALUES ('109', '如何看懂K线图', '<p>如何看懂K线图</p>', '1', 'Kline', '0', '1', '1', '0', '1511922831', '1511884800', '1', '', 'How do you understand the K diagram', '<p>How do you understand the K diagram</p>');
INSERT INTO `tw_article` VALUES ('110', '关于我们', '<p>关于我们</p>', '1', 'aboutus', '0', '1', '1', '0', '1511940317', '1511884800', '1', '', 'About us', null);

-- ----------------------------
-- Table structure for tw_article_type
-- ----------------------------
DROP TABLE IF EXISTS `tw_article_type`;
CREATE TABLE `tw_article_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `remark` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `index` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `footer` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `shang` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8_unicode_ci,
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` int(4) NOT NULL DEFAULT '0',
  `title_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tw_article_type
-- ----------------------------
INSERT INTO `tw_article_type` VALUES ('25', 'firstclass', '交易入门', '', '0', '0', '', '', '0', '1492617600', '1492617600', '1', 'Trading introductory');
INSERT INTO `tw_article_type` VALUES ('26', 'faq', '常见问题', '', '1', '0', '', '<p>常见问题<br/></p>', '0', '1492012800', '1492617600', '0', '');
INSERT INTO `tw_article_type` VALUES ('27', 'aboutus', '关于我们', '', '1', '1', '', '<p>关于我们。</p>', '1', '1492790400', '1492790400', '1', 'About us');
INSERT INTO `tw_article_type` VALUES ('30', 'notice', '官方公告', '', '1', '0', '', '<p>系统内测公告</p>', '1', '1494950400', '1494950400', '1', 'Announcement');
INSERT INTO `tw_article_type` VALUES ('31', 'hyzx', '行业资讯', '', '1', '0', '', '', '1', '1494950400', '1494950400', '1', 'Industry information');
INSERT INTO `tw_article_type` VALUES ('32', 'news', '新闻资讯', '', '1', '0', '', '', '1', '1492617600', '1492617600', '1', 'News information');
INSERT INTO `tw_article_type` VALUES ('35', 'Kline', '玩转K线', '', '1', '1', '', '<p>玩转K线</p>', '0', '1511884800', '1511884800', '1', 'K line');

-- ----------------------------
-- Table structure for tw_auth_extend
-- ----------------------------
DROP TABLE IF EXISTS `tw_auth_extend`;
CREATE TABLE `tw_auth_extend` (
  `group_id` mediumint(10) unsigned NOT NULL COMMENT '用户id',
  `extend_id` mediumint(8) unsigned NOT NULL COMMENT '扩展表中数据的id',
  `type` tinyint(1) unsigned NOT NULL COMMENT '扩展类型标识 1:栏目分类权限;2:模型权限',
  UNIQUE KEY `group_extend_type` (`group_id`,`extend_id`,`type`),
  KEY `uid` (`group_id`),
  KEY `group_id` (`extend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tw_auth_extend
-- ----------------------------
INSERT INTO `tw_auth_extend` VALUES ('1', '1', '1');
INSERT INTO `tw_auth_extend` VALUES ('1', '1', '2');
INSERT INTO `tw_auth_extend` VALUES ('1', '2', '1');
INSERT INTO `tw_auth_extend` VALUES ('1', '2', '2');
INSERT INTO `tw_auth_extend` VALUES ('1', '3', '1');
INSERT INTO `tw_auth_extend` VALUES ('1', '3', '2');
INSERT INTO `tw_auth_extend` VALUES ('1', '4', '1');
INSERT INTO `tw_auth_extend` VALUES ('1', '37', '1');

-- ----------------------------
-- Table structure for tw_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `tw_auth_group`;
CREATE TABLE `tw_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组id,自增主键',
  `module` varchar(20) NOT NULL COMMENT '用户组所属模块',
  `type` tinyint(4) NOT NULL COMMENT '组类型',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '用户组中文名称',
  `description` varchar(80) NOT NULL DEFAULT '' COMMENT '描述信息',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户组状态：为1正常，为0禁用,-1为删除',
  `rules` varchar(500) NOT NULL DEFAULT '' COMMENT '用户组拥有的规则id，多个规则 , 隔开',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tw_auth_group
-- ----------------------------
INSERT INTO `tw_auth_group` VALUES ('1', 'admin', '1', '资讯管理员', '拥有网站文章资讯相关权限', '-1', '424,426,431,441,446,449,453,461,475,501,502,503,508,509,510,515,516');
INSERT INTO `tw_auth_group` VALUES ('2', 'admin', '1', '财务管理组', '拥有网站资金相关的权限', '-1', '431');
INSERT INTO `tw_auth_group` VALUES ('4', 'admin', '1', '资讯管理员', '拥有网站文章资讯相关权限11', '-1', '');
INSERT INTO `tw_auth_group` VALUES ('11', 'admin', '1', 'superadmin', '超级管理员', '0', '');
INSERT INTO `tw_auth_group` VALUES ('12', 'admin', '1', 'caiwu', '财务管理', '0', '1721,1722,1724,1731,1732,1733,1734,1735,1736,1739,1740,1764,1765,1767,1779,1780,1783,1786,1787,1788,1789,1800,1803,1806,1808,1810,1819,1821,1822,1845,1846,1864,1865,1866,1869,1876,1877,1878,1879,1880,1881,1882');
INSERT INTO `tw_auth_group` VALUES ('14', 'admin', '1', 'neirong', '内容管理', '0', '');
INSERT INTO `tw_auth_group` VALUES ('15', 'admin', '1', 'neirong', '内容管理', '0', '');
INSERT INTO `tw_auth_group` VALUES ('16', 'admin', '1', 'neirong', '内容管理', '0', '');
INSERT INTO `tw_auth_group` VALUES ('17', 'admin', '1', 'neirong', '内容管理', '1', '');

-- ----------------------------
-- Table structure for tw_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `tw_auth_group_access`;
CREATE TABLE `tw_auth_group_access` (
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `group_id` mediumint(8) unsigned NOT NULL COMMENT '用户组id',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tw_auth_group_access
-- ----------------------------
INSERT INTO `tw_auth_group_access` VALUES ('3', '2');
INSERT INTO `tw_auth_group_access` VALUES ('1', '11');
INSERT INTO `tw_auth_group_access` VALUES ('2', '12');
INSERT INTO `tw_auth_group_access` VALUES ('4', '12');
INSERT INTO `tw_auth_group_access` VALUES ('5', '14');

-- ----------------------------
-- Table structure for tw_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `tw_auth_rule`;
CREATE TABLE `tw_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `module` varchar(20) NOT NULL COMMENT '规则所属module',
  `type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1-url;2-主菜单',
  `name` char(80) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '规则中文描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `condition` varchar(300) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  KEY `module` (`module`,`status`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=1897 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tw_auth_rule
-- ----------------------------
INSERT INTO `tw_auth_rule` VALUES ('425', 'admin', '1', 'Admin/article/add', '新增', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('427', 'admin', '1', 'Admin/article/setStatus', '改变状态', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('428', 'admin', '1', 'Admin/article/update', '保存', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('429', 'admin', '1', 'Admin/article/autoSave', '保存草稿', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('430', 'admin', '1', 'Admin/article/move', '移动', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('432', 'admin', '2', 'Admin/Article/mydocument', '内容', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('437', 'admin', '1', 'Admin/Trade/config', '交易配置', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('449', 'admin', '1', 'Admin/Index/operate', '市场统计', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('455', 'admin', '1', 'Admin/Issue/config', '认购配置', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('457', 'admin', '1', 'Admin/Index/database/type/export', '数据备份', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('461', 'admin', '1', 'Admin/Article/chat', '聊天列表', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('464', 'admin', '1', 'Admin/Index/database/type/import', '数据还原', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('471', 'admin', '1', 'Admin/Mytx/config', '提现配置', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('472', 'admin', '2', 'Admin/Mytx/index', '提现', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('473', 'admin', '1', 'Admin/Config/market', '市场配置', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('477', 'admin', '1', 'Admin/User/myzr', '转入虚拟币', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('479', 'admin', '1', 'Admin/User/myzc', '转出虚拟币', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('482', 'admin', '2', 'Admin/ExtA/index', '扩展', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('488', 'admin', '1', 'Admin/Auth_manager/createGroup', '新增用户组', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('499', 'admin', '1', 'Admin/ExtA/index', '扩展管理', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('509', 'admin', '1', 'Admin/Article/adver_edit', '编辑', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('510', 'admin', '1', 'Admin/Article/adver_status', '修改', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('513', 'admin', '1', 'Admin/Issue/index_edit', '认购编辑', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('514', 'admin', '1', 'Admin/Issue/index_status', '认购修改', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('515', 'admin', '1', 'Admin/Article/chat_edit', '编辑', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('516', 'admin', '1', 'Admin/Article/chat_status', '修改', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('517', 'admin', '1', 'Admin/User/coin_edit', 'coin修改', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('519', 'admin', '1', 'Admin/Mycz/type_status', '状态修改', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('520', 'admin', '1', 'Admin/Issue/log_status', '认购状态', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('521', 'admin', '1', 'Admin/Issue/log_jiedong', '认购解冻', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('522', 'admin', '1', 'Admin/Tools/database/type/export', '数据备份', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('525', 'admin', '1', 'Admin/Config/coin_edit', '编辑', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('526', 'admin', '1', 'Admin/Config/coin_add', '编辑币种', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('527', 'admin', '1', 'Admin/Config/coin_status', '状态修改', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('528', 'admin', '1', 'Admin/Config/market_edit', '编辑', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('530', 'admin', '1', 'Admin/Tools/database/type/import', '数据还原', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('541', 'admin', '2', 'Admin/Trade/config', '交易', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('569', 'admin', '1', 'Admin/ADVERstatus', '修改', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('570', 'admin', '1', 'Admin/Tradelog/index', '交易记录', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('585', 'admin', '1', 'Admin/Config/mycz', '充值配置', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('590', 'admin', '1', 'Admin/Mycztype/index', '充值类型', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('600', 'admin', '1', 'Admin/Usergoods/index', '用户联系地址', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1379', 'admin', '1', 'Admin/Bazaar/index', '集市管理', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1405', 'admin', '1', 'Admin/Bazaar/config', '集市配置', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1425', 'admin', '1', 'Admin/Bazaar/log', '集市记录', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1451', 'admin', '1', 'Admin/Bazaar/invit', '集市推广', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1519', 'admin', '2', 'Admin/Finance/index', '财务', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1575', 'admin', '1', 'Admin/Shop/index', '商品管理', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1576', 'admin', '1', 'Admin/Issue/index', '认购管理', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1577', 'admin', '1', 'Admin/Issue/log', '认购记录', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1578', 'admin', '1', 'Admin/Huafei/index', '充值记录', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1579', 'admin', '1', 'Admin/Huafei/config', '充值配置', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1580', 'admin', '1', 'Admin/Vote/index', '投票记录', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1581', 'admin', '1', 'Admin/Vote/type', '投票类型', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1582', 'admin', '1', 'Admin/Money/index', '理财管理', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1599', 'admin', '1', 'Admin/Config/moble', '短信配置', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1606', 'admin', '1', 'Admin/Shop/config', '商城配置', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1607', 'admin', '1', 'Admin/Money/log', '理财日志', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1623', 'admin', '1', 'Admin/Shop/type', '商品类型', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1624', 'admin', '1', 'Admin/Fenhong/index', '分红管理', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1625', 'admin', '1', 'Admin/Huafei/type', '充值金额', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1626', 'admin', '1', 'Admin/Money/fee', '理财明细', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1651', 'admin', '1', 'Admin/Shop/coin', '付款方式', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1652', 'admin', '1', 'Admin/Huafei/coin', '付款方式', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1673', 'admin', '1', 'Admin/Shop/log', '购物记录', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1674', 'admin', '1', 'Admin/Fenhong/log', '分红记录', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1681', 'admin', '1', 'Admin/Shop/goods', '收货地址', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1701', 'admin', '1', 'Admin/AuthManager/createGroup', '新增用户组', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1702', 'admin', '1', 'Admin/AuthManager/editgroup', '编辑用户组', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1703', 'admin', '1', 'Admin/AuthManager/writeGroup', '更新用户组', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1704', 'admin', '1', 'Admin/AuthManager/changeStatus', '改变状态', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1705', 'admin', '1', 'Admin/AuthManager/access', '访问授权', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1706', 'admin', '1', 'Admin/AuthManager/category', '分类授权', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1707', 'admin', '1', 'Admin/AuthManager/user', '成员授权', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1708', 'admin', '1', 'Admin/AuthManager/tree', '成员列表授权', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1709', 'admin', '1', 'Admin/AuthManager/group', '用户组', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1710', 'admin', '1', 'Admin/AuthManager/addToGroup', '添加到用户组', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1711', 'admin', '1', 'Admin/AuthManager/removeFromGroup', '用户组移除', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1712', 'admin', '1', 'Admin/AuthManager/addToCategory', '分类添加到用户组', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1713', 'admin', '1', 'Admin/AuthManager/addToModel', '模型添加到用户组', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1714', 'admin', '1', 'Admin/Trade/status', '修改状态', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1715', 'admin', '1', 'Admin/Trade/chexiao', '撤销挂单', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1716', 'admin', '1', 'Admin/Shop/images', '图片', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1717', 'admin', '1', 'Admin/Login/index', '用户登录', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1718', 'admin', '1', 'Admin/Login/loginout', '用户退出', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1719', 'admin', '1', 'Admin/User/setpwd', '修改管理员密码', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1720', 'admin', '1', 'Admin/Analog/console', '行情调整', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1721', 'admin', '2', 'Admin/Index/index', '系统', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1722', 'admin', '2', 'Admin/Article/index', '内容', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1723', 'admin', '2', 'Admin/User/index', '用户', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1724', 'admin', '2', 'Admin/Finance/mycz', '财务', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1725', 'admin', '2', 'Admin/Trade/index', '交易', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1726', 'admin', '2', 'Admin/Game/index', '应用', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1727', 'admin', '2', 'Admin/Config/index', '设置', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1728', 'admin', '2', 'Admin/Operate/index', '运营', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1729', 'admin', '2', 'Admin/Tools/index', '工具', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1730', 'admin', '2', 'Admin/Cloud/index', '扩展', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1731', 'admin', '1', 'Admin/Index/index', '系统概览', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1732', 'admin', '1', 'Admin/Article/index', '文章管理', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1733', 'admin', '1', 'Admin/Article/edit', '编辑添加', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1734', 'admin', '1', 'Admin/Text/index', '提示文字', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1735', 'admin', '1', 'Admin/Text/edit', '编辑', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1736', 'admin', '1', 'Admin/Text/status', '修改', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1737', 'admin', '1', 'Admin/User/index', '用户管理', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1738', 'admin', '1', 'Admin/User/config', '用户配置', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1739', 'admin', '1', 'Admin/Finance/index', '财务明细', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1740', 'admin', '1', 'Admin/Finance/myczTypeEdit', '编辑添加', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1741', 'admin', '1', 'Admin/Cloud/index', '云市场', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1742', 'admin', '1', 'Admin/Finance/config', '配置', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1743', 'admin', '1', 'Admin/Tools/index', '清理缓存', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1744', 'admin', '1', 'Admin/Finance/type', '类型', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1745', 'admin', '1', 'Admin/Finance/type_status', '状态修改', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1746', 'admin', '1', 'Admin/User/edit', '编辑添加', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1747', 'admin', '1', 'Admin/User/status', '修改状态', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1748', 'admin', '1', 'Admin/User/adminEdit', '编辑添加', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1749', 'admin', '1', 'Admin/User/adminStatus', '修改状态', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1750', 'admin', '1', 'Admin/User/authEdit', '编辑添加', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1751', 'admin', '1', 'Admin/User/authStatus', '修改状态', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1752', 'admin', '1', 'Admin/User/authStart', '重新初始化权限', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1753', 'admin', '1', 'Admin/User/logEdit', '编辑添加', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1754', 'admin', '1', 'Admin/User/logStatus', '修改状态', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1755', 'admin', '1', 'Admin/User/qianbaoEdit', '编辑添加', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1756', 'admin', '1', 'Admin/Trade/index', '委托管理', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1757', 'admin', '1', 'Admin/User/qianbaoStatus', '修改状态', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1758', 'admin', '1', 'Admin/User/bankEdit', '编辑添加', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1759', 'admin', '1', 'Admin/User/bankStatus', '修改状态', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1760', 'admin', '1', 'Admin/User/coinEdit', '编辑添加', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1761', 'admin', '1', 'Admin/User/coinLog', '财产统计', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1762', 'admin', '1', 'Admin/User/goodsEdit', '编辑添加', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1763', 'admin', '1', 'Admin/User/goodsStatus', '修改状态', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1764', 'admin', '1', 'Admin/Article/typeEdit', '编辑添加', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1765', 'admin', '1', 'Admin/Article/youqingEdit', '编辑添加', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1766', 'admin', '1', 'Admin/Config/index', '基本配置', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1767', 'admin', '1', 'Admin/Article/adverEdit', '编辑添加', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1768', 'admin', '1', 'Admin/User/authAccess', '访问授权', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1769', 'admin', '1', 'Admin/User/authAccessUp', '访问授权修改', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1770', 'admin', '1', 'Admin/User/authUser', '成员授权', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1771', 'admin', '1', 'Admin/User/authUserAdd', '成员授权增加', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1772', 'admin', '1', 'Admin/User/authUserRemove', '成员授权解除', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1773', 'admin', '1', 'Admin/Operate/index', '推广奖励', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1774', 'admin', '1', 'Admin/App/config', 'APP配置', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1775', 'admin', '1', 'AdminUser/detail', '后台用户详情', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1776', 'admin', '1', 'AdminUser/status', '后台用户状态', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1777', 'admin', '1', 'AdminUser/add', '后台用户新增', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1778', 'admin', '1', 'AdminUser/edit', '后台用户编辑', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1779', 'admin', '1', 'Admin/Articletype/edit', '编辑', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1780', 'admin', '1', 'Admin/Article/images', '上传图片', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1781', 'admin', '1', 'Admin/Adver/edit', '编辑', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1782', 'admin', '1', 'Admin/Adver/status', '修改', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1783', 'admin', '1', 'Admin/Article/type', '文章类型', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1784', 'admin', '1', 'Admin/User/index_edit', '编辑', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1785', 'admin', '1', 'Admin/User/index_status', '修改', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1786', 'admin', '1', 'Admin/Finance/mycz', '人民币充值', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1787', 'admin', '1', 'Admin/Finance/myczTypeStatus', '状态修改', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1788', 'admin', '1', 'Admin/Finance/myczTypeImage', '上传图片', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1789', 'admin', '1', 'Admin/Finance/mytxStatus', '修改状态', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1790', 'admin', '1', 'Admin/Tools/dataExport', '备份数据库', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1791', 'admin', '1', 'Admin/Tools/dataImport', '还原数据库', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1792', 'admin', '1', 'Admin/User/admin', '管理员管理', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1793', 'admin', '1', 'Admin/Trade/log', '成交记录', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1794', 'admin', '1', 'Admin/Issue/edit', '认购编辑', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1795', 'admin', '1', 'Admin/Issue/status', '认购修改', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1796', 'admin', '1', 'Admin/Invit/config', '推广配置', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1797', 'admin', '1', 'Admin/App/vip_config_list', 'APP等级', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1798', 'admin', '1', 'Admin/Link/edit', '编辑', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1799', 'admin', '1', 'Admin/Link/status', '修改', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1800', 'admin', '1', 'Admin/Index/coin', '币种统计', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1801', 'admin', '1', 'Admin/Cloud/update', '自动升级', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1802', 'admin', '1', 'Admin/Config/mobile', '短信配置', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1803', 'admin', '1', 'Admin/Index/market', '市场统计', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1804', 'admin', '1', 'Admin/Chat/edit', '编辑', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1805', 'admin', '1', 'Admin/Chat/status', '修改', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1806', 'admin', '1', 'Admin/Article/adver', '广告管理', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1807', 'admin', '1', 'Admin/Trade/chat', '交易聊天', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1808', 'admin', '1', 'Admin/Finance/myczType', '人民币充值方式', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1809', 'admin', '1', 'Admin/Usercoin/edit', '财产修改', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1810', 'admin', '1', 'Admin/Finance/mytxExcel', '导出选中', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1811', 'admin', '1', 'Admin/User/auth', '权限列表', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1812', 'admin', '1', 'Admin/Mycz/status', '修改', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1813', 'admin', '1', 'Admin/Mycztype/status', '状态修改', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1814', 'admin', '1', 'Admin/Config/contact', '客服配置', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1815', 'admin', '1', 'Admin/App/adsblock_list', 'APP广告板块', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1816', 'admin', '1', 'Admin/Tools/queue', '服务器队列', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1817', 'admin', '1', 'Admin/Tools/qianbao', '钱包检查', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1818', 'admin', '1', 'Admin/Cloud/game', '应用管理', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1819', 'admin', '1', 'Admin/Article/youqing', '友情链接', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1820', 'admin', '1', 'Admin/User/log', '登陆日志', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1821', 'admin', '1', 'Admin/Finance/mytx', '人民币提现', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1822', 'admin', '1', 'Admin/Finance/mytxChuli', '正在处理', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1823', 'admin', '1', 'Admin/Config/bank', '银行配置', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1824', 'admin', '1', 'Admin/Config/bank_edit', '编辑', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1825', 'admin', '1', 'Admin/Coin/edit', '编辑', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1826', 'admin', '1', 'Admin/Coin/status', '状态修改', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1827', 'admin', '1', 'Admin/Market/edit', '编辑市场', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1828', 'admin', '1', 'Admin/Config/market_add', '状态修改', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1829', 'admin', '1', 'Admin/Tools/invoke', '其他模块调用', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1830', 'admin', '1', 'Admin/Tools/optimize', '优化表', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1831', 'admin', '1', 'Admin/Tools/repair', '修复表', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1832', 'admin', '1', 'Admin/Tools/del', '删除备份文件', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1833', 'admin', '1', 'Admin/Tools/export', '备份数据库', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1834', 'admin', '1', 'Admin/Tools/import', '还原数据库', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1835', 'admin', '1', 'Admin/Tools/excel', '导出数据库', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1836', 'admin', '1', 'Admin/Tools/exportExcel', '导出Excel', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1837', 'admin', '1', 'Admin/Tools/importExecl', '导入Excel', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1838', 'admin', '1', 'Admin/Config/coin', '币种配置', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1839', 'admin', '1', 'Admin/User/detail', '用户详情', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1840', 'admin', '1', 'Admin/App/ads_user', 'APP广告用户', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1841', 'admin', '1', 'Admin/Cloud/theme', '主题模板', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1842', 'admin', '1', 'Admin/Trade/comment', '币种评论', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1843', 'admin', '1', 'Admin/User/qianbao', '用户钱包', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1844', 'admin', '1', 'Admin/Trade/market', '交易市场', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1845', 'admin', '1', 'Admin/Finance/mytxConfig', '人民币提现配置', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1846', 'admin', '1', 'Admin/Finance/mytxChexiao', '撤销提现', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1847', 'admin', '1', 'Admin/Mytx/status', '状态修改', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1848', 'admin', '1', 'Admin/Mytx/excel', '取消', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1849', 'admin', '1', 'Admin/Mytx/exportExcel', '导入excel', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1850', 'admin', '1', 'Admin/Menu/index', '菜单管理', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1851', 'admin', '1', 'Admin/Menu/sort', '排序', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1852', 'admin', '1', 'Admin/Menu/add', '添加', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1853', 'admin', '1', 'Admin/Menu/edit', '编辑', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1854', 'admin', '1', 'Admin/Cloud/kefu', '客服代码', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1855', 'admin', '1', 'Admin/Menu/del', '删除', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1856', 'admin', '1', 'Admin/Cloud/kefuUp', '使用', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1857', 'admin', '1', 'Admin/Menu/toogleHide', '是否隐藏', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1858', 'admin', '1', 'Admin/Menu/toogleDev', '是否开发', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1859', 'admin', '1', 'Admin/Menu/importFile', '导入文件', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1860', 'admin', '1', 'Admin/Menu/import', '导入', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1861', 'admin', '1', 'Admin/Config/text', '提示文字', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1862', 'admin', '1', 'Admin/User/bank', '提现地址', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1863', 'admin', '1', 'Admin/Trade/invit', '交易推荐', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1864', 'admin', '1', 'Admin/Finance/myzr', '虚拟币转入', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1865', 'admin', '1', 'Admin/Finance/mytxQueren', '确认提现', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1866', 'admin', '1', 'Admin/Finance/myzcQueren', '确认转出', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1867', 'admin', '1', 'Admin/Config/qita', '其他配置', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1868', 'admin', '1', 'Admin/User/coin', '用户财产', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1869', 'admin', '1', 'Admin/Finance/myzc', '虚拟币转出', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1870', 'admin', '1', 'Admin/Verify/code', '图形验证码', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1871', 'admin', '1', 'Admin/Verify/mobile', '手机验证码', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1872', 'admin', '1', 'Admin/Verify/email', '邮件验证码', '-1', '');
INSERT INTO `tw_auth_rule` VALUES ('1873', 'admin', '1', 'Admin/Config/daohang', '导航配置', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1874', 'admin', '1', 'Admin/User/myzc_qr', '确认转出', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1875', 'admin', '1', 'Admin/User/amountlog', '资金变更日志', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1876', 'admin', '1', 'Admin/Article/status', '修改状态', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1877', 'admin', '1', 'Admin/Finance/myczStatus', '修改状态', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1878', 'admin', '1', 'Admin/Finance/myczQueren', '确认到账', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1879', 'admin', '1', 'Admin/Article/typeStatus', '修改状态', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1880', 'admin', '1', 'Admin/Article/youqingStatus', '修改状态', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1881', 'admin', '1', 'Admin/Article/adverStatus', '修改状态', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1882', 'admin', '1', 'Admin/Article/adverImage', '上传图片', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1883', 'admin', '1', 'Admin/User/feedback', '用户反馈', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1884', 'admin', '1', 'Admin/Finance/myczExcel', '导出excel', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1885', 'admin', '1', 'Admin/Tools/recoverzc', '恢复自动转出队列', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1886', 'admin', '1', 'Admin/Tools/chkzdzc', '查看自动转出队列状态', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1887', 'admin', '1', 'Admin/Finance/myzcBatch', '批量转出', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1888', 'admin', '1', 'Admin/Finance/myzcBatchLog', '批量转出错误日志', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1889', 'admin', '1', 'Admin/Trade/tradeExcel', '导出excel', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1890', 'admin', '1', 'Admin/Trade/tradelogExcel', '导出excel', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1891', 'admin', '1', 'Admin/Finance/ethtransfer', '以太坊转账', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1892', 'admin', '1', 'Admin//Admin/User/nameauth', '实名审核', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1893', 'admin', '1', 'Admin/User/invittree', '推荐关系', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1894', 'admin', '1', 'Admin/Finance/tradePrize', '交易奖励', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1895', 'admin', '1', 'Admin/Finance/incentive', '鼓励金', '1', '');
INSERT INTO `tw_auth_rule` VALUES ('1896', 'admin', '2', 'Admin/Finance/myzr', '财务', '1', '');

-- ----------------------------
-- Table structure for tw_coin
-- ----------------------------
DROP TABLE IF EXISTS `tw_coin`;
CREATE TABLE `tw_coin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `img` varchar(100) NOT NULL DEFAULT '',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `fee_bili` varchar(50) NOT NULL DEFAULT '',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` int(4) unsigned NOT NULL DEFAULT '0',
  `fee_meitian` varchar(200) NOT NULL DEFAULT '' COMMENT '每天限制',
  `dj_zj` varchar(200) NOT NULL DEFAULT '',
  `dj_dk` varchar(200) NOT NULL DEFAULT '',
  `dj_yh` varchar(200) NOT NULL DEFAULT '',
  `dj_mm` varchar(200) NOT NULL DEFAULT '',
  `zr_zs` varchar(50) NOT NULL DEFAULT '',
  `zr_jz` varchar(50) NOT NULL DEFAULT '',
  `zr_dz` varchar(50) NOT NULL DEFAULT '',
  `zr_sm` varchar(50) NOT NULL DEFAULT '',
  `zc_sm` varchar(50) NOT NULL DEFAULT '',
  `zc_fee` decimal(12,5) NOT NULL DEFAULT '0.00000',
  `zc_user` varchar(50) NOT NULL DEFAULT '',
  `zc_min` decimal(20,5) NOT NULL DEFAULT '0.00000',
  `zc_max` decimal(20,5) NOT NULL DEFAULT '0.00000',
  `zc_jz` varchar(50) NOT NULL DEFAULT '',
  `zc_zd` varchar(50) NOT NULL DEFAULT '',
  `js_yw` varchar(50) NOT NULL DEFAULT '',
  `js_sm` text,
  `js_qb` varchar(50) NOT NULL DEFAULT '',
  `js_ym` varchar(50) NOT NULL DEFAULT '',
  `js_gw` varchar(50) NOT NULL DEFAULT '',
  `js_lt` varchar(50) NOT NULL DEFAULT '',
  `js_wk` varchar(50) NOT NULL DEFAULT '',
  `cs_yf` varchar(50) NOT NULL DEFAULT '',
  `cs_sf` varchar(50) NOT NULL DEFAULT '',
  `cs_fb` varchar(50) NOT NULL DEFAULT '',
  `cs_qk` varchar(50) NOT NULL DEFAULT '',
  `cs_zl` varchar(50) NOT NULL DEFAULT '',
  `cs_cl` varchar(50) NOT NULL DEFAULT '',
  `cs_zm` varchar(50) NOT NULL DEFAULT '',
  `cs_nd` varchar(50) NOT NULL DEFAULT '',
  `cs_jl` varchar(50) NOT NULL DEFAULT '',
  `cs_ts` varchar(50) NOT NULL DEFAULT '',
  `cs_bz` varchar(50) NOT NULL DEFAULT '',
  `tp_zs` varchar(50) NOT NULL DEFAULT '',
  `tp_js` varchar(50) NOT NULL DEFAULT '',
  `tp_yy` varchar(50) NOT NULL DEFAULT '',
  `tp_qj` varchar(50) NOT NULL DEFAULT '',
  `sh_zd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='币种配置表';

-- ----------------------------
-- Records of tw_coin
-- ----------------------------
INSERT INTO `tw_coin` VALUES ('3', 'btc', 'qbb', '比特币', 'http://tebtc.oss-ap-southeast-1.aliyuncs.com/upload/bitcoin.png', '0', '0', '0', '0', '1', '0', '127.0.0.1', '21234', 'abc', '123', '0', '1', '6', '', '', '0.20000', '1Pkagvrp88Z8XrvCfFT4xfwR34s8gMRnfv', '0.01000', '10000.00000', '1', '0.01', 'BitCoin', '<p>比特币介绍</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0');
INSERT INTO `tw_coin` VALUES ('4', 'ltc', 'qbb', '莱特币', 'http://tebtc.oss-ap-southeast-1.aliyuncs.com/upload/ltc.png', '0', '0', '0', '0', '1', '0', '127.0.0.1', '21234', 'abc', '123', '0', '1', '6', '', '', '0.20000', 'LaUNJ8GY7XXT3CcapCUF2ZcVjm1QbBJgQS', '0.10000', '10000.00000', '1', '0.01', 'LiteCoin', '<p>莱特币介绍</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0');
INSERT INTO `tw_coin` VALUES ('6', 'bcc', 'qbb', '比特币现金', 'http://tebtc.oss-ap-southeast-1.aliyuncs.com/upload/bcclogo.png', '0', '0', '0', '0', '1', '0', '127.0.0.1', '2931', 'abc', '123', '0', '1', '6', '', '', '0.20000', 'CGBDjtbhvUuBNZ5HeLKzJszTEwKCWCF4RE', '0.02000', '10000.00000', '1', '0.001', 'Bitcoin Cash', '<p>比特币现金详细介绍</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0');
INSERT INTO `tw_coin` VALUES ('8', 'eth', 'qbb', '以太坊', 'http://tebtc.oss-ap-southeast-1.aliyuncs.com/upload/eth.png', '0', '0', '0', '0', '0', '0', '127.0.0.1', '21234', 'abc', '123', '0', '1', '2', '', '', '0.00000', '', '0.00100', '10000.00000', '1', '0.001', 'Ethereum', '<p>以太坊介绍<br/></p>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0');

-- ----------------------------
-- Table structure for tw_coin_json
-- ----------------------------
DROP TABLE IF EXISTS `tw_coin_json`;
CREATE TABLE `tw_coin_json` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `data` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tw_coin_json
-- ----------------------------

-- ----------------------------
-- Table structure for tw_config
-- ----------------------------
DROP TABLE IF EXISTS `tw_config`;
CREATE TABLE `tw_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `footer_logo` varchar(200) NOT NULL DEFAULT '' COMMENT ' ',
  `kefu` varchar(200) NOT NULL DEFAULT '',
  `index_lejimum` varchar(200) NOT NULL DEFAULT '' COMMENT '设置',
  `login_verify` varchar(200) NOT NULL DEFAULT '' COMMENT '设置',
  `fee_meitian` varchar(200) NOT NULL DEFAULT '' COMMENT '设置',
  `top_name` varchar(200) NOT NULL DEFAULT '' COMMENT '设置',
  `web_name` varchar(200) NOT NULL DEFAULT '',
  `web_title` varchar(200) NOT NULL DEFAULT '',
  `web_logo` varchar(500) NOT NULL DEFAULT '',
  `web_llogo_small` varchar(200) NOT NULL DEFAULT '',
  `web_keywords` varchar(200) DEFAULT NULL,
  `web_description` varchar(200) DEFAULT NULL,
  `web_close` varchar(255) DEFAULT NULL,
  `web_close_cause` varchar(255) DEFAULT NULL,
  `web_icp` varchar(255) DEFAULT NULL,
  `web_cnzz` varchar(255) DEFAULT NULL,
  `web_ren` varchar(255) DEFAULT NULL,
  `web_reg` text,
  `market_mr` varchar(255) DEFAULT NULL,
  `xnb_mr` varchar(255) DEFAULT NULL,
  `rmb_mr` varchar(255) DEFAULT NULL,
  `web_waring` varchar(255) DEFAULT NULL,
  `moble_type` varchar(255) DEFAULT NULL,
  `moble_url` varchar(255) DEFAULT NULL,
  `moble_user` varchar(255) DEFAULT NULL,
  `moble_pwd` varchar(255) DEFAULT NULL,
  `contact_moble` varchar(255) DEFAULT NULL,
  `contact_weibo` text,
  `contact_tqq` text,
  `contact_qq` text,
  `contact_qqun` text,
  `contact_weixin` text,
  `contact_weixin_img` text,
  `contact_email` text,
  `contact_alipay` text,
  `contact_alipay_img` text,
  `contact_bank` text,
  `user_truename` text,
  `user_moble` text,
  `user_alipay` text,
  `user_bank` text,
  `user_text_truename` text,
  `user_text_moble` text,
  `user_text_alipay` text,
  `user_text_bank` text,
  `user_text_log` text,
  `user_text_password` text,
  `user_text_paypassword` text,
  `mytx_min` text,
  `mytx_max` text,
  `mytx_bei` text,
  `mytx_coin` text,
  `mytx_fee_min` float(12,2) DEFAULT '0.00' COMMENT '提现手续费最低',
  `mytx_fee` text,
  `trade_min` text,
  `trade_max` text,
  `trade_limit` text,
  `trade_text_log` text,
  `invit_type` text,
  `invit_fee1` text,
  `invit_fee2` text,
  `invit_fee3` text,
  `invit_text_txt` text,
  `invit_text_log` text,
  `index_notice_1` text,
  `index_notice_11` text,
  `index_notice_2` text,
  `index_notice_22` text,
  `index_notice_3` text,
  `index_notice_33` text,
  `index_notice_4` text,
  `index_notice_44` text,
  `text_footer` text,
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` int(4) NOT NULL DEFAULT '0',
  `index_html` varchar(50) NOT NULL DEFAULT '',
  `trade_hangqing` varchar(50) NOT NULL DEFAULT '',
  `trade_moshi` varchar(50) NOT NULL DEFAULT '',
  `mytx_day_max` decimal(13,0) NOT NULL DEFAULT '0',
  `en_web_reg` text,
  `tui_jy_jl` decimal(13,4) DEFAULT NULL,
  `usd_rmb` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `btc_rmb` decimal(12,4) DEFAULT NULL,
  `eth_rmb` decimal(12,4) DEFAULT NULL,
  `en_web_name` varchar(100) DEFAULT NULL,
  `en_web_title` varchar(100) DEFAULT NULL,
  `en_web_keywords` varchar(100) DEFAULT NULL,
  `en_web_description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统配置表';

-- ----------------------------
-- Records of tw_config
-- ----------------------------
INSERT INTO `tw_config` VALUES ('1', '58f881562ea7b.png', 'c', '0', '1', '', '', '比特币天下', '比特币天下', 'http://tupiancw.oss-cn-beijing.aliyuncs.com/hyjy/logo.png', '58f881536618f.png', '数字资产交易平台,虚拟币交易平台,虚拟币,数字货币', '比特币天下是最专业的综合虚拟货币和数字货币交易平台，支持多种数字货币交易投资买卖，提供数字货币行情、排行交易查询等资讯信息。', '1', '', '', '', '100', '', 'ltc_btc', 'btc', 'becc', '本平台仅为数字货币的爱好者提供一个自由的网上交换平台，对币的投资价值不承担任何审查、担保、赔偿的责任。数字货币可能存在矿工预挖、庄家操控、团队解散、技术缺陷等问题，其价格波动较大，因此我们强烈建议您在自身能承受的风险范围内参与数字货币交易。', '1', '', '', '', '18253251582', '', '', '1145557081', '', '', '56f98e6d70135.jpg', '83839140@qq.com', '83839140@qq.com', '56f98e6d7245d.jpg', '中国银行|中国农业银行', '2', '2', '2', '2', '&lt;span&gt;&lt;span&gt;会员您好,务必正确填写好自己的真实姓名和真实身份证号码.&lt;/span&gt;&lt;/span&gt;', '&lt;span&gt;会员您好,务必用自己的手机号码进行手机认证,认证以后可以用来接收验证码.&lt;/span&gt;', '&lt;span&gt;会员您好,务必正确填写支付宝 &amp;nbsp;真实姓名（与实名认证姓名相同）和支付宝账号,后期提现唯一依据.&lt;/span&gt;', '&lt;span&gt;会员您好,&lt;/span&gt;&lt;span&gt;&lt;span&gt;务必正确填写银行卡信息 提现唯一依据.&lt;/span&gt;&lt;span&gt;&lt;/span&gt;&lt;/span&gt;', '&lt;span&gt;自己以往操作和登录及登录地点的相关记录.&lt;/span&gt;', '&lt;span&gt;会员您好,修改登录密码以后请不要忘记.若不记得旧登录密码,请点击--&lt;/span&gt;&lt;span style=&quot;color:#EE33EE;&quot;&gt;忘记密码&lt;/span&gt;', '&lt;span&gt;会员您好,修改交易密码以后请不要忘记.若不记得旧交易密码,请点击--&lt;/span&gt;&lt;span style=&quot;color:#EE33EE;&quot;&gt;忘记密码&lt;/span&gt;', '100', '100000', '1', 'becc', '2.00', '0.5', '1', '10000000', '10', '&lt;span&gt;&lt;span&gt;你委托买入或者卖出成功交易后的记录.&lt;/span&gt;&lt;/span&gt;', '1', '5', '3', '2', '安全便捷', '&lt;span&gt;&lt;span&gt;查看自己推广的好友,请点击&lt;/span&gt;&lt;span style=&quot;color:#EE33EE;&quot;&gt;“+”&lt;/span&gt;&lt;span&gt;,同时正确引导好友实名认证以及买卖,赚取推广收益和交易手续费.&lt;/span&gt;&lt;/span&gt;', '系统可靠', '银行级用户数据加密、动态身份验证多级风险识别控制，保障交易安全', '系统可靠', '账户多层加密，分布式服务器离线存储，即时隔离备份数据，确保安全', '快捷方便', '充值即时、提现迅速，每秒万单的高性能交易引擎，保证一切快捷方便', '服务专业', '热忱的客服工作人员和24小时的技术团队随时为您的账户安全保驾护航', '&lt;p&gt;\r\n	&lt;a href=&quot;/Article/index/type/aboutus.html&quot; target=&quot;_blank&quot;&gt;/Article/index/type/aboutus.html&lt;/a&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;lt;a href=&quot;&lt;a href=&quot;/Article/index/type/aboutus.html&quot; target=&quot;_blank&quot;&gt;/Article/index/type/aboutus.html&lt;/a&gt;&quot;&amp;gt;关于我们&amp;lt;/a&amp;gt;\r\n&lt;/p&gt;\r\n|&lt;br /&gt;\r\n&amp;lt;a href=&quot;/Article/index/type/aboutus.html&quot;&amp;gt;联系我们&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n|&lt;br /&gt;\r\n&amp;lt;a href=&quot;/Article/index/type/aboutus.html&quot;&amp;gt;资质证明&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n|&lt;br /&gt;\r\n&amp;lt;a href=&quot;/Article/index/type/aboutus.html&quot;&amp;gt;用户协议&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n|&lt;br /&gt;\r\n&amp;lt;a href=&quot;/Article/index/type/aboutus.html&quot;&amp;gt;法律声明&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n&amp;lt;p style=&quot;margin-top: 5px;text-align: center;&quot;&amp;gt;&lt;br /&gt;\r\nCopyright &amp;copy; 2016&lt;br /&gt;\r\n&amp;lt;a href=&quot;/&quot;&amp;gt;{$C[\'web_name\']}交易平台 &amp;lt;/a&amp;gt;&lt;br /&gt;\r\nAll Rights Reserved.&lt;br /&gt;\r\n&amp;lt;a href=&quot;http://www.miibeian.gov.cn/&quot;&amp;gt;{$C[\'web_icp\']}&amp;lt;/a&amp;gt;{$C[\'web_cnzz\']|htmlspecialchars_decode}&lt;br /&gt;\r\n&lt;br /&gt;\r\n&amp;lt;/p&amp;gt;&lt;br /&gt;\r\n&amp;lt;p class=&quot;clear1&quot; id=&quot;ut646&quot; style=&quot;margin-top: 10px;text-align: center;&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;a href=&quot;http://webscan.360.cn/index/checkwebsite/url/www.movesay.com&quot; target=&quot;_blank&quot;&amp;gt;&amp;lt;img border=&quot;0&quot; width=&quot;83&quot; height=&quot;31&quot; src=&quot;http://img.webscan.360.cn/status/pai/hash/a272bae5f02b1df25be2c1d9d0b251f7&quot;/&amp;gt;&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n&amp;lt;a href=&quot;http://www.szfw.org/&quot; target=&quot;_blank&quot; id=&quot;ut118&quot; class=&quot;margin10&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;img src=&quot;__UPLOAD__/footer/footer_2.png&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n&amp;lt;a href=&quot;http://www.miibeian.gov.cn/&quot; target=&quot;_blank&quot; id=&quot;ut119&quot; class=&quot;margin10&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;img src=&quot;__UPLOAD__/footer/footer_3.png&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n&amp;lt;a href=&quot;http://www.cyberpolice.cn/&quot; target=&quot;_blank&quot; id=&quot;ut120&quot; class=&quot;margin10&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;img src=&quot;__UPLOAD__/footer/footer_4.png&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n&amp;lt;/p&amp;gt;&lt;br /&gt;', '1467383018', '0', 'a', '1', '0', '100000', '', '0.0000', '6.6177', '111.1084', '36.3243', 'BTCWORD', 'BTCWORD', '', '1');

-- ----------------------------
-- Table structure for tw_daohang
-- ----------------------------
DROP TABLE IF EXISTS `tw_daohang`;
CREATE TABLE `tw_daohang` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(50) NOT NULL COMMENT '名称',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `title_en` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT 'url',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '编辑时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tw_daohang
-- ----------------------------
INSERT INTO `tw_daohang` VALUES ('1', 'finance', '财务中心', 'Finance', 'Finance/index', '1', '0', '0', '0');
INSERT INTO `tw_daohang` VALUES ('2', 'user', '账户', 'Account', 'User/index', '4', '0', '0', '1');
INSERT INTO `tw_daohang` VALUES ('4', 'article', '帮助中心', 'Help', 'Article/index', '4', '0', '0', '0');

-- ----------------------------
-- Table structure for tw_eth_hash
-- ----------------------------
DROP TABLE IF EXISTS `tw_eth_hash`;
CREATE TABLE `tw_eth_hash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ethhash` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `addtime` int(10) NOT NULL,
  `isdeal` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ethhash` (`ethhash`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tw_eth_hash
-- ----------------------------

-- ----------------------------
-- Table structure for tw_eth_transfer
-- ----------------------------
DROP TABLE IF EXISTS `tw_eth_transfer`;
CREATE TABLE `tw_eth_transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zc_addr` varchar(100) NOT NULL,
  `zr_addr` varchar(100) NOT NULL,
  `zc_amount` decimal(20,8) NOT NULL,
  `addtime` int(10) NOT NULL,
  `zchash` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tw_eth_transfer
-- ----------------------------

-- ----------------------------
-- Table structure for tw_feedback
-- ----------------------------
DROP TABLE IF EXISTS `tw_feedback`;
CREATE TABLE `tw_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` varchar(255) NOT NULL,
  `addtime` int(10) NOT NULL,
  `endtime` int(10) DEFAULT NULL,
  `subject` varchar(50) NOT NULL,
  `attachone` varchar(200) DEFAULT NULL,
  `attachtwo` varchar(200) DEFAULT NULL,
  `userid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `isread` tinyint(1) NOT NULL DEFAULT '0',
  `txid` varchar(100) DEFAULT '',
  `freshtime` int(10) DEFAULT '0',
  `userstatus` tinyint(1) DEFAULT '0',
  `adminstatus` tinyint(1) DEFAULT '0',
  `recordno` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tw_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for tw_feedback_reply
-- ----------------------------
DROP TABLE IF EXISTS `tw_feedback_reply`;
CREATE TABLE `tw_feedback_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `addtime` int(10) NOT NULL,
  `content` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tw_feedback_reply
-- ----------------------------

-- ----------------------------
-- Table structure for tw_fenhong
-- ----------------------------
DROP TABLE IF EXISTS `tw_fenhong`;
CREATE TABLE `tw_fenhong` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `coinjian` varchar(50) NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tw_fenhong
-- ----------------------------

-- ----------------------------
-- Table structure for tw_fenhong_log
-- ----------------------------
DROP TABLE IF EXISTS `tw_fenhong_log`;
CREATE TABLE `tw_fenhong_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `coinjian` varchar(50) NOT NULL,
  `fenzong` varchar(50) NOT NULL,
  `fenchi` varchar(50) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `userid` int(11) unsigned NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tw_fenhong_log
-- ----------------------------

-- ----------------------------
-- Table structure for tw_finance
-- ----------------------------
DROP TABLE IF EXISTS `tw_finance`;
CREATE TABLE `tw_finance` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `userid` int(11) unsigned NOT NULL COMMENT '用户id',
  `coinname` varchar(50) NOT NULL COMMENT '币种',
  `num_a` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000' COMMENT '之前正常',
  `num_b` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000' COMMENT '之前冻结',
  `num` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000' COMMENT '之前总计',
  `fee` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000' COMMENT '操作数量',
  `type` varchar(50) NOT NULL COMMENT '操作类型',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '操作名称',
  `nameid` int(11) NOT NULL DEFAULT '0' COMMENT '操作详细',
  `remark` varchar(50) NOT NULL DEFAULT '' COMMENT '操作备注',
  `mum_a` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000' COMMENT '剩余正常',
  `mum_b` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000' COMMENT '剩余冻结',
  `mum` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000' COMMENT '剩余总计',
  `move` varchar(50) NOT NULL DEFAULT '' COMMENT '附加',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `coinname` (`coinname`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8 COMMENT='财务记录表'
/*!50100 PARTITION BY RANGE (id)
(PARTITION p1 VALUES LESS THAN (500000) ENGINE = InnoDB,
 PARTITION p2 VALUES LESS THAN (1000000) ENGINE = InnoDB,
 PARTITION p3 VALUES LESS THAN (1500000) ENGINE = InnoDB,
 PARTITION p4 VALUES LESS THAN (2000000) ENGINE = InnoDB,
 PARTITION p5 VALUES LESS THAN (2500000) ENGINE = InnoDB,
 PARTITION p6 VALUES LESS THAN (3000000) ENGINE = InnoDB,
 PARTITION p7 VALUES LESS THAN (3500000) ENGINE = InnoDB,
 PARTITION p8 VALUES LESS THAN (4000000) ENGINE = InnoDB,
 PARTITION p9 VALUES LESS THAN (4500000) ENGINE = InnoDB,
 PARTITION p10 VALUES LESS THAN (5000000) ENGINE = InnoDB,
 PARTITION p11 VALUES LESS THAN (5500000) ENGINE = InnoDB,
 PARTITION p12 VALUES LESS THAN (6000000) ENGINE = InnoDB,
 PARTITION p13 VALUES LESS THAN (6500000) ENGINE = InnoDB,
 PARTITION p14 VALUES LESS THAN (7000000) ENGINE = InnoDB,
 PARTITION p15 VALUES LESS THAN (7500000) ENGINE = InnoDB,
 PARTITION p16 VALUES LESS THAN (8000000) ENGINE = InnoDB,
 PARTITION p17 VALUES LESS THAN (8500000) ENGINE = InnoDB,
 PARTITION p18 VALUES LESS THAN (9000000) ENGINE = InnoDB,
 PARTITION p19 VALUES LESS THAN (9500000) ENGINE = InnoDB,
 PARTITION p20 VALUES LESS THAN (10000000) ENGINE = InnoDB,
 PARTITION p21 VALUES LESS THAN (10500000) ENGINE = InnoDB,
 PARTITION p22 VALUES LESS THAN (11000000) ENGINE = InnoDB,
 PARTITION p23 VALUES LESS THAN (11500000) ENGINE = InnoDB,
 PARTITION p24 VALUES LESS THAN (12000000) ENGINE = InnoDB,
 PARTITION p25 VALUES LESS THAN (12500000) ENGINE = InnoDB,
 PARTITION p26 VALUES LESS THAN (13000000) ENGINE = InnoDB,
 PARTITION p27 VALUES LESS THAN (13500000) ENGINE = InnoDB,
 PARTITION p28 VALUES LESS THAN (14000000) ENGINE = InnoDB,
 PARTITION p29 VALUES LESS THAN (14500000) ENGINE = InnoDB,
 PARTITION p30 VALUES LESS THAN (15000000) ENGINE = InnoDB,
 PARTITION p31 VALUES LESS THAN (15500000) ENGINE = InnoDB,
 PARTITION p32 VALUES LESS THAN (16000000) ENGINE = InnoDB,
 PARTITION p33 VALUES LESS THAN (16500000) ENGINE = InnoDB,
 PARTITION p34 VALUES LESS THAN (17000000) ENGINE = InnoDB,
 PARTITION p35 VALUES LESS THAN (17500000) ENGINE = InnoDB,
 PARTITION p36 VALUES LESS THAN (18000000) ENGINE = InnoDB,
 PARTITION p37 VALUES LESS THAN (18500000) ENGINE = InnoDB,
 PARTITION p38 VALUES LESS THAN (19000000) ENGINE = InnoDB,
 PARTITION p39 VALUES LESS THAN (19500000) ENGINE = InnoDB,
 PARTITION p40 VALUES LESS THAN (20000000) ENGINE = InnoDB,
 PARTITION p41 VALUES LESS THAN (20500000) ENGINE = InnoDB,
 PARTITION p42 VALUES LESS THAN (21000000) ENGINE = InnoDB,
 PARTITION p43 VALUES LESS THAN (21500000) ENGINE = InnoDB,
 PARTITION p44 VALUES LESS THAN (22000000) ENGINE = InnoDB,
 PARTITION p45 VALUES LESS THAN (22500000) ENGINE = InnoDB,
 PARTITION p46 VALUES LESS THAN (23000000) ENGINE = InnoDB,
 PARTITION p47 VALUES LESS THAN (23500000) ENGINE = InnoDB,
 PARTITION p48 VALUES LESS THAN (24000000) ENGINE = InnoDB,
 PARTITION p49 VALUES LESS THAN (24500000) ENGINE = InnoDB,
 PARTITION p50 VALUES LESS THAN (25000000) ENGINE = InnoDB,
 PARTITION p51 VALUES LESS THAN (25500000) ENGINE = InnoDB,
 PARTITION p52 VALUES LESS THAN (26000000) ENGINE = InnoDB,
 PARTITION p53 VALUES LESS THAN (26500000) ENGINE = InnoDB,
 PARTITION p54 VALUES LESS THAN (27000000) ENGINE = InnoDB,
 PARTITION p55 VALUES LESS THAN (27500000) ENGINE = InnoDB,
 PARTITION p56 VALUES LESS THAN (28000000) ENGINE = InnoDB,
 PARTITION p57 VALUES LESS THAN (28500000) ENGINE = InnoDB,
 PARTITION p58 VALUES LESS THAN (29000000) ENGINE = InnoDB,
 PARTITION p59 VALUES LESS THAN (30000000) ENGINE = InnoDB,
 PARTITION p60 VALUES LESS THAN (30500000) ENGINE = InnoDB,
 PARTITION p61 VALUES LESS THAN (31000000) ENGINE = InnoDB,
 PARTITION p62 VALUES LESS THAN (31500000) ENGINE = InnoDB,
 PARTITION p63 VALUES LESS THAN (32000000) ENGINE = InnoDB,
 PARTITION p64 VALUES LESS THAN (32500000) ENGINE = InnoDB,
 PARTITION p65 VALUES LESS THAN (33000000) ENGINE = InnoDB,
 PARTITION p66 VALUES LESS THAN (33500000) ENGINE = InnoDB,
 PARTITION p67 VALUES LESS THAN (34000000) ENGINE = InnoDB,
 PARTITION p68 VALUES LESS THAN (34500000) ENGINE = InnoDB,
 PARTITION p69 VALUES LESS THAN (35000000) ENGINE = InnoDB,
 PARTITION p70 VALUES LESS THAN (35500000) ENGINE = InnoDB,
 PARTITION p71 VALUES LESS THAN (36000000) ENGINE = InnoDB,
 PARTITION p72 VALUES LESS THAN (36500000) ENGINE = InnoDB,
 PARTITION p73 VALUES LESS THAN (37000000) ENGINE = InnoDB,
 PARTITION p74 VALUES LESS THAN (37500000) ENGINE = InnoDB,
 PARTITION p75 VALUES LESS THAN (38000000) ENGINE = InnoDB,
 PARTITION p76 VALUES LESS THAN (38500000) ENGINE = InnoDB,
 PARTITION p77 VALUES LESS THAN (39000000) ENGINE = InnoDB,
 PARTITION p78 VALUES LESS THAN (39500000) ENGINE = InnoDB,
 PARTITION p79 VALUES LESS THAN (40000000) ENGINE = InnoDB,
 PARTITION p80 VALUES LESS THAN (40500000) ENGINE = InnoDB,
 PARTITION p81 VALUES LESS THAN (41000000) ENGINE = InnoDB,
 PARTITION p82 VALUES LESS THAN (41500000) ENGINE = InnoDB,
 PARTITION p83 VALUES LESS THAN (42000000) ENGINE = InnoDB,
 PARTITION p84 VALUES LESS THAN (42500000) ENGINE = InnoDB,
 PARTITION p85 VALUES LESS THAN (43000000) ENGINE = InnoDB,
 PARTITION p86 VALUES LESS THAN (43500000) ENGINE = InnoDB,
 PARTITION p87 VALUES LESS THAN (44000000) ENGINE = InnoDB,
 PARTITION p88 VALUES LESS THAN (44500000) ENGINE = InnoDB,
 PARTITION p89 VALUES LESS THAN (45000000) ENGINE = InnoDB,
 PARTITION p90 VALUES LESS THAN (45500000) ENGINE = InnoDB,
 PARTITION p91 VALUES LESS THAN (46000000) ENGINE = InnoDB,
 PARTITION p92 VALUES LESS THAN (46500000) ENGINE = InnoDB,
 PARTITION p93 VALUES LESS THAN (47000000) ENGINE = InnoDB,
 PARTITION p94 VALUES LESS THAN (47500000) ENGINE = InnoDB,
 PARTITION p95 VALUES LESS THAN (48000000) ENGINE = InnoDB,
 PARTITION p96 VALUES LESS THAN (48500000) ENGINE = InnoDB,
 PARTITION p97 VALUES LESS THAN (49000000) ENGINE = InnoDB,
 PARTITION p98 VALUES LESS THAN (49500000) ENGINE = InnoDB,
 PARTITION p99 VALUES LESS THAN (50000000) ENGINE = InnoDB,
 PARTITION p100 VALUES LESS THAN (50500000) ENGINE = InnoDB,
 PARTITION p101 VALUES LESS THAN (51000000) ENGINE = InnoDB,
 PARTITION p102 VALUES LESS THAN (51500000) ENGINE = InnoDB,
 PARTITION p103 VALUES LESS THAN (52000000) ENGINE = InnoDB,
 PARTITION p104 VALUES LESS THAN (52500000) ENGINE = InnoDB,
 PARTITION p105 VALUES LESS THAN (53000000) ENGINE = InnoDB,
 PARTITION p106 VALUES LESS THAN (53500000) ENGINE = InnoDB,
 PARTITION p107 VALUES LESS THAN (54000000) ENGINE = InnoDB,
 PARTITION p108 VALUES LESS THAN (54500000) ENGINE = InnoDB,
 PARTITION p109 VALUES LESS THAN (55000000) ENGINE = InnoDB,
 PARTITION p110 VALUES LESS THAN (55500000) ENGINE = InnoDB,
 PARTITION p111 VALUES LESS THAN (56000000) ENGINE = InnoDB,
 PARTITION p112 VALUES LESS THAN (56500000) ENGINE = InnoDB,
 PARTITION p113 VALUES LESS THAN (57000000) ENGINE = InnoDB,
 PARTITION p114 VALUES LESS THAN (57500000) ENGINE = InnoDB,
 PARTITION p115 VALUES LESS THAN (58000000) ENGINE = InnoDB,
 PARTITION p116 VALUES LESS THAN (58500000) ENGINE = InnoDB,
 PARTITION p117 VALUES LESS THAN (59000000) ENGINE = InnoDB,
 PARTITION p118 VALUES LESS THAN (59500000) ENGINE = InnoDB,
 PARTITION p119 VALUES LESS THAN (60000000) ENGINE = InnoDB,
 PARTITION p120 VALUES LESS THAN (60500000) ENGINE = InnoDB,
 PARTITION p121 VALUES LESS THAN (61000000) ENGINE = InnoDB,
 PARTITION p122 VALUES LESS THAN MAXVALUE ENGINE = InnoDB) */;

-- ----------------------------
-- Records of tw_finance
-- ----------------------------
INSERT INTO `tw_finance` VALUES ('3', '6272', 'cny', '0.00000000', '0.00000000', '0.00000000', '100.49000000', '1', 'mycz', '2', '人民币充值-人工到账', '100.49000000', '0.00000000', '100.49000000', '539aaa4a712b74908558d8031baf7519', '1510817205', '1');
INSERT INTO `tw_finance` VALUES ('4', '6272', 'cny', '100.49000000', '0.00000000', '100.49000000', '100.00000000', '2', 'mytx', '1', '人民币提现-申请提现', '0.49000000', '0.00000000', '0.49000000', 'b2cc547b4667d12548771240edd9c111', '1510817522', '1');
INSERT INTO `tw_finance` VALUES ('5', '6272', 'cny', '0.49000000', '0.00000000', '0.49000000', '100.00000000', '1', 'mytx', '1', '人民币提现-撤销提现', '100.49000000', '0.00000000', '100.49000000', '00bab7495c0e0bbb8fb09e812eb004d3', '1510817526', '1');
INSERT INTO `tw_finance` VALUES ('6', '6272', 'btc', '10.00000000', '0.00000000', '10.00000000', '0.01111110', '2', 'trade', '1', '交易中心-委托买入-市场ltc_btc', '9.98888890', '0.01111110', '10.00000000', '4a9b95fd9a96345e00a07068e007a856', '1510817655', '0');
INSERT INTO `tw_finance` VALUES ('7', '6272', 'btc', '9.98888890', '0.01111110', '10.00000000', '0.01111110', '2', 'tradelog', '1', '交易中心-成功买入-市场ltc_btc', '9.98888890', '0.00000000', '9.98888890', '28dc80d8a255620ad33fbfceebf9096b', '1510817663', '1');
INSERT INTO `tw_finance` VALUES ('8', '6272', 'btc', '9.98888890', '0.00000000', '9.98888890', '0.01111110', '1', 'tradelog', '1', '交易中心-成功卖出-市场ltc_btc', '9.99997780', '0.00000000', '9.99997780', '1c9e13f390fa2a246597d827475ac23d', '1510817663', '1');
INSERT INTO `tw_finance` VALUES ('9', '6272', 'btc', '9.99997780', '0.00000000', '9.99997780', '0.05605600', '2', 'trade', '3', '交易中心-委托买入-市场bcc_btc', '9.94392180', '0.05605600', '9.99997780', '26432549fe470096150da82f798ae19a', '1510817673', '1');
INSERT INTO `tw_finance` VALUES ('10', '6272', 'btc', '9.94392180', '0.05605600', '9.99997780', '0.05605600', '2', 'tradelog', '2', '交易中心-成功买入-市场bcc_btc', '9.94392180', '0.00000000', '9.94392180', 'b3b4cf700b2e540502dbaef6a4d6e6e3', '1510817684', '1');
INSERT INTO `tw_finance` VALUES ('11', '6272', 'btc', '9.94392180', '0.00000000', '9.94392180', '0.05605600', '1', 'tradelog', '2', '交易中心-成功卖出-市场bcc_btc', '9.99986580', '0.00000000', '9.99986580', 'e6f546c3c889579020194184d8e7af0f', '1510817684', '1');
INSERT INTO `tw_finance` VALUES ('12', '6273', 'btc', '10.00000000', '0.00000000', '10.00000000', '0.10010000', '2', 'trade', '6', '交易中心-委托买入-市场ltc_btc', '9.89990000', '0.10010000', '10.00000000', 'b1d1705423c56131ae6ea5232d065e38', '1511163188', '0');
INSERT INTO `tw_finance` VALUES ('13', '6273', 'btc', '9.89990000', '0.10010000', '10.00000000', '0.10010000', '2', 'tradelog', '3', '交易中心-成功买入-市场ltc_btc', '9.89990000', '0.00000000', '9.89990000', '32465ed5f98dbf08eaca369ca88155ca', '1511163188', '1');
INSERT INTO `tw_finance` VALUES ('14', '6273', 'btc', '9.89990000', '0.00000000', '9.89990000', '0.10010000', '1', 'tradelog', '3', '交易中心-成功卖出-市场ltc_btc', '9.99980000', '0.00000000', '9.99980000', 'dd41704b7f3e107ec29d978b2e118959', '1511163188', '1');
INSERT INTO `tw_finance` VALUES ('15', '6273', 'btc', '9.99980000', '0.00000000', '9.99980000', '0.63863800', '2', 'trade', '8', '交易中心-委托买入-市场bcc_btc', '9.36116200', '0.63863800', '9.99980000', 'e325fcc07700b513f4e08a5f4305049b', '1511163829', '1');
INSERT INTO `tw_finance` VALUES ('16', '6273', 'btc', '9.36116200', '0.63863800', '9.99980000', '0.50050000', '2', 'tradelog', '4', '交易中心-成功买入-市场bcc_btc', '9.36116200', '0.13813800', '9.49930000', '12135fc703b131c7b1374fe30fd90ff7', '1511163829', '1');
INSERT INTO `tw_finance` VALUES ('17', '6273', 'btc', '9.36116200', '0.13813800', '9.49930000', '0.50050000', '1', 'tradelog', '4', '交易中心-成功卖出-市场bcc_btc', '9.86066200', '0.13813800', '9.99880000', '7332729bec4696885d6374ed50440a03', '1511163829', '1');
INSERT INTO `tw_finance` VALUES ('18', '6273', 'btc', '9.94074200', '0.05805800', '9.99880000', '0.05805800', '2', 'tradelog', '5', '交易中心-成功买入-市场bcc_btc', '9.94074200', '0.00000000', '9.94074200', '1c9d3ada8e97f48228910d34e7c999eb', '1511163978', '1');
INSERT INTO `tw_finance` VALUES ('19', '6273', 'btc', '9.94074200', '0.00000000', '9.94074200', '0.05805800', '1', 'tradelog', '5', '交易中心-成功卖出-市场bcc_btc', '9.99868400', '0.00000000', '9.99868400', '2493c1a5fa1ffe5f424770bf1e59d069', '1511163978', '1');
INSERT INTO `tw_finance` VALUES ('20', '6273', 'btc', '9.99868400', '0.00000000', '9.99868400', '5.70570000', '2', 'trade', '10', '交易中心-委托买入-市场bcc_btc', '4.29298400', '5.70570000', '9.99868400', '23204976b3042c251a7a6aa2b4265455', '1511164048', '1');
INSERT INTO `tw_finance` VALUES ('21', '6273', 'btc', '4.29298400', '5.70570000', '9.99868400', '0.57057000', '2', 'tradelog', '6', '交易中心-成功买入-市场bcc_btc', '4.29298400', '5.13513000', '9.42811400', '45edcf782a3ed4338f00bad401e0b90b', '1511164048', '1');
INSERT INTO `tw_finance` VALUES ('22', '6273', 'btc', '4.29298400', '5.13513000', '9.42811400', '0.57057000', '1', 'tradelog', '6', '交易中心-成功卖出-市场bcc_btc', '4.86241400', '5.13513000', '9.99754400', '1694d523f584fca2704f9f6373312ef1', '1511164048', '1');
INSERT INTO `tw_finance` VALUES ('23', '6273', 'btc', '4.86241400', '5.13513000', '9.99754400', '5.13513000', '1', 'trade', '10', '交易中心-交易撤销bcc_btc', '9.99754400', '0.00000000', '9.99754400', '8ea9529e79d59ebf13a29d61c3e52189', '1511168356', '1');
INSERT INTO `tw_finance` VALUES ('24', '6271', 'btc', '10.00000000', '0.00000000', '10.00000000', '0.58058000', '2', 'trade', '11', '交易中心-委托买入-市场bcc_btc', '9.41942000', '0.58058000', '10.00000000', '535669a0c8f043b9bec47cfa44fb1eb7', '1511170014', '0');
INSERT INTO `tw_finance` VALUES ('25', '6271', 'btc', '9.41942000', '0.58058000', '10.00000000', '0.29029000', '2', 'tradelog', '7', '交易中心-成功买入-市场bcc_btc', '9.41942000', '0.29029000', '9.70971000', '8c6d60bfeec345491ac92b60b1e1a20a', '1511170090', '1');
INSERT INTO `tw_finance` VALUES ('26', '6271', 'btc', '9.41942000', '0.29029000', '9.70971000', '0.29029000', '1', 'tradelog', '7', '交易中心-成功卖出-市场bcc_btc', '9.70913000', '0.29029000', '9.99942000', 'abdb1022c8d77e3ed8d395b03042d64c', '1511170090', '1');
INSERT INTO `tw_finance` VALUES ('27', '6271', 'btc', '9.70913000', '0.29029000', '9.99942000', '0.11111100', '2', 'trade', '13', '交易中心-委托买入-市场ltc_btc', '9.59801900', '0.40140100', '9.99942000', 'fda73b7733eab7f89e09335002d68dca', '1511225235', '1');
INSERT INTO `tw_finance` VALUES ('28', '6274', 'btc', '10.00000000', '0.00000000', '10.00000000', '0.22222200', '2', 'trade', '16', '交易中心-委托买入-市场ltc_btc', '9.77777800', '0.22222200', '10.00000000', '37bc82430de3566d223e0cb14fba0c9b', '1511226747', '0');
INSERT INTO `tw_finance` VALUES ('29', '6271', 'btc', '9.59801900', '0.40140100', '9.99942000', '0.05555550', '2', 'tradelog', '8', '交易中心-成功买入-市场ltc_btc', '9.59801900', '0.34584550', '9.94386450', 'bdcc91bb047935ab689e1f4045d88bd9', '1511227083', '1');
INSERT INTO `tw_finance` VALUES ('30', '6274', 'btc', '9.77777800', '0.22222200', '10.00000000', '0.05555550', '1', 'tradelog', '8', '交易中心-成功卖出-市场ltc_btc', '9.83322250', '0.22222200', '10.05544450', '5fc111e6159304704a9a4f24ecaa2faf', '1511227083', '1');
INSERT INTO `tw_finance` VALUES ('31', '6274', 'btc', '9.83322250', '0.22222200', '10.05544450', '0.22222200', '1', 'trade', '16', '交易中心-交易撤销ltc_btc', '10.05544450', '0.00000000', '10.05544450', 'c887e34400b72f32e524c6f1635ebf44', '1511227138', '1');
INSERT INTO `tw_finance` VALUES ('32', '6271', 'btc', '9.59801900', '0.34584550', '9.94386450', '0.05605600', '2', 'trade', '18', '交易中心-委托买入-市场ltc_btc', '9.54196300', '0.40190150', '9.94386450', '21f9959fc39c146720fedc984be869de', '1511229052', '1');
INSERT INTO `tw_finance` VALUES ('33', '6271', 'btc', '9.54196300', '0.40190150', '9.94386450', '0.05805800', '2', 'trade', '19', '交易中心-委托买入-市场ltc_btc', '9.48390500', '0.45995950', '9.94386450', '4b693d0c2da63dcdcf73d75e7462c5bc', '1511229093', '1');
INSERT INTO `tw_finance` VALUES ('34', '6271', 'btc', '9.48390500', '0.45995950', '9.94386450', '0.05605600', '1', 'trade', '18', '交易中心-交易撤销ltc_btc', '9.53996100', '0.40390350', '9.94386450', '337669b90fc9cd5ba745c66379a74fb7', '1511229184', '1');
INSERT INTO `tw_finance` VALUES ('35', '6273', 'btc', '9.99754400', '0.00000000', '9.99754400', '0.99899900', '2', 'trade', '20', '交易中心-委托买入-市场ltc_btc', '8.99854500', '0.99899900', '9.99754400', 'f6d7f69ee7bb0a732f5e32f78b479d74', '1511229261', '1');
INSERT INTO `tw_finance` VALUES ('36', '6273', 'btc', '8.99854500', '0.99899900', '9.99754400', '0.99899900', '1', 'trade', '20', '交易中心-交易撤销ltc_btc', '9.99754400', '0.00000000', '9.99754400', '26e9705b787bb510a0f869a31e6e6768', '1511229287', '1');
INSERT INTO `tw_finance` VALUES ('37', '6271', 'btc', '9.53996100', '0.40390350', '9.94386450', '0.29029000', '2', 'tradelog', '9', '交易中心-成功买入-市场bcc_btc', '9.53996100', '0.11361350', '9.65357450', '821bb05c75d5160da34d2abb8f98925f', '1511229350', '1');
INSERT INTO `tw_finance` VALUES ('38', '6273', 'btc', '9.99754400', '0.00000000', '9.99754400', '0.29029000', '1', 'tradelog', '9', '交易中心-成功卖出-市场bcc_btc', '10.28725400', '0.00000000', '10.28725400', '21e6959c8dbc2abe4ce32e21051b1cbc', '1511229350', '1');
INSERT INTO `tw_finance` VALUES ('39', '6274', 'btc', '10.05544450', '0.00000000', '10.05544450', '0.08888880', '2', 'trade', '22', '交易中心-委托买入-市场ltc_btc', '9.96655570', '0.08888880', '10.05544450', '10e6e2e1bd439d6077f1657d2190148d', '1511405907', '1');
INSERT INTO `tw_finance` VALUES ('40', '6274', 'btc', '9.96655570', '0.08888880', '10.05544450', '0.08888880', '1', 'trade', '22', '交易中心-交易撤销ltc_btc', '10.05544450', '0.00000000', '10.05544450', 'fc8c0bb651efec5faf4c445a60ebb3d6', '1511405949', '1');
INSERT INTO `tw_finance` VALUES ('41', '6274', 'btc', '10.05544450', '0.00000000', '10.05544450', '0.08888880', '2', 'trade', '23', '交易中心-委托买入-市场ltc_btc', '9.96655570', '0.08888880', '10.05544450', '10e6e2e1bd439d6077f1657d2190148d', '1511405977', '1');
INSERT INTO `tw_finance` VALUES ('42', '6271', 'btc', '9.53996100', '0.11361350', '9.65357450', '0.05555550', '1', 'trade', '13', '交易中心-交易撤销ltc_btc', '9.59551650', '0.05805800', '9.65357450', 'a9d484bad2f5ec73762b7f430320980a', '1511406116', '1');
INSERT INTO `tw_finance` VALUES ('43', '6271', 'btc', '9.59551650', '0.05805800', '9.65357450', '0.05805800', '1', 'trade', '19', '交易中心-交易撤销ltc_btc', '9.65357450', '0.00000000', '9.65357450', '6db20727467fae70059152774e51b7af', '1511406123', '1');
INSERT INTO `tw_finance` VALUES ('44', '6271', 'btc', '9.65357450', '0.00000000', '9.65357450', '0.08888880', '2', 'trade', '24', '交易中心-委托买入-市场ltc_btc', '9.56468570', '0.08888880', '9.65357450', '9a20ea3d9ecee3c752a31b06f593131b', '1511406143', '1');
INSERT INTO `tw_finance` VALUES ('45', '6271', 'btc', '9.56468570', '0.08888880', '9.65357450', '0.08888880', '1', 'trade', '24', '交易中心-交易撤销ltc_btc', '9.65357450', '0.00000000', '9.65357450', 'cd80512a32590815afd0052f80f75440', '1511406359', '1');
INSERT INTO `tw_finance` VALUES ('46', '6271', 'btc', '9.65357450', '0.00000000', '9.65357450', '0.08808800', '2', 'trade', '25', '交易中心-委托买入-市场ltc_btc', '9.56548650', '0.08808800', '9.65357450', '193f689ece2fea82303263c5ce410439', '1511406395', '1');
INSERT INTO `tw_finance` VALUES ('47', '6274', 'btc', '9.96655570', '0.08888880', '10.05544450', '0.05555550', '2', 'tradelog', '10', '交易中心-成功买入-市场ltc_btc', '9.96655570', '0.03333330', '9.99988900', '76f7a3b11ea0fb21459c2c142ed9aea6', '1511766078', '1');
INSERT INTO `tw_finance` VALUES ('48', '6274', 'btc', '9.96655570', '0.03333330', '9.99988900', '0.05555550', '1', 'tradelog', '10', '交易中心-成功卖出-市场ltc_btc', '10.02200020', '0.03333330', '10.05533350', 'e93500c28ca0854e37c5a2db5680ee6f', '1511766078', '1');
INSERT INTO `tw_finance` VALUES ('49', '6274', 'btc', '10.02200020', '0.03333330', '10.05533350', '0.58058000', '2', 'trade', '27', '交易中心-委托买入-市场bcc_btc', '9.44142020', '0.61391330', '10.05533350', '1edc71ef144c3dc940b2be64548e7f1a', '1511766152', '1');
INSERT INTO `tw_finance` VALUES ('50', '6274', 'btc', '9.44142020', '0.61391330', '10.05533350', '0.57057000', '2', 'tradelog', '11', '交易中心-成功买入-市场bcc_btc', '9.44142020', '0.04334330', '9.48476350', 'c0481075e782785b7c18bb10a3e8d141', '1511766152', '1');
INSERT INTO `tw_finance` VALUES ('51', '6273', 'btc', '10.28725400', '0.00000000', '10.28725400', '0.57057000', '1', 'tradelog', '11', '交易中心-成功卖出-市场bcc_btc', '10.85668400', '0.00000000', '10.85668400', '384a8b325522c346fec362b8e2fcf7e4', '1511766152', '1');
INSERT INTO `tw_finance` VALUES ('52', '6274', 'btc', '9.45143020', '0.03333330', '9.48476350', '0.01111110', '2', 'trade', '29', '交易中心-委托买入-市场ltc_btc', '9.44031910', '0.04444440', '9.48476350', '248c16d59cda92bfa030a912aaa3fea7', '1511840443', '1');
INSERT INTO `tw_finance` VALUES ('53', '6279', 'btc', '89.99999990', '0.00000000', '89.99999990', '0.05700000', '2', 'trade', '30', '交易中心-委托买入-市场bcc_btc', '89.94299990', '0.05700000', '89.99999990', '54071b4b7b23d6d80f214edb41558adb', '1511840468', '0');
INSERT INTO `tw_finance` VALUES ('54', '6279', 'btc', '89.94299990', '0.05700000', '89.99999990', '0.05700000', '2', 'tradelog', '12', '交易中心-成功买入-市场bcc_btc', '89.94299990', '0.00000000', '89.94299990', 'd39ee818b437e33ff8ca52639784a51a', '1511840468', '1');
INSERT INTO `tw_finance` VALUES ('55', '6273', 'btc', '10.85668400', '0.00000000', '10.85668400', '0.05700000', '1', 'tradelog', '12', '交易中心-成功卖出-市场bcc_btc', '10.91362700', '0.00000000', '10.91362700', '134b7ebe9e5d59beca6c7f3ed7db892d', '1511840468', '0');
INSERT INTO `tw_finance` VALUES ('56', '6274', 'btc', '9.44031910', '0.04444440', '9.48476350', '0.01111110', '2', 'trade', '31', '交易中心-委托买入-市场ltc_btc', '9.42920800', '0.05555550', '9.48476350', '57b413826ab355003504350648a306d7', '1511840551', '1');
INSERT INTO `tw_finance` VALUES ('57', '6279', 'btc', '89.94299990', '0.00000000', '89.94299990', '0.05700000', '2', 'trade', '32', '交易中心-委托买入-市场bcc_btc', '89.88599990', '0.05700000', '89.94299990', 'cbc6760169a1aa426b6223117a88e651', '1511840575', '1');
INSERT INTO `tw_finance` VALUES ('58', '6279', 'btc', '89.88599990', '0.05700000', '89.94299990', '0.05700000', '2', 'tradelog', '13', '交易中心-成功买入-市场bcc_btc', '89.88599990', '0.00000000', '89.88599990', '1e74db65dd40f34ea7eac42dd18d80f8', '1511840575', '1');
INSERT INTO `tw_finance` VALUES ('59', '6273', 'btc', '10.91362700', '0.00000000', '10.91362700', '0.05700000', '1', 'tradelog', '13', '交易中心-成功卖出-市场bcc_btc', '10.97057000', '0.00000000', '10.97057000', '57451c2f63bd5bc7891993afb8e1fa51', '1511840575', '0');
INSERT INTO `tw_finance` VALUES ('60', '6274', 'btc', '9.42920800', '0.05555550', '9.48476350', '0.01111110', '2', 'trade', '33', '交易中心-委托买入-市场ltc_btc', '9.41809690', '0.06666660', '9.48476350', '7c0b620bc40b047d19652d8b1cf451e1', '1511840587', '1');
INSERT INTO `tw_finance` VALUES ('61', '6279', 'btc', '89.88599990', '0.00000000', '89.88599990', '1.00000000', '2', 'trade', '34', '交易中心-委托买入-市场bcc_btc', '88.88599990', '1.00000000', '89.88599990', '1ee438427ef23bf15f0417a329dcd2f3', '1511840730', '1');
INSERT INTO `tw_finance` VALUES ('62', '6279', 'btc', '88.88599990', '1.00000000', '89.88599990', '0.05700000', '2', 'tradelog', '14', '交易中心-成功买入-市场bcc_btc', '88.88599990', '0.94300000', '89.82899990', '276bcd04fea46330822a3c408348b9a2', '1511840731', '1');
INSERT INTO `tw_finance` VALUES ('63', '6273', 'btc', '10.97057000', '0.00000000', '10.97057000', '0.05700000', '1', 'tradelog', '14', '交易中心-成功卖出-市场bcc_btc', '11.02751300', '0.00000000', '11.02751300', '9a2e23e0d5f52e1be1d4541573a0ad51', '1511840731', '0');
INSERT INTO `tw_finance` VALUES ('64', '6279', 'btc', '89.82899990', '0.00000000', '89.82899990', '1.88100000', '2', 'trade', '35', '交易中心-委托买入-市场bcc_btc', '87.94799990', '1.88100000', '89.82899990', '8fc5999b6cf95a532defc920f620e408', '1511840827', '1');
INSERT INTO `tw_finance` VALUES ('65', '6279', 'btc', '87.94799990', '1.88100000', '89.82899990', '1.82400000', '2', 'tradelog', '15', '交易中心-成功买入-市场bcc_btc', '87.94799990', '0.05700000', '88.00499990', 'f90daba6c405cac403f053529f6bbb92', '1511840827', '1');
INSERT INTO `tw_finance` VALUES ('66', '6273', 'btc', '11.02751300', '0.00000000', '11.02751300', '1.82400000', '1', 'tradelog', '15', '交易中心-成功卖出-市场bcc_btc', '12.84968900', '0.00000000', '12.84968900', 'e52a3e62e04b0f211cd42f00623567ce', '1511840827', '0');
INSERT INTO `tw_finance` VALUES ('67', '6279', 'btc', '87.94799990', '0.05700000', '88.00499990', '0.05700000', '2', 'tradelog', '16', '交易中心-成功买入-市场bcc_btc', '87.94799990', '0.00000000', '87.94799990', 'a262ec45b76fa3809b36fcc98af39df7', '1511840828', '1');
INSERT INTO `tw_finance` VALUES ('68', '6277', 'btc', '0.00000000', '0.00000000', '0.00000000', '0.05700000', '1', 'tradelog', '16', '交易中心-成功卖出-市场bcc_btc', '0.05694300', '0.00000000', '0.05694300', '706479837574f2858a0e0753176a2bee', '1511840828', '0');
INSERT INTO `tw_finance` VALUES ('69', '6277', 'btc', '8.05694300', '0.00000000', '8.05694300', '0.56788900', '2', 'trade', '36', '交易中心-委托买入-市场bcc_btc', '7.48905400', '0.56788900', '8.05694300', '51595ed03923b34bbc0d3589a4bbb256', '1511849083', '0');
INSERT INTO `tw_finance` VALUES ('70', '6277', 'btc', '7.48905400', '0.56788900', '8.05694300', '0.56788900', '2', 'trade', '37', '交易中心-委托买入-市场bcc_btc', '6.92116500', '1.13577800', '8.05694300', '4a1c218dfac33614ff839c3ae604632e', '1511849219', '1');
INSERT INTO `tw_finance` VALUES ('71', '6277', 'btc', '6.92116500', '1.13577800', '8.05694300', '0.56788900', '2', 'tradelog', '17', '交易中心-成功买入-市场bcc_btc', '6.92116500', '0.56788900', '7.48905400', 'd3f57721a0bb61f9ede2048c124af288', '1511849237', '1');
INSERT INTO `tw_finance` VALUES ('72', '6277', 'btc', '6.92116500', '0.56788900', '7.48905400', '0.56788900', '1', 'tradelog', '17', '交易中心-成功卖出-市场bcc_btc', '7.48848611', '0.56788900', '8.05637511', 'e60a151057e961f579a04ece659fbddd', '1511849237', '1');
INSERT INTO `tw_finance` VALUES ('73', '6277', 'btc', '7.48848611', '0.56788900', '8.05637511', '0.56788900', '2', 'tradelog', '18', '交易中心-成功买入-市场bcc_btc', '7.48848611', '0.00000000', '7.48848611', '4cec19046fa7d4e4b942f29f348da2e9', '1511849237', '1');
INSERT INTO `tw_finance` VALUES ('74', '6277', 'btc', '7.48848611', '0.00000000', '7.48848611', '0.56788900', '1', 'tradelog', '18', '交易中心-成功卖出-市场bcc_btc', '8.05580722', '0.00000000', '8.05580722', '860187dd3454d130720c1b4a306842d8', '1511849237', '1');
INSERT INTO `tw_finance` VALUES ('75', '6271', 'btc', '9.56548650', '0.08808800', '9.65357450', '0.06246779', '2', 'trade', '39', '交易中心-委托买入-市场bcc_btc', '9.50301871', '0.15055579', '9.65357450', '946e5292a8ff57f268f3cbc2a026cf5a', '1511852434', '1');
INSERT INTO `tw_finance` VALUES ('76', '6278', 'btc', '5000.00000000', '0.00000000', '5000.00000000', '100.10000000', '2', 'trade', '40', '交易中心-委托买入-市场ltc_btc', '4899.90000000', '100.10000000', '5000.00000000', 'c5ae773561c90ddb913a5acccd84a2ad', '1511854337', '0');
INSERT INTO `tw_finance` VALUES ('77', '6278', 'btc', '4899.90000000', '100.10000000', '5000.00000000', '100.10000000', '2', 'tradelog', '19', '交易中心-成功买入-市场ltc_btc', '4899.90000000', '0.00000000', '4899.90000000', 'a50f62635e317b62fb6d4e67227bf5aa', '1511854503', '1');
INSERT INTO `tw_finance` VALUES ('78', '6278', 'btc', '4899.90000000', '0.00000000', '4899.90000000', '100.10000000', '1', 'tradelog', '19', '交易中心-成功卖出-市场ltc_btc', '4999.80000000', '0.00000000', '4999.80000000', 'e3fe16cd5e96083d5e887521a11533f0', '1511854503', '1');
INSERT INTO `tw_finance` VALUES ('79', '6271', 'btc', '9.50301871', '0.15055579', '9.65357450', '0.01111110', '2', 'trade', '42', '交易中心-委托买入-市场ltc_btc', '9.49190761', '0.16166689', '9.65357450', '59ed12ea2f7b0e9b8a215ee83a871cae', '1511856435', '1');
INSERT INTO `tw_finance` VALUES ('80', '6271', 'btc', '9.49190761', '0.16166689', '9.65357450', '0.01111221', '2', 'trade', '43', '交易中心-委托买入-市场ltc_btc', '9.48079540', '0.17277910', '9.65357450', '4f46a8f77b28a7b98ffd6468d707f5c2', '1511856824', '1');
INSERT INTO `tw_finance` VALUES ('81', '6274', 'btc', '9.41809690', '0.06666660', '9.48476350', '0.02222220', '2', 'tradelog', '20', '交易中心-成功买入-市场ltc_btc', '9.41809690', '0.04444440', '9.46254130', '0036045407001475e8f721670d5057c1', '1511856923', '1');
INSERT INTO `tw_finance` VALUES ('82', '6271', 'btc', '9.48079540', '0.17277910', '9.65357450', '0.02222220', '1', 'tradelog', '20', '交易中心-成功卖出-市场ltc_btc', '9.50297320', '0.17277910', '9.67575230', '45c5608d1a1f08152d64355a1b13bb04', '1511856923', '1');
INSERT INTO `tw_finance` VALUES ('83', '6271', 'btc', '9.50297320', '0.17277910', '9.67575230', '0.56788900', '2', 'trade', '45', '交易中心-委托买入-市场bcc_btc', '8.93508420', '0.74066810', '9.67575230', '43f032a0f901d8a5768d500e90b9f8b1', '1511857449', '1');
INSERT INTO `tw_finance` VALUES ('84', '6271', 'btc', '8.93508420', '0.74066810', '9.67575230', '0.06246779', '2', 'tradelog', '21', '交易中心-成功买入-市场bcc_btc', '8.93508420', '0.67820031', '9.61328451', '41beb7045d03059d94177613575f2015', '1511857505', '1');
INSERT INTO `tw_finance` VALUES ('85', '6271', 'btc', '8.93508420', '0.67820031', '9.61328451', '0.06246779', '1', 'tradelog', '21', '交易中心-成功卖出-市场bcc_btc', '8.99748952', '0.67820031', '9.67568983', 'f60a797e404b0b0ecc9cad292316e57a', '1511857505', '1');
INSERT INTO `tw_finance` VALUES ('86', '6271', 'btc', '8.99748952', '0.67820031', '9.67568983', '0.50542121', '2', 'tradelog', '22', '交易中心-成功买入-市场bcc_btc', '8.99748952', '0.17277910', '9.17026862', '14ab98b806b18d6248e5d426c3208022', '1511857505', '1');
INSERT INTO `tw_finance` VALUES ('87', '6271', 'btc', '8.99748952', '0.17277910', '9.17026862', '0.50542121', '1', 'tradelog', '22', '交易中心-成功卖出-市场bcc_btc', '9.50240531', '0.17277910', '9.67518441', '5748aee2f4d03ae40dbcf9c85b688228', '1511857505', '1');
INSERT INTO `tw_finance` VALUES ('88', '6277', 'btc', '8.05580722', '0.00000000', '8.05580722', '0.56788900', '2', 'trade', '47', '交易中心-委托买入-市场bcc_btc', '7.48791822', '0.56788900', '8.05580722', '2803487d3860ac54405d82a6baf05bb2', '1511858596', '1');
INSERT INTO `tw_finance` VALUES ('89', '6277', 'btc', '7.48791822', '0.56788900', '8.05580722', '0.56788900', '1', 'trade', '47', '交易中心-交易撤销bcc_btc', '8.05580722', '0.00000000', '8.05580722', 'aaa1890fe917956bba19481115b8663b', '1511858636', '1');
INSERT INTO `tw_finance` VALUES ('90', '6278', 'btc', '4999.80000000', '0.00000000', '4999.80000000', '100.00000000', '2', 'trade', '48', '交易中心-委托买入-市场bcc_btc', '4899.80000000', '100.00000000', '4999.80000000', 'd21afcf35ed128910e5ed02fe4addb70', '1511858685', '1');
INSERT INTO `tw_finance` VALUES ('91', '6277', 'btc', '8.05580722', '0.00000000', '8.05580722', '2.00000000', '2', 'trade', '49', '交易中心-委托买入-市场bcc_btc', '6.05580722', '2.00000000', '8.05580722', 'bf72292c3f284a22e48c73ba3661c919', '1511858709', '1');
INSERT INTO `tw_finance` VALUES ('92', '6279', 'btc', '87.94799990', '0.00000000', '87.94799990', '1.00000000', '2', 'trade', '50', '交易中心-委托买入-市场bcc_btc', '86.94799990', '1.00000000', '87.94799990', 'a14056bf359d3d23ef998f4a55e61d0e', '1511858831', '1');
INSERT INTO `tw_finance` VALUES ('93', '6271', 'btc', '9.50240531', '0.17277910', '9.67518441', '0.01234567', '2', 'trade', '51', '交易中心-委托买入-市场ltc_btc', '9.49005964', '0.18512477', '9.67518441', '752b224d8b6e3384324073526248718b', '1511859071', '1');
INSERT INTO `tw_finance` VALUES ('94', '6279', 'btc', '99.99900000', '1.00000000', '100.99900000', '15.86698000', '2', 'trade', '53', '交易中心-委托买入-市场bcc_btc', '84.13202000', '16.86698000', '100.99900000', 'ae093b3713cb4d53c3d86028cc99791e', '1511919926', '0');
INSERT INTO `tw_finance` VALUES ('95', '6274', 'btc', '9.41809690', '0.04444440', '9.46254130', '0.00137173', '2', 'trade', '54', '交易中心-委托买入-市场ltc_btc', '9.41672517', '0.04581613', '9.46254130', '33e35a48566fd888089d703627b55b14', '1511919944', '1');
INSERT INTO `tw_finance` VALUES ('96', '6278', 'btc', '4899.80000000', '100.00000000', '4999.80000000', '10.00000000', '2', 'tradelog', '23', '交易中心-成功买入-市场bcc_btc', '4899.80000000', '90.00000000', '4989.80000000', '00c9ba8bb23a23aebcea337941b6d7b7', '1511942164', '1');
INSERT INTO `tw_finance` VALUES ('97', '6277', 'btc', '6.05580722', '2.00000000', '8.05580722', '10.00000000', '1', 'tradelog', '23', '交易中心-成功卖出-市场bcc_btc', '16.04580722', '2.00000000', '18.04580722', 'ccca88ef7cdaa3e697ec51df3e805225', '1511942165', '0');
INSERT INTO `tw_finance` VALUES ('98', '6278', 'btc', '4899.80000000', '90.00000000', '4989.80000000', '10.00000000', '2', 'tradelog', '24', '交易中心-成功买入-市场bcc_btc', '4899.80000000', '80.00000000', '4979.80000000', 'eecc8d434b537e906e06a84b8194c21b', '1511942177', '1');
INSERT INTO `tw_finance` VALUES ('99', '6277', 'btc', '16.04580722', '2.00000000', '18.04580722', '10.00000000', '1', 'tradelog', '24', '交易中心-成功卖出-市场bcc_btc', '26.03580722', '2.00000000', '28.03580722', 'f0d95b7ab3352c0cc4ff70b5c1d1e2f3', '1511942178', '0');
INSERT INTO `tw_finance` VALUES ('100', '6274', 'btc', '9.41672517', '0.04581613', '9.46254130', '0.00111111', '2', 'trade', '58', '交易中心-委托买入-市场ltc_btc', '9.41561406', '0.04692724', '9.46254130', '081437e733b479db6d0806d4d7094ae2', '1512009524', '1');
INSERT INTO `tw_finance` VALUES ('101', '6274', 'btc', '9.41561406', '0.04692724', '9.46254130', '0.00111111', '2', 'tradelog', '25', '交易中心-成功买入-市场ltc_btc', '9.41561406', '0.04581613', '9.46143019', 'd714a95a89a4d8b758d8de3723466061', '1512009547', '1');
INSERT INTO `tw_finance` VALUES ('102', '6274', 'btc', '9.41561406', '0.04581613', '9.46143019', '0.00111111', '1', 'tradelog', '25', '交易中心-成功卖出-市场ltc_btc', '9.41672295', '0.04581613', '9.46253908', 'be69dcecd6f18f547c6f9800e5801faf', '1512009547', '1');
INSERT INTO `tw_finance` VALUES ('103', '6292', 'btc', '100.88888800', '0.00000000', '100.88888800', '1.00000000', '2', 'trade', '60', '交易中心-委托买入-市场bcc_btc', '99.88888800', '1.00000000', '100.88888800', '40c8ce1b7e814c83634e3607033081b1', '1512023034', '0');
INSERT INTO `tw_finance` VALUES ('104', '6290', 'btc', '777.99999000', '0.00000000', '777.99999000', '56.78890000', '2', 'trade', '61', '交易中心-委托买入-市场bcc_btc', '721.21109000', '56.78890000', '777.99999000', '85cdf9f12648b647fff5fecf9a406e23', '1512023155', '0');
INSERT INTO `tw_finance` VALUES ('105', '6278', 'btc', '4899.80000000', '80.00000000', '4979.80000000', '10.00000000', '2', 'tradelog', '26', '交易中心-成功买入-市场bcc_btc', '4899.80000000', '70.00000000', '4969.80000000', '37819f58e3a53313081d8962e44a083b', '1512023169', '1');
INSERT INTO `tw_finance` VALUES ('106', '6292', 'btc', '99.88888800', '1.00000000', '100.88888800', '10.00000000', '1', 'tradelog', '26', '交易中心-成功卖出-市场bcc_btc', '109.85888800', '1.00000000', '110.85888800', 'aa81ca3e60ff1504c3a25ec5c50a3435', '1512023169', '0');
INSERT INTO `tw_finance` VALUES ('107', '6278', 'btc', '4899.80000000', '70.00000000', '4969.80000000', '10.00000000', '2', 'tradelog', '27', '交易中心-成功买入-市场bcc_btc', '4899.80000000', '60.00000000', '4959.80000000', 'b858fd81586ba02506c0d6969981d37c', '1512023465', '1');
INSERT INTO `tw_finance` VALUES ('108', '6292', 'btc', '109.85888800', '1.00000000', '110.85888800', '10.00000000', '1', 'tradelog', '27', '交易中心-成功卖出-市场bcc_btc', '119.82888800', '1.00000000', '120.82888800', '6b16cbebd5fae4a6b89434dd5ed1f5bc', '1512023465', '0');
INSERT INTO `tw_finance` VALUES ('109', '6277', 'btc', '26.04180722', '2.00000000', '28.04180722', '0.56788900', '2', 'trade', '64', '交易中心-委托买入-市场bcc_btc', '25.47391822', '2.56788900', '28.04180722', '139bc7863fc44373ec1ea3965fa5c3b5', '1512023467', '1');
INSERT INTO `tw_finance` VALUES ('110', '6291', 'btc', '100.01800000', '0.00000000', '100.01800000', '5.67889000', '2', 'trade', '65', '交易中心-委托买入-市场bcc_btc', '94.33911000', '5.67889000', '100.01800000', '287ca10b0fd0704665be6fe0fbe8ba6d', '1512023478', '0');
INSERT INTO `tw_finance` VALUES ('111', '6277', 'btc', '25.47391822', '2.56788900', '28.04180722', '1.13577800', '2', 'trade', '66', '交易中心-委托买入-市场bcc_btc', '24.33814022', '3.70366700', '28.04180722', 'ba8fdda4cefe80e6677452fe4b4f5f62', '1512023496', '1');
INSERT INTO `tw_finance` VALUES ('112', '6277', 'btc', '24.33814022', '3.70366700', '28.04180722', '1.13577800', '1', 'trade', '66', '交易中心-交易撤销bcc_btc', '25.47391822', '2.56788900', '28.04180722', 'f8435e47ddb053b38daaa373fa30138a', '1512023531', '1');
INSERT INTO `tw_finance` VALUES ('113', '6277', 'btc', '25.47391822', '2.56788900', '28.04180722', '0.56788900', '1', 'trade', '64', '交易中心-交易撤销bcc_btc', '26.04180722', '2.00000000', '28.04180722', 'b464b3fa8a28eedbd1ca3e1b81264a8c', '1512023538', '1');
INSERT INTO `tw_finance` VALUES ('114', '6277', 'btc', '26.04180722', '2.00000000', '28.04180722', '2.00000000', '1', 'trade', '49', '交易中心-交易撤销bcc_btc', '28.04180722', '0.00000000', '28.04180722', '5ce6c1df8efa2e92b68e0d4fa2bf1025', '1512023550', '1');
INSERT INTO `tw_finance` VALUES ('115', '6290', 'btc', '778.00599000', '56.78890000', '834.79489000', '56.78890000', '1', 'trade', '61', '交易中心-交易撤销bcc_btc', '834.79489000', '0.00000000', '834.79489000', '614520ca07a16848d8738818e881c9e2', '1512023581', '0');
INSERT INTO `tw_finance` VALUES ('116', '6278', 'btc', '4899.80000000', '60.00000000', '4959.80000000', '10.00000000', '2', 'tradelog', '28', '交易中心-成功买入-市场bcc_btc', '4899.80000000', '50.00000000', '4949.80000000', '8f4f909fff73bcf78878af03c35a9d57', '1512023595', '1');
INSERT INTO `tw_finance` VALUES ('117', '6292', 'btc', '119.82888800', '1.00000000', '120.82888800', '10.00000000', '1', 'tradelog', '28', '交易中心-成功卖出-市场bcc_btc', '129.79888800', '1.00000000', '130.79888800', 'e1c764c5599345bf2fb934c7fa0df101', '1512023595', '0');
INSERT INTO `tw_finance` VALUES ('118', '6290', 'btc', '834.80089000', '0.00000000', '834.80089000', '5.67889000', '2', 'trade', '68', '交易中心-委托买入-市场bcc_btc', '829.12200000', '5.67889000', '834.80089000', '590d2f45883f1d054398a39fb59870bc', '1512023619', '1');
INSERT INTO `tw_finance` VALUES ('119', '6277', 'btc', '28.04480722', '0.00000000', '28.04480722', '1.13577800', '2', 'trade', '69', '交易中心-委托买入-市场bcc_btc', '26.90902922', '1.13577800', '28.04480722', '9c7d3d87d1cc249814b450e483385e90', '1512023688', '1');
INSERT INTO `tw_finance` VALUES ('120', '6278', 'btc', '4899.80000000', '50.00000000', '4949.80000000', '10.00000000', '2', 'tradelog', '29', '交易中心-成功买入-市场bcc_btc', '4899.80000000', '40.00000000', '4939.80000000', 'a02e0babe1256d1fc7058fef30206c3f', '1512023693', '1');
INSERT INTO `tw_finance` VALUES ('121', '6292', 'btc', '129.79888800', '1.00000000', '130.79888800', '10.00000000', '1', 'tradelog', '29', '交易中心-成功卖出-市场bcc_btc', '139.76888800', '1.00000000', '140.76888800', '839f26c5d968ded4105edc20dc79fe58', '1512023693', '0');
INSERT INTO `tw_finance` VALUES ('122', '6278', 'btc', '4899.80000000', '40.00000000', '4939.80000000', '10.00000000', '2', 'tradelog', '30', '交易中心-成功买入-市场bcc_btc', '4899.80000000', '30.00000000', '4929.80000000', 'a20ec2e9624fbd9d592a7c50c26dba82', '1512023747', '1');
INSERT INTO `tw_finance` VALUES ('123', '6292', 'btc', '139.76888800', '1.00000000', '140.76888800', '10.00000000', '1', 'tradelog', '30', '交易中心-成功卖出-市场bcc_btc', '149.73888800', '1.00000000', '150.73888800', '000d2adaaa6089827da1324a97b60602', '1512023747', '0');
INSERT INTO `tw_finance` VALUES ('124', '6292', 'btc', '149.73888800', '1.00000000', '150.73888800', '0.56800000', '2', 'trade', '72', '交易中心-委托买入-市场bcc_btc', '149.17088800', '1.56800000', '150.73888800', 'd37b06676e70ed4bd5c700b4ac6a47a6', '1512023811', '1');
INSERT INTO `tw_finance` VALUES ('125', '6277', 'btc', '10000.00000000', '1.13577800', '10001.13577800', '1.13577800', '1', 'trade', '69', '交易中心-交易撤销bcc_btc', '10001.13577800', '0.00000000', '10001.13577800', '085014766dc0cfa5f85ff2189e5b194e', '1512023831', '0');
INSERT INTO `tw_finance` VALUES ('126', '6277', 'btc', '10001.13577800', '0.00000000', '10001.13577800', '20.00000000', '2', 'trade', '73', '交易中心-委托买入-市场bcc_btc', '9981.13577800', '20.00000000', '10001.13577800', '6286121cffcb9748e3f0cfc75f3db117', '1512023851', '1');
INSERT INTO `tw_finance` VALUES ('127', '6277', 'btc', '9981.13577800', '20.00000000', '10001.13577800', '20.00000000', '2', 'tradelog', '31', '交易中心-成功买入-市场bcc_btc', '9981.13577800', '0.00000000', '9981.13577800', '5b5ffe1f4d1643707ca50d02054b833e', '1512023851', '1');
INSERT INTO `tw_finance` VALUES ('128', '6279', 'btc', '84.13202000', '16.86698000', '100.99900000', '20.00000000', '1', 'tradelog', '31', '交易中心-成功卖出-市场bcc_btc', '104.07202000', '16.86698000', '120.93900000', 'c2d97306d063e93fcf184db808cd4be4', '1512023852', '0');
INSERT INTO `tw_finance` VALUES ('129', '6278', 'btc', '4899.80000000', '30.00000000', '4929.80000000', '30.00000000', '2', 'tradelog', '32', '交易中心-成功买入-市场bcc_btc', '4899.80000000', '0.00000000', '4899.80000000', '9d2c7e46618f3751da3d7685bcd9c84f', '1512023878', '1');
INSERT INTO `tw_finance` VALUES ('130', '6277', 'btc', '9981.13577800', '0.00000000', '9981.13577800', '30.00000000', '1', 'tradelog', '32', '交易中心-成功卖出-市场bcc_btc', '10011.04577800', '0.00000000', '10011.04577800', '8a410fbf429ddd577fce99b241c857af', '1512023878', '0');
INSERT INTO `tw_finance` VALUES ('131', '6279', 'btc', '104.07202000', '16.86698000', '120.93900000', '15.90000000', '2', 'tradelog', '33', '交易中心-成功买入-市场bcc_btc', '104.07202000', '0.96698000', '105.03900000', '422fd6ce7dd8cefd7c11889d5f31df17', '1512023879', '1');
INSERT INTO `tw_finance` VALUES ('132', '6277', 'btc', '10011.04577800', '0.00000000', '10011.04577800', '15.90000000', '1', 'tradelog', '33', '交易中心-成功卖出-市场bcc_btc', '10026.89807800', '0.00000000', '10026.89807800', '07ec300b1568944b750cadac308771d1', '1512023879', '0');
INSERT INTO `tw_finance` VALUES ('133', '6279', 'btc', '104.07202000', '0.96698000', '105.03900000', '0.96698000', '2', 'tradelog', '34', '交易中心-成功买入-市场bcc_btc', '104.07202000', '0.00000000', '104.07202000', 'd5e3ebd9cb19ea7b714d2aaf47a70dbf', '1512023879', '1');
INSERT INTO `tw_finance` VALUES ('134', '6277', 'btc', '10026.89807800', '0.00000000', '10026.89807800', '0.96698000', '1', 'tradelog', '34', '交易中心-成功卖出-市场bcc_btc', '10027.89507800', '0.00000000', '10027.89507800', '770f96a73c47fd5fabf33a83ea6d2568', '1512023879', '0');
INSERT INTO `tw_finance` VALUES ('135', '6292', 'btc', '149.17088800', '1.56800000', '150.73888800', '1.00000000', '2', 'tradelog', '35', '交易中心-成功买入-市场bcc_btc', '149.17088800', '0.56800000', '149.73888800', '99ebfc9c1466b146dbcf75d1fa14251a', '1512023880', '1');
INSERT INTO `tw_finance` VALUES ('136', '6277', 'btc', '10027.89507800', '0.00000000', '10027.89507800', '1.00000000', '1', 'tradelog', '35', '交易中心-成功卖出-市场bcc_btc', '10028.89207800', '0.00000000', '10028.89207800', '96993c4a09316177ae1878ed8ee4c4fb', '1512023880', '0');
INSERT INTO `tw_finance` VALUES ('137', '6292', 'btc', '149.17088800', '0.56800000', '149.73888800', '0.56800000', '2', 'tradelog', '36', '交易中心-成功买入-市场bcc_btc', '149.17088800', '0.00000000', '149.17088800', '9c9a50e5dcfff30bdfa577b65fd92932', '1512023881', '1');
INSERT INTO `tw_finance` VALUES ('138', '6277', 'btc', '10028.89207800', '0.00000000', '10028.89207800', '0.56800000', '1', 'tradelog', '36', '交易中心-成功卖出-市场bcc_btc', '10029.45837400', '0.00000000', '10029.45837400', '1be8b6898226789d4da78f5f59204bb1', '1512023881', '0');
INSERT INTO `tw_finance` VALUES ('139', '6271', 'btc', '9.50205964', '0.18512477', '9.68718441', '0.06246779', '2', 'tradelog', '37', '交易中心-成功买入-市场bcc_btc', '9.50205964', '0.12265698', '9.62471662', '7c5c379f971138d07bbfc2da5d300d12', '1512023881', '1');
INSERT INTO `tw_finance` VALUES ('140', '6277', 'btc', '10029.45837400', '0.00000000', '10029.45837400', '0.06246779', '1', 'tradelog', '37', '交易中心-成功卖出-市场bcc_btc', '10029.52065439', '0.00000000', '10029.52065439', 'ddb36eb00c7a98b3d89e985962332dc2', '1512023881', '0');
INSERT INTO `tw_finance` VALUES ('141', '6291', 'btc', '94.36611000', '5.67889000', '100.04500000', '5.67889000', '2', 'tradelog', '38', '交易中心-成功买入-市场bcc_btc', '94.36611000', '0.00000000', '94.36611000', '8854eb68856974762b54837dbb0c67ed', '1512023882', '1');
INSERT INTO `tw_finance` VALUES ('142', '6277', 'btc', '10029.52065439', '0.00000000', '10029.52065439', '5.67889000', '1', 'tradelog', '38', '交易中心-成功卖出-市场bcc_btc', '10035.18250772', '0.00000000', '10035.18250772', '92a34d727e91a0dd99bf020d4e632340', '1512023882', '0');
INSERT INTO `tw_finance` VALUES ('143', '6290', 'btc', '829.13400000', '5.67889000', '834.81289000', '5.67889000', '2', 'tradelog', '39', '交易中心-成功买入-市场bcc_btc', '829.13400000', '0.00000000', '829.13400000', 'd73c7d462e8fce951e4ee038d2c33307', '1512023882', '1');
INSERT INTO `tw_finance` VALUES ('144', '6277', 'btc', '10035.18250772', '0.00000000', '10035.18250772', '5.67889000', '1', 'tradelog', '39', '交易中心-成功卖出-市场bcc_btc', '10040.84436105', '0.00000000', '10040.84436105', '4adda32ca0293f1801218b8702ddee9b', '1512023883', '0');
INSERT INTO `tw_finance` VALUES ('145', '6292', 'btc', '149.17088800', '0.00000000', '149.17088800', '0.56000000', '2', 'trade', '75', '交易中心-委托买入-市场bcc_btc', '148.61088800', '0.56000000', '149.17088800', '920a7f960c66e74550192bf2f2b70ce7', '1512023921', '1');
INSERT INTO `tw_finance` VALUES ('146', '6292', 'btc', '148.61088800', '0.56000000', '149.17088800', '0.56799000', '2', 'trade', '76', '交易中心-委托买入-市场bcc_btc', '148.04289800', '1.12799000', '149.17088800', '589ab407596aa055bd7b366d275df073', '1512024459', '1');
INSERT INTO `tw_finance` VALUES ('147', '6277', 'btc', '10040.84436105', '0.00000000', '10040.84436105', '0.56788900', '2', 'trade', '77', '交易中心-委托买入-市场bcc_btc', '10040.27647205', '0.56788900', '10040.84436105', '111cd8c5d3a075c843dea337642607a0', '1512024967', '1');
INSERT INTO `tw_finance` VALUES ('148', '6277', 'btc', '10040.27647205', '0.56788900', '10040.84436105', '1.00000000', '2', 'trade', '78', '交易中心-委托买入-市场bcc_btc', '10039.27647205', '1.56788900', '10040.84436105', '2913d0db50a89ccd55f98e5d9855a0fd', '1512024979', '1');
INSERT INTO `tw_finance` VALUES ('149', '6277', 'btc', '10039.27647205', '1.56788900', '10040.84436105', '1.00000000', '2', 'trade', '79', '交易中心-委托买入-市场bcc_btc', '10038.27647205', '2.56788900', '10040.84436105', '103848e485b38b53049de3faadf72451', '1512024985', '1');
INSERT INTO `tw_finance` VALUES ('150', '6277', 'btc', '10038.27647205', '2.56788900', '10040.84436105', '2.00000000', '2', 'trade', '80', '交易中心-委托买入-市场bcc_btc', '10036.27647205', '4.56788900', '10040.84436105', 'd17e4943bc0562aadd79817de89a2a8b', '1512024994', '1');
INSERT INTO `tw_finance` VALUES ('151', '6277', 'btc', '10036.27647205', '4.56788900', '10040.84436105', '2.00000000', '2', 'trade', '81', '交易中心-委托买入-市场bcc_btc', '10034.27647205', '6.56788900', '10040.84436105', '278a38bd5e2a10fa6489c557dac4fc0c', '1512025002', '1');
INSERT INTO `tw_finance` VALUES ('152', '6277', 'btc', '10034.27647205', '6.56788900', '10040.84436105', '2.00000000', '2', 'tradelog', '40', '交易中心-成功买入-市场bcc_btc', '10034.27647205', '4.56788900', '10038.84436105', 'a4ffd84126877ce902748ed3963b3462', '1512025099', '1');
INSERT INTO `tw_finance` VALUES ('153', '6293', 'btc', '99.99990000', '0.00000000', '99.99990000', '2.00000000', '1', 'tradelog', '40', '交易中心-成功卖出-市场bcc_btc', '101.99390000', '0.00000000', '101.99390000', '8f82712b3ee01a2943ae5c5387e39570', '1512025099', '0');
INSERT INTO `tw_finance` VALUES ('154', '6277', 'btc', '10034.27647205', '4.56788900', '10038.84436105', '3.00000000', '2', 'trade', '90', '交易中心-委托买入-市场bcc_btc', '10031.27647205', '7.56788900', '10038.84436105', '82e72756cb23f6ff3e418d5344219360', '1512026741', '1');
INSERT INTO `tw_finance` VALUES ('155', '6277', 'btc', '10031.27647205', '7.56788900', '10038.84436105', '2.50000000', '2', 'tradelog', '41', '交易中心-成功买入-市场bcc_btc', '10031.27647205', '5.06788900', '10036.34436105', 'ddb8868d749c26d9c13d962f8c2a356d', '1512026742', '1');
INSERT INTO `tw_finance` VALUES ('156', '6277', 'btc', '10031.27647205', '5.06788900', '10036.34436105', '2.50000000', '1', 'tradelog', '41', '交易中心-成功卖出-市场bcc_btc', '10033.76897205', '5.06788900', '10038.83686105', 'bed0e299ef443f7a614c2b96973f6b16', '1512026742', '1');
INSERT INTO `tw_finance` VALUES ('157', '6277', 'btc', '10034.26897205', '4.56788900', '10038.83686105', '2.10000000', '2', 'trade', '93', '交易中心-委托买入-市场bcc_btc', '10032.16897205', '6.66788900', '10038.83686105', '2a228eb3088a560491689ca75a83a750', '1512027309', '1');
INSERT INTO `tw_finance` VALUES ('158', '6277', 'btc', '10032.16897205', '6.66788900', '10038.83686105', '2.00000000', '1', 'trade', '81', '交易中心-交易撤销bcc_btc', '10034.16897205', '4.66788900', '10038.83686105', '334260a895b264fa263dda7e47b1bd85', '1512027405', '1');
INSERT INTO `tw_finance` VALUES ('159', '6277', 'btc', '10034.16897205', '4.66788900', '10038.83686105', '1.00000000', '1', 'trade', '79', '交易中心-交易撤销bcc_btc', '10035.16897205', '3.66788900', '10038.83686105', '448e3d226e3d687add20ca239a3f45a7', '1512027732', '1');
INSERT INTO `tw_finance` VALUES ('160', '6277', 'btc', '10035.16897205', '3.66788900', '10038.83686105', '2.20000000', '2', 'trade', '94', '交易中心-委托买入-市场bcc_btc', '10032.96897205', '5.86788900', '10038.83686105', '1b0decac01468102bd5cebdb9f9b8dd1', '1512029055', '1');
INSERT INTO `tw_finance` VALUES ('161', '6277', 'btc', '10032.96897205', '5.86788900', '10038.83686105', '2.20000000', '2', 'tradelog', '42', '交易中心-成功买入-市场bcc_btc', '10032.96897205', '3.66788900', '10036.63686105', '0bc05b1d99dc740ab4076e91b437b746', '1512029646', '1');
INSERT INTO `tw_finance` VALUES ('162', '6277', 'btc', '10032.96897205', '3.66788900', '10036.63686105', '2.20000000', '1', 'tradelog', '42', '交易中心-成功卖出-市场bcc_btc', '10035.16237205', '3.66788900', '10038.83026105', '5eec5e4950b9c7c31677e811b0f42bdb', '1512029647', '1');
INSERT INTO `tw_finance` VALUES ('163', '6277', 'btc', '10035.16237205', '3.66788900', '10038.83026105', '2.10000000', '2', 'tradelog', '43', '交易中心-成功买入-市场bcc_btc', '10035.16237205', '1.56788900', '10036.73026105', '4a10036b5966d339a6d7ec993bcaac7e', '1512030839', '1');
INSERT INTO `tw_finance` VALUES ('164', '6290', 'btc', '829.13460000', '0.00000000', '829.13460000', '2.10000000', '1', 'tradelog', '43', '交易中心-成功卖出-市场bcc_btc', '831.22830000', '0.00000000', '831.22830000', 'edd41b2cef734f1f6ca2941156425829', '1512030840', '0');
INSERT INTO `tw_finance` VALUES ('165', '6290', 'btc', '831.22830000', '0.00000000', '831.22830000', '21.00000000', '2', 'trade', '100', '交易中心-委托买入-市场bcc_btc', '810.22830000', '21.00000000', '831.22830000', '62beba40d377bb7d2300e66cff857250', '1512031833', '1');
INSERT INTO `tw_finance` VALUES ('166', '6290', 'btc', '810.22830000', '21.00000000', '831.22830000', '2.25500000', '2', 'tradelog', '44', '交易中心-成功买入-市场bcc_btc', '810.22830000', '18.74500000', '828.97330000', 'd8fc92a6e370bace449a359fb545d04a', '1512031833', '1');
INSERT INTO `tw_finance` VALUES ('167', '6277', 'btc', '10035.16426205', '1.56788900', '10036.73215105', '2.25500000', '1', 'tradelog', '44', '交易中心-成功卖出-市场bcc_btc', '10037.41249705', '1.56788900', '10038.98038605', '2b116b21a6beb43f24f4074159d75877', '1512031833', '0');
INSERT INTO `tw_finance` VALUES ('168', '6290', 'btc', '810.97330000', '18.00000000', '828.97330000', '2.30000000', '2', 'tradelog', '45', '交易中心-成功买入-市场bcc_btc', '810.97330000', '15.70000000', '826.67330000', '4cc37ae7031d2a29d8988a55203c5b30', '1512031834', '1');
INSERT INTO `tw_finance` VALUES ('169', '6277', 'btc', '10037.41249705', '1.56788900', '10038.98038605', '2.30000000', '1', 'tradelog', '45', '交易中心-成功卖出-市场bcc_btc', '10039.70559705', '1.56788900', '10041.27348605', '35276c950721339ecdb6de8264dcba3b', '1512031834', '0');
INSERT INTO `tw_finance` VALUES ('170', '6290', 'btc', '811.67330000', '15.00000000', '826.67330000', '2.50000000', '2', 'tradelog', '46', '交易中心-成功买入-市场bcc_btc', '811.67330000', '12.50000000', '824.17330000', '69ceacd2cea8ea88fae4e556109b69f6', '1512031835', '1');
INSERT INTO `tw_finance` VALUES ('171', '6277', 'btc', '10039.70559705', '1.56788900', '10041.27348605', '2.50000000', '1', 'tradelog', '46', '交易中心-成功卖出-市场bcc_btc', '10042.19809705', '1.56788900', '10043.76598605', 'bab2caff9e6d1093eb41350174786d28', '1512031835', '0');
INSERT INTO `tw_finance` VALUES ('172', '6290', 'btc', '812.17330000', '12.00000000', '824.17330000', '2.80000000', '2', 'tradelog', '47', '交易中心-成功买入-市场bcc_btc', '812.17330000', '9.20000000', '821.37330000', '10f20278e1ee287d2508519f759f6244', '1512031835', '1');
INSERT INTO `tw_finance` VALUES ('173', '6277', 'btc', '10042.19809705', '1.56788900', '10043.76598605', '2.80000000', '1', 'tradelog', '47', '交易中心-成功卖出-市场bcc_btc', '10044.98969705', '1.56788900', '10046.55758605', '171b2ae051fb3913451517fb71e40c2b', '1512031835', '0');
INSERT INTO `tw_finance` VALUES ('174', '6290', 'btc', '812.37330000', '9.00000000', '821.37330000', '2.90000000', '2', 'tradelog', '48', '交易中心-成功买入-市场bcc_btc', '812.37330000', '6.10000000', '818.47330000', '837d557ff698ae533d307ee3f0ea1727', '1512031836', '1');
INSERT INTO `tw_finance` VALUES ('175', '6277', 'btc', '10044.98969705', '1.56788900', '10046.55758605', '2.90000000', '1', 'tradelog', '48', '交易中心-成功卖出-市场bcc_btc', '10047.88099705', '1.56788900', '10049.44888605', '22a5569d4446a31f8a06270d2f5e5ce5', '1512031836', '0');
INSERT INTO `tw_finance` VALUES ('176', '6290', 'btc', '812.47330000', '6.00000000', '818.47330000', '3.00000000', '2', 'tradelog', '49', '交易中心-成功买入-市场bcc_btc', '812.47330000', '3.00000000', '815.47330000', '34f89beac759d833eb110f029976d238', '1512031836', '1');
INSERT INTO `tw_finance` VALUES ('177', '6277', 'btc', '10047.88099705', '1.56788900', '10049.44888605', '3.00000000', '1', 'tradelog', '49', '交易中心-成功卖出-市场bcc_btc', '10050.87199705', '1.56788900', '10052.43988605', 'd0b12e209d921d7378996a561bc38269', '1512031836', '0');
INSERT INTO `tw_finance` VALUES ('178', '6290', 'btc', '812.47330000', '3.00000000', '815.47330000', '3.00000000', '2', 'tradelog', '50', '交易中心-成功买入-市场bcc_btc', '812.47330000', '0.00000000', '812.47330000', 'd7249ee913c58c80e483674a486f13ff', '1512031837', '1');
INSERT INTO `tw_finance` VALUES ('179', '6277', 'btc', '10050.87199705', '1.56788900', '10052.43988605', '3.00000000', '1', 'tradelog', '50', '交易中心-成功卖出-市场bcc_btc', '10053.86299705', '1.56788900', '10055.43088605', 'ce7ab208a369f42daa52c32b9ad79d6e', '1512031837', '0');
INSERT INTO `tw_finance` VALUES ('180', '6290', 'btc', '812.47330000', '0.00000000', '812.47330000', '21.00000000', '2', 'trade', '101', '交易中心-委托买入-市场bcc_btc', '791.47330000', '21.00000000', '812.47330000', '71a064857498afc8339ac08532530674', '1512031838', '1');
INSERT INTO `tw_finance` VALUES ('181', '6290', 'btc', '791.47330000', '21.00000000', '812.47330000', '100.00000000', '2', 'trade', '102', '交易中心-委托买入-市场bcc_btc', '691.47330000', '121.00000000', '812.47330000', '479e613ea0f2ff25ed98a2647bab8f3e', '1512031848', '1');
INSERT INTO `tw_finance` VALUES ('182', '6290', 'btc', '691.47330000', '121.00000000', '812.47330000', '4.00000000', '2', 'tradelog', '51', '交易中心-成功买入-市场bcc_btc', '691.47330000', '117.00000000', '808.47330000', '259195548b7c960ff87346e1452c8a9a', '1512031848', '1');
INSERT INTO `tw_finance` VALUES ('183', '6277', 'btc', '10053.86299705', '1.56788900', '10055.43088605', '4.00000000', '1', 'tradelog', '51', '交易中心-成功卖出-市场bcc_btc', '10057.85099705', '1.56788900', '10059.41888605', 'ce9bcab6acc58d38dd0255b087f04e74', '1512031849', '0');
INSERT INTO `tw_finance` VALUES ('184', '6290', 'btc', '697.47330000', '111.00000000', '808.47330000', '4.00000000', '2', 'tradelog', '52', '交易中心-成功买入-市场bcc_btc', '697.47330000', '107.00000000', '804.47330000', '48a930df443fe880661c9071f57c4bc2', '1512031849', '1');
INSERT INTO `tw_finance` VALUES ('185', '6277', 'btc', '10057.85099705', '1.56788900', '10059.41888605', '4.00000000', '1', 'tradelog', '52', '交易中心-成功卖出-市场bcc_btc', '10061.83899705', '1.56788900', '10063.40688605', '428682ac0db674527fb18c3b7c99ab6a', '1512031849', '0');
INSERT INTO `tw_finance` VALUES ('186', '6290', 'btc', '703.47330000', '101.00000000', '804.47330000', '5.00000000', '2', 'tradelog', '53', '交易中心-成功买入-市场bcc_btc', '703.47330000', '96.00000000', '799.47330000', 'e866640f3708a687b8081088fb2a5423', '1512031850', '1');
INSERT INTO `tw_finance` VALUES ('187', '6277', 'btc', '10061.83899705', '1.56788900', '10063.40688605', '5.00000000', '1', 'tradelog', '53', '交易中心-成功卖出-市场bcc_btc', '10066.82399705', '1.56788900', '10068.39188605', '2a19da62adba8c16371747157012950b', '1512031850', '0');
INSERT INTO `tw_finance` VALUES ('188', '6277', 'btc', '10066.82399705', '1.56788900', '10068.39188605', '1.00000000', '1', 'trade', '78', '交易中心-交易撤销bcc_btc', '10067.82399705', '0.56788900', '10068.39188605', 'e53292f6e0795fed4d164f851c254e33', '1512031862', '1');
INSERT INTO `tw_finance` VALUES ('189', '6277', 'btc', '10067.82399705', '0.56788900', '10068.39188605', '0.56788900', '1', 'trade', '77', '交易中心-交易撤销bcc_btc', '10068.39188605', '0.00000000', '10068.39188605', '6e3ecf0358e37713da6fd66efe04c7aa', '1512031867', '1');
INSERT INTO `tw_finance` VALUES ('190', '6290', 'btc', '708.47330000', '91.00000000', '799.47330000', '70.00000000', '2', 'tradelog', '54', '交易中心-成功买入-市场bcc_btc', '708.47330000', '21.00000000', '729.47330000', '297f23e135cd73d09825013942c4422e', '1512031883', '1');
INSERT INTO `tw_finance` VALUES ('191', '6290', 'btc', '708.47330000', '21.00000000', '729.47330000', '70.00000000', '1', 'tradelog', '54', '交易中心-成功卖出-市场bcc_btc', '778.26330000', '21.00000000', '799.26330000', '9e511b2c1d93919c9655b1f30dfdce00', '1512031883', '1');
INSERT INTO `tw_finance` VALUES ('192', '6290', 'btc', '778.26330000', '21.00000000', '799.26330000', '21.00000000', '2', 'tradelog', '55', '交易中心-成功买入-市场bcc_btc', '778.26330000', '0.00000000', '778.26330000', '0494281cfd42fa8f90d8d73701ce24cc', '1512031884', '1');
INSERT INTO `tw_finance` VALUES ('193', '6290', 'btc', '778.26330000', '0.00000000', '778.26330000', '21.00000000', '1', 'tradelog', '55', '交易中心-成功卖出-市场bcc_btc', '799.20030000', '0.00000000', '799.20030000', '459eb13c76a7c6a9d51e95baca72983c', '1512031884', '1');
INSERT INTO `tw_finance` VALUES ('194', '6292', 'btc', '148.04469800', '1.12799000', '149.17268800', '0.56799000', '2', 'tradelog', '56', '交易中心-成功买入-市场bcc_btc', '148.04469800', '0.56000000', '148.60469800', 'bc155159c3dba3065f05b8ca69c825b1', '1512031884', '1');
INSERT INTO `tw_finance` VALUES ('195', '6290', 'btc', '799.20030000', '0.00000000', '799.20030000', '0.56799000', '1', 'tradelog', '56', '交易中心-成功卖出-市场bcc_btc', '799.76658603', '0.00000000', '799.76658603', 'de0a6386183bcd8d2f18426bf20bc87a', '1512031884', '0');
INSERT INTO `tw_finance` VALUES ('196', '6292', 'btc', '148.04469800', '0.56000000', '148.60469800', '0.56000000', '2', 'tradelog', '57', '交易中心-成功买入-市场bcc_btc', '148.04469800', '0.00000000', '148.04469800', '6f845b426f20170af4ccd282c171ec19', '1512031885', '1');
INSERT INTO `tw_finance` VALUES ('197', '6290', 'btc', '799.76658603', '0.00000000', '799.76658603', '0.56000000', '1', 'tradelog', '57', '交易中心-成功卖出-市场bcc_btc', '800.32490603', '0.00000000', '800.32490603', '54bf655b596e43eb93bc30dc9599eba5', '1512031885', '0');
INSERT INTO `tw_finance` VALUES ('198', '6291', 'btc', '94.36731000', '0.00000000', '94.36731000', '5.60000000', '2', 'trade', '105', '交易中心-委托买入-市场bcc_btc', '88.76731000', '5.60000000', '94.36731000', 'efb284cebed65c02a1e0192d75d8730a', '1512031984', '1');
INSERT INTO `tw_finance` VALUES ('199', '6291', 'btc', '88.76731000', '5.60000000', '94.36731000', '5.60000000', '2', 'tradelog', '58', '交易中心-成功买入-市场bcc_btc', '88.76731000', '0.00000000', '88.76731000', '841c0e858bc4d9ad9fb397aad6bc07e5', '1512031984', '1');
INSERT INTO `tw_finance` VALUES ('200', '6290', 'btc', '800.32490603', '0.00000000', '800.32490603', '5.60000000', '1', 'tradelog', '58', '交易中心-成功卖出-市场bcc_btc', '805.90810603', '0.00000000', '805.90810603', '2897a6ab3a20b9a592ba024249340dbf', '1512031984', '0');
INSERT INTO `tw_finance` VALUES ('201', '6290', 'btc', '805.90810603', '0.00000000', '805.90810603', '12.88000000', '2', 'trade', '107', '交易中心-委托买入-市场bcc_btc', '793.02810603', '12.88000000', '805.90810603', '314f4c0db459419382418da441acac65', '1512032814', '1');
INSERT INTO `tw_finance` VALUES ('202', '6290', 'btc', '793.02810603', '12.88000000', '805.90810603', '12.88000000', '2', 'tradelog', '59', '交易中心-成功买入-市场bcc_btc', '793.02810603', '0.00000000', '793.02810603', 'd487700125422ac599b9e3cc8dbb54b8', '1512032814', '1');
INSERT INTO `tw_finance` VALUES ('203', '6291', 'btc', '88.76731000', '0.00000000', '88.76731000', '12.88000000', '1', 'tradelog', '59', '交易中心-成功卖出-市场bcc_btc', '101.60867000', '0.00000000', '101.60867000', 'c0d35584ee7dad6235e1a9f6cb8f5b2f', '1512032815', '0');
INSERT INTO `tw_finance` VALUES ('204', '6291', 'btc', '101.60867000', '0.00000000', '101.60867000', '9.52000000', '2', 'trade', '108', '交易中心-委托买入-市场bcc_btc', '92.08867000', '9.52000000', '101.60867000', 'd8ed378216c18b8bbb23890a38d2a21f', '1512032884', '1');
INSERT INTO `tw_finance` VALUES ('205', '6291', 'btc', '92.08867000', '9.52000000', '101.60867000', '9.52000000', '1', 'trade', '108', '交易中心-交易撤销bcc_btc', '101.60867000', '0.00000000', '101.60867000', '4d6da2a179ef7f7d2a34a3a6f7a778cd', '1512032891', '1');
INSERT INTO `tw_finance` VALUES ('206', '6290', 'btc', '793.03969803', '0.00000000', '793.03969803', '9.52000000', '2', 'trade', '110', '交易中心-委托买入-市场bcc_btc', '783.51969803', '9.52000000', '793.03969803', '41b758932d2323b3f72aa0659a8e06b8', '1512032934', '1');
INSERT INTO `tw_finance` VALUES ('207', '6290', 'btc', '783.51969803', '9.52000000', '793.03969803', '9.52000000', '2', 'tradelog', '60', '交易中心-成功买入-市场bcc_btc', '783.51969803', '0.00000000', '783.51969803', '8d691a3bfb0b85b5214823b1966c0861', '1512032934', '1');
INSERT INTO `tw_finance` VALUES ('208', '6291', 'btc', '101.60867000', '0.00000000', '101.60867000', '9.52000000', '1', 'tradelog', '60', '交易中心-成功卖出-市场bcc_btc', '111.10011000', '0.00000000', '111.10011000', '4ee7b3c6f47a62ffcf0fdebfbcfc0dd6', '1512032934', '0');
INSERT INTO `tw_finance` VALUES ('209', '6290', 'btc', '783.52826603', '0.00000000', '783.52826603', '5.60000000', '2', 'trade', '111', '交易中心-委托买入-市场bcc_btc', '777.92826603', '5.60000000', '783.52826603', '71153238efb576c49b3201d3ad9c0b19', '1512032974', '1');
INSERT INTO `tw_finance` VALUES ('210', '6290', 'btc', '777.92826603', '5.60000000', '783.52826603', '5.60000000', '2', 'tradelog', '61', '交易中心-成功买入-市场bcc_btc', '777.92826603', '0.00000000', '777.92826603', '91c3453b1ff6ee3c93341f3c0350a438', '1512032975', '1');
INSERT INTO `tw_finance` VALUES ('211', '6291', 'btc', '111.10011000', '0.00000000', '111.10011000', '5.60000000', '1', 'tradelog', '61', '交易中心-成功卖出-市场bcc_btc', '116.68331000', '0.00000000', '116.68331000', 'afbd27bdf4234a0582f6b9576a73e674', '1512032975', '0');
INSERT INTO `tw_finance` VALUES ('212', '6274', 'btc', '9.43472295', '0.04581613', '9.48053908', '0.60000000', '2', 'trade', '113', '交易中心-委托买入-市场bcc_btc', '8.83472295', '0.64581613', '9.48053908', '172ef43208221ebf7057a8b545870877', '1512100386', '1');
INSERT INTO `tw_finance` VALUES ('213', '6274', 'btc', '8.83472295', '0.64581613', '9.48053908', '0.00999999', '2', 'tradelog', '62', '交易中心-成功买入-市场ltc_btc', '8.83472295', '0.63581614', '9.47053909', '93f928bd34849a8d8efe578d7489a470', '1512109312', '1');
INSERT INTO `tw_finance` VALUES ('214', '6294', 'btc', '1000.00000000', '0.00000000', '1000.00000000', '0.00999999', '1', 'tradelog', '62', '交易中心-成功卖出-市场ltc_btc', '1000.00998001', '0.00000000', '1000.00998001', '3696bbf759a9bb5afe814a7e00ac5c65', '1512109312', '0');
INSERT INTO `tw_finance` VALUES ('215', '6274', 'btc', '8.83472295', '0.63581614', '9.47053909', '0.00111111', '2', 'tradelog', '63', '交易中心-成功买入-市场ltc_btc', '8.83472295', '0.63470503', '9.46942798', '89d7d852bd9fa52c005469486e2393fc', '1512109313', '1');
INSERT INTO `tw_finance` VALUES ('216', '6294', 'btc', '1000.00998001', '0.00000000', '1000.00998001', '0.00111111', '1', 'tradelog', '63', '交易中心-成功卖出-市场ltc_btc', '1000.01108890', '0.00000000', '1000.01108890', '38e2ca4aa124dfa90363c92749a67858', '1512109313', '0');
INSERT INTO `tw_finance` VALUES ('217', '6274', 'btc', '8.83472295', '0.63470503', '9.46942798', '0.60000000', '2', 'tradelog', '64', '交易中心-成功买入-市场bcc_btc', '8.83472295', '0.03470503', '8.86942798', 'c9176bf1ec2051cb67ef585990acc5ed', '1512109779', '1');
INSERT INTO `tw_finance` VALUES ('218', '6271', 'btc', '9.50206264', '0.12265698', '9.62471962', '0.60000000', '1', 'tradelog', '64', '交易中心-成功卖出-市场bcc_btc', '10.10026264', '0.12265698', '10.22291962', 'dfd9bbf1a2858a2d8f17836ae48658e9', '1512109779', '1');

-- ----------------------------
-- Table structure for tw_finance_log
-- ----------------------------
DROP TABLE IF EXISTS `tw_finance_log`;
CREATE TABLE `tw_finance_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `adminname` varchar(50) DEFAULT '' COMMENT '管理员用户名',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '记录时间',
  `plusminus` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0减少1增加',
  `amount` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000' COMMENT '金额，8位小数',
  `description` varchar(100) DEFAULT '' COMMENT '备注',
  `optype` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '动作类型',
  `cointype` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '资金类型',
  `old_amount` decimal(20,8) NOT NULL DEFAULT '0.00000000' COMMENT '原始数据',
  `new_amount` decimal(20,8) NOT NULL DEFAULT '0.00000000' COMMENT '修改后的数据',
  `userid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `adminid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '操作者id',
  `addip` varchar(100) NOT NULL DEFAULT '0.0.0.0',
  `position` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0后台1前台pc端2前台手机端',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=590 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC
/*!50100 PARTITION BY RANGE (id)
(PARTITION p1 VALUES LESS THAN (1000000) ENGINE = InnoDB,
 PARTITION p2 VALUES LESS THAN (2000000) ENGINE = InnoDB,
 PARTITION p3 VALUES LESS THAN (3000000) ENGINE = InnoDB,
 PARTITION p4 VALUES LESS THAN (4000000) ENGINE = InnoDB,
 PARTITION p5 VALUES LESS THAN (5000000) ENGINE = InnoDB,
 PARTITION p6 VALUES LESS THAN (6000000) ENGINE = InnoDB,
 PARTITION p7 VALUES LESS THAN (7000000) ENGINE = InnoDB,
 PARTITION p8 VALUES LESS THAN (8000000) ENGINE = InnoDB,
 PARTITION p9 VALUES LESS THAN (9000000) ENGINE = InnoDB,
 PARTITION p10 VALUES LESS THAN (10000000) ENGINE = InnoDB,
 PARTITION p11 VALUES LESS THAN (11000000) ENGINE = InnoDB,
 PARTITION p12 VALUES LESS THAN (12000000) ENGINE = InnoDB,
 PARTITION p13 VALUES LESS THAN (13000000) ENGINE = InnoDB,
 PARTITION p14 VALUES LESS THAN (14000000) ENGINE = InnoDB,
 PARTITION p15 VALUES LESS THAN (15000000) ENGINE = InnoDB,
 PARTITION p16 VALUES LESS THAN (16000000) ENGINE = InnoDB,
 PARTITION p17 VALUES LESS THAN (17000000) ENGINE = InnoDB,
 PARTITION p18 VALUES LESS THAN (18000000) ENGINE = InnoDB,
 PARTITION p19 VALUES LESS THAN (19000000) ENGINE = InnoDB,
 PARTITION p20 VALUES LESS THAN (20000000) ENGINE = InnoDB,
 PARTITION p21 VALUES LESS THAN (21000000) ENGINE = InnoDB,
 PARTITION p22 VALUES LESS THAN (22000000) ENGINE = InnoDB,
 PARTITION p23 VALUES LESS THAN (23000000) ENGINE = InnoDB,
 PARTITION p24 VALUES LESS THAN (24000000) ENGINE = InnoDB,
 PARTITION p25 VALUES LESS THAN (25000000) ENGINE = InnoDB,
 PARTITION p26 VALUES LESS THAN (26000000) ENGINE = InnoDB,
 PARTITION p27 VALUES LESS THAN (27000000) ENGINE = InnoDB,
 PARTITION p28 VALUES LESS THAN (28000000) ENGINE = InnoDB,
 PARTITION p29 VALUES LESS THAN (29000000) ENGINE = InnoDB,
 PARTITION p30 VALUES LESS THAN (30000000) ENGINE = InnoDB,
 PARTITION p31 VALUES LESS THAN (31000000) ENGINE = InnoDB,
 PARTITION p32 VALUES LESS THAN (32000000) ENGINE = InnoDB,
 PARTITION p33 VALUES LESS THAN (33000000) ENGINE = InnoDB,
 PARTITION p34 VALUES LESS THAN (34000000) ENGINE = InnoDB,
 PARTITION p35 VALUES LESS THAN (35000000) ENGINE = InnoDB,
 PARTITION p36 VALUES LESS THAN (36000000) ENGINE = InnoDB,
 PARTITION p37 VALUES LESS THAN (37000000) ENGINE = InnoDB,
 PARTITION p38 VALUES LESS THAN (38000000) ENGINE = InnoDB,
 PARTITION p39 VALUES LESS THAN (39000000) ENGINE = InnoDB,
 PARTITION p40 VALUES LESS THAN (40000000) ENGINE = InnoDB,
 PARTITION p41 VALUES LESS THAN (41000000) ENGINE = InnoDB,
 PARTITION p42 VALUES LESS THAN (42000000) ENGINE = InnoDB,
 PARTITION p43 VALUES LESS THAN (43000000) ENGINE = InnoDB,
 PARTITION p44 VALUES LESS THAN (44000000) ENGINE = InnoDB,
 PARTITION p45 VALUES LESS THAN (45000000) ENGINE = InnoDB,
 PARTITION p46 VALUES LESS THAN (46000000) ENGINE = InnoDB,
 PARTITION p47 VALUES LESS THAN (47000000) ENGINE = InnoDB,
 PARTITION p48 VALUES LESS THAN (48000000) ENGINE = InnoDB,
 PARTITION p49 VALUES LESS THAN (49000000) ENGINE = InnoDB,
 PARTITION p50 VALUES LESS THAN (50000000) ENGINE = InnoDB,
 PARTITION p51 VALUES LESS THAN (51000000) ENGINE = InnoDB,
 PARTITION p52 VALUES LESS THAN (52000000) ENGINE = InnoDB,
 PARTITION p53 VALUES LESS THAN (53000000) ENGINE = InnoDB,
 PARTITION p54 VALUES LESS THAN (54000000) ENGINE = InnoDB,
 PARTITION p55 VALUES LESS THAN (55000000) ENGINE = InnoDB,
 PARTITION p56 VALUES LESS THAN (56000000) ENGINE = InnoDB,
 PARTITION p57 VALUES LESS THAN (57000000) ENGINE = InnoDB,
 PARTITION p58 VALUES LESS THAN (58000000) ENGINE = InnoDB,
 PARTITION p59 VALUES LESS THAN (59000000) ENGINE = InnoDB,
 PARTITION p60 VALUES LESS THAN (60000000) ENGINE = InnoDB,
 PARTITION p61 VALUES LESS THAN (61000000) ENGINE = InnoDB,
 PARTITION p62 VALUES LESS THAN (62000000) ENGINE = InnoDB,
 PARTITION p63 VALUES LESS THAN (63000000) ENGINE = InnoDB,
 PARTITION p64 VALUES LESS THAN (64000000) ENGINE = InnoDB,
 PARTITION p65 VALUES LESS THAN (65000000) ENGINE = InnoDB,
 PARTITION p66 VALUES LESS THAN (66000000) ENGINE = InnoDB,
 PARTITION p67 VALUES LESS THAN (67000000) ENGINE = InnoDB,
 PARTITION p68 VALUES LESS THAN (68000000) ENGINE = InnoDB,
 PARTITION p69 VALUES LESS THAN (69000000) ENGINE = InnoDB,
 PARTITION p70 VALUES LESS THAN (70000000) ENGINE = InnoDB,
 PARTITION p71 VALUES LESS THAN (71000000) ENGINE = InnoDB,
 PARTITION p72 VALUES LESS THAN (72000000) ENGINE = InnoDB,
 PARTITION p73 VALUES LESS THAN (73000000) ENGINE = InnoDB,
 PARTITION p74 VALUES LESS THAN (74000000) ENGINE = InnoDB,
 PARTITION p75 VALUES LESS THAN (75000000) ENGINE = InnoDB,
 PARTITION p76 VALUES LESS THAN (76000000) ENGINE = InnoDB,
 PARTITION p77 VALUES LESS THAN (77000000) ENGINE = InnoDB,
 PARTITION p78 VALUES LESS THAN (78000000) ENGINE = InnoDB,
 PARTITION p79 VALUES LESS THAN (79000000) ENGINE = InnoDB,
 PARTITION p80 VALUES LESS THAN (80000000) ENGINE = InnoDB,
 PARTITION p81 VALUES LESS THAN (81000000) ENGINE = InnoDB,
 PARTITION p82 VALUES LESS THAN (82000000) ENGINE = InnoDB,
 PARTITION p83 VALUES LESS THAN (83000000) ENGINE = InnoDB,
 PARTITION p84 VALUES LESS THAN (84000000) ENGINE = InnoDB,
 PARTITION p85 VALUES LESS THAN (85000000) ENGINE = InnoDB,
 PARTITION p86 VALUES LESS THAN (86000000) ENGINE = InnoDB,
 PARTITION p87 VALUES LESS THAN (87000000) ENGINE = InnoDB,
 PARTITION p88 VALUES LESS THAN (88000000) ENGINE = InnoDB,
 PARTITION p89 VALUES LESS THAN (89000000) ENGINE = InnoDB,
 PARTITION p90 VALUES LESS THAN (90000000) ENGINE = InnoDB,
 PARTITION p91 VALUES LESS THAN (91000000) ENGINE = InnoDB,
 PARTITION p92 VALUES LESS THAN (92000000) ENGINE = InnoDB,
 PARTITION p93 VALUES LESS THAN (93000000) ENGINE = InnoDB,
 PARTITION p94 VALUES LESS THAN (94000000) ENGINE = InnoDB,
 PARTITION p95 VALUES LESS THAN (95000000) ENGINE = InnoDB,
 PARTITION p96 VALUES LESS THAN (96000000) ENGINE = InnoDB,
 PARTITION p97 VALUES LESS THAN (97000000) ENGINE = InnoDB,
 PARTITION p98 VALUES LESS THAN (98000000) ENGINE = InnoDB,
 PARTITION p99 VALUES LESS THAN (99000000) ENGINE = InnoDB,
 PARTITION p100 VALUES LESS THAN (100000000) ENGINE = InnoDB,
 PARTITION p101 VALUES LESS THAN (101000000) ENGINE = InnoDB,
 PARTITION p102 VALUES LESS THAN (102000000) ENGINE = InnoDB,
 PARTITION p103 VALUES LESS THAN (103000000) ENGINE = InnoDB,
 PARTITION p104 VALUES LESS THAN (104000000) ENGINE = InnoDB,
 PARTITION p105 VALUES LESS THAN (105000000) ENGINE = InnoDB,
 PARTITION p106 VALUES LESS THAN (106000000) ENGINE = InnoDB,
 PARTITION p107 VALUES LESS THAN (107000000) ENGINE = InnoDB,
 PARTITION p108 VALUES LESS THAN (108000000) ENGINE = InnoDB,
 PARTITION p109 VALUES LESS THAN (109000000) ENGINE = InnoDB,
 PARTITION p110 VALUES LESS THAN (110000000) ENGINE = InnoDB,
 PARTITION p111 VALUES LESS THAN (111000000) ENGINE = InnoDB,
 PARTITION p112 VALUES LESS THAN (112000000) ENGINE = InnoDB,
 PARTITION p113 VALUES LESS THAN (113000000) ENGINE = InnoDB,
 PARTITION p114 VALUES LESS THAN (114000000) ENGINE = InnoDB,
 PARTITION p115 VALUES LESS THAN (115000000) ENGINE = InnoDB,
 PARTITION p116 VALUES LESS THAN (116000000) ENGINE = InnoDB,
 PARTITION p117 VALUES LESS THAN (117000000) ENGINE = InnoDB,
 PARTITION p118 VALUES LESS THAN (118000000) ENGINE = InnoDB,
 PARTITION p119 VALUES LESS THAN (119000000) ENGINE = InnoDB,
 PARTITION p120 VALUES LESS THAN (120000000) ENGINE = InnoDB,
 PARTITION p121 VALUES LESS THAN (121000000) ENGINE = InnoDB,
 PARTITION p122 VALUES LESS THAN MAXVALUE ENGINE = InnoDB) */;

-- ----------------------------
-- Records of tw_finance_log
-- ----------------------------
INSERT INTO `tw_finance_log` VALUES ('3', '1923191641@qq.com', 'admin', '1510817205', '1', '100.49000000', '', '1', '1', '0.00000000', '100.49000000', '6272', '1', '127.0.0.1', '0');
INSERT INTO `tw_finance_log` VALUES ('4', '1923191641@qq.com', '1923191641@qq.com', '1510817522', '0', '100.00000000', '', '5', '1', '100.49000000', '0.49000000', '6272', '6272', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('5', '1923191641@qq.com', '1923191641@qq.com', '1510817526', '1', '100.00000000', '', '24', '1', '0.49000000', '100.49000000', '6272', '6272', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('6', '1923191641@qq.com', 'admin', '1510817593', '1', '10.00000000', '', '3', '3', '0.00000000', '10.00000000', '6272', '1', '127.0.0.1', '0');
INSERT INTO `tw_finance_log` VALUES ('7', '1923191641@qq.com', 'admin', '1510817593', '1', '100.00000000', '', '3', '4', '0.00000000', '100.00000000', '6272', '1', '127.0.0.1', '0');
INSERT INTO `tw_finance_log` VALUES ('8', '1923191641@qq.com', 'admin', '1510817593', '1', '1000.00000000', '', '3', '6', '0.00000000', '1000.00000000', '6272', '1', '127.0.0.1', '0');
INSERT INTO `tw_finance_log` VALUES ('9', '1923191641@qq.com', '1923191641@qq.com', '1510817655', '0', '0.01111110', '', '18', '1', '10.00000000', '9.98888890', '6272', '6272', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('10', '1923191641@qq.com', '1923191641@qq.com', '1510817655', '1', '0.01111110', '', '20', '1', '0.00000000', '0.01111110', '6272', '6272', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('11', '1923191641@qq.com', '1923191641@qq.com', '1510817663', '0', '1.00000000', '', '19', '4', '100.00000000', '99.00000000', '6272', '6272', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('12', '1923191641@qq.com', '1923191641@qq.com', '1510817663', '1', '1.00000000', '', '21', '4', '0.00000000', '1.00000000', '6272', '6272', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('13', '1923191641@qq.com', '1923191641@qq.com', '1510817663', '1', '1.00000000', '', '10', '4', '99.00000000', '100.00000000', '6272', '6272', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('14', '1923191641@qq.com', '1923191641@qq.com', '1510817663', '0', '0.01111110', '', '13', '1', '0.01111110', '0.00000000', '6272', '6272', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('15', '1923191641@qq.com', '1923191641@qq.com', '1510817663', '1', '0.01108890', '', '11', '1', '9.98888890', '9.99997780', '6272', '6272', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('16', '1923191641@qq.com', '1923191641@qq.com', '1510817663', '0', '1.00000000', '', '14', '4', '1.00000000', '0.00000000', '6272', '6272', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('17', '1923191641@qq.com', '1923191641@qq.com', '1510817673', '0', '0.05605600', '', '18', '1', '9.99997780', '9.94392180', '6272', '6272', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('18', '1923191641@qq.com', '1923191641@qq.com', '1510817673', '1', '0.05605600', '', '20', '1', '0.00000000', '0.05605600', '6272', '6272', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('19', '1923191641@qq.com', '1923191641@qq.com', '1510817684', '0', '1.00000000', '', '19', '6', '1000.00000000', '999.00000000', '6272', '6272', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('20', '1923191641@qq.com', '1923191641@qq.com', '1510817684', '1', '1.00000000', '', '21', '6', '0.00000000', '1.00000000', '6272', '6272', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('21', '1923191641@qq.com', '1923191641@qq.com', '1510817684', '1', '1.00000000', '', '10', '6', '999.00000000', '1000.00000000', '6272', '6272', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('22', '1923191641@qq.com', '1923191641@qq.com', '1510817684', '0', '0.05605600', '', '13', '1', '0.05605600', '0.00000000', '6272', '6272', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('23', '1923191641@qq.com', '1923191641@qq.com', '1510817684', '1', '0.05594400', '', '11', '1', '9.94392180', '9.99986580', '6272', '6272', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('24', '1923191641@qq.com', '1923191641@qq.com', '1510817684', '0', '1.00000000', '', '14', '6', '1.00000000', '0.00000000', '6272', '6272', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('25', '584253338@qq.com', '584253338@qq.com', '1511163140', '0', '10.00000000', '', '19', '4', '100.00000000', '90.00000000', '6273', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('26', '584253338@qq.com', '584253338@qq.com', '1511163140', '1', '10.00000000', '', '21', '4', '0.00000000', '10.00000000', '6273', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('27', '584253338@qq.com', '584253338@qq.com', '1511163188', '0', '0.10010000', '', '18', '1', '10.00000000', '9.89990000', '6273', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('28', '584253338@qq.com', '584253338@qq.com', '1511163188', '1', '0.10010000', '', '20', '1', '0.00000000', '0.10010000', '6273', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('29', '584253338@qq.com', '584253338@qq.com', '1511163188', '1', '10.00000000', '', '10', '4', '90.00000000', '100.00000000', '6273', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('30', '584253338@qq.com', '584253338@qq.com', '1511163188', '0', '0.10010000', '', '13', '1', '0.10010000', '0.00000000', '6273', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('31', '584253338@qq.com', '584253338@qq.com', '1511163188', '1', '0.09990000', '', '11', '1', '9.89990000', '9.99980000', '6273', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('32', '584253338@qq.com', '584253338@qq.com', '1511163188', '0', '10.00000000', '', '14', '4', '10.00000000', '0.00000000', '6273', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('33', '584253338@qq.com', '584253338@qq.com', '1511163516', '0', '10.00000000', '', '19', '6', '50.00000000', '40.00000000', '6273', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('34', '584253338@qq.com', '584253338@qq.com', '1511163516', '1', '10.00000000', '', '21', '6', '0.00000000', '10.00000000', '6273', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('35', '584253338@qq.com', '584253338@qq.com', '1511163829', '0', '0.63863800', '', '18', '1', '9.99980000', '9.36116200', '6273', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('36', '584253338@qq.com', '584253338@qq.com', '1511163829', '1', '0.63863800', '', '20', '1', '0.00000000', '0.63863800', '6273', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('37', '584253338@qq.com', '584253338@qq.com', '1511163829', '1', '10.00000000', '', '10', '6', '40.00000000', '50.00000000', '6273', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('38', '584253338@qq.com', '584253338@qq.com', '1511163829', '0', '0.50050000', '', '13', '1', '0.63863800', '0.13813800', '6273', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('39', '584253338@qq.com', '584253338@qq.com', '1511163829', '1', '0.49950000', '', '11', '1', '9.36116200', '9.86066200', '6273', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('40', '584253338@qq.com', '584253338@qq.com', '1511163829', '0', '10.00000000', '', '14', '6', '10.00000000', '0.00000000', '6273', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('41', '584253338@qq.com', '584253338@qq.com', '1511163829', '1', '0.08008000', '', '12', '1', '9.86066200', '9.94074200', '6273', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('42', '584253338@qq.com', '584253338@qq.com', '1511163829', '0', '0.08008000', '', '22', '1', '0.13813800', '0.05805800', '6273', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('43', '584253338@qq.com', '584253338@qq.com', '1511163978', '0', '11.00000000', '', '19', '6', '50.00000000', '39.00000000', '6273', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('44', '584253338@qq.com', '584253338@qq.com', '1511163978', '1', '11.00000000', '', '21', '6', '0.00000000', '11.00000000', '6273', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('45', '584253338@qq.com', '584253338@qq.com', '1511163978', '1', '1.00000000', '', '10', '6', '39.00000000', '40.00000000', '6273', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('46', '584253338@qq.com', '584253338@qq.com', '1511163978', '0', '0.05805800', '', '13', '1', '0.05805800', '0.00000000', '6273', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('47', '584253338@qq.com', '584253338@qq.com', '1511163978', '1', '0.05794200', '', '11', '1', '9.94074200', '9.99868400', '6273', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('48', '584253338@qq.com', '584253338@qq.com', '1511163978', '0', '1.00000000', '', '14', '6', '11.00000000', '10.00000000', '6273', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('49', '584253338@qq.com', '584253338@qq.com', '1511164048', '0', '5.70570000', '', '18', '1', '9.99868400', '4.29298400', '6273', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('50', '584253338@qq.com', '584253338@qq.com', '1511164048', '1', '5.70570000', '', '20', '1', '0.00000000', '5.70570000', '6273', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('51', '584253338@qq.com', '584253338@qq.com', '1511164048', '1', '10.00000000', '', '10', '6', '40.00000000', '50.00000000', '6273', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('52', '584253338@qq.com', '584253338@qq.com', '1511164048', '0', '0.57057000', '', '13', '1', '5.70570000', '5.13513000', '6273', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('53', '584253338@qq.com', '584253338@qq.com', '1511164048', '1', '0.56943000', '', '11', '1', '4.29298400', '4.86241400', '6273', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('54', '584253338@qq.com', '584253338@qq.com', '1511164048', '0', '10.00000000', '', '14', '6', '10.00000000', '0.00000000', '6273', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('55', '584253338@qq.com', '584253338@qq.com', '1511168356', '1', '5.13513000', '', '16', '1', '4.86241400', '9.99754400', '6273', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('56', '584253338@qq.com', '系统', '1511168356', '0', '5.13513000', '', '25', '1', '5.13513000', '0.00000000', '6273', '0', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('57', 'admin', 'admin', '1511170014', '0', '0.58058000', '', '18', '1', '10.00000000', '9.41942000', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('58', 'admin', 'admin', '1511170014', '1', '0.58058000', '', '20', '1', '0.00000000', '0.58058000', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('59', 'admin', 'admin', '1511170090', '0', '5.00000000', '', '19', '6', '10.00000000', '5.00000000', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('60', 'admin', 'admin', '1511170090', '1', '5.00000000', '', '21', '6', '0.00000000', '5.00000000', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('61', 'admin', 'admin', '1511170090', '1', '5.00000000', '', '10', '6', '5.00000000', '10.00000000', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('62', 'admin', 'admin', '1511170090', '0', '0.29029000', '', '13', '1', '0.58058000', '0.29029000', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('63', 'admin', 'admin', '1511170090', '1', '0.28971000', '', '11', '1', '9.41942000', '9.70913000', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('64', 'admin', 'admin', '1511170090', '0', '5.00000000', '', '14', '6', '5.00000000', '0.00000000', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('65', 'admin', 'admin', '1511225235', '0', '0.11111100', '', '18', '1', '9.70913000', '9.59801900', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('66', 'admin', 'admin', '1511225235', '1', '0.11111100', '', '20', '1', '0.29029000', '0.40140100', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('71', '2507062052@qq.com', '2507062052@qq.com', '1511226747', '0', '0.22222200', '', '18', '1', '10.00000000', '9.77777800', '6274', '6274', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('72', '2507062052@qq.com', '2507062052@qq.com', '1511226747', '1', '0.22222200', '', '20', '1', '0.00000000', '0.22222200', '6274', '6274', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('73', '2507062052@qq.com', '2507062052@qq.com', '1511227083', '0', '5.00000000', '', '19', '4', '10.00000000', '5.00000000', '6274', '6274', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('74', '2507062052@qq.com', '2507062052@qq.com', '1511227083', '1', '5.00000000', '', '21', '4', '0.00000000', '5.00000000', '6274', '6274', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('75', 'admin', '2507062052@qq.com', '1511227083', '1', '5.00000000', '', '10', '4', '10.00000000', '15.00000000', '6271', '6274', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('76', 'admin', '2507062052@qq.com', '1511227083', '0', '0.05555550', '', '13', '1', '0.40140100', '0.34584550', '6271', '6274', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('77', '2507062052@qq.com', '2507062052@qq.com', '1511227083', '1', '0.05544450', '', '11', '1', '9.77777800', '9.83322250', '6274', '6274', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('78', 'admin', '2507062052@qq.com', '1511227083', '0', '5.00000000', '', '14', '4', '0.00000000', '0.00000000', '6271', '6274', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('79', '2507062052@qq.com', '2507062052@qq.com', '1511227138', '1', '0.22222200', '', '16', '1', '9.83322250', '10.05544450', '6274', '6274', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('80', '2507062052@qq.com', '系统', '1511227138', '0', '0.22222200', '', '25', '1', '0.22222200', '0.00000000', '6274', '0', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('81', 'admin', 'admin', '1511229052', '0', '0.05605600', '', '18', '1', '9.59801900', '9.54196300', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('82', 'admin', 'admin', '1511229052', '1', '0.05605600', '', '20', '1', '0.34584550', '0.40190150', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('83', 'admin', 'admin', '1511229093', '0', '0.05805800', '', '18', '1', '9.54196300', '9.48390500', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('84', 'admin', 'admin', '1511229093', '1', '0.05805800', '', '20', '1', '0.40190150', '0.45995950', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('85', 'admin', 'admin', '1511229184', '1', '0.05605600', '', '16', '1', '9.48390500', '9.53996100', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('86', 'admin', '系统', '1511229184', '0', '0.05605600', '', '25', '1', '0.45995950', '0.40390350', '6271', '0', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('87', '584253338@qq.com', '584253338@qq.com', '1511229261', '0', '0.99899900', '', '18', '1', '9.99754400', '8.99854500', '6273', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('88', '584253338@qq.com', '584253338@qq.com', '1511229261', '1', '0.99899900', '', '20', '1', '0.00000000', '0.99899900', '6273', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('89', '584253338@qq.com', '584253338@qq.com', '1511229287', '1', '0.99899900', '', '16', '1', '8.99854500', '9.99754400', '6273', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('90', '584253338@qq.com', '系统', '1511229287', '0', '0.99899900', '', '25', '1', '0.99899900', '0.00000000', '6273', '0', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('91', '584253338@qq.com', '584253338@qq.com', '1511229349', '0', '50.00000000', '', '19', '6', '50.00000000', '0.00000000', '6273', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('92', '584253338@qq.com', '584253338@qq.com', '1511229349', '1', '50.00000000', '', '21', '6', '0.00000000', '50.00000000', '6273', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('93', 'admin', '584253338@qq.com', '1511229350', '1', '5.00000000', '', '10', '6', '10.00000000', '15.00000000', '6271', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('94', 'admin', '584253338@qq.com', '1511229350', '0', '0.29029000', '', '13', '1', '0.40390350', '0.11361350', '6271', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('95', '584253338@qq.com', '584253338@qq.com', '1511229350', '1', '0.28971000', '', '11', '1', '9.99754400', '10.28725400', '6273', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('96', 'admin', '584253338@qq.com', '1511229350', '0', '5.00000000', '', '14', '6', '0.00000000', '45.00000000', '6271', '6273', '0.0.0.0', '1');
INSERT INTO `tw_finance_log` VALUES ('97', '2507062052@qq.com', '2507062052@qq.com', '1511405907', '0', '0.08888880', '', '18', '1', '10.05544450', '9.96655570', '6274', '6274', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('98', '2507062052@qq.com', '2507062052@qq.com', '1511405907', '1', '0.08888880', '', '20', '1', '0.00000000', '0.08888880', '6274', '6274', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('99', '2507062052@qq.com', '2507062052@qq.com', '1511405949', '1', '0.08888880', '', '16', '1', '9.96655570', '10.05544450', '6274', '6274', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('100', '2507062052@qq.com', '系统', '1511405949', '0', '0.08888880', '', '25', '1', '0.08888880', '0.00000000', '6274', '0', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('101', '2507062052@qq.com', '2507062052@qq.com', '1511405977', '0', '0.08888880', '', '18', '1', '10.05544450', '9.96655570', '6274', '6274', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('102', '2507062052@qq.com', '2507062052@qq.com', '1511405977', '1', '0.08888880', '', '20', '1', '0.00000000', '0.08888880', '6274', '6274', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('103', 'admin', 'admin', '1511406116', '1', '0.05555550', '', '16', '1', '9.53996100', '9.59551650', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('104', 'admin', '系统', '1511406116', '0', '0.05555550', '', '25', '1', '0.11361350', '0.05805800', '6271', '0', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('105', 'admin', 'admin', '1511406123', '1', '0.05805800', '', '16', '1', '9.59551650', '9.65357450', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('106', 'admin', '系统', '1511406123', '0', '0.05805800', '', '25', '1', '0.05805800', '0.00000000', '6271', '0', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('107', 'admin', 'admin', '1511406143', '0', '0.08888880', '', '18', '1', '9.65357450', '9.56468570', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('108', 'admin', 'admin', '1511406143', '1', '0.08888880', '', '20', '1', '0.00000000', '0.08888880', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('109', 'admin', 'admin', '1511406359', '1', '0.08888880', '', '16', '1', '9.56468570', '9.65357450', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('110', 'admin', '系统', '1511406359', '0', '0.08888880', '', '25', '1', '0.08888880', '0.00000000', '6271', '0', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('111', 'admin', 'admin', '1511406395', '0', '0.08808800', '', '18', '1', '9.65357450', '9.56548650', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('112', 'admin', 'admin', '1511406395', '1', '0.08808800', '', '20', '1', '0.00000000', '0.08808800', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('113', '2507062052@qq.com', '2507062052@qq.com', '1511766078', '0', '5.00000000', '', '19', '4', '5.00000000', '0.00000000', '6274', '6274', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('114', '2507062052@qq.com', '2507062052@qq.com', '1511766078', '1', '5.00000000', '', '21', '4', '0.00000000', '5.00000000', '6274', '6274', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('115', '2507062052@qq.com', '2507062052@qq.com', '1511766078', '1', '5.00000000', '', '10', '4', '0.00000000', '5.00000000', '6274', '6274', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('116', '2507062052@qq.com', '2507062052@qq.com', '1511766078', '0', '0.05555550', '', '13', '1', '0.08888880', '0.03333330', '6274', '6274', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('117', '2507062052@qq.com', '2507062052@qq.com', '1511766078', '1', '0.05544450', '', '11', '1', '9.96655570', '10.02200020', '6274', '6274', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('118', '2507062052@qq.com', '2507062052@qq.com', '1511766078', '0', '5.00000000', '', '14', '4', '5.00000000', '0.00000000', '6274', '6274', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('119', '2507062052@qq.com', '2507062052@qq.com', '1511766152', '0', '0.58058000', '', '18', '1', '10.02200020', '9.44142020', '6274', '6274', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('120', '2507062052@qq.com', '2507062052@qq.com', '1511766152', '1', '0.58058000', '', '20', '1', '0.03333330', '0.61391330', '6274', '6274', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('121', '2507062052@qq.com', '584253338@qq.com', '1511766152', '1', '10.00000000', '', '10', '6', '10.00000000', '20.00000000', '6274', '6273', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('122', '2507062052@qq.com', '584253338@qq.com', '1511766152', '0', '0.57057000', '', '13', '1', '0.61391330', '0.04334330', '6274', '6273', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('123', '584253338@qq.com', '584253338@qq.com', '1511766152', '1', '0.56943000', '', '11', '1', '10.28725400', '10.85668400', '6273', '6273', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('124', '2507062052@qq.com', '584253338@qq.com', '1511766152', '0', '10.00000000', '', '14', '6', '0.00000000', '35.00000000', '6274', '6273', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('125', '2507062052@qq.com', '584253338@qq.com', '1511766152', '1', '0.01001000', '', '12', '1', '9.44142020', '9.45143020', '6274', '6273', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('126', '2507062052@qq.com', '584253338@qq.com', '1511766152', '0', '0.01001000', '', '22', '1', '0.04334330', '0.03333330', '6274', '6273', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('127', '1145557081@qq.com', 'admin', '1511839117', '1', '90.99990000', '', '3', '6', '0.00000000', '90.99990000', '6277', '1', '192.168.1.102', '0');
INSERT INTO `tw_finance_log` VALUES ('128', '1145557081@qq.com', '1145557081@qq.com', '1511839316', '0', '1.00000000', '', '6', '6', '90.99990000', '90.99790000', '6277', '6277', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('129', '1145557081@qq.com', '1145557081@qq.com', '1511839316', '1', '0.99800000', '', '7', '6', '90.99990000', '90.99790000', '6277', '6277', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('130', '1145557081@qq.com', '1145557081@qq.com', '1511840139', '0', '1.00000000', '', '19', '6', '90.99790000', '89.99790000', '6277', '6277', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('131', '1145557081@qq.com', '1145557081@qq.com', '1511840139', '1', '1.00000000', '', '21', '6', '0.00000000', '1.00000000', '6277', '6277', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('132', '1064874779@qq.com', 'admin', '1511840253', '1', '89.00000000', '', '3', '3', '0.00000000', '89.00000000', '6279', '1', '192.168.1.102', '0');
INSERT INTO `tw_finance_log` VALUES ('133', '1064874779@qq.com', 'admin', '1511840266', '1', '0.99990000', '', '3', '3', '89.00000000', '89.99990000', '6279', '1', '192.168.1.102', '0');
INSERT INTO `tw_finance_log` VALUES ('134', '1064874779@qq.com', 'admin', '1511840271', '1', '0.00009990', '', '3', '3', '89.99990000', '89.99999990', '6279', '1', '192.168.1.102', '0');
INSERT INTO `tw_finance_log` VALUES ('135', '2507062052@qq.com', '2507062052@qq.com', '1511840442', '0', '0.01111110', '', '18', '1', '9.45143020', '9.44031910', '6274', '6274', '192.168.1.136', '1');
INSERT INTO `tw_finance_log` VALUES ('136', '2507062052@qq.com', '2507062052@qq.com', '1511840443', '1', '0.01111110', '', '20', '1', '0.03333330', '0.04444440', '6274', '6274', '192.168.1.136', '1');
INSERT INTO `tw_finance_log` VALUES ('137', '1064874779@qq.com', '1064874779@qq.com', '1511840468', '0', '0.05700000', '', '18', '1', '89.99999990', '89.94299990', '6279', '6279', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('138', '1064874779@qq.com', '1064874779@qq.com', '1511840468', '1', '0.05700000', '', '20', '1', '0.00000000', '0.05700000', '6279', '6279', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('139', '1064874779@qq.com', '584253338@qq.com', '1511840468', '1', '1.00000000', '', '10', '6', '0.00000000', '1.00000000', '6279', '6273', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('140', '1064874779@qq.com', '584253338@qq.com', '1511840468', '0', '0.05700000', '', '13', '1', '0.05700000', '0.00000000', '6279', '6273', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('141', '584253338@qq.com', '584253338@qq.com', '1511840468', '1', '0.05694300', '', '11', '1', '10.85668400', '10.91362700', '6273', '6273', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('142', '1064874779@qq.com', '584253338@qq.com', '1511840468', '0', '1.00000000', '', '14', '6', '0.00000000', '34.00000000', '6279', '6273', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('143', '2507062052@qq.com', '2507062052@qq.com', '1511840551', '0', '0.01111110', '', '18', '1', '9.44031910', '9.42920800', '6274', '6274', '192.168.1.136', '1');
INSERT INTO `tw_finance_log` VALUES ('144', '2507062052@qq.com', '2507062052@qq.com', '1511840551', '1', '0.01111110', '', '20', '1', '0.04444440', '0.05555550', '6274', '6274', '192.168.1.136', '1');
INSERT INTO `tw_finance_log` VALUES ('145', '1064874779@qq.com', '1064874779@qq.com', '1511840575', '0', '0.05700000', '', '18', '1', '89.94299990', '89.88599990', '6279', '6279', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('146', '1064874779@qq.com', '1064874779@qq.com', '1511840575', '1', '0.05700000', '', '20', '1', '0.00000000', '0.05700000', '6279', '6279', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('147', '1064874779@qq.com', '584253338@qq.com', '1511840575', '1', '1.00000000', '', '10', '6', '1.00000000', '2.00000000', '6279', '6273', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('148', '1064874779@qq.com', '584253338@qq.com', '1511840575', '0', '0.05700000', '', '13', '1', '0.05700000', '0.00000000', '6279', '6273', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('149', '584253338@qq.com', '584253338@qq.com', '1511840575', '1', '0.05694300', '', '11', '1', '10.91362700', '10.97057000', '6273', '6273', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('150', '1064874779@qq.com', '584253338@qq.com', '1511840575', '0', '1.00000000', '', '14', '6', '0.00000000', '33.00000000', '6279', '6273', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('151', '2507062052@qq.com', '2507062052@qq.com', '1511840587', '0', '0.01111110', '', '18', '1', '9.42920800', '9.41809690', '6274', '6274', '192.168.1.136', '1');
INSERT INTO `tw_finance_log` VALUES ('152', '2507062052@qq.com', '2507062052@qq.com', '1511840587', '1', '0.01111110', '', '20', '1', '0.05555550', '0.06666660', '6274', '6274', '192.168.1.136', '1');
INSERT INTO `tw_finance_log` VALUES ('153', '1064874779@qq.com', '1064874779@qq.com', '1511840730', '0', '1.00000000', '', '18', '1', '89.88599990', '88.88599990', '6279', '6279', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('154', '1064874779@qq.com', '1064874779@qq.com', '1511840730', '1', '1.00000000', '', '20', '1', '0.00000000', '1.00000000', '6279', '6279', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('155', '1064874779@qq.com', '584253338@qq.com', '1511840731', '1', '1.00000000', '', '10', '6', '2.00000000', '3.00000000', '6279', '6273', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('156', '1064874779@qq.com', '584253338@qq.com', '1511840731', '0', '0.05700000', '', '13', '1', '1.00000000', '0.94300000', '6279', '6273', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('157', '584253338@qq.com', '584253338@qq.com', '1511840731', '1', '0.05694300', '', '11', '1', '10.97057000', '11.02751300', '6273', '6273', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('158', '1064874779@qq.com', '584253338@qq.com', '1511840731', '0', '1.00000000', '', '14', '6', '0.00000000', '32.00000000', '6279', '6273', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('159', '1064874779@qq.com', '584253338@qq.com', '1511840731', '1', '0.94300000', '', '12', '1', '88.88599990', '89.82899990', '6279', '6273', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('160', '1064874779@qq.com', '584253338@qq.com', '1511840731', '0', '0.94300000', '', '22', '1', '0.94300000', '0.00000000', '6279', '6273', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('161', '1064874779@qq.com', '1064874779@qq.com', '1511840827', '0', '1.88100000', '', '18', '1', '89.82899990', '87.94799990', '6279', '6279', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('162', '1064874779@qq.com', '1064874779@qq.com', '1511840827', '1', '1.88100000', '', '20', '1', '0.00000000', '1.88100000', '6279', '6279', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('163', '1064874779@qq.com', '584253338@qq.com', '1511840827', '1', '32.00000000', '', '10', '6', '3.00000000', '35.00000000', '6279', '6273', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('164', '1064874779@qq.com', '584253338@qq.com', '1511840827', '0', '1.82400000', '', '13', '1', '1.88100000', '0.05700000', '6279', '6273', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('165', '584253338@qq.com', '584253338@qq.com', '1511840827', '1', '1.82217600', '', '11', '1', '11.02751300', '12.84968900', '6273', '6273', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('166', '1064874779@qq.com', '584253338@qq.com', '1511840827', '0', '32.00000000', '', '14', '6', '0.00000000', '0.00000000', '6279', '6273', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('167', '1064874779@qq.com', '1145557081@qq.com', '1511840828', '1', '1.00000000', '', '10', '6', '35.00000000', '36.00000000', '6279', '6277', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('168', '1064874779@qq.com', '1145557081@qq.com', '1511840828', '0', '0.05700000', '', '13', '1', '0.05700000', '0.00000000', '6279', '6277', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('169', '1145557081@qq.com', '1145557081@qq.com', '1511840828', '1', '0.05694300', '', '11', '1', '0.00000000', '0.05694300', '6277', '6277', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('170', '1064874779@qq.com', '1145557081@qq.com', '1511840828', '0', '1.00000000', '', '14', '6', '0.00000000', '0.00000000', '6279', '6277', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('171', '1730601995@qq.com', 'admin', '1511848066', '1', '5000.00000000', '', '3', '3', '0.00000000', '5000.00000000', '6278', '1', '127.0.0.1', '0');
INSERT INTO `tw_finance_log` VALUES ('172', '1730601995@qq.com', 'admin', '1511848066', '1', '5000.00000000', '', '3', '4', '0.00000000', '5000.00000000', '6278', '1', '127.0.0.1', '0');
INSERT INTO `tw_finance_log` VALUES ('173', '1730601995@qq.com', 'admin', '1511848066', '1', '5000.00000000', '', '3', '6', '0.00000000', '5000.00000000', '6278', '1', '127.0.0.1', '0');
INSERT INTO `tw_finance_log` VALUES ('174', '1145557081@qq.com', 'admin', '1511849076', '1', '8.00000000', '', '3', '3', '0.05694300', '8.05694300', '6277', '1', '192.168.1.102', '0');
INSERT INTO `tw_finance_log` VALUES ('175', '1145557081@qq.com', '1145557081@qq.com', '1511849083', '0', '0.56788900', '', '18', '1', '8.05694300', '7.48905400', '6277', '6277', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('176', '1145557081@qq.com', '1145557081@qq.com', '1511849083', '1', '0.56788900', '', '20', '1', '0.00000000', '0.56788900', '6277', '6277', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('177', '1145557081@qq.com', '1145557081@qq.com', '1511849219', '0', '0.56788900', '', '18', '1', '7.48905400', '6.92116500', '6277', '6277', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('178', '1145557081@qq.com', '1145557081@qq.com', '1511849219', '1', '0.56788900', '', '20', '1', '0.56788900', '1.13577800', '6277', '6277', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('179', '1145557081@qq.com', '1145557081@qq.com', '1511849237', '0', '2.00000000', '', '19', '6', '89.99790000', '87.99790000', '6277', '6277', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('180', '1145557081@qq.com', '1145557081@qq.com', '1511849237', '1', '2.00000000', '', '21', '6', '0.00000000', '2.00000000', '6277', '6277', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('181', '1145557081@qq.com', '1145557081@qq.com', '1511849237', '1', '1.00000000', '', '10', '6', '87.99790000', '88.99790000', '6277', '6277', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('182', '1145557081@qq.com', '1145557081@qq.com', '1511849237', '0', '0.56788900', '', '13', '1', '1.13577800', '0.56788900', '6277', '6277', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('183', '1145557081@qq.com', '1145557081@qq.com', '1511849237', '1', '0.56732111', '', '11', '1', '6.92116500', '7.48848611', '6277', '6277', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('184', '1145557081@qq.com', '1145557081@qq.com', '1511849237', '0', '1.00000000', '', '14', '6', '2.00000000', '1.00000000', '6277', '6277', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('185', '1145557081@qq.com', '1145557081@qq.com', '1511849237', '1', '1.00000000', '', '10', '6', '88.99790000', '89.99790000', '6277', '6277', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('186', '1145557081@qq.com', '1145557081@qq.com', '1511849237', '0', '0.56788900', '', '13', '1', '0.56788900', '0.00000000', '6277', '6277', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('187', '1145557081@qq.com', '1145557081@qq.com', '1511849237', '1', '0.56732111', '', '11', '1', '7.48848611', '8.05580722', '6277', '6277', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('188', '1145557081@qq.com', '1145557081@qq.com', '1511849237', '0', '1.00000000', '', '14', '6', '1.00000000', '0.00000000', '6277', '6277', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('189', 'admin', 'admin', '1511852434', '0', '0.06246779', '', '18', '1', '9.56548650', '9.50301871', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('190', 'admin', 'admin', '1511852434', '1', '0.06246779', '', '20', '1', '0.08808800', '0.15055579', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('191', '1730601995@qq.com', '1730601995@qq.com', '1511853333', '0', '1.00000000', '', '6', '6', '5000.00000000', '4999.00000000', '6278', '6278', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('192', '1730601995@qq.com', '1730601995@qq.com', '1511854337', '0', '100.10000000', '', '18', '1', '5000.00000000', '4899.90000000', '6278', '6278', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('193', '1730601995@qq.com', '1730601995@qq.com', '1511854337', '1', '100.10000000', '', '20', '1', '0.00000000', '100.10000000', '6278', '6278', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('194', '1730601995@qq.com', '1730601995@qq.com', '1511854503', '0', '10.00000000', '', '19', '4', '5000.00000000', '4990.00000000', '6278', '6278', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('195', '1730601995@qq.com', '1730601995@qq.com', '1511854503', '1', '10.00000000', '', '21', '4', '0.00000000', '10.00000000', '6278', '6278', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('196', '1730601995@qq.com', '1730601995@qq.com', '1511854503', '1', '10.00000000', '', '10', '4', '4990.00000000', '5000.00000000', '6278', '6278', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('197', '1730601995@qq.com', '1730601995@qq.com', '1511854503', '0', '100.10000000', '', '13', '1', '100.10000000', '0.00000000', '6278', '6278', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('198', '1730601995@qq.com', '1730601995@qq.com', '1511854503', '1', '99.90000000', '', '11', '1', '4899.90000000', '4999.80000000', '6278', '6278', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('199', '1730601995@qq.com', '1730601995@qq.com', '1511854503', '0', '10.00000000', '', '14', '4', '10.00000000', '0.00000000', '6278', '6278', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('200', 'admin', 'admin', '1511856435', '0', '0.01111110', '', '18', '1', '9.50301871', '9.49190761', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('201', 'admin', 'admin', '1511856435', '1', '0.01111110', '', '20', '1', '0.15055579', '0.16166689', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('202', 'admin', 'admin', '1511856824', '0', '0.01111221', '', '18', '1', '9.49190761', '9.48079540', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('203', 'admin', 'admin', '1511856824', '1', '0.01111221', '', '20', '1', '0.16166689', '0.17277910', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('204', 'admin', 'admin', '1511856923', '0', '2.00010000', '', '19', '4', '15.00000000', '12.99990000', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('205', 'admin', 'admin', '1511856923', '1', '2.00010000', '', '21', '4', '0.00000000', '2.00010000', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('206', '2507062052@qq.com', 'admin', '1511856923', '1', '2.00000000', '', '10', '4', '5.00000000', '7.00000000', '6274', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('207', '2507062052@qq.com', 'admin', '1511856923', '0', '0.02222220', '', '13', '1', '0.06666660', '0.04444440', '6274', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('208', 'admin', 'admin', '1511856923', '1', '0.02217780', '', '11', '1', '9.48079540', '9.50297320', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('209', '2507062052@qq.com', 'admin', '1511856923', '0', '2.00000000', '', '14', '4', '0.00000000', '0.00010000', '6274', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('210', 'admin', 'admin', '1511857449', '0', '0.56788900', '', '18', '1', '9.50297320', '8.93508420', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('211', 'admin', 'admin', '1511857449', '1', '0.56788900', '', '20', '1', '0.17277910', '0.74066810', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('212', 'admin', 'admin', '1511857505', '0', '1.00000000', '', '19', '6', '15.00200000', '14.00200000', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('213', 'admin', 'admin', '1511857505', '1', '1.00000000', '', '21', '6', '0.00000000', '1.00000000', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('214', 'admin', 'admin', '1511857505', '1', '0.11000000', '', '10', '6', '14.00200000', '14.11200000', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('215', 'admin', 'admin', '1511857505', '0', '0.06246779', '', '13', '1', '0.74066810', '0.67820031', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('216', 'admin', 'admin', '1511857505', '1', '0.06240532', '', '11', '1', '8.93508420', '8.99748952', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('217', 'admin', 'admin', '1511857505', '0', '0.11000000', '', '14', '6', '1.00000000', '0.89000000', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('218', 'admin', 'admin', '1511857505', '1', '0.89000000', '', '10', '6', '14.11200000', '15.00200000', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('219', 'admin', 'admin', '1511857505', '0', '0.50542121', '', '13', '1', '0.67820031', '0.17277910', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('220', 'admin', 'admin', '1511857505', '1', '0.50491579', '', '11', '1', '8.99748952', '9.50240531', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('221', 'admin', 'admin', '1511857505', '0', '0.89000000', '', '14', '6', '0.89000000', '0.00000000', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('222', '1145557081@qq.com', '1145557081@qq.com', '1511858596', '0', '0.56788900', '', '18', '1', '8.05580722', '7.48791822', '6277', '6277', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('223', '1145557081@qq.com', '1145557081@qq.com', '1511858596', '1', '0.56788900', '', '20', '1', '0.00000000', '0.56788900', '6277', '6277', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('224', '1145557081@qq.com', '1145557081@qq.com', '1511858636', '1', '0.56788900', '', '16', '1', '7.48791822', '8.05580722', '6277', '6277', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('225', '1145557081@qq.com', '系统', '1511858636', '0', '0.56788900', '', '25', '1', '0.56788900', '0.00000000', '6277', '0', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('226', '1730601995@qq.com', '1730601995@qq.com', '1511858685', '0', '100.00000000', '', '18', '1', '4999.80000000', '4899.80000000', '6278', '6278', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('227', '1730601995@qq.com', '1730601995@qq.com', '1511858685', '1', '100.00000000', '', '20', '1', '0.00000000', '100.00000000', '6278', '6278', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('228', '1145557081@qq.com', '1145557081@qq.com', '1511858709', '0', '2.00000000', '', '18', '1', '8.05580722', '6.05580722', '6277', '6277', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('229', '1145557081@qq.com', '1145557081@qq.com', '1511858709', '1', '2.00000000', '', '20', '1', '0.00000000', '2.00000000', '6277', '6277', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('230', '1064874779@qq.com', '1064874779@qq.com', '1511858831', '0', '1.00000000', '', '18', '1', '87.94799990', '86.94799990', '6279', '6279', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('231', '1064874779@qq.com', '1064874779@qq.com', '1511858831', '1', '1.00000000', '', '20', '1', '0.00000000', '1.00000000', '6279', '6279', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('232', 'admin', 'admin', '1511859071', '0', '0.01234567', '', '18', '1', '9.50240531', '9.49005964', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('233', 'admin', 'admin', '1511859071', '1', '0.01234567', '', '20', '1', '0.17277910', '0.18512477', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('234', '1064874779@qq.com', 'admin', '1511860043', '1', '13.05100010', '', '3', '3', '86.94799990', '99.99900000', '6279', '1', '192.168.1.102', '0');
INSERT INTO `tw_finance_log` VALUES ('235', '1064874779@qq.com', '1064874779@qq.com', '1511860184', '0', '1.00000000', '', '19', '6', '36.00000000', '35.00000000', '6279', '6279', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('236', '1064874779@qq.com', '1064874779@qq.com', '1511860184', '1', '1.00000000', '', '21', '6', '0.00000000', '1.00000000', '6279', '6279', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('237', '1064874779@qq.com', '1064874779@qq.com', '1511919926', '0', '15.86698000', '', '18', '1', '99.99900000', '84.13202000', '6279', '6279', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('238', '1064874779@qq.com', '1064874779@qq.com', '1511919926', '1', '15.86698000', '', '20', '1', '1.00000000', '16.86698000', '6279', '6279', '192.168.1.102', '1');
INSERT INTO `tw_finance_log` VALUES ('239', '2507062052@qq.com', '2507062052@qq.com', '1511919944', '0', '0.00137173', '', '18', '1', '9.41809690', '9.41672517', '6274', '6274', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('240', '2507062052@qq.com', '2507062052@qq.com', '1511919944', '1', '0.00137173', '', '20', '1', '0.04444440', '0.04581613', '6274', '6274', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('241', '2507062052@qq.com', '2507062052@qq.com', '1511934272', '0', '1.00000000', '', '6', '6', '20.00000000', '19.00000000', '6274', '6274', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('242', '1145557081@qq.com', '1145557081@qq.com', '1511942163', '0', '1.00000000', '', '19', '6', '89.99790000', '88.99790000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('243', '1145557081@qq.com', '1145557081@qq.com', '1511942163', '1', '1.00000000', '', '21', '6', '0.00000000', '1.00000000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('244', '1730601995@qq.com', '1145557081@qq.com', '1511942163', '1', '1.00000000', '', '10', '6', '4999.00000000', '5000.00000000', '6278', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('245', '1730601995@qq.com', '1145557081@qq.com', '1511942164', '0', '10.00000000', '', '13', '1', '100.00000000', '90.00000000', '6278', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('246', '1145557081@qq.com', '1145557081@qq.com', '1511942165', '1', '9.99000000', '', '11', '1', '6.05580722', '16.04580722', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('247', '1730601995@qq.com', '1145557081@qq.com', '1511942165', '0', '1.00000000', '', '14', '6', '0.00000000', '0.00000000', '6278', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('248', '1145557081@qq.com', '1145557081@qq.com', '1511942175', '0', '1.00000000', '', '19', '6', '88.99790000', '87.99790000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('249', '1145557081@qq.com', '1145557081@qq.com', '1511942175', '1', '1.00000000', '', '21', '6', '0.00000000', '1.00000000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('250', '1730601995@qq.com', '1145557081@qq.com', '1511942177', '1', '1.00000000', '', '10', '6', '5000.00000000', '5001.00000000', '6278', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('251', '1730601995@qq.com', '1145557081@qq.com', '1511942177', '0', '10.00000000', '', '13', '1', '90.00000000', '80.00000000', '6278', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('252', '1145557081@qq.com', '1145557081@qq.com', '1511942178', '1', '9.99000000', '', '11', '1', '16.04580722', '26.03580722', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('253', '1730601995@qq.com', '1145557081@qq.com', '1511942178', '0', '1.00000000', '', '14', '6', '0.00000000', '0.00000000', '6278', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('254', '1145557081@qq.com', '1145557081@qq.com', '1511942197', '0', '1.00000000', '', '19', '6', '87.99790000', '86.99790000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('255', '1145557081@qq.com', '1145557081@qq.com', '1511942197', '1', '1.00000000', '', '21', '6', '0.00000000', '1.00000000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('256', '2507062052@qq.com', '2507062052@qq.com', '1512009524', '0', '0.00111111', '', '18', '1', '9.41672517', '9.41561406', '6274', '6274', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('257', '2507062052@qq.com', '2507062052@qq.com', '1512009524', '1', '0.00111111', '', '20', '1', '0.04581613', '0.04692724', '6274', '6274', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('258', '2507062052@qq.com', '2507062052@qq.com', '1512009547', '0', '0.10000000', '', '19', '4', '7.00000000', '6.90000000', '6274', '6274', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('259', '2507062052@qq.com', '2507062052@qq.com', '1512009547', '1', '0.10000000', '', '21', '4', '0.00000000', '0.10000000', '6274', '6274', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('260', '2507062052@qq.com', '2507062052@qq.com', '1512009547', '1', '0.10000000', '', '10', '4', '6.90000000', '7.00000000', '6274', '6274', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('261', '2507062052@qq.com', '2507062052@qq.com', '1512009547', '0', '0.00111111', '', '13', '1', '0.04692724', '0.04581613', '6274', '6274', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('262', '2507062052@qq.com', '2507062052@qq.com', '1512009547', '1', '0.00110889', '', '11', '1', '9.41561406', '9.41672295', '6274', '6274', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('263', '2507062052@qq.com', '2507062052@qq.com', '1512009547', '0', '0.10000000', '', '14', '4', '0.10000000', '0.00000000', '6274', '6274', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('264', '2622010581@qq.com', 'admin', '1512022984', '1', '99.99990000', '', '3', '3', '0.00000000', '99.99990000', '6293', '1', '192.168.0.121', '0');
INSERT INTO `tw_finance_log` VALUES ('265', '2622010581@qq.com', 'admin', '1512022984', '1', '99.88880000', '', '3', '6', '0.00000000', '99.88880000', '6293', '1', '192.168.0.121', '0');
INSERT INTO `tw_finance_log` VALUES ('266', '374598390@qq.com', 'admin', '1512023012', '1', '100.88888800', '', '3', '3', '0.00000000', '100.88888800', '6292', '1', '192.168.0.121', '0');
INSERT INTO `tw_finance_log` VALUES ('267', '374598390@qq.com', 'admin', '1512023012', '1', '100.88888800', '', '3', '6', '0.00000000', '100.88888800', '6292', '1', '192.168.0.121', '0');
INSERT INTO `tw_finance_log` VALUES ('268', '1223785384@qq.com', 'admin', '1512023024', '1', '100.00000000', '', '3', '3', '0.00000000', '100.00000000', '6291', '1', '192.168.0.121', '0');
INSERT INTO `tw_finance_log` VALUES ('269', '1223785384@qq.com', 'admin', '1512023024', '1', '100.00000000', '', '3', '6', '0.00000000', '100.00000000', '6291', '1', '192.168.0.121', '0');
INSERT INTO `tw_finance_log` VALUES ('270', '374598390@qq.com', '374598390@qq.com', '1512023034', '0', '1.00000000', '', '18', '1', '100.88888800', '99.88888800', '6292', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('271', '374598390@qq.com', '374598390@qq.com', '1512023034', '1', '1.00000000', '', '20', '1', '0.00000000', '1.00000000', '6292', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('272', '18222924979@163.com', 'admin', '1512023045', '1', '777.99999000', '', '3', '3', '0.00000000', '777.99999000', '6290', '1', '192.168.0.121', '0');
INSERT INTO `tw_finance_log` VALUES ('273', '18222924979@163.com', 'admin', '1512023045', '1', '777.99999900', '', '3', '6', '0.00000000', '777.99999900', '6290', '1', '192.168.0.121', '0');
INSERT INTO `tw_finance_log` VALUES ('274', '18222924979@163.com', '18222924979@163.com', '1512023155', '0', '56.78890000', '', '18', '1', '777.99999000', '721.21109000', '6290', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('275', '18222924979@163.com', '18222924979@163.com', '1512023155', '1', '56.78890000', '', '20', '1', '0.00000000', '56.78890000', '6290', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('276', '374598390@qq.com', '374598390@qq.com', '1512023168', '0', '1.00000000', '', '19', '6', '100.88888800', '99.88888800', '6292', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('277', '374598390@qq.com', '374598390@qq.com', '1512023168', '1', '1.00000000', '', '21', '6', '0.00000000', '1.00000000', '6292', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('278', '1730601995@qq.com', '374598390@qq.com', '1512023168', '1', '1.00000000', '', '10', '6', '5001.00000000', '5002.00000000', '6278', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('279', '1730601995@qq.com', '374598390@qq.com', '1512023169', '0', '10.00000000', '', '13', '1', '80.00000000', '70.00000000', '6278', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('280', '374598390@qq.com', '374598390@qq.com', '1512023169', '1', '9.97000000', '', '11', '1', '99.88888800', '109.85888800', '6292', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('281', '1730601995@qq.com', '374598390@qq.com', '1512023169', '0', '1.00000000', '', '14', '6', '0.00000000', '0.00000000', '6278', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('282', '18222924979@163.com', 'admin', '1512023255', '1', '56.78290000', '', '3', '3', '721.21709000', '777.99999000', '6290', '1', '192.168.0.121', '0');
INSERT INTO `tw_finance_log` VALUES ('283', '374598390@qq.com', '374598390@qq.com', '1512023464', '0', '1.00000000', '', '19', '6', '99.88888800', '98.88888800', '6292', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('284', '374598390@qq.com', '374598390@qq.com', '1512023464', '1', '1.00000000', '', '21', '6', '0.00000000', '1.00000000', '6292', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('285', '1730601995@qq.com', '374598390@qq.com', '1512023464', '1', '1.00000000', '', '10', '6', '5002.00000000', '5003.00000000', '6278', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('286', '1730601995@qq.com', '374598390@qq.com', '1512023464', '0', '10.00000000', '', '13', '1', '70.00000000', '60.00000000', '6278', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('287', '374598390@qq.com', '374598390@qq.com', '1512023465', '1', '9.97000000', '', '11', '1', '109.85888800', '119.82888800', '6292', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('288', '1730601995@qq.com', '374598390@qq.com', '1512023465', '0', '1.00000000', '', '14', '6', '0.00000000', '0.00000000', '6278', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('289', '1145557081@qq.com', '1145557081@qq.com', '1512023467', '0', '0.56788900', '', '18', '1', '26.04180722', '25.47391822', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('290', '1145557081@qq.com', '1145557081@qq.com', '1512023467', '1', '0.56788900', '', '20', '1', '2.00000000', '2.56788900', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('291', '1223785384@qq.com', '1223785384@qq.com', '1512023478', '0', '5.67889000', '', '18', '1', '100.01800000', '94.33911000', '6291', '6291', '192.168.0.105', '1');
INSERT INTO `tw_finance_log` VALUES ('292', '1223785384@qq.com', '1223785384@qq.com', '1512023478', '1', '5.67889000', '', '20', '1', '0.00000000', '5.67889000', '6291', '6291', '192.168.0.105', '1');
INSERT INTO `tw_finance_log` VALUES ('293', '1145557081@qq.com', '1145557081@qq.com', '1512023496', '0', '1.13577800', '', '18', '1', '25.47391822', '24.33814022', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('294', '1145557081@qq.com', '1145557081@qq.com', '1512023496', '1', '1.13577800', '', '20', '1', '2.56788900', '3.70366700', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('295', '1145557081@qq.com', '1145557081@qq.com', '1512023531', '1', '1.13577800', '', '16', '1', '24.33814022', '25.47391822', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('296', '1145557081@qq.com', '系统', '1512023531', '0', '1.13577800', '', '25', '1', '3.70366700', '2.56788900', '6277', '0', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('297', '1145557081@qq.com', '1145557081@qq.com', '1512023538', '1', '0.56788900', '', '16', '1', '25.47391822', '26.04180722', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('298', '1145557081@qq.com', '系统', '1512023538', '0', '0.56788900', '', '25', '1', '2.56788900', '2.00000000', '6277', '0', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('299', '1145557081@qq.com', '1145557081@qq.com', '1512023544', '1', '1.00000000', '', '17', '6', '86.99790000', '87.99790000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('300', '1145557081@qq.com', '系统', '1512023544', '0', '1.00000000', '', '26', '6', '1.00000000', '0.00000000', '6277', '0', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('301', '1145557081@qq.com', '1145557081@qq.com', '1512023550', '1', '2.00000000', '', '16', '1', '26.04180722', '28.04180722', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('302', '1145557081@qq.com', '系统', '1512023550', '0', '2.00000000', '', '25', '1', '2.00000000', '0.00000000', '6277', '0', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('303', '18222924979@163.com', '18222924979@163.com', '1512023581', '1', '56.78890000', '', '16', '1', '778.00599000', '834.79489000', '6290', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('304', '18222924979@163.com', '系统', '1512023581', '0', '56.78890000', '', '25', '1', '56.78890000', '0.00000000', '6290', '0', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('305', '374598390@qq.com', '374598390@qq.com', '1512023594', '0', '1.00000000', '', '19', '6', '98.88888800', '97.88888800', '6292', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('306', '374598390@qq.com', '374598390@qq.com', '1512023594', '1', '1.00000000', '', '21', '6', '0.00000000', '1.00000000', '6292', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('307', '1730601995@qq.com', '374598390@qq.com', '1512023594', '1', '1.00000000', '', '10', '6', '5003.00000000', '5004.00000000', '6278', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('308', '1730601995@qq.com', '374598390@qq.com', '1512023595', '0', '10.00000000', '', '13', '1', '60.00000000', '50.00000000', '6278', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('309', '374598390@qq.com', '374598390@qq.com', '1512023595', '1', '9.97000000', '', '11', '1', '119.82888800', '129.79888800', '6292', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('310', '1730601995@qq.com', '374598390@qq.com', '1512023595', '0', '1.00000000', '', '14', '6', '0.00000000', '0.00000000', '6278', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('311', '18222924979@163.com', '18222924979@163.com', '1512023619', '0', '5.67889000', '', '18', '1', '834.80089000', '829.12200000', '6290', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('312', '18222924979@163.com', '18222924979@163.com', '1512023619', '1', '5.67889000', '', '20', '1', '0.00000000', '5.67889000', '6290', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('313', '1145557081@qq.com', '1145557081@qq.com', '1512023688', '0', '1.13577800', '', '18', '1', '28.04480722', '26.90902922', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('314', '1145557081@qq.com', '1145557081@qq.com', '1512023688', '1', '1.13577800', '', '20', '1', '0.00000000', '1.13577800', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('315', '374598390@qq.com', '374598390@qq.com', '1512023693', '0', '1.00000000', '', '19', '6', '97.88888800', '96.88888800', '6292', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('316', '374598390@qq.com', '374598390@qq.com', '1512023693', '1', '1.00000000', '', '21', '6', '0.00000000', '1.00000000', '6292', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('317', '1730601995@qq.com', '374598390@qq.com', '1512023693', '1', '1.00000000', '', '10', '6', '5004.00000000', '5005.00000000', '6278', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('318', '1730601995@qq.com', '374598390@qq.com', '1512023693', '0', '10.00000000', '', '13', '1', '50.00000000', '40.00000000', '6278', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('319', '374598390@qq.com', '374598390@qq.com', '1512023693', '1', '9.97000000', '', '11', '1', '129.79888800', '139.76888800', '6292', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('320', '1730601995@qq.com', '374598390@qq.com', '1512023693', '0', '1.00000000', '', '14', '6', '0.00000000', '0.00000000', '6278', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('321', '374598390@qq.com', '374598390@qq.com', '1512023746', '0', '1.00000000', '', '19', '6', '96.88888800', '95.88888800', '6292', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('322', '374598390@qq.com', '374598390@qq.com', '1512023746', '1', '1.00000000', '', '21', '6', '0.00000000', '1.00000000', '6292', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('323', '1730601995@qq.com', '374598390@qq.com', '1512023747', '1', '1.00000000', '', '10', '6', '5005.00000000', '5006.00000000', '6278', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('324', '1730601995@qq.com', '374598390@qq.com', '1512023747', '0', '10.00000000', '', '13', '1', '40.00000000', '30.00000000', '6278', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('325', '374598390@qq.com', '374598390@qq.com', '1512023747', '1', '9.97000000', '', '11', '1', '139.76888800', '149.73888800', '6292', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('326', '1730601995@qq.com', '374598390@qq.com', '1512023747', '0', '1.00000000', '', '14', '6', '0.00000000', '0.00000000', '6278', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('327', '1145557081@qq.com', 'admin', '1512023747', '1', '9973.08497078', '', '3', '3', '26.91502922', '10000.00000000', '6277', '1', '192.168.0.121', '0');
INSERT INTO `tw_finance_log` VALUES ('328', '374598390@qq.com', '374598390@qq.com', '1512023811', '0', '0.56800000', '', '18', '1', '149.73888800', '149.17088800', '6292', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('329', '374598390@qq.com', '374598390@qq.com', '1512023811', '1', '0.56800000', '', '20', '1', '1.00000000', '1.56800000', '6292', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('330', '1145557081@qq.com', '1145557081@qq.com', '1512023831', '1', '1.13577800', '', '16', '1', '10000.00000000', '10001.13577800', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('331', '1145557081@qq.com', '系统', '1512023831', '0', '1.13577800', '', '25', '1', '1.13577800', '0.00000000', '6277', '0', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('332', '1145557081@qq.com', '1145557081@qq.com', '1512023851', '0', '20.00000000', '', '18', '1', '10001.13577800', '9981.13577800', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('333', '1145557081@qq.com', '1145557081@qq.com', '1512023851', '1', '20.00000000', '', '20', '1', '0.00000000', '20.00000000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('334', '1145557081@qq.com', '1064874779@qq.com', '1512023851', '1', '1.00000000', '', '10', '6', '87.99790000', '88.99790000', '6277', '6279', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('335', '1145557081@qq.com', '1064874779@qq.com', '1512023851', '0', '20.00000000', '', '13', '1', '20.00000000', '0.00000000', '6277', '6279', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('336', '1064874779@qq.com', '1064874779@qq.com', '1512023852', '1', '19.94000000', '', '11', '1', '84.13202000', '104.07202000', '6279', '6279', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('337', '1145557081@qq.com', '1064874779@qq.com', '1512023852', '0', '1.00000000', '', '14', '6', '0.00000000', '0.00000000', '6277', '6279', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('338', '1145557081@qq.com', '1145557081@qq.com', '1512023877', '0', '30.00000000', '', '19', '6', '88.99790000', '58.99790000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('339', '1145557081@qq.com', '1145557081@qq.com', '1512023877', '1', '30.00000000', '', '21', '6', '0.00000000', '30.00000000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('340', '1730601995@qq.com', '1145557081@qq.com', '1512023878', '1', '3.00000000', '', '10', '6', '5006.00000000', '5009.00000000', '6278', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('341', '1730601995@qq.com', '1145557081@qq.com', '1512023878', '0', '30.00000000', '', '13', '1', '30.00000000', '0.00000000', '6278', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('342', '1145557081@qq.com', '1145557081@qq.com', '1512023878', '1', '29.91000000', '', '11', '1', '9981.13577800', '10011.04577800', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('343', '1730601995@qq.com', '1145557081@qq.com', '1512023878', '0', '3.00000000', '', '14', '6', '0.00000000', '27.00000000', '6278', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('344', '1064874779@qq.com', '1145557081@qq.com', '1512023878', '1', '1.59000000', '', '10', '6', '35.00000000', '36.59000000', '6279', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('345', '1064874779@qq.com', '1145557081@qq.com', '1512023878', '0', '15.90000000', '', '13', '1', '16.86698000', '0.96698000', '6279', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('346', '1145557081@qq.com', '1145557081@qq.com', '1512023879', '1', '15.85230000', '', '11', '1', '10011.04577800', '10026.89807800', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('347', '1064874779@qq.com', '1145557081@qq.com', '1512023879', '0', '1.59000000', '', '14', '6', '0.00000000', '25.41000000', '6279', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('348', '1064874779@qq.com', '1145557081@qq.com', '1512023879', '1', '1.00000000', '', '10', '6', '36.59000000', '37.59000000', '6279', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('349', '1064874779@qq.com', '1145557081@qq.com', '1512023879', '0', '0.96698000', '', '13', '1', '0.96698000', '0.00000000', '6279', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('350', '1145557081@qq.com', '1145557081@qq.com', '1512023879', '1', '0.99700000', '', '11', '1', '10026.89807800', '10027.89507800', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('351', '1064874779@qq.com', '1145557081@qq.com', '1512023879', '0', '1.00000000', '', '14', '6', '0.00000000', '24.41000000', '6279', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('352', '374598390@qq.com', '1145557081@qq.com', '1512023880', '1', '1.00000000', '', '10', '6', '95.88888800', '96.88888800', '6292', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('353', '374598390@qq.com', '1145557081@qq.com', '1512023880', '0', '1.00000000', '', '13', '1', '1.56800000', '0.56800000', '6292', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('354', '1145557081@qq.com', '1145557081@qq.com', '1512023880', '1', '0.99700000', '', '11', '1', '10027.89507800', '10028.89207800', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('355', '374598390@qq.com', '1145557081@qq.com', '1512023880', '0', '1.00000000', '', '14', '6', '0.00000000', '23.41000000', '6292', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('356', '374598390@qq.com', '1145557081@qq.com', '1512023880', '1', '1.00000000', '', '10', '6', '96.88888800', '97.88888800', '6292', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('357', '374598390@qq.com', '1145557081@qq.com', '1512023881', '0', '0.56800000', '', '13', '1', '0.56800000', '0.00000000', '6292', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('358', '1145557081@qq.com', '1145557081@qq.com', '1512023881', '1', '0.56629600', '', '11', '1', '10028.89207800', '10029.45837400', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('359', '374598390@qq.com', '1145557081@qq.com', '1512023881', '0', '1.00000000', '', '14', '6', '0.00000000', '22.41000000', '6292', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('360', 'admin', '1145557081@qq.com', '1512023881', '1', '0.11000000', '', '10', '6', '15.00200000', '15.11200000', '6271', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('361', 'admin', '1145557081@qq.com', '1512023881', '0', '0.06246779', '', '13', '1', '0.18512477', '0.12265698', '6271', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('362', '1145557081@qq.com', '1145557081@qq.com', '1512023881', '1', '0.06228039', '', '11', '1', '10029.45837400', '10029.52065439', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('363', 'admin', '1145557081@qq.com', '1512023881', '0', '0.11000000', '', '14', '6', '0.00000000', '22.30000000', '6271', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('364', '1223785384@qq.com', '1145557081@qq.com', '1512023882', '1', '10.00000000', '', '10', '6', '100.00000000', '110.00000000', '6291', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('365', '1223785384@qq.com', '1145557081@qq.com', '1512023882', '0', '5.67889000', '', '13', '1', '5.67889000', '0.00000000', '6291', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('366', '1145557081@qq.com', '1145557081@qq.com', '1512023882', '1', '5.66185333', '', '11', '1', '10029.52065439', '10035.18250772', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('367', '1223785384@qq.com', '1145557081@qq.com', '1512023882', '0', '10.00000000', '', '14', '6', '0.00000000', '12.30000000', '6291', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('368', '18222924979@163.com', '1145557081@qq.com', '1512023882', '1', '10.00000000', '', '10', '6', '777.99999900', '787.99999900', '6290', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('369', '18222924979@163.com', '1145557081@qq.com', '1512023882', '0', '5.67889000', '', '13', '1', '5.67889000', '0.00000000', '6290', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('370', '1145557081@qq.com', '1145557081@qq.com', '1512023883', '1', '5.66185333', '', '11', '1', '10035.18250772', '10040.84436105', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('371', '18222924979@163.com', '1145557081@qq.com', '1512023883', '0', '10.00000000', '', '14', '6', '0.00000000', '2.30000000', '6290', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('372', '1145557081@qq.com', '1145557081@qq.com', '1512023889', '1', '2.30000000', '', '17', '6', '58.99790000', '61.29790000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('373', '1145557081@qq.com', '系统', '1512023889', '0', '2.30000000', '', '26', '6', '2.30000000', '0.00000000', '6277', '0', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('374', '374598390@qq.com', '374598390@qq.com', '1512023921', '0', '0.56000000', '', '18', '1', '149.17088800', '148.61088800', '6292', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('375', '374598390@qq.com', '374598390@qq.com', '1512023921', '1', '0.56000000', '', '20', '1', '0.00000000', '0.56000000', '6292', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('376', '374598390@qq.com', '374598390@qq.com', '1512024459', '0', '0.56799000', '', '18', '1', '148.61088800', '148.04289800', '6292', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('377', '374598390@qq.com', '374598390@qq.com', '1512024459', '1', '0.56799000', '', '20', '1', '0.56000000', '1.12799000', '6292', '6292', '192.168.0.135', '1');
INSERT INTO `tw_finance_log` VALUES ('378', '1145557081@qq.com', '1145557081@qq.com', '1512024967', '0', '0.56788900', '', '18', '1', '10040.84436105', '10040.27647205', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('379', '1145557081@qq.com', '1145557081@qq.com', '1512024967', '1', '0.56788900', '', '20', '1', '0.00000000', '0.56788900', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('380', '1145557081@qq.com', '1145557081@qq.com', '1512024979', '0', '1.00000000', '', '18', '1', '10040.27647205', '10039.27647205', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('381', '1145557081@qq.com', '1145557081@qq.com', '1512024979', '1', '1.00000000', '', '20', '1', '0.56788900', '1.56788900', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('382', '1145557081@qq.com', '1145557081@qq.com', '1512024985', '0', '1.00000000', '', '18', '1', '10039.27647205', '10038.27647205', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('383', '1145557081@qq.com', '1145557081@qq.com', '1512024985', '1', '1.00000000', '', '20', '1', '1.56788900', '2.56788900', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('384', '1145557081@qq.com', '1145557081@qq.com', '1512024994', '0', '2.00000000', '', '18', '1', '10038.27647205', '10036.27647205', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('385', '1145557081@qq.com', '1145557081@qq.com', '1512024994', '1', '2.00000000', '', '20', '1', '2.56788900', '4.56788900', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('386', '1145557081@qq.com', '1145557081@qq.com', '1512025002', '0', '2.00000000', '', '18', '1', '10036.27647205', '10034.27647205', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('387', '1145557081@qq.com', '1145557081@qq.com', '1512025002', '1', '2.00000000', '', '20', '1', '4.56788900', '6.56788900', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('388', '1145557081@qq.com', '1145557081@qq.com', '1512025013', '0', '1.00000000', '', '19', '6', '61.29790000', '60.29790000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('389', '1145557081@qq.com', '1145557081@qq.com', '1512025013', '1', '1.00000000', '', '21', '6', '0.00000000', '1.00000000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('390', '1145557081@qq.com', '1145557081@qq.com', '1512025050', '0', '1.00000000', '', '19', '6', '60.29790000', '59.29790000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('391', '1145557081@qq.com', '1145557081@qq.com', '1512025050', '1', '1.00000000', '', '21', '6', '1.00000000', '2.00000000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('392', '1145557081@qq.com', '1145557081@qq.com', '1512025061', '0', '1.00000000', '', '19', '6', '59.29790000', '58.29790000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('393', '1145557081@qq.com', '1145557081@qq.com', '1512025061', '1', '1.00000000', '', '21', '6', '2.00000000', '3.00000000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('394', '1145557081@qq.com', '1145557081@qq.com', '1512025070', '0', '1.00000000', '', '19', '6', '58.29790000', '57.29790000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('395', '1145557081@qq.com', '1145557081@qq.com', '1512025070', '1', '1.00000000', '', '21', '6', '3.00000000', '4.00000000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('396', '1145557081@qq.com', '1145557081@qq.com', '1512025080', '0', '1.00000000', '', '19', '6', '57.29790000', '56.29790000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('397', '1145557081@qq.com', '1145557081@qq.com', '1512025080', '1', '1.00000000', '', '21', '6', '4.00000000', '5.00000000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('398', '2622010581@qq.com', '2622010581@qq.com', '1512025098', '0', '1.00000000', '', '19', '6', '99.88880000', '98.88880000', '6293', '6293', '192.168.0.129', '1');
INSERT INTO `tw_finance_log` VALUES ('399', '2622010581@qq.com', '2622010581@qq.com', '1512025098', '1', '1.00000000', '', '21', '6', '0.00000000', '1.00000000', '6293', '6293', '192.168.0.129', '1');
INSERT INTO `tw_finance_log` VALUES ('400', '1145557081@qq.com', '2622010581@qq.com', '1512025099', '1', '1.00000000', '', '10', '6', '56.29790000', '57.29790000', '6277', '6293', '192.168.0.129', '1');
INSERT INTO `tw_finance_log` VALUES ('401', '1145557081@qq.com', '2622010581@qq.com', '1512025099', '0', '2.00000000', '', '13', '1', '6.56788900', '4.56788900', '6277', '6293', '192.168.0.129', '1');
INSERT INTO `tw_finance_log` VALUES ('402', '2622010581@qq.com', '2622010581@qq.com', '1512025099', '1', '1.99400000', '', '11', '1', '99.99990000', '101.99390000', '6293', '6293', '192.168.0.129', '1');
INSERT INTO `tw_finance_log` VALUES ('403', '1145557081@qq.com', '2622010581@qq.com', '1512025099', '0', '1.00000000', '', '14', '6', '5.00000000', '0.00000000', '6277', '6293', '192.168.0.129', '1');
INSERT INTO `tw_finance_log` VALUES ('404', '1145557081@qq.com', '1145557081@qq.com', '1512025100', '0', '1.00000000', '', '19', '6', '56.29790000', '56.29790000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('405', '1145557081@qq.com', '1145557081@qq.com', '1512025100', '1', '1.00000000', '', '21', '6', '5.00000000', '6.00000000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('406', '1145557081@qq.com', '1145557081@qq.com', '1512025122', '0', '1.00000000', '', '19', '6', '56.29790000', '55.29790000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('407', '1145557081@qq.com', '1145557081@qq.com', '1512025122', '1', '1.00000000', '', '21', '6', '6.00000000', '7.00000000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('408', '1145557081@qq.com', '1145557081@qq.com', '1512026741', '0', '3.00000000', '', '18', '1', '10034.27647205', '10031.27647205', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('409', '1145557081@qq.com', '1145557081@qq.com', '1512026741', '1', '3.00000000', '', '20', '1', '4.56788900', '7.56788900', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('410', '1145557081@qq.com', '1145557081@qq.com', '1512026742', '1', '1.00000000', '', '10', '6', '55.29790000', '56.29790000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('411', '1145557081@qq.com', '1145557081@qq.com', '1512026742', '0', '2.50000000', '', '13', '1', '7.56788900', '5.06788900', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('412', '1145557081@qq.com', '1145557081@qq.com', '1512026742', '1', '2.49250000', '', '11', '1', '10031.27647205', '10033.76897205', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('413', '1145557081@qq.com', '1145557081@qq.com', '1512026742', '0', '1.00000000', '', '14', '6', '7.00000000', '6.00000000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('414', '1145557081@qq.com', '1145557081@qq.com', '1512026742', '1', '0.50000000', '', '12', '1', '10033.76897205', '10034.26897205', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('415', '1145557081@qq.com', '1145557081@qq.com', '1512026742', '0', '0.50000000', '', '22', '1', '5.06788900', '4.56788900', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('416', '1145557081@qq.com', '1145557081@qq.com', '1512026929', '0', '1.00000000', '', '19', '6', '56.29790000', '55.29790000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('417', '1145557081@qq.com', '1145557081@qq.com', '1512026930', '1', '1.00000000', '', '21', '6', '6.00000000', '7.00000000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('418', '1145557081@qq.com', '1145557081@qq.com', '1512027091', '0', '1.00000000', '', '19', '6', '55.29790000', '54.29790000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('419', '1145557081@qq.com', '1145557081@qq.com', '1512027091', '1', '1.00000000', '', '21', '6', '7.00000000', '8.00000000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('420', '1145557081@qq.com', '1145557081@qq.com', '1512027309', '0', '2.10000000', '', '18', '1', '10034.26897205', '10032.16897205', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('421', '1145557081@qq.com', '1145557081@qq.com', '1512027309', '1', '2.10000000', '', '20', '1', '4.56788900', '6.66788900', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('422', '1145557081@qq.com', '1145557081@qq.com', '1512027405', '1', '2.00000000', '', '16', '1', '10032.16897205', '10034.16897205', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('423', '1145557081@qq.com', '系统', '1512027405', '0', '2.00000000', '', '25', '1', '6.66788900', '4.66788900', '6277', '0', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('424', '1145557081@qq.com', '1145557081@qq.com', '1512027732', '1', '1.00000000', '', '16', '1', '10034.16897205', '10035.16897205', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('425', '1145557081@qq.com', '系统', '1512027732', '0', '1.00000000', '', '25', '1', '4.66788900', '3.66788900', '6277', '0', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('426', '1145557081@qq.com', '1145557081@qq.com', '1512029055', '0', '2.20000000', '', '18', '1', '10035.16897205', '10032.96897205', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('427', '1145557081@qq.com', '1145557081@qq.com', '1512029055', '1', '2.20000000', '', '20', '1', '3.66788900', '5.86788900', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('428', '1145557081@qq.com', '1145557081@qq.com', '1512029203', '0', '1.00000000', '', '19', '6', '54.29790000', '53.29790000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('429', '1145557081@qq.com', '1145557081@qq.com', '1512029203', '1', '1.00000000', '', '21', '6', '8.00000000', '9.00000000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('430', '1145557081@qq.com', '1145557081@qq.com', '1512029276', '1', '1.00000000', '', '17', '6', '53.29790000', '54.29790000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('431', '1145557081@qq.com', '系统', '1512029276', '0', '9.00000000', '', '26', '6', '9.00000000', '8.00000000', '6277', '0', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('432', '1145557081@qq.com', '1145557081@qq.com', '1512029604', '0', '1.00000000', '', '19', '6', '54.29790000', '53.29790000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('433', '1145557081@qq.com', '1145557081@qq.com', '1512029604', '1', '1.00000000', '', '21', '6', '8.00000000', '9.00000000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('434', '1145557081@qq.com', '1145557081@qq.com', '1512029646', '0', '1.00000000', '', '19', '6', '53.29790000', '52.29790000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('435', '1145557081@qq.com', '1145557081@qq.com', '1512029646', '1', '1.00000000', '', '21', '6', '9.00000000', '10.00000000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('436', '1145557081@qq.com', '1145557081@qq.com', '1512029646', '1', '1.00000000', '', '10', '6', '52.29790000', '53.29790000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('437', '1145557081@qq.com', '1145557081@qq.com', '1512029646', '0', '2.20000000', '', '13', '1', '5.86788900', '3.66788900', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('438', '1145557081@qq.com', '1145557081@qq.com', '1512029647', '1', '2.19340000', '', '11', '1', '10032.96897205', '10035.16237205', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('439', '1145557081@qq.com', '1145557081@qq.com', '1512029647', '0', '1.00000000', '', '14', '6', '10.00000000', '9.00000000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('440', '1145557081@qq.com', '1145557081@qq.com', '1512029687', '0', '1.00000000', '', '19', '6', '53.29790000', '52.29790000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('441', '1145557081@qq.com', '1145557081@qq.com', '1512029687', '1', '1.00000000', '', '21', '6', '9.00000000', '10.00000000', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('442', '18222924979@163.com', '18222924979@163.com', '1512030839', '0', '11.00000000', '', '19', '6', '787.99999900', '776.99999900', '6290', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('443', '18222924979@163.com', '18222924979@163.com', '1512030839', '1', '11.00000000', '', '21', '6', '0.00000000', '11.00000000', '6290', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('444', '1145557081@qq.com', '18222924979@163.com', '1512030839', '1', '1.00000000', '', '10', '6', '52.29790000', '53.29790000', '6277', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('445', '1145557081@qq.com', '18222924979@163.com', '1512030839', '0', '2.10000000', '', '13', '1', '3.66788900', '1.56788900', '6277', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('446', '18222924979@163.com', '18222924979@163.com', '1512030840', '1', '2.09370000', '', '11', '1', '829.13460000', '831.22830000', '6290', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('447', '1145557081@qq.com', '18222924979@163.com', '1512030840', '0', '1.00000000', '', '14', '6', '10.00000000', '10.00000000', '6277', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('448', '18222924979@163.com', '18222924979@163.com', '1512030883', '1', '10.00000000', '', '17', '6', '776.99999900', '786.99999900', '6290', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('449', '18222924979@163.com', '系统', '1512030883', '0', '10.00000000', '', '26', '6', '10.00000000', '0.00000000', '6290', '0', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('450', '18222924979@163.com', '18222924979@163.com', '1512031833', '0', '21.00000000', '', '18', '1', '831.22830000', '810.22830000', '6290', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('451', '18222924979@163.com', '18222924979@163.com', '1512031833', '1', '21.00000000', '', '20', '1', '0.00000000', '21.00000000', '6290', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('452', '18222924979@163.com', '1145557081@qq.com', '1512031833', '1', '1.00000000', '', '10', '6', '786.99999900', '787.99999900', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('453', '18222924979@163.com', '1145557081@qq.com', '1512031833', '0', '2.25500000', '', '13', '1', '21.00000000', '18.74500000', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('454', '1145557081@qq.com', '1145557081@qq.com', '1512031833', '1', '2.24823500', '', '11', '1', '10035.16426205', '10037.41249705', '6277', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('455', '18222924979@163.com', '1145557081@qq.com', '1512031833', '0', '1.00000000', '', '14', '6', '0.00000000', '9.00000000', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('456', '18222924979@163.com', '1145557081@qq.com', '1512031833', '1', '0.74500000', '', '12', '1', '810.22830000', '810.97330000', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('457', '18222924979@163.com', '1145557081@qq.com', '1512031833', '0', '0.74500000', '', '22', '1', '18.74500000', '18.00000000', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('458', '18222924979@163.com', '1145557081@qq.com', '1512031834', '1', '1.00000000', '', '10', '6', '787.99999900', '788.99999900', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('459', '18222924979@163.com', '1145557081@qq.com', '1512031834', '0', '2.30000000', '', '13', '1', '18.00000000', '15.70000000', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('460', '1145557081@qq.com', '1145557081@qq.com', '1512031834', '1', '2.29310000', '', '11', '1', '10037.41249705', '10039.70559705', '6277', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('461', '18222924979@163.com', '1145557081@qq.com', '1512031834', '0', '1.00000000', '', '14', '6', '0.00000000', '8.00000000', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('462', '18222924979@163.com', '1145557081@qq.com', '1512031834', '1', '0.70000000', '', '12', '1', '810.97330000', '811.67330000', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('463', '18222924979@163.com', '1145557081@qq.com', '1512031834', '0', '0.70000000', '', '22', '1', '15.70000000', '15.00000000', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('464', '18222924979@163.com', '1145557081@qq.com', '1512031835', '1', '1.00000000', '', '10', '6', '788.99999900', '789.99999900', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('465', '18222924979@163.com', '1145557081@qq.com', '1512031835', '0', '2.50000000', '', '13', '1', '15.00000000', '12.50000000', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('466', '1145557081@qq.com', '1145557081@qq.com', '1512031835', '1', '2.49250000', '', '11', '1', '10039.70559705', '10042.19809705', '6277', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('467', '18222924979@163.com', '1145557081@qq.com', '1512031835', '0', '1.00000000', '', '14', '6', '0.00000000', '7.00000000', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('468', '18222924979@163.com', '1145557081@qq.com', '1512031835', '1', '0.50000000', '', '12', '1', '811.67330000', '812.17330000', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('469', '18222924979@163.com', '1145557081@qq.com', '1512031835', '0', '0.50000000', '', '22', '1', '12.50000000', '12.00000000', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('470', '18222924979@163.com', '1145557081@qq.com', '1512031835', '1', '1.00000000', '', '10', '6', '789.99999900', '790.99999900', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('471', '18222924979@163.com', '1145557081@qq.com', '1512031835', '0', '2.80000000', '', '13', '1', '12.00000000', '9.20000000', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('472', '1145557081@qq.com', '1145557081@qq.com', '1512031835', '1', '2.79160000', '', '11', '1', '10042.19809705', '10044.98969705', '6277', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('473', '18222924979@163.com', '1145557081@qq.com', '1512031835', '0', '1.00000000', '', '14', '6', '0.00000000', '6.00000000', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('474', '18222924979@163.com', '1145557081@qq.com', '1512031835', '1', '0.20000000', '', '12', '1', '812.17330000', '812.37330000', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('475', '18222924979@163.com', '1145557081@qq.com', '1512031835', '0', '0.20000000', '', '22', '1', '9.20000000', '9.00000000', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('476', '18222924979@163.com', '1145557081@qq.com', '1512031836', '1', '1.00000000', '', '10', '6', '790.99999900', '791.99999900', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('477', '18222924979@163.com', '1145557081@qq.com', '1512031836', '0', '2.90000000', '', '13', '1', '9.00000000', '6.10000000', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('478', '1145557081@qq.com', '1145557081@qq.com', '1512031836', '1', '2.89130000', '', '11', '1', '10044.98969705', '10047.88099705', '6277', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('479', '18222924979@163.com', '1145557081@qq.com', '1512031836', '0', '1.00000000', '', '14', '6', '0.00000000', '5.00000000', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('480', '18222924979@163.com', '1145557081@qq.com', '1512031836', '1', '0.10000000', '', '12', '1', '812.37330000', '812.47330000', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('481', '18222924979@163.com', '1145557081@qq.com', '1512031836', '0', '0.10000000', '', '22', '1', '6.10000000', '6.00000000', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('482', '18222924979@163.com', '1145557081@qq.com', '1512031836', '1', '1.00000000', '', '10', '6', '791.99999900', '792.99999900', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('483', '18222924979@163.com', '1145557081@qq.com', '1512031836', '0', '3.00000000', '', '13', '1', '6.00000000', '3.00000000', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('484', '1145557081@qq.com', '1145557081@qq.com', '1512031836', '1', '2.99100000', '', '11', '1', '10047.88099705', '10050.87199705', '6277', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('485', '18222924979@163.com', '1145557081@qq.com', '1512031836', '0', '1.00000000', '', '14', '6', '0.00000000', '4.00000000', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('486', '18222924979@163.com', '1145557081@qq.com', '1512031837', '1', '1.00000000', '', '10', '6', '792.99999900', '793.99999900', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('487', '18222924979@163.com', '1145557081@qq.com', '1512031837', '0', '3.00000000', '', '13', '1', '3.00000000', '0.00000000', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('488', '1145557081@qq.com', '1145557081@qq.com', '1512031837', '1', '2.99100000', '', '11', '1', '10050.87199705', '10053.86299705', '6277', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('489', '18222924979@163.com', '1145557081@qq.com', '1512031837', '0', '1.00000000', '', '14', '6', '0.00000000', '3.00000000', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('490', '18222924979@163.com', '18222924979@163.com', '1512031838', '0', '21.00000000', '', '18', '1', '812.47330000', '791.47330000', '6290', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('491', '18222924979@163.com', '18222924979@163.com', '1512031838', '1', '21.00000000', '', '20', '1', '0.00000000', '21.00000000', '6290', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('492', '18222924979@163.com', '18222924979@163.com', '1512031848', '0', '100.00000000', '', '18', '1', '791.47330000', '691.47330000', '6290', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('493', '18222924979@163.com', '18222924979@163.com', '1512031848', '1', '100.00000000', '', '20', '1', '21.00000000', '121.00000000', '6290', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('494', '18222924979@163.com', '1145557081@qq.com', '1512031848', '1', '1.00000000', '', '10', '6', '793.99999900', '794.99999900', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('495', '18222924979@163.com', '1145557081@qq.com', '1512031848', '0', '4.00000000', '', '13', '1', '121.00000000', '117.00000000', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('496', '1145557081@qq.com', '1145557081@qq.com', '1512031848', '1', '3.98800000', '', '11', '1', '10053.86299705', '10057.85099705', '6277', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('497', '18222924979@163.com', '1145557081@qq.com', '1512031849', '0', '1.00000000', '', '14', '6', '0.00000000', '2.00000000', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('498', '18222924979@163.com', '1145557081@qq.com', '1512031849', '1', '6.00000000', '', '12', '1', '691.47330000', '697.47330000', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('499', '18222924979@163.com', '1145557081@qq.com', '1512031849', '0', '6.00000000', '', '22', '1', '117.00000000', '111.00000000', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('500', '18222924979@163.com', '1145557081@qq.com', '1512031849', '1', '1.00000000', '', '10', '6', '794.99999900', '795.99999900', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('501', '18222924979@163.com', '1145557081@qq.com', '1512031849', '0', '4.00000000', '', '13', '1', '111.00000000', '107.00000000', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('502', '1145557081@qq.com', '1145557081@qq.com', '1512031849', '1', '3.98800000', '', '11', '1', '10057.85099705', '10061.83899705', '6277', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('503', '18222924979@163.com', '1145557081@qq.com', '1512031849', '0', '1.00000000', '', '14', '6', '0.00000000', '1.00000000', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('504', '18222924979@163.com', '1145557081@qq.com', '1512031849', '1', '6.00000000', '', '12', '1', '697.47330000', '703.47330000', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('505', '18222924979@163.com', '1145557081@qq.com', '1512031849', '0', '6.00000000', '', '22', '1', '107.00000000', '101.00000000', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('506', '18222924979@163.com', '1145557081@qq.com', '1512031849', '1', '1.00000000', '', '10', '6', '795.99999900', '796.99999900', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('507', '18222924979@163.com', '1145557081@qq.com', '1512031850', '0', '5.00000000', '', '13', '1', '101.00000000', '96.00000000', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('508', '1145557081@qq.com', '1145557081@qq.com', '1512031850', '1', '4.98500000', '', '11', '1', '10061.83899705', '10066.82399705', '6277', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('509', '18222924979@163.com', '1145557081@qq.com', '1512031850', '0', '1.00000000', '', '14', '6', '0.00000000', '0.00000000', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('510', '18222924979@163.com', '1145557081@qq.com', '1512031850', '1', '5.00000000', '', '12', '1', '703.47330000', '708.47330000', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('511', '18222924979@163.com', '1145557081@qq.com', '1512031850', '0', '5.00000000', '', '22', '1', '96.00000000', '91.00000000', '6290', '6277', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('512', '1145557081@qq.com', '1145557081@qq.com', '1512031862', '1', '1.00000000', '', '16', '1', '10066.82399705', '10067.82399705', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('513', '1145557081@qq.com', '系统', '1512031862', '0', '1.00000000', '', '25', '1', '1.56788900', '0.56788900', '6277', '0', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('514', '1145557081@qq.com', '1145557081@qq.com', '1512031867', '1', '0.56788900', '', '16', '1', '10067.82399705', '10068.39188605', '6277', '6277', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('515', '1145557081@qq.com', '系统', '1512031867', '0', '0.56788900', '', '25', '1', '0.56788900', '0.00000000', '6277', '0', '192.168.0.121', '1');
INSERT INTO `tw_finance_log` VALUES ('516', '18222924979@163.com', '18222924979@163.com', '1512031883', '0', '16.00000000', '', '19', '6', '796.99999900', '780.99999900', '6290', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('517', '18222924979@163.com', '18222924979@163.com', '1512031883', '1', '16.00000000', '', '21', '6', '0.00000000', '16.00000000', '6290', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('518', '18222924979@163.com', '18222924979@163.com', '1512031883', '1', '7.00000000', '', '10', '6', '780.99999900', '787.99999900', '6290', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('519', '18222924979@163.com', '18222924979@163.com', '1512031883', '0', '70.00000000', '', '13', '1', '91.00000000', '21.00000000', '6290', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('520', '18222924979@163.com', '18222924979@163.com', '1512031883', '1', '69.79000000', '', '11', '1', '708.47330000', '778.26330000', '6290', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('521', '18222924979@163.com', '18222924979@163.com', '1512031883', '0', '7.00000000', '', '14', '6', '16.00000000', '9.00000000', '6290', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('522', '18222924979@163.com', '18222924979@163.com', '1512031884', '1', '7.00000000', '', '10', '6', '787.99999900', '794.99999900', '6290', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('523', '18222924979@163.com', '18222924979@163.com', '1512031884', '0', '21.00000000', '', '13', '1', '21.00000000', '0.00000000', '6290', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('524', '18222924979@163.com', '18222924979@163.com', '1512031884', '1', '20.93700000', '', '11', '1', '778.26330000', '799.20030000', '6290', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('525', '18222924979@163.com', '18222924979@163.com', '1512031884', '0', '7.00000000', '', '14', '6', '9.00000000', '2.00000000', '6290', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('526', '374598390@qq.com', '18222924979@163.com', '1512031884', '1', '1.00000000', '', '10', '6', '97.88888800', '98.88888800', '6292', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('527', '374598390@qq.com', '18222924979@163.com', '1512031884', '0', '0.56799000', '', '13', '1', '1.12799000', '0.56000000', '6292', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('528', '18222924979@163.com', '18222924979@163.com', '1512031884', '1', '0.56628603', '', '11', '1', '799.20030000', '799.76658603', '6290', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('529', '374598390@qq.com', '18222924979@163.com', '1512031885', '0', '1.00000000', '', '14', '6', '0.00000000', '1.00000000', '6292', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('530', '374598390@qq.com', '18222924979@163.com', '1512031885', '1', '1.00000000', '', '10', '6', '98.88888800', '99.88888800', '6292', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('531', '374598390@qq.com', '18222924979@163.com', '1512031885', '0', '0.56000000', '', '13', '1', '0.56000000', '0.00000000', '6292', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('532', '18222924979@163.com', '18222924979@163.com', '1512031885', '1', '0.55832000', '', '11', '1', '799.76658603', '800.32490603', '6290', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('533', '374598390@qq.com', '18222924979@163.com', '1512031885', '0', '1.00000000', '', '14', '6', '0.00000000', '0.00000000', '6292', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('534', '18222924979@163.com', '18222924979@163.com', '1512031933', '0', '10.00000000', '', '19', '6', '794.99999900', '784.99999900', '6290', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('535', '18222924979@163.com', '18222924979@163.com', '1512031933', '1', '10.00000000', '', '21', '6', '0.00000000', '10.00000000', '6290', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('536', '1223785384@qq.com', '1223785384@qq.com', '1512031984', '0', '5.60000000', '', '18', '1', '94.36731000', '88.76731000', '6291', '6291', '192.168.0.105', '1');
INSERT INTO `tw_finance_log` VALUES ('537', '1223785384@qq.com', '1223785384@qq.com', '1512031984', '1', '5.60000000', '', '20', '1', '0.00000000', '5.60000000', '6291', '6291', '192.168.0.105', '1');
INSERT INTO `tw_finance_log` VALUES ('538', '1223785384@qq.com', '18222924979@163.com', '1512031984', '1', '10.00000000', '', '10', '6', '110.00000000', '120.00000000', '6291', '6290', '192.168.0.105', '1');
INSERT INTO `tw_finance_log` VALUES ('539', '1223785384@qq.com', '18222924979@163.com', '1512031984', '0', '5.60000000', '', '13', '1', '5.60000000', '0.00000000', '6291', '6290', '192.168.0.105', '1');
INSERT INTO `tw_finance_log` VALUES ('540', '18222924979@163.com', '18222924979@163.com', '1512031984', '1', '5.58320000', '', '11', '1', '800.32490603', '805.90810603', '6290', '6290', '192.168.0.105', '1');
INSERT INTO `tw_finance_log` VALUES ('541', '1223785384@qq.com', '18222924979@163.com', '1512031984', '0', '10.00000000', '', '14', '6', '0.00000000', '0.00000000', '6291', '6290', '192.168.0.105', '1');
INSERT INTO `tw_finance_log` VALUES ('542', '1223785384@qq.com', '1223785384@qq.com', '1512032626', '0', '23.00000000', '', '19', '6', '120.00000000', '97.00000000', '6291', '6291', '192.168.0.105', '1');
INSERT INTO `tw_finance_log` VALUES ('543', '1223785384@qq.com', '1223785384@qq.com', '1512032626', '1', '23.00000000', '', '21', '6', '0.00000000', '23.00000000', '6291', '6291', '192.168.0.105', '1');
INSERT INTO `tw_finance_log` VALUES ('544', '18222924979@163.com', '18222924979@163.com', '1512032814', '0', '12.88000000', '', '18', '1', '805.90810603', '793.02810603', '6290', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('545', '18222924979@163.com', '18222924979@163.com', '1512032814', '1', '12.88000000', '', '20', '1', '0.00000000', '12.88000000', '6290', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('546', '18222924979@163.com', '1223785384@qq.com', '1512032814', '1', '23.00000000', '', '10', '6', '784.99999900', '807.99999900', '6290', '6291', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('547', '18222924979@163.com', '1223785384@qq.com', '1512032814', '0', '12.88000000', '', '13', '1', '12.88000000', '0.00000000', '6290', '6291', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('548', '1223785384@qq.com', '1223785384@qq.com', '1512032814', '1', '12.84136000', '', '11', '1', '88.76731000', '101.60867000', '6291', '6291', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('549', '18222924979@163.com', '1223785384@qq.com', '1512032815', '0', '23.00000000', '', '14', '6', '0.00000000', '0.00000000', '6290', '6291', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('550', '1223785384@qq.com', '1223785384@qq.com', '1512032884', '0', '9.52000000', '', '18', '1', '101.60867000', '92.08867000', '6291', '6291', '192.168.0.105', '1');
INSERT INTO `tw_finance_log` VALUES ('551', '1223785384@qq.com', '1223785384@qq.com', '1512032884', '1', '9.52000000', '', '20', '1', '0.00000000', '9.52000000', '6291', '6291', '192.168.0.105', '1');
INSERT INTO `tw_finance_log` VALUES ('552', '1223785384@qq.com', '1223785384@qq.com', '1512032891', '1', '9.52000000', '', '16', '1', '92.08867000', '101.60867000', '6291', '6291', '192.168.0.105', '1');
INSERT INTO `tw_finance_log` VALUES ('553', '1223785384@qq.com', '系统', '1512032891', '0', '9.52000000', '', '25', '1', '9.52000000', '0.00000000', '6291', '0', '192.168.0.105', '1');
INSERT INTO `tw_finance_log` VALUES ('554', '1223785384@qq.com', '1223785384@qq.com', '1512032912', '0', '17.00000000', '', '19', '6', '97.00000000', '80.00000000', '6291', '6291', '192.168.0.105', '1');
INSERT INTO `tw_finance_log` VALUES ('555', '1223785384@qq.com', '1223785384@qq.com', '1512032912', '1', '17.00000000', '', '21', '6', '0.00000000', '17.00000000', '6291', '6291', '192.168.0.105', '1');
INSERT INTO `tw_finance_log` VALUES ('556', '18222924979@163.com', '18222924979@163.com', '1512032934', '0', '9.52000000', '', '18', '1', '793.03969803', '783.51969803', '6290', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('557', '18222924979@163.com', '18222924979@163.com', '1512032934', '1', '9.52000000', '', '20', '1', '0.00000000', '9.52000000', '6290', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('558', '18222924979@163.com', '1223785384@qq.com', '1512032934', '1', '17.00000000', '', '10', '6', '807.99999900', '824.99999900', '6290', '6291', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('559', '18222924979@163.com', '1223785384@qq.com', '1512032934', '0', '9.52000000', '', '13', '1', '9.52000000', '0.00000000', '6290', '6291', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('560', '1223785384@qq.com', '1223785384@qq.com', '1512032934', '1', '9.49144000', '', '11', '1', '101.60867000', '111.10011000', '6291', '6291', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('561', '18222924979@163.com', '1223785384@qq.com', '1512032934', '0', '17.00000000', '', '14', '6', '0.00000000', '0.00000000', '6290', '6291', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('562', '18222924979@163.com', '18222924979@163.com', '1512032974', '0', '5.60000000', '', '18', '1', '783.52826603', '777.92826603', '6290', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('563', '18222924979@163.com', '18222924979@163.com', '1512032974', '1', '5.60000000', '', '20', '1', '0.00000000', '5.60000000', '6290', '6290', '192.168.0.134', '1');
INSERT INTO `tw_finance_log` VALUES ('564', '1223785384@qq.com', '1223785384@qq.com', '1512032975', '0', '20.00000000', '', '19', '6', '80.00000000', '60.00000000', '6291', '6291', '192.168.0.105', '1');
INSERT INTO `tw_finance_log` VALUES ('565', '1223785384@qq.com', '1223785384@qq.com', '1512032975', '1', '20.00000000', '', '21', '6', '0.00000000', '20.00000000', '6291', '6291', '192.168.0.105', '1');
INSERT INTO `tw_finance_log` VALUES ('566', '18222924979@163.com', '1223785384@qq.com', '1512032975', '1', '10.00000000', '', '10', '6', '824.99999900', '834.99999900', '6290', '6291', '192.168.0.105', '1');
INSERT INTO `tw_finance_log` VALUES ('567', '18222924979@163.com', '1223785384@qq.com', '1512032975', '0', '5.60000000', '', '13', '1', '5.60000000', '0.00000000', '6290', '6291', '192.168.0.105', '1');
INSERT INTO `tw_finance_log` VALUES ('568', '1223785384@qq.com', '1223785384@qq.com', '1512032975', '1', '5.58320000', '', '11', '1', '111.10011000', '116.68331000', '6291', '6291', '192.168.0.105', '1');
INSERT INTO `tw_finance_log` VALUES ('569', '18222924979@163.com', '1223785384@qq.com', '1512032975', '0', '10.00000000', '', '14', '6', '0.00000000', '10.00000000', '6290', '6291', '192.168.0.105', '1');
INSERT INTO `tw_finance_log` VALUES ('570', '1223785384@qq.com', '1223785384@qq.com', '1512033010', '1', '10.00000000', '', '17', '6', '60.00000000', '70.00000000', '6291', '6291', '192.168.0.105', '1');
INSERT INTO `tw_finance_log` VALUES ('571', '1223785384@qq.com', '系统', '1512033010', '0', '10.00000000', '', '26', '6', '10.00000000', '0.00000000', '6291', '0', '192.168.0.105', '1');
INSERT INTO `tw_finance_log` VALUES ('572', '2507062052@qq.com', '2507062052@qq.com', '1512100386', '0', '0.60000000', '', '18', '1', '9.43472295', '8.83472295', '6274', '6274', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('573', '2507062052@qq.com', '2507062052@qq.com', '1512100386', '1', '0.60000000', '', '20', '1', '0.04581613', '0.64581613', '6274', '6274', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('574', '614474772@qq.com', '614474772@qq.com', '1512109312', '0', '1.00000000', '', '19', '4', '10.00000000', '9.00000000', '6294', '6294', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('575', '614474772@qq.com', '614474772@qq.com', '1512109312', '1', '1.00000000', '', '21', '4', '0.00000000', '1.00000000', '6294', '6294', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('576', '2507062052@qq.com', '614474772@qq.com', '1512109312', '1', '0.90000000', '', '10', '4', '7.00000000', '7.90000000', '6274', '6294', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('577', '2507062052@qq.com', '614474772@qq.com', '1512109312', '0', '0.00999999', '', '13', '1', '0.64581613', '0.63581614', '6274', '6294', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('578', '614474772@qq.com', '614474772@qq.com', '1512109312', '1', '0.00998001', '', '11', '1', '1000.00000000', '1000.00998001', '6294', '6294', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('579', '2507062052@qq.com', '614474772@qq.com', '1512109312', '0', '0.90000000', '', '14', '4', '0.00000000', '0.10000000', '6274', '6294', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('580', '2507062052@qq.com', '614474772@qq.com', '1512109312', '1', '0.10000000', '', '10', '4', '7.90000000', '8.00000000', '6274', '6294', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('581', '2507062052@qq.com', '614474772@qq.com', '1512109313', '0', '0.00111111', '', '13', '1', '0.63581614', '0.63470503', '6274', '6294', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('582', '614474772@qq.com', '614474772@qq.com', '1512109313', '1', '0.00110889', '', '11', '1', '1000.00998001', '1000.01108890', '6294', '6294', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('583', '2507062052@qq.com', '614474772@qq.com', '1512109313', '0', '0.10000000', '', '14', '4', '0.00000000', '0.00000000', '6274', '6294', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('584', 'admin', 'admin', '1512109779', '0', '1.00000000', '', '19', '6', '15.11200000', '14.11200000', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('585', 'admin', 'admin', '1512109779', '1', '1.00000000', '', '21', '6', '0.00000000', '1.00000000', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('586', '2507062052@qq.com', 'admin', '1512109779', '1', '1.00000000', '', '10', '6', '19.00000000', '20.00000000', '6274', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('587', '2507062052@qq.com', 'admin', '1512109779', '0', '0.60000000', '', '13', '1', '0.63470503', '0.03470503', '6274', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('588', 'admin', 'admin', '1512109779', '1', '0.59820000', '', '11', '1', '9.50206264', '10.10026264', '6271', '6271', '127.0.0.1', '1');
INSERT INTO `tw_finance_log` VALUES ('589', '2507062052@qq.com', 'admin', '1512109779', '0', '1.00000000', '', '14', '6', '0.00000000', '0.00000000', '6274', '6271', '127.0.0.1', '1');

-- ----------------------------
-- Table structure for tw_footer
-- ----------------------------
DROP TABLE IF EXISTS `tw_footer`;
CREATE TABLE `tw_footer` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `img` varchar(100) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT '',
  `remark` varchar(50) NOT NULL DEFAULT '',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tw_footer
-- ----------------------------
INSERT INTO `tw_footer` VALUES ('1', '1', '关于我们', '/Article/index/type/aboutus.html', '', '1', '', '1', '111', '0', '1');
INSERT INTO `tw_footer` VALUES ('2', '1', '联系我们', '/Article/index/type/aboutus.html', '', '1', '', '1', '111', '0', '1');
INSERT INTO `tw_footer` VALUES ('3', '1', '资质证明', '/Article/index/type/aboutus.html', '', '1', '', '1', '111', '0', '1');
INSERT INTO `tw_footer` VALUES ('4', '1', '用户协议', '/Article/index/type/aboutus.html', '', '1', '', '1', '111', '0', '1');
INSERT INTO `tw_footer` VALUES ('5', '1', '法律声明', '/Article/index/type/aboutus.html', '', '1', '', '1', '111', '0', '1');
INSERT INTO `tw_footer` VALUES ('6', '1', '1', '/', 'footer_1.png', '2', '', '1', '111', '0', '1');
INSERT INTO `tw_footer` VALUES ('7', '1', '1', 'http://www.szfw.org/', 'footer_2.png', '2', '', '1', '111', '0', '1');
INSERT INTO `tw_footer` VALUES ('8', '1', '1', 'http://www.miibeian.gov.cn/', 'footer_3.png', '2', '', '1', '111', '0', '1');
INSERT INTO `tw_footer` VALUES ('9', '1', '1', 'http://www.cyberpolice.cn/', 'footer_4.png', '2', '', '1', '111', '0', '1');

-- ----------------------------
-- Table structure for tw_invit
-- ----------------------------
DROP TABLE IF EXISTS `tw_invit`;
CREATE TABLE `tw_invit` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `invit` int(11) unsigned NOT NULL,
  `name` tinyint(4) NOT NULL,
  `type` int(11) NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `fee` decimal(20,8) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `buysell` tinyint(1) NOT NULL DEFAULT '2',
  `rmb` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `invit` (`invit`),
  KEY `name` (`name`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `buysell` (`buysell`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='推广奖励表';

-- ----------------------------
-- Records of tw_invit
-- ----------------------------
INSERT INTO `tw_invit` VALUES ('1', '6273', '6276', '33', '1', '1.00000000', '2.00000000', '3.00000000', '1', '1511162600', '1511162600', '1', '1', '321');
INSERT INTO `tw_invit` VALUES ('2', '6291', '6292', '1', '6', '1.00000000', '10.00000000', '0.00900000', '0', '1512023169', '0', '1', '2', 'btc');
INSERT INTO `tw_invit` VALUES ('3', '6290', '6292', '2', '6', '1.00000000', '10.00000000', '0.00600000', '0', '1512023169', '0', '1', '2', 'btc');
INSERT INTO `tw_invit` VALUES ('4', '6277', '6292', '3', '6', '1.00000000', '10.00000000', '0.00300000', '0', '1512023169', '0', '1', '2', 'btc');
INSERT INTO `tw_invit` VALUES ('5', '6291', '6292', '1', '6', '1.00000000', '10.00000000', '0.00900000', '0', '1512023465', '0', '1', '2', 'btc');
INSERT INTO `tw_invit` VALUES ('6', '6290', '6292', '2', '6', '1.00000000', '10.00000000', '0.00600000', '0', '1512023465', '0', '1', '2', 'btc');
INSERT INTO `tw_invit` VALUES ('7', '6277', '6292', '3', '6', '1.00000000', '10.00000000', '0.00300000', '0', '1512023465', '0', '1', '2', 'btc');
INSERT INTO `tw_invit` VALUES ('8', '6291', '6292', '1', '6', '1.00000000', '10.00000000', '0.00900000', '0', '1512023595', '0', '1', '2', 'btc');
INSERT INTO `tw_invit` VALUES ('9', '6290', '6292', '2', '6', '1.00000000', '10.00000000', '0.00600000', '0', '1512023595', '0', '1', '2', 'btc');
INSERT INTO `tw_invit` VALUES ('10', '6277', '6292', '3', '6', '1.00000000', '10.00000000', '0.00300000', '0', '1512023595', '0', '1', '2', 'btc');
INSERT INTO `tw_invit` VALUES ('11', '6291', '6292', '1', '6', '1.00000000', '10.00000000', '0.00900000', '0', '1512023694', '0', '1', '2', 'btc');
INSERT INTO `tw_invit` VALUES ('12', '6290', '6292', '2', '6', '1.00000000', '10.00000000', '0.00600000', '0', '1512023694', '0', '1', '2', 'btc');
INSERT INTO `tw_invit` VALUES ('13', '6277', '6292', '3', '6', '1.00000000', '10.00000000', '0.00300000', '0', '1512023694', '0', '1', '2', 'btc');
INSERT INTO `tw_invit` VALUES ('14', '6291', '6292', '1', '6', '1.00000000', '10.00000000', '0.00900000', '0', '1512023747', '0', '1', '2', 'btc');
INSERT INTO `tw_invit` VALUES ('15', '6290', '6292', '2', '6', '1.00000000', '10.00000000', '0.00600000', '0', '1512023747', '0', '1', '2', 'btc');
INSERT INTO `tw_invit` VALUES ('16', '6277', '6292', '3', '6', '1.00000000', '10.00000000', '0.00300000', '0', '1512023747', '0', '1', '2', 'btc');
INSERT INTO `tw_invit` VALUES ('17', '6274', '6279', '1', '6', '1.00000000', '20.00000000', '0.01800000', '0', '1512023852', '0', '1', '2', 'btc');
INSERT INTO `tw_invit` VALUES ('18', '6271', '6279', '2', '6', '1.00000000', '20.00000000', '0.01200000', '0', '1512023852', '0', '1', '2', 'btc');
INSERT INTO `tw_invit` VALUES ('19', '6292', '6293', '1', '6', '1.00000000', '2.00000000', '0.00180000', '0', '1512025100', '0', '1', '2', 'btc');
INSERT INTO `tw_invit` VALUES ('20', '6291', '6293', '2', '6', '1.00000000', '2.00000000', '0.00120000', '0', '1512025100', '0', '1', '2', 'btc');
INSERT INTO `tw_invit` VALUES ('21', '6290', '6293', '3', '6', '1.00000000', '2.00000000', '0.00060000', '0', '1512025100', '0', '1', '2', 'btc');
INSERT INTO `tw_invit` VALUES ('22', '6277', '6290', '1', '6', '1.00000000', '2.10000000', '0.00189000', '0', '1512030840', '0', '1', '2', 'btc');
INSERT INTO `tw_invit` VALUES ('23', '6277', '6290', '1', '6', '7.00000000', '70.00000000', '0.06300000', '0', '1512031883', '0', '1', '2', 'btc');
INSERT INTO `tw_invit` VALUES ('24', '6277', '6290', '1', '6', '7.00000000', '21.00000000', '0.01890000', '0', '1512031884', '0', '1', '2', 'btc');
INSERT INTO `tw_invit` VALUES ('25', '6277', '6290', '1', '6', '1.00000000', '0.56799000', '0.00051100', '0', '1512031885', '0', '1', '2', 'btc');
INSERT INTO `tw_invit` VALUES ('26', '6277', '6290', '1', '6', '1.00000000', '0.56000000', '0.00050400', '0', '1512031885', '0', '1', '2', 'btc');
INSERT INTO `tw_invit` VALUES ('27', '6277', '6290', '1', '6', '10.00000000', '5.60000000', '0.00504000', '0', '1512031984', '0', '1', '2', 'btc');
INSERT INTO `tw_invit` VALUES ('28', '6290', '6291', '1', '6', '23.00000000', '12.88000000', '0.01159200', '0', '1512032815', '0', '1', '2', 'btc');
INSERT INTO `tw_invit` VALUES ('29', '6277', '6291', '2', '6', '23.00000000', '12.88000000', '0.00772800', '0', '1512032815', '0', '1', '2', 'btc');
INSERT INTO `tw_invit` VALUES ('30', '6290', '6291', '1', '6', '17.00000000', '9.52000000', '0.00856800', '0', '1512032934', '0', '1', '2', 'btc');
INSERT INTO `tw_invit` VALUES ('31', '6277', '6291', '2', '6', '17.00000000', '9.52000000', '0.00571200', '0', '1512032934', '0', '1', '2', 'btc');
INSERT INTO `tw_invit` VALUES ('32', '6290', '6291', '1', '6', '10.00000000', '5.60000000', '0.00504000', '0', '1512032975', '0', '1', '2', 'btc');
INSERT INTO `tw_invit` VALUES ('33', '6277', '6291', '2', '6', '10.00000000', '5.60000000', '0.00336000', '0', '1512032975', '0', '1', '2', 'btc');
INSERT INTO `tw_invit` VALUES ('34', '6271', '6274', '1', '4', '0.90000000', '0.00999000', '0.00000300', '0', '1512109312', '0', '1', '1', 'btc');

-- ----------------------------
-- Table structure for tw_link
-- ----------------------------
DROP TABLE IF EXISTS `tw_link`;
CREATE TABLE `tw_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `img` varchar(100) NOT NULL DEFAULT '',
  `mytx` varchar(100) NOT NULL DEFAULT '',
  `remark` varchar(50) NOT NULL DEFAULT '',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` int(4) NOT NULL DEFAULT '0',
  `look_type` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COMMENT='常用银行地址';

-- ----------------------------
-- Records of tw_link
-- ----------------------------
INSERT INTO `tw_link` VALUES ('27', '巴比特', '巴比特', 'http://www.8btc.com/', '', '', '', '0', '1492790400', '1492790400', '1', '1');
INSERT INTO `tw_link` VALUES ('43', 'wan', 'wan', '', 'http://eryuemei.oss-cn-shenzhen.aliyuncs.com/upload/4.jpg', '', '', '0', '1492652293', '1492652293', '1', '0');
INSERT INTO `tw_link` VALUES ('44', '网录科技', '网录科技', '', 'http://eryuemei.oss-cn-shenzhen.aliyuncs.com/upload/3.jpg', '', '', '0', '1492652293', '1492652293', '1', '0');
INSERT INTO `tw_link` VALUES ('45', '新链加速器', '新链加速器', '', 'http://eryuemei.oss-cn-shenzhen.aliyuncs.com/upload/2.jpg', '', '', '0', '1492652293', '1492652293', '1', '0');
INSERT INTO `tw_link` VALUES ('46', '云财经', '云财经', 'http://www.yuncaijing.com/', '', '', '', '0', '1503504000', '1503504000', '1', '1');
INSERT INTO `tw_link` VALUES ('47', '金投网', '金投网', 'http://finance.cngold.org/', '', '', '', '0', '1503504000', '1503504000', '1', '1');
INSERT INTO `tw_link` VALUES ('48', '互动百科', '互动百科', 'http://www.baike.com/', '', '', '', '0', '1503504000', '1503504000', '1', '1');
INSERT INTO `tw_link` VALUES ('49', '比特币挖矿', '比特币挖矿', 'http://www.cybtc.com/', '', '', '', '0', '1503504000', '1503504000', '1', '1');
INSERT INTO `tw_link` VALUES ('50', '中国纸黄金', '中国纸黄金', 'http://www.zhijinwang.com/', '', '', '', '0', '1503504000', '1503504000', '1', '1');
INSERT INTO `tw_link` VALUES ('51', '炎黄财经视频', '炎黄财经视频', 'http://www.mytv365.com/', '', '', '', '0', '1503417600', '1503417600', '1', '1');
INSERT INTO `tw_link` VALUES ('53', 'BTCBOX', 'BTCBOX', 'https://btcbox.com/', '', '', '', '0', '1503417600', '1503417600', '1', '1');
INSERT INTO `tw_link` VALUES ('54', '比特范', '比特范', 'http://news.btcfans.com/', '', '', '', '0', '1503331200', '1503331200', '1', '1');
INSERT INTO `tw_link` VALUES ('55', '链行', '链行', 'https://www.lhang.com/#/', '', '', '', '0', '1503417600', '1503417600', '1', '1');
INSERT INTO `tw_link` VALUES ('56', '玩币族', '玩币族', 'http://www.wanbizu.com/', '', '', '', '0', '1503504000', '1503504000', '1', '1');
INSERT INTO `tw_link` VALUES ('57', 'bitbank', 'bitbank', 'https://www.bitbank.com/', '', '', '', '0', '1503417600', '1503417600', '1', '1');
INSERT INTO `tw_link` VALUES ('58', '铅笔', '铅笔', 'http://chainb.com/', '', '', '', '0', '1503244800', '1503244800', '1', '1');
INSERT INTO `tw_link` VALUES ('59', '彩云比特', '彩云比特', 'http://www.cybtc.com/', '', '', '', '0', '1503504000', '1503504000', '1', '1');
INSERT INTO `tw_link` VALUES ('60', '小黑屋', '小黑屋', 'http://www.cybtc.com/forum.php?mod=misc&action=showdarkroom', '', '', '', '0', '1503504000', '1503504000', '1', '1');
INSERT INTO `tw_link` VALUES ('61', '比西西商城', '比西西商城', 'http://shop.bitxixi.com/', '', '', '', '0', '1503331200', '1503331200', '1', '1');
INSERT INTO `tw_link` VALUES ('62', 'BITKAN', 'BITKAN', '', 'http://eryuemei.oss-cn-shenzhen.aliyuncs.com/upload/6.jpg', '', '', '0', '1503504000', '1503504000', '1', '0');
INSERT INTO `tw_link` VALUES ('63', '趣块链', '趣块链', '', 'http://eryuemei.oss-cn-shenzhen.aliyuncs.com/upload/1.jpg', '', '', '0', '1503504000', '1503504000', '1', '0');

-- ----------------------------
-- Table structure for tw_market
-- ----------------------------
DROP TABLE IF EXISTS `tw_market`;
CREATE TABLE `tw_market` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `round` varchar(255) NOT NULL DEFAULT '',
  `fee_buy` varchar(255) NOT NULL DEFAULT '',
  `fee_sell` varchar(255) NOT NULL DEFAULT '',
  `buy_min` varchar(255) NOT NULL DEFAULT '',
  `buy_max` varchar(255) NOT NULL DEFAULT '',
  `sell_min` varchar(255) NOT NULL DEFAULT '',
  `sell_max` varchar(255) NOT NULL DEFAULT '',
  `trade_min` varchar(255) NOT NULL DEFAULT '',
  `trade_max` varchar(255) NOT NULL DEFAULT '',
  `invit_buy` varchar(50) NOT NULL DEFAULT '',
  `invit_sell` varchar(50) NOT NULL DEFAULT '',
  `invit_1` varchar(50) NOT NULL DEFAULT '',
  `invit_2` varchar(50) NOT NULL DEFAULT '',
  `invit_3` varchar(50) NOT NULL DEFAULT '',
  `zhang` varchar(255) NOT NULL DEFAULT '',
  `die` varchar(255) NOT NULL DEFAULT '',
  `hou_price` varchar(255) NOT NULL DEFAULT '',
  `tendency` text,
  `trade` int(11) unsigned NOT NULL DEFAULT '0',
  `new_price` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `buy_price` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `sell_price` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `min_price` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `max_price` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `volume` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `change` decimal(20,8) NOT NULL DEFAULT '0.00000000',
  `api_min` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `api_max` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `start_time` int(11) DEFAULT NULL COMMENT '开盘时间（小时）',
  `stop_time` int(11) DEFAULT NULL COMMENT '闭盘时间（小时）',
  `start_minute` int(11) DEFAULT NULL COMMENT '开盘时间（分钟）',
  `stop_minute` int(11) DEFAULT NULL COMMENT '毕盘时间（分钟）',
  `agree6` int(11) DEFAULT NULL COMMENT '周六是否可以交易0是不可交易1是可交易',
  `agree7` int(11) DEFAULT NULL COMMENT '周天是否可以交易0是不可交易1是可交易',
  `trade_num_min` varchar(30) NOT NULL DEFAULT '',
  `cjamount` decimal(20,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='行情配置表';

-- ----------------------------
-- Records of tw_market
-- ----------------------------
INSERT INTO `tw_market` VALUES ('10', 'ltc_btc', '6', '0.1', '0.1', '0.0001', '10', '0.0001', '10', '0.001', '1000', '1', '1', '30', '0', '0', '99999999', '99999999', '0.01100000', '[[1511849966,\"10.00000000\"],[1511864366,0],[1511878766,0],[1511893166,0],[1511907566,0],[1511921966,0],[1511936366,0],[1511950766,0],[1511965166,0],[1511979566,0],[1511993966,0],[1512008366,\"0.01110000\"],[1512022766,0],[1512037166,0],[1512051566,0],[1512065966,0],[1512080366,0],[1512094766,0],[1512109166,0]]', '1', '0.01110000', '0.01110000', '0.01110000', '0.00000000', '0.00000000', '0.00000000', '0.91000000', '0.00000000', '0.00000000', '0', '0', '0', '1', '0', '23', '0', '59', '1', '1', '0.001', '0.00000000');
INSERT INTO `tw_market` VALUES ('11', 'bcc_btc', '6', '0', '0.3', '0.000001', '1000000', '0.000001', '1000000', '0.000001', '1000000', '1', '1', '30', '20', '10', '99999999', '99999999', '0.05800000', '[[1511849966,\"0.56788900\"],[1511864366,0],[1511878766,0],[1511893166,0],[1511907566,0],[1511921966,0],[1511936366,\"10.00000000\"],[1511950766,0],[1511965166,0],[1511979566,0],[1511993966,0],[1512008366,0],[1512022766,\"20.00000000\"],[1512037166,0],[1512051566,0],[1512065966,0],[1512080366,0],[1512094766,0],[1512109166,0]]', '1', '0.56000000', '0.60000000', '0.56000000', '0.56000000', '20.00000000', '123.70000000', '865.52000000', '0.00000000', '0.00000000', '0', '0', '0', '1', '0', '23', '0', '59', '1', '1', '0.000001', '296.17123800');
INSERT INTO `tw_market` VALUES ('12', 'ltc_eth', '3', '0.1', '0.1', '0.001', '100', '0.001', '100', '0.001', '10000', '1', '1', '30', '0', '0', '99999999', '99999999', '0.19000000', '[[1508211002,0],[1508225402,0],[1508239802,0],[1508254202,0],[1508268602,0],[1508283002,0],[1508297402,0],[1508311802,0],[1508326202,0],[1508340602,0],[1508355002,0],[1508369402,0],[1508383802,0],[1508398202,0],[1508412602,0],[1508427002,0],[1508441402,0],[1508455802,0],[1508470202,0]]', '1', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '-100.00000000', '0.00000000', '0.00000000', '0', '0', '0', '0', '0', '23', '0', '59', '1', '1', '0.0001', '0.00000000');
INSERT INTO `tw_market` VALUES ('13', 'bcc_eth', '3', '0.1', '0.1', '0.001', '100', '0.001', '100', '0.001', '10000', '1', '1', '30', '0', '0', '99999999', '99999999', '1.53600000', '[[1508211002,0],[1508225402,0],[1508239802,0],[1508254202,0],[1508268602,0],[1508283002,0],[1508297402,0],[1508311802,0],[1508326202,0],[1508340602,0],[1508355002,0],[1508369402,0],[1508383802,0],[1508398202,0],[1508412602,0],[1508427002,0],[1508441402,0],[1508455802,0],[1508470202,0]]', '1', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '-100.00000000', '0.00000000', '0.00000000', '0', '0', '0', '0', '0', '23', '0', '59', '1', '1', '0.0001', '0.00000000');
INSERT INTO `tw_market` VALUES ('14', 'eth_btc', '3', '0.1', '0.1', '0.001', '100', '0.001', '100', '0.001', '1000000', '1', '1', '30', '0', '0', '99999999', '99999999', '0.07500000', '[[1508211002,0],[1508225402,0],[1508239802,0],[1508254202,0],[1508268602,0],[1508283002,0],[1508297402,0],[1508311802,0],[1508326202,0],[1508340602,0],[1508355002,0],[1508369402,0],[1508383802,0],[1508398202,0],[1508412602,0],[1508427002,0],[1508441402,0],[1508455802,0],[1508470202,0]]', '1', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '-100.00000000', '0.00000000', '0.00000000', '0', '0', '0', '0', '0', '23', '0', '59', '1', '1', '0.001', '0.00000000');
INSERT INTO `tw_market` VALUES ('15', 'btc_eth', '3', '0.1', '0.1', '0.001', '100', '0.001', '100', '0.001', '1000000', '1', '1', '30', '0', '0', '99999999', '99999999', '13.41100000', '[[1508211002,0],[1508225402,0],[1508239802,0],[1508254202,0],[1508268602,0],[1508283002,0],[1508297402,0],[1508311802,0],[1508326202,0],[1508340602,0],[1508355002,0],[1508369402,0],[1508383802,0],[1508398202,0],[1508412602,0],[1508427002,0],[1508441402,0],[1508455802,0],[1508470202,0]]', '1', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '-100.00000000', '0.00000000', '0.00000000', '0', '0', '0', '0', '0', '23', '0', '59', '1', '1', '0.001', '0.00000000');

-- ----------------------------
-- Table structure for tw_market_json
-- ----------------------------
DROP TABLE IF EXISTS `tw_market_json`;
CREATE TABLE `tw_market_json` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `data` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tw_market_json
-- ----------------------------

-- ----------------------------
-- Table structure for tw_menu
-- ----------------------------
DROP TABLE IF EXISTS `tw_menu`;
CREATE TABLE `tw_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文档ID',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `url` char(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `hide` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  `tip` varchar(255) NOT NULL DEFAULT '' COMMENT '提示',
  `group` varchar(50) DEFAULT '' COMMENT '分组',
  `is_dev` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否仅开发者模式可见',
  `ico_name` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=463 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tw_menu
-- ----------------------------
INSERT INTO `tw_menu` VALUES ('1', '系统', '0', '1', 'Index/index', '0', '', '', '0', 'home');
INSERT INTO `tw_menu` VALUES ('2', '内容', '0', '1', 'Article/index', '0', '', '', '0', 'list-alt');
INSERT INTO `tw_menu` VALUES ('3', '用户', '0', '1', 'User/index', '0', '', '', '0', 'user');
INSERT INTO `tw_menu` VALUES ('4', '财务', '0', '1', 'Finance/myzr', '0', '', '', '0', 'th-list');
INSERT INTO `tw_menu` VALUES ('5', '交易', '0', '1', 'Trade/index', '0', '', '', '0', 'stats');
INSERT INTO `tw_menu` VALUES ('7', '设置', '0', '1', 'Config/index', '0', '', '', '0', 'cog');
INSERT INTO `tw_menu` VALUES ('9', '工具', '0', '1', 'Tools/index', '0', '', '', '0', 'wrench');
INSERT INTO `tw_menu` VALUES ('11', '系统概览', '1', '1', 'Index/index', '0', '', '系统', '0', 'home');
INSERT INTO `tw_menu` VALUES ('12', '市场统计', '1', '3', 'Index/market', '0', '', '系统', '0', 'home');
INSERT INTO `tw_menu` VALUES ('13', '文章管理', '2', '1', 'Article/index', '0', '', '内容', '0', 'list-alt');
INSERT INTO `tw_menu` VALUES ('14', '编辑添加', '13', '1', 'Article/edit', '1', '', '内容', '0', 'home');
INSERT INTO `tw_menu` VALUES ('15', '修改状态', '13', '100', 'Article/status', '1', '', '内容', '0', 'home');
INSERT INTO `tw_menu` VALUES ('16', '上传图片', '13', '2', 'Article/images', '1', '', '内容管理', '0', '0');
INSERT INTO `tw_menu` VALUES ('18', '编辑', '17', '2', 'Adver/edit', '1', '', '内容管理', '0', '0');
INSERT INTO `tw_menu` VALUES ('19', '修改', '17', '2', 'Adver/status', '1', '', '内容管理', '0', '0');
INSERT INTO `tw_menu` VALUES ('21', '编辑', '20', '3', 'Chat/edit', '1', '', '聊天管理', '0', '0');
INSERT INTO `tw_menu` VALUES ('22', '修改', '20', '3', 'Chat/status', '1', '', '聊天管理', '0', '0');
INSERT INTO `tw_menu` VALUES ('23', '提示文字', '2', '1', 'Text/index', '1', '', '提示管理', '0', 'exclamation-sign');
INSERT INTO `tw_menu` VALUES ('24', '编辑', '23', '1', 'Text/edit', '1', '', '提示管理', '0', '0');
INSERT INTO `tw_menu` VALUES ('25', '修改', '23', '1', 'Text/status', '1', '', '提示管理', '0', '0');
INSERT INTO `tw_menu` VALUES ('26', '用户管理', '3', '1', 'User/index', '0', '', '用户', '0', 'user');
INSERT INTO `tw_menu` VALUES ('32', '确认转出', '26', '8', 'User/myzc_qr', '1', '', '用户管理', '0', '0');
INSERT INTO `tw_menu` VALUES ('33', '用户配置', '3', '1', 'User/config', '1', '', '前台用户管理', '0', 'cog');
INSERT INTO `tw_menu` VALUES ('34', '编辑', '33', '2', 'User/index_edit', '1', '', '用户管理', '0', '0');
INSERT INTO `tw_menu` VALUES ('35', '修改', '33', '2', 'User/index_status', '1', '', '用户管理', '0', '0');
INSERT INTO `tw_menu` VALUES ('37', '财产修改', '26', '3', 'Usercoin/edit', '1', '', '用户管理', '0', '0');
INSERT INTO `tw_menu` VALUES ('39', '新增用户组', '38', '0', 'AuthManager/createGroup', '1', '', '权限管理', '0', '0');
INSERT INTO `tw_menu` VALUES ('40', '编辑用户组', '38', '0', 'AuthManager/editgroup', '1', '', '权限管理', '0', '0');
INSERT INTO `tw_menu` VALUES ('41', '更新用户组', '38', '0', 'AuthManager/writeGroup', '1', '', '权限管理', '0', '0');
INSERT INTO `tw_menu` VALUES ('42', '改变状态', '38', '0', 'AuthManager/changeStatus', '1', '', '权限管理', '0', '0');
INSERT INTO `tw_menu` VALUES ('43', '访问授权', '38', '0', 'AuthManager/access', '1', '', '权限管理', '0', '0');
INSERT INTO `tw_menu` VALUES ('44', '分类授权', '38', '0', 'AuthManager/category', '1', '', '权限管理', '0', '0');
INSERT INTO `tw_menu` VALUES ('45', '成员授权', '38', '0', 'AuthManager/user', '1', '', '权限管理', '0', '0');
INSERT INTO `tw_menu` VALUES ('46', '成员列表授权', '38', '0', 'AuthManager/tree', '1', '', '权限管理', '0', '0');
INSERT INTO `tw_menu` VALUES ('47', '用户组', '38', '0', 'AuthManager/group', '1', '', '权限管理', '0', '0');
INSERT INTO `tw_menu` VALUES ('48', '添加到用户组', '38', '0', 'AuthManager/addToGroup', '1', '', '权限管理', '0', '0');
INSERT INTO `tw_menu` VALUES ('49', '用户组移除', '38', '0', 'AuthManager/removeFromGroup', '1', '', '权限管理', '0', '0');
INSERT INTO `tw_menu` VALUES ('50', '分类添加到用户组', '38', '0', 'AuthManager/addToCategory', '1', '', '权限管理', '0', '0');
INSERT INTO `tw_menu` VALUES ('51', '模型添加到用户组', '38', '0', 'AuthManager/addToModel', '1', '', '权限管理', '0', '0');
INSERT INTO `tw_menu` VALUES ('53', '配置', '52', '1', 'Finance/config', '1', '', '', '0', '0');
INSERT INTO `tw_menu` VALUES ('55', '类型', '52', '1', 'Finance/type', '1', '', '', '0', '0');
INSERT INTO `tw_menu` VALUES ('56', '状态修改', '52', '1', 'Finance/type_status', '1', '', '', '0', '0');
INSERT INTO `tw_menu` VALUES ('60', '修改', '57', '3', 'Mycz/status', '1', '', '充值管理', '0', '0');
INSERT INTO `tw_menu` VALUES ('61', '状态修改', '57', '3', 'Mycztype/status', '1', '', '充值管理', '0', '0');
INSERT INTO `tw_menu` VALUES ('64', '状态修改', '62', '5', 'Mytx/status', '1', '', '提现管理', '0', '0');
INSERT INTO `tw_menu` VALUES ('65', '取消', '62', '5', 'Mytx/excel', '1', '', '提现管理', '0', '0');
INSERT INTO `tw_menu` VALUES ('68', '委托管理', '5', '1', 'Trade/index', '0', '', '交易', '0', 'stats');
INSERT INTO `tw_menu` VALUES ('69', '成交记录', '5', '2', 'Trade/log', '0', '', '交易', '0', 'stats');
INSERT INTO `tw_menu` VALUES ('70', '修改状态', '68', '0', 'Trade/status', '1', '', '交易管理', '0', '0');
INSERT INTO `tw_menu` VALUES ('71', '撤销挂单', '68', '0', 'Trade/chexiao', '1', '', '交易管理', '0', '0');
INSERT INTO `tw_menu` VALUES ('74', '认购编辑', '72', '2', 'Issue/edit', '1', '', '认购管理', '0', '0');
INSERT INTO `tw_menu` VALUES ('75', '认购修改', '72', '2', 'Issue/status', '1', '', '认购管理', '0', '0');
INSERT INTO `tw_menu` VALUES ('79', '基本配置', '7', '1', 'Config/index', '0', '', '设置', '0', 'cog');
INSERT INTO `tw_menu` VALUES ('81', '客服配置', '7', '3', 'Config/contact', '0', '', '设置', '0', 'cog');
INSERT INTO `tw_menu` VALUES ('83', '编辑', '82', '4', 'Config/bank_edit', '1', '', '网站配置', '0', '0');
INSERT INTO `tw_menu` VALUES ('85', '编辑', '84', '4', 'Coin/edit', '0', '', '网站配置', '0', '0');
INSERT INTO `tw_menu` VALUES ('87', '状态修改', '84', '4', 'Coin/status', '1', '', '网站配置', '0', '0');
INSERT INTO `tw_menu` VALUES ('89', '编辑市场', '88', '4', 'Market/edit', '0', '', '', '0', '0');
INSERT INTO `tw_menu` VALUES ('91', '状态修改', '88', '4', 'Config/market_add', '1', '', '', '0', '0');
INSERT INTO `tw_menu` VALUES ('95', '其他配置', '7', '6', 'Config/qita', '0', '', '设置', '0', 'cog');
INSERT INTO `tw_menu` VALUES ('115', '图片', '111', '0', 'Shop/images', '0', '', '云购商城', '0', '0');
INSERT INTO `tw_menu` VALUES ('127', '用户登录', '3', '0', 'Login/index', '1', '', '用户配置', '0', '0');
INSERT INTO `tw_menu` VALUES ('128', '用户退出', '3', '0', 'Login/loginout', '1', '', '用户配置', '0', '0');
INSERT INTO `tw_menu` VALUES ('129', '修改管理员密码', '3', '0', 'User/setpwd', '1', '', '用户', '0', 'home');
INSERT INTO `tw_menu` VALUES ('131', '用户详情', '3', '4', 'User/detail', '1', '', '前台用户管理', '0', 'time');
INSERT INTO `tw_menu` VALUES ('132', '后台用户详情', '3', '1', 'AdminUser/detail', '1', '', '后台用户管理', '0', 'th-list');
INSERT INTO `tw_menu` VALUES ('133', '后台用户状态', '3', '1', 'AdminUser/status', '1', '', '后台用户管理', '0', 'th-list');
INSERT INTO `tw_menu` VALUES ('134', '后台用户新增', '3', '1', 'AdminUser/add', '1', '', '后台用户管理', '0', 'th-list');
INSERT INTO `tw_menu` VALUES ('135', '后台用户编辑', '3', '1', 'AdminUser/edit', '1', '', '后台用户管理', '0', 'th-list');
INSERT INTO `tw_menu` VALUES ('138', '编辑', '2', '1', 'Articletype/edit', '1', '', '内容管理', '0', 'list-alt');
INSERT INTO `tw_menu` VALUES ('140', '编辑', '139', '2', 'Link/edit', '1', '', '内容管理', '0', '0');
INSERT INTO `tw_menu` VALUES ('141', '修改', '139', '2', 'Link/status', '1', '', '内容管理', '0', '0');
INSERT INTO `tw_menu` VALUES ('155', '服务器队列', '9', '3', 'Tools/queue', '0', '', '工具', '0', 'wrench');
INSERT INTO `tw_menu` VALUES ('156', '钱包检查', '9', '3', 'Tools/qianbao', '0', '', '工具', '0', 'wrench');
INSERT INTO `tw_menu` VALUES ('157', '币种统计', '1', '2', 'Index/coin', '0', '', '系统', '0', 'home');
INSERT INTO `tw_menu` VALUES ('163', '提示文字', '7', '5', 'Config/text', '0', '', '设置', '0', 'cog');
INSERT INTO `tw_menu` VALUES ('278', '文章类型', '2', '2', 'Article/type', '0', '', '内容', '0', 'list-alt');
INSERT INTO `tw_menu` VALUES ('279', '广告管理', '2', '3', 'Article/adver', '0', '', '内容', '0', 'list-alt');
INSERT INTO `tw_menu` VALUES ('280', '友情链接', '2', '4', 'Article/youqing', '0', '', '内容', '0', 'list-alt');
INSERT INTO `tw_menu` VALUES ('282', '登陆日志', '3', '4', 'User/log', '0', '', '用户', '0', 'user');
INSERT INTO `tw_menu` VALUES ('283', '用户钱包', '3', '5', 'User/qianbao', '0', '', '用户', '0', 'user');
INSERT INTO `tw_menu` VALUES ('284', '提现地址', '3', '6', 'User/bank', '0', '', '用户', '0', 'user');
INSERT INTO `tw_menu` VALUES ('285', '用户财产', '3', '7', 'User/coin', '0', '', '用户', '0', 'user');
INSERT INTO `tw_menu` VALUES ('288', '交易市场', '5', '5', 'Trade/market', '0', '', '交易', '0', 'stats');
INSERT INTO `tw_menu` VALUES ('289', '交易推荐', '5', '6', 'Trade/invit', '1', '', '交易', '0', 'stats');
INSERT INTO `tw_menu` VALUES ('291', '人民币充值', '4', '2', 'Finance/mycz', '0', '', '财务', '0', 'th-list');
INSERT INTO `tw_menu` VALUES ('292', '人民币充值方式', '4', '3', 'Finance/myczType', '0', '', '财务', '0', 'th-list');
INSERT INTO `tw_menu` VALUES ('293', '人民币提现', '4', '4', 'Finance/mytx', '0', '', '财务', '0', 'th-list');
INSERT INTO `tw_menu` VALUES ('294', '人民币提现配置', '4', '5', 'Finance/mytxConfig', '0', '', '财务', '0', 'th-list');
INSERT INTO `tw_menu` VALUES ('295', '虚拟币转入', '4', '6', 'Finance/myzr', '0', '', '财务', '0', 'th-list');
INSERT INTO `tw_menu` VALUES ('296', '虚拟币转出', '4', '7', 'Finance/myzc', '0', '', '财务', '0', 'th-list');
INSERT INTO `tw_menu` VALUES ('297', '修改状态', '291', '100', 'Finance/myczStatus', '1', '', '财务', '0', 'home');
INSERT INTO `tw_menu` VALUES ('298', '确认到账', '291', '100', 'Finance/myczQueren', '1', '', '财务', '0', 'home');
INSERT INTO `tw_menu` VALUES ('299', '编辑添加', '292', '1', 'Finance/myczTypeEdit', '1', '', '财务', '0', 'home');
INSERT INTO `tw_menu` VALUES ('300', '状态修改', '292', '2', 'Finance/myczTypeStatus', '1', '', '财务', '0', 'home');
INSERT INTO `tw_menu` VALUES ('301', '上传图片', '292', '2', 'Finance/myczTypeImage', '1', '', '财务', '0', 'home');
INSERT INTO `tw_menu` VALUES ('302', '修改状态', '293', '2', 'Finance/mytxStatus', '1', '', '财务', '0', 'home');
INSERT INTO `tw_menu` VALUES ('303', '导出选中', '293', '3', 'Finance/mytxExcel', '1', '', '财务', '0', 'home');
INSERT INTO `tw_menu` VALUES ('304', '正在处理', '293', '4', 'Finance/mytxChuli', '1', '', '财务', '0', 'home');
INSERT INTO `tw_menu` VALUES ('305', '撤销提现', '293', '5', 'Finance/mytxChexiao', '1', '', '财务', '0', 'home');
INSERT INTO `tw_menu` VALUES ('306', '确认提现', '293', '6', 'Finance/mytxQueren', '1', '', '财务', '0', 'home');
INSERT INTO `tw_menu` VALUES ('307', '确认转出', '296', '6', 'Finance/myzcQueren', '1', '', '财务', '0', 'home');
INSERT INTO `tw_menu` VALUES ('309', '清理缓存', '9', '1', 'Tools/index', '0', '', '工具', '0', 'wrench');
INSERT INTO `tw_menu` VALUES ('312', '管理员管理', '3', '2', 'User/admin', '0', '', '用户', '0', 'user');
INSERT INTO `tw_menu` VALUES ('313', '权限列表', '3', '3', 'User/auth', '0', '', '用户', '0', 'user');
INSERT INTO `tw_menu` VALUES ('314', '编辑添加', '26', '1', 'User/edit', '1', '', '用户', '0', 'home');
INSERT INTO `tw_menu` VALUES ('315', '修改状态', '26', '1', 'User/status', '1', '', '用户', '0', 'home');
INSERT INTO `tw_menu` VALUES ('316', '编辑添加', '312', '1', 'User/adminEdit', '1', '', '用户', '0', 'home');
INSERT INTO `tw_menu` VALUES ('317', '修改状态', '312', '1', 'User/adminStatus', '1', '', '用户', '0', 'home');
INSERT INTO `tw_menu` VALUES ('318', '编辑添加', '313', '1', 'User/authEdit', '1', '', '用户', '0', 'home');
INSERT INTO `tw_menu` VALUES ('319', '修改状态', '313', '1', 'User/authStatus', '1', '', '用户', '0', 'home');
INSERT INTO `tw_menu` VALUES ('320', '重新初始化权限', '313', '1', 'User/authStart', '1', '', '用户', '0', 'home');
INSERT INTO `tw_menu` VALUES ('321', '编辑添加', '282', '1', 'User/logEdit', '1', '', '用户', '0', 'home');
INSERT INTO `tw_menu` VALUES ('322', '修改状态', '282', '1', 'User/logStatus', '1', '', '用户', '0', 'home');
INSERT INTO `tw_menu` VALUES ('323', '编辑添加', '283', '1', 'User/qianbaoEdit', '1', '', '用户', '0', 'home');
INSERT INTO `tw_menu` VALUES ('324', '修改状态', '283', '1', 'User/qianbaoStatus', '1', '', '用户', '0', 'home');
INSERT INTO `tw_menu` VALUES ('325', '编辑添加', '284', '1', 'User/bankEdit', '1', '', '用户', '0', 'home');
INSERT INTO `tw_menu` VALUES ('326', '修改状态', '284', '1', 'User/bankStatus', '1', '', '用户', '0', 'home');
INSERT INTO `tw_menu` VALUES ('327', '编辑添加', '285', '1', 'User/coinEdit', '1', '', '用户', '0', 'home');
INSERT INTO `tw_menu` VALUES ('328', '财产统计', '285', '1', 'User/coinLog', '1', '', '用户', '0', 'home');
INSERT INTO `tw_menu` VALUES ('329', '编辑添加', '286', '1', 'User/goodsEdit', '1', '', '用户', '0', 'home');
INSERT INTO `tw_menu` VALUES ('330', '修改状态', '286', '1', 'User/goodsStatus', '1', '', '用户', '0', 'home');
INSERT INTO `tw_menu` VALUES ('331', '编辑添加', '278', '1', 'Article/typeEdit', '1', '', '内容', '0', 'home');
INSERT INTO `tw_menu` VALUES ('332', '修改状态', '278', '100', 'Article/typeStatus', '1', '', '内容', '0', 'home');
INSERT INTO `tw_menu` VALUES ('333', '编辑添加', '280', '1', 'Article/youqingEdit', '1', '', '内容', '0', 'home');
INSERT INTO `tw_menu` VALUES ('334', '修改状态', '280', '100', 'Article/youqingStatus', '1', '', '内容', '0', 'home');
INSERT INTO `tw_menu` VALUES ('335', '编辑添加', '279', '1', 'Article/adverEdit', '1', '', '内容', '0', 'home');
INSERT INTO `tw_menu` VALUES ('336', '修改状态', '279', '100', 'Article/adverStatus', '1', '', '内容', '0', 'home');
INSERT INTO `tw_menu` VALUES ('337', '上传图片', '279', '100', 'Article/adverImage', '1', '', '内容', '0', 'home');
INSERT INTO `tw_menu` VALUES ('377', '访问授权', '313', '1', 'User/authAccess', '1', '', '用户', '0', 'home');
INSERT INTO `tw_menu` VALUES ('378', '访问授权修改', '313', '1', 'User/authAccessUp', '1', '', '用户', '0', 'home');
INSERT INTO `tw_menu` VALUES ('379', '成员授权', '313', '1', 'User/authUser', '1', '', '用户', '0', 'home');
INSERT INTO `tw_menu` VALUES ('380', '成员授权增加', '313', '1', 'User/authUserAdd', '1', '', '用户', '0', 'home');
INSERT INTO `tw_menu` VALUES ('381', '成员授权解除', '313', '1', 'User/authUserRemove', '1', '', '用户', '0', 'home');
INSERT INTO `tw_menu` VALUES ('382', '币种配置', '7', '4', 'Config/coin', '0', '', '设置', '0', 'cog');
INSERT INTO `tw_menu` VALUES ('388', '导航配置', '7', '7', 'Config/daohang', '0', '', '设置', '0', 'cog');
INSERT INTO `tw_menu` VALUES ('444', '短信配置', '7', '2', 'Config/mobile', '0', '', '设置', '0', 'cog');
INSERT INTO `tw_menu` VALUES ('446', '资金变更日志', '3', '9', 'User/amountlog', '0', '', '用户', '0', 'user');
INSERT INTO `tw_menu` VALUES ('447', '用户反馈', '3', '10', 'User/feedback', '0', '', '用户', '0', '0');
INSERT INTO `tw_menu` VALUES ('448', '实名审核', '3', '102', '/Admin/User/nameauth', '0', '审核用户实名认证信息', '用户', '0', '0');
INSERT INTO `tw_menu` VALUES ('449', '以太坊转账', '4', '100', 'Finance/ethtransfer', '1', '以太坊转账', '财务', '0', '0');
INSERT INTO `tw_menu` VALUES ('450', '导出excel', '291', '0', 'Finance/myczExcel', '1', '', '财务', '1', '0');
INSERT INTO `tw_menu` VALUES ('453', '恢复自动转出队列', '296', '0', 'Tools/recoverzc', '1', '', '财务', '1', '0');
INSERT INTO `tw_menu` VALUES ('454', '查看自动转出队列状态', '296', '0', 'Tools/chkzdzc', '1', '', '财务', '1', '0');
INSERT INTO `tw_menu` VALUES ('455', '批量转出', '296', '0', 'Finance/myzcBatch', '1', '', '财务', '1', '0');
INSERT INTO `tw_menu` VALUES ('456', '批量转出错误日志', '296', '0', 'Finance/myzcBatchLog', '1', '', '财务', '1', '0');
INSERT INTO `tw_menu` VALUES ('457', '导出excel', '68', '0', 'Trade/tradeExcel', '1', '', '交易', '1', '0');
INSERT INTO `tw_menu` VALUES ('458', '导出excel', '69', '0', 'Trade/tradelogExcel', '1', '', '财务', '1', '0');
INSERT INTO `tw_menu` VALUES ('460', '交易奖励', '4', '8', 'Finance/tradePrize', '0', '', '财务', '0', '0');
INSERT INTO `tw_menu` VALUES ('461', '鼓励金', '4', '9', 'Finance/incentive', '0', '', '财务', '0', '0');
INSERT INTO `tw_menu` VALUES ('462', '推荐关系', '3', '2', 'User/invittree', '0', '', '用户', '0', '0');

-- ----------------------------
-- Table structure for tw_mycz
-- ----------------------------
DROP TABLE IF EXISTS `tw_mycz`;
CREATE TABLE `tw_mycz` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `num` decimal(11,2) unsigned NOT NULL DEFAULT '0.00',
  `mum` decimal(11,2) unsigned NOT NULL DEFAULT '0.00',
  `type` varchar(50) NOT NULL,
  `tradeno` varchar(50) NOT NULL DEFAULT '',
  `remark` varchar(250) NOT NULL DEFAULT '',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` int(4) NOT NULL DEFAULT '0',
  `alipay_truename` varchar(20) DEFAULT NULL,
  `alipay_account` varchar(35) DEFAULT NULL,
  `ewmname` varchar(50) NOT NULL DEFAULT '',
  `fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `bank` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='充值记录表';

-- ----------------------------
-- Records of tw_mycz
-- ----------------------------
INSERT INTO `tw_mycz` VALUES ('1', '6272', '100.76', '100.76', 'bank', 'JV549517974', '', '0', '1510816671', '0', '0', '赵薇', '1231231231231231232', '', '0.00', '农业银行');
INSERT INTO `tw_mycz` VALUES ('2', '6272', '100.49', '100.49', 'bank', 'KJ991287433', '', '0', '1510816717', '1510817205', '2', '赵薇', '1123123123123121231231', '', '0.00', '中国银行');

-- ----------------------------
-- Table structure for tw_mycz_invit
-- ----------------------------
DROP TABLE IF EXISTS `tw_mycz_invit`;
CREATE TABLE `tw_mycz_invit` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `userid` int(11) unsigned NOT NULL COMMENT '用户id',
  `invitid` int(11) unsigned NOT NULL COMMENT '推荐人id',
  `num` decimal(20,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '操作金额',
  `fee` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000' COMMENT '赠送金额',
  `coinname` varchar(50) NOT NULL DEFAULT '' COMMENT '赠送币种',
  `mum` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000' COMMENT '到账金额',
  `remark` varchar(250) NOT NULL DEFAULT '' COMMENT '备注',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '编辑时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='充值赠送';

-- ----------------------------
-- Records of tw_mycz_invit
-- ----------------------------

-- ----------------------------
-- Table structure for tw_mycz_type
-- ----------------------------
DROP TABLE IF EXISTS `tw_mycz_type`;
CREATE TABLE `tw_mycz_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `max` varchar(200) NOT NULL DEFAULT '' COMMENT '名称',
  `min` varchar(200) NOT NULL DEFAULT '' COMMENT '名称',
  `kaihu` varchar(200) NOT NULL DEFAULT '' COMMENT '名称',
  `truename` varchar(200) NOT NULL DEFAULT '' COMMENT '名称',
  `name` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(50) NOT NULL DEFAULT '',
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `img` varchar(50) NOT NULL DEFAULT '',
  `extra` varchar(50) NOT NULL DEFAULT '',
  `remark` varchar(50) NOT NULL DEFAULT '',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` int(4) NOT NULL DEFAULT '0',
  `fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='充值类型';

-- ----------------------------
-- Records of tw_mycz_type
-- ----------------------------
INSERT INTO `tw_mycz_type` VALUES ('1', '10000000', '100', '', '', 'alipay', '支付宝转账', '', '15099566764', '', '', '', '需要在联系方式里面设置支付宝账号', '0', '0', '0', '0', '0.00');
INSERT INTO `tw_mycz_type` VALUES ('2', '10000000', '100', '中国银行', '', 'bank', '银行卡转帐', '', '6216608300003225303', '', '', '', '需要在联系方式里面设置银行卡号', '0', '0', '0', '1', '0.00');
INSERT INTO `tw_mycz_type` VALUES ('4', '1000', '100', '', '', 'weixin', '微信转账支付', '', '', '', '', '', '需要在联系方式里面设置微信账号', '0', '0', '0', '0', '5.00');

-- ----------------------------
-- Table structure for tw_mytx
-- ----------------------------
DROP TABLE IF EXISTS `tw_mytx`;
CREATE TABLE `tw_mytx` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `num` int(11) unsigned NOT NULL DEFAULT '0',
  `fee` decimal(20,2) unsigned NOT NULL DEFAULT '0.00',
  `mum` decimal(20,2) unsigned NOT NULL DEFAULT '0.00',
  `truename` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `bank` varchar(250) NOT NULL DEFAULT '',
  `bankprov` varchar(50) NOT NULL DEFAULT '',
  `bankcity` varchar(50) NOT NULL DEFAULT '',
  `bankaddr` varchar(50) NOT NULL DEFAULT '',
  `bankcard` varchar(200) NOT NULL DEFAULT '',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='提现记录表';

-- ----------------------------
-- Records of tw_mytx
-- ----------------------------
INSERT INTO `tw_mytx` VALUES ('1', '6272', '100', '2.00', '98.00', '赵薇', '银行卡', '浦发银行', '北京', '东城区', '12312312', '1231231231212', '0', '1510817522', '0', '2');

-- ----------------------------
-- Table structure for tw_myzc
-- ----------------------------
DROP TABLE IF EXISTS `tw_myzc`;
CREATE TABLE `tw_myzc` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `username` varchar(200) NOT NULL,
  `coinname` varchar(200) NOT NULL,
  `txid` varchar(200) NOT NULL DEFAULT '',
  `num` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `fee` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `mum` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` int(4) NOT NULL DEFAULT '0',
  `to_user` int(2) NOT NULL DEFAULT '0' COMMENT '会员转币',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`),
  KEY `coinname` (`coinname`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8
/*!50100 PARTITION BY RANGE (id)
(PARTITION p1 VALUES LESS THAN (500000) ENGINE = InnoDB,
 PARTITION p2 VALUES LESS THAN (1000000) ENGINE = InnoDB,
 PARTITION p3 VALUES LESS THAN (1500000) ENGINE = InnoDB,
 PARTITION p4 VALUES LESS THAN (2000000) ENGINE = InnoDB,
 PARTITION p5 VALUES LESS THAN (2500000) ENGINE = InnoDB,
 PARTITION p6 VALUES LESS THAN (3000000) ENGINE = InnoDB,
 PARTITION p7 VALUES LESS THAN (3500000) ENGINE = InnoDB,
 PARTITION p8 VALUES LESS THAN (4000000) ENGINE = InnoDB,
 PARTITION p9 VALUES LESS THAN (4500000) ENGINE = InnoDB,
 PARTITION p10 VALUES LESS THAN (5000000) ENGINE = InnoDB,
 PARTITION p11 VALUES LESS THAN (5500000) ENGINE = InnoDB,
 PARTITION p12 VALUES LESS THAN (6000000) ENGINE = InnoDB,
 PARTITION p13 VALUES LESS THAN (6500000) ENGINE = InnoDB,
 PARTITION p14 VALUES LESS THAN (7000000) ENGINE = InnoDB,
 PARTITION p15 VALUES LESS THAN (7500000) ENGINE = InnoDB,
 PARTITION p16 VALUES LESS THAN (8000000) ENGINE = InnoDB,
 PARTITION p17 VALUES LESS THAN (8500000) ENGINE = InnoDB,
 PARTITION p18 VALUES LESS THAN (9000000) ENGINE = InnoDB,
 PARTITION p19 VALUES LESS THAN (9500000) ENGINE = InnoDB,
 PARTITION p20 VALUES LESS THAN (10000000) ENGINE = InnoDB,
 PARTITION p21 VALUES LESS THAN MAXVALUE ENGINE = InnoDB) */;

-- ----------------------------
-- Records of tw_myzc
-- ----------------------------
INSERT INTO `tw_myzc` VALUES ('1', '6277', 'Tp4RxXKdhbzhW6zbP6QVDKe1QfN7haeHM3', 'bcc', '59f18dd8347b6e3707668deedbe55950', '1.00000000', '0.00200000', '0.99800000', '0', '1511839316', '0', '1', '0');
INSERT INTO `tw_myzc` VALUES ('2', '6278', 'Tm7quTtPHUP5RFaPoCANLJA5ZvPH3PygHW', 'bcc', '', '1.00000000', '0.00200000', '0.99800000', '0', '1511853333', '0', '0', '0');
INSERT INTO `tw_myzc` VALUES ('3', '6274', '212', 'bcc', '', '1.00000000', '0.00200000', '0.99800000', '0', '1511934272', '0', '0', '0');

-- ----------------------------
-- Table structure for tw_myzc_fee
-- ----------------------------
DROP TABLE IF EXISTS `tw_myzc_fee`;
CREATE TABLE `tw_myzc_fee` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `username` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `coinname` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `txid` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fee` decimal(20,8) NOT NULL DEFAULT '0.00000000',
  `num` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `mum` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tw_myzc_fee
-- ----------------------------
INSERT INTO `tw_myzc_fee` VALUES ('1', '6271', 'CGBDjtbhvUuBNZ5HeLKzJszTEwKCWCF4RE', 'bcc', 'ea1310387381eb66a14fbad549b791b4', '1', '0.00200000', '1.00000000', '0.99800000', '0', '1511839316', '0', '1');

-- ----------------------------
-- Table structure for tw_myzr
-- ----------------------------
DROP TABLE IF EXISTS `tw_myzr`;
CREATE TABLE `tw_myzr` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `username` varchar(200) NOT NULL,
  `coinname` varchar(200) NOT NULL,
  `txid` varchar(200) NOT NULL DEFAULT '',
  `num` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `mum` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `fee` decimal(20,8) NOT NULL DEFAULT '0.00000000',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` int(4) NOT NULL DEFAULT '0',
  `from_user` int(2) NOT NULL DEFAULT '0' COMMENT '会员转币',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`),
  KEY `coinname` (`coinname`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8
/*!50100 PARTITION BY RANGE (id)
(PARTITION p1 VALUES LESS THAN (500000) ENGINE = InnoDB,
 PARTITION p2 VALUES LESS THAN (1000000) ENGINE = InnoDB,
 PARTITION p3 VALUES LESS THAN (1500000) ENGINE = InnoDB,
 PARTITION p4 VALUES LESS THAN (2000000) ENGINE = InnoDB,
 PARTITION p5 VALUES LESS THAN (2500000) ENGINE = InnoDB,
 PARTITION p6 VALUES LESS THAN (3000000) ENGINE = InnoDB,
 PARTITION p7 VALUES LESS THAN (3500000) ENGINE = InnoDB,
 PARTITION p8 VALUES LESS THAN (4000000) ENGINE = InnoDB,
 PARTITION p9 VALUES LESS THAN (4500000) ENGINE = InnoDB,
 PARTITION p10 VALUES LESS THAN (5000000) ENGINE = InnoDB,
 PARTITION p11 VALUES LESS THAN (5500000) ENGINE = InnoDB,
 PARTITION p12 VALUES LESS THAN (6000000) ENGINE = InnoDB,
 PARTITION p13 VALUES LESS THAN (6500000) ENGINE = InnoDB,
 PARTITION p14 VALUES LESS THAN (7000000) ENGINE = InnoDB,
 PARTITION p15 VALUES LESS THAN (7500000) ENGINE = InnoDB,
 PARTITION p16 VALUES LESS THAN (8000000) ENGINE = InnoDB,
 PARTITION p17 VALUES LESS THAN (8500000) ENGINE = InnoDB,
 PARTITION p18 VALUES LESS THAN (9000000) ENGINE = InnoDB,
 PARTITION p19 VALUES LESS THAN (9500000) ENGINE = InnoDB,
 PARTITION p20 VALUES LESS THAN (10000000) ENGINE = InnoDB,
 PARTITION p21 VALUES LESS THAN MAXVALUE ENGINE = InnoDB) */;

-- ----------------------------
-- Records of tw_myzr
-- ----------------------------
INSERT INTO `tw_myzr` VALUES ('1', '6277', 'Tp4RxXKdhbzhW6zbP6QVDKe1QfN7haeHM3', 'bcc', '59f18dd8347b6e3707668deedbe55950', '1.00000000', '0.99800000', '0.00200000', '0', '1511839316', '0', '1', '0');

-- ----------------------------
-- Table structure for tw_myzr_json
-- ----------------------------
DROP TABLE IF EXISTS `tw_myzr_json`;
CREATE TABLE `tw_myzr_json` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text,
  `coinname` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tw_myzr_json
-- ----------------------------

-- ----------------------------
-- Table structure for tw_region
-- ----------------------------
DROP TABLE IF EXISTS `tw_region`;
CREATE TABLE `tw_region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rgname` varchar(100) NOT NULL,
  `addtime` int(10) NOT NULL,
  `dluser` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tw_region
-- ----------------------------
INSERT INTO `tw_region` VALUES ('1', '华南', '1507538910', '1330');
INSERT INTO `tw_region` VALUES ('2', '华北', '1507538902', '1331');
INSERT INTO `tw_region` VALUES ('3', '西北', '1507538892', '1333');
INSERT INTO `tw_region` VALUES ('5', '西南', '1507538879', '1332');
INSERT INTO `tw_region` VALUES ('6', '中南', '1507538930', '1329');

-- ----------------------------
-- Table structure for tw_text
-- ----------------------------
DROP TABLE IF EXISTS `tw_text`;
CREATE TABLE `tw_text` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` text,
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tw_text
-- ----------------------------
INSERT INTO `tw_text` VALUES ('1', 'user_index', '安全中心首页', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1457160962', '0', '1');
INSERT INTO `tw_text` VALUES ('2', 'user_truename', '实名认证', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1457160962', '0', '1');
INSERT INTO `tw_text` VALUES ('3', 'user_bank', '银行卡管理', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1457160962', '0', '1');
INSERT INTO `tw_text` VALUES ('4', 'user_group', '用户级别', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1457160962', '0', '1');
INSERT INTO `tw_text` VALUES ('5', 'user_log', '账户日志', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1457160600', '0', '1');
INSERT INTO `tw_text` VALUES ('6', 'user_message', '我的消息', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1457160962', '0', '1');
INSERT INTO `tw_text` VALUES ('7', 'user_moble', '手机绑定', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1457160962', '0', '1');
INSERT INTO `tw_text` VALUES ('8', 'user_email', '邮箱绑定', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1457160962', '0', '1');
INSERT INTO `tw_text` VALUES ('9', 'user_google', '谷歌验证绑定', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1457160962', '0', '1');
INSERT INTO `tw_text` VALUES ('10', 'user_password', '修改登录密码', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1457160962', '0', '1');
INSERT INTO `tw_text` VALUES ('11', 'user_paypassword', '修改交易密码', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1457160962', '0', '1');
INSERT INTO `tw_text` VALUES ('12', 'user_question', '提交问题', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1457160962', '0', '1');
INSERT INTO `tw_text` VALUES ('13', 'user_qianbao', '钱包管理', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1457160962', '0', '1');
INSERT INTO `tw_text` VALUES ('14', 'pool_index', '矿机首页', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1457160962', '0', '1');
INSERT INTO `tw_text` VALUES ('15', 'pool_log', '矿机管理', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1457160962', '0', '1');
INSERT INTO `tw_text` VALUES ('16', 'issue_index', '认购首页', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1457160962', '0', '1');
INSERT INTO `tw_text` VALUES ('17', 'issue_index', '认购记录', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1457160962', '0', '1');
INSERT INTO `tw_text` VALUES ('18', 'finance_mycz', '认购记录', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1457160962', '0', '1');
INSERT INTO `tw_text` VALUES ('19', 'user_nameauth', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464677557', '0', '1');
INSERT INTO `tw_text` VALUES ('20', 'user_ga', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464677561', '0', '1');
INSERT INTO `tw_text` VALUES ('21', 'user_alipay', '绑定支付宝账号', '<span><span style=\"background-color:#FFFFFF;\">您填写的支付宝账号的实名认证信息需要和注册本网站时填写的实名信息一致，否则该支付宝账号不能用来提现。</span></span>', '0', '1464677631', '0', '1');
INSERT INTO `tw_text` VALUES ('22', 'user_tpwdset', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464677866', '0', '1');
INSERT INTO `tw_text` VALUES ('23', 'user_goods', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464677872', '0', '1');
INSERT INTO `tw_text` VALUES ('24', 'finance_index', '213', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息121321321321321</span></span>', '0', '1464678956', '0', '0');
INSERT INTO `tw_text` VALUES ('25', 'finance_mytx', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464678959', '0', '1');
INSERT INTO `tw_text` VALUES ('26', 'finance_myzr', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464678960', '0', '1');
INSERT INTO `tw_text` VALUES ('27', 'finance_myzc', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464678961', '0', '1');
INSERT INTO `tw_text` VALUES ('28', 'finance_mywt', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464678962', '0', '1');
INSERT INTO `tw_text` VALUES ('29', 'finance_mycj', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464678963', '0', '1');
INSERT INTO `tw_text` VALUES ('30', 'finance_mytj', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464678964', '0', '1');
INSERT INTO `tw_text` VALUES ('31', 'finance_mywd', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464678966', '0', '1');
INSERT INTO `tw_text` VALUES ('32', 'finance_myjp', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464678967', '0', '1');
INSERT INTO `tw_text` VALUES ('33', 'game_shop_goods', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464695180', '0', '1');
INSERT INTO `tw_text` VALUES ('34', 'game_issue', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464695216', '0', '1');
INSERT INTO `tw_text` VALUES ('35', 'game_issue_log', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464695219', '0', '1');
INSERT INTO `tw_text` VALUES ('36', 'game_fenhong', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464695289', '0', '1');
INSERT INTO `tw_text` VALUES ('37', 'game_fenhong_log', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464695290', '0', '1');
INSERT INTO `tw_text` VALUES ('38', 'game_shop', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464695294', '0', '1');
INSERT INTO `tw_text` VALUES ('39', 'game_shop_log', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464695669', '0', '1');
INSERT INTO `tw_text` VALUES ('40', 'game_shop_view', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464710521', '0', '1');
INSERT INTO `tw_text` VALUES ('41', 'game_issue_buy', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464762288', '0', '1');
INSERT INTO `tw_text` VALUES ('42', 'game_vote', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1464856754', '0', '1');
INSERT INTO `tw_text` VALUES ('43', 'game_huafei', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1466398472', '0', '1');
INSERT INTO `tw_text` VALUES ('44', 'game_money', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1467371753', '0', '1');
INSERT INTO `tw_text` VALUES ('45', 'game_money_log', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1467371757', '0', '1');
INSERT INTO `tw_text` VALUES ('46', 'user_mobile', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1490837035', '0', '1');

-- ----------------------------
-- Table structure for tw_trade
-- ----------------------------
DROP TABLE IF EXISTS `tw_trade`;
CREATE TABLE `tw_trade` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `market` varchar(50) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `num` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `deal` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `mum` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `fee` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `type` tinyint(2) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `market` (`market`,`type`,`status`),
  KEY `num` (`num`,`deal`),
  KEY `status` (`status`),
  KEY `market_2` (`market`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8 COMMENT='交易下单表'
/*!50100 PARTITION BY RANGE (id)
(PARTITION p1 VALUES LESS THAN (500000) ENGINE = InnoDB,
 PARTITION p2 VALUES LESS THAN (1000000) ENGINE = InnoDB,
 PARTITION p3 VALUES LESS THAN (1500000) ENGINE = InnoDB,
 PARTITION p4 VALUES LESS THAN (2000000) ENGINE = InnoDB,
 PARTITION p5 VALUES LESS THAN (2500000) ENGINE = InnoDB,
 PARTITION p6 VALUES LESS THAN (3000000) ENGINE = InnoDB,
 PARTITION p7 VALUES LESS THAN (3500000) ENGINE = InnoDB,
 PARTITION p8 VALUES LESS THAN (4000000) ENGINE = InnoDB,
 PARTITION p9 VALUES LESS THAN (4500000) ENGINE = InnoDB,
 PARTITION p10 VALUES LESS THAN (5000000) ENGINE = InnoDB,
 PARTITION p11 VALUES LESS THAN (5500000) ENGINE = InnoDB,
 PARTITION p12 VALUES LESS THAN (6000000) ENGINE = InnoDB,
 PARTITION p13 VALUES LESS THAN (6500000) ENGINE = InnoDB,
 PARTITION p14 VALUES LESS THAN (7000000) ENGINE = InnoDB,
 PARTITION p15 VALUES LESS THAN (7500000) ENGINE = InnoDB,
 PARTITION p16 VALUES LESS THAN (8000000) ENGINE = InnoDB,
 PARTITION p17 VALUES LESS THAN (8500000) ENGINE = InnoDB,
 PARTITION p18 VALUES LESS THAN (9000000) ENGINE = InnoDB,
 PARTITION p19 VALUES LESS THAN (9500000) ENGINE = InnoDB,
 PARTITION p20 VALUES LESS THAN (10000000) ENGINE = InnoDB,
 PARTITION p21 VALUES LESS THAN (10500000) ENGINE = InnoDB,
 PARTITION p22 VALUES LESS THAN (11000000) ENGINE = InnoDB,
 PARTITION p23 VALUES LESS THAN (11500000) ENGINE = InnoDB,
 PARTITION p24 VALUES LESS THAN (12000000) ENGINE = InnoDB,
 PARTITION p25 VALUES LESS THAN (12500000) ENGINE = InnoDB,
 PARTITION p26 VALUES LESS THAN (13000000) ENGINE = InnoDB,
 PARTITION p27 VALUES LESS THAN (13500000) ENGINE = InnoDB,
 PARTITION p28 VALUES LESS THAN (14000000) ENGINE = InnoDB,
 PARTITION p29 VALUES LESS THAN (14500000) ENGINE = InnoDB,
 PARTITION p30 VALUES LESS THAN (15000000) ENGINE = InnoDB,
 PARTITION p31 VALUES LESS THAN (15500000) ENGINE = InnoDB,
 PARTITION p32 VALUES LESS THAN (16000000) ENGINE = InnoDB,
 PARTITION p33 VALUES LESS THAN (16500000) ENGINE = InnoDB,
 PARTITION p34 VALUES LESS THAN (17000000) ENGINE = InnoDB,
 PARTITION p35 VALUES LESS THAN (17500000) ENGINE = InnoDB,
 PARTITION p36 VALUES LESS THAN (18000000) ENGINE = InnoDB,
 PARTITION p37 VALUES LESS THAN (18500000) ENGINE = InnoDB,
 PARTITION p38 VALUES LESS THAN (19000000) ENGINE = InnoDB,
 PARTITION p39 VALUES LESS THAN (19500000) ENGINE = InnoDB,
 PARTITION p40 VALUES LESS THAN (20000000) ENGINE = InnoDB,
 PARTITION p41 VALUES LESS THAN (20500000) ENGINE = InnoDB,
 PARTITION p42 VALUES LESS THAN (21000000) ENGINE = InnoDB,
 PARTITION p43 VALUES LESS THAN (21500000) ENGINE = InnoDB,
 PARTITION p44 VALUES LESS THAN (22000000) ENGINE = InnoDB,
 PARTITION p45 VALUES LESS THAN (22500000) ENGINE = InnoDB,
 PARTITION p46 VALUES LESS THAN (23000000) ENGINE = InnoDB,
 PARTITION p47 VALUES LESS THAN (23500000) ENGINE = InnoDB,
 PARTITION p48 VALUES LESS THAN (24000000) ENGINE = InnoDB,
 PARTITION p49 VALUES LESS THAN (24500000) ENGINE = InnoDB,
 PARTITION p50 VALUES LESS THAN (25000000) ENGINE = InnoDB,
 PARTITION p51 VALUES LESS THAN (25500000) ENGINE = InnoDB,
 PARTITION p52 VALUES LESS THAN (26000000) ENGINE = InnoDB,
 PARTITION p53 VALUES LESS THAN (26500000) ENGINE = InnoDB,
 PARTITION p54 VALUES LESS THAN (27000000) ENGINE = InnoDB,
 PARTITION p55 VALUES LESS THAN (27500000) ENGINE = InnoDB,
 PARTITION p56 VALUES LESS THAN (28000000) ENGINE = InnoDB,
 PARTITION p57 VALUES LESS THAN (28500000) ENGINE = InnoDB,
 PARTITION p58 VALUES LESS THAN (29000000) ENGINE = InnoDB,
 PARTITION p59 VALUES LESS THAN (30000000) ENGINE = InnoDB,
 PARTITION p60 VALUES LESS THAN (30500000) ENGINE = InnoDB,
 PARTITION p61 VALUES LESS THAN (31000000) ENGINE = InnoDB,
 PARTITION p62 VALUES LESS THAN (31500000) ENGINE = InnoDB,
 PARTITION p63 VALUES LESS THAN (32000000) ENGINE = InnoDB,
 PARTITION p64 VALUES LESS THAN (32500000) ENGINE = InnoDB,
 PARTITION p65 VALUES LESS THAN (33000000) ENGINE = InnoDB,
 PARTITION p66 VALUES LESS THAN (33500000) ENGINE = InnoDB,
 PARTITION p67 VALUES LESS THAN (34000000) ENGINE = InnoDB,
 PARTITION p68 VALUES LESS THAN (34500000) ENGINE = InnoDB,
 PARTITION p69 VALUES LESS THAN (35000000) ENGINE = InnoDB,
 PARTITION p70 VALUES LESS THAN (35500000) ENGINE = InnoDB,
 PARTITION p71 VALUES LESS THAN (36000000) ENGINE = InnoDB,
 PARTITION p72 VALUES LESS THAN (36500000) ENGINE = InnoDB,
 PARTITION p73 VALUES LESS THAN (37000000) ENGINE = InnoDB,
 PARTITION p74 VALUES LESS THAN (37500000) ENGINE = InnoDB,
 PARTITION p75 VALUES LESS THAN (38000000) ENGINE = InnoDB,
 PARTITION p76 VALUES LESS THAN (38500000) ENGINE = InnoDB,
 PARTITION p77 VALUES LESS THAN (39000000) ENGINE = InnoDB,
 PARTITION p78 VALUES LESS THAN (39500000) ENGINE = InnoDB,
 PARTITION p79 VALUES LESS THAN (40000000) ENGINE = InnoDB,
 PARTITION p80 VALUES LESS THAN (40500000) ENGINE = InnoDB,
 PARTITION p81 VALUES LESS THAN (41000000) ENGINE = InnoDB,
 PARTITION p82 VALUES LESS THAN (41500000) ENGINE = InnoDB,
 PARTITION p83 VALUES LESS THAN (42000000) ENGINE = InnoDB,
 PARTITION p84 VALUES LESS THAN (42500000) ENGINE = InnoDB,
 PARTITION p85 VALUES LESS THAN (43000000) ENGINE = InnoDB,
 PARTITION p86 VALUES LESS THAN (43500000) ENGINE = InnoDB,
 PARTITION p87 VALUES LESS THAN (44000000) ENGINE = InnoDB,
 PARTITION p88 VALUES LESS THAN (44500000) ENGINE = InnoDB,
 PARTITION p89 VALUES LESS THAN (45000000) ENGINE = InnoDB,
 PARTITION p90 VALUES LESS THAN (45500000) ENGINE = InnoDB,
 PARTITION p91 VALUES LESS THAN (46000000) ENGINE = InnoDB,
 PARTITION p92 VALUES LESS THAN (46500000) ENGINE = InnoDB,
 PARTITION p93 VALUES LESS THAN (47000000) ENGINE = InnoDB,
 PARTITION p94 VALUES LESS THAN (47500000) ENGINE = InnoDB,
 PARTITION p95 VALUES LESS THAN (48000000) ENGINE = InnoDB,
 PARTITION p96 VALUES LESS THAN (48500000) ENGINE = InnoDB,
 PARTITION p97 VALUES LESS THAN (49000000) ENGINE = InnoDB,
 PARTITION p98 VALUES LESS THAN (49500000) ENGINE = InnoDB,
 PARTITION p99 VALUES LESS THAN (50000000) ENGINE = InnoDB,
 PARTITION p100 VALUES LESS THAN (50500000) ENGINE = InnoDB,
 PARTITION p101 VALUES LESS THAN (51000000) ENGINE = InnoDB,
 PARTITION p102 VALUES LESS THAN (51500000) ENGINE = InnoDB,
 PARTITION p103 VALUES LESS THAN (52000000) ENGINE = InnoDB,
 PARTITION p104 VALUES LESS THAN (52500000) ENGINE = InnoDB,
 PARTITION p105 VALUES LESS THAN (53000000) ENGINE = InnoDB,
 PARTITION p106 VALUES LESS THAN (53500000) ENGINE = InnoDB,
 PARTITION p107 VALUES LESS THAN (54000000) ENGINE = InnoDB,
 PARTITION p108 VALUES LESS THAN (54500000) ENGINE = InnoDB,
 PARTITION p109 VALUES LESS THAN (55000000) ENGINE = InnoDB,
 PARTITION p110 VALUES LESS THAN (55500000) ENGINE = InnoDB,
 PARTITION p111 VALUES LESS THAN (56000000) ENGINE = InnoDB,
 PARTITION p112 VALUES LESS THAN (56500000) ENGINE = InnoDB,
 PARTITION p113 VALUES LESS THAN (57000000) ENGINE = InnoDB,
 PARTITION p114 VALUES LESS THAN (57500000) ENGINE = InnoDB,
 PARTITION p115 VALUES LESS THAN (58000000) ENGINE = InnoDB,
 PARTITION p116 VALUES LESS THAN (58500000) ENGINE = InnoDB,
 PARTITION p117 VALUES LESS THAN (59000000) ENGINE = InnoDB,
 PARTITION p118 VALUES LESS THAN (59500000) ENGINE = InnoDB,
 PARTITION p119 VALUES LESS THAN (60000000) ENGINE = InnoDB,
 PARTITION p120 VALUES LESS THAN (60500000) ENGINE = InnoDB,
 PARTITION p121 VALUES LESS THAN (61000000) ENGINE = InnoDB,
 PARTITION p122 VALUES LESS THAN MAXVALUE ENGINE = InnoDB) */;

-- ----------------------------
-- Records of tw_trade
-- ----------------------------
INSERT INTO `tw_trade` VALUES ('1', '6272', 'ltc_btc', '0.01110000', '1.00000000', '1.00000000', '0.01111110', '0.00001110', '1', '0', '1510817655', '0', '1');
INSERT INTO `tw_trade` VALUES ('2', '6272', 'ltc_btc', '0.01100000', '1.00000000', '1.00000000', '0.01098900', '0.00001100', '2', '0', '1510817663', '0', '1');
INSERT INTO `tw_trade` VALUES ('3', '6272', 'bcc_btc', '0.05600000', '1.00000000', '1.00000000', '0.05605600', '0.00005600', '1', '0', '1510817673', '0', '1');
INSERT INTO `tw_trade` VALUES ('4', '6272', 'bcc_btc', '0.05600000', '1.00000000', '1.00000000', '0.05594400', '0.00005600', '2', '0', '1510817684', '0', '1');
INSERT INTO `tw_trade` VALUES ('5', '6273', 'ltc_btc', '0.01000000', '10.00000000', '10.00000000', '0.09990000', '0.00010000', '2', '0', '1511163140', '0', '1');
INSERT INTO `tw_trade` VALUES ('6', '6273', 'ltc_btc', '0.01000000', '10.00000000', '10.00000000', '0.10010000', '0.00010000', '1', '0', '1511163188', '0', '1');
INSERT INTO `tw_trade` VALUES ('7', '6273', 'bcc_btc', '0.05000000', '10.00000000', '10.00000000', '0.49950000', '0.00050000', '2', '0', '1511163516', '0', '1');
INSERT INTO `tw_trade` VALUES ('8', '6273', 'bcc_btc', '0.05800000', '11.00000000', '11.00000000', '0.63863800', '0.00063800', '1', '0', '1511163829', '0', '1');
INSERT INTO `tw_trade` VALUES ('9', '6273', 'bcc_btc', '0.05700000', '11.00000000', '11.00000000', '0.62637300', '0.00062700', '2', '0', '1511163978', '0', '1');
INSERT INTO `tw_trade` VALUES ('10', '6273', 'bcc_btc', '0.05700000', '100.00000000', '10.00000000', '5.70570000', '0.00570000', '1', '0', '1511164048', '0', '2');
INSERT INTO `tw_trade` VALUES ('11', '6271', 'bcc_btc', '0.05800000', '10.00000000', '10.00000000', '0.58058000', '0.00058000', '1', '0', '1511170014', '0', '1');
INSERT INTO `tw_trade` VALUES ('12', '6271', 'bcc_btc', '0.05700000', '5.00000000', '5.00000000', '0.28471500', '0.00028500', '2', '0', '1511170090', '0', '1');
INSERT INTO `tw_trade` VALUES ('13', '6271', 'ltc_btc', '0.01110000', '10.00000000', '5.00000000', '0.11111100', '0.00011100', '1', '0', '1511225235', '0', '2');
INSERT INTO `tw_trade` VALUES ('16', '6274', 'ltc_btc', '0.01110000', '20.00000000', '0.00000000', '0.22222200', '0.00022200', '1', '0', '1511226747', '0', '2');
INSERT INTO `tw_trade` VALUES ('17', '6274', 'ltc_btc', '0.01100000', '5.00000000', '5.00000000', '0.05494500', '0.00005500', '2', '0', '1511227083', '0', '1');
INSERT INTO `tw_trade` VALUES ('18', '6271', 'ltc_btc', '0.01120000', '5.00000000', '0.00000000', '0.05605600', '0.00005600', '1', '0', '1511229052', '0', '2');
INSERT INTO `tw_trade` VALUES ('19', '6271', 'ltc_btc', '0.01160000', '5.00000000', '0.00000000', '0.05805800', '0.00005800', '1', '0', '1511229093', '0', '2');
INSERT INTO `tw_trade` VALUES ('20', '6273', 'ltc_btc', '0.01110000', '89.91000000', '0.00000000', '0.99899900', '0.00099800', '1', '0', '1511229261', '0', '2');
INSERT INTO `tw_trade` VALUES ('21', '6273', 'bcc_btc', '0.05700000', '50.00000000', '50.00000000', '2.84715000', '0.00285000', '2', '0', '1511229349', '0', '1');
INSERT INTO `tw_trade` VALUES ('22', '6274', 'ltc_btc', '0.01110000', '8.00000000', '0.00000000', '0.08888880', '0.00008880', '1', '0', '1511405907', '0', '2');
INSERT INTO `tw_trade` VALUES ('23', '6274', 'ltc_btc', '0.01110000', '8.00000000', '7.00000000', '0.08888880', '0.00008880', '1', '0', '1511405977', '0', '1');
INSERT INTO `tw_trade` VALUES ('24', '6271', 'ltc_btc', '0.01110000', '8.00000000', '0.00000000', '0.08888880', '0.00008880', '1', '0', '1511406143', '0', '2');
INSERT INTO `tw_trade` VALUES ('25', '6271', 'ltc_btc', '0.01100000', '8.00000000', '0.00000000', '0.08808800', '0.00008800', '1', '0', '1511406395', '0', '0');
INSERT INTO `tw_trade` VALUES ('26', '6274', 'ltc_btc', '0.01100000', '5.00000000', '5.00000000', '0.05494500', '0.00005500', '2', '0', '1511766078', '0', '1');
INSERT INTO `tw_trade` VALUES ('27', '6274', 'bcc_btc', '0.05800000', '10.00000000', '10.00000000', '0.58058000', '0.00058000', '1', '0', '1511766152', '0', '1');
INSERT INTO `tw_trade` VALUES ('28', '6277', 'bcc_btc', '0.05700000', '1.00000000', '1.00000000', '0.05694300', '0.00005700', '2', '0', '1511840139', '0', '1');
INSERT INTO `tw_trade` VALUES ('29', '6274', 'ltc_btc', '0.01110000', '1.00000000', '1.00000000', '0.01111110', '0.00001110', '1', '0', '1511840442', '0', '1');
INSERT INTO `tw_trade` VALUES ('30', '6279', 'bcc_btc', '0.05700000', '1.00000000', '1.00000000', '0.05700000', '0.00000000', '1', '0', '1511840468', '0', '1');
INSERT INTO `tw_trade` VALUES ('31', '6274', 'ltc_btc', '0.01110000', '1.00000000', '0.10000000', '0.01111110', '0.00001110', '1', '0', '1511840551', '0', '0');
INSERT INTO `tw_trade` VALUES ('32', '6279', 'bcc_btc', '0.05700000', '1.00000000', '1.00000000', '0.05700000', '0.00000000', '1', '0', '1511840575', '0', '1');
INSERT INTO `tw_trade` VALUES ('33', '6274', 'ltc_btc', '0.01110000', '1.00000000', '0.00000000', '0.01111110', '0.00001110', '1', '0', '1511840587', '0', '0');
INSERT INTO `tw_trade` VALUES ('34', '6279', 'bcc_btc', '1.00000000', '1.00000000', '1.00000000', '1.00000000', '0.00000000', '1', '0', '1511840730', '0', '1');
INSERT INTO `tw_trade` VALUES ('35', '6279', 'bcc_btc', '0.05700000', '33.00000000', '33.00000000', '1.88100000', '0.00000000', '1', '0', '1511840827', '0', '1');
INSERT INTO `tw_trade` VALUES ('36', '6277', 'bcc_btc', '0.56788900', '1.00000000', '1.00000000', '0.56788900', '0.00000000', '1', '0', '1511849083', '0', '1');
INSERT INTO `tw_trade` VALUES ('37', '6277', 'bcc_btc', '0.56788900', '1.00000000', '1.00000000', '0.56788900', '0.00000000', '1', '0', '1511849219', '0', '1');
INSERT INTO `tw_trade` VALUES ('38', '6277', 'bcc_btc', '0.05700000', '2.00000000', '2.00000000', '0.11388600', '0.00011400', '2', '0', '1511849237', '0', '1');
INSERT INTO `tw_trade` VALUES ('39', '6271', 'bcc_btc', '0.56788900', '0.11000000', '0.11000000', '0.06246779', '0.00000000', '1', '0', '1511852434', '0', '1');
INSERT INTO `tw_trade` VALUES ('40', '6278', 'ltc_btc', '10.00000000', '10.00000000', '10.00000000', '100.10000000', '0.10000000', '1', '0', '1511854337', '0', '1');
INSERT INTO `tw_trade` VALUES ('41', '6278', 'ltc_btc', '10.00000000', '10.00000000', '10.00000000', '99.90000000', '0.10000000', '2', '0', '1511854503', '0', '1');
INSERT INTO `tw_trade` VALUES ('42', '6271', 'ltc_btc', '0.01110000', '1.00000000', '0.00000000', '0.01111110', '0.00001110', '1', '0', '1511856435', '0', '0');
INSERT INTO `tw_trade` VALUES ('43', '6271', 'ltc_btc', '0.01110000', '1.00010000', '0.00000000', '0.01111221', '0.00001110', '1', '0', '1511856824', '0', '0');
INSERT INTO `tw_trade` VALUES ('44', '6271', 'ltc_btc', '0.01110000', '2.00010000', '2.00000000', '0.02217891', '0.00002220', '2', '0', '1511856923', '0', '1');
INSERT INTO `tw_trade` VALUES ('45', '6271', 'bcc_btc', '0.56788900', '1.00000000', '1.00000000', '0.56788900', '0.00000000', '1', '0', '1511857449', '0', '1');
INSERT INTO `tw_trade` VALUES ('46', '6271', 'bcc_btc', '0.56788900', '1.00000000', '1.00000000', '0.56732111', '0.00056789', '2', '0', '1511857505', '0', '1');
INSERT INTO `tw_trade` VALUES ('47', '6277', 'bcc_btc', '0.56788900', '1.00000000', '0.00000000', '0.56788900', '0.00000000', '1', '0', '1511858595', '0', '2');
INSERT INTO `tw_trade` VALUES ('48', '6278', 'bcc_btc', '10.00000000', '10.00000000', '10.00000000', '100.00000000', '0.00000000', '1', '0', '1511858685', '0', '1');
INSERT INTO `tw_trade` VALUES ('49', '6277', 'bcc_btc', '2.00000000', '1.00000000', '0.00000000', '2.00000000', '0.00000000', '1', '0', '1511858709', '0', '2');
INSERT INTO `tw_trade` VALUES ('50', '6279', 'bcc_btc', '1.00000000', '1.00000000', '1.00000000', '1.00000000', '0.00000000', '1', '0', '1511858831', '0', '1');
INSERT INTO `tw_trade` VALUES ('51', '6271', 'ltc_btc', '0.01110000', '1.11111100', '0.00000000', '0.01234567', '0.00001233', '1', '0', '1511859071', '0', '0');
INSERT INTO `tw_trade` VALUES ('52', '6279', 'bcc_btc', '20.00000000', '1.00000000', '1.00000000', '19.98000000', '0.02000000', '2', '0', '1511860184', '0', '1');
INSERT INTO `tw_trade` VALUES ('53', '6279', 'bcc_btc', '10.00000000', '1.58669800', '1.59000000', '15.86698000', '0.00000000', '1', '0', '1511919926', '0', '1');
INSERT INTO `tw_trade` VALUES ('54', '6274', 'ltc_btc', '0.01110000', '0.12345600', '0.00000000', '0.00137173', '0.00000137', '1', '0', '1511919944', '0', '0');
INSERT INTO `tw_trade` VALUES ('55', '6277', 'bcc_btc', '0.56788900', '1.00000000', '1.00000000', '0.56732111', '0.00056789', '2', '0', '1511942162', '0', '1');
INSERT INTO `tw_trade` VALUES ('56', '6277', 'bcc_btc', '0.56788900', '1.00000000', '1.00000000', '0.56732111', '0.00056789', '2', '0', '1511942175', '0', '1');
INSERT INTO `tw_trade` VALUES ('57', '6277', 'bcc_btc', '20.00000000', '1.00000000', '0.00000000', '19.98000000', '0.02000000', '2', '0', '1511942197', '0', '2');
INSERT INTO `tw_trade` VALUES ('58', '6274', 'ltc_btc', '0.01110000', '0.10000000', '0.00000000', '0.00111111', '0.00000111', '1', '0', '1512009524', '0', '0');
INSERT INTO `tw_trade` VALUES ('59', '6274', 'ltc_btc', '0.01110000', '0.10000000', '0.10000000', '0.00110889', '0.00000111', '2', '0', '1512009547', '0', '1');
INSERT INTO `tw_trade` VALUES ('60', '6292', 'bcc_btc', '1.00000000', '1.00000000', '1.00000000', '1.00000000', '0.00000000', '1', '0', '1512023034', '0', '1');
INSERT INTO `tw_trade` VALUES ('61', '6290', 'bcc_btc', '0.56788900', '100.00000000', '0.00000000', '56.78890000', '0.00000000', '1', '0', '1512023155', '0', '2');
INSERT INTO `tw_trade` VALUES ('62', '6292', 'bcc_btc', '0.59000000', '1.00000000', '1.00000000', '0.58823000', '0.00177000', '2', '0', '1512023168', '0', '1');
INSERT INTO `tw_trade` VALUES ('63', '6292', 'bcc_btc', '0.59000000', '1.00000000', '1.00000000', '0.58823000', '0.00177000', '2', '0', '1512023464', '0', '1');
INSERT INTO `tw_trade` VALUES ('64', '6277', 'bcc_btc', '0.56788900', '1.00000000', '0.00000000', '0.56788900', '0.00000000', '1', '0', '1512023467', '0', '2');
INSERT INTO `tw_trade` VALUES ('65', '6291', 'bcc_btc', '0.56788900', '10.00000000', '10.00000000', '5.67889000', '0.00000000', '1', '0', '1512023478', '0', '1');
INSERT INTO `tw_trade` VALUES ('66', '6277', 'bcc_btc', '0.56788900', '2.00000000', '0.00000000', '1.13577800', '0.00000000', '1', '0', '1512023496', '0', '2');
INSERT INTO `tw_trade` VALUES ('67', '6292', 'bcc_btc', '0.56000000', '1.00000000', '1.00000000', '0.55832000', '0.00168000', '2', '0', '1512023594', '0', '1');
INSERT INTO `tw_trade` VALUES ('68', '6290', 'bcc_btc', '0.56788900', '10.00000000', '10.00000000', '5.67889000', '0.00000000', '1', '0', '1512023619', '0', '1');
INSERT INTO `tw_trade` VALUES ('69', '6277', 'bcc_btc', '0.56788900', '2.00000000', '0.00000000', '1.13577800', '0.00000000', '1', '0', '1512023688', '0', '2');
INSERT INTO `tw_trade` VALUES ('70', '6292', 'bcc_btc', '0.40000000', '1.00000000', '1.00000000', '0.39880000', '0.00120000', '2', '0', '1512023693', '0', '1');
INSERT INTO `tw_trade` VALUES ('71', '6292', 'bcc_btc', '0.30000000', '1.00000000', '1.00000000', '0.29910000', '0.00090000', '2', '0', '1512023746', '0', '1');
INSERT INTO `tw_trade` VALUES ('72', '6292', 'bcc_btc', '0.56800000', '1.00000000', '1.00000000', '0.56800000', '0.00000000', '1', '0', '1512023811', '0', '1');
INSERT INTO `tw_trade` VALUES ('73', '6277', 'bcc_btc', '20.00000000', '1.00000000', '1.00000000', '20.00000000', '0.00000000', '1', '0', '1512023851', '0', '1');
INSERT INTO `tw_trade` VALUES ('74', '6277', 'bcc_btc', '0.56788900', '30.00000000', '27.70000000', '16.98555999', '0.05111001', '2', '0', '1512023877', '0', '2');
INSERT INTO `tw_trade` VALUES ('75', '6292', 'bcc_btc', '0.56000000', '1.00000000', '1.00000000', '0.56000000', '0.00000000', '1', '0', '1512023921', '0', '1');
INSERT INTO `tw_trade` VALUES ('76', '6292', 'bcc_btc', '0.56799000', '1.00000000', '1.00000000', '0.56799000', '0.00000000', '1', '0', '1512024459', '0', '1');
INSERT INTO `tw_trade` VALUES ('77', '6277', 'bcc_btc', '0.56788900', '1.00000000', '0.00000000', '0.56788900', '0.00000000', '1', '0', '1512024967', '0', '2');
INSERT INTO `tw_trade` VALUES ('78', '6277', 'bcc_btc', '1.00000000', '1.00000000', '0.00000000', '1.00000000', '0.00000000', '1', '0', '1512024979', '0', '2');
INSERT INTO `tw_trade` VALUES ('79', '6277', 'bcc_btc', '1.00000000', '1.00000000', '0.00000000', '1.00000000', '0.00000000', '1', '0', '1512024985', '0', '2');
INSERT INTO `tw_trade` VALUES ('80', '6277', 'bcc_btc', '2.00000000', '1.00000000', '1.00000000', '2.00000000', '0.00000000', '1', '0', '1512024994', '0', '1');
INSERT INTO `tw_trade` VALUES ('81', '6277', 'bcc_btc', '2.00000000', '1.00000000', '0.00000000', '2.00000000', '0.00000000', '1', '0', '1512025002', '0', '2');
INSERT INTO `tw_trade` VALUES ('82', '6277', 'bcc_btc', '3.00000000', '1.00000000', '1.00000000', '2.99100000', '0.00900000', '2', '0', '1512025013', '0', '1');
INSERT INTO `tw_trade` VALUES ('83', '6277', 'bcc_btc', '3.50000000', '1.00000000', '0.00000000', '3.48950000', '0.01050000', '2', '0', '1512025050', '0', '2');
INSERT INTO `tw_trade` VALUES ('84', '6277', 'bcc_btc', '2.50000000', '1.00000000', '1.00000000', '2.49250000', '0.00750000', '2', '0', '1512025061', '0', '1');
INSERT INTO `tw_trade` VALUES ('85', '6277', 'bcc_btc', '4.00000000', '1.00000000', '1.00000000', '3.98800000', '0.01200000', '2', '0', '1512025070', '0', '1');
INSERT INTO `tw_trade` VALUES ('86', '6277', 'bcc_btc', '3.00000000', '1.00000000', '1.00000000', '2.99100000', '0.00900000', '2', '0', '1512025080', '0', '1');
INSERT INTO `tw_trade` VALUES ('87', '6293', 'bcc_btc', '1.00000000', '1.00000000', '1.00000000', '0.99700000', '0.00300000', '2', '0', '1512025098', '0', '1');
INSERT INTO `tw_trade` VALUES ('88', '6277', 'bcc_btc', '4.00000000', '1.00000000', '1.00000000', '3.98800000', '0.01200000', '2', '0', '1512025100', '0', '1');
INSERT INTO `tw_trade` VALUES ('89', '6277', 'bcc_btc', '5.00000000', '1.00000000', '1.00000000', '4.98500000', '0.01500000', '2', '0', '1512025122', '0', '1');
INSERT INTO `tw_trade` VALUES ('90', '6277', 'bcc_btc', '3.00000000', '1.00000000', '1.00000000', '3.00000000', '0.00000000', '1', '0', '1512026741', '0', '1');
INSERT INTO `tw_trade` VALUES ('91', '6277', 'bcc_btc', '2.90000000', '1.00000000', '1.00000000', '2.89130000', '0.00870000', '2', '0', '1512026929', '0', '1');
INSERT INTO `tw_trade` VALUES ('92', '6277', 'bcc_btc', '2.80000000', '1.00000000', '1.00000000', '2.79160000', '0.00840000', '2', '0', '1512027091', '0', '1');
INSERT INTO `tw_trade` VALUES ('93', '6277', 'bcc_btc', '2.10000000', '1.00000000', '1.00000000', '2.10000000', '0.00000000', '1', '0', '1512027309', '0', '1');
INSERT INTO `tw_trade` VALUES ('94', '6277', 'bcc_btc', '2.20000000', '1.00000000', '1.00000000', '2.20000000', '0.00000000', '1', '0', '1512029055', '0', '1');
INSERT INTO `tw_trade` VALUES ('95', '6277', 'bcc_btc', '2.50000000', '1.00000000', '1.00000000', '2.49250000', '0.00750000', '2', '0', '1512029203', '0', '1');
INSERT INTO `tw_trade` VALUES ('96', '6277', 'bcc_btc', '2.30000000', '1.00000000', '1.00000000', '2.29310000', '0.00690000', '2', '0', '1512029604', '0', '1');
INSERT INTO `tw_trade` VALUES ('97', '6277', 'bcc_btc', '2.10000000', '1.00000000', '1.00000000', '2.09370000', '0.00630000', '2', '0', '1512029646', '0', '1');
INSERT INTO `tw_trade` VALUES ('98', '6277', 'bcc_btc', '2.25500000', '1.00000000', '1.00000000', '2.24823500', '0.00676500', '2', '0', '1512029687', '0', '1');
INSERT INTO `tw_trade` VALUES ('99', '6290', 'bcc_btc', '2.10000000', '11.00000000', '1.00000000', '23.03070000', '0.06930000', '2', '0', '1512030839', '0', '2');
INSERT INTO `tw_trade` VALUES ('100', '6290', 'bcc_btc', '3.00000000', '7.00000000', '7.00000000', '21.00000000', '0.00000000', '1', '0', '1512031833', '0', '1');
INSERT INTO `tw_trade` VALUES ('101', '6290', 'bcc_btc', '3.00000000', '7.00000000', '7.00000000', '21.00000000', '0.00000000', '1', '0', '1512031838', '0', '1');
INSERT INTO `tw_trade` VALUES ('102', '6290', 'bcc_btc', '10.00000000', '10.00000000', '10.00000000', '100.00000000', '0.00000000', '1', '0', '1512031848', '0', '1');
INSERT INTO `tw_trade` VALUES ('103', '6290', 'bcc_btc', '0.10000000', '16.00000000', '16.00000000', '1.59520000', '0.00480000', '2', '0', '1512031883', '0', '1');
INSERT INTO `tw_trade` VALUES ('104', '6290', 'bcc_btc', '0.56000000', '10.00000000', '10.00000000', '5.58320000', '0.01680000', '2', '0', '1512031933', '0', '1');
INSERT INTO `tw_trade` VALUES ('105', '6291', 'bcc_btc', '0.56000000', '10.00000000', '10.00000000', '5.60000000', '0.00000000', '1', '0', '1512031984', '0', '1');
INSERT INTO `tw_trade` VALUES ('106', '6291', 'bcc_btc', '0.56000000', '23.00000000', '23.00000000', '12.84136000', '0.03864000', '2', '0', '1512032626', '0', '1');
INSERT INTO `tw_trade` VALUES ('107', '6290', 'bcc_btc', '0.56000000', '23.00000000', '23.00000000', '12.88000000', '0.00000000', '1', '0', '1512032814', '0', '1');
INSERT INTO `tw_trade` VALUES ('108', '6291', 'bcc_btc', '0.56000000', '17.00000000', '0.00000000', '9.52000000', '0.00000000', '1', '0', '1512032884', '0', '2');
INSERT INTO `tw_trade` VALUES ('109', '6291', 'bcc_btc', '0.56000000', '17.00000000', '17.00000000', '9.49144000', '0.02856000', '2', '0', '1512032912', '0', '1');
INSERT INTO `tw_trade` VALUES ('110', '6290', 'bcc_btc', '0.56000000', '17.00000000', '17.00000000', '9.52000000', '0.00000000', '1', '0', '1512032934', '0', '1');
INSERT INTO `tw_trade` VALUES ('111', '6290', 'bcc_btc', '0.56000000', '10.00000000', '10.00000000', '5.60000000', '0.00000000', '1', '0', '1512032974', '0', '1');
INSERT INTO `tw_trade` VALUES ('112', '6291', 'bcc_btc', '0.56000000', '20.00000000', '10.00000000', '11.16640000', '0.03360000', '2', '0', '1512032975', '0', '2');
INSERT INTO `tw_trade` VALUES ('113', '6274', 'bcc_btc', '0.60000000', '1.00000000', '1.00000000', '0.60000000', '0.00000000', '1', '0', '1512100386', '0', '1');
INSERT INTO `tw_trade` VALUES ('114', '6294', 'ltc_btc', '0.01110000', '1.00000000', '1.00000000', '0.01108890', '0.00001110', '2', '0', '1512109312', '0', '1');
INSERT INTO `tw_trade` VALUES ('115', '6271', 'bcc_btc', '0.60000000', '1.00000000', '1.00000000', '0.59820000', '0.00180000', '2', '0', '1512109779', '0', '1');

-- ----------------------------
-- Table structure for tw_trade_json
-- ----------------------------
DROP TABLE IF EXISTS `tw_trade_json`;
CREATE TABLE `tw_trade_json` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `market` varchar(100) NOT NULL,
  `data` varchar(500) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT '',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `market` (`market`)
) ENGINE=InnoDB AUTO_INCREMENT=4944 DEFAULT CHARSET=utf8 COMMENT='交易图表表';

-- ----------------------------
-- Records of tw_trade_json
-- ----------------------------
INSERT INTO `tw_trade_json` VALUES ('4198', 'ltc_btc', '[1512109277,\"1.00000000\",\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512109337', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4199', 'ltc_btc', '[1512109390,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512109450', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4200', 'ltc_btc', '[1512109270,\"1.00000000\",\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512109450', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4201', 'ltc_btc', '[1512109397,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512109457', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4202', 'ltc_btc', '[1512109277,\"1.00000000\",\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512109457', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4203', 'ltc_btc', '[1512109765,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512109825', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4204', 'ltc_btc', '[1512109645,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512109825', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4205', 'ltc_btc', '[1512109525,null,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512109825', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4206', 'ltc_btc', '[1512108925,\"1.00000000\",\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '15', '0', '1512109825', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4207', 'ltc_btc', '[1512108025,\"1.00000000\",\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '30', '0', '1512109825', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4208', 'bcc_btc', '[1512109765,\"1.00000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512109825', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4209', 'bcc_btc', '[1512109645,\"1.00000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512109825', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4210', 'bcc_btc', '[1512109525,\"1.00000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512109825', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4211', 'bcc_btc', '[1512108925,\"1.00000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '15', '0', '1512109825', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4212', 'bcc_btc', '[1512108025,\"1.00000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '30', '0', '1512109825', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4213', 'ltc_btc', '[1512109825,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512109885', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4214', 'ltc_btc', '[1512109885,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512109945', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4215', 'bcc_btc', '[1512109885,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512109945', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4216', 'ltc_btc', '[1512109945,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512110005', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4217', 'ltc_btc', '[1512109825,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512110005', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4218', 'bcc_btc', '[1512109945,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512110005', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4219', 'bcc_btc', '[1512109825,null,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512110005', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4220', 'ltc_btc', '[1512110005,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512110065', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4221', 'bcc_btc', '[1512110005,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512110065', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4222', 'ltc_btc', '[1512110065,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512110125', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4223', 'ltc_btc', '[1512109825,null,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512110125', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4224', 'bcc_btc', '[1512110065,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512110125', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4225', 'bcc_btc', '[1512109825,null,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512110125', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4226', 'ltc_btc', '[1512110125,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512110185', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4227', 'ltc_btc', '[1512110005,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512110185', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4228', 'bcc_btc', '[1512110125,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512110185', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4229', 'bcc_btc', '[1512110005,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512110185', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4230', 'ltc_btc', '[1512110185,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512110245', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4231', 'bcc_btc', '[1512110185,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512110245', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4232', 'ltc_btc', '[1512110245,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512110305', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4233', 'bcc_btc', '[1512110245,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512110305', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4234', 'ltc_btc', '[1512110305,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512110365', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4235', 'ltc_btc', '[1512110185,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512110365', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4236', 'bcc_btc', '[1512110305,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512110365', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4237', 'bcc_btc', '[1512110185,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512110365', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4238', 'ltc_btc', '[1512110365,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512110425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4239', 'ltc_btc', '[1512110125,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512110425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4240', 'bcc_btc', '[1512110365,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512110425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4241', 'bcc_btc', '[1512110125,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512110425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4242', 'ltc_btc', '[1512110425,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512110485', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4243', 'bcc_btc', '[1512110425,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512110485', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4244', 'ltc_btc', '[1512110485,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512110545', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4245', 'ltc_btc', '[1512110365,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512110545', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4246', 'bcc_btc', '[1512110485,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512110545', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4247', 'bcc_btc', '[1512110365,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512110545', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4248', 'ltc_btc', '[1512110545,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512110605', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4249', 'bcc_btc', '[1512110545,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512110605', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4250', 'ltc_btc', '[1512110605,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512110665', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4251', 'bcc_btc', '[1512110605,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512110665', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4252', 'ltc_btc', '[1512110665,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512110725', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4253', 'ltc_btc', '[1512110545,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512110725', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4254', 'ltc_btc', '[1512110425,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512110725', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4255', 'ltc_btc', '[1512109825,null,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '15', '0', '1512110725', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4256', 'bcc_btc', '[1512110665,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512110725', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4257', 'bcc_btc', '[1512110545,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512110725', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4258', 'bcc_btc', '[1512110425,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512110725', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4259', 'bcc_btc', '[1512109825,null,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '15', '0', '1512110725', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4260', 'ltc_btc', '[1512110725,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512110785', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4261', 'bcc_btc', '[1512110725,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512110785', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4262', 'ltc_btc', '[1512110785,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512110845', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4263', 'bcc_btc', '[1512110785,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512110845', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4264', 'ltc_btc', '[1512110845,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512110905', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4265', 'ltc_btc', '[1512110725,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512110905', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4266', 'bcc_btc', '[1512110845,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512110905', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4267', 'bcc_btc', '[1512110725,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512110905', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4268', 'ltc_btc', '[1512110905,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512110965', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4269', 'bcc_btc', '[1512110905,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512110965', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4270', 'ltc_btc', '[1512110965,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512111025', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4271', 'ltc_btc', '[1512110725,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512111025', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4272', 'bcc_btc', '[1512110965,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512111025', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4273', 'bcc_btc', '[1512110725,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512111025', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4274', 'ltc_btc', '[1512111025,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512111085', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4275', 'ltc_btc', '[1512110905,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512111085', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4276', 'bcc_btc', '[1512111025,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512111085', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4277', 'bcc_btc', '[1512110905,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512111085', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4278', 'ltc_btc', '[1512111085,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512111145', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4279', 'bcc_btc', '[1512111085,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512111145', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4280', 'ltc_btc', '[1512111145,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512111205', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4281', 'bcc_btc', '[1512111145,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512111205', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4282', 'ltc_btc', '[1512111205,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512111265', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4283', 'ltc_btc', '[1512111085,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512111265', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4284', 'bcc_btc', '[1512111205,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512111265', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4285', 'bcc_btc', '[1512111085,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512111265', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4286', 'ltc_btc', '[1512111265,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512111325', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4287', 'ltc_btc', '[1512111025,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512111325', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4288', 'bcc_btc', '[1512111265,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512111325', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4289', 'bcc_btc', '[1512111025,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512111325', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4290', 'ltc_btc', '[1512111325,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512111385', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4291', 'bcc_btc', '[1512111325,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512111385', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4292', 'ltc_btc', '[1512111385,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512111445', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4293', 'ltc_btc', '[1512111265,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512111445', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4294', 'bcc_btc', '[1512111385,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512111445', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4295', 'bcc_btc', '[1512111265,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512111445', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4296', 'ltc_btc', '[1512111445,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512111505', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4297', 'bcc_btc', '[1512111445,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512111505', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4298', 'ltc_btc', '[1512111505,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512111565', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4299', 'bcc_btc', '[1512111505,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512111565', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4300', 'ltc_btc', '[1512111565,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512111625', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4301', 'ltc_btc', '[1512111445,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512111625', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4302', 'ltc_btc', '[1512111325,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512111625', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4303', 'ltc_btc', '[1512110725,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '15', '0', '1512111625', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4304', 'ltc_btc', '[1512109825,null,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '30', '0', '1512111625', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4305', 'ltc_btc', '[1512108025,\"1.00000000\",\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '60', '0', '1512111625', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4306', 'bcc_btc', '[1512111565,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512111625', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4307', 'bcc_btc', '[1512111445,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512111625', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4308', 'bcc_btc', '[1512111325,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512111625', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4309', 'bcc_btc', '[1512110725,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '15', '0', '1512111625', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4310', 'bcc_btc', '[1512109825,null,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '30', '0', '1512111625', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4311', 'bcc_btc', '[1512108025,\"1.00000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '60', '0', '1512111625', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4312', 'ltc_btc', '[1512111625,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512111685', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4313', 'bcc_btc', '[1512111625,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512111685', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4314', 'ltc_btc', '[1512111685,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512111745', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4315', 'bcc_btc', '[1512111685,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512111745', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4316', 'ltc_btc', '[1512111745,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512111805', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4317', 'ltc_btc', '[1512111625,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512111805', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4318', 'bcc_btc', '[1512111745,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512111805', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4319', 'bcc_btc', '[1512111625,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512111805', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4320', 'ltc_btc', '[1512111805,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512111865', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4321', 'bcc_btc', '[1512111805,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512111865', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4322', 'ltc_btc', '[1512111865,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512111925', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4323', 'ltc_btc', '[1512111625,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512111925', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4324', 'bcc_btc', '[1512111865,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512111925', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4325', 'bcc_btc', '[1512111625,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512111925', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4326', 'ltc_btc', '[1512111925,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512111985', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4327', 'ltc_btc', '[1512111805,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512111985', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4328', 'bcc_btc', '[1512111925,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512111985', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4329', 'bcc_btc', '[1512111805,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512111985', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4330', 'ltc_btc', '[1512111985,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512112045', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4331', 'bcc_btc', '[1512111985,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512112045', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4332', 'ltc_btc', '[1512112045,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512112105', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4333', 'bcc_btc', '[1512112045,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512112105', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4334', 'ltc_btc', '[1512112105,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512112165', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4335', 'ltc_btc', '[1512111985,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512112165', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4336', 'bcc_btc', '[1512112105,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512112165', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4337', 'bcc_btc', '[1512111985,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512112165', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4338', 'ltc_btc', '[1512112165,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512112225', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4339', 'ltc_btc', '[1512111925,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512112225', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4340', 'bcc_btc', '[1512112165,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512112225', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4341', 'bcc_btc', '[1512111925,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512112225', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4342', 'ltc_btc', '[1512112225,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512112285', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4343', 'bcc_btc', '[1512112225,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512112285', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4344', 'ltc_btc', '[1512112285,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512112345', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4345', 'ltc_btc', '[1512112165,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512112345', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4346', 'bcc_btc', '[1512112285,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512112345', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4347', 'bcc_btc', '[1512112165,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512112345', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4348', 'ltc_btc', '[1512112345,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512112405', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4349', 'bcc_btc', '[1512112345,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512112405', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4350', 'ltc_btc', '[1512112405,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512112465', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4351', 'bcc_btc', '[1512112405,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512112465', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4352', 'ltc_btc', '[1512112465,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512112525', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4353', 'ltc_btc', '[1512112345,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512112525', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4354', 'ltc_btc', '[1512112225,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512112525', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4355', 'ltc_btc', '[1512111625,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '15', '0', '1512112525', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4356', 'bcc_btc', '[1512112465,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512112525', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4357', 'bcc_btc', '[1512112345,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512112525', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4358', 'bcc_btc', '[1512112225,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512112525', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4359', 'bcc_btc', '[1512111625,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '15', '0', '1512112525', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4360', 'ltc_btc', '[1512112525,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512112585', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4361', 'bcc_btc', '[1512112525,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512112585', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4362', 'ltc_btc', '[1512112585,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512112645', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4363', 'bcc_btc', '[1512112585,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512112645', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4364', 'ltc_btc', '[1512112645,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512112705', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4365', 'ltc_btc', '[1512112525,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512112705', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4366', 'bcc_btc', '[1512112645,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512112705', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4367', 'bcc_btc', '[1512112525,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512112705', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4368', 'ltc_btc', '[1512112705,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512112765', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4369', 'bcc_btc', '[1512112705,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512112765', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4370', 'ltc_btc', '[1512112765,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512112825', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4371', 'ltc_btc', '[1512112525,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512112825', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4372', 'bcc_btc', '[1512112765,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512112825', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4373', 'bcc_btc', '[1512112525,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512112825', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4374', 'ltc_btc', '[1512112825,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512112885', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4375', 'ltc_btc', '[1512112705,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512112885', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4376', 'bcc_btc', '[1512112825,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512112885', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4377', 'bcc_btc', '[1512112705,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512112885', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4378', 'ltc_btc', '[1512112885,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512112945', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4379', 'bcc_btc', '[1512112885,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512112945', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4380', 'ltc_btc', '[1512112945,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512113005', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4381', 'bcc_btc', '[1512112945,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512113005', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4382', 'ltc_btc', '[1512113005,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512113065', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4383', 'ltc_btc', '[1512112885,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512113065', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4384', 'bcc_btc', '[1512113005,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512113065', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4385', 'bcc_btc', '[1512112885,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512113065', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4386', 'ltc_btc', '[1512113065,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512113125', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4387', 'ltc_btc', '[1512112825,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512113125', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4388', 'bcc_btc', '[1512113065,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512113125', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4389', 'bcc_btc', '[1512112825,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512113125', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4390', 'ltc_btc', '[1512113125,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512113185', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4391', 'bcc_btc', '[1512113125,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512113185', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4392', 'ltc_btc', '[1512113185,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512113245', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4393', 'ltc_btc', '[1512113065,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512113245', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4394', 'bcc_btc', '[1512113185,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512113245', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4395', 'bcc_btc', '[1512113065,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512113245', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4396', 'ltc_btc', '[1512113245,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512113305', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4397', 'bcc_btc', '[1512113245,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512113305', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4398', 'ltc_btc', '[1512113305,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512113365', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4399', 'bcc_btc', '[1512113305,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512113365', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4400', 'ltc_btc', '[1512113365,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512113425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4401', 'ltc_btc', '[1512113245,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512113425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4402', 'ltc_btc', '[1512113125,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512113425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4403', 'ltc_btc', '[1512112525,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '15', '0', '1512113425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4404', 'ltc_btc', '[1512111625,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '30', '0', '1512113425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4405', 'bcc_btc', '[1512113365,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512113425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4406', 'bcc_btc', '[1512113245,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512113425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4407', 'bcc_btc', '[1512113125,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512113425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4408', 'bcc_btc', '[1512112525,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '15', '0', '1512113425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4409', 'bcc_btc', '[1512111625,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '30', '0', '1512113425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4410', 'ltc_btc', '[1512113425,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512113485', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4411', 'bcc_btc', '[1512113425,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512113485', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4412', 'ltc_btc', '[1512113485,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512113545', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4413', 'bcc_btc', '[1512113485,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512113545', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4414', 'ltc_btc', '[1512113545,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512113605', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4415', 'ltc_btc', '[1512113425,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512113605', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4416', 'bcc_btc', '[1512113545,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512113605', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4417', 'bcc_btc', '[1512113425,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512113605', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4418', 'ltc_btc', '[1512113605,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512113665', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4419', 'bcc_btc', '[1512113605,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512113665', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4420', 'ltc_btc', '[1512113665,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512113725', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4421', 'ltc_btc', '[1512113425,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512113725', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4422', 'bcc_btc', '[1512113665,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512113725', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4423', 'bcc_btc', '[1512113425,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512113725', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4424', 'ltc_btc', '[1512113725,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512113785', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4425', 'ltc_btc', '[1512113605,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512113785', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4426', 'bcc_btc', '[1512113725,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512113785', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4427', 'bcc_btc', '[1512113605,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512113785', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4428', 'ltc_btc', '[1512113785,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512113845', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4429', 'bcc_btc', '[1512113785,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512113845', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4430', 'ltc_btc', '[1512113845,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512113905', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4431', 'bcc_btc', '[1512113845,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512113905', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4432', 'ltc_btc', '[1512113905,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512113965', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4433', 'ltc_btc', '[1512113785,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512113965', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4434', 'bcc_btc', '[1512113905,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512113965', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4435', 'bcc_btc', '[1512113785,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512113965', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4436', 'ltc_btc', '[1512113965,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512114025', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4437', 'ltc_btc', '[1512113725,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512114025', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4438', 'bcc_btc', '[1512113965,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512114025', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4439', 'bcc_btc', '[1512113725,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512114025', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4440', 'ltc_btc', '[1512114025,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512114085', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4441', 'bcc_btc', '[1512114025,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512114085', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4442', 'ltc_btc', '[1512114085,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512114145', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4443', 'ltc_btc', '[1512113965,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512114145', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4444', 'bcc_btc', '[1512114085,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512114145', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4445', 'bcc_btc', '[1512113965,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512114145', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4446', 'ltc_btc', '[1512114145,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512114205', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4447', 'bcc_btc', '[1512114145,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512114205', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4448', 'ltc_btc', '[1512114205,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512114265', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4449', 'bcc_btc', '[1512114205,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512114265', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4450', 'ltc_btc', '[1512114265,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512114325', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4451', 'ltc_btc', '[1512114145,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512114325', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4452', 'ltc_btc', '[1512114025,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512114325', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4453', 'ltc_btc', '[1512113425,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '15', '0', '1512114325', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4454', 'bcc_btc', '[1512114265,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512114325', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4455', 'bcc_btc', '[1512114145,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512114325', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4456', 'bcc_btc', '[1512114025,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512114325', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4457', 'bcc_btc', '[1512113425,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '15', '0', '1512114325', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4458', 'ltc_btc', '[1512114325,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512114385', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4459', 'bcc_btc', '[1512114325,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512114385', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4460', 'ltc_btc', '[1512114385,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512114445', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4461', 'bcc_btc', '[1512114385,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512114445', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4462', 'ltc_btc', '[1512114445,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512114505', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4463', 'ltc_btc', '[1512114325,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512114505', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4464', 'bcc_btc', '[1512114445,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512114505', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4465', 'bcc_btc', '[1512114325,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512114505', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4466', 'ltc_btc', '[1512114505,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512114565', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4467', 'bcc_btc', '[1512114505,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512114565', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4468', 'ltc_btc', '[1512114565,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512114625', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4469', 'ltc_btc', '[1512114325,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512114625', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4470', 'bcc_btc', '[1512114565,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512114625', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4471', 'bcc_btc', '[1512114325,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512114625', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4472', 'ltc_btc', '[1512114625,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512114685', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4473', 'ltc_btc', '[1512114505,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512114685', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4474', 'bcc_btc', '[1512114625,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512114685', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4475', 'bcc_btc', '[1512114505,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512114685', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4476', 'ltc_btc', '[1512114685,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512114745', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4477', 'bcc_btc', '[1512114685,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512114745', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4478', 'ltc_btc', '[1512114745,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512114805', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4479', 'bcc_btc', '[1512114745,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512114805', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4480', 'ltc_btc', '[1512114805,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512114865', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4481', 'ltc_btc', '[1512114685,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512114865', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4482', 'bcc_btc', '[1512114805,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512114865', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4483', 'bcc_btc', '[1512114685,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512114865', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4484', 'ltc_btc', '[1512114865,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512114925', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4485', 'ltc_btc', '[1512114625,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512114925', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4486', 'bcc_btc', '[1512114865,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512114925', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4487', 'bcc_btc', '[1512114625,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512114925', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4488', 'ltc_btc', '[1512114925,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512114985', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4489', 'bcc_btc', '[1512114925,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512114985', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4490', 'ltc_btc', '[1512114985,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512115045', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4491', 'ltc_btc', '[1512114865,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512115045', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4492', 'bcc_btc', '[1512114985,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512115045', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4493', 'bcc_btc', '[1512114865,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512115045', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4494', 'ltc_btc', '[1512115045,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512115105', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4495', 'bcc_btc', '[1512115045,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512115105', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4496', 'ltc_btc', '[1512115105,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512115165', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4497', 'bcc_btc', '[1512115105,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512115165', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4498', 'ltc_btc', '[1512115165,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512115225', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4499', 'ltc_btc', '[1512115045,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512115225', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4500', 'ltc_btc', '[1512114925,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512115225', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4501', 'ltc_btc', '[1512114325,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '15', '0', '1512115225', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4502', 'ltc_btc', '[1512113425,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '30', '0', '1512115225', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4503', 'ltc_btc', '[1512111625,null,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '60', '0', '1512115225', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4504', 'ltc_btc', '[1512108025,\"1.00000000\",\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '120', '0', '1512115225', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4505', 'ltc_btc', '[1512100825,\"1.00000000\",\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '240', '0', '1512115225', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4506', 'bcc_btc', '[1512115165,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512115225', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4507', 'bcc_btc', '[1512115045,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512115225', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4508', 'bcc_btc', '[1512114925,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512115225', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4509', 'bcc_btc', '[1512114325,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '15', '0', '1512115225', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4510', 'bcc_btc', '[1512113425,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '30', '0', '1512115225', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4511', 'bcc_btc', '[1512111625,null,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '60', '0', '1512115225', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4512', 'bcc_btc', '[1512108025,\"1.00000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '120', '0', '1512115225', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4513', 'bcc_btc', '[1512100825,\"1.00000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '240', '0', '1512115225', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4514', 'ltc_btc', '[1512115225,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512115285', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4515', 'bcc_btc', '[1512115225,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512115285', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4516', 'ltc_btc', '[1512115285,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512115345', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4517', 'bcc_btc', '[1512115285,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512115345', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4518', 'ltc_btc', '[1512115345,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512115405', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4519', 'ltc_btc', '[1512115225,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512115405', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4520', 'bcc_btc', '[1512115345,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512115405', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4521', 'bcc_btc', '[1512115225,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512115405', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4522', 'ltc_btc', '[1512115405,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512115465', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4523', 'bcc_btc', '[1512115405,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512115465', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4524', 'ltc_btc', '[1512115465,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512115525', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4525', 'ltc_btc', '[1512115225,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512115525', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4526', 'bcc_btc', '[1512115465,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512115525', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4527', 'bcc_btc', '[1512115225,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512115525', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4528', 'ltc_btc', '[1512115525,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512115585', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4529', 'ltc_btc', '[1512115405,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512115585', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4530', 'bcc_btc', '[1512115525,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512115585', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4531', 'bcc_btc', '[1512115405,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512115585', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4532', 'ltc_btc', '[1512115585,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512115645', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4533', 'bcc_btc', '[1512115585,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512115645', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4534', 'ltc_btc', '[1512115645,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512115705', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4535', 'bcc_btc', '[1512115645,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512115705', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4536', 'ltc_btc', '[1512115705,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512115765', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4537', 'ltc_btc', '[1512115585,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512115765', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4538', 'bcc_btc', '[1512115705,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512115765', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4539', 'bcc_btc', '[1512115585,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512115765', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4540', 'ltc_btc', '[1512115765,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512115825', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4541', 'ltc_btc', '[1512115525,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512115825', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4542', 'bcc_btc', '[1512115765,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512115825', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4543', 'bcc_btc', '[1512115525,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512115825', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4544', 'ltc_btc', '[1512115825,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512115885', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4545', 'bcc_btc', '[1512115825,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512115885', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4546', 'ltc_btc', '[1512115885,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512115945', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4547', 'ltc_btc', '[1512115765,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512115945', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4548', 'bcc_btc', '[1512115885,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512115945', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4549', 'bcc_btc', '[1512115765,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512115945', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4550', 'ltc_btc', '[1512115945,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512116005', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4551', 'bcc_btc', '[1512115945,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512116005', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4552', 'ltc_btc', '[1512116005,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512116065', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4553', 'bcc_btc', '[1512116005,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512116065', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4554', 'ltc_btc', '[1512116065,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512116125', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4555', 'ltc_btc', '[1512115945,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512116125', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4556', 'ltc_btc', '[1512115825,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512116125', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4557', 'ltc_btc', '[1512115225,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '15', '0', '1512116125', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4558', 'bcc_btc', '[1512116065,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512116125', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4559', 'bcc_btc', '[1512115945,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512116125', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4560', 'bcc_btc', '[1512115825,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512116125', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4561', 'bcc_btc', '[1512115225,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '15', '0', '1512116125', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4562', 'ltc_btc', '[1512116125,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512116185', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4563', 'bcc_btc', '[1512116125,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512116185', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4564', 'ltc_btc', '[1512116185,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512116245', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4565', 'bcc_btc', '[1512116185,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512116245', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4566', 'ltc_btc', '[1512116245,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512116305', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4567', 'ltc_btc', '[1512116125,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512116305', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4568', 'bcc_btc', '[1512116245,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512116305', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4569', 'bcc_btc', '[1512116125,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512116305', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4570', 'ltc_btc', '[1512116305,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512116365', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4571', 'bcc_btc', '[1512116305,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512116365', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4572', 'ltc_btc', '[1512116365,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512116425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4573', 'ltc_btc', '[1512116125,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512116425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4574', 'bcc_btc', '[1512116365,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512116425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4575', 'bcc_btc', '[1512116125,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512116425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4576', 'ltc_btc', '[1512116425,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512116485', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4577', 'ltc_btc', '[1512116305,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512116485', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4578', 'bcc_btc', '[1512116425,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512116485', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4579', 'bcc_btc', '[1512116305,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512116485', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4580', 'ltc_btc', '[1512116485,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512116545', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4581', 'bcc_btc', '[1512116485,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512116545', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4582', 'ltc_btc', '[1512116545,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512116605', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4583', 'bcc_btc', '[1512116545,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512116605', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4584', 'ltc_btc', '[1512116605,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512116665', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4585', 'ltc_btc', '[1512116485,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512116665', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4586', 'bcc_btc', '[1512116605,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512116665', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4587', 'bcc_btc', '[1512116485,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512116665', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4588', 'ltc_btc', '[1512116665,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512116725', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4589', 'ltc_btc', '[1512116425,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512116725', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4590', 'bcc_btc', '[1512116665,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512116725', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4591', 'bcc_btc', '[1512116425,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512116725', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4592', 'ltc_btc', '[1512116725,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512116785', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4593', 'bcc_btc', '[1512116725,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512116785', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4594', 'ltc_btc', '[1512116785,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512116845', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4595', 'ltc_btc', '[1512116665,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512116845', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4596', 'bcc_btc', '[1512116785,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512116845', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4597', 'bcc_btc', '[1512116665,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512116845', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4598', 'ltc_btc', '[1512116845,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512116905', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4599', 'bcc_btc', '[1512116845,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512116905', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4600', 'ltc_btc', '[1512116905,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512116965', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4601', 'bcc_btc', '[1512116905,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512116965', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4602', 'ltc_btc', '[1512116965,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512117025', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4603', 'ltc_btc', '[1512116845,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512117025', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4604', 'ltc_btc', '[1512116725,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512117025', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4605', 'ltc_btc', '[1512116125,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '15', '0', '1512117025', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4606', 'ltc_btc', '[1512115225,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '30', '0', '1512117025', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4607', 'bcc_btc', '[1512116965,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512117025', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4608', 'bcc_btc', '[1512116845,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512117025', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4609', 'bcc_btc', '[1512116725,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512117025', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4610', 'bcc_btc', '[1512116125,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '15', '0', '1512117025', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4611', 'bcc_btc', '[1512115225,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '30', '0', '1512117025', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4612', 'ltc_btc', '[1512117025,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512117085', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4613', 'bcc_btc', '[1512117025,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512117085', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4614', 'ltc_btc', '[1512117085,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512117145', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4615', 'bcc_btc', '[1512117085,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512117145', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4616', 'ltc_btc', '[1512117145,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512117205', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4617', 'ltc_btc', '[1512117025,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512117205', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4618', 'bcc_btc', '[1512117145,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512117205', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4619', 'bcc_btc', '[1512117025,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512117205', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4620', 'ltc_btc', '[1512117205,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512117265', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4621', 'bcc_btc', '[1512117205,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512117265', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4622', 'ltc_btc', '[1512117265,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512117325', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4623', 'ltc_btc', '[1512117025,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512117325', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4624', 'bcc_btc', '[1512117265,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512117325', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4625', 'bcc_btc', '[1512117025,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512117325', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4626', 'ltc_btc', '[1512117325,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512117385', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4627', 'ltc_btc', '[1512117205,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512117385', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4628', 'bcc_btc', '[1512117325,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512117385', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4629', 'bcc_btc', '[1512117205,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512117385', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4630', 'ltc_btc', '[1512117385,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512117445', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4631', 'bcc_btc', '[1512117385,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512117445', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4632', 'ltc_btc', '[1512117445,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512117505', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4633', 'bcc_btc', '[1512117445,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512117505', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4634', 'ltc_btc', '[1512117505,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512117565', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4635', 'ltc_btc', '[1512117385,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512117565', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4636', 'bcc_btc', '[1512117505,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512117565', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4637', 'bcc_btc', '[1512117385,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512117565', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4638', 'ltc_btc', '[1512117565,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512117625', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4639', 'ltc_btc', '[1512117325,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512117625', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4640', 'bcc_btc', '[1512117565,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512117625', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4641', 'bcc_btc', '[1512117325,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512117625', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4642', 'ltc_btc', '[1512117625,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512117685', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4643', 'bcc_btc', '[1512117625,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512117685', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4644', 'ltc_btc', '[1512117685,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512117745', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4645', 'ltc_btc', '[1512117565,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512117745', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4646', 'bcc_btc', '[1512117685,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512117745', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4647', 'bcc_btc', '[1512117565,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512117745', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4648', 'ltc_btc', '[1512117745,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512117805', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4649', 'bcc_btc', '[1512117745,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512117805', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4650', 'ltc_btc', '[1512117805,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512117865', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4651', 'bcc_btc', '[1512117805,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512117865', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4652', 'ltc_btc', '[1512117865,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512117925', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4653', 'ltc_btc', '[1512117745,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512117925', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4654', 'ltc_btc', '[1512117625,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512117925', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4655', 'ltc_btc', '[1512117025,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '15', '0', '1512117925', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4656', 'bcc_btc', '[1512117865,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512117925', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4657', 'bcc_btc', '[1512117745,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512117925', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4658', 'bcc_btc', '[1512117625,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512117925', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4659', 'bcc_btc', '[1512117025,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '15', '0', '1512117925', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4660', 'ltc_btc', '[1512117925,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512117985', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4661', 'bcc_btc', '[1512117925,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512117985', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4662', 'ltc_btc', '[1512117985,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512118045', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4663', 'bcc_btc', '[1512117985,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512118045', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4664', 'ltc_btc', '[1512118045,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512118105', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4665', 'ltc_btc', '[1512117925,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512118105', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4666', 'bcc_btc', '[1512118045,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512118105', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4667', 'bcc_btc', '[1512117925,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512118105', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4668', 'ltc_btc', '[1512118105,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512118165', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4669', 'bcc_btc', '[1512118105,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512118165', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4670', 'ltc_btc', '[1512118165,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512118225', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4671', 'ltc_btc', '[1512117925,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512118225', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4672', 'bcc_btc', '[1512118165,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512118225', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4673', 'bcc_btc', '[1512117925,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512118225', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4674', 'ltc_btc', '[1512118225,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512118285', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4675', 'ltc_btc', '[1512118105,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512118285', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4676', 'bcc_btc', '[1512118225,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512118285', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4677', 'bcc_btc', '[1512118105,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512118285', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4678', 'ltc_btc', '[1512118285,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512118345', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4679', 'bcc_btc', '[1512118285,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512118345', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4680', 'ltc_btc', '[1512118345,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512118405', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4681', 'bcc_btc', '[1512118345,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512118405', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4682', 'ltc_btc', '[1512118405,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512118465', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4683', 'ltc_btc', '[1512118285,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512118465', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4684', 'bcc_btc', '[1512118405,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512118465', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4685', 'bcc_btc', '[1512118285,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512118465', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4686', 'ltc_btc', '[1512118465,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512118525', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4687', 'ltc_btc', '[1512118225,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512118525', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4688', 'bcc_btc', '[1512118465,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512118525', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4689', 'bcc_btc', '[1512118225,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512118525', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4690', 'ltc_btc', '[1512118525,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512118585', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4691', 'bcc_btc', '[1512118525,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512118585', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4692', 'ltc_btc', '[1512118585,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512118645', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4693', 'ltc_btc', '[1512118465,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512118645', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4694', 'bcc_btc', '[1512118585,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512118645', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4695', 'bcc_btc', '[1512118465,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512118645', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4696', 'ltc_btc', '[1512118645,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512118705', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4697', 'bcc_btc', '[1512118645,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512118705', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4698', 'ltc_btc', '[1512118705,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512118765', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4699', 'bcc_btc', '[1512118705,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512118765', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4700', 'ltc_btc', '[1512118765,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512118825', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4701', 'ltc_btc', '[1512118645,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512118825', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4702', 'ltc_btc', '[1512118525,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512118825', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4703', 'ltc_btc', '[1512117925,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '15', '0', '1512118825', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4704', 'ltc_btc', '[1512117025,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '30', '0', '1512118825', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4705', 'ltc_btc', '[1512115225,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '60', '0', '1512118825', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4706', 'bcc_btc', '[1512118765,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512118825', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4707', 'bcc_btc', '[1512118645,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512118825', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4708', 'bcc_btc', '[1512118525,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512118825', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4709', 'bcc_btc', '[1512117925,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '15', '0', '1512118825', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4710', 'bcc_btc', '[1512117025,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '30', '0', '1512118825', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4711', 'bcc_btc', '[1512115225,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '60', '0', '1512118825', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4712', 'ltc_btc', '[1512118825,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512118885', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4713', 'bcc_btc', '[1512118825,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512118885', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4714', 'ltc_btc', '[1512118885,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512118945', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4715', 'bcc_btc', '[1512118885,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512118945', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4716', 'ltc_btc', '[1512118945,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512119005', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4717', 'ltc_btc', '[1512118825,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512119005', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4718', 'bcc_btc', '[1512118945,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512119005', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4719', 'bcc_btc', '[1512118825,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512119005', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4720', 'ltc_btc', '[1512119005,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512119065', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4721', 'bcc_btc', '[1512119005,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512119065', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4722', 'ltc_btc', '[1512119065,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512119125', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4723', 'ltc_btc', '[1512118825,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512119125', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4724', 'bcc_btc', '[1512119065,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512119125', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4725', 'bcc_btc', '[1512118825,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512119125', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4726', 'ltc_btc', '[1512119126,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512119186', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4727', 'ltc_btc', '[1512119006,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512119186', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4728', 'bcc_btc', '[1512119126,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512119186', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4729', 'bcc_btc', '[1512119006,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512119186', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4730', 'ltc_btc', '[1512119185,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512119245', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4731', 'bcc_btc', '[1512119185,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512119245', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4732', 'ltc_btc', '[1512119245,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512119305', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4733', 'bcc_btc', '[1512119245,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512119305', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4734', 'ltc_btc', '[1512119305,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512119365', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4735', 'ltc_btc', '[1512119185,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512119365', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4736', 'bcc_btc', '[1512119305,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512119365', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4737', 'bcc_btc', '[1512119185,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512119365', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4738', 'ltc_btc', '[1512119365,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512119425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4739', 'ltc_btc', '[1512119125,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512119425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4740', 'bcc_btc', '[1512119365,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512119425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4741', 'bcc_btc', '[1512119125,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512119425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4742', 'ltc_btc', '[1512119425,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512119485', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4743', 'bcc_btc', '[1512119425,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512119485', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4744', 'ltc_btc', '[1512119485,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512119545', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4745', 'ltc_btc', '[1512119365,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512119545', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4746', 'bcc_btc', '[1512119485,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512119545', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4747', 'bcc_btc', '[1512119365,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512119545', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4748', 'ltc_btc', '[1512119545,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512119605', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4749', 'bcc_btc', '[1512119545,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512119605', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4750', 'ltc_btc', '[1512119605,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512119665', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4751', 'bcc_btc', '[1512119605,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512119665', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4752', 'ltc_btc', '[1512119665,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512119725', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4753', 'ltc_btc', '[1512119545,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512119725', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4754', 'ltc_btc', '[1512119425,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512119725', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4755', 'ltc_btc', '[1512118825,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '15', '0', '1512119725', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4756', 'bcc_btc', '[1512119665,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512119725', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4757', 'bcc_btc', '[1512119545,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512119725', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4758', 'bcc_btc', '[1512119425,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512119725', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4759', 'bcc_btc', '[1512118825,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '15', '0', '1512119725', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4760', 'ltc_btc', '[1512119725,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512119785', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4761', 'bcc_btc', '[1512119725,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512119785', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4762', 'ltc_btc', '[1512119785,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512119845', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4763', 'bcc_btc', '[1512119785,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512119845', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4764', 'ltc_btc', '[1512119845,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512119905', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4765', 'ltc_btc', '[1512119725,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512119905', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4766', 'bcc_btc', '[1512119845,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512119905', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4767', 'bcc_btc', '[1512119725,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512119905', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4768', 'ltc_btc', '[1512119905,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512119965', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4769', 'bcc_btc', '[1512119905,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512119965', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4770', 'ltc_btc', '[1512119965,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512120025', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4771', 'ltc_btc', '[1512119725,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512120025', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4772', 'bcc_btc', '[1512119965,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512120025', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4773', 'bcc_btc', '[1512119725,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512120025', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4774', 'ltc_btc', '[1512120025,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512120085', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4775', 'ltc_btc', '[1512119905,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512120085', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4776', 'bcc_btc', '[1512120025,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512120085', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4777', 'bcc_btc', '[1512119905,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512120085', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4778', 'ltc_btc', '[1512120085,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512120145', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4779', 'bcc_btc', '[1512120085,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512120145', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4780', 'ltc_btc', '[1512120146,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512120206', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4781', 'bcc_btc', '[1512120146,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512120206', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4782', 'ltc_btc', '[1512120205,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512120265', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4783', 'ltc_btc', '[1512120085,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512120265', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4784', 'bcc_btc', '[1512120205,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512120265', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4785', 'bcc_btc', '[1512120085,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512120265', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4786', 'ltc_btc', '[1512120265,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512120325', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4787', 'ltc_btc', '[1512120025,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512120325', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4788', 'bcc_btc', '[1512120265,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512120325', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4789', 'bcc_btc', '[1512120025,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512120325', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4790', 'ltc_btc', '[1512120325,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512120385', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4791', 'bcc_btc', '[1512120325,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512120385', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4792', 'ltc_btc', '[1512120385,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512120445', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4793', 'ltc_btc', '[1512120265,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512120445', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4794', 'bcc_btc', '[1512120385,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512120445', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4795', 'bcc_btc', '[1512120265,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512120445', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4796', 'ltc_btc', '[1512120445,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512120505', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4797', 'bcc_btc', '[1512120445,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512120505', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4798', 'ltc_btc', '[1512120505,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512120565', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4799', 'bcc_btc', '[1512120505,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512120565', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4800', 'ltc_btc', '[1512120565,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512120625', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4801', 'ltc_btc', '[1512120445,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512120625', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4802', 'ltc_btc', '[1512120325,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512120625', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4803', 'ltc_btc', '[1512119725,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '15', '0', '1512120625', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4804', 'ltc_btc', '[1512118825,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '30', '0', '1512120625', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4805', 'bcc_btc', '[1512120565,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512120625', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4806', 'bcc_btc', '[1512120445,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512120625', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4807', 'bcc_btc', '[1512120325,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512120625', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4808', 'bcc_btc', '[1512119725,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '15', '0', '1512120625', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4809', 'bcc_btc', '[1512118825,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '30', '0', '1512120625', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4810', 'ltc_btc', '[1512120625,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512120685', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4811', 'bcc_btc', '[1512120625,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512120685', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4812', 'ltc_btc', '[1512120685,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512120745', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4813', 'bcc_btc', '[1512120685,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512120745', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4814', 'ltc_btc', '[1512120745,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512120805', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4815', 'ltc_btc', '[1512120625,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512120805', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4816', 'bcc_btc', '[1512120745,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512120805', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4817', 'bcc_btc', '[1512120625,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512120805', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4818', 'ltc_btc', '[1512120805,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512120865', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4819', 'bcc_btc', '[1512120805,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512120865', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4820', 'ltc_btc', '[1512120865,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512120925', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4821', 'ltc_btc', '[1512120625,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512120925', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4822', 'bcc_btc', '[1512120865,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512120925', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4823', 'bcc_btc', '[1512120625,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512120925', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4824', 'ltc_btc', '[1512120925,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512120985', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4825', 'ltc_btc', '[1512120805,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512120985', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4826', 'bcc_btc', '[1512120925,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512120985', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4827', 'bcc_btc', '[1512120805,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512120985', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4828', 'ltc_btc', '[1512120985,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512121045', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4829', 'bcc_btc', '[1512120985,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512121045', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4830', 'ltc_btc', '[1512121045,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512121105', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4831', 'bcc_btc', '[1512121045,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512121105', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4832', 'ltc_btc', '[1512121105,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512121165', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4833', 'ltc_btc', '[1512120985,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512121165', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4834', 'bcc_btc', '[1512121105,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512121165', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4835', 'bcc_btc', '[1512120985,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512121165', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4836', 'ltc_btc', '[1512121165,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512121225', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4837', 'ltc_btc', '[1512120925,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512121225', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4838', 'bcc_btc', '[1512121165,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512121225', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4839', 'bcc_btc', '[1512120925,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512121225', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4840', 'ltc_btc', '[1512121225,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512121285', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4841', 'bcc_btc', '[1512121225,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512121285', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4842', 'ltc_btc', '[1512121285,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512121345', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4843', 'ltc_btc', '[1512121165,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512121345', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4844', 'bcc_btc', '[1512121285,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512121345', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4845', 'bcc_btc', '[1512121165,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512121345', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4846', 'ltc_btc', '[1512121345,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512121405', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4847', 'bcc_btc', '[1512121345,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512121405', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4848', 'ltc_btc', '[1512121405,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512121465', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4849', 'bcc_btc', '[1512121405,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512121465', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4850', 'ltc_btc', '[1512121465,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512121525', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4851', 'ltc_btc', '[1512121345,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512121525', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4852', 'ltc_btc', '[1512121225,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512121525', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4853', 'ltc_btc', '[1512120625,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '15', '0', '1512121525', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4854', 'bcc_btc', '[1512121465,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512121525', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4855', 'bcc_btc', '[1512121345,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512121525', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4856', 'bcc_btc', '[1512121225,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512121525', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4857', 'bcc_btc', '[1512120625,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '15', '0', '1512121525', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4858', 'ltc_btc', '[1512121525,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512121585', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4859', 'bcc_btc', '[1512121525,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512121585', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4860', 'ltc_btc', '[1512121585,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512121645', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4861', 'bcc_btc', '[1512121585,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512121645', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4862', 'ltc_btc', '[1512121645,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512121705', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4863', 'ltc_btc', '[1512121525,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512121705', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4864', 'bcc_btc', '[1512121645,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512121705', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4865', 'bcc_btc', '[1512121525,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512121705', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4866', 'ltc_btc', '[1512121705,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512121765', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4867', 'bcc_btc', '[1512121705,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512121765', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4868', 'ltc_btc', '[1512121765,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512121825', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4869', 'ltc_btc', '[1512121525,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512121825', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4870', 'bcc_btc', '[1512121765,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512121825', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4871', 'bcc_btc', '[1512121525,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512121825', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4872', 'ltc_btc', '[1512121825,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512121885', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4873', 'ltc_btc', '[1512121705,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512121885', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4874', 'bcc_btc', '[1512121825,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512121885', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4875', 'bcc_btc', '[1512121705,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512121885', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4876', 'ltc_btc', '[1512121885,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512121945', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4877', 'bcc_btc', '[1512121885,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512121945', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4878', 'ltc_btc', '[1512121945,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512122005', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4879', 'bcc_btc', '[1512121945,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512122005', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4880', 'ltc_btc', '[1512122005,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512122065', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4881', 'ltc_btc', '[1512121885,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512122065', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4882', 'bcc_btc', '[1512122005,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512122065', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4883', 'bcc_btc', '[1512121885,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512122065', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4884', 'ltc_btc', '[1512122065,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512122125', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4885', 'ltc_btc', '[1512121825,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512122125', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4886', 'bcc_btc', '[1512122065,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512122125', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4887', 'bcc_btc', '[1512121825,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512122125', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4888', 'ltc_btc', '[1512122125,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512122185', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4889', 'bcc_btc', '[1512122125,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512122185', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4890', 'ltc_btc', '[1512122185,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512122245', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4891', 'ltc_btc', '[1512122065,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512122245', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4892', 'bcc_btc', '[1512122185,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512122245', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4893', 'bcc_btc', '[1512122065,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512122245', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4894', 'ltc_btc', '[1512122245,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512122305', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4895', 'bcc_btc', '[1512122245,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512122305', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4896', 'ltc_btc', '[1512122305,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512122365', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4897', 'bcc_btc', '[1512122305,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512122365', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4898', 'ltc_btc', '[1512122365,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512122425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4899', 'ltc_btc', '[1512122245,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512122425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4900', 'ltc_btc', '[1512122125,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512122425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4901', 'ltc_btc', '[1512121525,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '15', '0', '1512122425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4902', 'ltc_btc', '[1512120625,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '30', '0', '1512122425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4903', 'ltc_btc', '[1512118825,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '60', '0', '1512122425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4904', 'ltc_btc', '[1512115225,null,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '120', '0', '1512122425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4905', 'ltc_btc', '[1512100825,\"1.00000000\",\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '360', '0', '1512122425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4906', 'bcc_btc', '[1512122365,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512122425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4907', 'bcc_btc', '[1512122245,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512122425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4908', 'bcc_btc', '[1512122125,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512122425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4909', 'bcc_btc', '[1512121525,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '15', '0', '1512122425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4910', 'bcc_btc', '[1512120625,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '30', '0', '1512122425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4911', 'bcc_btc', '[1512118825,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '60', '0', '1512122425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4912', 'bcc_btc', '[1512115225,null,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '120', '0', '1512122425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4913', 'bcc_btc', '[1512100825,\"1.00000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '360', '0', '1512122425', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4914', 'ltc_btc', '[1512122425,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512122485', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4915', 'bcc_btc', '[1512122425,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512122485', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4916', 'ltc_btc', '[1512122485,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512122545', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4917', 'bcc_btc', '[1512122485,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512122545', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4918', 'ltc_btc', '[1512122545,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512122605', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4919', 'ltc_btc', '[1512122425,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512122605', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4920', 'bcc_btc', '[1512122545,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512122605', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4921', 'bcc_btc', '[1512122425,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512122605', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4922', 'ltc_btc', '[1512122605,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512122665', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4923', 'bcc_btc', '[1512122605,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512122665', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4924', 'ltc_btc', '[1512122665,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512122725', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4925', 'ltc_btc', '[1512122425,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512122725', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4926', 'bcc_btc', '[1512122665,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512122725', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4927', 'bcc_btc', '[1512122425,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512122725', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4928', 'ltc_btc', '[1512122725,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512122785', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4929', 'ltc_btc', '[1512122605,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512122785', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4930', 'bcc_btc', '[1512122725,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512122785', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4931', 'bcc_btc', '[1512122605,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512122785', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4932', 'ltc_btc', '[1512122785,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512122845', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4933', 'bcc_btc', '[1512122785,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512122845', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4934', 'ltc_btc', '[1512122845,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512122905', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4935', 'bcc_btc', '[1512122845,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512122905', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4936', 'ltc_btc', '[1512122905,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512122965', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4937', 'ltc_btc', '[1512122785,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '3', '0', '1512122965', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4938', 'bcc_btc', '[1512122905,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512122965', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4939', 'bcc_btc', '[1512122785,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '3', '0', '1512122965', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4940', 'ltc_btc', '[1512122965,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '1', '0', '1512123025', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4941', 'ltc_btc', '[1512122725,0,\"0.01110000\",\"0.01110000\",\"0.01110000\",\"0.01110000\"]', '5', '0', '1512123025', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4942', 'bcc_btc', '[1512122965,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '1', '0', '1512123025', '0', '0');
INSERT INTO `tw_trade_json` VALUES ('4943', 'bcc_btc', '[1512122725,0,\"0.60000000\",\"0.60000000\",\"0.60000000\",\"0.60000000\"]', '5', '0', '1512123025', '0', '0');

-- ----------------------------
-- Table structure for tw_trade_json_copy
-- ----------------------------
DROP TABLE IF EXISTS `tw_trade_json_copy`;
CREATE TABLE `tw_trade_json_copy` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `market` varchar(100) NOT NULL,
  `data` varchar(500) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT '',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `market` (`market`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易图表表';

-- ----------------------------
-- Records of tw_trade_json_copy
-- ----------------------------

-- ----------------------------
-- Table structure for tw_trade_log
-- ----------------------------
DROP TABLE IF EXISTS `tw_trade_log`;
CREATE TABLE `tw_trade_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `peerid` int(11) unsigned NOT NULL,
  `market` varchar(50) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `num` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `mum` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `fee_buy` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `fee_sell` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `type` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`),
  KEY `peerid` (`peerid`),
  KEY `main` (`market`,`status`,`addtime`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8
/*!50100 PARTITION BY RANGE (id)
(PARTITION p1 VALUES LESS THAN (500000) ENGINE = InnoDB,
 PARTITION p2 VALUES LESS THAN (1000000) ENGINE = InnoDB,
 PARTITION p3 VALUES LESS THAN (1500000) ENGINE = InnoDB,
 PARTITION p4 VALUES LESS THAN (2000000) ENGINE = InnoDB,
 PARTITION p5 VALUES LESS THAN (2500000) ENGINE = InnoDB,
 PARTITION p6 VALUES LESS THAN (3000000) ENGINE = InnoDB,
 PARTITION p7 VALUES LESS THAN (3500000) ENGINE = InnoDB,
 PARTITION p8 VALUES LESS THAN (4000000) ENGINE = InnoDB,
 PARTITION p9 VALUES LESS THAN (4500000) ENGINE = InnoDB,
 PARTITION p10 VALUES LESS THAN (5000000) ENGINE = InnoDB,
 PARTITION p11 VALUES LESS THAN (5500000) ENGINE = InnoDB,
 PARTITION p12 VALUES LESS THAN (6000000) ENGINE = InnoDB,
 PARTITION p13 VALUES LESS THAN (6500000) ENGINE = InnoDB,
 PARTITION p14 VALUES LESS THAN (7000000) ENGINE = InnoDB,
 PARTITION p15 VALUES LESS THAN (7500000) ENGINE = InnoDB,
 PARTITION p16 VALUES LESS THAN (8000000) ENGINE = InnoDB,
 PARTITION p17 VALUES LESS THAN (8500000) ENGINE = InnoDB,
 PARTITION p18 VALUES LESS THAN (9000000) ENGINE = InnoDB,
 PARTITION p19 VALUES LESS THAN (9500000) ENGINE = InnoDB,
 PARTITION p20 VALUES LESS THAN (10000000) ENGINE = InnoDB,
 PARTITION p21 VALUES LESS THAN (10500000) ENGINE = InnoDB,
 PARTITION p22 VALUES LESS THAN (11000000) ENGINE = InnoDB,
 PARTITION p23 VALUES LESS THAN (11500000) ENGINE = InnoDB,
 PARTITION p24 VALUES LESS THAN (12000000) ENGINE = InnoDB,
 PARTITION p25 VALUES LESS THAN (12500000) ENGINE = InnoDB,
 PARTITION p26 VALUES LESS THAN (13000000) ENGINE = InnoDB,
 PARTITION p27 VALUES LESS THAN (13500000) ENGINE = InnoDB,
 PARTITION p28 VALUES LESS THAN (14000000) ENGINE = InnoDB,
 PARTITION p29 VALUES LESS THAN (14500000) ENGINE = InnoDB,
 PARTITION p30 VALUES LESS THAN (15000000) ENGINE = InnoDB,
 PARTITION p31 VALUES LESS THAN (15500000) ENGINE = InnoDB,
 PARTITION p32 VALUES LESS THAN (16000000) ENGINE = InnoDB,
 PARTITION p33 VALUES LESS THAN (16500000) ENGINE = InnoDB,
 PARTITION p34 VALUES LESS THAN (17000000) ENGINE = InnoDB,
 PARTITION p35 VALUES LESS THAN (17500000) ENGINE = InnoDB,
 PARTITION p36 VALUES LESS THAN (18000000) ENGINE = InnoDB,
 PARTITION p37 VALUES LESS THAN (18500000) ENGINE = InnoDB,
 PARTITION p38 VALUES LESS THAN (19000000) ENGINE = InnoDB,
 PARTITION p39 VALUES LESS THAN (19500000) ENGINE = InnoDB,
 PARTITION p40 VALUES LESS THAN (20000000) ENGINE = InnoDB,
 PARTITION p41 VALUES LESS THAN (20500000) ENGINE = InnoDB,
 PARTITION p42 VALUES LESS THAN (21000000) ENGINE = InnoDB,
 PARTITION p43 VALUES LESS THAN (21500000) ENGINE = InnoDB,
 PARTITION p44 VALUES LESS THAN (22000000) ENGINE = InnoDB,
 PARTITION p45 VALUES LESS THAN (22500000) ENGINE = InnoDB,
 PARTITION p46 VALUES LESS THAN (23000000) ENGINE = InnoDB,
 PARTITION p47 VALUES LESS THAN (23500000) ENGINE = InnoDB,
 PARTITION p48 VALUES LESS THAN (24000000) ENGINE = InnoDB,
 PARTITION p49 VALUES LESS THAN (24500000) ENGINE = InnoDB,
 PARTITION p50 VALUES LESS THAN (25000000) ENGINE = InnoDB,
 PARTITION p51 VALUES LESS THAN (25500000) ENGINE = InnoDB,
 PARTITION p52 VALUES LESS THAN (26000000) ENGINE = InnoDB,
 PARTITION p53 VALUES LESS THAN (26500000) ENGINE = InnoDB,
 PARTITION p54 VALUES LESS THAN (27000000) ENGINE = InnoDB,
 PARTITION p55 VALUES LESS THAN (27500000) ENGINE = InnoDB,
 PARTITION p56 VALUES LESS THAN (28000000) ENGINE = InnoDB,
 PARTITION p57 VALUES LESS THAN (28500000) ENGINE = InnoDB,
 PARTITION p58 VALUES LESS THAN (29000000) ENGINE = InnoDB,
 PARTITION p59 VALUES LESS THAN (30000000) ENGINE = InnoDB,
 PARTITION p60 VALUES LESS THAN (30500000) ENGINE = InnoDB,
 PARTITION p61 VALUES LESS THAN (31000000) ENGINE = InnoDB,
 PARTITION p62 VALUES LESS THAN (31500000) ENGINE = InnoDB,
 PARTITION p63 VALUES LESS THAN (32000000) ENGINE = InnoDB,
 PARTITION p64 VALUES LESS THAN (32500000) ENGINE = InnoDB,
 PARTITION p65 VALUES LESS THAN (33000000) ENGINE = InnoDB,
 PARTITION p66 VALUES LESS THAN (33500000) ENGINE = InnoDB,
 PARTITION p67 VALUES LESS THAN (34000000) ENGINE = InnoDB,
 PARTITION p68 VALUES LESS THAN (34500000) ENGINE = InnoDB,
 PARTITION p69 VALUES LESS THAN (35000000) ENGINE = InnoDB,
 PARTITION p70 VALUES LESS THAN (35500000) ENGINE = InnoDB,
 PARTITION p71 VALUES LESS THAN (36000000) ENGINE = InnoDB,
 PARTITION p72 VALUES LESS THAN (36500000) ENGINE = InnoDB,
 PARTITION p73 VALUES LESS THAN (37000000) ENGINE = InnoDB,
 PARTITION p74 VALUES LESS THAN (37500000) ENGINE = InnoDB,
 PARTITION p75 VALUES LESS THAN (38000000) ENGINE = InnoDB,
 PARTITION p76 VALUES LESS THAN (38500000) ENGINE = InnoDB,
 PARTITION p77 VALUES LESS THAN (39000000) ENGINE = InnoDB,
 PARTITION p78 VALUES LESS THAN (39500000) ENGINE = InnoDB,
 PARTITION p79 VALUES LESS THAN (40000000) ENGINE = InnoDB,
 PARTITION p80 VALUES LESS THAN (40500000) ENGINE = InnoDB,
 PARTITION p81 VALUES LESS THAN (41000000) ENGINE = InnoDB,
 PARTITION p82 VALUES LESS THAN (41500000) ENGINE = InnoDB,
 PARTITION p83 VALUES LESS THAN (42000000) ENGINE = InnoDB,
 PARTITION p84 VALUES LESS THAN (42500000) ENGINE = InnoDB,
 PARTITION p85 VALUES LESS THAN (43000000) ENGINE = InnoDB,
 PARTITION p86 VALUES LESS THAN (43500000) ENGINE = InnoDB,
 PARTITION p87 VALUES LESS THAN (44000000) ENGINE = InnoDB,
 PARTITION p88 VALUES LESS THAN (44500000) ENGINE = InnoDB,
 PARTITION p89 VALUES LESS THAN (45000000) ENGINE = InnoDB,
 PARTITION p90 VALUES LESS THAN (45500000) ENGINE = InnoDB,
 PARTITION p91 VALUES LESS THAN (46000000) ENGINE = InnoDB,
 PARTITION p92 VALUES LESS THAN (46500000) ENGINE = InnoDB,
 PARTITION p93 VALUES LESS THAN (47000000) ENGINE = InnoDB,
 PARTITION p94 VALUES LESS THAN (47500000) ENGINE = InnoDB,
 PARTITION p95 VALUES LESS THAN (48000000) ENGINE = InnoDB,
 PARTITION p96 VALUES LESS THAN (48500000) ENGINE = InnoDB,
 PARTITION p97 VALUES LESS THAN (49000000) ENGINE = InnoDB,
 PARTITION p98 VALUES LESS THAN (49500000) ENGINE = InnoDB,
 PARTITION p99 VALUES LESS THAN (50000000) ENGINE = InnoDB,
 PARTITION p100 VALUES LESS THAN (50500000) ENGINE = InnoDB,
 PARTITION p101 VALUES LESS THAN (51000000) ENGINE = InnoDB,
 PARTITION p102 VALUES LESS THAN (51500000) ENGINE = InnoDB,
 PARTITION p103 VALUES LESS THAN (52000000) ENGINE = InnoDB,
 PARTITION p104 VALUES LESS THAN (52500000) ENGINE = InnoDB,
 PARTITION p105 VALUES LESS THAN (53000000) ENGINE = InnoDB,
 PARTITION p106 VALUES LESS THAN (53500000) ENGINE = InnoDB,
 PARTITION p107 VALUES LESS THAN (54000000) ENGINE = InnoDB,
 PARTITION p108 VALUES LESS THAN (54500000) ENGINE = InnoDB,
 PARTITION p109 VALUES LESS THAN (55000000) ENGINE = InnoDB,
 PARTITION p110 VALUES LESS THAN (55500000) ENGINE = InnoDB,
 PARTITION p111 VALUES LESS THAN (56000000) ENGINE = InnoDB,
 PARTITION p112 VALUES LESS THAN (56500000) ENGINE = InnoDB,
 PARTITION p113 VALUES LESS THAN (57000000) ENGINE = InnoDB,
 PARTITION p114 VALUES LESS THAN (57500000) ENGINE = InnoDB,
 PARTITION p115 VALUES LESS THAN (58000000) ENGINE = InnoDB,
 PARTITION p116 VALUES LESS THAN (58500000) ENGINE = InnoDB,
 PARTITION p117 VALUES LESS THAN (59000000) ENGINE = InnoDB,
 PARTITION p118 VALUES LESS THAN (59500000) ENGINE = InnoDB,
 PARTITION p119 VALUES LESS THAN (60000000) ENGINE = InnoDB,
 PARTITION p120 VALUES LESS THAN (60500000) ENGINE = InnoDB,
 PARTITION p121 VALUES LESS THAN (61000000) ENGINE = InnoDB,
 PARTITION p122 VALUES LESS THAN MAXVALUE ENGINE = InnoDB) */;

-- ----------------------------
-- Records of tw_trade_log
-- ----------------------------
INSERT INTO `tw_trade_log` VALUES ('1', '6272', '6272', 'ltc_btc', '0.01110000', '1.00000000', '0.01110000', '0.00001110', '0.00001110', '2', '0', '1510817663', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('2', '6272', '6272', 'bcc_btc', '0.05600000', '1.00000000', '0.05600000', '0.00005600', '0.00005600', '2', '0', '1510817684', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('3', '6273', '6273', 'ltc_btc', '0.01000000', '10.00000000', '0.10000000', '0.00010000', '0.00010000', '1', '0', '1511163188', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('4', '6273', '6273', 'bcc_btc', '0.05000000', '10.00000000', '0.50000000', '0.00050000', '0.00050000', '1', '0', '1511163829', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('5', '6273', '6273', 'bcc_btc', '0.05800000', '1.00000000', '0.05800000', '0.00005800', '0.00005800', '2', '0', '1511163978', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('6', '6273', '6273', 'bcc_btc', '0.05700000', '10.00000000', '0.57000000', '0.00057000', '0.00057000', '1', '0', '1511164048', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('7', '6271', '6271', 'bcc_btc', '0.05800000', '5.00000000', '0.29000000', '0.00029000', '0.00029000', '2', '0', '1511170090', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('8', '6271', '6274', 'ltc_btc', '0.01110000', '5.00000000', '0.05550000', '0.00005550', '0.00005550', '2', '0', '1511227083', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('9', '6271', '6273', 'bcc_btc', '0.05800000', '5.00000000', '0.29000000', '0.00029000', '0.00029000', '2', '0', '1511229350', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('10', '6274', '6274', 'ltc_btc', '0.01110000', '5.00000000', '0.05550000', '0.00005550', '0.00005550', '2', '0', '1511766078', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('11', '6274', '6273', 'bcc_btc', '0.05700000', '10.00000000', '0.57000000', '0.00057000', '0.00057000', '1', '0', '1511766152', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('12', '6279', '6273', 'bcc_btc', '0.05700000', '1.00000000', '0.05700000', '0.00000000', '0.00005700', '1', '0', '1511840468', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('13', '6279', '6273', 'bcc_btc', '0.05700000', '1.00000000', '0.05700000', '0.00000000', '0.00005700', '1', '0', '1511840575', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('14', '6279', '6273', 'bcc_btc', '0.05700000', '1.00000000', '0.05700000', '0.00000000', '0.00005700', '1', '0', '1511840731', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('15', '6279', '6273', 'bcc_btc', '0.05700000', '32.00000000', '1.82400000', '0.00000000', '0.00182400', '1', '0', '1511840827', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('16', '6279', '6277', 'bcc_btc', '0.05700000', '1.00000000', '0.05700000', '0.00000000', '0.00005700', '1', '0', '1511840828', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('17', '6277', '6277', 'bcc_btc', '0.56788900', '1.00000000', '0.56788900', '0.00000000', '0.00056789', '2', '0', '1511849237', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('18', '6277', '6277', 'bcc_btc', '0.56788900', '1.00000000', '0.56788900', '0.00000000', '0.00056789', '2', '0', '1511849237', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('19', '6278', '6278', 'ltc_btc', '10.00000000', '10.00000000', '100.00000000', '0.10000000', '0.10000000', '2', '0', '1511854503', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('20', '6274', '6271', 'ltc_btc', '0.01110000', '2.00000000', '0.02220000', '0.00002220', '0.00002220', '2', '0', '1511856923', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('21', '6271', '6271', 'bcc_btc', '0.56788900', '0.11000000', '0.06246779', '0.00000000', '0.00006247', '2', '0', '1511857505', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('22', '6271', '6271', 'bcc_btc', '0.56788900', '0.89000000', '0.50542121', '0.00000000', '0.00050542', '2', '0', '1511857505', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('23', '6278', '6277', 'bcc_btc', '10.00000000', '1.00000000', '10.00000000', '0.00000000', '0.01000000', '2', '0', '1511942163', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('24', '6278', '6277', 'bcc_btc', '10.00000000', '1.00000000', '10.00000000', '0.00000000', '0.01000000', '2', '0', '1511942176', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('25', '6274', '6274', 'ltc_btc', '0.01110000', '0.10000000', '0.00111000', '0.00000111', '0.00000111', '2', '0', '1512009547', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('26', '6278', '6292', 'bcc_btc', '10.00000000', '1.00000000', '10.00000000', '0.00000000', '0.03000000', '2', '0', '1512023168', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('27', '6278', '6292', 'bcc_btc', '10.00000000', '1.00000000', '10.00000000', '0.00000000', '0.03000000', '2', '0', '1512023464', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('28', '6278', '6292', 'bcc_btc', '10.00000000', '1.00000000', '10.00000000', '0.00000000', '0.03000000', '2', '0', '1512023594', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('29', '6278', '6292', 'bcc_btc', '10.00000000', '1.00000000', '10.00000000', '0.00000000', '0.03000000', '2', '0', '1512023693', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('30', '6278', '6292', 'bcc_btc', '10.00000000', '1.00000000', '10.00000000', '0.00000000', '0.03000000', '2', '0', '1512023746', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('31', '6277', '6279', 'bcc_btc', '20.00000000', '1.00000000', '20.00000000', '0.00000000', '0.06000000', '1', '0', '1512023851', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('32', '6278', '6277', 'bcc_btc', '10.00000000', '3.00000000', '30.00000000', '0.00000000', '0.09000000', '2', '0', '1512023878', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('33', '6279', '6277', 'bcc_btc', '10.00000000', '1.59000000', '15.90000000', '0.00000000', '0.04770000', '2', '0', '1512023878', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('34', '6279', '6277', 'bcc_btc', '1.00000000', '1.00000000', '1.00000000', '0.00000000', '0.00300000', '2', '0', '1512023879', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('35', '6292', '6277', 'bcc_btc', '1.00000000', '1.00000000', '1.00000000', '0.00000000', '0.00300000', '2', '0', '1512023879', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('36', '6292', '6277', 'bcc_btc', '0.56800000', '1.00000000', '0.56800000', '0.00000000', '0.00170400', '2', '0', '1512023880', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('37', '6271', '6277', 'bcc_btc', '0.56788900', '0.11000000', '0.06246779', '0.00000000', '0.00018740', '2', '0', '1512023881', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('38', '6291', '6277', 'bcc_btc', '0.56788900', '10.00000000', '5.67889000', '0.00000000', '0.01703667', '2', '0', '1512023882', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('39', '6290', '6277', 'bcc_btc', '0.56788900', '10.00000000', '5.67889000', '0.00000000', '0.01703667', '2', '0', '1512023882', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('40', '6277', '6293', 'bcc_btc', '2.00000000', '1.00000000', '2.00000000', '0.00000000', '0.00600000', '2', '0', '1512025099', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('41', '6277', '6277', 'bcc_btc', '2.50000000', '1.00000000', '2.50000000', '0.00000000', '0.00750000', '1', '0', '1512026741', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('42', '6277', '6277', 'bcc_btc', '2.20000000', '1.00000000', '2.20000000', '0.00000000', '0.00660000', '2', '0', '1512029646', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('43', '6277', '6290', 'bcc_btc', '2.10000000', '1.00000000', '2.10000000', '0.00000000', '0.00630000', '2', '0', '1512030839', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('44', '6290', '6277', 'bcc_btc', '2.25500000', '1.00000000', '2.25500000', '0.00000000', '0.00676500', '1', '0', '1512031833', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('45', '6290', '6277', 'bcc_btc', '2.30000000', '1.00000000', '2.30000000', '0.00000000', '0.00690000', '1', '0', '1512031834', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('46', '6290', '6277', 'bcc_btc', '2.50000000', '1.00000000', '2.50000000', '0.00000000', '0.00750000', '1', '0', '1512031835', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('47', '6290', '6277', 'bcc_btc', '2.80000000', '1.00000000', '2.80000000', '0.00000000', '0.00840000', '1', '0', '1512031835', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('48', '6290', '6277', 'bcc_btc', '2.90000000', '1.00000000', '2.90000000', '0.00000000', '0.00870000', '1', '0', '1512031836', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('49', '6290', '6277', 'bcc_btc', '3.00000000', '1.00000000', '3.00000000', '0.00000000', '0.00900000', '1', '0', '1512031836', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('50', '6290', '6277', 'bcc_btc', '3.00000000', '1.00000000', '3.00000000', '0.00000000', '0.00900000', '1', '0', '1512031837', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('51', '6290', '6277', 'bcc_btc', '4.00000000', '1.00000000', '4.00000000', '0.00000000', '0.01200000', '1', '0', '1512031848', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('52', '6290', '6277', 'bcc_btc', '4.00000000', '1.00000000', '4.00000000', '0.00000000', '0.01200000', '1', '0', '1512031849', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('53', '6290', '6277', 'bcc_btc', '5.00000000', '1.00000000', '5.00000000', '0.00000000', '0.01500000', '1', '0', '1512031849', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('54', '6290', '6290', 'bcc_btc', '10.00000000', '7.00000000', '70.00000000', '0.00000000', '0.21000000', '2', '0', '1512031883', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('55', '6290', '6290', 'bcc_btc', '3.00000000', '7.00000000', '21.00000000', '0.00000000', '0.06300000', '2', '0', '1512031884', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('56', '6292', '6290', 'bcc_btc', '0.56799000', '1.00000000', '0.56799000', '0.00000000', '0.00170397', '2', '0', '1512031884', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('57', '6292', '6290', 'bcc_btc', '0.56000000', '1.00000000', '0.56000000', '0.00000000', '0.00168000', '2', '0', '1512031885', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('58', '6291', '6290', 'bcc_btc', '0.56000000', '10.00000000', '5.60000000', '0.00000000', '0.01680000', '1', '0', '1512031984', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('59', '6290', '6291', 'bcc_btc', '0.56000000', '23.00000000', '12.88000000', '0.00000000', '0.03864000', '1', '0', '1512032814', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('60', '6290', '6291', 'bcc_btc', '0.56000000', '17.00000000', '9.52000000', '0.00000000', '0.02856000', '1', '0', '1512032934', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('61', '6290', '6291', 'bcc_btc', '0.56000000', '10.00000000', '5.60000000', '0.00000000', '0.01680000', '2', '0', '1512032975', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('62', '6274', '6294', 'ltc_btc', '0.01110000', '0.90000000', '0.00999000', '0.00000999', '0.00000999', '2', '0', '1512109312', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('63', '6274', '6294', 'ltc_btc', '0.01110000', '0.10000000', '0.00111000', '0.00000111', '0.00000111', '2', '0', '1512109312', '0', '1');
INSERT INTO `tw_trade_log` VALUES ('64', '6274', '6271', 'bcc_btc', '0.60000000', '1.00000000', '0.60000000', '0.00000000', '0.00180000', '2', '0', '1512109779', '0', '1');

-- ----------------------------
-- Table structure for tw_user
-- ----------------------------
DROP TABLE IF EXISTS `tw_user`;
CREATE TABLE `tw_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `mobiletime` int(11) unsigned NOT NULL DEFAULT '0',
  `password` varchar(32) NOT NULL,
  `tpwdsetting` varchar(32) NOT NULL DEFAULT '',
  `paypassword` varchar(50) DEFAULT '',
  `invit_1` varchar(50) NOT NULL DEFAULT '',
  `invit_2` varchar(50) NOT NULL DEFAULT '',
  `invit_3` varchar(50) NOT NULL DEFAULT '',
  `truename` varchar(32) DEFAULT '',
  `idcard` varchar(32) DEFAULT '',
  `logins` int(11) unsigned NOT NULL DEFAULT '0',
  `ga` varchar(50) DEFAULT NULL,
  `addip` varchar(50) NOT NULL DEFAULT '',
  `addr` varchar(50) NOT NULL DEFAULT '',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `alipay` varchar(50) DEFAULT NULL COMMENT '支付宝',
  `invit` varchar(50) DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL,
  `mibao_question` varchar(200) DEFAULT NULL COMMENT '密保',
  `mibao_answer` varchar(200) DEFAULT NULL COMMENT '密保答案',
  `zhengjian` varchar(20) DEFAULT NULL,
  `idcard_zheng` varchar(200) DEFAULT NULL,
  `idcard_fan` varchar(200) DEFAULT NULL,
  `findpwd_mibao` tinyint(1) DEFAULT '0',
  `findpaypwd_mibao` tinyint(1) DEFAULT '0',
  `is_agree` tinyint(1) DEFAULT '0' COMMENT '0是未进行同意操作（默认） 1是已经同意',
  `idcard_shouchi` varchar(200) DEFAULT NULL,
  `ethpassword` varchar(50) DEFAULT NULL,
  `etcpassword` varchar(50) DEFAULT NULL,
  `pwd_err` tinyint(1) NOT NULL DEFAULT '0' COMMENT '登陆密码错误次数',
  `buy_sum` decimal(20,5) DEFAULT '0.00000',
  `sell_sum` decimal(20,5) DEFAULT '0.00000',
  `trade_sum` decimal(20,5) DEFAULT '0.00000',
  `cpcprize_sum` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE,
  UNIQUE KEY `email` (`email`) USING BTREE,
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=6296 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of tw_user
-- ----------------------------
INSERT INTO `tw_user` VALUES ('6271', 'admin', '18888888888', '1464527801', '821f3157e1a3456bfe1a000a1adf0862', '1', '821f3157e1a3456bfe1a000a1adf0862', '0', '0', '0', '官方测试', '888888111111115555', '503', '', '119.96.222.46', '未分配或者内网IP', '0', '1464527738', '0', '1', null, '13116614698', 'XZHRAP', '', null, '11', 'sfz', null, null, '0', '0', '1', null, '', null, '0', '1.26586', '1.48009', '2.74595', '0');
INSERT INTO `tw_user` VALUES ('6272', '1923191641@qq.com', null, '1510815223', '821f3157e1a3456bfe1a000a1adf0862', '1', 'c293048f9e4415de9d3c28705d5c4646', '0', '0', '0', '赵薇', '341234196510011110', '2', null, '127.0.0.1', '未分配或者内网IP', '0', '1510815223', '0', '1', '1923191641@qq.com', null, 'HJLVBFTDN', null, null, null, 'sfz', 'fdsfs', 'fes', '0', '0', '1', 'frsf', null, null, '0', '0.06710', '0.06710', '0.13420', '0');
INSERT INTO `tw_user` VALUES ('6273', '584253338@qq.com', null, '1511147439', '00b7691d86d96aebd21dd9e138f90840', '1', '0276cbf4fbfedd53ba48720a58df77e3', '0', '0', '0', '啊啊啊', '370782198903190216', '22', '', '0.0.0.0', 'IANA保留地址', '0', '1511147439', '0', '1', '584253338@qq.com', null, 'UBFVWCEQX', null, '你母亲的姓名', '111', 'sfz', '/Upload/lanch/idcard/20171123/s_5a167ffbf32fd.jpg', '/Upload/lanch/idcard/20171123/s_5a167ffc31d45.jpg', '1', '1', '1', '/Upload/lanch/idcard/20171123/s_5a167ffc361ef.jpg', null, null, '0', '1.22800', '4.08300', '5.31100', '0');
INSERT INTO `tw_user` VALUES ('6274', '2507062052@qq.com', null, '1511148905', '821f3157e1a3456bfe1a000a1adf0862', '1', '821f3157e1a3456bfe1a000a1adf0862', '6271', '0', '0', '测试', '371524199606045632', '70', '', '127.0.0.1', '未分配或者内网IP', '0', '1511148905', '0', '1', '2507062052@qq.com', null, 'TUMLIWEJA', null, null, null, 'sfz', '/Upload/lanch/idcard/20171130/s_5a1fd431aa456.jpg', '/Upload/lanch/idcard/20171130/s_5a1fd431afe2f.png', '0', '0', '0', '/Upload/lanch/idcard/20171130/s_5a1fd431b15a0.gif', null, null, '0', '1.25991', '0.11211', '1.37202', '0');
INSERT INTO `tw_user` VALUES ('6276', '317616339@qq.com', null, '1511160291', '00b7691d86d96aebd21dd9e138f90840', '1', '', '6273', '0', '0', '', '', '1', null, '0.0.0.0', 'IANA保留地址', '0', '1511160291', '0', '1', '317616339@qq.com', null, 'IHWNGRXFQ', null, null, null, null, null, null, '0', '0', '0', null, null, null, '0', '0.00000', '0.00000', '0.00000', '0');
INSERT INTO `tw_user` VALUES ('6277', '1145557081@qq.com', '', '1511418765', 'bdffb4956c8818292e957e49816da07d', '1', 'c293048f9e4415de9d3c28705d5c4646', '0', '0', '0', '王玉杰', '320106198310290811', '46', '', '192.168.0.121', '局域网对方和您在同一内部网', '0', '1511418765', '0', '1', '1145557081@qq.com', null, 'TYUFQLSAM', null, '你父亲的姓名', '00009999', 'mgsfz', '/Upload/lanch/idcard/20171127/s_5a1bc9253db9c.png', '/Upload/lanch/idcard/20171127/s_5a1bc9254d5a0.png', '1', '0', '1', '/Upload/lanch/idcard/20171127/s_5a1bc9254ed10.png', null, null, '0', '29.93578', '117.53603', '147.47181', '0');
INSERT INTO `tw_user` VALUES ('6278', '1730601995@qq.com', null, '1511418971', '821f3157e1a3456bfe1a000a1adf0862', '1', '25f9e794323b453885f5181f1b624d0b', '0', '0', '0', '林夕', '320382199304282825', '64', null, '127.0.0.1', '未分配或者内网IP', '0', '1511418971', '0', '1', '1730601995@qq.com', null, 'SGIDBRNUZ', null, null, null, 'sfz', '/Upload/lanch/idcard/20171127/s_5a1bca76a9b7a.png', '/Upload/lanch/idcard/20171127/s_5a1bca76aae7d.jpg', '0', '0', '1', '/Upload/lanch/idcard/20171127/s_5a1bca76abacb.jpg', null, null, '0', '200.00000', '100.00000', '300.00000', '0');
INSERT INTO `tw_user` VALUES ('6279', '1064874779@qq.com', null, '1511420232', '821f3157e1a3456bfe1a000a1adf0862', '1', 'c293048f9e4415de9d3c28705d5c4646', '6274', '6271', '0', '王玉杰', '140224199404210631', '8', null, '192.168.0.121', '局域网对方和您在同一内部网', '0', '1511420232', '0', '1', '1064874779@qq.com', null, 'JQNFHZKDU', null, null, null, 'mgsfz', null, null, '0', '0', '0', null, null, null, '0', '18.91898', '20.00000', '38.91898', '0');
INSERT INTO `tw_user` VALUES ('6280', '2507062051@qq.com', '', '1511504530', '821f3157e1a3456bfe1a000a1adf0862', '1', '', '6274', '6271', '0', '名字1211', '121212122121121', '9', null, '127.0.0.1', '未分配或者内网IP', '0', '1511504530', '0', '1', '2507062051@qq.com', null, 'WBZIGPRQM', null, null, null, null, null, null, '0', '0', '0', null, null, null, '0', '0.00000', '0.00000', '0.00000', '0');
INSERT INTO `tw_user` VALUES ('6281', 'leshangnet@163.com', null, '1511846788', '821f3157e1a3456bfe1a000a1adf0862', '1', '', '6277', '0', '0', '', '', '0', null, '192.168.1.102', '局域网对方和您在同一内部网', '0', '1511846788', '0', '1', 'leshangnet@163.com', null, 'ILCUEWGKF', null, null, null, null, null, null, '0', '0', '0', null, null, null, '0', '0.00000', '0.00000', '0.00000', '0');
INSERT INTO `tw_user` VALUES ('6282', '3468159229@qq.com', null, '1511847200', '821f3157e1a3456bfe1a000a1adf0862', '1', '', '6277', '0', '0', '金东斌', '370685198704055023', '3', null, '192.168.1.102', '局域网对方和您在同一内部网', '0', '1511847200', '0', '1', '3468159229@qq.com', null, 'XYNDVPZIQ', null, null, null, 'hz', '/Upload/lanch/idcard/20171128/s_5a1cf66b82490.png', '/Upload/lanch/idcard/20171128/s_5a1cf66b84f88.png', '0', '0', '0', '/Upload/lanch/idcard/20171128/s_5a1cf66b8a962.png', null, null, '0', '0.00000', '0.00000', '0.00000', '0');
INSERT INTO `tw_user` VALUES ('6283', '2819690238@qq.com', null, '1511847903', '821f3157e1a3456bfe1a000a1adf0862', '1', '', '6282', '6277', '0', '', '', '0', null, '192.168.1.102', '局域网对方和您在同一内部网', '0', '1511847903', '0', '1', '2819690238@qq.com', null, 'QPFNHZKVG', null, null, null, null, null, null, '0', '0', '0', null, null, null, '0', '0.00000', '0.00000', '0.00000', '0');
INSERT INTO `tw_user` VALUES ('6284', '2306196489@qq.com', null, '1511849974', '821f3157e1a3456bfe1a000a1adf0862', '1', '', '6280', '0', '0', '林小夕', '320382199304282825', '14', null, '192.168.1.102', '局域网对方和您在同一内部网', '0', '1511849974', '0', '1', '2306196489@qq.com', null, 'BXDLVFQYE', null, null, null, 'sfz', '', '', '0', '0', '2', '', null, null, '0', '0.00000', '0.00000', '0.00000', '0');
INSERT INTO `tw_user` VALUES ('6285', '110044802@qq.com', null, '1511938544', '821f3157e1a3456bfe1a000a1adf0862', '1', '', '6282', '6277', '0', '进东濒', '370685198704055024', '3', null, '192.168.1.102', '局域网对方和您在同一内部网', '0', '1511938544', '0', '1', '110044802@qq.com', null, 'VGZUELCQI', null, null, null, 'sfz', '/Upload/lanch/idcard/20171129/s_5a1e5b0ea8f96.png', '/Upload/lanch/idcard/20171129/s_5a1e5b0eb5ab9.png', '0', '0', '0', '/Upload/lanch/idcard/20171129/s_5a1e5b0eb7229.png', null, null, '0', '0.00000', '0.00000', '0.00000', '0');
INSERT INTO `tw_user` VALUES ('6286', '964473726@qq.com', null, '1511938998', '821f3157e1a3456bfe1a000a1adf0862', '1', '', '0', '0', '0', '二货', '320382199511282425', '2', null, '127.0.0.1', '未分配或者内网IP', '0', '1511938998', '0', '1', '964473726@qq.com', null, 'VHFWKITCA', null, null, null, 'sfz', '', '', '0', '0', '2', '', null, null, '0', '0.00000', '0.00000', '0.00000', '0');
INSERT INTO `tw_user` VALUES ('6287', '3550455974@qq.com', null, '1511943258', '821f3157e1a3456bfe1a000a1adf0862', '1', '', '0', '0', '0', '王勇飞', '320382199304282825', '1', null, '127.0.0.1', '未分配或者内网IP', '0', '1511943258', '0', '1', '3550455974@qq.com', null, 'VHUCARGYI', null, null, null, 'sfz', '/Upload/lanch/idcard/20171130/s_5a1f81d2a6ea6.jpg', '/Upload/lanch/idcard/20171130/s_5a1f81d2a7b20.jpg', '0', '0', '0', '/Upload/lanch/idcard/20171130/s_5a1f81d2a83e8.jpg', null, null, '0', '0.00000', '0.00000', '0.00000', '0');
INSERT INTO `tw_user` VALUES ('6288', '1020472258@qq.com', null, '1511945643', '821f3157e1a3456bfe1a000a1adf0862', '1', '', '0', '0', '0', '小剑', '320382188506062424', '2', null, '192.168.1.102', '局域网对方和您在同一内部网', '0', '1511945643', '0', '1', '1020472258@qq.com', null, 'ZTGSMYXJH', null, null, null, 'sfz', '/Upload/lanch/idcard/20171130/s_5a1f7dd1e41c5.png', '/Upload/lanch/idcard/20171130/s_5a1f7dd1e56cf.png', '0', '0', '0', '/Upload/lanch/idcard/20171130/s_5a1f7dd1e6ba6.png', null, null, '0', '0.00000', '0.00000', '0.00000', '0');
INSERT INTO `tw_user` VALUES ('6289', '3089539870@qq.com', '', '1512005424', '821f3157e1a3456bfe1a000a1adf0862', '1', 'c293048f9e4415de9d3c28705d5c4646', '6285', '6282', '6277', '王双洁', '140224199404210632', '4', null, '192.168.0.121', '局域网对方和您在同一内部网', '0', '1512005424', '0', '1', '3089539870@qq.com', null, 'BIFCVDEHX', null, null, null, 'hz', '/Upload/lanch/idcard/20171130/s_5a1f7dd4430c0.png', '/Upload/lanch/idcard/20171130/s_5a1f7dd4449ae.png', '0', '0', '1', '/Upload/lanch/idcard/20171130/s_5a1f7dd445d75.png', null, null, '0', '0.00000', '0.00000', '0.00000', '0');
INSERT INTO `tw_user` VALUES ('6290', '18222924979@163.com', null, '1512022439', '39ac84a304405ec1615d724bef93de0c', '1', 'f973244349e9f892dfb8c9b97ca1bcd7', '6277', '0', '0', '小剑', '140224199404210631', '11', 'AVQ4MMHAHABAUK7J|1|0', '192.168.0.134', '局域网对方和您在同一内部网', '0', '1512022439', '0', '1', '18222924979@163.com', null, 'WIBGEQDXN', null, null, null, 'sfz', '/Upload/lanch/idcard/20171130/s_5a1faac19f7cc.jpg', '/Upload/lanch/idcard/20171130/s_5a1faac1a0806.jpg', '0', '0', '0', '/Upload/lanch/idcard/20171130/s_5a1faac1a1846.jpg', null, null, '0', '156.43389', '99.82799', '256.26188', '0');
INSERT INTO `tw_user` VALUES ('6291', '1223785384@qq.com', null, '1512022529', '821f3157e1a3456bfe1a000a1adf0862', '1', 'fea5e09587a9c3f37c76db00f1e914c4', '6290', '6277', '0', '小五', '522225197611053966', '13', null, '192.168.0.105', '局域网对方和您在同一内部网', '0', '1512022529', '0', '1', '1223785384@qq.com', null, 'LVPHSJIAD', null, null, null, 'sfz', '/Upload/lanch/idcard/20171130/s_5a1fa5968b4ed.jpg', '/Upload/lanch/idcard/20171130/s_5a1fa5968c550.jpg', '0', '0', '0', '/Upload/lanch/idcard/20171130/s_5a1fa5968d663.jpg', null, null, '0', '11.27889', '28.00000', '39.27889', '0');
INSERT INTO `tw_user` VALUES ('6292', '374598390@qq.com', null, '1512022604', 'a5b70fb66f9bda8f84dd554e4ed17086', '1', 'e10adc3949ba59abbe56e057f20f883e', '6291', '6290', '6277', '薪捷', '545678765434217781', '18', 'PQ6TE3KORS2UAO7H|1|0', '192.168.0.135', '局域网对方和您在同一内部网', '0', '1512022604', '0', '1', '374598390@qq.com', null, 'MRWZCPKJF', null, null, null, 'sfz', '/Upload/lanch/idcard/20171130/s_5a1fa3a577af6.png', '/Upload/lanch/idcard/20171130/s_5a1fa3a578a66.jpg', '0', '0', '0', '/Upload/lanch/idcard/20171130/s_5a1fa3a5794d8.png', null, null, '0', '2.69599', '50.00000', '52.69599', '0');
INSERT INTO `tw_user` VALUES ('6293', '2622010581@qq.com', null, '1512022680', '821f3157e1a3456bfe1a000a1adf0862', '1', 'c293048f9e4415de9d3c28705d5c4646', '6292', '6291', '6290', '杨玉春', '140224199412013013', '1', null, '192.168.0.129', '局域网对方和您在同一内部网', '0', '1512022680', '0', '1', '2622010581@qq.com', null, 'NCBLUQFKR', null, null, null, 'hz', '/Upload/lanch/idcard/20171130/s_5a1fa5b493b03.jpg', '/Upload/lanch/idcard/20171130/s_5a1fa5b494f90.jpg', '0', '0', '0', '/Upload/lanch/idcard/20171130/s_5a1fa5b495ecf.jpg', null, null, '0', '0.00000', '2.00000', '2.00000', '0');
INSERT INTO `tw_user` VALUES ('6294', '614474772@qq.com', null, '1512028600', '96e79218965eb72c92a549dd5a330112', '1', '821f3157e1a3456bfe1a000a1adf0862', '0', '0', '0', '呵呵', '370683199211110057', '1', null, '127.0.0.1', '未分配或者内网IP', '0', '1512028600', '0', '1', '614474772@qq.com', null, 'IWCNSFKYJ', null, null, null, 'sfz', '', '', '0', '0', '0', '', null, null, '0', '0.00000', '0.01110', '0.01110', '0');
INSERT INTO `tw_user` VALUES ('6295', '878487525@qq.com', null, '1512034198', '821f3157e1a3456bfe1a000a1adf0862', '1', '', '0', '0', '0', '双姐', '370685198704055023', '3', null, '192.168.0.105', '局域网对方和您在同一内部网', '0', '1512034198', '0', '1', '878487525@qq.com', null, 'SBVQDEAJU', null, null, null, 'sfz', '/Upload/lanch/idcard/20171130/s_5a1fd2867d5f0.png', '/Upload/lanch/idcard/20171130/s_5a1fd2867e5a4.png', '0', '0', '0', '/Upload/lanch/idcard/20171130/s_5a1fd2867f21e.png', null, null, '0', '0.00000', '0.00000', '0.00000', '0');

-- ----------------------------
-- Table structure for tw_user_bank
-- ----------------------------
DROP TABLE IF EXISTS `tw_user_bank`;
CREATE TABLE `tw_user_bank` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `name` varchar(200) NOT NULL,
  `bank` varchar(200) NOT NULL DEFAULT '',
  `bankprov` varchar(200) NOT NULL DEFAULT '',
  `bankcity` varchar(200) NOT NULL DEFAULT '',
  `bankaddr` varchar(200) NOT NULL DEFAULT '',
  `bankcard` varchar(200) NOT NULL DEFAULT '',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tw_user_bank
-- ----------------------------
INSERT INTO `tw_user_bank` VALUES ('1', '6272', '银行卡', '浦发银行', '北京', '东城区', '12312312', '1231231231212', '0', '1510817422', '0', '1');

-- ----------------------------
-- Table structure for tw_user_bank_type
-- ----------------------------
DROP TABLE IF EXISTS `tw_user_bank_type`;
CREATE TABLE `tw_user_bank_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `img` varchar(200) NOT NULL DEFAULT '',
  `mytx` varchar(200) NOT NULL DEFAULT '',
  `remark` varchar(50) NOT NULL DEFAULT '',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='常用银行地址';

-- ----------------------------
-- Records of tw_user_bank_type
-- ----------------------------
INSERT INTO `tw_user_bank_type` VALUES ('4', 'boc', '中国银行', 'http://www.boc.cn/', 'img_56937003683ce.jpg', '', '', '0', '1452503043', '0', '1');
INSERT INTO `tw_user_bank_type` VALUES ('5', 'abc', '农业银行', 'http://www.abchina.com/cn/', 'img_569370458b18d.jpg', '', '', '0', '1452503109', '0', '1');
INSERT INTO `tw_user_bank_type` VALUES ('6', 'bccb', '北京银行', 'http://www.bankofbeijing.com.cn/', 'img_569370588dcdc.jpg', '', '', '0', '1452503128', '0', '1');
INSERT INTO `tw_user_bank_type` VALUES ('8', 'ccb', '建设银行', 'http://www.ccb.com/', 'img_5693709bbd20f.jpg', '', '', '0', '1452503195', '0', '1');
INSERT INTO `tw_user_bank_type` VALUES ('9', 'ceb', '光大银行', 'http://www.bankofbeijing.com.cn/', 'img_569370b207cc8.jpg', '', '', '0', '1452503218', '0', '1');
INSERT INTO `tw_user_bank_type` VALUES ('10', 'cib', '兴业银行', 'http://www.cib.com.cn/cn/index.html', 'img_569370d29bf59.jpg', '', '', '0', '1452503250', '0', '1');
INSERT INTO `tw_user_bank_type` VALUES ('11', 'citic', '中信银行', 'http://www.ecitic.com/', 'img_569370fb7a1b3.jpg', '', '', '0', '1452503291', '0', '1');
INSERT INTO `tw_user_bank_type` VALUES ('12', 'cmb', '招商银行', 'http://www.cmbchina.com/', 'img_5693710a9ac9c.jpg', '', '', '0', '1452503306', '0', '1');
INSERT INTO `tw_user_bank_type` VALUES ('13', 'cmbc', '民生银行', 'http://www.cmbchina.com/', 'img_5693711f97a9d.jpg', '', '', '0', '1452503327', '0', '1');
INSERT INTO `tw_user_bank_type` VALUES ('14', 'comm', '交通银行', 'http://www.bankcomm.com/BankCommSite/default.shtml', 'img_5693713076351.jpg', '', '', '0', '1452503344', '0', '1');
INSERT INTO `tw_user_bank_type` VALUES ('16', 'gdb', '广发银行', 'http://www.cgbchina.com.cn/', 'img_56937154bebc5.jpg', '', '', '0', '1452503380', '0', '1');
INSERT INTO `tw_user_bank_type` VALUES ('17', 'icbc', '工商银行', 'http://www.icbc.com.cn/icbc/', 'img_56937162db7f5.jpg', '', '', '0', '1452503394', '0', '1');
INSERT INTO `tw_user_bank_type` VALUES ('19', 'psbc', '邮政银行', 'http://www.psbc.com/portal/zh_CN/index.html', 'img_5693717eefaa3.jpg', '', '', '0', '1452503422', '0', '1');
INSERT INTO `tw_user_bank_type` VALUES ('20', 'spdb', '浦发银行', 'http://www.spdb.com.cn/chpage/c1/', 'img_5693718f1d70e.jpg', '', '', '0', '1452503439', '0', '1');
INSERT INTO `tw_user_bank_type` VALUES ('21', 'szpab', '平安银行', 'http://bank.pingan.com/', '56c2e4c9aff85.jpg', '', '', '0', '1455613129', '0', '1');
INSERT INTO `tw_user_bank_type` VALUES ('22', 'alipay', '支付宝', 'https://www.alipay.com/', '56c2e4c9aff85.jpg', '', '', '0', '1455613129', '0', '0');
INSERT INTO `tw_user_bank_type` VALUES ('23', 'tenpay', '财付通', 'https://www.tenpay.com/v3/', '56c2e4c9aff85.jpg', '', '', '0', '1455613129', '0', '0');

-- ----------------------------
-- Table structure for tw_user_coin
-- ----------------------------
DROP TABLE IF EXISTS `tw_user_coin`;
CREATE TABLE `tw_user_coin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `btc` decimal(20,8) unsigned NOT NULL,
  `btcd` decimal(20,8) unsigned NOT NULL,
  `btcb` varchar(200) NOT NULL,
  `ltc` decimal(20,8) unsigned NOT NULL,
  `ltcd` decimal(20,8) unsigned NOT NULL,
  `ltcb` varchar(200) NOT NULL,
  `bcc` decimal(20,8) unsigned NOT NULL,
  `bccd` decimal(20,8) unsigned NOT NULL,
  `bccb` varchar(200) NOT NULL,
  `eth` decimal(20,8) unsigned NOT NULL,
  `ethd` decimal(20,8) unsigned NOT NULL,
  `ethb` varchar(200) NOT NULL,
  `cny` decimal(20,8) NOT NULL DEFAULT '0.00000000',
  `cnyd` decimal(20,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='用户币种表';

-- ----------------------------
-- Records of tw_user_coin
-- ----------------------------
INSERT INTO `tw_user_coin` VALUES ('1', '6271', '10.10026264', '0.12265698', '1Pkagvrp88Z8XrvCfFT4xfwR34s8gMRnfv', '12.99990000', '0.00010000', 'LaUNJ8GY7XXT3CcapCUF2ZcVjm1QbBJgQS', '14.11200000', '0.00000000', 'CGBDjtbhvUuBNZ5HeLKzJszTEwKCWCF4RE', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000');
INSERT INTO `tw_user_coin` VALUES ('2', '6272', '9.99986580', '0.00000000', '', '100.00000000', '0.00000000', '', '1000.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '100.49000000', '0.00000000');
INSERT INTO `tw_user_coin` VALUES ('3', '6273', '12.84968900', '0.00000000', 'WVAqr1HB5g45VZfLKHkWZA6dfcDSzfiDYc', '100.00000000', '0.00000000', 'WVAqr1HB5g45VZfLKHkWZA6dfcDSzfiDYc', '0.00000000', '0.00000000', 'WVAqr1HB5g45VZfLKHkWZA6dfcDSzfiDYc', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000');
INSERT INTO `tw_user_coin` VALUES ('4', '6274', '8.83472295', '0.03470503', '', '8.00000000', '0.00000000', '', '20.00000000', '0.00000000', 'Tagjj23FQisM1a4zdgG8RcwWs7jGo5gDFh', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000');
INSERT INTO `tw_user_coin` VALUES ('6', '6276', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000');
INSERT INTO `tw_user_coin` VALUES ('7', '6277', '10068.49664105', '0.00000000', '', '0.00000000', '0.00000000', '', '53.29790000', '0.00000000', 'Tp4RxXKdhbzhW6zbP6QVDKe1QfN7haeHM3', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000');
INSERT INTO `tw_user_coin` VALUES ('8', '6278', '4899.80000000', '0.00000000', '', '5000.00000000', '0.00000000', '', '5009.00000000', '0.00000000', 'TqPwUvERufQC3i7ibWgBZptn6u8YspnH5M', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000');
INSERT INTO `tw_user_coin` VALUES ('9', '6279', '104.07202000', '0.00000000', '', '0.00000000', '0.00000000', '', '37.59000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000');
INSERT INTO `tw_user_coin` VALUES ('10', '6280', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', 'TbEq8XjKrCAFU91a8e1JSKDPCwysbNRHs3', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000');
INSERT INTO `tw_user_coin` VALUES ('11', '6281', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000');
INSERT INTO `tw_user_coin` VALUES ('12', '6282', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000');
INSERT INTO `tw_user_coin` VALUES ('13', '6283', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000');
INSERT INTO `tw_user_coin` VALUES ('14', '6284', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000');
INSERT INTO `tw_user_coin` VALUES ('15', '6285', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', 'Tq2L4WL9Y5LktJrBxrh62Jx8RXkc9U7CWX', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000');
INSERT INTO `tw_user_coin` VALUES ('16', '6286', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000');
INSERT INTO `tw_user_coin` VALUES ('17', '6287', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000');
INSERT INTO `tw_user_coin` VALUES ('18', '6288', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000');
INSERT INTO `tw_user_coin` VALUES ('19', '6289', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000');
INSERT INTO `tw_user_coin` VALUES ('20', '6290', '777.93330603', '0.00000000', '', '0.00000000', '0.00000000', '', '834.99999900', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000');
INSERT INTO `tw_user_coin` VALUES ('21', '6291', '116.68331000', '0.00000000', '', '0.00000000', '0.00000000', '', '70.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000');
INSERT INTO `tw_user_coin` VALUES ('22', '6292', '148.04469800', '0.00000000', '', '0.00000000', '0.00000000', '', '99.88888800', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000');
INSERT INTO `tw_user_coin` VALUES ('23', '6293', '101.99390000', '0.00000000', '', '0.00000000', '0.00000000', '', '98.88880000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000');
INSERT INTO `tw_user_coin` VALUES ('24', '6294', '1000.01108890', '0.00000000', '', '9.00000000', '0.00000000', '', '10.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000');
INSERT INTO `tw_user_coin` VALUES ('25', '6295', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000');

-- ----------------------------
-- Table structure for tw_user_log
-- ----------------------------
DROP TABLE IF EXISTS `tw_user_log`;
CREATE TABLE `tw_user_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT '',
  `remark` varchar(50) NOT NULL DEFAULT '',
  `addip` varchar(20) NOT NULL DEFAULT '',
  `addr` varchar(100) NOT NULL DEFAULT '',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `session_key` varchar(100) DEFAULT NULL,
  `state` tinyint(4) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `state` (`state`) USING BTREE,
  KEY `session_key` (`session_key`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=416 DEFAULT CHARSET=utf8 COMMENT='用户记录表'
/*!50100 PARTITION BY RANGE (id)
(PARTITION p1 VALUES LESS THAN (100000) ENGINE = InnoDB,
 PARTITION p2 VALUES LESS THAN (200000) ENGINE = InnoDB,
 PARTITION p3 VALUES LESS THAN (300000) ENGINE = InnoDB,
 PARTITION p4 VALUES LESS THAN (400000) ENGINE = InnoDB,
 PARTITION p5 VALUES LESS THAN (500000) ENGINE = InnoDB,
 PARTITION p6 VALUES LESS THAN (600000) ENGINE = InnoDB,
 PARTITION p7 VALUES LESS THAN (700000) ENGINE = InnoDB,
 PARTITION p8 VALUES LESS THAN (800000) ENGINE = InnoDB,
 PARTITION p9 VALUES LESS THAN (900000) ENGINE = InnoDB,
 PARTITION p10 VALUES LESS THAN (1000000) ENGINE = InnoDB,
 PARTITION p11 VALUES LESS THAN MAXVALUE ENGINE = InnoDB) */;

-- ----------------------------
-- Records of tw_user_log
-- ----------------------------
INSERT INTO `tw_user_log` VALUES ('318', '6271', 'login', 'PC端Windows NT 6.3，Chrome/62.0.3202.75登录', '127.0.0.1', '未分配或者内网IP', '0', '1512021355', '1512022243', '1', 'n4jj9kbutu9f1mmd46cmn9nn17', '0');
INSERT INTO `tw_user_log` VALUES ('319', '6274', 'login', '手机端Windows NT 6.1，Chrome/60.0.3112.101登录', '127.0.0.1', '未分配或者内网IP', '0', '1512021774', '1512022282', '1', '493j68vq21q9la29bglim71bf3', '0');
INSERT INTO `tw_user_log` VALUES ('320', '6277', 'login', 'PC端Windows NT 10.0，Chrome/58.0.3029.110登录', '192.168.0.121', '局域网对方和您在同一内部网', '0', '1512022123', '1512022126', '1', '6ie4vns9a0jl6gl11jb2fnita1', '0');
INSERT INTO `tw_user_log` VALUES ('321', '6277', 'login', 'PC端Windows NT 10.0，Chrome/58.0.3029.110登录', '192.168.0.121', '局域网对方和您在同一内部网', '0', '1512022125', '1512029935', '1', '6ie4vns9a0jl6gl11jb2fnita1', '0');
INSERT INTO `tw_user_log` VALUES ('322', '6288', 'login', 'PC端Windows NT 6.1，Chrome/55.0.2883.87登录', '192.168.0.134', '局域网对方和您在同一内部网', '0', '1512022143', '1512022325', '1', '7ucc4gu98k2kipf8lf7m1eq2n3', '0');
INSERT INTO `tw_user_log` VALUES ('323', '6274', 'login', 'PC端Windows NT 6.1，Chrome/60.0.3112.101登录', '127.0.0.1', '未分配或者内网IP', '0', '1512022282', '1512022552', '1', '8294tsdh73jle99cftsi72p8n5', '0');
INSERT INTO `tw_user_log` VALUES ('324', '6278', 'login', 'PC端Windows NT 6.3，Chrome/62.0.3202.75登录', '127.0.0.1', '未分配或者内网IP', '0', '1512022310', '1512022335', '1', 'n4jj9kbutu9f1mmd46cmn9nn17', '0');
INSERT INTO `tw_user_log` VALUES ('325', '6278', 'login', 'PC端Windows NT 6.3，Chrome/62.0.3202.75登录', '127.0.0.1', '未分配或者内网IP', '0', '1512022335', '1512024304', '1', 'n4jj9kbutu9f1mmd46cmn9nn17', '0');
INSERT INTO `tw_user_log` VALUES ('326', '6290', 'login', '注册完成后自动登录', '192.168.0.134', '局域网对方和您在同一内部网', '0', '1512022440', '1512024676', '1', '7ucc4gu98k2kipf8lf7m1eq2n3', '0');
INSERT INTO `tw_user_log` VALUES ('327', '6291', 'login', '注册完成后自动登录', '192.168.0.105', '局域网对方和您在同一内部网', '0', '1512022530', '1512024851', '1', 'f7pu865r2rqch316tf3dnrhi01', '0');
INSERT INTO `tw_user_log` VALUES ('328', '6271', 'login', 'PC端Windows NT 6.1，Chrome/60.0.3112.101登录', '127.0.0.1', '未分配或者内网IP', '0', '1512022562', '1512024315', '1', '8294tsdh73jle99cftsi72p8n5', '0');
INSERT INTO `tw_user_log` VALUES ('329', '6292', 'login', '注册完成后自动登录', '192.168.0.135', '局域网对方和您在同一内部网', '0', '1512022605', '1512024841', '1', 't373l5dhm4mqlkk9ih0djrnu21', '0');
INSERT INTO `tw_user_log` VALUES ('330', '6293', 'login', '注册完成后自动登录', '192.168.0.129', '局域网对方和您在同一内部网', '0', '1512022681', '1512028531', '1', '8ki7hrfb2gbculove9gagevca2', '0');
INSERT INTO `tw_user_log` VALUES ('331', '6271', 'login', 'PC端Windows NT 6.3，Chrome/62.0.3202.75登录', '127.0.0.1', '未分配或者内网IP', '0', '1512024315', '1512024309', '1', 'n4jj9kbutu9f1mmd46cmn9nn17', '0');
INSERT INTO `tw_user_log` VALUES ('332', '6271', 'login', '手机端，Safari/601.1登录', '127.0.0.1', '未分配或者内网IP', '0', '1512024335', '1512029962', '1', 'n4jj9kbutu9f1mmd46cmn9nn17', '0');
INSERT INTO `tw_user_log` VALUES ('333', '6274', 'login', 'PC端Windows NT 6.1，Chrome/60.0.3112.101登录', '127.0.0.1', '未分配或者内网IP', '0', '1512024423', '1512025191', '1', '8294tsdh73jle99cftsi72p8n5', '0');
INSERT INTO `tw_user_log` VALUES ('334', '6290', 'login', 'PC端Windows NT 6.1，Chrome/55.0.2883.87登录', '192.168.0.134', '局域网对方和您在同一内部网', '0', '1512024685', '1512024960', '1', '7ucc4gu98k2kipf8lf7m1eq2n3', '0');
INSERT INTO `tw_user_log` VALUES ('335', '6291', 'login', 'PC端Windows NT 10.0，Chrome/45.0.2454.101登录', '192.168.0.105', '局域网对方和您在同一内部网', '0', '1512024867', '1512026229', '1', 'f7pu865r2rqch316tf3dnrhi01', '0');
INSERT INTO `tw_user_log` VALUES ('336', '6290', 'login', 'PC端Windows NT 6.1，Chrome/55.0.2883.87登录', '192.168.0.134', '局域网对方和您在同一内部网', '0', '1512025103', '1512026249', '1', '7ucc4gu98k2kipf8lf7m1eq2n3', '0');
INSERT INTO `tw_user_log` VALUES ('337', '6292', 'login', 'PC端Windows NT 6.1，Chrome/49.0.2623.221登录', '192.168.0.135', '局域网对方和您在同一内部网', '0', '1512025116', '1512025571', '1', 't373l5dhm4mqlkk9ih0djrnu21', '0');
INSERT INTO `tw_user_log` VALUES ('338', '6274', 'login', 'PC端Windows NT 6.1，Chrome/60.0.3112.101登录', '127.0.0.1', '未分配或者内网IP', '0', '1512025350', '1512031701', '1', '8294tsdh73jle99cftsi72p8n5', '0');
INSERT INTO `tw_user_log` VALUES ('339', '6292', 'login', 'PC端Windows NT 6.1，Chrome/49.0.2623.221登录', '192.168.0.135', '局域网对方和您在同一内部网', '0', '1512025792', '1512025803', '1', 't373l5dhm4mqlkk9ih0djrnu21', '0');
INSERT INTO `tw_user_log` VALUES ('340', '6292', 'login', 'PC端Windows NT 6.1，Chrome/49.0.2623.221登录', '192.168.0.135', '局域网对方和您在同一内部网', '0', '1512025800', '1512025803', '1', 't373l5dhm4mqlkk9ih0djrnu21', '0');
INSERT INTO `tw_user_log` VALUES ('341', '6292', 'login', 'PC端Windows NT 6.1，Chrome/49.0.2623.221登录', '192.168.0.135', '局域网对方和您在同一内部网', '0', '1512025801', '1512025803', '1', 't373l5dhm4mqlkk9ih0djrnu21', '0');
INSERT INTO `tw_user_log` VALUES ('342', '6292', 'login', 'PC端Windows NT 6.1，Chrome/49.0.2623.221登录', '192.168.0.135', '局域网对方和您在同一内部网', '0', '1512025801', '1512025803', '1', 't373l5dhm4mqlkk9ih0djrnu21', '0');
INSERT INTO `tw_user_log` VALUES ('343', '6292', 'login', 'PC端Windows NT 6.1，Chrome/49.0.2623.221登录', '192.168.0.135', '局域网对方和您在同一内部网', '0', '1512025802', '1512025808', '1', 't373l5dhm4mqlkk9ih0djrnu21', '0');
INSERT INTO `tw_user_log` VALUES ('344', '6292', 'login', 'PC端Windows NT 6.1，Chrome/49.0.2623.221登录', '192.168.0.135', '局域网对方和您在同一内部网', '0', '1512025807', '1512025817', '1', 't373l5dhm4mqlkk9ih0djrnu21', '0');
INSERT INTO `tw_user_log` VALUES ('345', '6292', 'login', 'PC端Windows NT 6.1，Chrome/49.0.2623.221登录', '192.168.0.135', '局域网对方和您在同一内部网', '0', '1512025817', '1512025822', '1', 't373l5dhm4mqlkk9ih0djrnu21', '0');
INSERT INTO `tw_user_log` VALUES ('346', '6292', 'login', 'PC端Windows NT 6.1，Chrome/49.0.2623.221登录', '192.168.0.135', '局域网对方和您在同一内部网', '0', '1512025821', '1512025827', '1', 't373l5dhm4mqlkk9ih0djrnu21', '0');
INSERT INTO `tw_user_log` VALUES ('347', '6292', 'login', 'PC端Windows NT 6.1，Chrome/49.0.2623.221登录', '192.168.0.135', '局域网对方和您在同一内部网', '0', '1512025826', '1512025834', '1', 't373l5dhm4mqlkk9ih0djrnu21', '0');
INSERT INTO `tw_user_log` VALUES ('348', '6292', 'login', 'PC端Windows NT 6.1，Chrome/49.0.2623.221登录', '192.168.0.135', '局域网对方和您在同一内部网', '0', '1512025832', '1512025839', '1', 't373l5dhm4mqlkk9ih0djrnu21', '0');
INSERT INTO `tw_user_log` VALUES ('349', '6292', 'login', 'PC端Windows NT 6.1，Chrome/49.0.2623.221登录', '192.168.0.135', '局域网对方和您在同一内部网', '0', '1512025838', '1512025839', '1', 't373l5dhm4mqlkk9ih0djrnu21', '0');
INSERT INTO `tw_user_log` VALUES ('350', '6292', 'login', 'PC端Windows NT 6.1，Chrome/49.0.2623.221登录', '192.168.0.135', '局域网对方和您在同一内部网', '0', '1512025839', '1512025845', '1', 't373l5dhm4mqlkk9ih0djrnu21', '0');
INSERT INTO `tw_user_log` VALUES ('351', '6292', 'login', 'PC端Windows NT 6.1，Chrome/49.0.2623.221登录', '192.168.0.135', '局域网对方和您在同一内部网', '0', '1512025844', '1512025851', '1', 't373l5dhm4mqlkk9ih0djrnu21', '0');
INSERT INTO `tw_user_log` VALUES ('352', '6292', 'login', 'PC端Windows NT 6.1，Chrome/49.0.2623.221登录', '192.168.0.135', '局域网对方和您在同一内部网', '0', '1512025851', '1512026371', '1', 't373l5dhm4mqlkk9ih0djrnu21', '0');
INSERT INTO `tw_user_log` VALUES ('353', '6291', 'login', '手机端，unkown登录', '192.168.1.102', '局域网对方和您在同一内部网', '0', '1512026229', '1512026282', '1', 'obsio34i4ae7ormq2l157ot265', '0');
INSERT INTO `tw_user_log` VALUES ('354', '6290', 'login', '手机端，Safari/604.1登录', '192.168.1.102', '局域网对方和您在同一内部网', '0', '1512026248', '1512026262', '1', '9ciprd92jlt3sluphbvkokvkp4', '0');
INSERT INTO `tw_user_log` VALUES ('355', '6292', 'login', '手机端，Safari/602.1登录', '192.168.0.118', '局域网对方和您在同一内部网', '0', '1512026369', '1512026371', '1', 'v9j20k15on59t9fqobcm4udf24', '0');
INSERT INTO `tw_user_log` VALUES ('356', '6292', 'login', '手机端，Safari/602.1登录', '192.168.0.118', '局域网对方和您在同一内部网', '0', '1512026423', '1512026548', '1', 'v9j20k15on59t9fqobcm4udf24', '0');
INSERT INTO `tw_user_log` VALUES ('357', '6291', 'login', '手机端，unkown登录', '192.168.1.102', '局域网对方和您在同一内部网', '0', '1512026464', '1512026751', '1', 'obsio34i4ae7ormq2l157ot265', '0');
INSERT INTO `tw_user_log` VALUES ('358', '6290', 'login', 'PC端Windows NT 6.1，Chrome/55.0.2883.87登录', '192.168.0.134', '局域网对方和您在同一内部网', '0', '1512026526', '1512026623', '1', '7ucc4gu98k2kipf8lf7m1eq2n3', '0');
INSERT INTO `tw_user_log` VALUES ('359', '6292', 'login', 'PC端Windows NT 6.1，Chrome/49.0.2623.221登录', '192.168.0.135', '局域网对方和您在同一内部网', '0', '1512026548', '1512026548', '1', 't373l5dhm4mqlkk9ih0djrnu21', '1');
INSERT INTO `tw_user_log` VALUES ('360', '6290', 'login', '手机端，Safari/604.1登录', '192.168.1.102', '局域网对方和您在同一内部网', '0', '1512026622', '1512026630', '1', '9ciprd92jlt3sluphbvkokvkp4', '0');
INSERT INTO `tw_user_log` VALUES ('361', '6290', 'login', 'PC端Windows NT 6.1，Chrome/55.0.2883.87登录', '192.168.0.134', '局域网对方和您在同一内部网', '0', '1512026739', '1512027636', '1', '7ucc4gu98k2kipf8lf7m1eq2n3', '0');
INSERT INTO `tw_user_log` VALUES ('362', '6291', 'login', '手机端，Safari/604.1登录', '192.168.1.102', '局域网对方和您在同一内部网', '0', '1512026751', '1512026799', '1', 'lkii9a7275eqhjj0fsqfkkrp94', '0');
INSERT INTO `tw_user_log` VALUES ('363', '6291', 'login', 'PC端Windows NT 10.0，Chrome/45.0.2454.101登录', '192.168.0.105', '局域网对方和您在同一内部网', '0', '1512026799', '1512026796', '1', 'f7pu865r2rqch316tf3dnrhi01', '0');
INSERT INTO `tw_user_log` VALUES ('364', '6291', 'login', '手机端，Safari/604.1登录', '192.168.1.102', '局域网对方和您在同一内部网', '0', '1512026843', '1512027913', '1', 'lkii9a7275eqhjj0fsqfkkrp94', '0');
INSERT INTO `tw_user_log` VALUES ('365', '6290', 'login', '手机端，Safari/604.1登录', '192.168.1.102', '局域网对方和您在同一内部网', '0', '1512027710', '1512030448', '1', '9ciprd92jlt3sluphbvkokvkp4', '0');
INSERT INTO `tw_user_log` VALUES ('366', '6291', 'login', '手机端，Safari/604.1登录', '192.168.1.102', '局域网对方和您在同一内部网', '0', '1512027964', '1512030431', '1', 'lkii9a7275eqhjj0fsqfkkrp94', '0');
INSERT INTO `tw_user_log` VALUES ('367', '6279', 'login', '手机端Windows NT 10.0，Chrome/58.0.3029.110登录', '192.168.1.102', '局域网对方和您在同一内部网', '0', '1512028474', '1512033472', '1', 'k40lu4cicqgnnrm8cm6og130s5', '0');
INSERT INTO `tw_user_log` VALUES ('368', '6293', 'login', '手机端，unkown登录', '192.168.1.102', '局域网对方和您在同一内部网', '0', '1512028531', '1512028531', '1', 'ab00ffrggcc64io187itq3q8c7', '1');
INSERT INTO `tw_user_log` VALUES ('369', '6294', 'login', '注册完成后自动登陆', '127.0.0.1', '未分配或者内网IP', '0', '1512028600', '1512089188', '1', 'j4m03rpud7s8vfc257d0r1nc46', '0');
INSERT INTO `tw_user_log` VALUES ('370', '6277', 'login', 'PC端Windows NT 6.3，Chrome/62.0.3202.75登录', '127.0.0.1', '未分配或者内网IP', '0', '1512029990', '1512030054', '1', 'n4jj9kbutu9f1mmd46cmn9nn17', '0');
INSERT INTO `tw_user_log` VALUES ('371', '6271', 'login', 'PC端Windows NT 6.3，Chrome/62.0.3202.75登录', '127.0.0.1', '未分配或者内网IP', '0', '1512030117', '1512030294', '1', 'n4jj9kbutu9f1mmd46cmn9nn17', '0');
INSERT INTO `tw_user_log` VALUES ('372', '6284', 'login', 'PC端Windows NT 6.3，Chrome/62.0.3202.75登录', '127.0.0.1', '未分配或者内网IP', '0', '1512030337', '1512030408', '1', 'n4jj9kbutu9f1mmd46cmn9nn17', '0');
INSERT INTO `tw_user_log` VALUES ('373', '6284', 'login', 'PC端Windows NT 6.3，Chrome/62.0.3202.75登录', '127.0.0.1', '未分配或者内网IP', '0', '1512030408', '1512031563', '1', 'n4jj9kbutu9f1mmd46cmn9nn17', '0');
INSERT INTO `tw_user_log` VALUES ('374', '6291', 'login', 'PC端Windows NT 10.0，Chrome/45.0.2454.101登录', '192.168.0.105', '局域网对方和您在同一内部网', '0', '1512030430', '1512030498', '1', 'f7pu865r2rqch316tf3dnrhi01', '0');
INSERT INTO `tw_user_log` VALUES ('375', '6290', 'login', 'PC端Windows NT 6.1，Chrome/55.0.2883.87登录', '192.168.0.134', '局域网对方和您在同一内部网', '0', '1512030448', '1512030495', '1', '7ucc4gu98k2kipf8lf7m1eq2n3', '0');
INSERT INTO `tw_user_log` VALUES ('376', '6277', 'login', 'PC端Windows NT 10.0，Chrome/58.0.3029.110登录', '192.168.0.121', '局域网对方和您在同一内部网', '0', '1512030482', '1512033520', '1', '6ie4vns9a0jl6gl11jb2fnita1', '0');
INSERT INTO `tw_user_log` VALUES ('377', '6291', 'login', 'PC端Windows NT 10.0，Chrome/45.0.2454.101登录', '192.168.0.105', '局域网对方和您在同一内部网', '0', '1512030507', '1512032396', '1', 'f7pu865r2rqch316tf3dnrhi01', '0');
INSERT INTO `tw_user_log` VALUES ('378', '6290', 'login', 'PC端Windows NT 6.1，Chrome/55.0.2883.87登录', '192.168.0.134', '局域网对方和您在同一内部网', '0', '1512030520', '1512032415', '1', '7ucc4gu98k2kipf8lf7m1eq2n3', '0');
INSERT INTO `tw_user_log` VALUES ('379', '6278', 'login', 'PC端Windows NT 6.3，Chrome/62.0.3202.75登录', '127.0.0.1', '未分配或者内网IP', '0', '1512031579', '1512088541', '1', 'n4jj9kbutu9f1mmd46cmn9nn17', '0');
INSERT INTO `tw_user_log` VALUES ('380', '6274', 'login', '手机端，Safari/601.1登录', '127.0.0.1', '未分配或者内网IP', '0', '1512031701', '1512031701', '1', '493j68vq21q9la29bglim71bf3', '0');
INSERT INTO `tw_user_log` VALUES ('381', '6274', 'login', '手机端，Safari/601.1登录', '127.0.0.1', '未分配或者内网IP', '0', '1512031936', '1512032028', '1', '493j68vq21q9la29bglim71bf3', '0');
INSERT INTO `tw_user_log` VALUES ('382', '6274', 'login', 'PC端Windows NT 6.1，Chrome/60.0.3112.101登录', '127.0.0.1', '未分配或者内网IP', '0', '1512032027', '1512032028', '1', '8294tsdh73jle99cftsi72p8n5', '0');
INSERT INTO `tw_user_log` VALUES ('383', '6274', 'login', 'PC端Windows NT 6.1，Chrome/60.0.3112.101登录', '127.0.0.1', '未分配或者内网IP', '0', '1512032038', '1512089099', '1', '8294tsdh73jle99cftsi72p8n5', '0');
INSERT INTO `tw_user_log` VALUES ('384', '6291', 'login', '手机端，Safari/604.1登录', '192.168.1.102', '局域网对方和您在同一内部网', '0', '1512032394', '1512032396', '1', 'lkii9a7275eqhjj0fsqfkkrp94', '0');
INSERT INTO `tw_user_log` VALUES ('385', '6291', 'login', '手机端，Safari/604.1登录', '192.168.1.102', '局域网对方和您在同一内部网', '0', '1512032395', '1512032432', '1', 'lkii9a7275eqhjj0fsqfkkrp94', '0');
INSERT INTO `tw_user_log` VALUES ('386', '6291', 'login', 'PC端Windows NT 10.0，Chrome/45.0.2454.101登录', '192.168.0.105', '局域网对方和您在同一内部网', '0', '1512032531', '1512034150', '1', 'f7pu865r2rqch316tf3dnrhi01', '0');
INSERT INTO `tw_user_log` VALUES ('387', '6290', 'login', 'PC端Windows NT 6.1，Chrome/55.0.2883.87登录', '192.168.0.134', '局域网对方和您在同一内部网', '0', '1512032671', '1512108001', '1', '7ucc4gu98k2kipf8lf7m1eq2n3', '0');
INSERT INTO `tw_user_log` VALUES ('388', '6277', 'login', '手机端，Safari/601.1登录', '192.168.1.102', '局域网对方和您在同一内部网', '0', '1512033517', '1512033531', '1', 'drrn4qlve05nbvjr1tm65hb8n1', '0');
INSERT INTO `tw_user_log` VALUES ('389', '6279', 'login', 'PC端Windows NT 10.0，Chrome/58.0.3029.110登录', '192.168.0.121', '局域网对方和您在同一内部网', '0', '1512033642', '1512033645', '1', '6ie4vns9a0jl6gl11jb2fnita1', '0');
INSERT INTO `tw_user_log` VALUES ('390', '6279', 'login', 'PC端Windows NT 10.0，Chrome/58.0.3029.110登录', '192.168.0.121', '局域网对方和您在同一内部网', '0', '1512033644', '1512034854', '1', '6ie4vns9a0jl6gl11jb2fnita1', '0');
INSERT INTO `tw_user_log` VALUES ('391', '6295', 'login', '注册完成后自动登录', '192.168.0.105', '局域网对方和您在同一内部网', '0', '1512034205', '1512034247', '1', 'f7pu865r2rqch316tf3dnrhi01', '0');
INSERT INTO `tw_user_log` VALUES ('392', '6295', 'login', '手机端，Safari/604.1登录', '192.168.1.102', '局域网对方和您在同一内部网', '0', '1512034246', '1512034874', '1', 'lkii9a7275eqhjj0fsqfkkrp94', '0');
INSERT INTO `tw_user_log` VALUES ('393', '6295', 'login', 'PC端Windows NT 10.0，Chrome/58.0.3029.110登录', '192.168.0.121', '局域网对方和您在同一内部网', '0', '1512034873', '1512034903', '1', '6ie4vns9a0jl6gl11jb2fnita1', '0');
INSERT INTO `tw_user_log` VALUES ('394', '6295', 'login', 'PC端Windows NT 10.0，Chrome/58.0.3029.110登录', '192.168.0.121', '局域网对方和您在同一内部网', '0', '1512034903', '1512036230', '1', '6ie4vns9a0jl6gl11jb2fnita1', '0');
INSERT INTO `tw_user_log` VALUES ('395', '6291', 'login', 'PC端Windows NT 10.0，Chrome/45.0.2454.101登录', '192.168.0.105', '局域网对方和您在同一内部网', '0', '1512036091', '1512036091', '1', 'f7pu865r2rqch316tf3dnrhi01', '1');
INSERT INTO `tw_user_log` VALUES ('396', '6277', 'login', 'PC端Windows NT 10.0，Chrome/58.0.3029.110登录', '192.168.0.121', '局域网对方和您在同一内部网', '0', '1512036336', '1512100629', '1', '6ie4vns9a0jl6gl11jb2fnita1', '0');
INSERT INTO `tw_user_log` VALUES ('397', '6278', 'login', 'PC端Windows NT 6.3，Chrome/62.0.3202.75登录', '127.0.0.1', '未分配或者内网IP', '0', '1512088541', '1512175283', '1', 'u9kr828uhvg5o5bvn6smptsnu2', '0');
INSERT INTO `tw_user_log` VALUES ('398', '6274', 'login', 'PC端Windows NT 6.1，Chrome/60.0.3112.101登录', '127.0.0.1', '未分配或者内网IP', '0', '1512089099', '1512104781', '1', 'hr93gtbhg53frsk31e0knleck7', '0');
INSERT INTO `tw_user_log` VALUES ('399', '6277', 'login', 'PC端Windows NT 10.0，Chrome/58.0.3029.110登录', '192.168.0.121', '局域网对方和您在同一内部网', '0', '1512100629', '1512107842', '1', 'fggrh92tqeaedhudj1h0kahih3', '0');
INSERT INTO `tw_user_log` VALUES ('400', '6271', 'login', 'PC端Windows NT 6.1，Chrome/60.0.3112.101登录', '127.0.0.1', '未分配或者内网IP', '0', '1512107324', '1512110309', '1', 'hr93gtbhg53frsk31e0knleck7', '0');
INSERT INTO `tw_user_log` VALUES ('401', '6277', 'login', 'PC端，Chrome/62.0.3202.94登录', '192.168.0.131', '局域网对方和您在同一内部网', '0', '1512107842', '1512107843', '1', 'c5g0s09487d2hc9rtepp69ebv3', '0');
INSERT INTO `tw_user_log` VALUES ('402', '6277', 'login', 'PC端，Chrome/62.0.3202.94登录', '192.168.0.131', '局域网对方和您在同一内部网', '0', '1512107874', '1512115887', '1', 'c5g0s09487d2hc9rtepp69ebv3', '0');
INSERT INTO `tw_user_log` VALUES ('403', '6290', 'login', 'PC端Windows NT 6.1，Chrome/55.0.2883.87登录', '192.168.0.134', '局域网对方和您在同一内部网', '0', '1512108000', '1512108000', '1', 'l8not7p43jc8rr18qu3carq6s5', '1');
INSERT INTO `tw_user_log` VALUES ('404', '6294', 'login', 'PC端Windows NT 6.1，Chrome/49.0.2623.221登录', '127.0.0.1', '未分配或者内网IP', '0', '1512108127', '1512108127', '1', 'j4m03rpud7s8vfc257d0r1nc46', '1');
INSERT INTO `tw_user_log` VALUES ('405', '6271', 'login', 'PC端Windows NT 6.1，Chrome/60.0.3112.101登录', '127.0.0.1', '未分配或者内网IP', '0', '1512110406', '1512116264', '1', 'hr93gtbhg53frsk31e0knleck7', '0');
INSERT INTO `tw_user_log` VALUES ('406', '6277', 'login', 'PC端Windows NT 10.0，Chrome/58.0.3029.110登录', '192.168.0.121', '局域网对方和您在同一内部网', '0', '1512115887', '1512117162', '1', 'fggrh92tqeaedhudj1h0kahih3', '0');
INSERT INTO `tw_user_log` VALUES ('407', '6274', 'login', 'PC端Windows NT 6.1，Chrome/60.0.3112.101登录', '127.0.0.1', '未分配或者内网IP', '0', '1512116279', '1512120848', '1', 'hr93gtbhg53frsk31e0knleck7', '0');
INSERT INTO `tw_user_log` VALUES ('408', '6277', 'login', '手机端，Chrome/57.0.2987.132登录', '192.168.1.102', '局域网对方和您在同一内部网', '0', '1512117162', '1512117170', '1', 'ovb1reebs0uahgv9tc3rlds0j4', '0');
INSERT INTO `tw_user_log` VALUES ('409', '6277', 'login', '手机端，Chrome/57.0.2987.132登录', '192.168.1.102', '局域网对方和您在同一内部网', '0', '1512117716', '1512118051', '1', 'ovb1reebs0uahgv9tc3rlds0j4', '0');
INSERT INTO `tw_user_log` VALUES ('410', '6277', 'login', '手机端，Safari/601.1登录', '192.168.1.102', '局域网对方和您在同一内部网', '0', '1512118050', '1512119390', '1', 'tc14014g2sbu5gkqd4nerntih7', '0');
INSERT INTO `tw_user_log` VALUES ('411', '6274', 'login', '手机端，Chrome/59.0.3071.125登录', '192.168.1.102', '局域网对方和您在同一内部网', '0', '1512120848', '1512120848', '1', '5q5pshf6ckn0hera9q4nk070m3', '0');
INSERT INTO `tw_user_log` VALUES ('412', '6274', 'login', '手机端，Chrome/59.0.3071.125登录', '192.168.1.102', '局域网对方和您在同一内部网', '0', '1512120867', '1512120867', '1', '5q5pshf6ckn0hera9q4nk070m3', '1');
INSERT INTO `tw_user_log` VALUES ('413', '6278', 'login', '手机端，Safari/601.1登录', '127.0.0.1', '未分配或者内网IP', '0', '1512175283', '1512175818', '1', 'l6heu4l72jv0ovhtibqlgtdpl7', '0');
INSERT INTO `tw_user_log` VALUES ('414', '6271', 'login', 'PC端Windows NT 6.1，Chrome/60.0.3112.101登录', '127.0.0.1', '未分配或者内网IP', '0', '1512175673', '1512191568', '1', '4cnq5dhc3l853397vtq1s70455', '0');
INSERT INTO `tw_user_log` VALUES ('415', '6278', 'login', 'PC端Windows NT 6.3，Chrome/62.0.3202.75登录', '127.0.0.1', '未分配或者内网IP', '0', '1512175818', '1512175818', '1', 'l6heu4l72jv0ovhtibqlgtdpl7', '1');

-- ----------------------------
-- Table structure for tw_user_log_copy
-- ----------------------------
DROP TABLE IF EXISTS `tw_user_log_copy`;
CREATE TABLE `tw_user_log_copy` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT '',
  `remark` varchar(50) NOT NULL DEFAULT '',
  `addip` varchar(20) NOT NULL DEFAULT '',
  `addr` varchar(100) NOT NULL DEFAULT '',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `session_key` varchar(100) DEFAULT NULL,
  `state` tinyint(4) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `state` (`state`) USING BTREE,
  KEY `session_key` (`session_key`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户记录表'
/*!50100 PARTITION BY RANGE (id)
(PARTITION p1 VALUES LESS THAN (100000) ENGINE = InnoDB,
 PARTITION p2 VALUES LESS THAN (200000) ENGINE = InnoDB,
 PARTITION p3 VALUES LESS THAN (300000) ENGINE = InnoDB,
 PARTITION p4 VALUES LESS THAN (400000) ENGINE = InnoDB,
 PARTITION p5 VALUES LESS THAN (500000) ENGINE = InnoDB,
 PARTITION p6 VALUES LESS THAN (600000) ENGINE = InnoDB,
 PARTITION p7 VALUES LESS THAN (700000) ENGINE = InnoDB,
 PARTITION p8 VALUES LESS THAN (800000) ENGINE = InnoDB,
 PARTITION p9 VALUES LESS THAN (900000) ENGINE = InnoDB,
 PARTITION p10 VALUES LESS THAN (1000000) ENGINE = InnoDB,
 PARTITION p11 VALUES LESS THAN MAXVALUE ENGINE = InnoDB) */;

-- ----------------------------
-- Records of tw_user_log_copy
-- ----------------------------

-- ----------------------------
-- Table structure for tw_user_qianbao
-- ----------------------------
DROP TABLE IF EXISTS `tw_user_qianbao`;
CREATE TABLE `tw_user_qianbao` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `coinname` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `addr` varchar(200) NOT NULL DEFAULT '',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`),
  KEY `coinname` (`coinname`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='用户钱包表';

-- ----------------------------
-- Records of tw_user_qianbao
-- ----------------------------
INSERT INTO `tw_user_qianbao` VALUES ('3', '6273', 'btc', '42344', '23423423', '0', '1511407900', '0', '1');
INSERT INTO `tw_user_qianbao` VALUES ('4', '6273', 'btc', 'f34r443r43r34r34r43', '3213fdrfef34r43r34r3r34r', '0', '1511409509', '0', '1');
INSERT INTO `tw_user_qianbao` VALUES ('5', '6277', 'btc', '009', 'Tp4RxXKdhbzhW6zbP6QVDKe1QfN7haeHM3', '0', '1511770635', '0', '1');
INSERT INTO `tw_user_qianbao` VALUES ('9', '6277', 'bcc', '009', '7f062a670d1751144cdf3858b2691707', '0', '1511838963', '0', '1');
INSERT INTO `tw_user_qianbao` VALUES ('10', '6277', 'bcc', '00989', 'Tp4RxXKdhbzhW6zbP6QVDKe1QfN7haeHM3', '0', '1511839259', '0', '1');
INSERT INTO `tw_user_qianbao` VALUES ('11', '6278', 'bcc', '15263042117', '15263042117', '0', '1511849328', '0', '1');
INSERT INTO `tw_user_qianbao` VALUES ('12', '6278', 'bcc', '32038219930425252525', '10246455114562115632', '0', '1511849602', '0', '1');
INSERT INTO `tw_user_qianbao` VALUES ('13', '6278', 'bcc', 'Tm7quTtPHUP5RFaPoCANLJA5ZvPH3PygHW', 'Tm7quTtPHUP5RFaPoCANLJA5ZvPH3PygHW', '0', '1511853280', '0', '1');
INSERT INTO `tw_user_qianbao` VALUES ('14', '6274', 'btc', '2121', '2112', '0', '1511933800', '0', '1');
INSERT INTO `tw_user_qianbao` VALUES ('15', '6274', 'bcc', 'Tm7quTtPHUP5RFaPoCANLJA5ZvPH3PygHW', '212', '0', '1511933852', '0', '1');

-- ----------------------------
-- Table structure for tw_zcbatch_error
-- ----------------------------
DROP TABLE IF EXISTS `tw_zcbatch_error`;
CREATE TABLE `tw_zcbatch_error` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zcid` int(11) NOT NULL,
  `addtime` int(10) NOT NULL,
  `beizhu` varchar(255) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tw_zcbatch_error
-- ----------------------------

-- ----------------------------
-- Procedure structure for e_del_user_log
-- ----------------------------
DROP PROCEDURE IF EXISTS `e_del_user_log`;
DELIMITER ;;
CREATE DEFINER=`sssjz1718`@`%` PROCEDURE `e_del_user_log`()
BEGIN
	insert into tw_user_log_copy select * from tw_user_log where (TO_DAYS(NOW()) - TO_DAYS(FROM_UNIXTIME(addtime)))>=2;
	DELETE FROM tw_user_log WHERE (TO_DAYS(NOW()) - TO_DAYS(FROM_UNIXTIME(addtime)))>=2;
  insert into tw_trade_json_copy select * from tw_trade_json where (TO_DAYS(NOW()) - TO_DAYS(FROM_UNIXTIME(addtime)))>=2 and type = 1;
	DELETE FROM tw_trade_json WHERE (TO_DAYS(NOW()) - TO_DAYS(FROM_UNIXTIME(addtime)))>=2 and type = 1;
  insert into tw_trade_json_copy select * from tw_trade_json where (TO_DAYS(NOW()) - TO_DAYS(FROM_UNIXTIME(addtime)))>=3 and type = 3;
	DELETE FROM tw_trade_json WHERE (TO_DAYS(NOW()) - TO_DAYS(FROM_UNIXTIME(addtime)))>=3 and type = 3;
  insert into tw_trade_json_copy select * from tw_trade_json where (TO_DAYS(NOW()) - TO_DAYS(FROM_UNIXTIME(addtime)))>=5 and type = 5;
	DELETE FROM tw_trade_json WHERE (TO_DAYS(NOW()) - TO_DAYS(FROM_UNIXTIME(addtime)))>=5 and type = 5;
  insert into tw_trade_json_copy select * from tw_trade_json where (TO_DAYS(NOW()) - TO_DAYS(FROM_UNIXTIME(addtime)))>=15 and type = 15;
	DELETE FROM tw_trade_json WHERE (TO_DAYS(NOW()) - TO_DAYS(FROM_UNIXTIME(addtime)))>=15 and type = 15;
	insert into tw_trade_json_copy select * from tw_trade_json where (TO_DAYS(NOW()) - TO_DAYS(FROM_UNIXTIME(addtime)))>=30 and type = 30;
	DELETE FROM tw_trade_json WHERE (TO_DAYS(NOW()) - TO_DAYS(FROM_UNIXTIME(addtime)))>=30 and type = 30;
	insert into tw_trade_json_copy select * from tw_trade_json where (TO_DAYS(NOW()) - TO_DAYS(FROM_UNIXTIME(addtime)))>=60 and type = 60;
	DELETE FROM tw_trade_json WHERE (TO_DAYS(NOW()) - TO_DAYS(FROM_UNIXTIME(addtime)))>=60 and type = 60;
END
;;
DELIMITER ;

-- ----------------------------
-- Event structure for e_del_user_log
-- ----------------------------
DROP EVENT IF EXISTS `e_del_user_log`;
DELIMITER ;;
CREATE DEFINER=`sssjz1718`@`%` EVENT `e_del_user_log` ON SCHEDULE EVERY 1 DAY STARTS '2017-09-28 05:00:00' ON COMPLETION PRESERVE ENABLE DO CALL e_del_user_log()
;;
DELIMITER ;
