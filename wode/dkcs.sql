/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : dkcs

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-10-24 18:04:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `dp_admin_access`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_access`;
CREATE TABLE `dp_admin_access` (
  `module` varchar(16) NOT NULL DEFAULT '' COMMENT '模型名称',
  `group` varchar(16) NOT NULL DEFAULT '' COMMENT '权限分组标识',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `nid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '授权节点id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='统一授权表';

-- ----------------------------
-- Records of dp_admin_access
-- ----------------------------

-- ----------------------------
-- Table structure for `dp_admin_action`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_action`;
CREATE TABLE `dp_admin_action` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(16) NOT NULL DEFAULT '' COMMENT '所属模块名',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '行为唯一标识',
  `title` varchar(80) NOT NULL DEFAULT '' COMMENT '行为标题',
  `remark` varchar(128) NOT NULL DEFAULT '' COMMENT '行为描述',
  `rule` text NOT NULL COMMENT '行为规则',
  `log` text NOT NULL COMMENT '日志规则',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='系统行为表';

-- ----------------------------
-- Records of dp_admin_action
-- ----------------------------
INSERT INTO `dp_admin_action` VALUES ('1', 'user', 'user_add', '添加用户', '添加用户', '', '[user|get_nickname] 添加了用户：[record|get_nickname]', '1', '1480156399', '1480163853');
INSERT INTO `dp_admin_action` VALUES ('2', 'user', 'user_edit', '编辑用户', '编辑用户', '', '[user|get_nickname] 编辑了用户：[details]', '1', '1480164578', '1480297748');
INSERT INTO `dp_admin_action` VALUES ('3', 'user', 'user_delete', '删除用户', '删除用户', '', '[user|get_nickname] 删除了用户：[details]', '1', '1480168582', '1480168616');
INSERT INTO `dp_admin_action` VALUES ('4', 'user', 'user_enable', '启用用户', '启用用户', '', '[user|get_nickname] 启用了用户：[details]', '1', '1480169185', '1480169185');
INSERT INTO `dp_admin_action` VALUES ('5', 'user', 'user_disable', '禁用用户', '禁用用户', '', '[user|get_nickname] 禁用了用户：[details]', '1', '1480169214', '1480170581');
INSERT INTO `dp_admin_action` VALUES ('6', 'user', 'user_access', '用户授权', '用户授权', '', '[user|get_nickname] 对用户：[record|get_nickname] 进行了授权操作。详情：[details]', '1', '1480221441', '1480221563');
INSERT INTO `dp_admin_action` VALUES ('7', 'user', 'role_add', '添加角色', '添加角色', '', '[user|get_nickname] 添加了角色：[details]', '1', '1480251473', '1480251473');
INSERT INTO `dp_admin_action` VALUES ('8', 'user', 'role_edit', '编辑角色', '编辑角色', '', '[user|get_nickname] 编辑了角色：[details]', '1', '1480252369', '1480252369');
INSERT INTO `dp_admin_action` VALUES ('9', 'user', 'role_delete', '删除角色', '删除角色', '', '[user|get_nickname] 删除了角色：[details]', '1', '1480252580', '1480252580');
INSERT INTO `dp_admin_action` VALUES ('10', 'user', 'role_enable', '启用角色', '启用角色', '', '[user|get_nickname] 启用了角色：[details]', '1', '1480252620', '1480252620');
INSERT INTO `dp_admin_action` VALUES ('11', 'user', 'role_disable', '禁用角色', '禁用角色', '', '[user|get_nickname] 禁用了角色：[details]', '1', '1480252651', '1480252651');
INSERT INTO `dp_admin_action` VALUES ('12', 'user', 'attachment_enable', '启用附件', '启用附件', '', '[user|get_nickname] 启用了附件：附件ID([details])', '1', '1480253226', '1480253332');
INSERT INTO `dp_admin_action` VALUES ('13', 'user', 'attachment_disable', '禁用附件', '禁用附件', '', '[user|get_nickname] 禁用了附件：附件ID([details])', '1', '1480253267', '1480253340');
INSERT INTO `dp_admin_action` VALUES ('14', 'user', 'attachment_delete', '删除附件', '删除附件', '', '[user|get_nickname] 删除了附件：附件ID([details])', '1', '1480253323', '1480253323');
INSERT INTO `dp_admin_action` VALUES ('15', 'admin', 'config_add', '添加配置', '添加配置', '', '[user|get_nickname] 添加了配置，[details]', '1', '1480296196', '1480296196');
INSERT INTO `dp_admin_action` VALUES ('16', 'admin', 'config_edit', '编辑配置', '编辑配置', '', '[user|get_nickname] 编辑了配置：[details]', '1', '1480296960', '1480296960');
INSERT INTO `dp_admin_action` VALUES ('17', 'admin', 'config_enable', '启用配置', '启用配置', '', '[user|get_nickname] 启用了配置：[details]', '1', '1480298479', '1480298479');
INSERT INTO `dp_admin_action` VALUES ('18', 'admin', 'config_disable', '禁用配置', '禁用配置', '', '[user|get_nickname] 禁用了配置：[details]', '1', '1480298506', '1480298506');
INSERT INTO `dp_admin_action` VALUES ('19', 'admin', 'config_delete', '删除配置', '删除配置', '', '[user|get_nickname] 删除了配置：[details]', '1', '1480298532', '1480298532');
INSERT INTO `dp_admin_action` VALUES ('20', 'admin', 'database_export', '备份数据库', '备份数据库', '', '[user|get_nickname] 备份了数据库：[details]', '1', '1480298946', '1480298946');
INSERT INTO `dp_admin_action` VALUES ('21', 'admin', 'database_import', '还原数据库', '还原数据库', '', '[user|get_nickname] 还原了数据库：[details]', '1', '1480301990', '1480302022');
INSERT INTO `dp_admin_action` VALUES ('22', 'admin', 'database_optimize', '优化数据表', '优化数据表', '', '[user|get_nickname] 优化了数据表：[details]', '1', '1480302616', '1480302616');
INSERT INTO `dp_admin_action` VALUES ('23', 'admin', 'database_repair', '修复数据表', '修复数据表', '', '[user|get_nickname] 修复了数据表：[details]', '1', '1480302798', '1480302798');
INSERT INTO `dp_admin_action` VALUES ('24', 'admin', 'database_backup_delete', '删除数据库备份', '删除数据库备份', '', '[user|get_nickname] 删除了数据库备份：[details]', '1', '1480302870', '1480302870');
INSERT INTO `dp_admin_action` VALUES ('25', 'admin', 'hook_add', '添加钩子', '添加钩子', '', '[user|get_nickname] 添加了钩子：[details]', '1', '1480303198', '1480303198');
INSERT INTO `dp_admin_action` VALUES ('26', 'admin', 'hook_edit', '编辑钩子', '编辑钩子', '', '[user|get_nickname] 编辑了钩子：[details]', '1', '1480303229', '1480303229');
INSERT INTO `dp_admin_action` VALUES ('27', 'admin', 'hook_delete', '删除钩子', '删除钩子', '', '[user|get_nickname] 删除了钩子：[details]', '1', '1480303264', '1480303264');
INSERT INTO `dp_admin_action` VALUES ('28', 'admin', 'hook_enable', '启用钩子', '启用钩子', '', '[user|get_nickname] 启用了钩子：[details]', '1', '1480303294', '1480303294');
INSERT INTO `dp_admin_action` VALUES ('29', 'admin', 'hook_disable', '禁用钩子', '禁用钩子', '', '[user|get_nickname] 禁用了钩子：[details]', '1', '1480303409', '1480303409');
INSERT INTO `dp_admin_action` VALUES ('30', 'admin', 'menu_add', '添加节点', '添加节点', '', '[user|get_nickname] 添加了节点：[details]', '1', '1480305468', '1480305468');
INSERT INTO `dp_admin_action` VALUES ('31', 'admin', 'menu_edit', '编辑节点', '编辑节点', '', '[user|get_nickname] 编辑了节点：[details]', '1', '1480305513', '1480305513');
INSERT INTO `dp_admin_action` VALUES ('32', 'admin', 'menu_delete', '删除节点', '删除节点', '', '[user|get_nickname] 删除了节点：[details]', '1', '1480305562', '1480305562');
INSERT INTO `dp_admin_action` VALUES ('33', 'admin', 'menu_enable', '启用节点', '启用节点', '', '[user|get_nickname] 启用了节点：[details]', '1', '1480305630', '1480305630');
INSERT INTO `dp_admin_action` VALUES ('34', 'admin', 'menu_disable', '禁用节点', '禁用节点', '', '[user|get_nickname] 禁用了节点：[details]', '1', '1480305659', '1480305659');
INSERT INTO `dp_admin_action` VALUES ('35', 'admin', 'module_install', '安装模块', '安装模块', '', '[user|get_nickname] 安装了模块：[details]', '1', '1480307558', '1480307558');
INSERT INTO `dp_admin_action` VALUES ('36', 'admin', 'module_uninstall', '卸载模块', '卸载模块', '', '[user|get_nickname] 卸载了模块：[details]', '1', '1480307588', '1480307588');
INSERT INTO `dp_admin_action` VALUES ('37', 'admin', 'module_enable', '启用模块', '启用模块', '', '[user|get_nickname] 启用了模块：[details]', '1', '1480307618', '1480307618');
INSERT INTO `dp_admin_action` VALUES ('38', 'admin', 'module_disable', '禁用模块', '禁用模块', '', '[user|get_nickname] 禁用了模块：[details]', '1', '1480307653', '1480307653');
INSERT INTO `dp_admin_action` VALUES ('39', 'admin', 'module_export', '导出模块', '导出模块', '', '[user|get_nickname] 导出了模块：[details]', '1', '1480307682', '1480307682');
INSERT INTO `dp_admin_action` VALUES ('40', 'admin', 'packet_install', '安装数据包', '安装数据包', '', '[user|get_nickname] 安装了数据包：[details]', '1', '1480308342', '1480308342');
INSERT INTO `dp_admin_action` VALUES ('41', 'admin', 'packet_uninstall', '卸载数据包', '卸载数据包', '', '[user|get_nickname] 卸载了数据包：[details]', '1', '1480308372', '1480308372');
INSERT INTO `dp_admin_action` VALUES ('42', 'admin', 'system_config_update', '更新系统设置', '更新系统设置', '', '[user|get_nickname] 更新了系统设置：[details]', '1', '1480309555', '1480309642');

-- ----------------------------
-- Table structure for `dp_admin_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_attachment`;
CREATE TABLE `dp_admin_attachment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '文件名',
  `module` varchar(32) NOT NULL DEFAULT '' COMMENT '模块名，由哪个模块上传的',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '文件路径',
  `thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '缩略图路径',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '文件链接',
  `mime` varchar(64) NOT NULL DEFAULT '' COMMENT '文件mime类型',
  `ext` char(4) NOT NULL DEFAULT '' COMMENT '文件类型',
  `size` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `md5` char(32) NOT NULL DEFAULT '' COMMENT '文件md5',
  `sha1` char(40) NOT NULL DEFAULT '' COMMENT 'sha1 散列值',
  `driver` varchar(16) NOT NULL DEFAULT 'local' COMMENT '上传驱动',
  `download` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='附件表';

-- ----------------------------
-- Records of dp_admin_attachment
-- ----------------------------
INSERT INTO `dp_admin_attachment` VALUES ('1', '1', '1465400567_1024x768 (1).jpg', 'cs', 'uploads/images/20171017/cd5b7d2beb603accfec763586b5bbd1a.jpg', '', '', 'image/jpeg', 'jpg', '104478', 'db4118505744632c71d60326303ac31a', '2fea1a0282decd855ad32146b27e3b6af8e15643', 'local', '0', '1508214429', '1508214429', '100', '1');
INSERT INTO `dp_admin_attachment` VALUES ('2', '1', 'wp.png', 'cs', 'uploads/images/20171017/bfc41c68516d361342d0f256d736c162.png', '', '', 'image/png', 'png', '19112', 'daef70ed9839d06887c53c448a787915', '1159440fc15eca193724bad527ba0cfc25be6ed3', 'local', '0', '1508214454', '1508214454', '100', '1');
INSERT INTO `dp_admin_attachment` VALUES ('3', '1', 'QQ图片20160219092729.jpg', 'cs', 'uploads/images/20171021/0646f5de495f832bb9c04c1ad66883c0.jpg', '', '', 'image/jpeg', 'jpg', '57776', 'd0ede998a135ccabcd75a4f5a5d8ccd8', 'f199dab2b42e39df786f7452d0ed3f0b7f33787c', 'local', '0', '1508571762', '1508571762', '100', '1');
INSERT INTO `dp_admin_attachment` VALUES ('4', '1', 'acf390c939fb65517f3e6f9a.gif', 'cs', 'uploads/images/20171021/aa1f52ea4034422240507b19a97b46ad.gif', '', '', 'image/gif', 'gif', '33773', '016a9d64bc29b5f6bdfa8b3805c39bf9', '77959eb0f0c985252690695fd050e6e3c4dc3a30', 'local', '0', '1508572050', '1508572050', '100', '1');
INSERT INTO `dp_admin_attachment` VALUES ('5', '1', 'QQ图片20160222135050.gif', 'cs', 'uploads/images/20171021/2acd34607d8bcd34b4d8b5f88b688181.gif', '', '', 'image/gif', 'gif', '111751', '0045ca44300a46e5a588c363e53bfdaf', '135776915ca90af39d6cdda25cff314f89e409f3', 'local', '0', '1508572097', '1508572097', '100', '1');
INSERT INTO `dp_admin_attachment` VALUES ('6', '1', '50da81cb39dbb6fda2d331e50324ab18962b376d.jpg', 'cs', 'uploads/images/20171023/574a871d1eaa9ed6d610a41319b5be6b.jpg', '', '', 'image/jpeg', 'jpg', '99160', '29069557cdd01ec7114e37d079aad6ec', '50bf84d6b62e0e6172c4550be6cb2526303a99fc', 'local', '0', '1508729971', '1508729971', '100', '1');
INSERT INTO `dp_admin_attachment` VALUES ('7', '1', '3.png', 'cs', 'uploads/images/20171024/8b884ea9a41b7e0d22e74e7a579c1078.png', '', '', 'image/png', 'png', '262441', '8f8070f8675056e7b67fda2c10d753ab', 'bffe2cfe66db5a1c8fd6ae37c1bfe01a3079a918', 'local', '0', '1508821427', '1508821427', '100', '1');
INSERT INTO `dp_admin_attachment` VALUES ('8', '1', 'fund.png', 'cs', 'uploads/images/20171024/b529d886027288204fff8a04e381fd52.png', '', '', 'image/png', 'png', '4765', 'd05b493b0e9beca07fad847c4058765e', '647a22a5547daa81db8647fa03986ea56187d39b', 'local', '0', '1508821544', '1508821544', '100', '1');
INSERT INTO `dp_admin_attachment` VALUES ('9', '1', '等待@2x.png', 'cs', 'uploads/images/20171024/f37d0a81ee0ea9e929307aef92755f68.png', '', '', 'image/png', 'png', '12883', '29f9aba7f19d5ed3da580b2bbf2bbc23', 'ebfcff06ad390dabde55fdadd7a0e350be683623', 'local', '0', '1508838891', '1508838891', '100', '1');

-- ----------------------------
-- Table structure for `dp_admin_config`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_config`;
CREATE TABLE `dp_admin_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT '名称',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '标题',
  `group` varchar(32) NOT NULL DEFAULT '' COMMENT '配置分组',
  `type` varchar(32) NOT NULL DEFAULT '' COMMENT '类型',
  `value` text NOT NULL COMMENT '配置值',
  `options` text NOT NULL COMMENT '配置项',
  `tips` varchar(256) NOT NULL DEFAULT '' COMMENT '配置提示',
  `ajax_url` varchar(256) NOT NULL DEFAULT '' COMMENT '联动下拉框ajax地址',
  `next_items` varchar(256) NOT NULL DEFAULT '' COMMENT '联动下拉框的下级下拉框名，多个以逗号隔开',
  `param` varchar(32) NOT NULL DEFAULT '' COMMENT '联动下拉框请求参数名',
  `format` varchar(32) NOT NULL DEFAULT '' COMMENT '格式，用于格式文本',
  `table` varchar(32) NOT NULL DEFAULT '' COMMENT '表名，只用于快速联动类型',
  `level` tinyint(2) unsigned NOT NULL DEFAULT '2' COMMENT '联动级别，只用于快速联动类型',
  `key` varchar(32) NOT NULL DEFAULT '' COMMENT '键字段，只用于快速联动类型',
  `option` varchar(32) NOT NULL DEFAULT '' COMMENT '值字段，只用于快速联动类型',
  `pid` varchar(32) NOT NULL DEFAULT '' COMMENT '父级id字段，只用于快速联动类型',
  `ak` varchar(32) NOT NULL DEFAULT '' COMMENT '百度地图appkey',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态：0禁用，1启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='系统配置表';

-- ----------------------------
-- Records of dp_admin_config
-- ----------------------------
INSERT INTO `dp_admin_config` VALUES ('1', 'web_site_status', '站点开关', 'base', 'switch', '1', '', '站点关闭后将不能访问，后台可正常登录', '', '', '', '', '', '2', '', '', '', '', '1475240395', '1477403914', '1', '1');
INSERT INTO `dp_admin_config` VALUES ('2', 'web_site_title', '站点标题', 'base', 'text', '海豚PHP', '', '调用方式：<code>config(\'web_site_title\')</code>', '', '', '', '', '', '2', '', '', '', '', '1475240646', '1477710341', '2', '1');
INSERT INTO `dp_admin_config` VALUES ('3', 'web_site_slogan', '站点标语', 'base', 'text', '海豚PHP，极简、极速、极致', '', '站点口号，调用方式：<code>config(\'web_site_slogan\')</code>', '', '', '', '', '', '2', '', '', '', '', '1475240994', '1477710357', '3', '1');
INSERT INTO `dp_admin_config` VALUES ('4', 'web_site_logo', '站点LOGO', 'base', 'image', '', '', '', '', '', '', '', '', '2', '', '', '', '', '1475241067', '1475241067', '4', '1');
INSERT INTO `dp_admin_config` VALUES ('5', 'web_site_description', '站点描述', 'base', 'textarea', '', '', '网站描述，有利于搜索引擎抓取相关信息', '', '', '', '', '', '2', '', '', '', '', '1475241186', '1475241186', '6', '1');
INSERT INTO `dp_admin_config` VALUES ('6', 'web_site_keywords', '站点关键词', 'base', 'text', '海豚PHP、PHP开发框架、后台框架', '', '网站搜索引擎关键字', '', '', '', '', '', '2', '', '', '', '', '1475241328', '1475241328', '7', '1');
INSERT INTO `dp_admin_config` VALUES ('7', 'web_site_copyright', '版权信息', 'base', 'text', 'Copyright © 2015-2017 DolphinPHP All rights reserved.', '', '调用方式：<code>config(\'web_site_copyright\')</code>', '', '', '', '', '', '2', '', '', '', '', '1475241416', '1477710383', '8', '1');
INSERT INTO `dp_admin_config` VALUES ('8', 'web_site_icp', '备案信息', 'base', 'text', '', '', '调用方式：<code>config(\'web_site_icp\')</code>', '', '', '', '', '', '2', '', '', '', '', '1475241441', '1477710441', '9', '1');
INSERT INTO `dp_admin_config` VALUES ('9', 'web_site_statistics', '站点统计', 'base', 'textarea', '', '', '网站统计代码，支持百度、Google、cnzz等，调用方式：<code>config(\'web_site_statistics\')</code>', '', '', '', '', '', '2', '', '', '', '', '1475241498', '1477710455', '10', '1');
INSERT INTO `dp_admin_config` VALUES ('10', 'config_group', '配置分组', 'system', 'array', 'base:基本\r\nsystem:系统\r\nupload:上传\r\ndevelop:开发\r\ndatabase:数据库', '', '', '', '', '', '', '', '2', '', '', '', '', '1475241716', '1477649446', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('11', 'form_item_type', '配置类型', 'system', 'array', 'text:单行文本\r\ntextarea:多行文本\r\nstatic:静态文本\r\npassword:密码\r\ncheckbox:复选框\r\nradio:单选按钮\r\ndate:日期\r\ndatetime:日期+时间\r\nhidden:隐藏\r\nswitch:开关\r\narray:数组\r\nselect:下拉框\r\nlinkage:普通联动下拉框\r\nlinkages:快速联动下拉框\r\nimage:单张图片\r\nimages:多张图片\r\nfile:单个文件\r\nfiles:多个文件\r\nueditor:UEditor 编辑器\r\nwangeditor:wangEditor 编辑器\r\neditormd:markdown 编辑器\r\nckeditor:ckeditor 编辑器\r\nicon:字体图标\r\ntags:标签\r\nnumber:数字\r\nbmap:百度地图\r\ncolorpicker:取色器\r\njcrop:图片裁剪\r\nmasked:格式文本\r\nrange:范围\r\ntime:时间', '', '', '', '', '', '', '', '2', '', '', '', '', '1475241835', '1495853193', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('12', 'upload_file_size', '文件上传大小限制', 'upload', 'text', '0', '', '0为不限制大小，单位：kb', '', '', '', '', '', '2', '', '', '', '', '1475241897', '1477663520', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('13', 'upload_file_ext', '允许上传的文件后缀', 'upload', 'tags', 'doc,docx,xls,xlsx,ppt,pptx,pdf,wps,txt,rar,zip,gz,bz2,7z', '', '多个后缀用逗号隔开，不填写则不限制类型', '', '', '', '', '', '2', '', '', '', '', '1475241975', '1477649489', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('14', 'upload_image_size', '图片上传大小限制', 'upload', 'text', '0', '', '0为不限制大小，单位：kb', '', '', '', '', '', '2', '', '', '', '', '1475242015', '1477663529', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('15', 'upload_image_ext', '允许上传的图片后缀', 'upload', 'tags', 'gif,jpg,jpeg,bmp,png', '', '多个后缀用逗号隔开，不填写则不限制类型', '', '', '', '', '', '2', '', '', '', '', '1475242056', '1477649506', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('16', 'list_rows', '分页数量', 'system', 'number', '20', '', '每页的记录数', '', '', '', '', '', '2', '', '', '', '', '1475242066', '1476074507', '101', '1');
INSERT INTO `dp_admin_config` VALUES ('17', 'system_color', '后台配色方案', 'system', 'radio', 'default', 'default:Default\r\namethyst:Amethyst\r\ncity:City\r\nflat:Flat\r\nmodern:Modern\r\nsmooth:Smooth', '', '', '', '', '', '', '2', '', '', '', '', '1475250066', '1477316689', '102', '1');
INSERT INTO `dp_admin_config` VALUES ('18', 'develop_mode', '开发模式', 'develop', 'radio', '1', '0:关闭\r\n1:开启', '', '', '', '', '', '', '2', '', '', '', '', '1476864205', '1476864231', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('19', 'app_trace', '显示页面Trace', 'develop', 'radio', '0', '0:否\r\n1:是', '', '', '', '', '', '', '2', '', '', '', '', '1476866355', '1476866355', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('21', 'data_backup_path', '数据库备份根路径', 'database', 'text', './data/', '', '路径必须以 / 结尾', '', '', '', '', '', '2', '', '', '', '', '1477017745', '1477018467', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('22', 'data_backup_part_size', '数据库备份卷大小', 'database', 'text', '20971520', '', '该值用于限制压缩后的分卷最大长度。单位：B；建议设置20M', '', '', '', '', '', '2', '', '', '', '', '1477017886', '1477017886', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('23', 'data_backup_compress', '数据库备份文件是否启用压缩', 'database', 'radio', '1', '0:否\r\n1:是', '压缩备份文件需要PHP环境支持 <code>gzopen</code>, <code>gzwrite</code>函数', '', '', '', '', '', '2', '', '', '', '', '1477017978', '1477018172', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('24', 'data_backup_compress_level', '数据库备份文件压缩级别', 'database', 'radio', '9', '1:最低\r\n4:一般\r\n9:最高', '数据库备份文件的压缩级别，该配置在开启压缩时生效', '', '', '', '', '', '2', '', '', '', '', '1477018083', '1477018083', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('25', 'top_menu_max', '顶部导航模块数量', 'system', 'text', '10', '', '设置顶部导航默认显示的模块数量', '', '', '', '', '', '2', '', '', '', '', '1477579289', '1477579289', '103', '1');
INSERT INTO `dp_admin_config` VALUES ('26', 'web_site_logo_text', '站点LOGO文字', 'base', 'image', '', '', '', '', '', '', '', '', '2', '', '', '', '', '1477620643', '1477620643', '5', '1');
INSERT INTO `dp_admin_config` VALUES ('27', 'upload_image_thumb', '缩略图尺寸', 'upload', 'text', '', '', '不填写则不生成缩略图，如需生成 <code>300x300</code> 的缩略图，则填写 <code>300,300</code> ，请注意，逗号必须是英文逗号', '', '', '', '', '', '2', '', '', '', '', '1477644150', '1477649513', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('28', 'upload_image_thumb_type', '缩略图裁剪类型', 'upload', 'radio', '1', '1:等比例缩放\r\n2:缩放后填充\r\n3:居中裁剪\r\n4:左上角裁剪\r\n5:右下角裁剪\r\n6:固定尺寸缩放', '该项配置只有在启用生成缩略图时才生效', '', '', '', '', '', '2', '', '', '', '', '1477646271', '1477649521', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('29', 'upload_thumb_water', '添加水印', 'upload', 'switch', '0', '', '', '', '', '', '', '', '2', '', '', '', '', '1477649648', '1477649648', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('30', 'upload_thumb_water_pic', '水印图片', 'upload', 'image', '', '', '只有开启水印功能才生效', '', '', '', '', '', '2', '', '', '', '', '1477656390', '1477656390', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('31', 'upload_thumb_water_position', '水印位置', 'upload', 'radio', '9', '1:左上角\r\n2:上居中\r\n3:右上角\r\n4:左居中\r\n5:居中\r\n6:右居中\r\n7:左下角\r\n8:下居中\r\n9:右下角', '只有开启水印功能才生效', '', '', '', '', '', '2', '', '', '', '', '1477656528', '1477656528', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('32', 'upload_thumb_water_alpha', '水印透明度', 'upload', 'text', '50', '', '请输入0~100之间的数字，数字越小，透明度越高', '', '', '', '', '', '2', '', '', '', '', '1477656714', '1477661309', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('33', 'wipe_cache_type', '清除缓存类型', 'system', 'checkbox', 'TEMP_PATH', 'TEMP_PATH:应用缓存\r\nLOG_PATH:应用日志\r\nCACHE_PATH:项目模板缓存', '清除缓存时，要删除的缓存类型', '', '', '', '', '', '2', '', '', '', '', '1477727305', '1477727305', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('34', 'captcha_signin', '后台验证码开关', 'system', 'switch', '0', '', '后台登录时是否需要验证码', '', '', '', '', '', '2', '', '', '', '', '1478771958', '1478771958', '99', '1');
INSERT INTO `dp_admin_config` VALUES ('35', 'home_default_module', '前台默认模块', 'system', 'select', 'index', '', '前台默认访问的模块，该模块必须有Index控制器和index方法', '', '', '', '', '', '0', '', '', '', '', '1486714723', '1486715620', '104', '1');
INSERT INTO `dp_admin_config` VALUES ('36', 'minify_status', '开启minify', 'system', 'switch', '0', '', '开启minify会压缩合并js、css文件，可以减少资源请求次数，如果不支持minify，可关闭', '', '', '', '', '', '0', '', '', '', '', '1487035843', '1487035843', '99', '1');

-- ----------------------------
-- Table structure for `dp_admin_hook`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_hook`;
CREATE TABLE `dp_admin_hook` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `plugin` varchar(32) NOT NULL DEFAULT '' COMMENT '钩子来自哪个插件',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '钩子描述',
  `system` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否为系统钩子',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='钩子表';

-- ----------------------------
-- Records of dp_admin_hook
-- ----------------------------
INSERT INTO `dp_admin_hook` VALUES ('1', 'admin_index', '', '后台首页', '1', '1468174214', '1477757518', '0');
INSERT INTO `dp_admin_hook` VALUES ('2', 'plugin_index_tab_list', '', '插件扩展tab钩子', '1', '1468174214', '1468174214', '1');
INSERT INTO `dp_admin_hook` VALUES ('3', 'module_index_tab_list', '', '模块扩展tab钩子', '1', '1468174214', '1468174214', '1');
INSERT INTO `dp_admin_hook` VALUES ('4', 'page_tips', '', '每个页面的提示', '1', '1468174214', '1468174214', '1');
INSERT INTO `dp_admin_hook` VALUES ('5', 'signin_footer', '', '登录页面底部钩子', '1', '1479269315', '1479269315', '1');
INSERT INTO `dp_admin_hook` VALUES ('6', 'signin_captcha', '', '登录页面验证码钩子', '1', '1479269315', '1479269315', '1');
INSERT INTO `dp_admin_hook` VALUES ('7', 'signin', '', '登录控制器钩子', '1', '1479386875', '1479386875', '1');

-- ----------------------------
-- Table structure for `dp_admin_hook_plugin`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_hook_plugin`;
CREATE TABLE `dp_admin_hook_plugin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(32) NOT NULL DEFAULT '' COMMENT '钩子id',
  `plugin` varchar(32) NOT NULL DEFAULT '' COMMENT '插件标识',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='钩子-插件对应表';

-- ----------------------------
-- Records of dp_admin_hook_plugin
-- ----------------------------
INSERT INTO `dp_admin_hook_plugin` VALUES ('1', 'admin_index', 'SystemInfo', '1477757503', '1477757503', '1', '0');
INSERT INTO `dp_admin_hook_plugin` VALUES ('2', 'admin_index', 'DevTeam', '1477755780', '1477755780', '2', '0');

-- ----------------------------
-- Table structure for `dp_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_log`;
CREATE TABLE `dp_admin_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `action_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '行为id',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '执行用户id',
  `action_ip` bigint(20) NOT NULL COMMENT '执行行为者ip',
  `model` varchar(50) NOT NULL DEFAULT '' COMMENT '触发行为的表',
  `record_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '触发行为的数据id',
  `remark` longtext NOT NULL COMMENT '日志备注',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '执行行为的时间',
  PRIMARY KEY (`id`),
  KEY `action_ip_ix` (`action_ip`),
  KEY `action_id_ix` (`action_id`),
  KEY `user_id_ix` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='行为日志表';

-- ----------------------------
-- Records of dp_admin_log
-- ----------------------------
INSERT INTO `dp_admin_log` VALUES ('1', '26', '1', '2130706433', 'admin_hook', '1', '超级管理员 编辑了钩子：禁用钩子', '1', '1501055415');
INSERT INTO `dp_admin_log` VALUES ('2', '35', '1', '2130706433', 'admin_module', '0', '超级管理员 安装了模块：贷款超市', '1', '1501055596');
INSERT INTO `dp_admin_log` VALUES ('3', '30', '1', '2130706433', 'admin_menu', '214', '超级管理员 添加了节点：所属模块(cs),所属节点ID(0),节点标题(贷款超市),节点链接(cs/index/index)', '1', '1501057348');
INSERT INTO `dp_admin_log` VALUES ('4', '30', '1', '2130706433', 'admin_menu', '215', '超级管理员 添加了节点：所属模块(cs),所属节点ID(214),节点标题(超市),节点链接()', '1', '1501057457');
INSERT INTO `dp_admin_log` VALUES ('5', '31', '1', '2130706433', 'admin_menu', '215', '超级管理员 编辑了节点：节点ID(215)', '1', '1501057528');
INSERT INTO `dp_admin_log` VALUES ('6', '31', '1', '2130706433', 'admin_menu', '215', '超级管理员 编辑了节点：节点ID(215)', '1', '1501057954');
INSERT INTO `dp_admin_log` VALUES ('7', '31', '1', '2130706433', 'admin_menu', '215', '超级管理员 编辑了节点：节点ID(215)', '1', '1501057989');
INSERT INTO `dp_admin_log` VALUES ('8', '30', '1', '2130706433', 'admin_menu', '216', '超级管理员 添加了节点：所属模块(cs),所属节点ID(214),节点标题(贷款平台),节点链接()', '1', '1501058021');
INSERT INTO `dp_admin_log` VALUES ('9', '31', '1', '2130706433', 'admin_menu', '215', '超级管理员 编辑了节点：节点ID(215)', '1', '1501058072');
INSERT INTO `dp_admin_log` VALUES ('10', '30', '1', '2130706433', 'admin_menu', '217', '超级管理员 添加了节点：所属模块(cs),所属节点ID(215),节点标题(添加),节点链接()', '1', '1501059969');
INSERT INTO `dp_admin_log` VALUES ('11', '30', '1', '2130706433', 'admin_menu', '218', '超级管理员 添加了节点：所属模块(cs),所属节点ID(215),节点标题(编辑),节点链接()', '1', '1501059982');
INSERT INTO `dp_admin_log` VALUES ('12', '30', '1', '2130706433', 'admin_menu', '219', '超级管理员 添加了节点：所属模块(cs),所属节点ID(215),节点标题(删除),节点链接()', '1', '1501059993');
INSERT INTO `dp_admin_log` VALUES ('13', '31', '1', '2130706433', 'admin_menu', '217', '超级管理员 编辑了节点：节点ID(217)', '1', '1501060008');
INSERT INTO `dp_admin_log` VALUES ('14', '31', '1', '2130706433', 'admin_menu', '218', '超级管理员 编辑了节点：节点ID(218)', '1', '1501063727');
INSERT INTO `dp_admin_log` VALUES ('15', '31', '1', '2130706433', 'admin_menu', '217', '超级管理员 编辑了节点：节点ID(217)', '1', '1501119269');
INSERT INTO `dp_admin_log` VALUES ('16', '31', '1', '2130706433', 'admin_menu', '217', '超级管理员 编辑了节点：节点ID(217)', '1', '1501119293');
INSERT INTO `dp_admin_log` VALUES ('17', '30', '1', '2130706433', 'admin_menu', '220', '超级管理员 添加了节点：所属模块(cs),所属节点ID(216),节点标题(平台列表),节点链接()', '1', '1501119664');
INSERT INTO `dp_admin_log` VALUES ('18', '31', '1', '2130706433', 'admin_menu', '220', '超级管理员 编辑了节点：节点ID(220)', '1', '1501119920');
INSERT INTO `dp_admin_log` VALUES ('19', '31', '1', '2130706433', 'admin_menu', '220', '超级管理员 编辑了节点：节点ID(220)', '1', '1501120424');
INSERT INTO `dp_admin_log` VALUES ('20', '31', '1', '2130706433', 'admin_menu', '220', '超级管理员 编辑了节点：节点ID(220)', '1', '1501120457');
INSERT INTO `dp_admin_log` VALUES ('21', '30', '1', '2130706433', 'admin_menu', '221', '超级管理员 添加了节点：所属模块(cs),所属节点ID(220),节点标题(添加),节点链接(cs/prolist/add)', '1', '1501121850');
INSERT INTO `dp_admin_log` VALUES ('22', '30', '1', '2130706433', 'admin_menu', '222', '超级管理员 添加了节点：所属模块(cs),所属节点ID(220),节点标题(编辑),节点链接(cs/prolist/edit)', '1', '1501121875');
INSERT INTO `dp_admin_log` VALUES ('23', '30', '1', '2130706433', 'admin_menu', '223', '超级管理员 添加了节点：所属模块(cs),所属节点ID(220),节点标题(删除),节点链接()', '1', '1501121911');
INSERT INTO `dp_admin_log` VALUES ('24', '31', '1', '2130706433', 'admin_menu', '214', '超级管理员 编辑了节点：节点ID(214)', '1', '1508569140');
INSERT INTO `dp_admin_log` VALUES ('25', '31', '1', '2130706433', 'admin_menu', '214', '超级管理员 编辑了节点：节点ID(214)', '1', '1508569162');
INSERT INTO `dp_admin_log` VALUES ('26', '30', '1', '2130706433', 'admin_menu', '224', '超级管理员 添加了节点：所属模块(cs),所属节点ID(214),节点标题(理财平台),节点链接()', '1', '1508569805');
INSERT INTO `dp_admin_log` VALUES ('27', '30', '1', '2130706433', 'admin_menu', '225', '超级管理员 添加了节点：所属模块(cs),所属节点ID(224),节点标题(轮播图),节点链接( cs/Financing/index)', '1', '1508569835');
INSERT INTO `dp_admin_log` VALUES ('28', '30', '1', '2130706433', 'admin_menu', '226', '超级管理员 添加了节点：所属模块(cs),所属节点ID(225),节点标题(添加),节点链接(cs/Financing/add)', '1', '1508569864');
INSERT INTO `dp_admin_log` VALUES ('29', '30', '1', '2130706433', 'admin_menu', '227', '超级管理员 添加了节点：所属模块(cs),所属节点ID(225),节点标题(修改),节点链接( cs/financing/edit)', '1', '1508569898');
INSERT INTO `dp_admin_log` VALUES ('30', '30', '1', '2130706433', 'admin_menu', '228', '超级管理员 添加了节点：所属模块(cs),所属节点ID(225),节点标题(删除),节点链接()', '1', '1508569929');
INSERT INTO `dp_admin_log` VALUES ('31', '30', '1', '2130706433', 'admin_menu', '229', '超级管理员 添加了节点：所属模块(cs),所属节点ID(224),节点标题(平台列表),节点链接(cs/Financinglist/index)', '1', '1508569988');
INSERT INTO `dp_admin_log` VALUES ('32', '30', '1', '2130706433', 'admin_menu', '230', '超级管理员 添加了节点：所属模块(cs),所属节点ID(229),节点标题(添加),节点链接(cs/Financinglist/add)', '1', '1508570007');
INSERT INTO `dp_admin_log` VALUES ('33', '30', '1', '2130706433', 'admin_menu', '231', '超级管理员 添加了节点：所属模块(cs),所属节点ID(229),节点标题(修改),节点链接(cs/Financinglist/edit)', '1', '1508570027');
INSERT INTO `dp_admin_log` VALUES ('34', '31', '1', '2130706433', 'admin_menu', '224', '超级管理员 编辑了节点：节点ID(224)', '1', '1508574787');
INSERT INTO `dp_admin_log` VALUES ('35', '32', '1', '2130706433', 'admin_menu', '229', '超级管理员 删除了节点：节点ID(229),节点标题(平台列表),节点链接(cs/financinglist/index)', '1', '1508574799');
INSERT INTO `dp_admin_log` VALUES ('36', '31', '1', '2130706433', 'admin_menu', '224', '超级管理员 编辑了节点：节点ID(224)', '1', '1508574873');
INSERT INTO `dp_admin_log` VALUES ('37', '30', '1', '2130706433', 'admin_menu', '232', '超级管理员 添加了节点：所属模块(cs),所属节点ID(214),节点标题(问题反馈),节点链接()', '1', '1508574892');
INSERT INTO `dp_admin_log` VALUES ('38', '32', '1', '2130706433', 'admin_menu', '226', '超级管理员 删除了节点：节点ID(226),节点标题(添加),节点链接(cs/financing/add)', '1', '1508575485');
INSERT INTO `dp_admin_log` VALUES ('39', '32', '1', '2130706433', 'admin_menu', '227', '超级管理员 删除了节点：节点ID(227),节点标题(修改),节点链接(cs/financing/edit)', '1', '1508575490');
INSERT INTO `dp_admin_log` VALUES ('40', '32', '1', '2130706433', 'admin_menu', '228', '超级管理员 删除了节点：节点ID(228),节点标题(删除),节点链接()', '1', '1508575495');
INSERT INTO `dp_admin_log` VALUES ('41', '32', '1', '2130706433', 'admin_menu', '225', '超级管理员 删除了节点：节点ID(225),节点标题(轮播图),节点链接(cs/financing/index)', '1', '1508575520');
INSERT INTO `dp_admin_log` VALUES ('42', '31', '1', '2130706433', 'admin_menu', '224', '超级管理员 编辑了节点：节点ID(224)', '1', '1508575557');
INSERT INTO `dp_admin_log` VALUES ('43', '30', '1', '2130706433', 'admin_menu', '233', '超级管理员 添加了节点：所属模块(cs),所属节点ID(224),节点标题(添加),节点链接(cs/basicconfig/add)', '1', '1508730417');
INSERT INTO `dp_admin_log` VALUES ('44', '30', '1', '2130706433', 'admin_menu', '234', '超级管理员 添加了节点：所属模块(cs),所属节点ID(224),节点标题(编辑),节点链接(cs/basicconfig/edit)', '1', '1508730445');
INSERT INTO `dp_admin_log` VALUES ('45', '30', '1', '2130706433', 'admin_menu', '235', '超级管理员 添加了节点：所属模块(cs),所属节点ID(224),节点标题(删除),节点链接()', '1', '1508730463');
INSERT INTO `dp_admin_log` VALUES ('46', '30', '1', '2130706433', 'admin_menu', '236', '超级管理员 添加了节点：所属模块(cs),所属节点ID(224),节点标题(首页分类),节点链接()', '1', '1508730551');
INSERT INTO `dp_admin_log` VALUES ('47', '31', '1', '2130706433', 'admin_menu', '236', '超级管理员 编辑了节点：节点ID(236)', '1', '1508730566');
INSERT INTO `dp_admin_log` VALUES ('48', '31', '1', '2130706433', 'admin_menu', '224', '超级管理员 编辑了节点：节点ID(224)', '1', '1508730574');
INSERT INTO `dp_admin_log` VALUES ('49', '31', '1', '2130706433', 'admin_menu', '233', '超级管理员 编辑了节点：节点ID(233)', '1', '1508730588');
INSERT INTO `dp_admin_log` VALUES ('50', '31', '1', '2130706433', 'admin_menu', '234', '超级管理员 编辑了节点：节点ID(234)', '1', '1508730604');
INSERT INTO `dp_admin_log` VALUES ('51', '31', '1', '2130706433', 'admin_menu', '235', '超级管理员 编辑了节点：节点ID(235)', '1', '1508730614');
INSERT INTO `dp_admin_log` VALUES ('52', '31', '1', '2130706433', 'admin_menu', '224', '超级管理员 编辑了节点：节点ID(224)', '1', '1508730653');
INSERT INTO `dp_admin_log` VALUES ('53', '31', '1', '2130706433', 'admin_menu', '216', '超级管理员 编辑了节点：节点ID(216)', '1', '1508730696');
INSERT INTO `dp_admin_log` VALUES ('54', '31', '1', '2130706433', 'admin_menu', '216', '超级管理员 编辑了节点：节点ID(216)', '1', '1508737847');
INSERT INTO `dp_admin_log` VALUES ('55', '30', '1', '2130706433', 'admin_menu', '237', '超级管理员 添加了节点：所属模块(cs),所属节点ID(216),节点标题(首页分类),节点链接(cs/basicconfig/index)', '1', '1508737870');
INSERT INTO `dp_admin_log` VALUES ('56', '30', '1', '2130706433', 'admin_menu', '238', '超级管理员 添加了节点：所属模块(cs),所属节点ID(237),节点标题(添加),节点链接(cs/basicconfig/add)', '1', '1508737888');
INSERT INTO `dp_admin_log` VALUES ('57', '30', '1', '2130706433', 'admin_menu', '239', '超级管理员 添加了节点：所属模块(cs),所属节点ID(237),节点标题(编辑),节点链接(cs/basicconfig/edit)', '1', '1508737909');
INSERT INTO `dp_admin_log` VALUES ('58', '30', '1', '2130706433', 'admin_menu', '240', '超级管理员 添加了节点：所属模块(cs),所属节点ID(237),节点标题(删除),节点链接()', '1', '1508737925');
INSERT INTO `dp_admin_log` VALUES ('59', '32', '1', '2130706433', 'admin_menu', '224', '超级管理员 删除了节点：节点ID(224),节点标题(基本配置),节点链接(cs/basicconfig/index)', '1', '1508738036');
INSERT INTO `dp_admin_log` VALUES ('60', '31', '1', '2130706433', 'admin_menu', '237', '超级管理员 编辑了节点：节点ID(237)', '1', '1508738053');
INSERT INTO `dp_admin_log` VALUES ('61', '31', '1', '2130706433', 'admin_menu', '238', '超级管理员 编辑了节点：节点ID(238)', '1', '1508738061');
INSERT INTO `dp_admin_log` VALUES ('62', '31', '1', '2130706433', 'admin_menu', '239', '超级管理员 编辑了节点：节点ID(239)', '1', '1508738068');
INSERT INTO `dp_admin_log` VALUES ('63', '31', '1', '2130706433', 'admin_menu', '232', '超级管理员 编辑了节点：节点ID(232)', '1', '1508740555');
INSERT INTO `dp_admin_log` VALUES ('64', '31', '1', '2130706433', 'admin_menu', '232', '超级管理员 编辑了节点：节点ID(232)', '1', '1508740690');
INSERT INTO `dp_admin_log` VALUES ('65', '35', '1', '2130706433', 'admin_module', '0', '超级管理员 安装了模块：会员', '1', '1508747139');
INSERT INTO `dp_admin_log` VALUES ('66', '30', '1', '2130706433', 'admin_menu', '241', '超级管理员 添加了节点：所属模块(admin),所属节点ID(0),节点标题(会员),节点链接(member/Index/index)', '1', '1508747605');
INSERT INTO `dp_admin_log` VALUES ('67', '32', '1', '2130706433', 'admin_menu', '241', '超级管理员 删除了节点：节点ID(241),节点标题(会员),节点链接(member/index/index)', '1', '1508747653');
INSERT INTO `dp_admin_log` VALUES ('68', '30', '1', '2130706433', 'admin_menu', '242', '超级管理员 添加了节点：所属模块(member),所属节点ID(0),节点标题(会员),节点链接(member/index/index)', '1', '1508747742');
INSERT INTO `dp_admin_log` VALUES ('69', '31', '1', '2130706433', 'admin_menu', '242', '超级管理员 编辑了节点：节点ID(242)', '1', '1508747767');
INSERT INTO `dp_admin_log` VALUES ('70', '30', '1', '2130706433', 'admin_menu', '243', '超级管理员 添加了节点：所属模块(member),所属节点ID(242),节点标题(会员),节点链接(member/index/index)', '1', '1508748011');

-- ----------------------------
-- Table structure for `dp_admin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_menu`;
CREATE TABLE `dp_admin_menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上级菜单id',
  `module` varchar(16) NOT NULL DEFAULT '' COMMENT '模块名称',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '菜单标题',
  `icon` varchar(64) NOT NULL DEFAULT '' COMMENT '菜单图标',
  `url_type` varchar(16) NOT NULL DEFAULT '' COMMENT '链接类型（link：外链，module：模块）',
  `url_value` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `url_target` varchar(16) NOT NULL DEFAULT '_self' COMMENT '链接打开方式：_blank,_self',
  `online_hide` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '网站上线后是否隐藏',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `system_menu` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否为系统菜单，系统菜单不可删除',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=244 DEFAULT CHARSET=utf8 COMMENT='后台菜单表';

-- ----------------------------
-- Records of dp_admin_menu
-- ----------------------------
INSERT INTO `dp_admin_menu` VALUES ('1', '0', 'admin', '首页', 'fa fa-fw fa-home', 'module_admin', 'admin/index/index', '_self', '0', '1467617722', '1477710540', '1', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('2', '1', 'admin', '快捷操作', 'fa fa-fw fa-folder-open-o', 'module_admin', '', '_self', '0', '1467618170', '1477710695', '1', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('3', '2', 'admin', '清空缓存', 'fa fa-fw fa-trash-o', 'module_admin', 'admin/index/wipecache', '_self', '0', '1467618273', '1489049773', '3', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('4', '0', 'admin', '系统', 'fa fa-fw fa-gear', 'module_admin', 'admin/system/index', '_self', '0', '1467618361', '1477710540', '2', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('5', '4', 'admin', '系统功能', 'si si-wrench', 'module_admin', '', '_self', '0', '1467618441', '1477710695', '1', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('6', '5', 'admin', '系统设置', 'fa fa-fw fa-wrench', 'module_admin', 'admin/system/index', '_self', '0', '1467618490', '1477710695', '1', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('7', '5', 'admin', '配置管理', 'fa fa-fw fa-gears', 'module_admin', 'admin/config/index', '_self', '0', '1467618618', '1477710695', '2', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('8', '7', 'admin', '新增', '', 'module_admin', 'admin/config/add', '_self', '0', '1467618648', '1477710695', '1', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('9', '7', 'admin', '编辑', '', 'module_admin', 'admin/config/edit', '_self', '0', '1467619566', '1477710695', '2', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('10', '7', 'admin', '删除', '', 'module_admin', 'admin/config/delete', '_self', '0', '1467619583', '1477710695', '3', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('11', '7', 'admin', '启用', '', 'module_admin', 'admin/config/enable', '_self', '0', '1467619609', '1477710695', '4', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('12', '7', 'admin', '禁用', '', 'module_admin', 'admin/config/disable', '_self', '0', '1467619637', '1477710695', '5', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('13', '5', 'admin', '节点管理', 'fa fa-fw fa-bars', 'module_admin', 'admin/menu/index', '_self', '0', '1467619882', '1477710695', '3', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('14', '13', 'admin', '新增', '', 'module_admin', 'admin/menu/add', '_self', '0', '1467619902', '1477710695', '1', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('15', '13', 'admin', '编辑', '', 'module_admin', 'admin/menu/edit', '_self', '0', '1467620331', '1477710695', '2', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('16', '13', 'admin', '删除', '', 'module_admin', 'admin/menu/delete', '_self', '0', '1467620363', '1477710695', '3', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('17', '13', 'admin', '启用', '', 'module_admin', 'admin/menu/enable', '_self', '0', '1467620386', '1477710695', '4', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('18', '13', 'admin', '禁用', '', 'module_admin', 'admin/menu/disable', '_self', '0', '1467620404', '1477710695', '5', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('19', '68', 'user', '权限管理', 'fa fa-fw fa-key', 'module_admin', '', '_self', '0', '1467688065', '1477710702', '1', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('20', '19', 'user', '用户管理', 'fa fa-fw fa-user', 'module_admin', 'user/index/index', '_self', '0', '1467688137', '1477710702', '1', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('21', '20', 'user', '新增', '', 'module_admin', 'user/index/add', '_self', '0', '1467688177', '1477710702', '1', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('22', '20', 'user', '编辑', '', 'module_admin', 'user/index/edit', '_self', '0', '1467688202', '1477710702', '2', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('23', '20', 'user', '删除', '', 'module_admin', 'user/index/delete', '_self', '0', '1467688219', '1477710702', '3', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('24', '20', 'user', '启用', '', 'module_admin', 'user/index/enable', '_self', '0', '1467688238', '1477710702', '4', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('25', '20', 'user', '禁用', '', 'module_admin', 'user/index/disable', '_self', '0', '1467688256', '1477710702', '5', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('211', '64', 'admin', '日志详情', '', 'module_admin', 'admin/log/details', '_self', '0', '1480299320', '1480299320', '100', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('32', '4', 'admin', '扩展中心', 'si si-social-dropbox', 'module_admin', '', '_self', '0', '1467688853', '1477710695', '2', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('33', '32', 'admin', '模块管理', 'fa fa-fw fa-th-large', 'module_admin', 'admin/module/index', '_self', '0', '1467689008', '1477710695', '1', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('34', '33', 'admin', '导入', '', 'module_admin', 'admin/module/import', '_self', '0', '1467689153', '1477710695', '1', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('35', '33', 'admin', '导出', '', 'module_admin', 'admin/module/export', '_self', '0', '1467689173', '1477710695', '2', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('36', '33', 'admin', '安装', '', 'module_admin', 'admin/module/install', '_self', '0', '1467689192', '1477710695', '3', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('37', '33', 'admin', '卸载', '', 'module_admin', 'admin/module/uninstall', '_self', '0', '1467689241', '1477710695', '4', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('38', '33', 'admin', '启用', '', 'module_admin', 'admin/module/enable', '_self', '0', '1467689294', '1477710695', '5', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('39', '33', 'admin', '禁用', '', 'module_admin', 'admin/module/disable', '_self', '0', '1467689312', '1477710695', '6', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('40', '33', 'admin', '更新', '', 'module_admin', 'admin/module/update', '_self', '0', '1467689341', '1477710695', '7', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('41', '32', 'admin', '插件管理', 'fa fa-fw fa-puzzle-piece', 'module_admin', 'admin/plugin/index', '_self', '0', '1467689527', '1477710695', '2', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('42', '41', 'admin', '导入', '', 'module_admin', 'admin/plugin/import', '_self', '0', '1467689650', '1477710695', '1', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('43', '41', 'admin', '导出', '', 'module_admin', 'admin/plugin/export', '_self', '0', '1467689665', '1477710695', '2', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('44', '41', 'admin', '安装', '', 'module_admin', 'admin/plugin/install', '_self', '0', '1467689680', '1477710695', '3', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('45', '41', 'admin', '卸载', '', 'module_admin', 'admin/plugin/uninstall', '_self', '0', '1467689700', '1477710695', '4', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('46', '41', 'admin', '启用', '', 'module_admin', 'admin/plugin/enable', '_self', '0', '1467689730', '1477710695', '5', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('47', '41', 'admin', '禁用', '', 'module_admin', 'admin/plugin/disable', '_self', '0', '1467689747', '1477710695', '6', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('48', '41', 'admin', '设置', '', 'module_admin', 'admin/plugin/config', '_self', '0', '1467689789', '1477710695', '7', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('49', '41', 'admin', '管理', '', 'module_admin', 'admin/plugin/manage', '_self', '0', '1467689846', '1477710695', '8', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('50', '5', 'admin', '附件管理', 'fa fa-fw fa-cloud-upload', 'module_admin', 'admin/attachment/index', '_self', '0', '1467690161', '1477710695', '4', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('51', '70', 'admin', '文件上传', '', 'module_admin', 'admin/attachment/upload', '_self', '0', '1467690240', '1489049773', '1', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('52', '50', 'admin', '下载', '', 'module_admin', 'admin/attachment/download', '_self', '0', '1467690334', '1477710695', '2', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('53', '50', 'admin', '启用', '', 'module_admin', 'admin/attachment/enable', '_self', '0', '1467690352', '1477710695', '3', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('54', '50', 'admin', '禁用', '', 'module_admin', 'admin/attachment/disable', '_self', '0', '1467690369', '1477710695', '4', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('55', '50', 'admin', '删除', '', 'module_admin', 'admin/attachment/delete', '_self', '0', '1467690396', '1477710695', '5', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('56', '41', 'admin', '删除', '', 'module_admin', 'admin/plugin/delete', '_self', '0', '1467858065', '1477710695', '11', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('57', '41', 'admin', '编辑', '', 'module_admin', 'admin/plugin/edit', '_self', '0', '1467858092', '1477710695', '10', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('60', '41', 'admin', '新增', '', 'module_admin', 'admin/plugin/add', '_self', '0', '1467858421', '1477710695', '9', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('61', '41', 'admin', '执行', '', 'module_admin', 'admin/plugin/execute', '_self', '0', '1467879016', '1477710695', '14', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('62', '13', 'admin', '保存', '', 'module_admin', 'admin/menu/save', '_self', '0', '1468073039', '1477710695', '6', '1', '1');
INSERT INTO `dp_admin_menu` VALUES ('64', '5', 'admin', '系统日志', 'fa fa-fw fa-book', 'module_admin', 'admin/log/index', '_self', '0', '1476111944', '1477710695', '6', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('65', '5', 'admin', '数据库管理', 'fa fa-fw fa-database', 'module_admin', 'admin/database/index', '_self', '0', '1476111992', '1477710695', '8', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('66', '32', 'admin', '数据包管理', 'fa fa-fw fa-database', 'module_admin', 'admin/packet/index', '_self', '0', '1476112326', '1477710695', '4', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('67', '19', 'user', '角色管理', 'fa fa-fw fa-users', 'module_admin', 'user/role/index', '_self', '0', '1476113025', '1477710702', '3', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('68', '0', 'user', '用户', 'fa fa-fw fa-user', 'module_admin', 'user/index/index', '_self', '0', '1476193348', '1477710540', '3', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('69', '32', 'admin', '钩子管理', 'fa fa-fw fa-anchor', 'module_admin', 'admin/hook/index', '_self', '0', '1476236193', '1477710695', '3', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('70', '2', 'admin', '后台首页', 'fa fa-fw fa-tachometer', 'module_admin', 'admin/index/index', '_self', '0', '1476237472', '1489049773', '1', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('71', '67', 'user', '新增', '', 'module_admin', 'user/role/add', '_self', '0', '1476256935', '1477710702', '1', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('72', '67', 'user', '编辑', '', 'module_admin', 'user/role/edit', '_self', '0', '1476256968', '1477710702', '2', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('73', '67', 'user', '删除', '', 'module_admin', 'user/role/delete', '_self', '0', '1476256993', '1477710702', '3', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('74', '67', 'user', '启用', '', 'module_admin', 'user/role/enable', '_self', '0', '1476257023', '1477710702', '4', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('75', '67', 'user', '禁用', '', 'module_admin', 'user/role/disable', '_self', '0', '1476257046', '1477710702', '5', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('76', '20', 'user', '授权', '', 'module_admin', 'user/index/access', '_self', '0', '1476375187', '1477710702', '6', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('77', '69', 'admin', '新增', '', 'module_admin', 'admin/hook/add', '_self', '0', '1476668971', '1477710695', '1', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('78', '69', 'admin', '编辑', '', 'module_admin', 'admin/hook/edit', '_self', '0', '1476669006', '1477710695', '2', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('79', '69', 'admin', '删除', '', 'module_admin', 'admin/hook/delete', '_self', '0', '1476669375', '1477710695', '3', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('80', '69', 'admin', '启用', '', 'module_admin', 'admin/hook/enable', '_self', '0', '1476669427', '1477710695', '4', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('81', '69', 'admin', '禁用', '', 'module_admin', 'admin/hook/disable', '_self', '0', '1476669564', '1477710695', '5', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('183', '66', 'admin', '安装', '', 'module_admin', 'admin/packet/install', '_self', '0', '1476851362', '1477710695', '1', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('184', '66', 'admin', '卸载', '', 'module_admin', 'admin/packet/uninstall', '_self', '0', '1476851382', '1477710695', '2', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('185', '5', 'admin', '行为管理', 'fa fa-fw fa-bug', 'module_admin', 'admin/action/index', '_self', '0', '1476882441', '1477710695', '7', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('186', '185', 'admin', '新增', '', 'module_admin', 'admin/action/add', '_self', '0', '1476884439', '1477710695', '1', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('187', '185', 'admin', '编辑', '', 'module_admin', 'admin/action/edit', '_self', '0', '1476884464', '1477710695', '2', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('188', '185', 'admin', '启用', '', 'module_admin', 'admin/action/enable', '_self', '0', '1476884493', '1477710695', '3', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('189', '185', 'admin', '禁用', '', 'module_admin', 'admin/action/disable', '_self', '0', '1476884534', '1477710695', '4', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('190', '185', 'admin', '删除', '', 'module_admin', 'admin/action/delete', '_self', '0', '1476884551', '1477710695', '5', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('191', '65', 'admin', '备份数据库', '', 'module_admin', 'admin/database/export', '_self', '0', '1476972746', '1477710695', '1', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('192', '65', 'admin', '还原数据库', '', 'module_admin', 'admin/database/import', '_self', '0', '1476972772', '1477710695', '2', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('193', '65', 'admin', '优化表', '', 'module_admin', 'admin/database/optimize', '_self', '0', '1476972800', '1477710695', '3', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('194', '65', 'admin', '修复表', '', 'module_admin', 'admin/database/repair', '_self', '0', '1476972825', '1477710695', '4', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('195', '65', 'admin', '删除备份', '', 'module_admin', 'admin/database/delete', '_self', '0', '1476973457', '1477710695', '5', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('210', '41', 'admin', '快速编辑', '', 'module_admin', 'admin/plugin/quickedit', '_self', '0', '1477713981', '1477713981', '100', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('209', '185', 'admin', '快速编辑', '', 'module_admin', 'admin/action/quickedit', '_self', '0', '1477713939', '1477713939', '100', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('208', '7', 'admin', '快速编辑', '', 'module_admin', 'admin/config/quickedit', '_self', '0', '1477713808', '1477713808', '100', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('207', '69', 'admin', '快速编辑', '', 'module_admin', 'admin/hook/quickedit', '_self', '0', '1477713770', '1477713770', '100', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('212', '2', 'admin', '个人设置', 'fa fa-fw fa-user', 'module_admin', 'admin/index/profile', '_self', '0', '1489049767', '1489049773', '2', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('213', '70', 'admin', '检查版本更新', '', 'module_admin', 'admin/index/checkupdate', '_self', '0', '1490588610', '1490588610', '100', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('214', '0', 'cs', '平台', 'fa fa-fw fa-align-justify', 'module_admin', 'cs/index/index', '_self', '0', '1501057348', '1508569162', '100', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('215', '216', 'cs', '轮播图', '', 'module_admin', 'cs/index/index', '_self', '0', '1501057457', '1501119394', '1', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('216', '214', 'cs', '平台', '', 'module_admin', 'cs/index/index', '_self', '0', '1501058021', '1508737847', '1', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('217', '215', 'cs', '添加', '', 'module_admin', 'cs/index/add', '_self', '0', '1501059969', '1501119394', '1', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('218', '215', 'cs', '编辑', '', 'module_admin', 'cs/index/edit', '_self', '0', '1501059982', '1501119394', '2', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('219', '215', 'cs', '删除', '', 'module_admin', '', '_self', '0', '1501059993', '1501119394', '3', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('220', '216', 'cs', '平台列表', '', 'module_admin', 'cs/prolist/index', '_self', '0', '1501119664', '1501120457', '100', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('221', '220', 'cs', '添加', '', 'module_admin', 'cs/prolist/add', '_self', '0', '1501121850', '1501121850', '100', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('222', '220', 'cs', '编辑', '', 'module_admin', 'cs/prolist/edit', '_self', '0', '1501121876', '1501121876', '100', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('223', '220', 'cs', '删除', '', 'module_admin', '', '_self', '0', '1501121911', '1501121911', '100', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('232', '214', 'cs', '问题反馈', '', 'module_admin', 'cs/feedbackquestion/index', '_self', '0', '1508574892', '1508740690', '100', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('242', '0', 'member', '会员', 'fa fa-fw fa-user', 'module_admin', 'member/index/index', '_self', '0', '1508747742', '1508747767', '100', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('243', '242', 'member', '会员', '', 'module_admin', 'member/index/index', '_self', '0', '1508748011', '1508748011', '100', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('237', '216', 'cs', '首页分类', '', 'module_admin', 'cs/indexclassify/index', '_self', '0', '1508737871', '1508738053', '100', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('238', '237', 'cs', '添加', '', 'module_admin', 'cs/indexclassify/add', '_self', '0', '1508737888', '1508738061', '100', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('239', '237', 'cs', '编辑', '', 'module_admin', 'cs/indexclassify/edit', '_self', '0', '1508737909', '1508738068', '100', '0', '1');
INSERT INTO `dp_admin_menu` VALUES ('240', '237', 'cs', '删除', '', 'module_admin', '', '_self', '0', '1508737925', '1508737925', '100', '0', '1');

-- ----------------------------
-- Table structure for `dp_admin_module`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_module`;
CREATE TABLE `dp_admin_module` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '模块名称（标识）',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '模块标题',
  `icon` varchar(64) NOT NULL DEFAULT '' COMMENT '图标',
  `description` text NOT NULL COMMENT '描述',
  `author` varchar(32) NOT NULL DEFAULT '' COMMENT '作者',
  `author_url` varchar(255) NOT NULL DEFAULT '' COMMENT '作者主页',
  `config` text COMMENT '配置信息',
  `access` text COMMENT '授权配置',
  `version` varchar(16) NOT NULL DEFAULT '' COMMENT '版本号',
  `identifier` varchar(64) NOT NULL DEFAULT '' COMMENT '模块唯一标识符',
  `system_module` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否为系统模块',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='模块表';

-- ----------------------------
-- Records of dp_admin_module
-- ----------------------------
INSERT INTO `dp_admin_module` VALUES ('1', 'admin', '系统', 'fa fa-fw fa-gear', '系统模块，DolphinPHP的核心模块', 'DolphinPHP', 'http://www.dolphinphp.com', '', '', '1.0.0', 'admin.dolphinphp.module', '1', '1468204902', '1468204902', '100', '1');
INSERT INTO `dp_admin_module` VALUES ('2', 'user', '用户', 'fa fa-fw fa-user', '用户模块，DolphinPHP自带模块', 'DolphinPHP', 'http://www.dolphinphp.com', '', '', '1.0.0', 'user.dolphinphp.module', '1', '1468204902', '1468204902', '100', '1');
INSERT INTO `dp_admin_module` VALUES ('3', 'cs', '平台', '', '平台模块', 'gyj', '', '', '', '1.0.0', 'cs.gyj.module', '0', '0', '1508568928', '100', '1');
INSERT INTO `dp_admin_module` VALUES ('4', 'member', '会员', '', '会员模块', 'gyj', '', null, null, '1.0.0', 'member.gyj.module', '0', '0', '0', '100', '1');

-- ----------------------------
-- Table structure for `dp_admin_packet`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_packet`;
CREATE TABLE `dp_admin_packet` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '数据包名',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '数据包标题',
  `author` varchar(32) NOT NULL DEFAULT '' COMMENT '作者',
  `author_url` varchar(255) NOT NULL DEFAULT '' COMMENT '作者url',
  `version` varchar(16) NOT NULL,
  `tables` text NOT NULL COMMENT '数据表名',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='数据包表';

-- ----------------------------
-- Records of dp_admin_packet
-- ----------------------------

-- ----------------------------
-- Table structure for `dp_admin_plugin`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_plugin`;
CREATE TABLE `dp_admin_plugin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '插件名称',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '插件标题',
  `icon` varchar(64) NOT NULL DEFAULT '' COMMENT '图标',
  `description` text NOT NULL COMMENT '插件描述',
  `author` varchar(32) NOT NULL DEFAULT '' COMMENT '作者',
  `author_url` varchar(255) NOT NULL DEFAULT '' COMMENT '作者主页',
  `config` text NOT NULL COMMENT '配置信息',
  `version` varchar(16) NOT NULL DEFAULT '' COMMENT '版本号',
  `identifier` varchar(64) NOT NULL DEFAULT '' COMMENT '插件唯一标识符',
  `admin` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台管理',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='插件表';

-- ----------------------------
-- Records of dp_admin_plugin
-- ----------------------------
INSERT INTO `dp_admin_plugin` VALUES ('1', 'SystemInfo', '系统环境信息', 'fa fa-fw fa-info-circle', '在后台首页显示服务器信息', '蔡伟明', 'http://www.caiweiming.com', '{\"display\":\"1\",\"width\":\"6\"}', '1.0.0', 'system_info.ming.plugin', '0', '1477757503', '1477757503', '100', '1');
INSERT INTO `dp_admin_plugin` VALUES ('2', 'DevTeam', '开发团队成员信息', 'fa fa-fw fa-users', '开发团队成员信息', '蔡伟明', 'http://www.caiweiming.com', '{\"display\":\"1\",\"width\":\"6\"}', '1.0.0', 'dev_team.ming.plugin', '0', '1477755780', '1477755780', '100', '1');

-- ----------------------------
-- Table structure for `dp_admin_role`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_role`;
CREATE TABLE `dp_admin_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上级角色',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '角色名称',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '角色描述',
  `menu_auth` text NOT NULL COMMENT '菜单权限',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `access` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否可登录后台',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of dp_admin_role
-- ----------------------------
INSERT INTO `dp_admin_role` VALUES ('1', '0', '超级管理员', '系统默认创建的角色，拥有最高权限', '', '0', '1476270000', '1468117612', '1', '1');

-- ----------------------------
-- Table structure for `dp_admin_user`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_user`;
CREATE TABLE `dp_admin_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(32) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(96) NOT NULL DEFAULT '' COMMENT '密码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱地址',
  `email_bind` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否绑定邮箱地址',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号码',
  `mobile_bind` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否绑定手机号码',
  `avatar` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '头像',
  `money` decimal(11,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '余额',
  `score` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `role` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '角色ID',
  `group` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '部门id',
  `signup_ip` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '注册ip',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '最后一次登录时间',
  `last_login_ip` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '登录ip',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态：0禁用，1启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of dp_admin_user
-- ----------------------------
INSERT INTO `dp_admin_user` VALUES ('1', 'admin', '超级管理员', '$2y$10$Brw6wmuSLIIx3Yabid8/Wu5l8VQ9M/H/CG3C9RqN9dUCwZW3ljGOK', '', '0', '', '0', '0', '0.00', '0', '1', '0', '0', '1476065410', '1508817496', '1508817496', '2130706433', '100', '1');

-- ----------------------------
-- Table structure for `dp_dkcs_feedback`
-- ----------------------------
DROP TABLE IF EXISTS `dp_dkcs_feedback`;
CREATE TABLE `dp_dkcs_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` char(11) DEFAULT NULL COMMENT '手机号',
  `qq` varchar(20) DEFAULT NULL COMMENT 'qq号',
  `content` varchar(5000) DEFAULT NULL COMMENT '反馈内容',
  `create_time` int(11) DEFAULT '0' COMMENT '反馈时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dp_dkcs_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for `dp_dkcs_member_base`
-- ----------------------------
DROP TABLE IF EXISTS `dp_dkcs_member_base`;
CREATE TABLE `dp_dkcs_member_base` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_no` varchar(20) DEFAULT NULL COMMENT '会员昵称',
  `mobile` char(11) DEFAULT NULL,
  `user_name` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL COMMENT '密码明文',
  `pass_md5` char(32) DEFAULT NULL COMMENT '密码md5加密',
  `pid` int(11) DEFAULT '0' COMMENT '父级ID',
  `cur_prices` decimal(8,2) DEFAULT '0.00' COMMENT '当前余额',
  `reg_prices` decimal(8,0) DEFAULT '0' COMMENT '邀请注册获得金额',
  `loan_prices` decimal(8,0) DEFAULT '0' COMMENT '邀请贷款获得金额',
  `use_prices` decimal(8,2) DEFAULT '0.00' COMMENT '累计消费金额',
  `total_prices` decimal(8,2) DEFAULT '0.00' COMMENT '累计得到金额',
  `cur_integral` int(11) DEFAULT '0' COMMENT '当前积分',
  `sign_integral` int(11) DEFAULT '0' COMMENT '签到总积分',
  `invite_integral` int(11) DEFAULT '0' COMMENT '邀请注册总积分',
  `loan_integral` int(11) DEFAULT '0' COMMENT '邀请借款总积分',
  `exc_integral` int(11) DEFAULT '0' COMMENT '累计兑换积分',
  `get_integral` int(11) DEFAULT '0' COMMENT '累计得到积分',
  `extensions` int(11) DEFAULT '0' COMMENT '推广总人数',
  `reg_extend` int(11) DEFAULT '0' COMMENT '邀请注册总人数',
  `loan_extend` int(11) DEFAULT '0' COMMENT '邀请借款总人数',
  `last_ip` varchar(30) DEFAULT NULL COMMENT '最后一次登录ip',
  `login_count` int(11) DEFAULT '0' COMMENT '登录次数',
  `last_login_time` varchar(30) DEFAULT NULL COMMENT '最近一次最近一次登录时间',
  `server_date` date DEFAULT NULL COMMENT '注册时间',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `mobile` (`mobile`),
  KEY `product_id` (`login_count`,`server_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dp_dkcs_member_base
-- ----------------------------

-- ----------------------------
-- Table structure for `dp_dkcs_proimg`
-- ----------------------------
DROP TABLE IF EXISTS `dp_dkcs_proimg`;
CREATE TABLE `dp_dkcs_proimg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(30) DEFAULT NULL,
  `p_pic` tinyint(30) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '0 为隐藏   1显示',
  `sort` tinyint(4) DEFAULT NULL,
  `jump_url` varchar(250) DEFAULT NULL,
  `b_type` int(4) DEFAULT NULL COMMENT '区分不同 类别的轮播图 0:极速贷贷款页面轮播 。1:新口子贷款页面轮播 。2:小额贷贷款页面轮播 。3:大额贷贷款页面轮播 。4:理财页面轮播。 ''5'' :首页轮播 。6：其他类别',
  `p_type` int(4) DEFAULT '0' COMMENT '区分不同 类别的轮播图 0:极速贷 。1:新口子 。2:小额贷 。3:大额贷 。4:理财。 5：其他类别',
  `classify` int(4) DEFAULT NULL COMMENT '默认 0   banner 1   产品 2   首页分类 3',
  `class_type` int(4) DEFAULT '0' COMMENT '区分首页分类 0:贷款分类。1:理财。2：推荐理财产品  3：贷款  4：其他类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dp_dkcs_proimg
-- ----------------------------
INSERT INTO `dp_dkcs_proimg` VALUES ('7', '12', '7', '1', '0', 'www.baidu.com', '0', '5', '1', '4');
INSERT INTO `dp_dkcs_proimg` VALUES ('8', '333', '7', '1', '0', 'www.baidu.com', '1', '5', '1', '4');
INSERT INTO `dp_dkcs_proimg` VALUES ('9', '123', '7', '1', '0', 'www.baicu.dom', '2', '5', '1', '4');
INSERT INTO `dp_dkcs_proimg` VALUES ('10', '12', '7', '1', '0', 'www.baicu.dom', '3', '5', '1', '4');
INSERT INTO `dp_dkcs_proimg` VALUES ('11', '12', '7', '1', '0', 'www.baicu.dom', '4', '5', '1', '4');
INSERT INTO `dp_dkcs_proimg` VALUES ('12', '1344', '7', '1', '0', 'www.baicu.dom', '5', '5', '1', '4');
INSERT INTO `dp_dkcs_proimg` VALUES ('13', '马上贷', '9', '1', '0', 'www.baicu.dom', '6', '0', '2', '4');
INSERT INTO `dp_dkcs_proimg` VALUES ('14', '马上带12', '8', '1', '0', 'www.baicu.dom', '6', '1', '2', '4');
INSERT INTO `dp_dkcs_proimg` VALUES ('15', '马上贷款123', '8', '1', '0', 'www.baicu.dom', '6', '2', '2', '4');
INSERT INTO `dp_dkcs_proimg` VALUES ('16', '嘛', '8', '1', '0', 'www.baicu.dom', '6', '3', '2', '4');
INSERT INTO `dp_dkcs_proimg` VALUES ('17', '萨芬', '8', '1', '0', 'www.baicu.dom', '6', '4', '2', '4');
INSERT INTO `dp_dkcs_proimg` VALUES ('18', '大', '8', '1', '1', '', '6', '5', '3', '0');
INSERT INTO `dp_dkcs_proimg` VALUES ('19', '急速贷', '8', '1', '1', '', '6', '5', '3', '0');
INSERT INTO `dp_dkcs_proimg` VALUES ('20', '销', '8', '1', '1', '', '6', '5', '3', '0');
INSERT INTO `dp_dkcs_proimg` VALUES ('21', '新', '8', '1', '1', '', '6', '5', '3', '0');
INSERT INTO `dp_dkcs_proimg` VALUES ('22', '', '7', '1', '1', '', '6', '5', '3', '1');
INSERT INTO `dp_dkcs_proimg` VALUES ('23', '', '7', '1', '1', 'www.baidu.com', '6', '5', '3', '2');
INSERT INTO `dp_dkcs_proimg` VALUES ('24', '', '9', '1', '1', '', '6', '5', '3', '3');
