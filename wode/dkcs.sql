-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017-11-03 09:23:09
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dkcs`
--

-- --------------------------------------------------------

--
-- 表的结构 `dp_admin_access`
--

CREATE TABLE `dp_admin_access` (
  `module` varchar(16) NOT NULL DEFAULT '' COMMENT '模型名称',
  `group` varchar(16) NOT NULL DEFAULT '' COMMENT '权限分组标识',
  `uid` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户id',
  `nid` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '授权节点id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='统一授权表';

-- --------------------------------------------------------

--
-- 表的结构 `dp_admin_action`
--

CREATE TABLE `dp_admin_action` (
  `id` int(11) UNSIGNED NOT NULL,
  `module` varchar(16) NOT NULL DEFAULT '' COMMENT '所属模块名',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '行为唯一标识',
  `title` varchar(80) NOT NULL DEFAULT '' COMMENT '行为标题',
  `remark` varchar(128) NOT NULL DEFAULT '' COMMENT '行为描述',
  `rule` text NOT NULL COMMENT '行为规则',
  `log` text NOT NULL COMMENT '日志规则',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='系统行为表';

--
-- 转存表中的数据 `dp_admin_action`
--

INSERT INTO `dp_admin_action` (`id`, `module`, `name`, `title`, `remark`, `rule`, `log`, `status`, `create_time`, `update_time`) VALUES
(1, 'user', 'user_add', '添加用户', '添加用户', '', '[user|get_nickname] 添加了用户：[record|get_nickname]', 1, 1480156399, 1480163853),
(2, 'user', 'user_edit', '编辑用户', '编辑用户', '', '[user|get_nickname] 编辑了用户：[details]', 1, 1480164578, 1480297748),
(3, 'user', 'user_delete', '删除用户', '删除用户', '', '[user|get_nickname] 删除了用户：[details]', 1, 1480168582, 1480168616),
(4, 'user', 'user_enable', '启用用户', '启用用户', '', '[user|get_nickname] 启用了用户：[details]', 1, 1480169185, 1480169185),
(5, 'user', 'user_disable', '禁用用户', '禁用用户', '', '[user|get_nickname] 禁用了用户：[details]', 1, 1480169214, 1480170581),
(6, 'user', 'user_access', '用户授权', '用户授权', '', '[user|get_nickname] 对用户：[record|get_nickname] 进行了授权操作。详情：[details]', 1, 1480221441, 1480221563),
(7, 'user', 'role_add', '添加角色', '添加角色', '', '[user|get_nickname] 添加了角色：[details]', 1, 1480251473, 1480251473),
(8, 'user', 'role_edit', '编辑角色', '编辑角色', '', '[user|get_nickname] 编辑了角色：[details]', 1, 1480252369, 1480252369),
(9, 'user', 'role_delete', '删除角色', '删除角色', '', '[user|get_nickname] 删除了角色：[details]', 1, 1480252580, 1480252580),
(10, 'user', 'role_enable', '启用角色', '启用角色', '', '[user|get_nickname] 启用了角色：[details]', 1, 1480252620, 1480252620),
(11, 'user', 'role_disable', '禁用角色', '禁用角色', '', '[user|get_nickname] 禁用了角色：[details]', 1, 1480252651, 1480252651),
(12, 'user', 'attachment_enable', '启用附件', '启用附件', '', '[user|get_nickname] 启用了附件：附件ID([details])', 1, 1480253226, 1480253332),
(13, 'user', 'attachment_disable', '禁用附件', '禁用附件', '', '[user|get_nickname] 禁用了附件：附件ID([details])', 1, 1480253267, 1480253340),
(14, 'user', 'attachment_delete', '删除附件', '删除附件', '', '[user|get_nickname] 删除了附件：附件ID([details])', 1, 1480253323, 1480253323),
(15, 'admin', 'config_add', '添加配置', '添加配置', '', '[user|get_nickname] 添加了配置，[details]', 1, 1480296196, 1480296196),
(16, 'admin', 'config_edit', '编辑配置', '编辑配置', '', '[user|get_nickname] 编辑了配置：[details]', 1, 1480296960, 1480296960),
(17, 'admin', 'config_enable', '启用配置', '启用配置', '', '[user|get_nickname] 启用了配置：[details]', 1, 1480298479, 1480298479),
(18, 'admin', 'config_disable', '禁用配置', '禁用配置', '', '[user|get_nickname] 禁用了配置：[details]', 1, 1480298506, 1480298506),
(19, 'admin', 'config_delete', '删除配置', '删除配置', '', '[user|get_nickname] 删除了配置：[details]', 1, 1480298532, 1480298532),
(20, 'admin', 'database_export', '备份数据库', '备份数据库', '', '[user|get_nickname] 备份了数据库：[details]', 1, 1480298946, 1480298946),
(21, 'admin', 'database_import', '还原数据库', '还原数据库', '', '[user|get_nickname] 还原了数据库：[details]', 1, 1480301990, 1480302022),
(22, 'admin', 'database_optimize', '优化数据表', '优化数据表', '', '[user|get_nickname] 优化了数据表：[details]', 1, 1480302616, 1480302616),
(23, 'admin', 'database_repair', '修复数据表', '修复数据表', '', '[user|get_nickname] 修复了数据表：[details]', 1, 1480302798, 1480302798),
(24, 'admin', 'database_backup_delete', '删除数据库备份', '删除数据库备份', '', '[user|get_nickname] 删除了数据库备份：[details]', 1, 1480302870, 1480302870),
(25, 'admin', 'hook_add', '添加钩子', '添加钩子', '', '[user|get_nickname] 添加了钩子：[details]', 1, 1480303198, 1480303198),
(26, 'admin', 'hook_edit', '编辑钩子', '编辑钩子', '', '[user|get_nickname] 编辑了钩子：[details]', 1, 1480303229, 1480303229),
(27, 'admin', 'hook_delete', '删除钩子', '删除钩子', '', '[user|get_nickname] 删除了钩子：[details]', 1, 1480303264, 1480303264),
(28, 'admin', 'hook_enable', '启用钩子', '启用钩子', '', '[user|get_nickname] 启用了钩子：[details]', 1, 1480303294, 1480303294),
(29, 'admin', 'hook_disable', '禁用钩子', '禁用钩子', '', '[user|get_nickname] 禁用了钩子：[details]', 1, 1480303409, 1480303409),
(30, 'admin', 'menu_add', '添加节点', '添加节点', '', '[user|get_nickname] 添加了节点：[details]', 1, 1480305468, 1480305468),
(31, 'admin', 'menu_edit', '编辑节点', '编辑节点', '', '[user|get_nickname] 编辑了节点：[details]', 1, 1480305513, 1480305513),
(32, 'admin', 'menu_delete', '删除节点', '删除节点', '', '[user|get_nickname] 删除了节点：[details]', 1, 1480305562, 1480305562),
(33, 'admin', 'menu_enable', '启用节点', '启用节点', '', '[user|get_nickname] 启用了节点：[details]', 1, 1480305630, 1480305630),
(34, 'admin', 'menu_disable', '禁用节点', '禁用节点', '', '[user|get_nickname] 禁用了节点：[details]', 1, 1480305659, 1480305659),
(35, 'admin', 'module_install', '安装模块', '安装模块', '', '[user|get_nickname] 安装了模块：[details]', 1, 1480307558, 1480307558),
(36, 'admin', 'module_uninstall', '卸载模块', '卸载模块', '', '[user|get_nickname] 卸载了模块：[details]', 1, 1480307588, 1480307588),
(37, 'admin', 'module_enable', '启用模块', '启用模块', '', '[user|get_nickname] 启用了模块：[details]', 1, 1480307618, 1480307618),
(38, 'admin', 'module_disable', '禁用模块', '禁用模块', '', '[user|get_nickname] 禁用了模块：[details]', 1, 1480307653, 1480307653),
(39, 'admin', 'module_export', '导出模块', '导出模块', '', '[user|get_nickname] 导出了模块：[details]', 1, 1480307682, 1480307682),
(40, 'admin', 'packet_install', '安装数据包', '安装数据包', '', '[user|get_nickname] 安装了数据包：[details]', 1, 1480308342, 1480308342),
(41, 'admin', 'packet_uninstall', '卸载数据包', '卸载数据包', '', '[user|get_nickname] 卸载了数据包：[details]', 1, 1480308372, 1480308372),
(42, 'admin', 'system_config_update', '更新系统设置', '更新系统设置', '', '[user|get_nickname] 更新了系统设置：[details]', 1, 1480309555, 1480309642);

-- --------------------------------------------------------

--
-- 表的结构 `dp_admin_attachment`
--

CREATE TABLE `dp_admin_attachment` (
  `id` int(11) UNSIGNED NOT NULL,
  `uid` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户id',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '文件名',
  `module` varchar(32) NOT NULL DEFAULT '' COMMENT '模块名，由哪个模块上传的',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '文件路径',
  `thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '缩略图路径',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '文件链接',
  `mime` varchar(64) NOT NULL DEFAULT '' COMMENT '文件mime类型',
  `ext` char(4) NOT NULL DEFAULT '' COMMENT '文件类型',
  `size` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '文件大小',
  `md5` char(32) NOT NULL DEFAULT '' COMMENT '文件md5',
  `sha1` char(40) NOT NULL DEFAULT '' COMMENT 'sha1 散列值',
  `driver` varchar(16) NOT NULL DEFAULT 'local' COMMENT '上传驱动',
  `download` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '下载次数',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '上传时间',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表';

--
-- 转存表中的数据 `dp_admin_attachment`
--

INSERT INTO `dp_admin_attachment` (`id`, `uid`, `name`, `module`, `path`, `thumb`, `url`, `mime`, `ext`, `size`, `md5`, `sha1`, `driver`, `download`, `create_time`, `update_time`, `sort`, `status`) VALUES
(1, 1, '1465400567_1024x768 (1).jpg', 'cs', 'uploads/images/20171017/cd5b7d2beb603accfec763586b5bbd1a.jpg', '', '', 'image/jpeg', 'jpg', 104478, 'db4118505744632c71d60326303ac31a', '2fea1a0282decd855ad32146b27e3b6af8e15643', 'local', 0, 1508214429, 1508214429, 100, 1),
(2, 1, 'wp.png', 'cs', 'uploads/images/20171017/bfc41c68516d361342d0f256d736c162.png', '', '', 'image/png', 'png', 19112, 'daef70ed9839d06887c53c448a787915', '1159440fc15eca193724bad527ba0cfc25be6ed3', 'local', 0, 1508214454, 1508214454, 100, 1),
(3, 1, 'QQ图片20160219092729.jpg', 'cs', 'uploads/images/20171021/0646f5de495f832bb9c04c1ad66883c0.jpg', '', '', 'image/jpeg', 'jpg', 57776, 'd0ede998a135ccabcd75a4f5a5d8ccd8', 'f199dab2b42e39df786f7452d0ed3f0b7f33787c', 'local', 0, 1508571762, 1508571762, 100, 1),
(4, 1, 'acf390c939fb65517f3e6f9a.gif', 'cs', 'uploads/images/20171021/aa1f52ea4034422240507b19a97b46ad.gif', '', '', 'image/gif', 'gif', 33773, '016a9d64bc29b5f6bdfa8b3805c39bf9', '77959eb0f0c985252690695fd050e6e3c4dc3a30', 'local', 0, 1508572050, 1508572050, 100, 1),
(5, 1, 'QQ图片20160222135050.gif', 'cs', 'uploads/images/20171021/2acd34607d8bcd34b4d8b5f88b688181.gif', '', '', 'image/gif', 'gif', 111751, '0045ca44300a46e5a588c363e53bfdaf', '135776915ca90af39d6cdda25cff314f89e409f3', 'local', 0, 1508572097, 1508572097, 100, 1),
(6, 1, '50da81cb39dbb6fda2d331e50324ab18962b376d.jpg', 'cs', 'uploads/images/20171023/574a871d1eaa9ed6d610a41319b5be6b.jpg', '', '', 'image/jpeg', 'jpg', 99160, '29069557cdd01ec7114e37d079aad6ec', '50bf84d6b62e0e6172c4550be6cb2526303a99fc', 'local', 0, 1508729971, 1508729971, 100, 1),
(7, 1, '3.png', 'cs', 'uploads/images/20171024/8b884ea9a41b7e0d22e74e7a579c1078.png', '', '', 'image/png', 'png', 262441, '8f8070f8675056e7b67fda2c10d753ab', 'bffe2cfe66db5a1c8fd6ae37c1bfe01a3079a918', 'local', 0, 1508821427, 1508821427, 100, 1),
(8, 1, 'fund.png', 'cs', 'uploads/images/20171024/b529d886027288204fff8a04e381fd52.png', '', '', 'image/png', 'png', 4765, 'd05b493b0e9beca07fad847c4058765e', '647a22a5547daa81db8647fa03986ea56187d39b', 'local', 0, 1508821544, 1508821544, 100, 1),
(9, 1, '等待@2x.png', 'cs', 'uploads/images/20171024/f37d0a81ee0ea9e929307aef92755f68.png', '', '', 'image/png', 'png', 12883, '29f9aba7f19d5ed3da580b2bbf2bbc23', 'ebfcff06ad390dabde55fdadd7a0e350be683623', 'local', 0, 1508838891, 1508838891, 100, 1),
(10, 1, '凭芝麻分0000_02.jpg', 'cs', 'uploads/images/20171026/146f5199728947de210dc84ba7ccf0dd.jpg', '', '', 'image/jpeg', 'jpg', 163911, '41c6d46e99d998ff98f6b1e621c11b0e', '1e219e3e21db4d5fe6cd010c2cd7eac152be823c', 'local', 0, 1508998698, 1508998698, 100, 1),
(11, 1, '凭芝麻分0000_18.png', 'cs', 'uploads/images/20171026/2c4f5646090825e19a30abee9c84224d.png', '', '', 'image/png', 'png', 35100, '22d3155fe93fd3cf83cfee99f470403a', 'a983f19680e72751ca101a8fae998c3bef546d8a', 'local', 0, 1508999946, 1508999946, 100, 1);

-- --------------------------------------------------------

--
-- 表的结构 `dp_admin_config`
--

CREATE TABLE `dp_admin_config` (
  `id` int(11) UNSIGNED NOT NULL,
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
  `level` tinyint(2) UNSIGNED NOT NULL DEFAULT '2' COMMENT '联动级别，只用于快速联动类型',
  `key` varchar(32) NOT NULL DEFAULT '' COMMENT '键字段，只用于快速联动类型',
  `option` varchar(32) NOT NULL DEFAULT '' COMMENT '值字段，只用于快速联动类型',
  `pid` varchar(32) NOT NULL DEFAULT '' COMMENT '父级id字段，只用于快速联动类型',
  `ak` varchar(32) NOT NULL DEFAULT '' COMMENT '百度地图appkey',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态：0禁用，1启用'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='系统配置表';

--
-- 转存表中的数据 `dp_admin_config`
--

INSERT INTO `dp_admin_config` (`id`, `name`, `title`, `group`, `type`, `value`, `options`, `tips`, `ajax_url`, `next_items`, `param`, `format`, `table`, `level`, `key`, `option`, `pid`, `ak`, `create_time`, `update_time`, `sort`, `status`) VALUES
(1, 'web_site_status', '站点开关', 'base', 'switch', '1', '', '站点关闭后将不能访问，后台可正常登录', '', '', '', '', '', 2, '', '', '', '', 1475240395, 1477403914, 1, 1),
(2, 'web_site_title', '站点标题', 'base', 'text', '海豚PHP', '', '调用方式：<code>config(\'web_site_title\')</code>', '', '', '', '', '', 2, '', '', '', '', 1475240646, 1477710341, 2, 1),
(3, 'web_site_slogan', '站点标语', 'base', 'text', '海豚PHP，极简、极速、极致', '', '站点口号，调用方式：<code>config(\'web_site_slogan\')</code>', '', '', '', '', '', 2, '', '', '', '', 1475240994, 1477710357, 3, 1),
(4, 'web_site_logo', '站点LOGO', 'base', 'image', '', '', '', '', '', '', '', '', 2, '', '', '', '', 1475241067, 1475241067, 4, 1),
(5, 'web_site_description', '站点描述', 'base', 'textarea', '', '', '网站描述，有利于搜索引擎抓取相关信息', '', '', '', '', '', 2, '', '', '', '', 1475241186, 1475241186, 6, 1),
(6, 'web_site_keywords', '站点关键词', 'base', 'text', '海豚PHP、PHP开发框架、后台框架', '', '网站搜索引擎关键字', '', '', '', '', '', 2, '', '', '', '', 1475241328, 1475241328, 7, 1),
(7, 'web_site_copyright', '版权信息', 'base', 'text', 'Copyright © 2015-2017 DolphinPHP All rights reserved.', '', '调用方式：<code>config(\'web_site_copyright\')</code>', '', '', '', '', '', 2, '', '', '', '', 1475241416, 1477710383, 8, 1),
(8, 'web_site_icp', '备案信息', 'base', 'text', '', '', '调用方式：<code>config(\'web_site_icp\')</code>', '', '', '', '', '', 2, '', '', '', '', 1475241441, 1477710441, 9, 1),
(9, 'web_site_statistics', '站点统计', 'base', 'textarea', '', '', '网站统计代码，支持百度、Google、cnzz等，调用方式：<code>config(\'web_site_statistics\')</code>', '', '', '', '', '', 2, '', '', '', '', 1475241498, 1477710455, 10, 1),
(10, 'config_group', '配置分组', 'system', 'array', 'base:基本\r\nsystem:系统\r\nupload:上传\r\ndevelop:开发\r\ndatabase:数据库', '', '', '', '', '', '', '', 2, '', '', '', '', 1475241716, 1477649446, 100, 1),
(11, 'form_item_type', '配置类型', 'system', 'array', 'text:单行文本\r\ntextarea:多行文本\r\nstatic:静态文本\r\npassword:密码\r\ncheckbox:复选框\r\nradio:单选按钮\r\ndate:日期\r\ndatetime:日期+时间\r\nhidden:隐藏\r\nswitch:开关\r\narray:数组\r\nselect:下拉框\r\nlinkage:普通联动下拉框\r\nlinkages:快速联动下拉框\r\nimage:单张图片\r\nimages:多张图片\r\nfile:单个文件\r\nfiles:多个文件\r\nueditor:UEditor 编辑器\r\nwangeditor:wangEditor 编辑器\r\neditormd:markdown 编辑器\r\nckeditor:ckeditor 编辑器\r\nicon:字体图标\r\ntags:标签\r\nnumber:数字\r\nbmap:百度地图\r\ncolorpicker:取色器\r\njcrop:图片裁剪\r\nmasked:格式文本\r\nrange:范围\r\ntime:时间', '', '', '', '', '', '', '', 2, '', '', '', '', 1475241835, 1495853193, 100, 1),
(12, 'upload_file_size', '文件上传大小限制', 'upload', 'text', '0', '', '0为不限制大小，单位：kb', '', '', '', '', '', 2, '', '', '', '', 1475241897, 1477663520, 100, 1),
(13, 'upload_file_ext', '允许上传的文件后缀', 'upload', 'tags', 'doc,docx,xls,xlsx,ppt,pptx,pdf,wps,txt,rar,zip,gz,bz2,7z', '', '多个后缀用逗号隔开，不填写则不限制类型', '', '', '', '', '', 2, '', '', '', '', 1475241975, 1477649489, 100, 1),
(14, 'upload_image_size', '图片上传大小限制', 'upload', 'text', '0', '', '0为不限制大小，单位：kb', '', '', '', '', '', 2, '', '', '', '', 1475242015, 1477663529, 100, 1),
(15, 'upload_image_ext', '允许上传的图片后缀', 'upload', 'tags', 'gif,jpg,jpeg,bmp,png', '', '多个后缀用逗号隔开，不填写则不限制类型', '', '', '', '', '', 2, '', '', '', '', 1475242056, 1477649506, 100, 1),
(16, 'list_rows', '分页数量', 'system', 'number', '20', '', '每页的记录数', '', '', '', '', '', 2, '', '', '', '', 1475242066, 1476074507, 101, 1),
(17, 'system_color', '后台配色方案', 'system', 'radio', 'default', 'default:Default\r\namethyst:Amethyst\r\ncity:City\r\nflat:Flat\r\nmodern:Modern\r\nsmooth:Smooth', '', '', '', '', '', '', 2, '', '', '', '', 1475250066, 1477316689, 102, 1),
(18, 'develop_mode', '开发模式', 'develop', 'radio', '1', '0:关闭\r\n1:开启', '', '', '', '', '', '', 2, '', '', '', '', 1476864205, 1476864231, 100, 1),
(19, 'app_trace', '显示页面Trace', 'develop', 'radio', '0', '0:否\r\n1:是', '', '', '', '', '', '', 2, '', '', '', '', 1476866355, 1476866355, 100, 1),
(21, 'data_backup_path', '数据库备份根路径', 'database', 'text', './data/', '', '路径必须以 / 结尾', '', '', '', '', '', 2, '', '', '', '', 1477017745, 1477018467, 100, 1),
(22, 'data_backup_part_size', '数据库备份卷大小', 'database', 'text', '20971520', '', '该值用于限制压缩后的分卷最大长度。单位：B；建议设置20M', '', '', '', '', '', 2, '', '', '', '', 1477017886, 1477017886, 100, 1),
(23, 'data_backup_compress', '数据库备份文件是否启用压缩', 'database', 'radio', '1', '0:否\r\n1:是', '压缩备份文件需要PHP环境支持 <code>gzopen</code>, <code>gzwrite</code>函数', '', '', '', '', '', 2, '', '', '', '', 1477017978, 1477018172, 100, 1),
(24, 'data_backup_compress_level', '数据库备份文件压缩级别', 'database', 'radio', '9', '1:最低\r\n4:一般\r\n9:最高', '数据库备份文件的压缩级别，该配置在开启压缩时生效', '', '', '', '', '', 2, '', '', '', '', 1477018083, 1477018083, 100, 1),
(25, 'top_menu_max', '顶部导航模块数量', 'system', 'text', '10', '', '设置顶部导航默认显示的模块数量', '', '', '', '', '', 2, '', '', '', '', 1477579289, 1477579289, 103, 1),
(26, 'web_site_logo_text', '站点LOGO文字', 'base', 'image', '', '', '', '', '', '', '', '', 2, '', '', '', '', 1477620643, 1477620643, 5, 1),
(27, 'upload_image_thumb', '缩略图尺寸', 'upload', 'text', '', '', '不填写则不生成缩略图，如需生成 <code>300x300</code> 的缩略图，则填写 <code>300,300</code> ，请注意，逗号必须是英文逗号', '', '', '', '', '', 2, '', '', '', '', 1477644150, 1477649513, 100, 1),
(28, 'upload_image_thumb_type', '缩略图裁剪类型', 'upload', 'radio', '1', '1:等比例缩放\r\n2:缩放后填充\r\n3:居中裁剪\r\n4:左上角裁剪\r\n5:右下角裁剪\r\n6:固定尺寸缩放', '该项配置只有在启用生成缩略图时才生效', '', '', '', '', '', 2, '', '', '', '', 1477646271, 1477649521, 100, 1),
(29, 'upload_thumb_water', '添加水印', 'upload', 'switch', '0', '', '', '', '', '', '', '', 2, '', '', '', '', 1477649648, 1477649648, 100, 1),
(30, 'upload_thumb_water_pic', '水印图片', 'upload', 'image', '', '', '只有开启水印功能才生效', '', '', '', '', '', 2, '', '', '', '', 1477656390, 1477656390, 100, 1),
(31, 'upload_thumb_water_position', '水印位置', 'upload', 'radio', '9', '1:左上角\r\n2:上居中\r\n3:右上角\r\n4:左居中\r\n5:居中\r\n6:右居中\r\n7:左下角\r\n8:下居中\r\n9:右下角', '只有开启水印功能才生效', '', '', '', '', '', 2, '', '', '', '', 1477656528, 1477656528, 100, 1),
(32, 'upload_thumb_water_alpha', '水印透明度', 'upload', 'text', '50', '', '请输入0~100之间的数字，数字越小，透明度越高', '', '', '', '', '', 2, '', '', '', '', 1477656714, 1477661309, 100, 1),
(33, 'wipe_cache_type', '清除缓存类型', 'system', 'checkbox', 'TEMP_PATH', 'TEMP_PATH:应用缓存\r\nLOG_PATH:应用日志\r\nCACHE_PATH:项目模板缓存', '清除缓存时，要删除的缓存类型', '', '', '', '', '', 2, '', '', '', '', 1477727305, 1477727305, 100, 1),
(34, 'captcha_signin', '后台验证码开关', 'system', 'switch', '0', '', '后台登录时是否需要验证码', '', '', '', '', '', 2, '', '', '', '', 1478771958, 1478771958, 99, 1),
(35, 'home_default_module', '前台默认模块', 'system', 'select', 'index', '', '前台默认访问的模块，该模块必须有Index控制器和index方法', '', '', '', '', '', 0, '', '', '', '', 1486714723, 1486715620, 104, 1),
(36, 'minify_status', '开启minify', 'system', 'switch', '0', '', '开启minify会压缩合并js、css文件，可以减少资源请求次数，如果不支持minify，可关闭', '', '', '', '', '', 0, '', '', '', '', 1487035843, 1487035843, 99, 1);

-- --------------------------------------------------------

--
-- 表的结构 `dp_admin_hook`
--

CREATE TABLE `dp_admin_hook` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `plugin` varchar(32) NOT NULL DEFAULT '' COMMENT '钩子来自哪个插件',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '钩子描述',
  `system` tinyint(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否为系统钩子',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='钩子表';

--
-- 转存表中的数据 `dp_admin_hook`
--

INSERT INTO `dp_admin_hook` (`id`, `name`, `plugin`, `description`, `system`, `create_time`, `update_time`, `status`) VALUES
(1, 'admin_index', '', '后台首页', 1, 1468174214, 1477757518, 0),
(2, 'plugin_index_tab_list', '', '插件扩展tab钩子', 1, 1468174214, 1468174214, 1),
(3, 'module_index_tab_list', '', '模块扩展tab钩子', 1, 1468174214, 1468174214, 1),
(4, 'page_tips', '', '每个页面的提示', 1, 1468174214, 1468174214, 1),
(5, 'signin_footer', '', '登录页面底部钩子', 1, 1479269315, 1479269315, 1),
(6, 'signin_captcha', '', '登录页面验证码钩子', 1, 1479269315, 1479269315, 1),
(7, 'signin', '', '登录控制器钩子', 1, 1479386875, 1479386875, 1);

-- --------------------------------------------------------

--
-- 表的结构 `dp_admin_hook_plugin`
--

CREATE TABLE `dp_admin_hook_plugin` (
  `id` int(11) UNSIGNED NOT NULL,
  `hook` varchar(32) NOT NULL DEFAULT '' COMMENT '钩子id',
  `plugin` varchar(32) NOT NULL DEFAULT '' COMMENT '插件标识',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) UNSIGNED NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='钩子-插件对应表';

--
-- 转存表中的数据 `dp_admin_hook_plugin`
--

INSERT INTO `dp_admin_hook_plugin` (`id`, `hook`, `plugin`, `create_time`, `update_time`, `sort`, `status`) VALUES
(1, 'admin_index', 'SystemInfo', 1477757503, 1477757503, 1, 0),
(2, 'admin_index', 'DevTeam', 1477755780, 1477755780, 2, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dp_admin_log`
--

CREATE TABLE `dp_admin_log` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '主键',
  `action_id` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '行为id',
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '执行用户id',
  `action_ip` bigint(20) NOT NULL COMMENT '执行行为者ip',
  `model` varchar(50) NOT NULL DEFAULT '' COMMENT '触发行为的表',
  `record_id` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '触发行为的数据id',
  `remark` longtext NOT NULL COMMENT '日志备注',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '执行行为的时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='行为日志表' ROW_FORMAT=FIXED;

--
-- 转存表中的数据 `dp_admin_log`
--

INSERT INTO `dp_admin_log` (`id`, `action_id`, `user_id`, `action_ip`, `model`, `record_id`, `remark`, `status`, `create_time`) VALUES
(1, 26, 1, 2130706433, 'admin_hook', 1, '超级管理员 编辑了钩子：禁用钩子', 1, 1501055415),
(2, 35, 1, 2130706433, 'admin_module', 0, '超级管理员 安装了模块：贷款超市', 1, 1501055596),
(3, 30, 1, 2130706433, 'admin_menu', 214, '超级管理员 添加了节点：所属模块(cs),所属节点ID(0),节点标题(贷款超市),节点链接(cs/index/index)', 1, 1501057348),
(4, 30, 1, 2130706433, 'admin_menu', 215, '超级管理员 添加了节点：所属模块(cs),所属节点ID(214),节点标题(超市),节点链接()', 1, 1501057457),
(5, 31, 1, 2130706433, 'admin_menu', 215, '超级管理员 编辑了节点：节点ID(215)', 1, 1501057528),
(6, 31, 1, 2130706433, 'admin_menu', 215, '超级管理员 编辑了节点：节点ID(215)', 1, 1501057954),
(7, 31, 1, 2130706433, 'admin_menu', 215, '超级管理员 编辑了节点：节点ID(215)', 1, 1501057989),
(8, 30, 1, 2130706433, 'admin_menu', 216, '超级管理员 添加了节点：所属模块(cs),所属节点ID(214),节点标题(贷款平台),节点链接()', 1, 1501058021),
(9, 31, 1, 2130706433, 'admin_menu', 215, '超级管理员 编辑了节点：节点ID(215)', 1, 1501058072),
(10, 30, 1, 2130706433, 'admin_menu', 217, '超级管理员 添加了节点：所属模块(cs),所属节点ID(215),节点标题(添加),节点链接()', 1, 1501059969),
(11, 30, 1, 2130706433, 'admin_menu', 218, '超级管理员 添加了节点：所属模块(cs),所属节点ID(215),节点标题(编辑),节点链接()', 1, 1501059982),
(12, 30, 1, 2130706433, 'admin_menu', 219, '超级管理员 添加了节点：所属模块(cs),所属节点ID(215),节点标题(删除),节点链接()', 1, 1501059993),
(13, 31, 1, 2130706433, 'admin_menu', 217, '超级管理员 编辑了节点：节点ID(217)', 1, 1501060008),
(14, 31, 1, 2130706433, 'admin_menu', 218, '超级管理员 编辑了节点：节点ID(218)', 1, 1501063727),
(15, 31, 1, 2130706433, 'admin_menu', 217, '超级管理员 编辑了节点：节点ID(217)', 1, 1501119269),
(16, 31, 1, 2130706433, 'admin_menu', 217, '超级管理员 编辑了节点：节点ID(217)', 1, 1501119293),
(17, 30, 1, 2130706433, 'admin_menu', 220, '超级管理员 添加了节点：所属模块(cs),所属节点ID(216),节点标题(平台列表),节点链接()', 1, 1501119664),
(18, 31, 1, 2130706433, 'admin_menu', 220, '超级管理员 编辑了节点：节点ID(220)', 1, 1501119920),
(19, 31, 1, 2130706433, 'admin_menu', 220, '超级管理员 编辑了节点：节点ID(220)', 1, 1501120424),
(20, 31, 1, 2130706433, 'admin_menu', 220, '超级管理员 编辑了节点：节点ID(220)', 1, 1501120457),
(21, 30, 1, 2130706433, 'admin_menu', 221, '超级管理员 添加了节点：所属模块(cs),所属节点ID(220),节点标题(添加),节点链接(cs/prolist/add)', 1, 1501121850),
(22, 30, 1, 2130706433, 'admin_menu', 222, '超级管理员 添加了节点：所属模块(cs),所属节点ID(220),节点标题(编辑),节点链接(cs/prolist/edit)', 1, 1501121875),
(23, 30, 1, 2130706433, 'admin_menu', 223, '超级管理员 添加了节点：所属模块(cs),所属节点ID(220),节点标题(删除),节点链接()', 1, 1501121911),
(24, 31, 1, 2130706433, 'admin_menu', 214, '超级管理员 编辑了节点：节点ID(214)', 1, 1508569140),
(25, 31, 1, 2130706433, 'admin_menu', 214, '超级管理员 编辑了节点：节点ID(214)', 1, 1508569162),
(26, 30, 1, 2130706433, 'admin_menu', 224, '超级管理员 添加了节点：所属模块(cs),所属节点ID(214),节点标题(理财平台),节点链接()', 1, 1508569805),
(27, 30, 1, 2130706433, 'admin_menu', 225, '超级管理员 添加了节点：所属模块(cs),所属节点ID(224),节点标题(轮播图),节点链接( cs/Financing/index)', 1, 1508569835),
(28, 30, 1, 2130706433, 'admin_menu', 226, '超级管理员 添加了节点：所属模块(cs),所属节点ID(225),节点标题(添加),节点链接(cs/Financing/add)', 1, 1508569864),
(29, 30, 1, 2130706433, 'admin_menu', 227, '超级管理员 添加了节点：所属模块(cs),所属节点ID(225),节点标题(修改),节点链接( cs/financing/edit)', 1, 1508569898),
(30, 30, 1, 2130706433, 'admin_menu', 228, '超级管理员 添加了节点：所属模块(cs),所属节点ID(225),节点标题(删除),节点链接()', 1, 1508569929),
(31, 30, 1, 2130706433, 'admin_menu', 229, '超级管理员 添加了节点：所属模块(cs),所属节点ID(224),节点标题(平台列表),节点链接(cs/Financinglist/index)', 1, 1508569988),
(32, 30, 1, 2130706433, 'admin_menu', 230, '超级管理员 添加了节点：所属模块(cs),所属节点ID(229),节点标题(添加),节点链接(cs/Financinglist/add)', 1, 1508570007),
(33, 30, 1, 2130706433, 'admin_menu', 231, '超级管理员 添加了节点：所属模块(cs),所属节点ID(229),节点标题(修改),节点链接(cs/Financinglist/edit)', 1, 1508570027),
(34, 31, 1, 2130706433, 'admin_menu', 224, '超级管理员 编辑了节点：节点ID(224)', 1, 1508574787),
(35, 32, 1, 2130706433, 'admin_menu', 229, '超级管理员 删除了节点：节点ID(229),节点标题(平台列表),节点链接(cs/financinglist/index)', 1, 1508574799),
(36, 31, 1, 2130706433, 'admin_menu', 224, '超级管理员 编辑了节点：节点ID(224)', 1, 1508574873),
(37, 30, 1, 2130706433, 'admin_menu', 232, '超级管理员 添加了节点：所属模块(cs),所属节点ID(214),节点标题(问题反馈),节点链接()', 1, 1508574892),
(38, 32, 1, 2130706433, 'admin_menu', 226, '超级管理员 删除了节点：节点ID(226),节点标题(添加),节点链接(cs/financing/add)', 1, 1508575485),
(39, 32, 1, 2130706433, 'admin_menu', 227, '超级管理员 删除了节点：节点ID(227),节点标题(修改),节点链接(cs/financing/edit)', 1, 1508575490),
(40, 32, 1, 2130706433, 'admin_menu', 228, '超级管理员 删除了节点：节点ID(228),节点标题(删除),节点链接()', 1, 1508575495),
(41, 32, 1, 2130706433, 'admin_menu', 225, '超级管理员 删除了节点：节点ID(225),节点标题(轮播图),节点链接(cs/financing/index)', 1, 1508575520),
(42, 31, 1, 2130706433, 'admin_menu', 224, '超级管理员 编辑了节点：节点ID(224)', 1, 1508575557),
(43, 30, 1, 2130706433, 'admin_menu', 233, '超级管理员 添加了节点：所属模块(cs),所属节点ID(224),节点标题(添加),节点链接(cs/basicconfig/add)', 1, 1508730417),
(44, 30, 1, 2130706433, 'admin_menu', 234, '超级管理员 添加了节点：所属模块(cs),所属节点ID(224),节点标题(编辑),节点链接(cs/basicconfig/edit)', 1, 1508730445),
(45, 30, 1, 2130706433, 'admin_menu', 235, '超级管理员 添加了节点：所属模块(cs),所属节点ID(224),节点标题(删除),节点链接()', 1, 1508730463),
(46, 30, 1, 2130706433, 'admin_menu', 236, '超级管理员 添加了节点：所属模块(cs),所属节点ID(224),节点标题(首页分类),节点链接()', 1, 1508730551),
(47, 31, 1, 2130706433, 'admin_menu', 236, '超级管理员 编辑了节点：节点ID(236)', 1, 1508730566),
(48, 31, 1, 2130706433, 'admin_menu', 224, '超级管理员 编辑了节点：节点ID(224)', 1, 1508730574),
(49, 31, 1, 2130706433, 'admin_menu', 233, '超级管理员 编辑了节点：节点ID(233)', 1, 1508730588),
(50, 31, 1, 2130706433, 'admin_menu', 234, '超级管理员 编辑了节点：节点ID(234)', 1, 1508730604),
(51, 31, 1, 2130706433, 'admin_menu', 235, '超级管理员 编辑了节点：节点ID(235)', 1, 1508730614),
(52, 31, 1, 2130706433, 'admin_menu', 224, '超级管理员 编辑了节点：节点ID(224)', 1, 1508730653),
(53, 31, 1, 2130706433, 'admin_menu', 216, '超级管理员 编辑了节点：节点ID(216)', 1, 1508730696),
(54, 31, 1, 2130706433, 'admin_menu', 216, '超级管理员 编辑了节点：节点ID(216)', 1, 1508737847),
(55, 30, 1, 2130706433, 'admin_menu', 237, '超级管理员 添加了节点：所属模块(cs),所属节点ID(216),节点标题(首页分类),节点链接(cs/basicconfig/index)', 1, 1508737870),
(56, 30, 1, 2130706433, 'admin_menu', 238, '超级管理员 添加了节点：所属模块(cs),所属节点ID(237),节点标题(添加),节点链接(cs/basicconfig/add)', 1, 1508737888),
(57, 30, 1, 2130706433, 'admin_menu', 239, '超级管理员 添加了节点：所属模块(cs),所属节点ID(237),节点标题(编辑),节点链接(cs/basicconfig/edit)', 1, 1508737909),
(58, 30, 1, 2130706433, 'admin_menu', 240, '超级管理员 添加了节点：所属模块(cs),所属节点ID(237),节点标题(删除),节点链接()', 1, 1508737925),
(59, 32, 1, 2130706433, 'admin_menu', 224, '超级管理员 删除了节点：节点ID(224),节点标题(基本配置),节点链接(cs/basicconfig/index)', 1, 1508738036),
(60, 31, 1, 2130706433, 'admin_menu', 237, '超级管理员 编辑了节点：节点ID(237)', 1, 1508738053),
(61, 31, 1, 2130706433, 'admin_menu', 238, '超级管理员 编辑了节点：节点ID(238)', 1, 1508738061),
(62, 31, 1, 2130706433, 'admin_menu', 239, '超级管理员 编辑了节点：节点ID(239)', 1, 1508738068),
(63, 31, 1, 2130706433, 'admin_menu', 232, '超级管理员 编辑了节点：节点ID(232)', 1, 1508740555),
(64, 31, 1, 2130706433, 'admin_menu', 232, '超级管理员 编辑了节点：节点ID(232)', 1, 1508740690),
(65, 35, 1, 2130706433, 'admin_module', 0, '超级管理员 安装了模块：会员', 1, 1508747139),
(66, 30, 1, 2130706433, 'admin_menu', 241, '超级管理员 添加了节点：所属模块(admin),所属节点ID(0),节点标题(会员),节点链接(member/Index/index)', 1, 1508747605),
(67, 32, 1, 2130706433, 'admin_menu', 241, '超级管理员 删除了节点：节点ID(241),节点标题(会员),节点链接(member/index/index)', 1, 1508747653),
(68, 30, 1, 2130706433, 'admin_menu', 242, '超级管理员 添加了节点：所属模块(member),所属节点ID(0),节点标题(会员),节点链接(member/index/index)', 1, 1508747742),
(69, 31, 1, 2130706433, 'admin_menu', 242, '超级管理员 编辑了节点：节点ID(242)', 1, 1508747767),
(70, 30, 1, 2130706433, 'admin_menu', 243, '超级管理员 添加了节点：所属模块(member),所属节点ID(242),节点标题(会员),节点链接(member/index/index)', 1, 1508748011);

-- --------------------------------------------------------

--
-- 表的结构 `dp_admin_menu`
--

CREATE TABLE `dp_admin_menu` (
  `id` int(11) UNSIGNED NOT NULL,
  `pid` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '上级菜单id',
  `module` varchar(16) NOT NULL DEFAULT '' COMMENT '模块名称',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '菜单标题',
  `icon` varchar(64) NOT NULL DEFAULT '' COMMENT '菜单图标',
  `url_type` varchar(16) NOT NULL DEFAULT '' COMMENT '链接类型（link：外链，module：模块）',
  `url_value` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `url_target` varchar(16) NOT NULL DEFAULT '_self' COMMENT '链接打开方式：_blank,_self',
  `online_hide` tinyint(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT '网站上线后是否隐藏',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `system_menu` tinyint(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否为系统菜单，系统菜单不可删除',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='后台菜单表';

--
-- 转存表中的数据 `dp_admin_menu`
--

INSERT INTO `dp_admin_menu` (`id`, `pid`, `module`, `title`, `icon`, `url_type`, `url_value`, `url_target`, `online_hide`, `create_time`, `update_time`, `sort`, `system_menu`, `status`) VALUES
(1, 0, 'admin', '首页', 'fa fa-fw fa-home', 'module_admin', 'admin/index/index', '_self', 0, 1467617722, 1477710540, 1, 1, 1),
(2, 1, 'admin', '快捷操作', 'fa fa-fw fa-folder-open-o', 'module_admin', '', '_self', 0, 1467618170, 1477710695, 1, 1, 1),
(3, 2, 'admin', '清空缓存', 'fa fa-fw fa-trash-o', 'module_admin', 'admin/index/wipecache', '_self', 0, 1467618273, 1489049773, 3, 1, 1),
(4, 0, 'admin', '系统', 'fa fa-fw fa-gear', 'module_admin', 'admin/system/index', '_self', 0, 1467618361, 1477710540, 2, 1, 1),
(5, 4, 'admin', '系统功能', 'si si-wrench', 'module_admin', '', '_self', 0, 1467618441, 1477710695, 1, 1, 1),
(6, 5, 'admin', '系统设置', 'fa fa-fw fa-wrench', 'module_admin', 'admin/system/index', '_self', 0, 1467618490, 1477710695, 1, 1, 1),
(7, 5, 'admin', '配置管理', 'fa fa-fw fa-gears', 'module_admin', 'admin/config/index', '_self', 0, 1467618618, 1477710695, 2, 1, 1),
(8, 7, 'admin', '新增', '', 'module_admin', 'admin/config/add', '_self', 0, 1467618648, 1477710695, 1, 1, 1),
(9, 7, 'admin', '编辑', '', 'module_admin', 'admin/config/edit', '_self', 0, 1467619566, 1477710695, 2, 1, 1),
(10, 7, 'admin', '删除', '', 'module_admin', 'admin/config/delete', '_self', 0, 1467619583, 1477710695, 3, 1, 1),
(11, 7, 'admin', '启用', '', 'module_admin', 'admin/config/enable', '_self', 0, 1467619609, 1477710695, 4, 1, 1),
(12, 7, 'admin', '禁用', '', 'module_admin', 'admin/config/disable', '_self', 0, 1467619637, 1477710695, 5, 1, 1),
(13, 5, 'admin', '节点管理', 'fa fa-fw fa-bars', 'module_admin', 'admin/menu/index', '_self', 0, 1467619882, 1477710695, 3, 1, 1),
(14, 13, 'admin', '新增', '', 'module_admin', 'admin/menu/add', '_self', 0, 1467619902, 1477710695, 1, 1, 1),
(15, 13, 'admin', '编辑', '', 'module_admin', 'admin/menu/edit', '_self', 0, 1467620331, 1477710695, 2, 1, 1),
(16, 13, 'admin', '删除', '', 'module_admin', 'admin/menu/delete', '_self', 0, 1467620363, 1477710695, 3, 1, 1),
(17, 13, 'admin', '启用', '', 'module_admin', 'admin/menu/enable', '_self', 0, 1467620386, 1477710695, 4, 1, 1),
(18, 13, 'admin', '禁用', '', 'module_admin', 'admin/menu/disable', '_self', 0, 1467620404, 1477710695, 5, 1, 1),
(19, 68, 'user', '权限管理', 'fa fa-fw fa-key', 'module_admin', '', '_self', 0, 1467688065, 1477710702, 1, 1, 1),
(20, 19, 'user', '用户管理', 'fa fa-fw fa-user', 'module_admin', 'user/index/index', '_self', 0, 1467688137, 1477710702, 1, 1, 1),
(21, 20, 'user', '新增', '', 'module_admin', 'user/index/add', '_self', 0, 1467688177, 1477710702, 1, 1, 1),
(22, 20, 'user', '编辑', '', 'module_admin', 'user/index/edit', '_self', 0, 1467688202, 1477710702, 2, 1, 1),
(23, 20, 'user', '删除', '', 'module_admin', 'user/index/delete', '_self', 0, 1467688219, 1477710702, 3, 1, 1),
(24, 20, 'user', '启用', '', 'module_admin', 'user/index/enable', '_self', 0, 1467688238, 1477710702, 4, 1, 1),
(25, 20, 'user', '禁用', '', 'module_admin', 'user/index/disable', '_self', 0, 1467688256, 1477710702, 5, 1, 1),
(211, 64, 'admin', '日志详情', '', 'module_admin', 'admin/log/details', '_self', 0, 1480299320, 1480299320, 100, 0, 1),
(32, 4, 'admin', '扩展中心', 'si si-social-dropbox', 'module_admin', '', '_self', 0, 1467688853, 1477710695, 2, 1, 1),
(33, 32, 'admin', '模块管理', 'fa fa-fw fa-th-large', 'module_admin', 'admin/module/index', '_self', 0, 1467689008, 1477710695, 1, 1, 1),
(34, 33, 'admin', '导入', '', 'module_admin', 'admin/module/import', '_self', 0, 1467689153, 1477710695, 1, 1, 1),
(35, 33, 'admin', '导出', '', 'module_admin', 'admin/module/export', '_self', 0, 1467689173, 1477710695, 2, 1, 1),
(36, 33, 'admin', '安装', '', 'module_admin', 'admin/module/install', '_self', 0, 1467689192, 1477710695, 3, 1, 1),
(37, 33, 'admin', '卸载', '', 'module_admin', 'admin/module/uninstall', '_self', 0, 1467689241, 1477710695, 4, 1, 1),
(38, 33, 'admin', '启用', '', 'module_admin', 'admin/module/enable', '_self', 0, 1467689294, 1477710695, 5, 1, 1),
(39, 33, 'admin', '禁用', '', 'module_admin', 'admin/module/disable', '_self', 0, 1467689312, 1477710695, 6, 1, 1),
(40, 33, 'admin', '更新', '', 'module_admin', 'admin/module/update', '_self', 0, 1467689341, 1477710695, 7, 1, 1),
(41, 32, 'admin', '插件管理', 'fa fa-fw fa-puzzle-piece', 'module_admin', 'admin/plugin/index', '_self', 0, 1467689527, 1477710695, 2, 1, 1),
(42, 41, 'admin', '导入', '', 'module_admin', 'admin/plugin/import', '_self', 0, 1467689650, 1477710695, 1, 1, 1),
(43, 41, 'admin', '导出', '', 'module_admin', 'admin/plugin/export', '_self', 0, 1467689665, 1477710695, 2, 1, 1),
(44, 41, 'admin', '安装', '', 'module_admin', 'admin/plugin/install', '_self', 0, 1467689680, 1477710695, 3, 1, 1),
(45, 41, 'admin', '卸载', '', 'module_admin', 'admin/plugin/uninstall', '_self', 0, 1467689700, 1477710695, 4, 1, 1),
(46, 41, 'admin', '启用', '', 'module_admin', 'admin/plugin/enable', '_self', 0, 1467689730, 1477710695, 5, 1, 1),
(47, 41, 'admin', '禁用', '', 'module_admin', 'admin/plugin/disable', '_self', 0, 1467689747, 1477710695, 6, 1, 1),
(48, 41, 'admin', '设置', '', 'module_admin', 'admin/plugin/config', '_self', 0, 1467689789, 1477710695, 7, 1, 1),
(49, 41, 'admin', '管理', '', 'module_admin', 'admin/plugin/manage', '_self', 0, 1467689846, 1477710695, 8, 1, 1),
(50, 5, 'admin', '附件管理', 'fa fa-fw fa-cloud-upload', 'module_admin', 'admin/attachment/index', '_self', 0, 1467690161, 1477710695, 4, 1, 1),
(51, 70, 'admin', '文件上传', '', 'module_admin', 'admin/attachment/upload', '_self', 0, 1467690240, 1489049773, 1, 1, 1),
(52, 50, 'admin', '下载', '', 'module_admin', 'admin/attachment/download', '_self', 0, 1467690334, 1477710695, 2, 1, 1),
(53, 50, 'admin', '启用', '', 'module_admin', 'admin/attachment/enable', '_self', 0, 1467690352, 1477710695, 3, 1, 1),
(54, 50, 'admin', '禁用', '', 'module_admin', 'admin/attachment/disable', '_self', 0, 1467690369, 1477710695, 4, 1, 1),
(55, 50, 'admin', '删除', '', 'module_admin', 'admin/attachment/delete', '_self', 0, 1467690396, 1477710695, 5, 1, 1),
(56, 41, 'admin', '删除', '', 'module_admin', 'admin/plugin/delete', '_self', 0, 1467858065, 1477710695, 11, 1, 1),
(57, 41, 'admin', '编辑', '', 'module_admin', 'admin/plugin/edit', '_self', 0, 1467858092, 1477710695, 10, 1, 1),
(60, 41, 'admin', '新增', '', 'module_admin', 'admin/plugin/add', '_self', 0, 1467858421, 1477710695, 9, 1, 1),
(61, 41, 'admin', '执行', '', 'module_admin', 'admin/plugin/execute', '_self', 0, 1467879016, 1477710695, 14, 1, 1),
(62, 13, 'admin', '保存', '', 'module_admin', 'admin/menu/save', '_self', 0, 1468073039, 1477710695, 6, 1, 1),
(64, 5, 'admin', '系统日志', 'fa fa-fw fa-book', 'module_admin', 'admin/log/index', '_self', 0, 1476111944, 1477710695, 6, 0, 1),
(65, 5, 'admin', '数据库管理', 'fa fa-fw fa-database', 'module_admin', 'admin/database/index', '_self', 0, 1476111992, 1477710695, 8, 0, 1),
(66, 32, 'admin', '数据包管理', 'fa fa-fw fa-database', 'module_admin', 'admin/packet/index', '_self', 0, 1476112326, 1477710695, 4, 0, 1),
(67, 19, 'user', '角色管理', 'fa fa-fw fa-users', 'module_admin', 'user/role/index', '_self', 0, 1476113025, 1477710702, 3, 0, 1),
(68, 0, 'user', '用户', 'fa fa-fw fa-user', 'module_admin', 'user/index/index', '_self', 0, 1476193348, 1477710540, 3, 0, 1),
(69, 32, 'admin', '钩子管理', 'fa fa-fw fa-anchor', 'module_admin', 'admin/hook/index', '_self', 0, 1476236193, 1477710695, 3, 0, 1),
(70, 2, 'admin', '后台首页', 'fa fa-fw fa-tachometer', 'module_admin', 'admin/index/index', '_self', 0, 1476237472, 1489049773, 1, 0, 1),
(71, 67, 'user', '新增', '', 'module_admin', 'user/role/add', '_self', 0, 1476256935, 1477710702, 1, 0, 1),
(72, 67, 'user', '编辑', '', 'module_admin', 'user/role/edit', '_self', 0, 1476256968, 1477710702, 2, 0, 1),
(73, 67, 'user', '删除', '', 'module_admin', 'user/role/delete', '_self', 0, 1476256993, 1477710702, 3, 0, 1),
(74, 67, 'user', '启用', '', 'module_admin', 'user/role/enable', '_self', 0, 1476257023, 1477710702, 4, 0, 1),
(75, 67, 'user', '禁用', '', 'module_admin', 'user/role/disable', '_self', 0, 1476257046, 1477710702, 5, 0, 1),
(76, 20, 'user', '授权', '', 'module_admin', 'user/index/access', '_self', 0, 1476375187, 1477710702, 6, 0, 1),
(77, 69, 'admin', '新增', '', 'module_admin', 'admin/hook/add', '_self', 0, 1476668971, 1477710695, 1, 0, 1),
(78, 69, 'admin', '编辑', '', 'module_admin', 'admin/hook/edit', '_self', 0, 1476669006, 1477710695, 2, 0, 1),
(79, 69, 'admin', '删除', '', 'module_admin', 'admin/hook/delete', '_self', 0, 1476669375, 1477710695, 3, 0, 1),
(80, 69, 'admin', '启用', '', 'module_admin', 'admin/hook/enable', '_self', 0, 1476669427, 1477710695, 4, 0, 1),
(81, 69, 'admin', '禁用', '', 'module_admin', 'admin/hook/disable', '_self', 0, 1476669564, 1477710695, 5, 0, 1),
(183, 66, 'admin', '安装', '', 'module_admin', 'admin/packet/install', '_self', 0, 1476851362, 1477710695, 1, 0, 1),
(184, 66, 'admin', '卸载', '', 'module_admin', 'admin/packet/uninstall', '_self', 0, 1476851382, 1477710695, 2, 0, 1),
(185, 5, 'admin', '行为管理', 'fa fa-fw fa-bug', 'module_admin', 'admin/action/index', '_self', 0, 1476882441, 1477710695, 7, 0, 1),
(186, 185, 'admin', '新增', '', 'module_admin', 'admin/action/add', '_self', 0, 1476884439, 1477710695, 1, 0, 1),
(187, 185, 'admin', '编辑', '', 'module_admin', 'admin/action/edit', '_self', 0, 1476884464, 1477710695, 2, 0, 1),
(188, 185, 'admin', '启用', '', 'module_admin', 'admin/action/enable', '_self', 0, 1476884493, 1477710695, 3, 0, 1),
(189, 185, 'admin', '禁用', '', 'module_admin', 'admin/action/disable', '_self', 0, 1476884534, 1477710695, 4, 0, 1),
(190, 185, 'admin', '删除', '', 'module_admin', 'admin/action/delete', '_self', 0, 1476884551, 1477710695, 5, 0, 1),
(191, 65, 'admin', '备份数据库', '', 'module_admin', 'admin/database/export', '_self', 0, 1476972746, 1477710695, 1, 0, 1),
(192, 65, 'admin', '还原数据库', '', 'module_admin', 'admin/database/import', '_self', 0, 1476972772, 1477710695, 2, 0, 1),
(193, 65, 'admin', '优化表', '', 'module_admin', 'admin/database/optimize', '_self', 0, 1476972800, 1477710695, 3, 0, 1),
(194, 65, 'admin', '修复表', '', 'module_admin', 'admin/database/repair', '_self', 0, 1476972825, 1477710695, 4, 0, 1),
(195, 65, 'admin', '删除备份', '', 'module_admin', 'admin/database/delete', '_self', 0, 1476973457, 1477710695, 5, 0, 1),
(210, 41, 'admin', '快速编辑', '', 'module_admin', 'admin/plugin/quickedit', '_self', 0, 1477713981, 1477713981, 100, 0, 1),
(209, 185, 'admin', '快速编辑', '', 'module_admin', 'admin/action/quickedit', '_self', 0, 1477713939, 1477713939, 100, 0, 1),
(208, 7, 'admin', '快速编辑', '', 'module_admin', 'admin/config/quickedit', '_self', 0, 1477713808, 1477713808, 100, 0, 1),
(207, 69, 'admin', '快速编辑', '', 'module_admin', 'admin/hook/quickedit', '_self', 0, 1477713770, 1477713770, 100, 0, 1),
(212, 2, 'admin', '个人设置', 'fa fa-fw fa-user', 'module_admin', 'admin/index/profile', '_self', 0, 1489049767, 1489049773, 2, 0, 1),
(213, 70, 'admin', '检查版本更新', '', 'module_admin', 'admin/index/checkupdate', '_self', 0, 1490588610, 1490588610, 100, 0, 1),
(214, 0, 'cs', '平台', 'fa fa-fw fa-align-justify', 'module_admin', 'cs/index/index', '_self', 0, 1501057348, 1508569162, 100, 0, 1),
(215, 216, 'cs', '轮播图', '', 'module_admin', 'cs/index/index', '_self', 0, 1501057457, 1501119394, 1, 0, 1),
(216, 214, 'cs', '平台', '', 'module_admin', 'cs/index/index', '_self', 0, 1501058021, 1508737847, 1, 0, 1),
(217, 215, 'cs', '添加', '', 'module_admin', 'cs/index/add', '_self', 0, 1501059969, 1501119394, 1, 0, 1),
(218, 215, 'cs', '编辑', '', 'module_admin', 'cs/index/edit', '_self', 0, 1501059982, 1501119394, 2, 0, 1),
(219, 215, 'cs', '删除', '', 'module_admin', '', '_self', 0, 1501059993, 1501119394, 3, 0, 1),
(220, 216, 'cs', '平台列表', '', 'module_admin', 'cs/prolist/index', '_self', 0, 1501119664, 1501120457, 100, 0, 1),
(221, 220, 'cs', '添加', '', 'module_admin', 'cs/prolist/add', '_self', 0, 1501121850, 1501121850, 100, 0, 1),
(222, 220, 'cs', '编辑', '', 'module_admin', 'cs/prolist/edit', '_self', 0, 1501121876, 1501121876, 100, 0, 1),
(223, 220, 'cs', '删除', '', 'module_admin', '', '_self', 0, 1501121911, 1501121911, 100, 0, 1),
(232, 214, 'cs', '问题反馈', '', 'module_admin', 'cs/feedbackquestion/index', '_self', 0, 1508574892, 1508740690, 100, 0, 1),
(242, 0, 'member', '会员', 'fa fa-fw fa-user', 'module_admin', 'member/index/index', '_self', 0, 1508747742, 1508747767, 100, 0, 1),
(243, 242, 'member', '会员', '', 'module_admin', 'member/index/index', '_self', 0, 1508748011, 1508748011, 100, 0, 1),
(237, 216, 'cs', '首页分类', '', 'module_admin', 'cs/indexclassify/index', '_self', 0, 1508737871, 1508738053, 100, 0, 1),
(238, 237, 'cs', '添加', '', 'module_admin', 'cs/indexclassify/add', '_self', 0, 1508737888, 1508738061, 100, 0, 1),
(239, 237, 'cs', '编辑', '', 'module_admin', 'cs/indexclassify/edit', '_self', 0, 1508737909, 1508738068, 100, 0, 1),
(240, 237, 'cs', '删除', '', 'module_admin', '', '_self', 0, 1508737925, 1508737925, 100, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `dp_admin_module`
--

CREATE TABLE `dp_admin_module` (
  `id` int(11) UNSIGNED NOT NULL,
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
  `system_module` tinyint(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否为系统模块',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模块表';

--
-- 转存表中的数据 `dp_admin_module`
--

INSERT INTO `dp_admin_module` (`id`, `name`, `title`, `icon`, `description`, `author`, `author_url`, `config`, `access`, `version`, `identifier`, `system_module`, `create_time`, `update_time`, `sort`, `status`) VALUES
(1, 'admin', '系统', 'fa fa-fw fa-gear', '系统模块，DolphinPHP的核心模块', 'DolphinPHP', 'http://www.dolphinphp.com', '', '', '1.0.0', 'admin.dolphinphp.module', 1, 1468204902, 1468204902, 100, 1),
(2, 'user', '用户', 'fa fa-fw fa-user', '用户模块，DolphinPHP自带模块', 'DolphinPHP', 'http://www.dolphinphp.com', '', '', '1.0.0', 'user.dolphinphp.module', 1, 1468204902, 1468204902, 100, 1),
(3, 'cs', '平台', '', '平台模块', 'gyj', '', '', '', '1.0.0', 'cs.gyj.module', 0, 0, 1508568928, 100, 1),
(4, 'member', '会员', '', '会员模块', 'gyj', '', NULL, NULL, '1.0.0', 'member.gyj.module', 0, 0, 0, 100, 1);

-- --------------------------------------------------------

--
-- 表的结构 `dp_admin_packet`
--

CREATE TABLE `dp_admin_packet` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '数据包名',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '数据包标题',
  `author` varchar(32) NOT NULL DEFAULT '' COMMENT '作者',
  `author_url` varchar(255) NOT NULL DEFAULT '' COMMENT '作者url',
  `version` varchar(16) NOT NULL,
  `tables` text NOT NULL COMMENT '数据表名',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='数据包表';

-- --------------------------------------------------------

--
-- 表的结构 `dp_admin_plugin`
--

CREATE TABLE `dp_admin_plugin` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '插件名称',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '插件标题',
  `icon` varchar(64) NOT NULL DEFAULT '' COMMENT '图标',
  `description` text NOT NULL COMMENT '插件描述',
  `author` varchar(32) NOT NULL DEFAULT '' COMMENT '作者',
  `author_url` varchar(255) NOT NULL DEFAULT '' COMMENT '作者主页',
  `config` text NOT NULL COMMENT '配置信息',
  `version` varchar(16) NOT NULL DEFAULT '' COMMENT '版本号',
  `identifier` varchar(64) NOT NULL DEFAULT '' COMMENT '插件唯一标识符',
  `admin` tinyint(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否有后台管理',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='插件表';

--
-- 转存表中的数据 `dp_admin_plugin`
--

INSERT INTO `dp_admin_plugin` (`id`, `name`, `title`, `icon`, `description`, `author`, `author_url`, `config`, `version`, `identifier`, `admin`, `create_time`, `update_time`, `sort`, `status`) VALUES
(1, 'SystemInfo', '系统环境信息', 'fa fa-fw fa-info-circle', '在后台首页显示服务器信息', '蔡伟明', 'http://www.caiweiming.com', '{"display":"1","width":"6"}', '1.0.0', 'system_info.ming.plugin', 0, 1477757503, 1477757503, 100, 1),
(2, 'DevTeam', '开发团队成员信息', 'fa fa-fw fa-users', '开发团队成员信息', '蔡伟明', 'http://www.caiweiming.com', '{"display":"1","width":"6"}', '1.0.0', 'dev_team.ming.plugin', 0, 1477755780, 1477755780, 100, 1);

-- --------------------------------------------------------

--
-- 表的结构 `dp_admin_role`
--

CREATE TABLE `dp_admin_role` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '角色id',
  `pid` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '上级角色',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '角色名称',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '角色描述',
  `menu_auth` text NOT NULL COMMENT '菜单权限',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `access` tinyint(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否可登录后台'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='角色表';

--
-- 转存表中的数据 `dp_admin_role`
--

INSERT INTO `dp_admin_role` (`id`, `pid`, `name`, `description`, `menu_auth`, `sort`, `create_time`, `update_time`, `status`, `access`) VALUES
(1, 0, '超级管理员', '系统默认创建的角色，拥有最高权限', '', 0, 1476270000, 1468117612, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `dp_admin_user`
--

CREATE TABLE `dp_admin_user` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(32) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(96) NOT NULL DEFAULT '' COMMENT '密码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱地址',
  `email_bind` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否绑定邮箱地址',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号码',
  `mobile_bind` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否绑定手机号码',
  `avatar` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '头像',
  `money` decimal(11,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '余额',
  `score` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '积分',
  `role` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '角色ID',
  `group` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '部门id',
  `signup_ip` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '注册ip',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `last_login_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '最后一次登录时间',
  `last_login_ip` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '登录ip',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态：0禁用，1启用'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户表';

--
-- 转存表中的数据 `dp_admin_user`
--

INSERT INTO `dp_admin_user` (`id`, `username`, `nickname`, `password`, `email`, `email_bind`, `mobile`, `mobile_bind`, `avatar`, `money`, `score`, `role`, `group`, `signup_ip`, `create_time`, `update_time`, `last_login_time`, `last_login_ip`, `sort`, `status`) VALUES
(1, 'admin', '超级管理员', '$2y$10$Brw6wmuSLIIx3Yabid8/Wu5l8VQ9M/H/CG3C9RqN9dUCwZW3ljGOK', '', 0, '', 0, 0, '0.00', 0, 1, 0, 0, 1476065410, 1509699813, 1509699813, 2130706433, 100, 1);

-- --------------------------------------------------------

--
-- 表的结构 `dp_dkcs_feedback`
--

CREATE TABLE `dp_dkcs_feedback` (
  `id` int(11) NOT NULL,
  `phone` char(11) DEFAULT NULL COMMENT '手机号',
  `qq` varchar(20) DEFAULT NULL COMMENT 'qq号',
  `content` varchar(5000) DEFAULT NULL COMMENT '反馈内容',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '反馈时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `dp_dkcs_member_base`
--

CREATE TABLE `dp_dkcs_member_base` (
  `id` int(11) NOT NULL,
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
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dp_dkcs_member_base`
--

INSERT INTO `dp_dkcs_member_base` (`id`, `member_no`, `mobile`, `user_name`, `pass`, `pass_md5`, `pid`, `cur_prices`, `reg_prices`, `loan_prices`, `use_prices`, `total_prices`, `cur_integral`, `sign_integral`, `invite_integral`, `loan_integral`, `exc_integral`, `get_integral`, `extensions`, `reg_extend`, `loan_extend`, `last_ip`, `login_count`, `last_login_time`, `server_date`, `create_time`, `update_time`) VALUES
(1, NULL, NULL, 'abcd1234', 'abcd12', NULL, 0, '0.00', '0', '0', '0.00', '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, '2017-11-01 09:09:23', '2017-11-01 09:09:23'),
(2, NULL, NULL, 'abcd12345', 'abcd12', NULL, 0, '0.00', '0', '0', '0.00', '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, '2017-11-01 09:34:43', '2017-11-01 09:34:43'),
(3, NULL, NULL, 'abcd123456', 'abcd12', NULL, 0, '0.00', '0', '0', '0.00', '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, '2017-11-01 09:37:37', '2017-11-01 09:37:37');

-- --------------------------------------------------------

--
-- 表的结构 `dp_dkcs_proimg`
--

CREATE TABLE `dp_dkcs_proimg` (
  `id` int(11) NOT NULL,
  `p_name` varchar(30) DEFAULT '0' COMMENT '[''0''=>''其他'',''1''=>''急速贷'',''2''=>''新口子'',''3''=>''小额贷'',''4''=>''大额贷'']',
  `p_pic` tinyint(30) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '0 为隐藏   1显示',
  `sort` tinyint(4) DEFAULT NULL,
  `jump_url` varchar(250) DEFAULT NULL,
  `classify` int(4) DEFAULT NULL COMMENT '默认 0   banner 0   产品 1   首页分类 2',
  `b_type` int(4) DEFAULT '0' COMMENT '''区分不同 类别的轮播图 0:极速贷贷款页面轮播 。1:新口子贷款页面轮播 。2:小额贷贷款页面轮播 。3:大额贷贷款页面轮播 。4:理财页面轮播。 ''''5'''' :首页轮播 。6：其他类别    区分不同 类别的产品 0:极速贷 。1:新口子 。2:小额贷 。3:大额贷 。4:理财。 5：其他类别       区分首页分类 0:贷款分类。1:理财。2：推荐理财产品  3：贷款  4：其他类别'',',
  `rate` decimal(8,2) DEFAULT '0.00',
  `rate_type` varchar(4) DEFAULT '0' COMMENT '0 日  1月',
  `limit_min` int(11) DEFAULT '0' COMMENT '最小金额',
  `limit_max` int(11) DEFAULT '1' COMMENT '最大金额',
  `deadline_min` int(11) DEFAULT '0' COMMENT '最小期限',
  `deadline_max` int(11) DEFAULT '1' COMMENT '最大期限',
  `deadline_type` varchar(11) DEFAULT '0' COMMENT '0 日  1月',
  `tag` varchar(1000) DEFAULT NULL COMMENT '显示标识   以‘|’隔开',
  `min_earnings` decimal(8,2) DEFAULT NULL COMMENT '最低收益',
  `max_earnings` decimal(8,2) DEFAULT NULL COMMENT '最大收益',
  `new_earnings` decimal(8,2) DEFAULT NULL COMMENT '新手标收入'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dp_dkcs_proimg`
--

INSERT INTO `dp_dkcs_proimg` (`id`, `p_name`, `p_pic`, `status`, `sort`, `jump_url`, `classify`, `b_type`, `rate`, `rate_type`, `limit_min`, `limit_max`, `deadline_min`, `deadline_max`, `deadline_type`, `tag`, `min_earnings`, `max_earnings`, `new_earnings`) VALUES
(7, 'asdfsdg', 7, 1, 1, 'www.baidu.com', 0, 0, '0.25', '0', 1, 1, 1, 1, '1', NULL, NULL, NULL, NULL),
(8, '333', 7, 1, 0, 'www.baidu.com', 0, 1, '0.25', '0', 1, 1, 1, 1, '1', NULL, NULL, NULL, NULL),
(9, '123', 7, 1, 0, 'www.baicu.dom', 0, 2, '0.25', '0', 1, 1, 1, 1, '1', NULL, NULL, NULL, NULL),
(10, '12', 7, 1, 0, 'www.baicu.dom', 0, 3, '0.25', '0', 11, 1, 1, 1, '1', NULL, NULL, NULL, NULL),
(11, '12', 7, 1, 0, 'www.baicu.dom', 0, 4, '0.25', '0', 1, 1, 1, 1, '1', NULL, NULL, NULL, NULL),
(12, '1344', 7, 1, 0, 'www.baicu.dom', 0, 5, '0.25', '0', 11, 1, 1, 1, '1', NULL, NULL, NULL, NULL),
(13, '马上贷33333', 9, 1, 0, 'www.baicu.dom', 1, 0, '0.25', '0', 1, 1, 1, 1, '1', NULL, NULL, NULL, NULL),
(14, '马上带12', 8, 1, 0, 'www.baicu.dom', 1, 1, '0.25', '0', 1, 1, 1, 1, '1', NULL, NULL, NULL, NULL),
(15, '马上贷款123', 8, 1, 0, 'www.baicu.dom', 1, 2, '0.25', '0', 11, 1, 1, 1, '1', NULL, NULL, NULL, NULL),
(16, '嘛', 8, 1, 0, 'www.baicu.dom', 1, 3, '0.25', '0', 1, 1, 1, 1, '1', NULL, NULL, NULL, NULL),
(17, '萨芬', 8, 1, 0, 'www.baicu.dom', 1, 4, '0.25', '0', 1, 1, 1, 1, '1', '固收|平台活动|风投系', '12.25', '15.00', '15.00'),
(18, '1', 8, 1, 1, '', 2, 0, '0.25', '0', 1, 1, 1, 1, '1', NULL, NULL, NULL, NULL),
(19, '2', 8, 1, 1, '', 2, 0, '0.25', '0', 1, 1, 1, 1, '1', NULL, NULL, NULL, NULL),
(20, '3', 8, 1, 1, '', 2, 0, '0.25', '0', 1, 1, 1, 1, '1', NULL, NULL, NULL, NULL),
(21, '4', 8, 1, 1, '', 2, 0, '0.25', '0', 11, 1, 1, 1, '1', NULL, NULL, NULL, NULL),
(23, '0', 7, 1, 1, 'www.baidu.com', 2, 2, '0.25', '0', 1, 1, 1, 1, '1', NULL, NULL, NULL, NULL),
(24, '0', 10, 1, 1, '', 2, 3, '0.25', '0', 11, 1, 1, 1, '1', NULL, NULL, NULL, NULL),
(25, '0', 11, 1, 1, '', 2, 1, '0.25', '0', 1, 1, 1, 1, '1', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `jr_admin_menu`
--

CREATE TABLE `jr_admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父菜单id',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '菜单类型;1:有界面可访问菜单,2:无界面可访问菜单,0:只作为菜单',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '状态;1:显示,0:不显示',
  `list_order` float UNSIGNED NOT NULL DEFAULT '10000' COMMENT '排序ID',
  `app` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '应用名',
  `controller` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '控制器名',
  `action` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '操作名称',
  `param` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '额外参数',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `icon` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '菜单图标',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='后台菜单表';

--
-- 转存表中的数据 `jr_admin_menu`
--

INSERT INTO `jr_admin_menu` (`id`, `parent_id`, `type`, `status`, `list_order`, `app`, `controller`, `action`, `param`, `name`, `icon`, `remark`) VALUES
(1, 0, 0, 1, 20, 'admin', 'Plugin', 'default', '', '插件管理', 'cloud', '插件管理'),
(2, 1, 1, 1, 10000, 'admin', 'Hook', 'index', '', '钩子管理', '', '钩子管理'),
(3, 2, 1, 0, 10000, 'admin', 'Hook', 'plugins', '', '钩子插件管理', '', '钩子插件管理'),
(4, 2, 2, 0, 10000, 'admin', 'Hook', 'pluginListOrder', '', '钩子插件排序', '', '钩子插件排序'),
(5, 0, 0, 1, 0, 'admin', 'Setting', 'default', '', '设置', 'cogs', '系统设置入口'),
(6, 5, 1, 1, 50, 'admin', 'Link', 'index', '', '友情链接', '', '友情链接管理'),
(7, 6, 1, 0, 10000, 'admin', 'Link', 'add', '', '添加友情链接', '', '添加友情链接'),
(8, 6, 2, 0, 10000, 'admin', 'Link', 'addPost', '', '添加友情链接提交保存', '', '添加友情链接提交保存'),
(9, 6, 1, 0, 10000, 'admin', 'Link', 'edit', '', '编辑友情链接', '', '编辑友情链接'),
(10, 6, 2, 0, 10000, 'admin', 'Link', 'editPost', '', '编辑友情链接提交保存', '', '编辑友情链接提交保存'),
(11, 6, 2, 0, 10000, 'admin', 'Link', 'delete', '', '删除友情链接', '', '删除友情链接'),
(12, 6, 2, 0, 10000, 'admin', 'Link', 'listOrder', '', '友情链接排序', '', '友情链接排序'),
(13, 6, 2, 0, 10000, 'admin', 'Link', 'toggle', '', '友情链接显示隐藏', '', '友情链接显示隐藏'),
(14, 5, 1, 1, 10, 'admin', 'Mailer', 'index', '', '邮箱配置', '', '邮箱配置'),
(15, 14, 2, 0, 10000, 'admin', 'Mailer', 'indexPost', '', '邮箱配置提交保存', '', '邮箱配置提交保存'),
(16, 14, 1, 0, 10000, 'admin', 'Mailer', 'template', '', '邮件模板', '', '邮件模板'),
(17, 14, 2, 0, 10000, 'admin', 'Mailer', 'templatePost', '', '邮件模板提交', '', '邮件模板提交'),
(18, 14, 1, 0, 10000, 'admin', 'Mailer', 'test', '', '邮件发送测试', '', '邮件发送测试'),
(19, 5, 1, 0, 10000, 'admin', 'Menu', 'index', '', '后台菜单', '', '后台菜单管理'),
(20, 19, 1, 0, 10000, 'admin', 'Menu', 'lists', '', '所有菜单', '', '后台所有菜单列表'),
(21, 19, 1, 0, 10000, 'admin', 'Menu', 'add', '', '后台菜单添加', '', '后台菜单添加'),
(22, 19, 2, 0, 10000, 'admin', 'Menu', 'addPost', '', '后台菜单添加提交保存', '', '后台菜单添加提交保存'),
(23, 19, 1, 0, 10000, 'admin', 'Menu', 'edit', '', '后台菜单编辑', '', '后台菜单编辑'),
(24, 19, 2, 0, 10000, 'admin', 'Menu', 'editPost', '', '后台菜单编辑提交保存', '', '后台菜单编辑提交保存'),
(25, 19, 2, 0, 10000, 'admin', 'Menu', 'delete', '', '后台菜单删除', '', '后台菜单删除'),
(26, 19, 2, 0, 10000, 'admin', 'Menu', 'listOrder', '', '后台菜单排序', '', '后台菜单排序'),
(27, 19, 1, 0, 10000, 'admin', 'Menu', 'getActions', '', '导入新后台菜单', '', '导入新后台菜单'),
(28, 5, 1, 1, 30, 'admin', 'Nav', 'index', '', '导航管理', '', '导航管理'),
(29, 28, 1, 0, 10000, 'admin', 'Nav', 'add', '', '添加导航', '', '添加导航'),
(30, 28, 2, 0, 10000, 'admin', 'Nav', 'addPost', '', '添加导航提交保存', '', '添加导航提交保存'),
(31, 28, 1, 0, 10000, 'admin', 'Nav', 'edit', '', '编辑导航', '', '编辑导航'),
(32, 28, 2, 0, 10000, 'admin', 'Nav', 'editPost', '', '编辑导航提交保存', '', '编辑导航提交保存'),
(33, 28, 2, 0, 10000, 'admin', 'Nav', 'delete', '', '删除导航', '', '删除导航'),
(34, 28, 1, 0, 10000, 'admin', 'NavMenu', 'index', '', '导航菜单', '', '导航菜单'),
(35, 34, 1, 0, 10000, 'admin', 'NavMenu', 'add', '', '添加导航菜单', '', '添加导航菜单'),
(36, 34, 2, 0, 10000, 'admin', 'NavMenu', 'addPost', '', '添加导航菜单提交保存', '', '添加导航菜单提交保存'),
(37, 34, 1, 0, 10000, 'admin', 'NavMenu', 'edit', '', '编辑导航菜单', '', '编辑导航菜单'),
(38, 34, 2, 0, 10000, 'admin', 'NavMenu', 'editPost', '', '编辑导航菜单提交保存', '', '编辑导航菜单提交保存'),
(39, 34, 2, 0, 10000, 'admin', 'NavMenu', 'delete', '', '删除导航菜单', '', '删除导航菜单'),
(40, 34, 2, 0, 10000, 'admin', 'NavMenu', 'listOrder', '', '导航菜单排序', '', '导航菜单排序'),
(41, 1, 1, 1, 10000, 'admin', 'Plugin', 'index', '', '插件列表', '', '插件列表'),
(42, 41, 2, 0, 10000, 'admin', 'Plugin', 'toggle', '', '插件启用禁用', '', '插件启用禁用'),
(43, 41, 1, 0, 10000, 'admin', 'Plugin', 'setting', '', '插件设置', '', '插件设置'),
(44, 41, 2, 0, 10000, 'admin', 'Plugin', 'settingPost', '', '插件设置提交', '', '插件设置提交'),
(45, 41, 2, 0, 10000, 'admin', 'Plugin', 'install', '', '插件安装', '', '插件安装'),
(46, 41, 2, 0, 10000, 'admin', 'Plugin', 'update', '', '插件更新', '', '插件更新'),
(47, 41, 2, 0, 10000, 'admin', 'Plugin', 'uninstall', '', '卸载插件', '', '卸载插件'),
(48, 108, 0, 1, 10000, 'admin', 'User', 'default', '', '管理组', '', '管理组'),
(49, 48, 1, 1, 10000, 'admin', 'Rbac', 'index', '', '角色管理', '', '角色管理'),
(50, 49, 1, 0, 10000, 'admin', 'Rbac', 'roleAdd', '', '添加角色', '', '添加角色'),
(51, 49, 2, 0, 10000, 'admin', 'Rbac', 'roleAddPost', '', '添加角色提交', '', '添加角色提交'),
(52, 49, 1, 0, 10000, 'admin', 'Rbac', 'roleEdit', '', '编辑角色', '', '编辑角色'),
(53, 49, 2, 0, 10000, 'admin', 'Rbac', 'roleEditPost', '', '编辑角色提交', '', '编辑角色提交'),
(54, 49, 2, 0, 10000, 'admin', 'Rbac', 'roleDelete', '', '删除角色', '', '删除角色'),
(55, 49, 1, 0, 10000, 'admin', 'Rbac', 'authorize', '', '设置角色权限', '', '设置角色权限'),
(56, 49, 2, 0, 10000, 'admin', 'Rbac', 'authorizePost', '', '角色授权提交', '', '角色授权提交'),
(57, 0, 1, 0, 10000, 'admin', 'RecycleBin', 'index', '', '回收站', '', '回收站'),
(58, 57, 2, 0, 10000, 'admin', 'RecycleBin', 'restore', '', '回收站还原', '', '回收站还原'),
(59, 57, 2, 0, 10000, 'admin', 'RecycleBin', 'delete', '', '回收站彻底删除', '', '回收站彻底删除'),
(60, 5, 1, 1, 10000, 'admin', 'Route', 'index', '', 'URL美化', '', 'URL规则管理'),
(61, 60, 1, 0, 10000, 'admin', 'Route', 'add', '', '添加路由规则', '', '添加路由规则'),
(62, 60, 2, 0, 10000, 'admin', 'Route', 'addPost', '', '添加路由规则提交', '', '添加路由规则提交'),
(63, 60, 1, 0, 10000, 'admin', 'Route', 'edit', '', '路由规则编辑', '', '路由规则编辑'),
(64, 60, 2, 0, 10000, 'admin', 'Route', 'editPost', '', '路由规则编辑提交', '', '路由规则编辑提交'),
(65, 60, 2, 0, 10000, 'admin', 'Route', 'delete', '', '路由规则删除', '', '路由规则删除'),
(66, 60, 2, 0, 10000, 'admin', 'Route', 'ban', '', '路由规则禁用', '', '路由规则禁用'),
(67, 60, 2, 0, 10000, 'admin', 'Route', 'open', '', '路由规则启用', '', '路由规则启用'),
(68, 60, 2, 0, 10000, 'admin', 'Route', 'listOrder', '', '路由规则排序', '', '路由规则排序'),
(69, 60, 1, 0, 10000, 'admin', 'Route', 'select', '', '选择URL', '', '选择URL'),
(70, 5, 1, 1, 0, 'admin', 'Setting', 'site', '', '网站信息', '', '网站信息'),
(71, 70, 2, 0, 10000, 'admin', 'Setting', 'sitePost', '', '网站信息设置提交', '', '网站信息设置提交'),
(72, 5, 1, 0, 10000, 'admin', 'Setting', 'password', '', '密码修改', '', '密码修改'),
(73, 72, 2, 0, 10000, 'admin', 'Setting', 'passwordPost', '', '密码修改提交', '', '密码修改提交'),
(74, 5, 1, 1, 10000, 'admin', 'Setting', 'upload', '', '上传设置', '', '上传设置'),
(75, 74, 2, 0, 10000, 'admin', 'Setting', 'uploadPost', '', '上传设置提交', '', '上传设置提交'),
(76, 5, 1, 0, 10000, 'admin', 'Setting', 'clearCache', '', '清除缓存', '', '清除缓存'),
(77, 5, 1, 1, 40, 'admin', 'Slide', 'index', '', '幻灯片管理', '', '幻灯片管理'),
(78, 77, 1, 0, 10000, 'admin', 'Slide', 'add', '', '添加幻灯片', '', '添加幻灯片'),
(79, 77, 2, 0, 10000, 'admin', 'Slide', 'addPost', '', '添加幻灯片提交', '', '添加幻灯片提交'),
(80, 77, 1, 0, 10000, 'admin', 'Slide', 'edit', '', '编辑幻灯片', '', '编辑幻灯片'),
(81, 77, 2, 0, 10000, 'admin', 'Slide', 'editPost', '', '编辑幻灯片提交', '', '编辑幻灯片提交'),
(82, 77, 2, 0, 10000, 'admin', 'Slide', 'delete', '', '删除幻灯片', '', '删除幻灯片'),
(83, 77, 1, 0, 10000, 'admin', 'SlideItem', 'index', '', '幻灯片页面列表', '', '幻灯片页面列表'),
(84, 83, 1, 0, 10000, 'admin', 'SlideItem', 'add', '', '幻灯片页面添加', '', '幻灯片页面添加'),
(85, 83, 2, 0, 10000, 'admin', 'SlideItem', 'addPost', '', '幻灯片页面添加提交', '', '幻灯片页面添加提交'),
(86, 83, 1, 0, 10000, 'admin', 'SlideItem', 'edit', '', '幻灯片页面编辑', '', '幻灯片页面编辑'),
(87, 83, 2, 0, 10000, 'admin', 'SlideItem', 'editPost', '', '幻灯片页面编辑提交', '', '幻灯片页面编辑提交'),
(88, 83, 2, 0, 10000, 'admin', 'SlideItem', 'delete', '', '幻灯片页面删除', '', '幻灯片页面删除'),
(89, 83, 2, 0, 10000, 'admin', 'SlideItem', 'ban', '', '幻灯片页面隐藏', '', '幻灯片页面隐藏'),
(90, 83, 2, 0, 10000, 'admin', 'SlideItem', 'cancelBan', '', '幻灯片页面显示', '', '幻灯片页面显示'),
(91, 83, 2, 0, 10000, 'admin', 'SlideItem', 'listOrder', '', '幻灯片页面排序', '', '幻灯片页面排序'),
(92, 5, 1, 1, 10000, 'admin', 'Storage', 'index', '', '文件存储', '', '文件存储'),
(93, 92, 2, 0, 10000, 'admin', 'Storage', 'settingPost', '', '文件存储设置提交', '', '文件存储设置提交'),
(94, 5, 1, 1, 20, 'admin', 'Theme', 'index', '', '模板管理', '', '模板管理'),
(95, 94, 1, 0, 10000, 'admin', 'Theme', 'install', '', '安装模板', '', '安装模板'),
(96, 94, 2, 0, 10000, 'admin', 'Theme', 'uninstall', '', '卸载模板', '', '卸载模板'),
(97, 94, 2, 0, 10000, 'admin', 'Theme', 'installTheme', '', '模板安装', '', '模板安装'),
(98, 94, 2, 0, 10000, 'admin', 'Theme', 'update', '', '模板更新', '', '模板更新'),
(99, 94, 2, 0, 10000, 'admin', 'Theme', 'active', '', '启用模板', '', '启用模板'),
(100, 94, 1, 0, 10000, 'admin', 'Theme', 'files', '', '模板文件列表', '', '启用模板'),
(101, 94, 1, 0, 10000, 'admin', 'Theme', 'fileSetting', '', '模板文件设置', '', '模板文件设置'),
(102, 94, 1, 0, 10000, 'admin', 'Theme', 'fileArrayData', '', '模板文件数组数据列表', '', '模板文件数组数据列表'),
(103, 94, 2, 0, 10000, 'admin', 'Theme', 'fileArrayDataEdit', '', '模板文件数组数据添加编辑', '', '模板文件数组数据添加编辑'),
(104, 94, 2, 0, 10000, 'admin', 'Theme', 'fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', '', '模板文件数组数据添加编辑提交保存'),
(105, 94, 2, 0, 10000, 'admin', 'Theme', 'fileArrayDataDelete', '', '模板文件数组数据删除', '', '模板文件数组数据删除'),
(106, 94, 2, 0, 10000, 'admin', 'Theme', 'settingPost', '', '模板文件编辑提交保存', '', '模板文件编辑提交保存'),
(107, 94, 1, 0, 10000, 'admin', 'Theme', 'dataSource', '', '模板文件设置数据源', '', '模板文件设置数据源'),
(108, 0, 0, 1, 10, 'user', 'AdminIndex', 'default', '', '用户管理', 'group', '用户管理'),
(109, 48, 1, 1, 10000, 'admin', 'User', 'index', '', '管理员', '', '管理员管理'),
(110, 109, 1, 0, 10000, 'admin', 'User', 'add', '', '管理员添加', '', '管理员添加'),
(111, 109, 2, 0, 10000, 'admin', 'User', 'addPost', '', '管理员添加提交', '', '管理员添加提交'),
(112, 109, 1, 0, 10000, 'admin', 'User', 'edit', '', '管理员编辑', '', '管理员编辑'),
(113, 109, 2, 0, 10000, 'admin', 'User', 'editPost', '', '管理员编辑提交', '', '管理员编辑提交'),
(114, 109, 1, 0, 10000, 'admin', 'User', 'userInfo', '', '个人信息', '', '管理员个人信息修改'),
(115, 109, 2, 0, 10000, 'admin', 'User', 'userInfoPost', '', '管理员个人信息修改提交', '', '管理员个人信息修改提交'),
(116, 109, 2, 0, 10000, 'admin', 'User', 'delete', '', '管理员删除', '', '管理员删除'),
(117, 109, 2, 0, 10000, 'admin', 'User', 'ban', '', '停用管理员', '', '停用管理员'),
(118, 109, 2, 0, 10000, 'admin', 'User', 'cancelBan', '', '启用管理员', '', '启用管理员'),
(119, 0, 0, 1, 30, 'portal', 'AdminIndex', 'default', '', '门户管理', 'th', '门户管理'),
(120, 119, 1, 1, 10000, 'portal', 'AdminArticle', 'index', '', '文章管理', '', '文章列表'),
(121, 120, 1, 0, 10000, 'portal', 'AdminArticle', 'add', '', '添加文章', '', '添加文章'),
(122, 120, 2, 0, 10000, 'portal', 'AdminArticle', 'addPost', '', '添加文章提交', '', '添加文章提交'),
(123, 120, 1, 0, 10000, 'portal', 'AdminArticle', 'edit', '', '编辑文章', '', '编辑文章'),
(124, 120, 2, 0, 10000, 'portal', 'AdminArticle', 'editPost', '', '编辑文章提交', '', '编辑文章提交'),
(125, 120, 2, 0, 10000, 'portal', 'AdminArticle', 'delete', '', '文章删除', '', '文章删除'),
(126, 120, 2, 0, 10000, 'portal', 'AdminArticle', 'publish', '', '文章发布', '', '文章发布'),
(127, 120, 2, 0, 10000, 'portal', 'AdminArticle', 'top', '', '文章置顶', '', '文章置顶'),
(128, 120, 2, 0, 10000, 'portal', 'AdminArticle', 'recommend', '', '文章推荐', '', '文章推荐'),
(129, 120, 2, 0, 10000, 'portal', 'AdminArticle', 'listOrder', '', '文章排序', '', '文章排序'),
(130, 119, 1, 1, 10000, 'portal', 'AdminCategory', 'index', '', '分类管理', '', '文章分类列表'),
(131, 130, 1, 0, 10000, 'portal', 'AdminCategory', 'add', '', '添加文章分类', '', '添加文章分类'),
(132, 130, 2, 0, 10000, 'portal', 'AdminCategory', 'addPost', '', '添加文章分类提交', '', '添加文章分类提交'),
(133, 130, 1, 0, 10000, 'portal', 'AdminCategory', 'edit', '', '编辑文章分类', '', '编辑文章分类'),
(134, 130, 2, 0, 10000, 'portal', 'AdminCategory', 'editPost', '', '编辑文章分类提交', '', '编辑文章分类提交'),
(135, 130, 1, 0, 10000, 'portal', 'AdminCategory', 'select', '', '文章分类选择对话框', '', '文章分类选择对话框'),
(136, 130, 2, 0, 10000, 'portal', 'AdminCategory', 'listOrder', '', '文章分类排序', '', '文章分类排序'),
(137, 130, 2, 0, 10000, 'portal', 'AdminCategory', 'delete', '', '删除文章分类', '', '删除文章分类'),
(138, 119, 1, 1, 10000, 'portal', 'AdminPage', 'index', '', '页面管理', '', '页面管理'),
(139, 138, 1, 0, 10000, 'portal', 'AdminPage', 'add', '', '添加页面', '', '添加页面'),
(140, 138, 2, 0, 10000, 'portal', 'AdminPage', 'addPost', '', '添加页面提交', '', '添加页面提交'),
(141, 138, 1, 0, 10000, 'portal', 'AdminPage', 'edit', '', '编辑页面', '', '编辑页面'),
(142, 138, 2, 0, 10000, 'portal', 'AdminPage', 'editPost', '', '编辑页面提交', '', '编辑页面提交'),
(143, 138, 2, 0, 10000, 'portal', 'AdminPage', 'delete', '', '删除页面', '', '删除页面'),
(144, 119, 1, 1, 10000, 'portal', 'AdminTag', 'index', '', '文章标签', '', '文章标签'),
(145, 144, 1, 0, 10000, 'portal', 'AdminTag', 'add', '', '添加文章标签', '', '添加文章标签'),
(146, 144, 2, 0, 10000, 'portal', 'AdminTag', 'addPost', '', '添加文章标签提交', '', '添加文章标签提交'),
(147, 144, 2, 0, 10000, 'portal', 'AdminTag', 'upStatus', '', '更新标签状态', '', '更新标签状态'),
(148, 144, 2, 0, 10000, 'portal', 'AdminTag', 'delete', '', '删除文章标签', '', '删除文章标签'),
(149, 0, 1, 0, 10000, 'user', 'AdminAsset', 'index', '', '资源管理', 'file', '资源管理列表'),
(150, 149, 2, 0, 10000, 'user', 'AdminAsset', 'delete', '', '删除文件', '', '删除文件'),
(151, 108, 0, 1, 10000, 'user', 'AdminIndex', 'default1', '', '用户组', '', '用户组'),
(152, 151, 1, 1, 10000, 'user', 'AdminIndex', 'index', '', '本站用户', '', '本站用户'),
(153, 152, 2, 0, 10000, 'user', 'AdminIndex', 'ban', '', '本站用户拉黑', '', '本站用户拉黑'),
(154, 152, 2, 0, 10000, 'user', 'AdminIndex', 'cancelBan', '', '本站用户启用', '', '本站用户启用'),
(155, 151, 1, 1, 10000, 'user', 'AdminOauth', 'index', '', '第三方用户', '', '第三方用户'),
(156, 155, 2, 0, 10000, 'user', 'AdminOauth', 'delete', '', '删除第三方用户绑定', '', '删除第三方用户绑定'),
(157, 5, 1, 1, 10000, 'user', 'AdminUserAction', 'index', '', '用户操作管理', '', '用户操作管理');

-- --------------------------------------------------------

--
-- 表的结构 `jr_asset`
--

CREATE TABLE `jr_asset` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户id',
  `file_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '文件大小,单位B',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '上传时间',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态;1:可用,0:不可用',
  `download_times` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '下载次数',
  `file_key` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件惟一码',
  `filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `file_path` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件路径,相对于upload目录,可以为url',
  `file_md5` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件md5值',
  `file_sha1` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `suffix` varchar(10) NOT NULL DEFAULT '' COMMENT '文件后缀名,不包括点',
  `more` text COMMENT '其它详细信息,JSON格式'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='资源表';

--
-- 转存表中的数据 `jr_asset`
--

INSERT INTO `jr_asset` (`id`, `user_id`, `file_size`, `create_time`, `status`, `download_times`, `file_key`, `filename`, `file_path`, `file_md5`, `file_sha1`, `suffix`, `more`) VALUES
(5, 1, 141006, 1499929342, 1, 0, 'b9996714bde7ee049fcefa86f0d364061620a47f13ee593ab17dc41dc033fd1d', 'image.png', '20170713/daf0b9a9d1b75ed368e47f5b86f5b0b2.png', 'b9996714bde7ee049fcefa86f0d36406', '65300b1d08a9f08ed853042d0df511d7d53cfc57', 'png', NULL),
(6, 1, 36735, 1499929598, 1, 0, '2367a151727f79598e4b45441a6fbd45cb5810d10ef0a67378bcdfdd3ab0263f', 'image.png', '20170713/f9115e412c29c5a4ebe15b3a1887f805.png', '2367a151727f79598e4b45441a6fbd45', 'd48ff766cde75c0bf049347af78b658e31d85221', 'png', NULL),
(7, 1, 200199, 1499929789, 1, 0, 'e906b7abf06c44694c3d8937a55431a538d366287f1ce97b14f6b5d0c6f6b6d2', 'image.png', '20170713/216fa4504c39035f98e49cf41d3b8155.png', 'e906b7abf06c44694c3d8937a55431a5', '5fc9ef052089968fd0480b26778a2ab9ff7e31fa', 'png', NULL),
(8, 1, 123785, 1499929862, 1, 0, '26414936f784e0f5049980f10b9f5c56faa22d36df8ac10ba03607a6e39d45ea', 'image.png', '20170713/8c792ca3ce51f654d15a8b5c74fd2da5.png', '26414936f784e0f5049980f10b9f5c56', 'b0e26468a276ebcbc239f3b020306107176883a2', 'png', NULL),
(9, 1, 958226, 1499931313, 1, 0, '01709a46e2fc19048479b3ccfc5b231deb5d2b5c6eb305ac73afb0261b18bab9', 'image.png', '20170713/a016eca0112cd38fc9af34fa486262a2.png', '01709a46e2fc19048479b3ccfc5b231d', '6db91c1e4351ef92b6a2e7aaf321aa2d3b716b5c', 'png', NULL),
(10, 1, 353114, 1499931361, 1, 0, 'ea92aa5be402aa17196ebd46f7cf418b6d1aab498b2f5583afd01e71e3e8e45e', 'image.png', '20170713/8cdf0dbc2ee12870e9be4e8ac346567c.png', 'ea92aa5be402aa17196ebd46f7cf418b', '01025b88acceee91cb56bd59eb11656e6550a513', 'png', NULL),
(11, 1, 235217, 1499931415, 1, 0, 'fed48849cd32174efe4e86490f4584d9b86cf0b357a6df552fa2e2a71af53b86', 'image.png', '20170713/06446a88bbef8e84812305efa80b0d15.png', 'fed48849cd32174efe4e86490f4584d9', '983951fe52bc118ad3a25e2c9c1457ee0a2c4a49', 'png', NULL),
(12, 1, 148588, 1499931483, 1, 0, 'b653929534bb4594e871dd2503afede73eb4442b68c97a47dc0bfbd1e9d5118a', 'image.png', '20170713/634b2791108105fd19935766a9e90d05.png', 'b653929534bb4594e871dd2503afede7', 'b6e1e8ebe8c64b7071281cf533c3e8a4e7d99013', 'png', NULL),
(13, 1, 122181, 1499931543, 1, 0, '43c01a032bab6919b3077b52e96d45fa15b64e98c29d72733882d5b5be28862f', 'image.png', '20170713/71f804e999b88c5f959ad9c89374f89e.png', '43c01a032bab6919b3077b52e96d45fa', 'afb165d6d99d8627b7866ff283d32bf78ec56034', 'png', NULL),
(14, 1, 44663, 1499941054, 1, 0, '2db49036e7989e601b6dc2d8301754db4660d0147b0711566d6fcd83411d63b8', '868532514710759.jpg', 'admin/20170713/08a5df79dbca29c78d98f3d57933820c.jpg', '2db49036e7989e601b6dc2d8301754db', '4946a247dfa31065172383a56f0fab0550398042', 'jpg', NULL),
(15, 1, 47881, 1499941230, 1, 0, '2cf7a036a97cc3a8a0cdaeb2cf5811139d59dea0ed9e4fd36f8e27a727082831', '869839409693289.jpg', 'admin/20170713/4deece6cb8671fbbb358a61fb09911b4.jpg', '2cf7a036a97cc3a8a0cdaeb2cf581113', '2be859b468b110688d8e82314ec23d3073565928', 'jpg', NULL),
(16, 1, 23971, 1499941265, 1, 0, 'c80fac7beb566700a99a05d1a23742cb8db333d21a77451c75cdd0fd64a97c37', '869839524556291.jpg', 'admin/20170713/c41572a7236b2b01776340fd30b5fe58.jpg', 'c80fac7beb566700a99a05d1a23742cb', 'b8ff2f954d851f488e08ca0044abc21d25e43bae', 'jpg', NULL),
(17, 1, 41436, 1499941319, 1, 0, '2a7fd45e06bb95cf1872a4f8ff1e1016035512873906917ee94ac85394fab04c', '869839673895353.jpg', 'admin/20170713/4ec82f12770633c4af9bed67960cd174.jpg', '2a7fd45e06bb95cf1872a4f8ff1e1016', '11b334335b0dee0143b9792c3ee117101e5f4b9c', 'jpg', NULL),
(18, 1, 111190, 1499941533, 1, 0, 'd67287f24187d1750f995d81e735b8e0ca0a4cdebe526b9ba815ae7e450d4255', '863697589891022.jpg', 'admin/20170713/74ceb7f3261267b2b897280212223629.jpg', 'd67287f24187d1750f995d81e735b8e0', '2788ebd6890734cb795585d7cf94cc318fc903e2', 'jpg', NULL),
(19, 1, 60646, 1499941601, 1, 0, 'cbcc9d186646e1efc5dbb62131b8fd3aee3ab86556934198ab3c4e7c2ff31902', '868210461387568.jpg', 'admin/20170713/828e031c1a68dd0f77acdf5fa46c852a.jpg', 'cbcc9d186646e1efc5dbb62131b8fd3a', '16010636e4d8c0d268c35b350582b91541166710', 'jpg', NULL),
(20, 1, 48165, 1499943221, 1, 0, '7fbae388a0a7f24b546c8ed7449fbb598d554f3bf9a682b497c5a629b8f0cf16', '865508752019144.jpg', 'admin/20170713/03c3863f513f5102040a758f268f6b3f.jpg', '7fbae388a0a7f24b546c8ed7449fbb59', 'a0b4881d8d20d4eb4df089285177fdd3f6cd60fa', 'jpg', NULL),
(21, 1, 23073, 1499943357, 1, 0, '0373520439aa4031ed6e612f10c23abf3593d4e8e3389549f1b4921b8e399f49', '863697667937959.jpg', 'admin/20170713/4721e61382613efc2408381266a821b5.jpg', '0373520439aa4031ed6e612f10c23abf', 'fcae3acf4f3e6799bc331f1d07a74605962200a7', 'jpg', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `jr_auth_access`
--

CREATE TABLE `jr_auth_access` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL COMMENT '角色',
  `rule_name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类,请加应用前缀,如admin_'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限授权表';

-- --------------------------------------------------------

--
-- 表的结构 `jr_auth_rule`
--

CREATE TABLE `jr_auth_rule` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '规则id,自增主键',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `app` varchar(15) NOT NULL COMMENT '规则所属module',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(100) NOT NULL DEFAULT '' COMMENT '额外url参数',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '规则描述',
  `condition` varchar(200) NOT NULL DEFAULT '' COMMENT '规则附加条件'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='权限规则表';

--
-- 转存表中的数据 `jr_auth_rule`
--

INSERT INTO `jr_auth_rule` (`id`, `status`, `app`, `type`, `name`, `param`, `title`, `condition`) VALUES
(1, 1, 'admin', 'admin_url', 'admin/Hook/index', '', '钩子管理', ''),
(2, 1, 'admin', 'admin_url', 'admin/Hook/plugins', '', '钩子插件管理', ''),
(3, 1, 'admin', 'admin_url', 'admin/Hook/pluginListOrder', '', '钩子插件排序', ''),
(4, 1, 'admin', 'admin_url', 'admin/Link/index', '', '友情链接', ''),
(5, 1, 'admin', 'admin_url', 'admin/Link/add', '', '添加友情链接', ''),
(6, 1, 'admin', 'admin_url', 'admin/Link/addPost', '', '添加友情链接提交保存', ''),
(7, 1, 'admin', 'admin_url', 'admin/Link/edit', '', '编辑友情链接', ''),
(8, 1, 'admin', 'admin_url', 'admin/Link/editPost', '', '编辑友情链接提交保存', ''),
(9, 1, 'admin', 'admin_url', 'admin/Link/delete', '', '删除友情链接', ''),
(10, 1, 'admin', 'admin_url', 'admin/Link/listOrder', '', '友情链接排序', ''),
(11, 1, 'admin', 'admin_url', 'admin/Link/toggle', '', '友情链接显示隐藏', ''),
(12, 1, 'admin', 'admin_url', 'admin/Mailer/index', '', '邮箱配置', ''),
(13, 1, 'admin', 'admin_url', 'admin/Mailer/indexPost', '', '邮箱配置提交保存', ''),
(14, 1, 'admin', 'admin_url', 'admin/Mailer/template', '', '邮件模板', ''),
(15, 1, 'admin', 'admin_url', 'admin/Mailer/templatePost', '', '邮件模板提交', ''),
(16, 1, 'admin', 'admin_url', 'admin/Mailer/test', '', '邮件发送测试', ''),
(17, 1, 'admin', 'admin_url', 'admin/Menu/index', '', '后台菜单', ''),
(18, 1, 'admin', 'admin_url', 'admin/Menu/lists', '', '所有菜单', ''),
(19, 1, 'admin', 'admin_url', 'admin/Menu/add', '', '后台菜单添加', ''),
(20, 1, 'admin', 'admin_url', 'admin/Menu/addPost', '', '后台菜单添加提交保存', ''),
(21, 1, 'admin', 'admin_url', 'admin/Menu/edit', '', '后台菜单编辑', ''),
(22, 1, 'admin', 'admin_url', 'admin/Menu/editPost', '', '后台菜单编辑提交保存', ''),
(23, 1, 'admin', 'admin_url', 'admin/Menu/delete', '', '后台菜单删除', ''),
(24, 1, 'admin', 'admin_url', 'admin/Menu/listOrder', '', '后台菜单排序', ''),
(25, 1, 'admin', 'admin_url', 'admin/Menu/getActions', '', '导入新后台菜单', ''),
(26, 1, 'admin', 'admin_url', 'admin/Nav/index', '', '导航管理', ''),
(27, 1, 'admin', 'admin_url', 'admin/Nav/add', '', '添加导航', ''),
(28, 1, 'admin', 'admin_url', 'admin/Nav/addPost', '', '添加导航提交保存', ''),
(29, 1, 'admin', 'admin_url', 'admin/Nav/edit', '', '编辑导航', ''),
(30, 1, 'admin', 'admin_url', 'admin/Nav/editPost', '', '编辑导航提交保存', ''),
(31, 1, 'admin', 'admin_url', 'admin/Nav/delete', '', '删除导航', ''),
(32, 1, 'admin', 'admin_url', 'admin/NavMenu/index', '', '导航菜单', ''),
(33, 1, 'admin', 'admin_url', 'admin/NavMenu/add', '', '添加导航菜单', ''),
(34, 1, 'admin', 'admin_url', 'admin/NavMenu/addPost', '', '添加导航菜单提交保存', ''),
(35, 1, 'admin', 'admin_url', 'admin/NavMenu/edit', '', '编辑导航菜单', ''),
(36, 1, 'admin', 'admin_url', 'admin/NavMenu/editPost', '', '编辑导航菜单提交保存', ''),
(37, 1, 'admin', 'admin_url', 'admin/NavMenu/delete', '', '删除导航菜单', ''),
(38, 1, 'admin', 'admin_url', 'admin/NavMenu/listOrder', '', '导航菜单排序', ''),
(39, 1, 'admin', 'admin_url', 'admin/Plugin/default', '', '插件管理', ''),
(40, 1, 'admin', 'admin_url', 'admin/Plugin/index', '', '插件列表', ''),
(41, 1, 'admin', 'admin_url', 'admin/Plugin/toggle', '', '插件启用禁用', ''),
(42, 1, 'admin', 'admin_url', 'admin/Plugin/setting', '', '插件设置', ''),
(43, 1, 'admin', 'admin_url', 'admin/Plugin/settingPost', '', '插件设置提交', ''),
(44, 1, 'admin', 'admin_url', 'admin/Plugin/install', '', '插件安装', ''),
(45, 1, 'admin', 'admin_url', 'admin/Plugin/update', '', '插件更新', ''),
(46, 1, 'admin', 'admin_url', 'admin/Plugin/uninstall', '', '卸载插件', ''),
(47, 1, 'admin', 'admin_url', 'admin/Rbac/index', '', '角色管理', ''),
(48, 1, 'admin', 'admin_url', 'admin/Rbac/roleAdd', '', '添加角色', ''),
(49, 1, 'admin', 'admin_url', 'admin/Rbac/roleAddPost', '', '添加角色提交', ''),
(50, 1, 'admin', 'admin_url', 'admin/Rbac/roleEdit', '', '编辑角色', ''),
(51, 1, 'admin', 'admin_url', 'admin/Rbac/roleEditPost', '', '编辑角色提交', ''),
(52, 1, 'admin', 'admin_url', 'admin/Rbac/roleDelete', '', '删除角色', ''),
(53, 1, 'admin', 'admin_url', 'admin/Rbac/authorize', '', '设置角色权限', ''),
(54, 1, 'admin', 'admin_url', 'admin/Rbac/authorizePost', '', '角色授权提交', ''),
(55, 1, 'admin', 'admin_url', 'admin/RecycleBin/index', '', '回收站', ''),
(56, 1, 'admin', 'admin_url', 'admin/RecycleBin/restore', '', '回收站还原', ''),
(57, 1, 'admin', 'admin_url', 'admin/RecycleBin/delete', '', '回收站彻底删除', ''),
(58, 1, 'admin', 'admin_url', 'admin/Route/index', '', 'URL美化', ''),
(59, 1, 'admin', 'admin_url', 'admin/Route/add', '', '添加路由规则', ''),
(60, 1, 'admin', 'admin_url', 'admin/Route/addPost', '', '添加路由规则提交', ''),
(61, 1, 'admin', 'admin_url', 'admin/Route/edit', '', '路由规则编辑', ''),
(62, 1, 'admin', 'admin_url', 'admin/Route/editPost', '', '路由规则编辑提交', ''),
(63, 1, 'admin', 'admin_url', 'admin/Route/delete', '', '路由规则删除', ''),
(64, 1, 'admin', 'admin_url', 'admin/Route/ban', '', '路由规则禁用', ''),
(65, 1, 'admin', 'admin_url', 'admin/Route/open', '', '路由规则启用', ''),
(66, 1, 'admin', 'admin_url', 'admin/Route/listOrder', '', '路由规则排序', ''),
(67, 1, 'admin', 'admin_url', 'admin/Route/select', '', '选择URL', ''),
(68, 1, 'admin', 'admin_url', 'admin/Setting/default', '', '设置', ''),
(69, 1, 'admin', 'admin_url', 'admin/Setting/site', '', '网站信息', ''),
(70, 1, 'admin', 'admin_url', 'admin/Setting/sitePost', '', '网站信息设置提交', ''),
(71, 1, 'admin', 'admin_url', 'admin/Setting/password', '', '密码修改', ''),
(72, 1, 'admin', 'admin_url', 'admin/Setting/passwordPost', '', '密码修改提交', ''),
(73, 1, 'admin', 'admin_url', 'admin/Setting/upload', '', '上传设置', ''),
(74, 1, 'admin', 'admin_url', 'admin/Setting/uploadPost', '', '上传设置提交', ''),
(75, 1, 'admin', 'admin_url', 'admin/Setting/clearCache', '', '清除缓存', ''),
(76, 1, 'admin', 'admin_url', 'admin/Slide/index', '', '幻灯片管理', ''),
(77, 1, 'admin', 'admin_url', 'admin/Slide/add', '', '添加幻灯片', ''),
(78, 1, 'admin', 'admin_url', 'admin/Slide/addPost', '', '添加幻灯片提交', ''),
(79, 1, 'admin', 'admin_url', 'admin/Slide/edit', '', '编辑幻灯片', ''),
(80, 1, 'admin', 'admin_url', 'admin/Slide/editPost', '', '编辑幻灯片提交', ''),
(81, 1, 'admin', 'admin_url', 'admin/Slide/delete', '', '删除幻灯片', ''),
(82, 1, 'admin', 'admin_url', 'admin/SlideItem/index', '', '幻灯片页面列表', ''),
(83, 1, 'admin', 'admin_url', 'admin/SlideItem/add', '', '幻灯片页面添加', ''),
(84, 1, 'admin', 'admin_url', 'admin/SlideItem/addPost', '', '幻灯片页面添加提交', ''),
(85, 1, 'admin', 'admin_url', 'admin/SlideItem/edit', '', '幻灯片页面编辑', ''),
(86, 1, 'admin', 'admin_url', 'admin/SlideItem/editPost', '', '幻灯片页面编辑提交', ''),
(87, 1, 'admin', 'admin_url', 'admin/SlideItem/delete', '', '幻灯片页面删除', ''),
(88, 1, 'admin', 'admin_url', 'admin/SlideItem/ban', '', '幻灯片页面隐藏', ''),
(89, 1, 'admin', 'admin_url', 'admin/SlideItem/cancelBan', '', '幻灯片页面显示', ''),
(90, 1, 'admin', 'admin_url', 'admin/SlideItem/listOrder', '', '幻灯片页面排序', ''),
(91, 1, 'admin', 'admin_url', 'admin/Storage/index', '', '文件存储', ''),
(92, 1, 'admin', 'admin_url', 'admin/Storage/settingPost', '', '文件存储设置提交', ''),
(93, 1, 'admin', 'admin_url', 'admin/Theme/index', '', '模板管理', ''),
(94, 1, 'admin', 'admin_url', 'admin/Theme/install', '', '安装模板', ''),
(95, 1, 'admin', 'admin_url', 'admin/Theme/uninstall', '', '卸载模板', ''),
(96, 1, 'admin', 'admin_url', 'admin/Theme/installTheme', '', '模板安装', ''),
(97, 1, 'admin', 'admin_url', 'admin/Theme/update', '', '模板更新', ''),
(98, 1, 'admin', 'admin_url', 'admin/Theme/active', '', '启用模板', ''),
(99, 1, 'admin', 'admin_url', 'admin/Theme/files', '', '模板文件列表', ''),
(100, 1, 'admin', 'admin_url', 'admin/Theme/fileSetting', '', '模板文件设置', ''),
(101, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayData', '', '模板文件数组数据列表', ''),
(102, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayDataEdit', '', '模板文件数组数据添加编辑', ''),
(103, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', ''),
(104, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayDataDelete', '', '模板文件数组数据删除', ''),
(105, 1, 'admin', 'admin_url', 'admin/Theme/settingPost', '', '模板文件编辑提交保存', ''),
(106, 1, 'admin', 'admin_url', 'admin/Theme/dataSource', '', '模板文件设置数据源', ''),
(107, 1, 'admin', 'admin_url', 'admin/User/default', '', '管理组', ''),
(108, 1, 'admin', 'admin_url', 'admin/User/index', '', '管理员', ''),
(109, 1, 'admin', 'admin_url', 'admin/User/add', '', '管理员添加', ''),
(110, 1, 'admin', 'admin_url', 'admin/User/addPost', '', '管理员添加提交', ''),
(111, 1, 'admin', 'admin_url', 'admin/User/edit', '', '管理员编辑', ''),
(112, 1, 'admin', 'admin_url', 'admin/User/editPost', '', '管理员编辑提交', ''),
(113, 1, 'admin', 'admin_url', 'admin/User/userInfo', '', '个人信息', ''),
(114, 1, 'admin', 'admin_url', 'admin/User/userInfoPost', '', '管理员个人信息修改提交', ''),
(115, 1, 'admin', 'admin_url', 'admin/User/delete', '', '管理员删除', ''),
(116, 1, 'admin', 'admin_url', 'admin/User/ban', '', '停用管理员', ''),
(117, 1, 'admin', 'admin_url', 'admin/User/cancelBan', '', '启用管理员', ''),
(118, 1, 'portal', 'admin_url', 'portal/AdminArticle/index', '', '文章管理', ''),
(119, 1, 'portal', 'admin_url', 'portal/AdminArticle/add', '', '添加文章', ''),
(120, 1, 'portal', 'admin_url', 'portal/AdminArticle/addPost', '', '添加文章提交', ''),
(121, 1, 'portal', 'admin_url', 'portal/AdminArticle/edit', '', '编辑文章', ''),
(122, 1, 'portal', 'admin_url', 'portal/AdminArticle/editPost', '', '编辑文章提交', ''),
(123, 1, 'portal', 'admin_url', 'portal/AdminArticle/delete', '', '文章删除', ''),
(124, 1, 'portal', 'admin_url', 'portal/AdminArticle/publish', '', '文章发布', ''),
(125, 1, 'portal', 'admin_url', 'portal/AdminArticle/top', '', '文章置顶', ''),
(126, 1, 'portal', 'admin_url', 'portal/AdminArticle/recommend', '', '文章推荐', ''),
(127, 1, 'portal', 'admin_url', 'portal/AdminArticle/listOrder', '', '文章排序', ''),
(128, 1, 'portal', 'admin_url', 'portal/AdminCategory/index', '', '分类管理', ''),
(129, 1, 'portal', 'admin_url', 'portal/AdminCategory/add', '', '添加文章分类', ''),
(130, 1, 'portal', 'admin_url', 'portal/AdminCategory/addPost', '', '添加文章分类提交', ''),
(131, 1, 'portal', 'admin_url', 'portal/AdminCategory/edit', '', '编辑文章分类', ''),
(132, 1, 'portal', 'admin_url', 'portal/AdminCategory/editPost', '', '编辑文章分类提交', ''),
(133, 1, 'portal', 'admin_url', 'portal/AdminCategory/select', '', '文章分类选择对话框', ''),
(134, 1, 'portal', 'admin_url', 'portal/AdminCategory/listOrder', '', '文章分类排序', ''),
(135, 1, 'portal', 'admin_url', 'portal/AdminCategory/delete', '', '删除文章分类', ''),
(136, 1, 'portal', 'admin_url', 'portal/AdminIndex/default', '', '门户管理', ''),
(137, 1, 'portal', 'admin_url', 'portal/AdminPage/index', '', '页面管理', ''),
(138, 1, 'portal', 'admin_url', 'portal/AdminPage/add', '', '添加页面', ''),
(139, 1, 'portal', 'admin_url', 'portal/AdminPage/addPost', '', '添加页面提交', ''),
(140, 1, 'portal', 'admin_url', 'portal/AdminPage/edit', '', '编辑页面', ''),
(141, 1, 'portal', 'admin_url', 'portal/AdminPage/editPost', '', '编辑页面提交', ''),
(142, 1, 'portal', 'admin_url', 'portal/AdminPage/delete', '', '删除页面', ''),
(143, 1, 'portal', 'admin_url', 'portal/AdminTag/index', '', '文章标签', ''),
(144, 1, 'portal', 'admin_url', 'portal/AdminTag/add', '', '添加文章标签', ''),
(145, 1, 'portal', 'admin_url', 'portal/AdminTag/addPost', '', '添加文章标签提交', ''),
(146, 1, 'portal', 'admin_url', 'portal/AdminTag/upStatus', '', '更新标签状态', ''),
(147, 1, 'portal', 'admin_url', 'portal/AdminTag/delete', '', '删除文章标签', ''),
(148, 1, 'user', 'admin_url', 'user/AdminAsset/index', '', '资源管理', ''),
(149, 1, 'user', 'admin_url', 'user/AdminAsset/delete', '', '删除文件', ''),
(150, 1, 'user', 'admin_url', 'user/AdminIndex/default', '', '用户管理', ''),
(151, 1, 'user', 'admin_url', 'user/AdminIndex/default1', '', '用户组', ''),
(152, 1, 'user', 'admin_url', 'user/AdminIndex/index', '', '本站用户', ''),
(153, 1, 'user', 'admin_url', 'user/AdminIndex/ban', '', '本站用户拉黑', ''),
(154, 1, 'user', 'admin_url', 'user/AdminIndex/cancelBan', '', '本站用户启用', ''),
(155, 1, 'user', 'admin_url', 'user/AdminOauth/index', '', '第三方用户', ''),
(156, 1, 'user', 'admin_url', 'user/AdminOauth/delete', '', '删除第三方用户绑定', ''),
(157, 1, 'user', 'admin_url', 'user/AdminUserAction/index', '', '用户操作管理', '');

-- --------------------------------------------------------

--
-- 表的结构 `jr_comment`
--

CREATE TABLE `jr_comment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '被回复的评论id',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '发表评论的用户id',
  `to_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '被评论的用户id',
  `object_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '评论内容 id',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '评论时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '删除时间',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态,1:已审核,0:未审核',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '评论类型；1实名评论',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '评论内容所在表，不带表前缀',
  `full_name` varchar(50) NOT NULL DEFAULT '' COMMENT '评论者昵称',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '评论者邮箱',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系',
  `url` text COMMENT '原文地址',
  `content` text COMMENT '评论内容',
  `more` text COMMENT '扩展属性'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论表';

-- --------------------------------------------------------

--
-- 表的结构 `jr_hook`
--

CREATE TABLE `jr_hook` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '钩子类型(1:系统钩子;2:应用钩子;3:模板钩子;4:后台模板钩子)',
  `once` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否只允许一个插件运行(0:多个;1:一个)',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `hook` varchar(30) NOT NULL DEFAULT '' COMMENT '钩子',
  `app` varchar(15) NOT NULL DEFAULT '' COMMENT '应用名(只有应用钩子才用)',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='系统钩子表';

--
-- 转存表中的数据 `jr_hook`
--

INSERT INTO `jr_hook` (`id`, `type`, `once`, `name`, `hook`, `app`, `description`) VALUES
(1, 1, 0, '应用初始化', 'app_init', 'cmf', '应用初始化'),
(2, 1, 0, '应用开始', 'app_begin', 'cmf', '应用开始'),
(3, 1, 0, '模块初始化', 'module_init', 'cmf', '模块初始化'),
(4, 1, 0, '控制器开始', 'action_begin', 'cmf', '控制器开始'),
(5, 1, 0, '视图输出过滤', 'view_filter', 'cmf', '视图输出过滤'),
(6, 1, 0, '应用结束', 'app_end', 'cmf', '应用结束'),
(7, 1, 0, '日志write方法', 'log_write', 'cmf', '日志write方法'),
(8, 1, 0, '输出结束', 'response_end', 'cmf', '输出结束'),
(9, 1, 0, '后台控制器初始化', 'admin_init', 'cmf', '后台控制器初始化'),
(10, 1, 0, '前台控制器初始化', 'home_init', 'cmf', '前台控制器初始化'),
(11, 1, 1, '发送手机验证码', 'send_mobile_verification_code', 'cmf', '发送手机验证码'),
(12, 3, 0, '模板 body标签开始', 'body_start', '', '模板 body标签开始'),
(13, 3, 0, '模板 head标签结束前', 'before_head_end', '', '模板 head标签结束前'),
(14, 3, 0, '模板底部开始', 'footer_start', '', '模板底部开始'),
(15, 3, 0, '模板底部开始之前', 'before_footer', '', '模板底部开始之前'),
(16, 3, 0, '模板底部结束之前', 'before_footer_end', '', '模板底部结束之前'),
(17, 3, 0, '模板 body 标签结束之前', 'before_body_end', '', '模板 body 标签结束之前'),
(18, 3, 0, '模板左边栏开始', 'left_sidebar_start', '', '模板左边栏开始'),
(19, 3, 0, '模板左边栏结束之前', 'before_left_sidebar_end', '', '模板左边栏结束之前'),
(20, 3, 0, '模板右边栏开始', 'right_sidebar_start', '', '模板右边栏开始'),
(21, 3, 0, '模板右边栏结束之前', 'before_right_sidebar_end', '', '模板右边栏结束之前'),
(22, 3, 1, '评论区', 'comment', '', '评论区'),
(23, 3, 1, '留言区', 'guestbook', '', '留言区'),
(24, 2, 0, '后台首页仪表盘', 'admin_dashboard', 'admin', '后台首页仪表盘'),
(25, 4, 0, '后台模板 head标签结束前', 'admin_before_head_end', '', '后台模板 head标签结束前'),
(26, 4, 0, '后台模板 body 标签结束之前', 'admin_before_body_end', '', '后台模板 body 标签结束之前'),
(27, 2, 0, '后台登录页面', 'admin_login', 'admin', '后台登录页面'),
(28, 1, 1, '前台模板切换', 'switch_theme', 'cmf', '前台模板切换');

-- --------------------------------------------------------

--
-- 表的结构 `jr_hook_plugin`
--

CREATE TABLE `jr_hook_plugin` (
  `id` int(10) UNSIGNED NOT NULL,
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `hook` varchar(30) NOT NULL DEFAULT '' COMMENT '钩子名',
  `plugin` varchar(30) NOT NULL DEFAULT '' COMMENT '插件'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='系统钩子插件表';

-- --------------------------------------------------------

--
-- 表的结构 `jr_link`
--

CREATE TABLE `jr_link` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:不显示',
  `rating` int(11) NOT NULL DEFAULT '0' COMMENT '友情链接评级',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接描述',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接地址',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '友情链接名称',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '友情链接图标',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `rel` varchar(50) NOT NULL DEFAULT '' COMMENT '链接与网站的关系'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='友情链接表';

--
-- 转存表中的数据 `jr_link`
--

INSERT INTO `jr_link` (`id`, `status`, `rating`, `list_order`, `description`, `url`, `name`, `image`, `target`, `rel`) VALUES
(1, 1, 1, 8, '', 'http://www.rong360.com/', '融360', '', '_blank', ''),
(2, 1, 0, 10000, '', 'https://www.huize.com/', '慧择网', '', '_blank', '');

-- --------------------------------------------------------

--
-- 表的结构 `jr_nav`
--

CREATE TABLE `jr_nav` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_main` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '是否为主导航;1:是;0:不是',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '导航位置名称',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='前台导航位置表';

--
-- 转存表中的数据 `jr_nav`
--

INSERT INTO `jr_nav` (`id`, `is_main`, `name`, `remark`) VALUES
(1, 1, '主导航', '主导航'),
(2, 0, '底部导航', '');

-- --------------------------------------------------------

--
-- 表的结构 `jr_nav_menu`
--

CREATE TABLE `jr_nav_menu` (
  `id` int(11) NOT NULL,
  `nav_id` int(11) NOT NULL COMMENT '导航 id',
  `parent_id` int(11) NOT NULL COMMENT '父 id',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '打开方式',
  `href` varchar(100) NOT NULL DEFAULT '' COMMENT '链接',
  `icon` varchar(20) NOT NULL DEFAULT '' COMMENT '图标',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='前台导航菜单表';

--
-- 转存表中的数据 `jr_nav_menu`
--

INSERT INTO `jr_nav_menu` (`id`, `nav_id`, `parent_id`, `status`, `list_order`, `name`, `target`, `href`, `icon`, `path`) VALUES
(1, 1, 0, 1, 0, '首页', '', 'home', '', '0-1');

-- --------------------------------------------------------

--
-- 表的结构 `jr_option`
--

CREATE TABLE `jr_option` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `autoload` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '是否自动加载;1:自动加载;0:不自动加载',
  `option_name` varchar(64) NOT NULL DEFAULT '' COMMENT '配置名',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '配置值'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='全站配置表' ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `jr_option`
--

INSERT INTO `jr_option` (`id`, `autoload`, `option_name`, `option_value`) VALUES
(7, 1, 'site_info', '{"site_name":"\\u7f51\\u7ad9\\u540d\\u79f0","site_seo_title":"\\u7f51\\u7ad9\\u540d\\u79f0","site_seo_keywords":"\\u5173\\u952e\\u8bcd","site_seo_description":"\\u63cf\\u8ff0"}');

-- --------------------------------------------------------

--
-- 表的结构 `jr_plugin`
--

CREATE TABLE `jr_plugin` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '自增id',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '插件类型;1:网站;8:微信',
  `has_admin` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否有后台管理,0:没有;1:有',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态;1:开启;0:禁用',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '插件安装时间',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '插件标识名,英文字母(惟一)',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件名称',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `hooks` varchar(255) NOT NULL DEFAULT '' COMMENT '实现的钩子;以“,”分隔',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '插件版本号',
  `description` varchar(255) NOT NULL COMMENT '插件描述',
  `config` text COMMENT '插件配置'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='插件表';

-- --------------------------------------------------------

--
-- 表的结构 `jr_portal_category`
--

CREATE TABLE `jr_portal_category` (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT '分类id',
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '分类父id',
  `post_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '分类文章数',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '删除时间',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `description` varchar(255) NOT NULL COMMENT '分类描述',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '分类层级关系路径',
  `seo_title` varchar(100) NOT NULL DEFAULT '',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '',
  `seo_description` varchar(255) NOT NULL DEFAULT '',
  `list_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类列表模板',
  `one_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类文章页模板',
  `more` text COMMENT '扩展属性'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 文章分类表';

--
-- 转存表中的数据 `jr_portal_category`
--

INSERT INTO `jr_portal_category` (`id`, `parent_id`, `post_count`, `status`, `delete_time`, `list_order`, `name`, `description`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `more`) VALUES
(8, 0, 0, 1, 0, 10000, '评测', '', '0-8', '', '', '', 'list', 'article', '{"thumbnail":""}'),
(9, 0, 0, 1, 0, 10000, '攻略', '', '0-9', '', '', '', 'list', 'article', '{"thumbnail":""}'),
(10, 8, 0, 1, 0, 10000, 'P2P', '', '0-8-10', '', '', '', 'list', 'article', '{"thumbnail":""}'),
(11, 8, 0, 1, 0, 10000, '贷款', '', '0-8-11', '', '', '', 'list', 'article', '{"thumbnail":""}'),
(12, 8, 0, 1, 0, 10000, '理财', '', '0-8-12', '', '', '', 'list', 'article', '{"thumbnail":""}'),
(13, 9, 0, 1, 0, 10000, 'P2P', '', '0-9-13', '', '', '', 'list', 'article', '{"thumbnail":""}'),
(14, 9, 0, 1, 0, 10000, '贷款', '', '0-9-14', '', '', '', 'list', 'article', '{"thumbnail":""}'),
(15, 9, 0, 1, 0, 10000, '理财', '', '0-9-15', '', '', '', 'list', 'article', '{"thumbnail":""}');

-- --------------------------------------------------------

--
-- 表的结构 `jr_portal_category_post`
--

CREATE TABLE `jr_portal_category_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '文章id',
  `category_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '分类id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='portal应用 分类文章对应表';

--
-- 转存表中的数据 `jr_portal_category_post`
--

INSERT INTO `jr_portal_category_post` (`id`, `post_id`, `category_id`, `list_order`, `status`) VALUES
(117, 32, 11, 10000, 1),
(118, 33, 11, 10000, 1),
(119, 34, 11, 10000, 1),
(120, 35, 11, 10000, 1),
(121, 36, 11, 10000, 1),
(122, 37, 11, 10000, 1),
(123, 38, 11, 10000, 1),
(124, 39, 11, 10000, 1),
(125, 40, 11, 10000, 1),
(126, 41, 11, 10000, 1),
(127, 42, 11, 10000, 1),
(128, 43, 11, 10000, 1),
(129, 44, 11, 10000, 1),
(130, 45, 11, 10000, 1),
(131, 46, 11, 10000, 1),
(132, 47, 11, 10000, 1),
(133, 48, 11, 10000, 1),
(134, 49, 11, 10000, 1),
(135, 50, 11, 10000, 1),
(136, 51, 11, 10000, 1),
(137, 52, 11, 10000, 1),
(138, 53, 11, 10000, 1),
(139, 54, 11, 10000, 1),
(140, 55, 11, 10000, 1),
(141, 56, 11, 10000, 1),
(142, 57, 11, 10000, 1),
(143, 58, 11, 10000, 1),
(144, 59, 10, 10000, 1),
(145, 60, 10, 10000, 1),
(146, 61, 10, 10000, 1),
(147, 62, 10, 10000, 1),
(148, 63, 10, 10000, 1),
(149, 64, 10, 10000, 1),
(150, 65, 10, 10000, 1),
(151, 66, 10, 10000, 1),
(152, 67, 10, 10000, 1),
(153, 68, 10, 10000, 1),
(154, 69, 10, 10000, 1),
(155, 70, 10, 10000, 1),
(156, 71, 10, 10000, 1),
(157, 72, 10, 10000, 1),
(158, 73, 10, 10000, 1),
(159, 74, 10, 10000, 1),
(160, 75, 10, 10000, 1),
(161, 76, 10, 10000, 1),
(162, 77, 10, 10000, 1),
(163, 78, 10, 10000, 1),
(164, 79, 10, 10000, 1),
(165, 80, 14, 10000, 1),
(166, 81, 14, 10000, 1),
(167, 82, 14, 10000, 1),
(168, 83, 14, 10000, 1),
(169, 84, 14, 10000, 1),
(170, 85, 14, 10000, 1),
(171, 86, 14, 10000, 1),
(172, 87, 14, 10000, 1),
(173, 88, 14, 10000, 1),
(174, 89, 14, 10000, 1),
(175, 90, 14, 10000, 1),
(176, 91, 14, 10000, 1),
(177, 92, 14, 10000, 1),
(178, 93, 14, 10000, 1),
(179, 94, 14, 10000, 1),
(180, 95, 14, 10000, 1),
(181, 96, 14, 10000, 1),
(182, 97, 14, 10000, 1),
(183, 98, 14, 10000, 1),
(184, 99, 14, 10000, 1),
(185, 100, 14, 10000, 1),
(186, 101, 14, 10000, 1),
(187, 102, 14, 10000, 1),
(188, 103, 14, 10000, 1),
(189, 104, 14, 10000, 1),
(190, 105, 14, 10000, 1),
(191, 106, 14, 10000, 1),
(192, 107, 14, 10000, 1),
(193, 108, 14, 10000, 1),
(194, 109, 14, 10000, 1),
(195, 110, 14, 10000, 1),
(196, 111, 14, 10000, 1),
(197, 112, 14, 10000, 1),
(198, 113, 14, 10000, 1),
(199, 114, 14, 10000, 1),
(200, 115, 14, 10000, 1),
(201, 116, 14, 10000, 1),
(202, 117, 14, 10000, 1),
(203, 118, 13, 10000, 1),
(204, 119, 13, 10000, 1),
(205, 120, 13, 10000, 1),
(206, 121, 13, 10000, 1),
(207, 122, 13, 10000, 1),
(208, 123, 13, 10000, 1),
(209, 124, 13, 10000, 1),
(210, 125, 13, 10000, 1),
(211, 126, 13, 10000, 1),
(212, 127, 13, 10000, 1),
(213, 128, 13, 10000, 1),
(214, 129, 15, 10000, 1),
(215, 130, 15, 10000, 1),
(216, 131, 15, 10000, 1),
(217, 132, 15, 10000, 1),
(218, 133, 15, 10000, 1),
(219, 134, 15, 10000, 1),
(220, 135, 15, 10000, 1),
(221, 136, 15, 10000, 1),
(222, 137, 15, 10000, 1),
(223, 138, 15, 10000, 1),
(224, 139, 15, 10000, 1),
(225, 140, 15, 10000, 1),
(226, 141, 15, 10000, 1),
(227, 142, 15, 10000, 1),
(228, 143, 15, 10000, 1),
(229, 144, 15, 10000, 1),
(230, 145, 15, 10000, 1),
(231, 146, 15, 10000, 1),
(232, 147, 15, 10000, 1),
(233, 148, 15, 10000, 1),
(234, 149, 14, 10000, 1),
(235, 150, 14, 10000, 1),
(236, 151, 14, 10000, 1),
(237, 152, 14, 10000, 1),
(238, 153, 14, 10000, 1),
(239, 154, 14, 10000, 1),
(240, 155, 14, 10000, 1),
(241, 156, 14, 10000, 1),
(244, 157, 14, 10000, 1);

-- --------------------------------------------------------

--
-- 表的结构 `jr_portal_post`
--

CREATE TABLE `jr_portal_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父级id',
  `post_type` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '类型,1:文章;2:页面',
  `post_format` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '内容格式;1:html;2:md',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '发表者用户id',
  `post_status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态;1:已发布;0:未发布;',
  `comment_status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '评论状态;1:允许;0:不允许',
  `is_top` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否置顶;1:置顶;0:不置顶',
  `recommended` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_hits` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '查看数',
  `post_like` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '点赞数',
  `comment_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '评论数',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `published_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '发布时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '删除时间',
  `post_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'post标题',
  `post_keywords` varchar(150) NOT NULL DEFAULT '' COMMENT 'seo keywords',
  `post_excerpt` varchar(500) NOT NULL COMMENT 'post摘要',
  `post_source` varchar(150) NOT NULL DEFAULT '' COMMENT '转载文章的来源',
  `post_content` text COMMENT '文章内容',
  `post_content_filtered` text COMMENT '处理过的文章内容',
  `more` text COMMENT '扩展属性,如缩略图;格式为json'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 文章表' ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `jr_portal_post`
--

INSERT INTO `jr_portal_post` (`id`, `parent_id`, `post_type`, `post_format`, `user_id`, `post_status`, `comment_status`, `is_top`, `recommended`, `post_hits`, `post_like`, `comment_count`, `create_time`, `update_time`, `published_time`, `delete_time`, `post_title`, `post_keywords`, `post_excerpt`, `post_source`, `post_content`, `post_content_filtered`, `more`) VALUES
(32, 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1499927512, 1499927512, 1499927452, 0, '提升创业贷款成功率的三个技巧', '', '', '', '\n&lt;p&gt;　　创业缺钱，大家都想贷款，但并不是人人都能申请到贷款。下面，网就为大家介绍提升创业贷款成功率的三个技巧，帮助大家成功申请到创业贷款。&lt;/p&gt;\n&lt;p&gt;　　招数一：找当地创业贷款政策扶持的项目&lt;/p&gt;\n&lt;p&gt;　　为了扶持有创业意愿的人士创业，大部分地方都推出了创业贷款政策，但是每个地方支持的创业项目范围有所差异，所以要想成功拿到创业贷款，创业者选择创业项目的时候一定要注意，最好选择当地贷款政策扶持的项目，这样获贷几率较高。当然，这就需要你在贷前了解当地政策了。&lt;/p&gt;\n&lt;p&gt;　　招数二：多准备一些启动资金&lt;/p&gt;\n&lt;p&gt;　　按照创业贷款政策规定，申请创业贷款必须要有一定的自有启动资金，所以若想成功获贷贷款，最好多准备一些启动资金，若是只有少许资金，贷款机构会怀疑你的创业决心，可能态度就会比较谨慎了。&lt;/p&gt;\n&lt;p&gt;　　招数三：维护好个人信用记录&lt;/p&gt;\n&lt;p&gt;　　想要顺利拿到创业贷款，借款人必须要有良好的信用记录。也就是说，如果个人信用好，那么贷款成功几率较高;反之，若信用有污点，贷款申请极有可能遭拒。所以，大家平时偿还信用卡、贷款都应积极一些，信用记录越好，对你未来贷款申请帮助越大。&lt;/p&gt;\n&lt;p&gt;　　贷款预期年化利率最低0.75%，承诺不收取任何中介费用。同样的额度、同样的三步申请，一分钟就可迅速匹配信贷经理。门槛更低、费率更低、品种更丰富。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(33, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499927584, 1499927584, 1499927564, 0, '个人消费贷款申请技巧', '', '', '', '\n&lt;p&gt;买车没钱?装修没钱?结婚没钱?旅游没钱?……个人消费贷款就能帮您解决上述所有问题!下面，就为大家介绍一下“个人消费贷款申请技巧”。&lt;/p&gt;\n&lt;p&gt;如果您目前在北京有稳定的工作和收入来源，且个人信用记录良好的，可以通过办理个人信用贷款来超前消费，此项贷款无需抵押和担保，如渣打现代派个人信用贷款业务，只要具有稳定的职业，税前月收入3000元以上就可申请，申请额度最低为8000元，最高30万元，贷款期限为6个月、1年、2年、3年、4年，贷款预期年化利率在7.9%-9.9%之间。&lt;/p&gt;\n&lt;p&gt;在北京地区申办消费贷款，不仅仅可以通过个人信用贷款来获得，对于有房产的房主来说，还可以选择房产抵押贷款申请此业务，一般能获得房产评估值70%的贷款额度，而贷款预期年化利率根据个人的状况来进行评定，一般是基准预期年化利率上浮10%，比信用贷款低很多哦。此外，针对众多的信用卡用户，很多银行都推出了以消费为主题的分期付款业务。刷卡消费时虽然不收取利息，但要收取手续费。&lt;/p&gt;\n&lt;p&gt;无论选择何种方式的消费贷款，都需要考虑到贷款预期年化利率和贷款期限。简单地说，消费者需要根据贷款消费的目的，来选择合适的贷款方式和类型，比如想要消费的目的时间仓促，则可以选择无抵押信用贷款，放款速度快的优势可以满足消费者的需求;如果希望贷款的额度在50万以上，则可以选择房产抵押贷款，来完成自己的消费意愿。&lt;/p&gt;\n&lt;p&gt;一般情况下，申请房产抵押消费贷款时，银行对抵押物和担保机构的要求会比较严格，审核周期也比较长，但在贷款额度和贷款预期年化利率上有其一定优势。而无抵押信用贷款不需要抵押物和担保，申请速度较快一般1至3个工作日即可放款，但贷款预期年化利率较其他两种贷款高一些，贷款额度一般规定最高为50万元。&lt;/p&gt;\n&lt;p&gt;最后要注意的是，无论选择哪种贷款方式，消费者都应结合自身收入及偿还能力综合考量。避免造成还贷压力过大，影响日后的生活。并且若在还款期内资金充裕，可以选择提前还清消费贷款，这样也能省去不少利息，间接提高生活质量。如果您也有消费梦想或者急需资金，不妨尝试申请个人消费贷款。&lt;/p&gt;\n&lt;p&gt;接下来了解一下办理银行消费贷款的条件。据悉，申请此项贷款的借款人一般年龄需在18-60岁之间，且具有完全民事行为能力；有稳定的工作和收入，具备按时足额还款的能力；无不良信用记录；在北京地区有固定住所；满足贷款行规定的其他条件。&lt;/p&gt;\n&lt;p&gt;如果您满足上述要求，即可向银行提出申请，并提交贷款所需资料，包括本人有效身份证、居住证明、收入证明等。通过银行审批后，双方即可签订贷款合同，并办理担保等手续，随后就可拿到贷款了。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(34, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499927617, 1499927617, 1499927588, 0, '中小企业贷款五大技巧', '', '', '', '\n&lt;p&gt;　　目前，我国中小企业贷款难已是一个不争的事实，即使是一个好的投资项目，银行也不一定会予以照顾，在机会均等和其他条件相同的情况下，大中型企业会优先借到款项。所以，希财网认为，借款技巧在中小企业融资中便显得日益重要了。&lt;/p&gt;\n&lt;p&gt;　　中小企业贷款成功的技巧主要有：&lt;/p&gt;\n&lt;p&gt;　　1.建立良好的银企关系。要求：&lt;/p&gt;\n&lt;p&gt;　　(1)企业要讲究信誉。企业在与银行的交往中，要使银行对企业贷款的安全性绝对放心。如何使银行对企业放心呢?&lt;/p&gt;\n&lt;p&gt;　　首先，企业要注意抓好资金的日常管理。因为银行在对企业进行考察时往往是从企业资金的使用、周转和财务核算等方面入手。&lt;/p&gt;\n&lt;p&gt;　　其次，企业应经常主动地向银行汇报公司的经营情况，使银行在与企业经常性的沟通中，加强对企业的信任度。&lt;/p&gt;\n&lt;p&gt;　　最后，企业还应苦练内功，真正提高企业的经营管理水平，用实际行动建立良好的信誉。&lt;/p&gt;\n&lt;p&gt;　　(2)要主动、热情地配合银行开展各项工作。如积极配合银行开展各种调查，认真填写和报送企业财务报表;贷款到期主动按时履行还款或展期手续，以取得银行对中小企业的信任等。&lt;/p&gt;\n&lt;p&gt;　　(3)企业要有耐心。在争取贷款时要有耐心，充分理解和体谅银行的难处，避免一时冲动伤和气，以致得不偿失。&lt;/p&gt;\n&lt;p&gt;　　2.写好投资项目可行性研究报告&lt;/p&gt;\n&lt;p&gt;　　投资项目可行性研究报告对于争取项目贷款的规模大小，以及银行贷款的优先支持，具有十分重要的作用，因此，中小企业在撰写报告时，要注意解决好以下几个问题：&lt;/p&gt;\n&lt;p&gt;　　(1)报告的项目要符合国家的有关政策，重点论证在技术上的先进性、经济上的合理性以及实际上的可行性等问题。&lt;/p&gt;\n&lt;p&gt;　　(2)要把重大问题讲清楚，对有关问题做出有力的论证。如在论证产品销路时，必须对市场对该产品的需求、当前社会的生产能力及将来的趋势等做出分析和论证。&lt;/p&gt;\n&lt;p&gt;　　(3)把经济效益作为可行性的出发点和落脚点。&lt;/p&gt;\n&lt;p&gt;　　3.选择合适的贷款时机&lt;/p&gt;\n&lt;p&gt;　　要注意既有利于保证中小企业所需要资金及时到位，又便于银行调剂安排信贷资金调度信贷规模。一般来说，中小企业如要申请较大金额的企业贷款，不宜安排在年末和每季季末。&lt;/p&gt;\n&lt;p&gt;　　4.突出项目的特点&lt;/p&gt;\n&lt;p&gt;　　不同的项目都有各自内在的特性，根据这些特性，银行对中小企业贷款也有相应的要求。&lt;/p&gt;\n&lt;p&gt;　　5.争取中小企业担保机构的支持&lt;/p&gt;\n&lt;p&gt;　　中小企业由于自身资金少，经营规模小，很难提供银行需要的抵押、质押物，同时也难以取得第三方的信用担保，因而要取得银行贷款非常困难。希财网认为，这些固然是不利条件，但如果能和各方面搞好关系，融资工作提前做到位，得到北京担保公司这些专门担保贷款机构的支持，向商业银行贷款就容易得多。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(35, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499927649, 1499927649, 1499927635, 0, '芝麻信用攻略、芝麻信用分教程、花呗指南', '', '', '', '\n&lt;p&gt;　　最近，朋友圈里已经完全被芝麻信用刷屏，这种看似只需要自己的芝麻信用就可以贷到款的业务着实让人心动。然而芝麻信用到底是怎样来判断贷款人的信用到底如何?为什么芝麻信用的高低能决定使用者能不能贷款?下面网小编来对芝麻信用和花呗做一个简单的使用攻略。&lt;/p&gt;\n&lt;p&gt;　　首先芝麻信用对使用人的信用到底怎么来判断呢?芝麻信用分计算的依据包括：信用历史：比如信用卡车贷房贷都按时还款吗，预订酒店打车会守信履约吗;行为偏好：互联网行为也会成为加分项，比如按时交纳水电煤、爱心捐赠、给家人添置物品等;履约能力：是否具有足够的财富和综合能力来偿还贷款或履行约定;身份特征：在网上的身份信息是否真实全面可靠，比如学历学籍、职业资格、消费记录等;人脉关系：你的小伙伴们是否也有良好的信用记录。这些数据能全面的反映出本人的真实信誉度，造假程度几乎为零。所以以此判断出的芝麻信用分数，能让银行放心的给评判为信誉良好的人放款。&lt;/p&gt;\n&lt;p&gt;　　贷款给的额度是根据本人的信誉度来调整的，那么，花呗的授信额度怎么来呢?花呗的授信额度与借呗并没有必然联系，花呗是阿里巴巴蚂蚁微贷提供的这月买、下月还的网购服务，在消费者确认收货后次月10日需还款，花呗消费额度可登录支付进行查询，花呗与天猫分期、天猫先试后买、淘宝先用后付共用一个消费额度。登陆支付宝进入主页后，点击花呗旁边的开通按钮，会看到花呗额度由重庆市阿里巴巴小额贷款公司提供的说明，输入支付宝支付密码即可开通(签约成功)。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(36, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499927678, 1499927678, 1499927664, 0, '成功申请到信用贷款的技巧', '', '', '', '\n&lt;p&gt;　　信用贷款,也称无抵押贷款或者无担保贷款,具体来说就是借款人无需提供抵押品或第三方担保,仅凭自己的信誉就能取得贷款。申请者要想成功申请到信用贷款不仅要符合申请条件,需要掌握一定的技巧。下面希财网小编来列几条信用贷款成功技巧。&lt;/p&gt;\n&lt;p&gt;　　打印好个人征信报告&lt;/p&gt;\n&lt;p&gt;　　既然申请的是信用贷款,是以个人信用保证获得的贷款,申请者就必须提前通过央行下属的征信系统查询自己的征信记录情况并打印好。需要特别说明的是,如果征信记录太差的话,那么想申请信用贷款基本没戏。&lt;/p&gt;\n&lt;p&gt;　　提前准备好申请资料&lt;/p&gt;\n&lt;p&gt;　　贷款机构在申请信用贷款申请时,最亲睐申请资料齐全的申请者,因此要想成功申请首先要准备齐全相关申请材料,主要有申请者的个人身份证、最近6个月左右的打卡工资银行流水、户籍证明或居住证明、婚姻证明等材料,总之相关的资料准备的越齐全越有利于快速通过审核。&lt;/p&gt;\n&lt;p&gt;　　选择非银行机构办理更快&lt;/p&gt;\n&lt;p&gt;　　由于银行在发放贷款的时候,都是要严格按照相关流程来进行操作。如果想快速得到贷款,当地办理信用贷款的机构办理是不错的选择,最快当天就能拿到钱哦!&lt;/p&gt;\n&lt;p&gt;　　无论如何，如果你有着良好的信誉，剩下的条件只要符合要求，那么申请就会轻松很多。希财网小编在这里祝即将要去申请的人都能顺利拿到贷款。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(37, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499927708, 1499927708, 1499927695, 0, '海外留学贷款攻略', '', '', '', '\n&lt;p&gt;　　几年前，提起留学，人们首先想到的是一般家庭无法想象和承受的巨额费用，如今，留学已经不像以往那样可望而不可及。想留学，钱不够怎么办?通过银行办理海外留学贷款是可以解决问题的。&lt;/p&gt;\n&lt;p&gt;　　海外留学贷款，是指贷款银行通过采取抵押、质押、信用和“抵押+质押”组合的贷款方式，向出国留学人员或其直系亲属或其配偶发放的，达到满足个人客户出国留学资金的贷款需求。&lt;/p&gt;\n&lt;p&gt;　　目前，接受中国留学生贷款证明的国家主要为澳大利亚、新西兰和英国。新西兰指定了中信实业银行;澳大利亚移民局认可的金融机构有6家，即中国银行、中国工商银行、中国建设银行、中国农业银行、中信实业银行和上海浦东发展银行;英国认可留学贷款的银行有招商银行等。&lt;/p&gt;\n&lt;p&gt;　　要想成功地取得银行的留学贷款，对以下四点攻略必须做到心中有数。&lt;/p&gt;\n&lt;p&gt;　　留学贷款与获得签证无关&lt;/p&gt;\n&lt;p&gt;　　贷款本身不会影响签证结果，因为能够贷款就已证明申请人拥有一定资产，具备一定的出国条件，签证官重点考核的是担保人的还款能力。所以，真实性、合理性、可行性强的还款能力和计划证明材料是决定贷款申请签证成败的关键。&lt;/p&gt;\n&lt;p&gt;　　留学贷款需要的条件&lt;/p&gt;\n&lt;p&gt;　　借款人需提供就读学校的《录取通知书》或《接收函》，提供就读学校开出的学习期内所需学杂费生活费的证明材料，还要提供贷款人认可的资产抵押、质押或具有代偿能力并承担连带责任的第三方借款人，并且借款人已拥有受教育人所需的一定比例的费用。&lt;/p&gt;\n&lt;p&gt;　　贷款的额度和年限&lt;/p&gt;\n&lt;p&gt;　　留学贷款的额度不超过国外留学学校录取通知书或其它有效入学证明上载明的报名费、一年内学费、生活费及其它必需费用的等值人民币总和，最高不超过50万元人民币，期限一般为1～6年，最长期限不超过6年。&lt;/p&gt;\n&lt;p&gt;　　留学贷款的几种担保抵押方式&lt;/p&gt;\n&lt;p&gt;　　留学贷款一般有三种担保抵押方式。一是房产抵押：贷款最高额不超过经贷款人认可的抵押物价值的6 0%。二是质押：贷款最高额不超过质押物价值的8 0 %。三是信用担保：以第三方提供连带责任保证的，若保证人为银行认可的法人，可全额发放;若是银行认可的自然人，贷款最高额不超过2 0万元人民币。&lt;/p&gt;\n&lt;p&gt;　　各银行出国留学贷款额度和期限&lt;/p&gt;\n&lt;p&gt;　　中国银行&lt;/p&gt;\n&lt;p&gt;　　出国留学人民币贷款是中国银行向借款人发放的用于受教育人就读境外大学预科、大学或攻读硕士、博士学位所需的保证金及学费和生活费用(包括出国路费)的人民币贷款。贷款限额：原则上不超过受教育人在校就读期间所需学杂费和生活费用总额的80%。最低为1万元，最高不超过50万元。贷款期限：一般为1～6年，最长不超过10年。贷款预期年化利率：按中国人民银行规定的同档次贷款预期年化利率执行。&lt;/p&gt;\n&lt;p&gt;　　中信银行&lt;/p&gt;\n&lt;p&gt;　　新西兰：攻读大学本科以上学位的，贷款金额不少于30万元;攻读“语言+预科+学位”的，贷款金额为50万～60万元，最高不超过60万元。贷款期限为3～6年。新西兰留学贷款不允许提前还款，如贷款期结束前已完成在新西兰的学业，可以联系新西兰移民局开具结业证明，申请人再凭此到中信银行(601998,股吧)全部结清剩余贷款。澳大利亚：可贷款金额按照学校提供的每年学费、生活费标准等具体情况确定，上限为80万元。贷款期限为1～6年。&lt;/p&gt;\n&lt;p&gt;　　工商银行&lt;/p&gt;\n&lt;p&gt;　　选择抵押，可贷款不超过个人住房价值的70%;选择质押，可贷款不超过质押物的9 0%，贷款上限为2000万元，期限为8年。&lt;/p&gt;\n&lt;p&gt;　　浦发银行&lt;/p&gt;\n&lt;p&gt;　　浦发银行(600000,股吧)推出“出国易”留学贷款业务，贷款额度为留学生全部学费加生活费100%贷款，最长6 年，最高额度可达12 0万元。申请人只需凭国外学校入学通知书，即可向浦发银行提出贷款申请。一旦审核通过，浦发银行会出具一份贷款承诺书，申请人即可往大使馆签证，届时凭签证提款即可。&lt;/p&gt;\n&lt;p&gt;　　光大银行&lt;/p&gt;\n&lt;p&gt;　　抵押可贷款不超过房屋价值的60%;质押可贷款不超过质押物的90%，没有具体上限。贷款期限为留学时间再加上半年。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(38, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499927743, 1499927743, 1499927724, 0, '办理个人住房贷款有哪些技巧', '', '', '', '\n&lt;p&gt;　　贷款预期年化利率最低0.75%，承诺不收取任何中介费用。同样的额度、同样的三步申请，一分钟就可迅速匹配信贷经理。门槛更低、费率更低、品种更丰富。建议大家办理网贷款，申办入口：&lt;/p&gt;\n&lt;p&gt;　　1、申办个人住房贷款技巧：要科学选择贷款品种&lt;/p&gt;\n&lt;p&gt;　　目前和个人住房贷款有关的就有个人住房公积金贷款、个人住房商业性贷款和个人住房装修贷款。&lt;/p&gt;\n&lt;p&gt;　　公积金贷款具有贷款预期年化利率低，减收办理贷款相关手续费，家庭各成员公积金额度可合并使用等的优惠， 故只要是及时足额缴纳公积金的职工，均应首先申请自己可以得到的最大额度，最长期限的公积金贷款。&lt;/p&gt;\n&lt;p&gt;　　对因未缴存公积金而无缘申请个人住房公积金贷款的个人，可用所购住房做抵押，或有足够代偿能力的单位与个人做担保，向银行申请个人住房商业性贷款。&lt;/p&gt;\n&lt;p&gt;　　居民在对自用住房进行装修时遇资金不足，可向银行申请住房装修贷款，借贷期最长5年，贷款最高为15万。&lt;/p&gt;\n&lt;p&gt;　　2、申办个人住房贷款技巧：要正确评估自己的借贷能力&lt;/p&gt;\n&lt;p&gt;　　大家在买房时，应首先对自己的购房能力进行一次自我综合评估，然后再做出决策。如何评估呢？&lt;/p&gt;\n&lt;p&gt;　　首先要看自己是否有不低于购房价30％的首期付款，因为绝大多数房产商都有这个硬性要求；其次要充分评估自己 每月偿还住房贷款本息所能承受的能力，即：每月家庭收入与每月必须支出（指日常生活必须开支和备用资金）的差额，是否大于住房贷款每月所需偿还的贷款本息。有些银行推出的“零首付”按揭贷款，对于那些还没攒够30％的购房者来说虽然是喜讯，但同时借款人的每月还贷额也将相应增加。&lt;/p&gt;\n&lt;p&gt;　　一般来说，一个家庭每月的还款额不能超过家庭月收入的50％，否则会影响正常的生活。&lt;/p&gt;\n&lt;p&gt;　　3、申办个人住房贷款技巧：尽量减少向银行借款的金额，缩短借款期限&lt;/p&gt;\n&lt;p&gt;　　银行计算贷款利息的依据有三个：贷款额度、贷款期限和预期年化利率，利息额与这三个因素均是同向变动的关系，也就是金额越多、期限越长、预期年化利率越高则利息越多。预期年化利率是国家统一规定的，各银行目前均按照统一的预期年化利率执行，个人目前没有选择和讨价还价的余地。&lt;/p&gt;\n&lt;p&gt;　　所以，为了减轻利息负担，您应该尽量减少向银行的借款，并且尽量缩短期限。借款只能用以解决一时之需，不能长期过度依赖银行贷款，银行贷款并非免费午餐。&lt;/p&gt;\n&lt;p&gt;　　但是，这里有个平衡的问题，如果您的借款金额过少，您可能没有足够的资金用于支付；如果期限过短，在借款金额一定的情况下，那么您每月或每年的还款负担就很重，还款压力很大。&lt;/p&gt;\n&lt;p&gt;　　4、申办个人住房贷款技巧：要尽量提前归还个人贷款&lt;/p&gt;\n&lt;p&gt;　　一方面，许多借款人当初借款时，由于对今后自己到底挣多少钱心里没底，故常常有“多贷点，贷期长一点”的保守思想，几年下来后，不料随着收入增长还贷能力有了较大的增强。&lt;/p&gt;\n&lt;p&gt;　　另一方面，贷款毕竟是要支付利息的，如按等额本息还款法计算，公积金贷款10万元，贷期 20年共需支付利息4.6046万元，银行个人住房商业性贷款10万元，贷期20年共需支付利息5.8928万元，贷期30年共需支付利息9.48万元，利息额分别占所贷本金的46%、59%和94%，非常之可观。&lt;/p&gt;\n&lt;p&gt;　　因此，在能力许可的情况下，能提前还清贷款的还应是尽早还清，毕竟无债一身轻啊！提前偿还贷款，银行只按实际贷期计息，将可使您相应减少利息支付。不过现在有的银行对于提前归还的贷款要收取违约金，您可以在二者间权衡，采取最有利于自己的偿贷方式；同时，您还可以到保险公司要求退还提前期内保费。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(39, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499927768, 1499927768, 1499927755, 0, '中小企业贷款融资的策略和技巧', '', '', '', '\n&lt;p&gt;　　资金对于一个企业来说，是维持生存和发展的重要支柱。企业资金和人体血液在重要性、“发病机理”和问题解决等方面十分相似，因此资金对企业来说不可或缺。小微企业贷款融资已经成为当今社会关注的焦点,无论是金融主管部门、各大银行,还是广大中小企业,都在寻求解决办法。&lt;/p&gt;\n&lt;p&gt;　　小微企业为获得运营和周转资金，就要有更好的策略和技巧，就要想办法绕过以往在银行等金融机构申请融资所遇到的种种羁绊。传统金融机构对信贷的审核一般考察企业的资产负债等“硬信息”，以考察企业或企业主的资产状况、银行信用情况、财务报表、纳税情况为主，而这些也正是小微企业普遍存在的信用和信息方面的薄弱环节，无法避免地在融资条件审核中处于劣势。相比较而言，小微企业的优势在于“软信息”，也就是持续稳健的经营，交易数据的真实易得性和创造现金的能力。如果能够扬长避短，发挥和利用小微企业“软信息”优势，或许能为小微企业融资另辟蹊径。&lt;/p&gt;\n&lt;p&gt;　　近两年以来，一些股份制银行和城商行聚焦到了小微企业贷款这个市场，并根据小微企业的特点对贷款的申请、审核、贷款预期年化利率等制定出全新的流程和标准。据了解，一些大型银行也开始关注这个市场，如建行就正推出一系列针对小型企业的贷款产品。小微企业贷款的出现，为初创业阶段或是小型规模的企业获得银行贷款提供了一种新的可能。近期，民生银行在北京推出了“商贷通2.0”的升级版本。这就意味着“商贷通”将从单一的贷款产品向包括经营结算、家庭财富管理、增值服务在内的全面金融服务转变。如在北京所成立的“小微企业商户俱乐部”将为会员提供专业的金融服务和优质的附加贵宾服务，如法律、会计、审计、融资、投资等专业信息的支持等。&lt;/p&gt;\n&lt;p&gt;　　小微企业贷款所需的申请材料包括：营业执照、税务登记证、最近三个月的对公流水，以及反映企业经营的个人银行流水、办公场地租用合同或者房产产权证、特殊经营许可证等;股份制企业还需提供2/3以上股东同意贷款的决议书。此外法人代表还需提供其身份证、地址证明材料、和最近半年的居住证明等。&lt;/p&gt;\n&lt;p&gt;　　小微企业是国民经济的重要组成部分，但企业贷款融资难的问题制约了其健康发展。对于广大小微企业主来说，选对合适的产品，其实融资也不难。小微企业需要的资金量虽说并不大，但由于财务状况透明度不高、信用积累较低且没有抵押，基本无法提供有效担保。一般来说，房产、土地等易保值升值的资产比企业生产设备、原材料等物品抵押更容易获得审批。目前，房产抵押贷款是小微企业获得贷款最为方便的一种渠道，基本上，各家银行都可以提供这一融资方式。房产抵押贷款对房产的属性界定非常宽泛，既包括了营业用房、办公用房，如商铺、写字楼、宾馆酒店等，也包括住宅。因此，在银行的房产抵押贷款 产品中只要没有特别注明是商用房抵押贷款，那么即使企业所使用的经营或办公用房是租赁的，只要企业主有个人房产，也可以作为抵押物为企业申请贷款。无抵押贷款是指银行以借款人的信誉发放贷款，借款人不需要担保。这种贷款方式一般贷款预期年化利率稍高，国有大银行很难申请，在外资银行和小型银行比较好申请。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(40, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499927805, 1499927805, 1499927793, 0, '教您购房贷款中的四大实用技巧', '', '', '', '\n&lt;p&gt;技巧之一吃透还款方式&lt;/p&gt;\n&lt;p&gt;选择适合的还款方式也可以让贷款人达到省钱目的目前比较普遍的还款方式有等额本息等额本金双周供这三种还款方式从节省利息的角度来看依次为双周供&amp;gt;等额本金&amp;gt;等额本息三种还款方式特点及适用人群各有其特点借款人可根据自身实际情况进行选择。&lt;/p&gt;\n&lt;p&gt;技巧之二巧用公积金&lt;/p&gt;\n&lt;p&gt;对于有足月缴纳公积金的借款人来说建议尽量使用公积金贷款在购房时公积金优势明显不仅可以享受较低首付容易审批而且预期年化利率方面也有一定比例的优惠政策在使用公积金购买政策性住房时不但可以享受低预期年化利率还可以将公积金账户内余额直接做首付。&lt;/p&gt;\n&lt;p&gt;技巧之三选择不同银行借款&lt;/p&gt;\n&lt;p&gt;房贷时选择不同的银行贷款是可以达到不同省钱效果的从目前的房贷市场来看外资银行本土化程度越来越高内资银行的竞争意识也越来越强借款人的可选余地也越来越大。&lt;/p&gt;\n&lt;p&gt;内资银行的优势在于了解本土借款人需求推出的贷款产品适合不同人群国有银行商业银行农业信用社等在借款中信用度较高各银行分行支行等营业网点密集方便借款人还款其劣势在于部分内资银行在贷款细节上缺少人性化服务业务办理中各部门衔接性较差经营管理制度及竞争策略不及外资银行成熟。&lt;/p&gt;\n&lt;p&gt;外资银行的优势在于房贷产品较为丰富一对一式服务更显人性化提前还款无限制灵活便捷部分房贷政策较灵活其劣势在于对客户准入门槛高一般要求在本行有一定数额存款的客户才可以办理房贷业务对借款人的资质审核较严格营业网点少本土化程度较低。&lt;/p&gt;\n&lt;p&gt;技巧之四抵押购房&lt;/p&gt;\n&lt;p&gt;对于想达到省钱目的的借款人还可以选择抵押消费贷款建议使用抵押房产再购房的借款人尽量不要选择抵押后再贷款的形式购房因为这样是要支付抵押贷款和商业贷款两部分的月供且商业贷款部分的预期年化利率可能会按上浮倍来执行对于借款人会形成较大的还款压力如果借款人选择抵押贷款再加上手头积蓄等实现全款购房则可在一定程度上规避二套房政策借款人选择抵押全款购房会相对稳妥些。&lt;/p&gt;\n&lt;p&gt;贷款购房如果规划安排较为合理的话总体上节省%左右的购房开支是没有问题的因此购房者必须要重视。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(41, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1499927867, 1503372642, 1499927820, 0, '无抵押贷款防骗技巧', '', '', '', '\n&lt;p&gt;　　目前，很多朋友在急需用钱的情况下，会选择申请无抵押贷款，可是，很多骗子把目光也锁定在了无抵押贷款上，那么，办理无抵押贷款怎么防骗?&lt;/p&gt;\n&lt;p&gt;　　1、无抵押贷款门槛过低，切勿相信!&lt;/p&gt;\n&lt;p&gt;　　虽然无抵押贷款不需要借款人提供任何抵(质)押物，但并不是表示你不提供任何证明或是只提供一项证明就能申请贷款，你要试想一下如果没有材料证明你的还款能力，贷款机构凭啥给你发放贷款?&lt;/p&gt;\n&lt;p&gt;　　2、没有身份证也能办理无抵押贷款?完全扯淡!&lt;/p&gt;\n&lt;p&gt;　　有人问：有贷款公司说没有身份证也能办理无抵押贷款，是真的吗?当然是假的!没有身份证就不能证明你的身份，连你的身份贷款机构都不明确，怎么敢放款给你?&lt;/p&gt;\n&lt;p&gt;　　3、贷前收费不靠谱&lt;/p&gt;\n&lt;p&gt;　　一些贷款公司还没有发放贷款，就要求借款人交利息、手续费、保证金等，其实这是骗子所为，正规贷款公司在未放款前不会以任何理由要求借款人交费。&lt;/p&gt;\n&lt;p&gt;　　4、不见面也能签订贷款合同?纯属子虚乌有!&lt;/p&gt;\n&lt;p&gt;　　一些贷款公司声称“贷款合同无需面签，只需传真过去就好”，但是正规贷款公司要求借款人必须面签合同。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(42, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499927894, 1499927894, 1499927881, 0, '小微企业选择银行贷款的技巧及条件要求', '', '', '', '\n&lt;p&gt;　　经营贷款是以中小企业主或个体工商户为服务对象的融资产品，借款人可以通过房产抵押等担保方式获得银行贷款，贷款资金用于其企业或个体户的经营需要。楼市严厉调控以来，个人经营贷款已经成为银行零售业务的新宠。&lt;/p&gt;\n&lt;p&gt;　　小微企业贷款正变得更加便捷。日前，工行、建行、农行、平安等多家银行纷纷开设“网银循环贷”业务。目前网银循环贷款已经成为多家银行拓展小企业信贷市场的重要工具，不过各家银行的产品稍微有些差别，如工商银行小企业“网贷通”产品需要先注册成为企业网上银行证书版客户，而且是信誉良好、具备履行合同、偿还债务能力、经查询央行征信系统无不良信用记录的企业，需要采取全额房地产抵押、低风险质押或融资业务中心认可的其他风险较低的担保方式，才有可能通过申请。最高贷款额度一般不得超过3000万元(低风险业务部分除外)，使用期限为两年。&lt;/p&gt;\n&lt;p&gt;　　建设银行的小企业网银循环贷产品则是自助申请，担保灵活，按日付息，随借随还，最高贷款额度为1000万元，最长贷款期限为1年。平安银行同样也推出了中小企业网银循环贷，符合小微企业贷款政策规定标准、具有网上自助贷款真实需求的中小企业客户，有可能获得贷款。&lt;/p&gt;\n&lt;p&gt;　　不少银行特别是中小银行用新理念重塑小企业信贷业务，实施标准化管理，形成了针对不同客户适用不同产品营销模板，通过既定业务模板实现流程化批发性经营，提高运行效率。小微企业在申请贷款前最好对各银行的产品有所了解。&lt;/p&gt;\n&lt;p&gt;　　贷款除了要看贷款预期年化利率，还要考虑其他费用的成本因素，比如不少大银行往往会另外通过咨询费、管理费等形式向贷款企业收取额外的费用，或者通过捆绑销售理财产品锁定贷款，使得贷款企业的实际贷款额度缩水。作为借款人，在贷款的时候可以对各银行的贷款预期年化利率以及其他额外收费情况进行比较，从中选择一家成本较低的银行办理。&lt;/p&gt;\n&lt;p&gt;　　企业获得银行贷款之前往往需要审核资质，为提高贷款通过率，企业不妨先看看是否自身满足银行贷款的基本条件。具体而言，获得贷款的主要条件也就是借款单位必须具备的几项基本条件包括：&lt;/p&gt;\n&lt;p&gt;　　(1)需经国家工商行政管理部门批准设立，登记注册，持有营业执照;&lt;/p&gt;\n&lt;p&gt;　　(2)实行独立经济核算，自主经营、自负盈亏，即企业有独立从事生产、商品流通和其他经营活动的权力;&lt;/p&gt;\n&lt;p&gt;　　(3)有独立的经营资金、独立的财务计划与会计报表，依靠本身的收入来补偿支出，独立地计划盈亏，独立对外签订购销合同;&lt;/p&gt;\n&lt;p&gt;　　(4)有一定的自有资金。此外还有贷款企业需在银行开立基本账户和一般存款账户、产品有市场、生产经营要有效益、不挤占挪用信贷资金、恪守信用等，一共十多项内容。&lt;/p&gt;\n&lt;p&gt;　　除此之外，还规定贷款企业还应符合下列条件：有按期还本付息的能力，即原应付贷款本金及利息已偿还，没有偿还的已经做了银行认可的偿还计划;经工商行政管理部门办理了年检手续;资产负债率符合银行的要求等等。&lt;/p&gt;\n&lt;p&gt;　　一般来说，小微企业在有抵押物的情况下更易获贷，但并非所有的企业都能提供符合银行要求的抵押物，为了解决这类企业的资金需求问题，一些银行推出了小微企业信用贷款产品。无抵押信用贷款是指银行以借款人的信誉发放贷款，借款人不需要担保。这种贷款方式一般预期年化利率稍高，国有大银行很难申请，在外资银行和小型银行比较好申请。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(43, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499927924, 1499927924, 1499927910, 0, '中小企业成功贷款的技巧及注意事项', '', '', '', '\n&lt;p&gt;　　目前，中国中小企业贷款困难已是一个不争的事实，而银行贷款是目前中小企业主要的融资渠道。要想在机会均等和其他条件相同的情况下，顺利地从银行获得贷款，借款技巧便显得尤为重要。下面，希财网就给大家谈谈中小企业经营贷款的技巧及注意事项。&lt;/p&gt;\n&lt;p&gt;　　一、中小企业贷款技巧&lt;/p&gt;\n&lt;p&gt;　　1、额度合理可信&lt;/p&gt;\n&lt;p&gt;　　中小企业提出的贷款额度要合理可信。银行业通常按照某些财务指标确定企业的贷款安全度，比如根据企业销售额、净资产和企业现有融资额等做出初始判断，随着银企信息的进一步沟通，财务、非财务信息的补充，银行将不断修正贷款额度，最终放款将以评审通知书为准。企业可以按照目标贷款银行的要求，根据历史销售数据和盈利数据等估算一个大致的贷款额度，并以此提出贷款申请，这将有利于赢得银行客户经理的好感，帮助获得信贷。企业所拥有的不动产、动产、良好声誉等也是银行确定贷款额度的重要参考因素，企业要及时告知相关信息。&lt;/p&gt;\n&lt;p&gt;　　2、准备各项材料&lt;/p&gt;\n&lt;p&gt;　　中小企业应认真对照贷款手续清单的内容准备各项材料，减少不必要的麻烦，加快贷款进程。银行通常要求中小企业提供各类资料，以帮助判断是否给予企业贷款。贷款清单通常包括：借款申请报告、公司简介、法人营业执照/验资报告、公司章程、法人代表身份证复印件、董事会决议、贷款卡、近两年财务报表、公司股东介绍，如需提供不动产抵押，则需提供房地产权证和房地产价值评估报告等。企业可以去各营业网点索取贷款清单，根据清单所列条款提早准备各项材料。各家银行的要求大同小异，但也有银行在中小企业金融服务领域深耕细作，不断简化资料要求。&lt;/p&gt;\n&lt;p&gt;　　3、积极配合银行审查&lt;/p&gt;\n&lt;p&gt;　　中小企业要积极配合银行的贷前调查和贷后管理，及时提供资料，化解银行对企业运营的担忧，也降低自身运营风险。为严格控制贷款风险，银行业通常设计有较为缜密的贷款流程，通过银行客户经理、风险经理和评审经理层层把关，后台严格监控，银行通常能较为准确地判断企业的实际运营状况。企业如果提供虚假财务报表等资料，较易被识破。在信贷关系存续期间，银行会不定期监控企业的银行资金往来，关注其中反映出来的企业运营状况，以判断企业的风险点和资金的安全度，如果银企关系和睦，银行及早告知，则企业也能较早防范。&lt;/p&gt;\n&lt;p&gt;　　4、把握贷款契机&lt;/p&gt;\n&lt;p&gt;　　企业要主动关注银行的业务重点，把握贷款契机。若银行确认某项服务为业务重点，就会在人力资源、教育培训、资金分配等加大内部资源配置，同时，在营销一线安排更多人员提供服务，投放更多贷款，并通过改造内部流程提供更为便捷的服务，缩短审批时间。&lt;/p&gt;\n&lt;p&gt;　　二、中小企业贷款的注意事项&lt;/p&gt;\n&lt;p&gt;　　1、在申请贷款时，借款人应该根据目前贷款预期年化利率，对自己目前的经济实力，还款能力做出正确的判断。根据自己的收入水平设计还款计划，并适当留有余地，不要影响自己的正常生活。&lt;/p&gt;\n&lt;p&gt;　　2、选择适合的还款方式。目前基本上是等额还款方式和等额本金还款方式两种，还款方式一旦在合同中约定，在整个借款期间就不得更改。&lt;/p&gt;\n&lt;p&gt;　　3、每月按时还款避免罚息。从贷款发起的次月起，一般是次月的放款时间为还款日，不要因为自己的疏忽造成违约罚息，导致再次银行申请贷款时无法审批。&lt;/p&gt;\n&lt;p&gt;　　4、妥善保管好您的合同和借据，同时认真阅读合同的条款，了解自己的权利和义务。&lt;/p&gt;\n&lt;p&gt;　　北京担保公司——希财网，是一家专业化的贷款担保服务机构,熟知多家银行贷款业务，专业提供房产抵押贷款、房屋质押贷款、汽车质押贷款、企业经营贷款、个人消费贷款、短期资金周转等各种北京贷款担保业务，与多家银行合作，为您解决资金之忧，欢迎广大朋友前来咨询办理。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(44, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499927959, 1499927959, 1499927942, 0, '贷款小技巧', '', '', '', '\n&lt;p&gt;　　一、贷比三家&lt;/p&gt;\n&lt;p&gt;　　就像买东西一样，贷款也需要货比三家。目前，银行之间的竞争也非常激烈,各自为了争取到更多的市场份额,都会在国家规定的贷款预期年化利率范围内进行贷款预期年化利率的调整。因此,借款者在向银行贷款时,要做到“货比三家”，选择低预期年化利率的银行去贷款。&lt;/p&gt;\n&lt;p&gt;　　二、根据还款能力选择还款期限以及还款方式&lt;/p&gt;\n&lt;p&gt;　　目前，利息的高低与还款期限息息相关，所以借款者一定要根据还款期限选择合理的还款方式。如果贷款时间过长，由于银行是按照月份计算复利，所以可能付出很多利息，贷款成本增加。同时，贷款时间过长，会讲自己置于贷款预期年化利率变动的风险中。而如果还款时间过短，可能会给自己带来很大的压力，降低自己的生活质量。因此，在银行贷款时,合理计划用款期限长短，非常重要。&lt;/p&gt;\n&lt;p&gt;　　三、签订贷款协议要谨慎&lt;/p&gt;\n&lt;p&gt;　　现在,很多借款者在银行贷款签订协议时显得非常的随意。其实这种潇洒行为说明了他们缺乏良好的融资理财意识,不认真看清楚协议书上的条款，往往就会在还贷时多掏利息,造成人为的“高息”。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(45, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499927988, 1499927988, 1499927971, 0, '贷款买房的年限的选择攻略', '', '', '', '\n&lt;p&gt;　　如何选择购房贷款的成数和年限?&lt;/p&gt;\n&lt;p&gt;　　当我们购买商品房办理银行按揭时，需要对房贷成数和年限做出选择。目前商业银行提供的住房抵押贷款的选择余地很大，贷款比例可以从1成到7成，贷款年限可以从1年、5年、10年、20年到30年。&lt;/p&gt;\n&lt;p&gt;　　贷款成数首先要看购房首付时自己一下子能拿出多少钱，将来按月供房的承担能力有多大。贷款成数高的好处是首付的钱较少，可以解决当前家庭财力不足的问题，但将来每个月的还款压力就比较大;相反，选择成数低的贷款首付要求的资金量较高，但以后月还款的压力小。其次要看当前的贷款预期年化利率水平、以及资金用于家庭其它投向的预期年化收益率，如果其它投向的资金预期年化收益率大于贷款预期年化利率，应选择较高成数的贷款，这样家庭短期富余出来的自有资金进行其他投资的报酬大于贷款付出的利息，家庭可得到一块超额预期年化收益;反之，其他投向的预期年化收益率小于贷款预期年化利率，则应增加贷款的成数，按照家庭财力实际情况，尽力多付一些首期款，将来可以少付一些利息。最后，还要将银行贷款预期年化利率和通货膨胀率进行一下比较，因为房屋本身具有保值增值的功能，一般来说，房屋价值与物价指数应该存在同步的变动，当银行预期年化利率小于通胀率时，即实际预期年化利率是“负预期年化利率”时，投资房产肯定合算，此时应充分利用银行按揭的杠杆作用，选择较大成数的贷款。&lt;/p&gt;\n&lt;p&gt;　　贷款年限的选择相对简单，主要看我们的月供款能力，如果家庭的预期月收入较大，应该选择较短时期的贷款年限，即所谓宜短不宜长。在首付比例不变的情况下，较短的年限虽然增加了我们的月还款金额，但随着总还款时间的减少，我们为银行打工的时间有效缩短了，贷款所需承担的利息总数同步大幅下降。在家庭经济条件允许的前提下，选择较短年限的贷款是合算的。&lt;/p&gt;\n&lt;p&gt;　　如何确定贷款年限及还款方式&lt;/p&gt;\n&lt;p&gt;　　一、 还款期限的选择&lt;/p&gt;\n&lt;p&gt;　　贷款期限是愈长愈好，还是短期的好?这主要取决于购房者的经济能力及其投资偏好。&lt;/p&gt;\n&lt;p&gt;　　一般来说，还款期限越长，则每月还款额越低，负担就相对轻一些;反之，还款期限越短，则每月还款额越高，负担就相对重一些。可见，延长还款期限的目的主要是为了降低每月还款额，但是否期限月长越好呢?让我们来看一个例子。以借款一万元为例，如果一年还清，每月还款865元，如果两年还清，每月只需还款448元，每月还款减少413元，负担减轻50%左右。而比较第十九年和第二十年，19年的为每月还款76元，20年的为每月还款78元，同样是延长一年，每月负担只减少元，约为2%。可见期限过长不能使每月还款额大幅度减少，而白白增添了利息负担。所以合理的期限为5—8年。&lt;/p&gt;\n&lt;p&gt;　　专家认为，假若限制一个期限较长的抵押贷款，每月付款额就相应较少，因而就容许由较多的资金积累用语改善生活品质或作其他方面的投资。而且购房者还可以根据自己的收入状况提前付清抵押贷款的余款，以避免长期的利息负担。但是，是不是选择抵押贷款的期限越长越好呢?这并不是好事，问题出在期限越长的抵押贷款所支付的利息占贷款总额的比例较高 ，而且随着收入增长，过长的期限会造成过小的每月付款额，从而带来不必要的利息支出。举例来说，一个年预期年化利率10% ，10万元的30年贷款，每个月利息费用878元，全部利息费用是21.6元，是本金的两倍多，同样10万元的15年贷款，每月利息075元，虽然比30年的多了97元，但全部利息支出只有9.35万元，比30年少了12.2万元，还只花了一半的发时间就还清了贷款。房地产投资专家认为，以年利10%为例，10年的总付款额是抵押款的1.59倍，若选择20年分期付款总付款额便达到了抵押额的2.3倍。因此，购房者应根据自己经济收入状况及未来预算，确定一个合理的抵押贷款期限，一般应选择10到15年贷款期限为适当。经验资料证明也如此。在香港990年的以次房地产调查表面，年龄在40岁以下的首次购房抵押期为14.2年，40岁以上的则为11.7到13.3年。&lt;/p&gt;\n&lt;p&gt;　　对资金比较充裕的人来说，长期贷款比较有利。可以借入长期资金，同时对外作出短期投资，短期投资的回报足以偿还长期借贷并有赢余。&lt;/p&gt;\n&lt;p&gt;　　对于资金紧张的购房人，由于除了还贷以外，没有更多的钱做其他投资，所以还是首先考虑避免支出过多利息，应以中短期贷款比较合适。&lt;/p&gt;\n&lt;p&gt;　　七成二十年贷款十所有贷款中成数最高，期限最长的一种，但很难说是最好的一种。最主要的是购房人要依据自己的实际情况选择适合自己的贷款种类。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(46, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499928025, 1499928025, 1499928012, 0, '手机在线借钱技巧有哪些？', '', '', '', '\n&lt;p&gt;　　手机在线借钱技巧有哪些？手机上借钱，很多人可能只听过但却没有亲身参与过。毕竟，手机在线上借钱是新事物，人们对于有关手机在线借钱的许多问题还没弄清楚。手机在线借钱是有技巧的，这些技巧反映在如何选择手机在线借钱的平台、手机在线借钱申请方法等方面。今天，小编就为大家介绍一下手机在线借钱技巧。&lt;/p&gt;\n&lt;p&gt;　　1、手机在线借钱是真的&lt;/p&gt;\n&lt;p&gt;　　手机在线借钱是真的还是假的？如果你认为手机在线借钱是假的，你就不会选择手机在线借钱了。在选择手机在线借钱时，自己必须在观念中明确手机在线借钱是真的这种理念。只有这样，才能使自己有机会接触更多手机在线借钱的平台，才能在相互比较中选择最有利于自己的手机在线借钱的产品。&lt;/p&gt;\n&lt;p&gt;　　其实，目前在手机上尝试在线实时放款的平台越来越多了，尝试在手机上借款的人也越来越多了。&lt;/p&gt;\n&lt;p&gt;　　2、选好手机在线借钱的平台&lt;/p&gt;\n&lt;p&gt;　　随着移动互联网的发展，各大互联网巨头纷纷布局移动互联网金融服务业务。比如，腾讯、平安等。用手机在线借钱已经成为借款的重要方式之一。著名的手机在线借钱的平台有微众银行、手机QQ、平安易贷“i贷”。&lt;/p&gt;\n&lt;p&gt;　　这些手机在线借钱的平台具有快速审批、放款迅速的特点。&lt;/p&gt;\n&lt;p&gt;　　比如，平安易贷APP上申请贷款需要六步操作：注册、点击申请、征信授权、绑定银行卡、绑定网络账号、添加联系人，最后确认等待后台审核放款。根据记者实测，在平安易贷平台上从开始注册填写个人资料到最后确认借款信息，整个申请操作耗时5分钟左右。&lt;/p&gt;\n&lt;p&gt;　　3、快速通过手机在线借钱平台的审批&lt;/p&gt;\n&lt;p&gt;　　手机在线借钱平台一般会推出自己的app，用户需要在app上完成贷款的申请。app贷款是一种新型的贷款方式。app贷款不且快速简便，而且采取线上实施审核，放款迅速。&lt;/p&gt;\n&lt;p&gt;　　此时，用户如果能够快速通过手机在线借钱平台的审批，申请的贷款就能快速到账。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(47, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499928052, 1499928052, 1499928035, 0, '买房贷款须知的五大技巧', '', '', '', '\n&lt;p&gt;　　年末，北上广深等一线城市甚至出现个别楼盘提价、抢房以及地王等现象，引发了购房者对房价可能暴涨的恐慌情绪进一步蔓延。下半年市场成交情况明显好于上半年，业内普遍认为是购房需求受到抑制后在年前集中释放的结果。下面本站告诉大家购房贷款5大技巧。&lt;/p&gt;\n&lt;p&gt;　　1.熟悉当地购房政策&lt;/p&gt;\n&lt;p&gt;　　海南的房地产政策与重庆有很多不同，如买房的税金比例、政府补贴、获取预售证的标准。如果是贷款购房的，还需要了解当地的贷款政策，不同银行的预期年化利率可能存在差距。这些都要在购房前也一定要了解清楚。&lt;/p&gt;\n&lt;p&gt;　　2.了解项目背景&lt;/p&gt;\n&lt;p&gt;　　一般情况下，楼盘的环境和价格优势容易引起你的关注。但在下单前，一定要了解清楚房子本身的合法性、未来区域发展等，切忌盲目跟风，不要因贪便宜而购买了小产权房。&lt;/p&gt;\n&lt;p&gt;　　3.恰当估计你的经济实力&lt;/p&gt;\n&lt;p&gt;　　在海南购房属于异地购房，在购房行动开始前一定要恰当估计你的经济实力，根据自己的可承受能力选择相应价位的房屋。&lt;/p&gt;\n&lt;p&gt;　　4.要保证资金划拨安全&lt;/p&gt;\n&lt;p&gt;　　一般不建议携带现金，而是通过银行转账，可以选择电汇、转账、支票、异地存取款等多种方式进行。同时，一般情况而言，资金应该划拨到房屋所属开发企业账户，而不是售楼员等某个人账户。&lt;/p&gt;\n&lt;p&gt;　　5.了解开发企业诚信度&lt;/p&gt;\n&lt;p&gt;　　购房人在与开发企业打交道时，都处于相对劣势。因此，在购房之初，应该对你所心仪房屋的开发企业诚信有基本了解。&lt;/p&gt;\n&lt;p&gt;　　“2012年全国各地楼市成交量普遍上涨，东部沿海地区甚至翻番，一方面，与被长期压抑的购房需求集中释放有关，另一方面，也与旺盛的自住型购房需求规模超出预想有关。”总结去年的楼市表现，伟业我爱我家集团副总裁胡景晖说：“这应该引起我们足够的重视，即使持续从严的楼市调控让投资投机需求黯然退场，但是如果没有足够的市场供应量应对，旺盛度超出预想的首次置业和改善型置业的自住需求，依然会使楼市调控面临巨大压力。”可以看到，2012年全国楼市呈现了“低开高走”的市场轨迹。年初，楼市持续低迷，库存居高不下，促使开发商普遍开始采取以价换量的市场策略，全国房价在一季度全线回落。并殃及全国范围的土地市场，土地流标和底价成交比比皆是.&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(48, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499928106, 1499928106, 1499928090, 0, '申请免息车贷攻略', '', '', '', '\n&lt;p&gt;　　申请免息车贷需要注意的细节有哪些?比如说消费者在申请免息车贷后，还能享受现金优惠吗?或是可以免去手续费用，其实这都是不同的概念，所以消费者在办理车贷业务前要了解清楚，具体细节如下：&lt;/p&gt;\n&lt;p&gt;　　一：零预期年化利率购车无现金优惠&lt;/p&gt;\n&lt;p&gt;　　汽车金融专家表示，如果你申请了“零预期年化利率”购车，那么就不能享受到其他的现金优惠了。以华晨宝马320i车型为例，目前这款车优惠额度在2万~3万元之间，因此是否需要通过“零预期年化利率”购车还需消费者自己斟酌。&lt;/p&gt;\n&lt;p&gt;　　另外还需注意的是，“零预期年化利率”购车活动通常有期限，而且并非是所有经销商都能提供该项服务，因此消费者购车前需要向当地经销商咨询。&lt;/p&gt;\n&lt;p&gt;　　二：选免息车贷要看手续费&lt;/p&gt;\n&lt;p&gt;　　有业内人士透漏，选择“免息车贷”首先要看手续费，目前市场上只有一部分车型的分期付款是免利息又免手续费。很多车贷产品选择按揭期在1年～3年的零预期年化利率车贷，客户要支付一定的手续费。比如说你要购买东风日产的部分车型，分24期(2年按揭)付款，手续费要被收取4.5%，而有些品牌车的部分车型，其手续费甚至达到7%。手续费一般是在付首期月供的时候，一次性支付完毕。&lt;/p&gt;\n&lt;p&gt;　　三：保险费也要算成本&lt;/p&gt;\n&lt;p&gt;　　由于在消费者还清贷款前，汽车仍属于银行所有，所以银行会提出防范风险的措施，让消费者购买众多保险。比如说某银行的零预期年化利率车贷产品，会让客户保以下险种：第三者责任险20万元、车损险(全额保)、盗抢险(全额保)。消费者要选择零预期年化利率车贷的时候，不妨把条款看仔细，比较一下成本再作决定。&lt;/p&gt;\n&lt;p&gt;　　四：综合考虑上浮额贷款额&lt;/p&gt;\n&lt;p&gt;　　平衡一下资金预期年化收益对于“免息车贷”的用户同样很关键。申请前车主们不妨将车款的上浮额、贷款额、贷款年限综合考虑一下，计算一下免息车贷是否真的划算。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(49, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499928138, 1499928138, 1499928121, 0, '贷款买房技巧须知', '', '', '', '\n&lt;p&gt;　　技巧一：房贷跳槽&lt;/p&gt;\n&lt;p&gt;　　所谓房贷跳槽就是“转按揭”，是指由新贷款银行帮助客户找担保公司，还清原贷款银行的钱，然后重新在新贷款行办理贷款。如果你目前所在的银行不能给你7折房贷预期年化利率优惠，就完全可以房贷跳槽，寻找最实惠的银行。据了解，目前大部分股份制小银行为积极争取客户，更加愿意当然，转按揭会存在一些不可避免的费用，包括担保费、评估费、抵押费、公证费等，不过有些银行为了吸引客户，特意推出“低成本转按”服务，比如可以免掉“担保费”这项最大头的费用，其余剩下的费用大概千元不到。&lt;/p&gt;\n&lt;p&gt;　　技巧二：按月调息&lt;/p&gt;\n&lt;p&gt;　　2006年开始，不少商业银行推出了固定预期年化利率房贷业务。由于固定预期年化利率推出时尚处在预期年化利率上升通道，所以在设计时比同期浮动预期年化利率略高，只要央行加一次息，它的优势就立即显现出来。但是一旦降息，选择它的购房者就吃亏了。因此，在目前降息趋势下，市民以前若选择的是房贷固定预期年化利率，那就赶紧转为浮动预期年化利率才划算。不过，需要提醒大家的是，“固定”改“浮动”需要支付一定数额的违约金。&lt;/p&gt;\n&lt;p&gt;　　值得一提的是，部分银行推出了“按月调息”方式，目前预期年化利率处于下降通道，客户如选择“按月调息”，则可在次月享受预期年化利率下调的优惠。&lt;/p&gt;\n&lt;p&gt;　　技巧三：双周供省利息&lt;/p&gt;\n&lt;p&gt;　　尽管每个月仍然偿还同样数额的房贷，但是由于“双周供”缩短了还款周期，比原来按月还款的还款频率高一些，由此产生的便是贷款的本金减少得更快，也就意味着在整个还款期内所归还的贷款利息，将远远小于按月还款时归还的贷款利息，本金减少速度加快。因此，还款的周期被缩短，同时也节省了借款人的总支出。&lt;/p&gt;\n&lt;p&gt;　　不足之处是，贷款人每月向银行还款的日期就将不断提前，一年下来就要多还一个月的贷款，会增加每个月资金不宽裕的贷款人的压力。因此对于工作稳定，收入稳定的人，选择双周供还是很合适的。&lt;/p&gt;\n&lt;p&gt;　　技巧四：提前还贷缩短期限&lt;/p&gt;\n&lt;p&gt;　　理财人士表示，提前还贷之前要算好账，因为不是所有的提前还贷都能省钱。比如，还贷年限已经超过一半，月还款额中本金大于利息，那么提前还款的意义就不大。&lt;/p&gt;\n&lt;p&gt;　　此外，部分提前还贷后，剩下的贷款市民应选择缩短贷款期限，而不是减少每月还款额。因为，银行收取利息主要是按照贷款金额占据银行的时间成本来计算的，因此选择缩短贷款期限就可以有效减少利息的支出。假如贷款期限缩短后正好能归入更低预期年化利率的期限档次，省息的效果就更明显了。而且，在降息过程中，往往短期贷款预期年化利率下降的幅度更大。&lt;/p&gt;\n&lt;p&gt;　　技巧五：公积金转账还贷&lt;/p&gt;\n&lt;p&gt;　　在申请购房组合贷款时，一方面尽量用足公积金贷款并尽量延长贷款年限，在享受低预期年化利率好处的同时，最大程度地降低每月公积金的还款额;最大程度地缩短商业贷款年限，在家庭经济可承受范围内尽可能提高每月商业贷款的还款额。这样，月还款额的结构中就会呈现公积金份额少、商业份额多的状态。公积金账户在抵充公积金月供后，余额就能抵充商业性贷款，这样节省的利息就很可观。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(50, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499928169, 1499928169, 1499928152, 0, '贷款买车攻略：三种方式该如何选择', '', '', '', '\n&lt;p&gt;　　银行购车贷款&lt;/p&gt;\n&lt;p&gt;　　据资料，银行车贷大多分为“直客式”和“间客式”，银行车贷年限一般为3年，最长不超过5年，首付比例为两到三成贷款，预期年化利率较汽车金融公司低。&lt;/p&gt;\n&lt;p&gt;　　申请银行的购车贷款，可以购买所有在售车型。一般银行的车贷预期年化利率是依照银行预期年化利率确定，而像中行、招行、广发银行还可以针对客户情况，将贷款预期年化利率下浮10%。如果需要办理购车贷款，推荐中国领先的在线贷款平台易贷中国，可以免费帮借款人选择预期年化利率最低、额度最高、速度最快的贷款产品。&lt;/p&gt;\n&lt;p&gt;　　适合人群：在本市有稳定工作，收入较稳定，对贷款时间要求不高的贷款者。&lt;/p&gt;\n&lt;p&gt;　　信用卡分期购车&lt;/p&gt;\n&lt;p&gt;　　据了解，目前包括建行、招行几家推出信用卡分期购车项目的信用卡中心所采用的做法是，对信用卡客户进行初步筛选，通过信用卡消费、信用记录等状况，筛选出一批优质客户，以短信的方式通知客户。优点是信用卡分期购车计划非常快捷，同时不受户籍限制;缺点是首付款比较高、期限短、预期年化利率高。&lt;/p&gt;\n&lt;p&gt;　　适用人群：信用好，收入稳定，还款能力强的银行优质客户。&lt;/p&gt;\n&lt;p&gt;　　汽车金融公司&lt;/p&gt;\n&lt;p&gt;　　据资料，汽车金融公司这两年有了较快的发展，在这里首付一般为20%～30%，贷款年限不超过5年，相对来说放贷速度快。但是车型限制大，一般仅限与本品牌的车型;同时预期年化利率高，一般比银行车贷要高出2%;同时如果提前还款，一般还要支付相当于提前还款额3%的违约金。&lt;/p&gt;\n&lt;p&gt;　　适合人群：收入变化较大，没有本地户口，个人信用良好，资金需求速度较高的贷款者。&lt;/p&gt;\n&lt;p&gt;　　关键词：个人购车贷款房产抵押银行购车贷款汽车抵押贷款&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(51, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499928207, 1499928207, 1499928181, 0, '京沪深三地车贷攻略', '', '', '', '\n&lt;p&gt;　　随着生活水平的提高，汽车消费持续多年需求旺盛，购车时不少人会选择车贷，特别是一些年轻的消费者。如何确定车贷银行？是否通过4S店间接办理车贷？如何才能在车贷上省钱？这些问题对计划车贷的人都非常重要。为了了解各地车贷最新最精确的信息，中国基金报记者以多位购车者实际车贷经验为基础，近期在北京、上海和深圳三地进行了实地调查，走访了多家汽车4S店、银行网点，希望能够给各地办理车贷的读者一定的参考。&lt;/p&gt;\n&lt;p&gt;　　需要注意的是，车贷预期年化利率因期限不同而有所变化，并且根据个人的信用级别、资产情况，车贷预期年化利率也会有所不同。&lt;/p&gt;\n&lt;p&gt;　　北京：&lt;/p&gt;\n&lt;p&gt;　　四大行车贷预期年化利率基本一致&lt;/p&gt;\n&lt;p&gt;　　记者在北京走访多家汽车4S店发现，这些4S店主要推荐的贷款行是工农中建四大行，特别是建设银行被推荐得最多，目前建设银行1年期、2年期和3年期车贷的总费用率分别为4%、8%和12%。&lt;/p&gt;\n&lt;p&gt;　　其他三家银行中，在北京市场，4S店所提供的工行和中行的车贷2年和3年的总利息率和建行完全相同，均为8%和12%，1年期限的工行略高一些，为5%。农行1年期的车贷总利息率也是5%，2年期的车贷总利息率在8%到10%之间，根据客户资质不同，预期年化利率有所差异，3年期的为12%。&lt;/p&gt;\n&lt;p&gt;　　北京一家4S店经理表示，一年期车贷很少有人做，其实四大行的车贷预期年化利率基本一致，主要看客户在哪个银行办理更方便，如果时间急的话，建行的办理速度略快一些。&lt;/p&gt;\n&lt;p&gt;　　北京其他银行车贷预期年化利率普遍略高于四大行，兴业银行1年期、2年期和3年期车贷总利息率分别为5.5%、9.5%和12.5%，招商银行的分别为5.5%、10.5%和14.5%，不过该车贷预期年化利率不是一次性付清利息，而是分到各期支付，投资者可以提前还款。&lt;/p&gt;\n&lt;p&gt;　　另据记者了解，交行和民生银行不是采用总利息率的计算方法，而是直接给一个年化贷款预期年化利率，交行最低位为基准预期年化利率上浮20%，以目前预期年化利率计算约为7.8%到8%，换算到1年、2年、3年总利息率约为4.4%、8.4%、12.4%，都是略高于四大行车贷预期年化利率。民生银行提供的是10.85%的车贷年预期年化利率，相对较高。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(52, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499928242, 1499928242, 1499928211, 0, '房贷还款方法的种类和选择住房贷款的技巧', '', '', '', '\n&lt;p&gt;　　1、分阶段性还款法适合年轻人。&lt;/p&gt;\n&lt;p&gt;　　由于年轻人、大学生刚参加工作，手头资金紧张，所以这种还款方式就允许客户有3-5年宽限期，开始还款每月只要几百元，过了5年后，随着收入提高、经济基础的夯实，还款也会提高步入正常的还款方式。&lt;/p&gt;\n&lt;p&gt;　　2、等额本金还款法适合收入高人群。&lt;/p&gt;\n&lt;p&gt;　　等额本金还款，借款人可随还贷年份增加逐渐减轻负担。这种还款方式是将本金分摊到每个月中，同时付清上一还款日至本次还款日之间的利息。这种还款方式在同等条件下所偿还的总利息要比等额本息少，随着时间推移，还款负担便会逐渐减轻，但由于利息是递减的，开始几年的月供金额要比等额本息高，压力会很大，所以这种还款方式对于收入高且还款压力不大的人群比较合适。&lt;/p&gt;\n&lt;p&gt;　　3、等额本息还款法适合收入稳定人群。&lt;/p&gt;\n&lt;p&gt;　　等额本息是指，把按揭贷款的本金总额与利息总额相加，然后平均分摊到还款期限的每个月中。作为还款人，每个月还给银行固定金额，但每月还款额中的本金比重逐月递增、利息比重逐月递减。可见对于收入稳定、经济条件不允许前期投入过大的家庭可以选择这种方式。&lt;/p&gt;\n&lt;p&gt;　　4、按季按月还息一次性还本付息法适合从事经营活动人群。&lt;/p&gt;\n&lt;p&gt;　　一次性还本付息，指借款到期日一次性偿还所有贷款利息和本金的还款方法。对于小企业或者个体经营者，可以减轻还款压力。&lt;/p&gt;\n&lt;p&gt;　　5、转按揭。&lt;/p&gt;\n&lt;p&gt;　　转按揭是指由新贷款银行帮助客户找担保公司，还清原贷款银行的钱，然后重新在新贷款行办理贷款。如果你目前所在的银行不能给你7折房贷预期年化利率优惠，就完全可以房贷跳槽，寻找最实惠的银行。由于竞争激烈，一些银行还是相当乐意为你效劳的。&lt;/p&gt;\n&lt;p&gt;　　6、按月调息。&lt;/p&gt;\n&lt;p&gt;　　在目前降息趋势下，市民以前若选择的是房贷固定预期年化利率，那就赶紧转为浮动预期年化利率才划算。不过，“固定”改“浮动”需要支付一定数额的违约金。&lt;/p&gt;\n&lt;p&gt;　　7、双周供省利息。&lt;/p&gt;\n&lt;p&gt;　　双周供缩短了还款周期，比原来按月还款的还款频率高一些，由此产生的便是贷款的本金减少得更快，也就意味着在整个还款期内所归还的贷款利息，将远远小于按月还款时归还的贷款利息，本金减少速度加快。因此，还款的周期被缩短，同时也节省了借款人的总支出。对于工作和收入稳定的人，选择双周供还是很合适的。&lt;/p&gt;\n&lt;p&gt;　　8、提前还贷缩短期限。&lt;/p&gt;\n&lt;p&gt;　　提前还贷之前要算好账，因为不是所有的提前还贷都能省钱。比如，还贷年限已经超过一半，月还款额中本金大于利息，那么提前还款的意义就不大。此外，部分提前还贷后，剩下的贷款市民应选择缩短贷款期限，而不是减少每月还款额。因为，银行收取利息主要是按照贷款金额占据银行的时间成本来计算的，因此选择缩短贷款期限就可以有效减少利息的支出。假如贷款期限缩短后正好能归入更低预期年化利率的期限档次，省息的效果就更明显了。而且，在降息过程中，往往短期贷款预期年化利率下降的幅度更大。&lt;/p&gt;\n&lt;p&gt;　　9、公积金转账还贷。&lt;/p&gt;\n&lt;p&gt;　　在申请购房组合贷款时，一方面尽量用足公积金贷款并尽量延长贷款年限，在享受低预期年化利率好处的同时，最大程度地降低每月公积金的还款额；最大程度地缩短商业贷款年限，在家庭经济可承受范围内尽可能提高每月商业贷款的还款额。&lt;/p&gt;\n&lt;p&gt;　　这样，月还款额的结构中就会呈现公积金份额少、商业份额多的状态。公积金账户在抵充公积金月供后，余额就能抵充商业性贷款，这样节省的利息就很可观。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(53, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499928262, 1499928262, 1499928249, 0, '中小企业办理贷款的攻略介绍', '', '', '', '\n&lt;p&gt;　　对于中小企业来说，想要成功获得银行的贷款审批其实是很困难的。为了解决这个问题，今天小编就来给大家介绍一下中小企业办理贷款的攻略。&lt;/p&gt;\n&lt;p&gt;　　中小企业信用贷款：信用贷款在流程上相对简单，放款也较快，相对的，贷款额度不高。贷款公司和银行对借贷企业的要求不同，通常贷款公司的要求相对要低一些。企业经营情况良好、公司资质足够。信用贷款一般为企业年流水的30%-50%。&lt;/p&gt;\n&lt;p&gt;　　中小企业抵押贷款：顾名思义，抵押贷款就是企业可以将所拥有的房产或土地作为抵押，从银行或者贷款公司得带贷款资金，抵押贷款相对信用贷款来说，贷款额度会相对高一些。&lt;/p&gt;\n&lt;p&gt;　　企业担保贷款/联保贷款：在以上两种贷款都无法进行时，企业可以选择有银行任何第三方提供连带责任的担保，即可申请担保贷款。某些机构也为个体户和小微企业提供联保贷款，有三户以上借款人组成联保小组，相互为联保小组成员的贷款提供连带责任保证。&lt;/p&gt;\n&lt;p&gt;　　通过小编的介绍，相信大家对于中小企业办理贷款的攻略也有了一定的了解了，希望小编的介绍可以给大家带来一些帮助。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(54, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499928288, 1499928288, 1499928269, 0, '必须掌握的9个房贷小技巧', '', '', '', '\n&lt;p&gt;　　对于房贷一族来说，选择合适的还贷方式，就能实打实的省下不少钱。另外，选择合适的银行也能让你得到相当大的实惠。&lt;/p&gt;\n&lt;p&gt;　　1、分阶段性还款法适合年轻人。&lt;/p&gt;\n&lt;p&gt;　　由于年轻人、大学生刚参加工作，手头资金紧张，所以这种还款方式就允许客户有3-5年宽限期，开始还款每月只要几百元，过了5年后，随着收入提高、经济基础的夯实，还款也会提高步入正常的还款方式。&lt;/p&gt;\n&lt;p&gt;　　2、等额本金还款法适合收入高人群。&lt;/p&gt;\n&lt;p&gt;　　等额本金还款，借款人可随还贷年份增加逐渐减轻负担。这种还款方式是将本金分摊到每个月中，同时付清上一还款日至本次还款日之间的利息。这种还款方式在同等条件下所偿还的总利息要比等额本息少，随着时间推移，还款负担便会逐渐减轻，但由于利息是递减的，开始几年的月供金额要比等额本息高，压力会很大，所以这种还款方式对于收入高且还款压力不大的人群比较合适。&lt;/p&gt;\n&lt;p&gt;　　3、等额本息还款法适合收入稳定人群。&lt;/p&gt;\n&lt;p&gt;　　等额本息是指，把按揭贷款的本金总额与利息总额相加，然后平均分摊到还款期限的每个月中。作为还款人，每个月还给银行固定金额，但每月还款额中的本金比重逐月递增、利息比重逐月递减。可见对于收入稳定、经济条件不允许前期投入过大的家庭可以选择这种方式。&lt;/p&gt;\n&lt;p&gt;　　4、按季按月还息一次性还本付息法适合从事经营活动人群。&lt;/p&gt;\n&lt;p&gt;　　一次性还本付息，指借款到期日一次性偿还所有贷款利息和本金的还款方法。对于小企业或者个体经营者，可以减轻还款压力。&lt;/p&gt;\n&lt;p&gt;　　5、转按揭。&lt;/p&gt;\n&lt;p&gt;　　转按揭是指由新贷款银行帮助客户找担保公司，还清原贷款银行的钱，然后重新在新贷款行办理贷款。如果你目前所在的银行不能给你7折房贷预期年化利率优惠，就完全可以房贷跳槽，寻找最实惠的银行。由于竞争激烈，一些银行还是相当乐意为你效劳的。&lt;/p&gt;\n&lt;p&gt;　　6、按月调息。&lt;/p&gt;\n&lt;p&gt;　　在目前降息趋势下，市民以前若选择的是房贷固定预期年化利率，那就赶紧转为浮动预期年化利率才划算。不过，“固定”改“浮动”需要支付一定数额的违约金。&lt;/p&gt;\n&lt;p&gt;　　7、双周供省利息。&lt;/p&gt;\n&lt;p&gt;　　双周供缩短了还款周期，比原来按月还款的还款频率高一些，由此产生的便是贷款的本金减少得更快，也就意味着在整个还款期内所归还的抵押贷款利息，将远远小于按月还款时归还的贷款利息，本金减少速度加快。因此，还款的周期被缩短，同时也节省了借款人的总支出。对于工作和收入稳定的人，选择双周供还是很合适的。&lt;/p&gt;\n&lt;p&gt;　　8、提前还贷缩短期限。&lt;/p&gt;\n&lt;p&gt;　　提前还贷之前要算好账，因为不是所有的提前还贷都能省钱。比如，还贷年限已经超过一半，月还款额中本金大于利息，那么提前还款的意义就不大。此外，部分提前还贷后，剩下的贷款市民应选择缩短贷款期限，而不是减少每月还款额。因为，银行收取利息主要是按照贷款金额占据银行的时间成本来计算的，因此选择缩短贷款期限就可以有效减少利息的支出。假如贷款期限缩短后正好能归入更低预期年化利率的期限档次，省息的效果就更明显了。而且，在降息过程中，往往短期贷款预期年化利率下降的幅度更大。&lt;/p&gt;\n&lt;p&gt;　　9、公积金转账还贷。&lt;/p&gt;\n&lt;p&gt;　　在申请购房组合贷款时，一方面尽量用足公积金贷款并尽量延长贷款年限，在享受低预期年化利率好处的同时，最大程度地降低每月公积金的还款额;最大程度地缩短商业贷款年限，在家庭经济可承受范围内尽可能提高每月商业贷款的还款额。&lt;/p&gt;\n&lt;p&gt;　　这样，月还款额的结构中就会呈现公积金份额少、商业份额多的状态。公积金账户在抵充公积金月供后，余额就能抵充商业性贷款，这样节省的利息就很可观。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(55, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499928368, 1499928368, 1499928351, 0, '五个小技巧教你如何贷款省钱', '', '', '', '\n&lt;p&gt;　　在申请购房组合贷款时，一方面尽量用足公积金贷款并尽量延长贷款年限，在享受低预期年化利率好处的同时，最大程度地降低每月公积金的还款额;最大程度地缩短商业贷款年限，在家庭经济可承受范围内尽可能提高每月商业贷款的还款额。&lt;/p&gt;\n&lt;p&gt;　　五个小技巧分别是：房贷跳槽、按月调息、双周供省利息、提前还贷缩短期限、公积金转账还贷，这样节省的利息就很可观。&lt;/p&gt;\n&lt;p&gt;　　申请房贷时银行会查什么?哪些人容易被拒绝&lt;/p&gt;\n&lt;p&gt;　　银行会先对申请人调查。申请人的身份证和户口，如果用户成员和直系亲属参与借款，银行也要检查身份证和户口本。如果配偶不在同一户口内参与借款，还需提供结婚证。申请人如果要求公积金借款，要提供按时交纳公积金的证明。对申请人的调查，最重要的是申请人是否具有经济偿还能力。&lt;/p&gt;\n&lt;p&gt;　　在确定贷款年限时，有时还要考虑到工作年限，如果到法定退休年限还有5年，而申请公积金贷款的年限是10年，那么银行批准的可能性不大。对申请人的调查，还包括与房产商签定的购房合同或协议，并要有购房交款证明。其次是对房产商的调查。&lt;/p&gt;\n&lt;p&gt;　　申请房贷的条件和需提供的资料&lt;/p&gt;\n&lt;p&gt;　　申请房贷需要满足条件主要有以下几点：&lt;/p&gt;\n&lt;p&gt;　　1. 在贷款银行所在地有固定住所、有常住户口或有效居住证明、年龄在65周岁(含)以下、具有完全民事行为能力的中国公民;&lt;/p&gt;\n&lt;p&gt;　　2. 有正当职业和稳定的收入，具有按期偿还贷款本息的能力;&lt;/p&gt;\n&lt;p&gt;　　3. 具有良好的信用记录和还款意愿，无不良信用记录;&lt;/p&gt;\n&lt;p&gt;　　4. 能提供银行认可的合法、有效、可靠的担保;&lt;/p&gt;\n&lt;p&gt;　　5. 有明确的贷款用途，且贷款用途符合相关规定;&lt;/p&gt;\n&lt;p&gt;　　6. 在银行开立个人结算账户;&lt;/p&gt;\n&lt;p&gt;　　7. 银行规定的其他条件。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(56, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499928393, 1499928393, 1499928378, 0, '别被套了贷款买车四大技巧', '', '', '', '\n&lt;p&gt;　　说到汽车贷款，很多人第一时间想到了银行贷款，其实除了银行贷款外，用户还能选择银行信用卡和汽车金融公司两种贷款方式。不管那种贷款方式，以下三点是贷款买车一族必须要留心的。&lt;/p&gt;\n&lt;p&gt;　　确定意向车型&lt;/p&gt;\n&lt;p&gt;　　既然觉得贷款买车，肯定要先选好车型，并在签订合同之前详细向经销商及金融机构了解该款车型的贷款细则，看是否完全属于可贷款人群，否则后期要想追回定金会很麻烦。&lt;/p&gt;\n&lt;p&gt;　　是否真划算&lt;/p&gt;\n&lt;p&gt;　　有些优惠预期年化利率贷款时，消费者必须按照指导价购车，且必须在车行购买保险、挂牌，加上购车还需支付一定额度的手续费，不同经销商、不同银行，手续费的收取差异较大，算下来也并不一定合适。&lt;/p&gt;\n&lt;p&gt;　　房产可抵押&lt;/p&gt;\n&lt;p&gt;　　房产抵押购车贷款以房产作为抵押形式，用高价值抵押物降低了银行的贷款风险，所以贷款者往往可以获得较低的贷款预期年化利率。同时房产抵押贷款买车还有长期限的优势，相对传统无抵押按揭购车贷款更能降低贷款买车一族的月供支出。&lt;/p&gt;\n&lt;p&gt;　　看清合同条款&lt;/p&gt;\n&lt;p&gt;　　在签订合同的时候也要注意贷款中的附加条款是否有“贷款未通过，合同终止”这一项，否则一旦若贷款不成，会造成财产上的亏损。贷款购车意味着你在贷款还完前，车子是抵押给贷款机构的，为降低风险，一般会要求消费者必须购买一些车险作为贷款的条件，在申请贷款时必须要认真阅读相关的保险条款，千万别小看了这笔开支。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(57, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499928429, 1499928429, 1499928397, 0, '教你三招公积金贷款省钱技巧', '', '', '', '\n&lt;p&gt;　　在国内，住房公积金已经成为许多人购房减负的重要渠道。不过，办理公积金贷款其实也有省钱窍门的。&lt;/p&gt;\n&lt;p&gt;　　要选定合适的还款方式&lt;/p&gt;\n&lt;p&gt;　　目前基本上有两种个人住房贷款还款方式：一种是等额本息还款方式，另一种是等额本金还款方式。等额本息还款方式的优点在于，借款人可以准确掌握每月的还款额，有计划地安排家庭的收支。而等额本金还款方式较适合于还款初期还款能力较强、并希望在还款初期归还较大款项以此减少利息支出的个人。&lt;/p&gt;\n&lt;p&gt;　　申请贷款前不要动用公积金&lt;/p&gt;\n&lt;p&gt;　　一方面国内不少城市有规定，如果申请人在购房前提取过公积金，那么在再申请时就会被当做二套房。另一方面，如果借款人在贷款前提取公积金储存余额用于支付房款，那么公积金账户上的公积金余额即为零，这样公积金贷款额度也就为零，这就意味着您将申请不到公积金贷款。&lt;/p&gt;\n&lt;p&gt;　　提前还贷缩短期限&lt;/p&gt;\n&lt;p&gt;　　在经济情况良好的情况下，选择提前还房贷是许多人的想法。一般来说，银行会根据央行预期年化利率调整而进行贷款预期年化利率的调整。提前还贷的好处就是省了很多利息钱。&lt;/p&gt;\n&lt;p&gt;　　最后，对于那些已经申请了商业贷款的购房者来说，把商贷转为公积金贷款也是个很重要的省钱方式。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(58, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499928453, 1499928453, 1499928442, 0, '房子你该怎么选？户型选择必知小技巧', '', '', '', '\n&lt;p&gt;　　近期楼市供需两旺推升成交量持续攀升，标杆房企也一改近年来拿地逐步向三、四线城市倾斜的趋势，在一、二线城市掀起了新一轮拿地高潮。新一轮房价上涨势头已经成形。对于有心买房的人来说，现在是政策调控前买房的最佳时机。买房子涉及到户型，而选择户型最关键的是你的生活需求。&lt;/p&gt;\n&lt;p&gt;　　居室选择&lt;/p&gt;\n&lt;p&gt;　　暂时没有结婚对象的个人买房最好选择一居或小两居，这样实用而且经济压力小，即使有富余资金，也可以再买一套房用于投资。&lt;/p&gt;\n&lt;p&gt;　　两口之家的年轻人买房最好选择两居，如果经济条件较差，也可以选择大一居。这样，两个人足够居住，将来有了孩子，一段时间之内也不必换房。这种房子也比较好转手，将来也比较好调整。&lt;/p&gt;\n&lt;p&gt;　　三口之家最好选择三居，因为孩子需要有独立居室，而且一般还需要有人照料孩子，同时三口之家很多都需要照料老人，要考虑老人来家居住。三居室的调整性能相对要差一些，但三口之家买房一般要考虑居住的长期性，尽量是一步到位比较经济。&lt;/p&gt;\n&lt;p&gt;　　功能配置&lt;/p&gt;\n&lt;p&gt;　　确定居室之后就是考虑各个功能的房间配置是否合理。好的户型设计一般应做到以下几点：&lt;/p&gt;\n&lt;p&gt;　　1.“动静”分区。动区是指活动比较多的区域，包括客厅(起居厅)、厨房、餐厅，其中餐厅和厨房应该联系紧密并靠近住宅入口。静区包括主卧室、书房、儿童卧室等，私密性较强。如果有双卫生间，带洗浴设备的卫生间应该靠近主卧室，或者与主卧室内部连通，另一个则应该与动区相连。&lt;/p&gt;\n&lt;p&gt;　　2.客厅(起居厅)应该开敞、明亮，面积最小不要小于14平方米，三口之家25平方米较为合适，太大也不合适，经济上不合理，而且过大容易失去温馨感、亲和感。还要注意客厅的宽度一般应在3.3米以上较为适宜，至少也应满足3.3米。客厅最好与阳台相连，有比较好的视野，能够看到户外景观，能够引进自然光，阳光照在沙发上的感觉会很好，客厅内的开门也不宜过多，否则不好摆放家具。总之，客厅是一套房子的门面，也是休闲、娱乐、团聚的地方。&lt;/p&gt;\n&lt;p&gt;　　3.卧室应该注重私密性，与动区避免相互干扰，主卧室面积不应小于12平方米，16平方米较为合适。三居以上最好有单独与主卧室相连的卫生间。其他卧室的面积可以适当小一些，经济上比较合理，卧室之间尽量相对独立，否则生活会非常不便。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(59, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499928481, 1499928481, 1499928464, 0, '仅对p2p理财投资人的几点建议', '', '', '', '\n&lt;p&gt;　　对于p2p理财的建议是个老生常谈的话题了，之所以如此频繁的给大家灌输如何防范p2p理财知识，其目的就是让各位投资人在选择p2p理财平台的时候能够谨慎。由于行业中总会出现一些不合规的平台存在，其大大影响了整个行业的口碑以及形象。同时，让更多正在力求发展的规范p2p理财平台备受制约。有些投资人宁可去相信超高预期年化收益的劣质平台也不愿意去了解一下那些打稳健派的优质平台。这是业界的悲哀，也是众多投资人上当受骗的重要原因之一。&lt;/p&gt;\n&lt;p&gt;　　对于p2p理财而言，小编实在是不想在例举一二三来开导投资人该如何投资了。因为在小油菜历理财的攻略频道有太多类似的文章了，对此，小编今天只想和大家一起分享下对于我身在这个行业中，给众多投资人的一些p2p理财的建议。希望能够成为你避免上当受骗的警钟。&lt;/p&gt;\n&lt;p&gt;　　对于p2p理财，我建议不要拿出超过你本人资产的10%来尝试，这样风险可控。除非你了解这家公司更多信息，或者政策对这个行业开始监管。本质上，p2p是代表互联网先进模式的理财和贷款方向，因为去除了不必要的中介渠道和中介成本，自然有更多的预期年化利率可以返回给贷款人和理财人两方。而且把你的1万块贷给100个人又降低了你的风险，换句话来说5个人不还款，你还有95%的人还款加利息。&lt;/p&gt;\n&lt;p&gt;　　小编总是说，无论做什么样的理财方式，都要摆正心态。不能太过于贪婪。诈骗的手段是无所不用其极。只要是能够吸引你的，他们都会想到。所以不要总想着比别人聪明。被骗的往往是贪图利益，绝得自己天资聪颖的人。&lt;/p&gt;\n&lt;p&gt;　　对于平台的选择，审核必须是最先要做到的，公司信息是否透明、标的是否透明、模式是否合规、金融经验是否丰富等等，都是投资人最应该注意的。预期年化收益越高风险越大，虽然有些时候人们投资预期年化收益高的标的确确实实能够得到非常丰厚的回报，但是谁能肯定这事个诱饵？所以稳健是最重要的，毕竟我们不是靠着理财来生活。理财只是让生活更加富足的一个辅助习惯而已！仅此而已！&lt;/p&gt;\n&lt;p&gt;　　如果对于一个平台的审核工作你都懒得去做，那么建议你还是把钱存到银行，老老实实的去吃利息吧。因为天底下至今除了银行之外，没有更保险的理财了。小编作为p2p理财行业内人士，本不该说这些话，但是本着小油菜宗旨的目的，这些是必须要告诫投资人的，详细原因我在上一篇已经提到。忠言逆耳，喜不喜欢全都在你了。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(60, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499928505, 1499928505, 1499928491, 0, '非法P2P理财平台的4大隐患', '', '', '', '\n&lt;p&gt;　　对于近两年的p2p理财行业高速发展为互联网金融以及中国的金融市场诸如了新鲜血液.很多投资者也在p2p理财市场中获利颇丰.但是对于那些不正规的p2p理财平台,也导致很多投资人经济受损.很多不正规的p2p理财平台通过高收益或者各种许诺好处吸引投资者,从而导致投资人上当受骗.那么不正规p2p理财平台都有哪些弊端呢?今天就让我们来分解下.&lt;/p&gt;\n&lt;p&gt;　　1. 用户信息风险:&lt;/p&gt;\n&lt;p&gt;　　首先不正规p2p理财平台会套取用户的个人信息.其中包括个人电话,qq号码,身份证号,银行卡号等重要信息泄露.这些信息被不法分子掌握后很容易产生问题,轻则受到骚扰,重则直接产生经济损失.在提供信息之前需要充分审核平台信息,看看有无icp认证,还有注册公司五证也需要详细调查.&lt;/p&gt;\n&lt;p&gt;　　2. 平台自身安全性:&lt;/p&gt;\n&lt;p&gt;　　其次不正规p2p理财平台的网站安全性不够,如果用户充值进去后,网站的安全性得不到保障或者安全功能不够完善的话,如果碰到账号被盗或者网站被黑客攻击导致数据泄露等问题很容易使用户受到经济损失.所以选择平台需要严格检查平台自身安全性是否过关,有无第三方安全权威认证等信息.&lt;/p&gt;\n&lt;p&gt;　　3. 第三方支付平台:&lt;/p&gt;\n&lt;p&gt;　　目前市面上有很多p2p理财平台没有与正规的第三方支付平台进行合作.第三方支付平台可以很好地保障资金的安全性以及资金流向.避免平台自己拿到投资人的资金去做其他用途.所以投资人在选择平台时要优先选择与第三方支付平台合作的p2p理财平台.&lt;/p&gt;\n&lt;p&gt;　　4. 监管自律熟视无睹:&lt;/p&gt;\n&lt;p&gt;　　不正规的p2p理财平台对于现在行业的自律以及即将出台的监管体系抱着熟视无睹的态度.其在意的只有能来多少投资人,自己可以收到多少投资额来支持自己进行其他不正当用途.通常这类平台典型现象就是平台用户体验及产品极差,只会许给投资用户很高的收益来吸引目光.当等到资金达到一定数额后马上跑路!&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(61, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499928536, 1499928536, 1499928524, 0, '90后学会理财的基本思路', '', '', '', '\n&lt;p&gt;　　90后现在已经步入职场，而如今的经济社会中，没有经过历练的90后大多都是“月光族”极少有家庭责任感，而且在众多的90后白领中不难发现，他们长期属于“缺 钱”状态，不是挣得不够，而是经常挣一个花两个，而且即便是有剩余的闲钱也是扔到卡中等待刷去，不过也有一些90后已经发现了理财给自己带来的效益，所以跻身于理财的大军中，凡是这些人你会发现，他们的经济大多都整理的有条不紊。所以还没有进行理财的90后们是时候关注这一点了。为大家整理了一下基本的理财思路，希望有所收获。&lt;/p&gt;\n&lt;p&gt;　　网络理财基本思路：&lt;/p&gt;\n&lt;p&gt;　　一：从攒钱开始&lt;/p&gt;\n&lt;p&gt;　　作为新时代的新青年，你知道金钱的作用吗？钱对于我们来说最大的作用就是用来应对生活中的不时之需，作为一名刚刚接触理财的新人，最重要的理财方法之一就是树立攒钱意识，也许你会不屑一顾，但是别忘了，作为一个百万富翁，一定是先有了1元钱，后有的999999元，所以，攒钱是理财的重要前提。&lt;/p&gt;\n&lt;p&gt;　　二：选择适合自己的投资项目，确定自身的风险承受能力&lt;/p&gt;\n&lt;p&gt;　　在你完成了第一步之后，你就有了原始的的资本积累，这个时候你就根据自己的风险承受能力平衡好风险与预期年化收益的关系。如果你想要追求稳定的预期年化收益，可以投资一些货币基金。这些货币基金的年预期年化收益率一般都在±3%以上，它具有流动性强，预期年化收益稳定，风险较低的优点，最主要的是投资起点很低，现在有些基金100元即可投资，还支持快速赎回，如果急需用钱，5分钟之内即可提现到银行卡，使用非常方便。&lt;/p&gt;\n&lt;p&gt;　　三：省钱也是一种理财 在购物时分清“想要”和“需要”，为了避免计划外支出，建议大家可以采取“照方抓药”的方式进行购物，每次购物前提前列好购物清单，在购物时只买自己清单上有的东西，对于清单上没有的东西一律视而不见，这样一来既省时又省钱，何乐而不为呢？四：尽量少使用信用卡&lt;/p&gt;\n&lt;p&gt;　　虽说，信用卡是我们在投资理财过程中一个重要的伙伴，它具有积分换礼，刷卡享受免息期等优点；但是，作为理财新人，我建议大家如果不是确有需要，还是谨慎办卡较好。&lt;/p&gt;\n&lt;p&gt;　　信用卡消费属于无感觉消费，在用卡购物时中很容易导致过度消费的不良后果，一旦过度消费就会给自己带来沉重的经济负担，如果还款不及时除了需要支付利息外还可能留下不良的信用记录，对今后的贷款产生不利影响。 学会以上四点，无异于在你的理财生涯上有一个全新的开始。不光90后，很多人的理财思路基本也就是以上几点，如何制定自己的理财计划，就是要在以上的几点上加以扩充，拓展，从而实现高效理财。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(62, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499928557, 1499928557, 1499928544, 0, '如何让p2p投资变的更安全', '', '', '', '\n&lt;p&gt;　　只要是懂行的投资人都应该十分清楚的是，任何投资都是必然带有风险的，如今很多人想找那些百分之百本息保障的，我可以告诉你，标语上可以，但实际上是不可能做到百分之百的。所以说投资人在进行投资的时候心态一定要摆正，天下没有免费的午餐，你不去了解、不去学习对于投资理财而言，对于你未来的投资必定会充满危机。&lt;/p&gt;\n&lt;p&gt;　　学会分散风险，是每一位理财人或投资人必须要学会的，尤其目前人们越来越多的开始关注互联网金融，以p2p理财行业为代表，不说别的，就15%的年华收益足以秒杀任何一款传统理财产品。尽管如今市场上一些可靠的p2p理财平台都拥有抵押、担保等安全措施，但是毕竟互联网金融才刚刚崛起，所以对于投资人来说，你想要进行的投资没有安全，只有更安全。下面就随笔者学习一下，如何做到让p2p理财的投资更安全。&lt;/p&gt;\n&lt;p&gt;　　no.1 适当的分散投资&lt;/p&gt;\n&lt;p&gt;　　为什么说适当的分散投资呢，就是说如果你的一笔闲置资金本就不多，分成几份后只剩下几百元，如果你这个时候进行分散的话，很可能收益还不够给平台各种管理费体现费呢。这里最重要的是做分散投资时，要把资金分散到不同的平台、不同的周期标的、甚至不同的模式都是可以的。&lt;/p&gt;\n&lt;p&gt;　　no.2 学会收集信息，仔细评估平台风险&lt;/p&gt;\n&lt;p&gt;　　仔细评估其风险，从而选择适合自身的平台。投资者最忌讳的就是盲目追求高收益，而忽略其后的风险。同时投资者应该将各种管理费用计算到成本中，从而更准确地计算收益。投资者要仔细阅读相关权益保障与免责条款，从而为维权奠定基础。&lt;/p&gt;\n&lt;p&gt;　　no.3 认真寻逛第三方平台&lt;/p&gt;\n&lt;p&gt;　　p2p行业的第三方平台一般是站在最中立的角度来分析一个平台的好坏，当然，一个比较靠谱儿的p2p理财平台是一定会在第三方有所体现的，如果一个比较知名的第三方平台上都找不到你想要投资的p2p理财平台，那么其资质你就可以想象了，另外，第三方平台会为投资人们展示一个平台的动态以及运营状况，有的甚至还附有考察报告等。所以作为一个免费的参考，对投资人可以起到一个非常好的作用。&lt;/p&gt;\n&lt;p&gt;　　no.4 投资人应互相学习及帮助&lt;/p&gt;\n&lt;p&gt;　　对于目前无监管的p2p理财平台来说，市场上是布满荆棘的，对于这个行业来说，谁都是摸着石头过河，所以说投资人之间的知识互补可以有效的少走弯路，或是避免踩雷。并且，即便发生风险之后，在维权的时候也能采取统一的行动吸引关注。&lt;/p&gt;\n&lt;p&gt;　　经常理财的人都会在网上看一些理财攻略或是技巧等知识，以便在p2p理财中如鱼得水。有些人则是典型的视觉动物，总被一些冒牌平台的高保障高收益迷的晕头转向，如果你真的像不承担任何风险就想赚钱的话，把钱存银行好了。相比较而言就可以看出，无论是理财还是其他行业，知识储备是必要的。多看攻略，多了解行业知识，是你进行投资理财最强大的后盾。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(63, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499928583, 1499928583, 1499928572, 0, 'P2P理财收益率为什么相差这么大?', '', '', '', '\n&lt;p&gt;　　对于大多数投资p2p理财产品的投资人来说,p2p理财产品对于其最大的吸引力可能就是产品有很高预期年化收益率.对于cpi快速增长的今天,把钱存在银行等地方注定是白白浪费自己的劳动成果.p2p理财凭借其比常规理财产品高很多的预期年化收益迅速吸引了大量投资用户的关注.&lt;/p&gt;\n&lt;p&gt;　　但是对于p2p理财行业的预期年化收益率,很多投资用户都表示过困惑.为什么不同平台之间相差会这么大?有的平台预期年化收益率可以到达每个月20%甚至更好,而有些平台的预期年化收益率只有10%左右.对于一个行业来说,同种产品的预期年化收益率为什么会差这么多呢?今天小编就为大家解析一下p2p理财预期年化收益率为什么相差这么大.&lt;/p&gt;\n&lt;p&gt;　　首先我们要说说那些高预期年化收益的p2p理财产品.刨去有些骗子平台对投资人以预期年化收益来吸引投资人从而进行资金诈骗的不实高预期年化收益.一般20%以上预期年化收益的p2p理财产品基本都为信贷产品.信贷产品的特点就是借款人在平台直接发布借款需求,同时自己选择自己的借息率.如果借款人想更快的借到款,当然预期年化利率是越高投资人越喜欢.但是信贷产品的缺陷就赤裸裸的摆放在那里,信贷模式的借款方一般都是个人借款者.对于投资人来说要承担相当程度的风险.其中包括借款人到期无法还钱,借款人由于是个人导致跑路赖账等更加容易.正应了那句理财名言”高预期年化收益伴随高风险”.&lt;/p&gt;\n&lt;p&gt;　　对于10%左右的p2p理财产品,其基本都是债权转让模式.债权转让模式都是借款方先向小贷公司或者其他金融企业已经完成了借贷关系,再由小贷公司或金融企业对借款方的债权通过p2p理财平台转让给投资人.债权转让模式的预期年化收益率虽然没有信贷模式高,但是胜在其安全性有充分的保障.首先小贷公司/金融企业在进款前一定会对借款方进行认真细致的风审,从而确保借款方有足够的偿还能力及偿还意愿.而且对于债权转让模式是受到法律保护的借贷关系.如果借款方真的不能偿还借款,先会通过借款方的抵押物进行代偿,如果还不能够偿还给投资人,也可以通过诉讼程序要求法院进行强制执行,对借款方的固定资产进行拍卖来偿还给投资人.&lt;/p&gt;\n&lt;p&gt;　　相信经过分析,投资人对于p2p理财行业的预期年化收益率的巨大差距会有一个大概的认识.不同类型的投资人还需要针对自己的理财需求可以选择不同的理财产品!&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(64, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499928604, 1499928604, 1499928594, 0, '浅析p2p理财平台的品牌建立', '', '', '', '\n&lt;p&gt;　　目前来说，对于p2p理财这个行业而言，大部分的平台谈打造品牌还为时过早，毕竟根据现在的环境来说，这个行业的存在还是有着不小的争议的，不过随着监管政策越来越明朗，相信再过不久，p2p理财这个行业会有一些稳定的沉淀，不过就现在的形式来看，大部分的p2p理财平台在行业中还不能建立起最基本的信任，所以没有信任的基础谈品牌就是在扯淡。&lt;/p&gt;\n&lt;p&gt;　　重点来了，建立品牌首先要做的就是建立品牌的信任！而建立品牌的信任就是：一、当前的信任，二、今后的信任！&lt;/p&gt;\n&lt;p&gt;　　当前的信任就是p2p理财平台要做到诚信第一的原则，例如标的透明、企业资质透明、合作企业透明、借款需求透明、管理团队透明等等。诚信的建立不仅能够给用户带来信任的感觉，同时也是企业实力的展现。当前平台的实力并不代表以后，目前p2p理财界中的大佬们注册资本都不大，却经过多年的发展依然获取了强大的品牌信任度。所以这是和资金、背景关联不大的。&lt;/p&gt;\n&lt;p&gt;　　一个平台在投资者有多少品牌价值，最好的检验是他们的投资者愿不愿意投长标。有些平台表面红火，但半年的标投资者都在犹豫是否投。有些平台几年的标，预期年化利率比人家半年度低很多，却很快满。我想这些我不举例大家也能看的到，所以说品牌是无形资产啊！&lt;/p&gt;\n&lt;p&gt;　　建立品牌，平台自身形象尤为重要&lt;/p&gt;\n&lt;p&gt;　　对于平台自身的形象来说，除了页面、产品、用户体验这表面的东西之外，要从思想及细节中来进行分析，首先就是对用户来说，不要把投资者看成是消费者；其次是对于p2p理财市场而言，过度的倾向于通过接触界能获取商业回报；最后就是在面对诸多用户的诸多质疑，以及面对媒体的负面报道的公关解决能力。&lt;/p&gt;\n&lt;p&gt;　　一个平台无论是从推广渠道还是客服销售，都不要让投资者发现一些弱智问题，并且平台市场要出现令人惊讶的表现。做品牌不是靠骗靠说。浮躁是做不了品牌的。p2p平台一定要制定自己发展的逻辑架构，所谓的战略也不熟今天这个好就尝试、明天那个好就试试。而是要基于当前的市场以及平台运营团队的能力来制定长期而合理的规划。这与平台领导的判断。洞察以及决策能力密不可分的，只看眼前永远做不成大事。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(65, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499928625, 1499928625, 1499928613, 0, '解读p2p理财发展的几个阶段', '', '', '', '\n&lt;p&gt;　　近两年来，由于余额宝的兴起导致越来越多的人开始关注互联网金融，而这也给p2p理财行业带来浮出水面的契机。说到p2p理财，很多人都是在这一两年有所耳闻，但是实际上，自07年起p2p理财行业就已经在我国开始发展了，但是当时的互联网普遍被大众当成娱乐的工具，以至于没有多少人去愿意关注互联网金融行业。一直埋没至今。&lt;/p&gt;\n&lt;p&gt;　　那么，在p2p理财行业在中国长达7年中前六年基本都是不温不火的状态，那么在之前的六年里p2p理财行业靠什么过活？还是一直在酝酿着什么？在我看来，p2p理财行业一直是在发展，只不过是成阶段性发展而已，每个阶段行业都要面临市场中不同的考验。今天就随笔者来看看从07年一路走来，p2p理财都经历了哪些发展阶段。&lt;/p&gt;\n&lt;p&gt;　　首先是07年到12年期间的以信用借贷为主的发展萌芽阶段&lt;/p&gt;\n&lt;p&gt;　　在上海，国内首家p2p理财平台上线，对于这种新型的理财方式，很少人愿意去尝试，仅有一小部分人进行了小额投资的试水。这一阶段整个中国的p2p理财平台才20家，而活跃的还不到十家，一直到2011年年底，月成交金额达到了5亿左右，真正实现有效投资的人还不足一万。&lt;/p&gt;\n&lt;p&gt;　　由于没有民间借贷相关经验，那时候的p2p理财通常是公民的信用体系进行审核，而那时我国的信用体系并不健全，到2011年底我国的p2p理财行业出现了第一波违约风险，诸多平台逾期超过一千万不过庆幸的是，那时候跑路的平台几乎没有&lt;/p&gt;\n&lt;p&gt;　　第二是12年到13年这一念间以地域借款的快速扩张&lt;/p&gt;\n&lt;p&gt;　　这一阶段，网络借贷平台开始发生变化，一些具有民间线下放贷经验同时又关注网络的创业者开始尝试开设p2p网络借贷平台。同时，一些软件开发公司开始开发相对成熟的网络平台模板，每套模板售价在3到8万左右，弥补了这些具有民间线下放贷经验的创业者开办网络借贷平台技术上的欠缺。基于以上条件，此时开办一个平台成本大约在20万左右，国内网络借贷平台从20家左右迅速增加到240家左右，截止2012年底月成交金额达到30亿元，有效投资人在2.5到4万人之间。&lt;/p&gt;\n&lt;p&gt;　　第三是去年一年为p2p理财平台告诉发展期&lt;/p&gt;\n&lt;p&gt;　　这一阶段，网络借贷系统模板的开发更加成熟，甚至在淘宝店花几百元就可以买到前期的网络借贷平台模板。由于2013年国内各大银行开始收缩贷款，很多不能从银行贷款的企业或者在民间有高额高利贷借款的投机者从p2p网络借贷平台上看到了商机，他们花费10万左右购买网络借贷系统模板，然后租个办公室简单进行装修就开始上线圈钱。这阶段国内网络借贷平台从240家左右猛增至600家左右，2013年底月成交金额在110亿左右，有效投资人9到13万人之间。&lt;/p&gt;\n&lt;p&gt;　　最后，今年的p2p理财行业发展主要是以监管为主的调整期&lt;/p&gt;\n&lt;p&gt;　　对于p2p理财发展至今遭遇了无数的非议与质疑，知道今年开始，政府鼓励互联网创新态度转变，p2p理财行业终于被纳入监管，这意味着p2p理财即将被规范化，哪些质疑与非议终将破灭，政策的大好趋势引来更多的人开始关注这个行业，包括一些金融巨头和电商，都在准备涉足这一行业分得一杯羹，据统计从14年开始至今，全国的p2p理财平台每月的成交额已经超过了160亿，并且平台数量更是攀升至1300家。&lt;/p&gt;\n&lt;p&gt;　　如今的p2p理财行业已初具规模，等待它的则是更加规范化的跻身于互联网金融行业，待到政策落实，预计15年的交易金额将突破千亿级，那时候p2p理财才是真正的崛起。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(66, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499928644, 1499928644, 1499928634, 0, 'P2P理财第三方托管真假难辨', '', '', '', '\n&lt;p&gt;　　目前p2p理财行业监管的即将推出,很多监管细则也开始相继曝光.其中有一天最为重要的就是平台不得设立资金池,不得做非法集资.同时为了尽量减少p2p理财行业的跑路情况,监管细则中特意标明p2p理财平台必须进行第三方资金托管.所谓第三方托管是什么意思呢?&lt;/p&gt;\n&lt;p&gt;　　通常意义上来说,p2p理财平台的第三方托管指的就是投资人在平台进行投资.资金会转入到第三方托管平台的投资人账户中.p2p平台与托管平台对于资金都无权调用.所以可以保证投资人的资金流向绝对安全.&lt;/p&gt;\n&lt;p&gt;　　如果无托管情况下,投资资金会直接汇入平台自身账户,同时平台对账户中的资金有着支配权.这就会违反上面监管细则中提出的不得设立资金池与平台不得进行非法集资.同时平台直接对资金有支配权的情况下,如果平台选择跑路那么投资人所面临的就是血本无归.&lt;/p&gt;\n&lt;p&gt;　　现在也有很多平台为了让投资人认为自己平台有第三方托管机构而故意从概念上对投资人进行混淆.其中最普遍的就是在第三方支付和第三方托管之间的故意混淆最为严重.很多平台都错把第三方支付=第三方托管的概念对投资人进行混淆.使得投资人以为平台与第三方支付平台进行合作后其就无法对投资资金有支配权.第三方支付指的是平台与第三方支付平台进行合作,通过第三方支付平台令资金流入到平台账号.其对资金还是有着支配权.投资人一定要谨记!&lt;/p&gt;\n&lt;p&gt;　　有一种方法很容易就能让投资人对p2p理财平台是否有第三方托管进行辨识.通常真正有第三方托管的平台在投资人进行投资时,都会有一个属于自己的第三方托管平台账号.也就是你资金的流入账号.如果平台只说开通了第三方托管,但是你无法查看你的第三方托管账号那么就可能说明这个其实并没有进行资金托管.&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(67, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499928669, 1499928669, 1499928653, 0, 'P2P理财资金托管有什么好处?', '', '', '', '\n&lt;p&gt;　　对于目前的p2p理财行业来说,最让投资人关心的当属资金安全.在行业如此纷乱的境况下,资金安全成为了每个平台必须要给投资人的承诺,也成为了众多平台的必争之地.目前保障投资人资金安全的各种手段层出不穷.人们最多讨论的可能都是关于风控方面的安全信息.但是如果只有风控过关就能保障投资人的资金安全吗?&lt;/p&gt;\n&lt;p&gt;　　跑路不断&lt;/p&gt;\n&lt;p&gt;　　对于跑路问题可谓是投资人最最惧怕的.辛辛苦苦的挣钱,到左后只为别人徒添嫁衣.就拿最近号称p2p理财非法集资第第一案的东方创投事件来说.其在融资了1.26亿后选择跑路.最后被抓捕后前前后后只偿还给投资人9000多万.剩下的2700余万元的去向就不明了.最后判处了东方创投法人3年有期徒刑.这个判决结果让很多人产生质疑”3年就能赚2700万?有这好事儿我也去!”这无疑更加壮大了跑路平台的底气!&lt;/p&gt;\n&lt;p&gt;　　为什么跑路?&lt;/p&gt;\n&lt;p&gt;　　小编强调这个问题我相信有很多投资人会说”你这不是废话吗,跑路当然是为了要卷钱!”那么是什么因素让这些不良平台能够卷钱?资金支配权!什么是资金支配权?就比如说投资人投了2万块钱,通常这个钱都是直接汇入平台的私人账户.平台对这些钱有着绝对的支配权.想要跑路?提钱走人,就是这么简单! 也就是说这2万块钱来说用户在充值后无法把握钱的走向,如果碰到居心不良的平台很容易受到损失.&lt;/p&gt;\n&lt;p&gt;　　第三方支付与第三方托管&lt;/p&gt;\n&lt;p&gt;　　这两点投资人一定不能混淆.很多平台在鱼目混珠,拿第三方支付说事儿.其实第三方支付只是资金的一个流动途径.最后资金还是汇入平台的账户中.但是托管不同.托管是在第三方支付平台开户,投资人投资的钱直接汇入到托管账户中.其只能用来投资次平台或者返回到投资人的银行账户中.平台及托管平台都无权动账户中一分钱.所以安全性来说得到了大大提高.从而彻底杜绝了平台卷钱跑路的风险.&lt;/p&gt;\n&lt;p&gt;　　在新出的监管机制中也有明文规定.p2p理财平台不得设立资金池,必需与第三方托管机构进行合作以确保投资人的资金安全.&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(68, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499928688, 1499928688, 1499928678, 0, 'P2P理财新手必须遵循的三大法则', '', '', '', '\n&lt;p&gt;　　现代社会人们投资方式丰富多样，各种各样的理财产品也层出不穷，互联网金融的兴起，更为都市白领们提供了一种全新的投资方式——P2P理财。对于刚刚进入P2P理财领域的朋友来说，以下三个步骤能帮助大家更快地掌握P2P理财之道。&lt;/p&gt;\n&lt;p&gt;　　一、学习·了解P2P&lt;/p&gt;\n&lt;p&gt;　　对于刚刚开始接触P2P理财服务的朋友而言，首先要做的，就是尽可能多地了解P2P的相关内容，比如P2P行业的发展现状，不同借款标种类，P2P理财存在的风险等等。而在了解了基本知识后，就可以选择较为知名的、声誉较好的P2P平台进行针对性研究，重点了解实际操作的具体流程。&lt;/p&gt;\n&lt;p&gt;　　二、实战·平台筛选&lt;/p&gt;\n&lt;p&gt;　　面对数目众多的P2P平台，投资人绝对需要拥有一双火眼金睛，而优秀的P2P网贷平台一定需具备以下三个特征：&lt;/p&gt;\n&lt;p&gt;　　首先，借款信息真实可信。借款人在P2P平台上提出借款申请后，由P2P平台对其资质进行审核，P2P平台在保障借款人信息真实的情况下，进而筛选出资质优良的借款人，保障投资人的资金确实出借给了可靠信用良好的借款人，交易透明公正。&lt;/p&gt;\n&lt;p&gt;　　其次，风控管理专业高效。风控是P2P平台业务顺利发展的核心工作，作为一家专业的P2P平台，一方面，应对借款人的资质进行反复认定和筛选，另一方面，则应不断对自身风控技术进行改进和创新，双管齐下，确保风控管理严格有效。&lt;/p&gt;\n&lt;p&gt;　　再次，用户体验流畅便捷。随着互联网技术的不断发展，投资人可以不仅通过电脑，更通过手机客户端享受P2P理财的便捷服务。作为业内首家推出手机客户端的公司，宜信宜人贷于2013年推出的“宜人贷借款App”上线仅四个月，下载人数便已突破百万。在“客户体验至上”的网络时代，对客户需求的精确把握和对客户服务的不断完善，是对优秀P2P平台的基本要求。&lt;/p&gt;\n&lt;p&gt;　　三、反思·及时调整&lt;/p&gt;\n&lt;p&gt;　　在利用P2P平台进行一段时间的投资理财后，相信投资人已经获得了一定的收益，但此刻绝对不可放松警惕，尽管通过手中的P2P平台获得了回报，仍然需要冷静地对其做客观而理性的评价，并且将其与其他P2P平台的理财服务进行比较，如有可能，尽量将风险分散，如将可利用的资金投放到不同平台进行投资，以达到最佳的投资回报。&lt;/p&gt;\n&lt;p&gt;　　任何投资都具有一定风险，通过P2P平台理财也不例外，但是投资人通过对投资渠道主动的了解和投资方式理性的规划，却能实实在在地规避掉一部分风险，为投资人带来更安全可靠的投资收益。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}');
INSERT INTO `jr_portal_post` (`id`, `parent_id`, `post_type`, `post_format`, `user_id`, `post_status`, `comment_status`, `is_top`, `recommended`, `post_hits`, `post_like`, `comment_count`, `create_time`, `update_time`, `published_time`, `delete_time`, `post_title`, `post_keywords`, `post_excerpt`, `post_source`, `post_content`, `post_content_filtered`, `more`) VALUES
(69, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499928721, 1499928721, 1499928704, 0, '上市公司做P2P网贷：人力和专业是短板', '', '', '', '\n&lt;p&gt;　　今年以来，已经有多家上市公司发布公告表示拟设立互联网金融平台，多数都涉及P2P业务。&lt;/p&gt;\n&lt;p&gt;　　6月6日，万好万家公告，旗下的“黄河金融”已经上线运营。黄河金融采用的是“小贷公司初审推荐项目——黄河金融复审发布——独立第三方全额本息担保——保险公司商业综合责任保险——第三方支付机构资金托管”的运行模式。7月1日，熊猫烟花也宣布旗下互联网金融平台银湖网正式上线。&lt;/p&gt;\n&lt;p&gt;　　上市公司布局P2P主要有两种模式。第一种是“单打独斗”，即一家上市公司全资设立，如熊猫烟花打造了银湖网，以及万好万家子公司浙江众联在线资产管理有限公司打造了黄河金融。第二种是“组团”，如今年3月份上线的前海理想金融平台，其股东为凯恩股份、大连控股、中捷股份等3家上市公司；深圳鹏鼎创盈金融信息服务股份有限公司在近日完成工商变更（备案）手续后，注册资金由1.5亿激增至5.3亿元，备案后实收资本达4.75亿元。&lt;/p&gt;\n&lt;p&gt;　　此轮增资扩股完成后，鹏鼎创盈股东数将扩张至27家，其中包括22家上市公司。多家参股上市公司均表示，此次参股就为押宝互联网金融领域的发展前景，以及未来产业链上下游融资的便利性。而对于后期运营计划和盈利模式，上述公司多表示因仍处于初期阶段，尚未有具体可披露信息。&lt;/p&gt;\n&lt;p&gt;　　对于上市公司纷纷进军P2P行业，业内人士认为，应警惕形式意义大过业务实际创新；上市公司进军P2P虽较民间借贷更具公信力，但互联网金融行业目前已呈现高度复杂性，而传统上市公司在人力与专业上有所不足。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(70, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499928747, 1499928747, 1499928733, 0, '选择P2P理财的优势', '', '', '', '\n&lt;p&gt;　　首先是P2P大多数平台的门槛较低，但收益远高于一般的理财产品，在平台安全可靠的前提下，投资收益固定、可观，这些特性符合普通大众对于理财产品的期望。&lt;/p&gt;\n&lt;p&gt;　　其次，从目前各平台的发展趋势看，P2P平台前期需要借助大的投资者做大平台规模，但从长远看，P2P使普通大众享受到了主动投资、理财的优越感，因而随着平台的发展和日益稳定，小额、零散、稳固的平民理财者才是各个平台的主要客户群。&lt;/p&gt;\n&lt;p&gt;　　再者，P2P理财平台并不会因为大额投资的介入抬高门槛，因而为平民理财者们提供了一种更公平的竞争环境，同时能为理财者建立很好的征信基础。对普通大众而言，在为数不多的理财方式中，P2P理财乃上乘之选。&lt;/p&gt;\n&lt;p&gt;　　当然，P2P平台低门槛、高收益的特性吸引的不仅仅是平民理财者，也吸引着越来越多的大额投资者。P2P理财覆盖的人群也逐渐拓宽，既有几百元、几千元的投资者，也有数十万甚至上百万的投资者。但是，这并不违背P2P平台的本质意义，为个人和小微投资、融资者服务，P2P平台的属性也决定了普通大众依然能在P2P平台，享受到公平的投融资环境。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(71, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499928766, 1499928766, 1499928755, 0, '投资P2P你需要掌握的术语', '', '', '', '\n&lt;p&gt;　　【解读：知道什么叫“投标奖励”、“续投”吗？投资P2P，怎可不懂一些P2P的术语？在P2P日渐流行的年代，一些资深投资人掌握足够多的专业词汇而熟谙P2P投资规则，因而在P2P平台上赚得盆满钵满，在投资领域混得春风得意，可是这些烂熟于心的专业词汇你还一知半解？这些阻碍，或许会让你错过一些资质优秀的平台和一些靠谱的项目，那可真是得不偿失啦！】&lt;/p&gt;\n&lt;p&gt;　　以下是投资网贷应该掌握的术语：&lt;/p&gt;\n&lt;p&gt;　　网贷：P2P网络借款，指个体与个体之间通过网站实现借贷，中间网站称为网贷平台，简称平台。&lt;/p&gt;\n&lt;p&gt;　　投资人：也叫出借人，指在平台上进行投资的用户，就是我们投资者啦。&lt;/p&gt;\n&lt;p&gt;　　借款人：是指有资金需求，在平台上借款的个人或者企业。&lt;/p&gt;\n&lt;p&gt;　　线上充值：利用第三方支付平台进行充值，将资金划入网络借贷平台的对公账户或者个人在第三方支付的虚拟账户。通常会实时到账，但有时也会出现掉单现象，一旦发现掉单，首先请记住订单号，同时联系客服进行手动充值。&lt;/p&gt;\n&lt;p&gt;　　线下充值：直接将资金通过银行转入平台账户（一般是直接转入法人账户），然后联系平台财务手动入账。碰到这种充值方式的平台请尽量远离，没有第三方支付作为中介，对于平台的道德风险很难把握。&lt;/p&gt;\n&lt;p&gt;　　提现：投资者向平台提出申请，将个人虚拟账户上的资金转入到投资者银行卡上。提现出来的才是真金白银。&lt;/p&gt;\n&lt;p&gt;　　分散投资：网贷投资界的至理名言——“不把鸡蛋放在一个篮子里”。网贷分散投资是指分散平台投资，避免重仓某一个平台，以免孤注一掷失败之后造成巨大的损失。再稳健的平台也会变化，分散投资，均摊风险。&lt;/p&gt;\n&lt;p&gt;　　投标奖励：网贷平台为了鼓励投资者积极参与投标，而给予的借款利息之外的奖励，奖励因借款期限不同而有区别，各平台的奖励策略也不同，奖励多用于新平台成立之初吸引投资者。&lt;/p&gt;\n&lt;p&gt;　　续投：只要是用回款的资金去接着投下一标就算续投，回款的全部或部分投标都算续投。&lt;/p&gt;\n&lt;p&gt;　　回款：本金+利息+奖励。&lt;/p&gt;\n&lt;p&gt;　　约标：投资人和平台约标，这种情况一般出现在新平台开业，投资人为了获取更大的的预期年化收益，主动和平台联系，投资一定额度的资金。&lt;/p&gt;\n&lt;p&gt;　　自融：所谓自融就是有实体企业的人来线上开一个网贷平台，从网上融到资金，用于自己企业或者关联企业使用，就是给自己用！这样的平台，从法律上踩了非法集资的红线，应该远离。&lt;/p&gt;\n&lt;p&gt;　　小散：一般是指投资网贷总额在几千到十几万之间的投资者，这部分群体一般是工薪阶层，资金量不大，部分资金投入网贷，赚取微薄的利息。&lt;/p&gt;\n&lt;p&gt;　　资金站岗：资金站岗也称为“当哨兵”，是指投资人投资某平台某借款标迟迟不能满标，或者充值后一直没有标的可投，或者项目很少抢不到标，让资金闲置的情况。&lt;/p&gt;\n&lt;p&gt;　　秒标和秒客：秒标就是秒还标，秒标借款期限1个月，标满后借款者立即还款，投资者投资一次可以获得1个月的利息，所以通常在一分钟内被抢投满标，常用于聚集人气，迅速聚集平台资金，故而发放高预期年化收益超短期限的借款标，投资者拍下秒标后马上就能回款，相对来说风险较小，也由此网络上聚集了一批专门投资秒标的投资人，这些人也被称之为“秒客”。&lt;/p&gt;\n&lt;p&gt;　　等额本息：类似于还房贷，每月偿还同等数额的贷款(包括本金和利息)，这样由于每月的还款额固定。&lt;/p&gt;\n&lt;p&gt;　　先息后本：每月还利息，到期一次还本金，还包括最后一期的利息。&lt;/p&gt;\n&lt;p&gt;　　网贷打新族：又称“网投游击队”、“网投敢死队”，是指投资人群体中一群追求高预期年化收益、能够承担高风险的投资人。新平台上线之初，往往会开展一系列高奖励的活动吸引人气，此时投资通常能获取相对更高的预期年化收益，网贷打新族就属于敢于吃新平台螃蟹的第一批人，他们追求高预期年化收益，往往活动期一结束就撤资，因此其历史预期年化收益也较高。但是他们也承受着高风险，新平台运营之初还存在不少问题，其中也不乏跑路贷，他们属于投资人群体中的激进派。&lt;/p&gt;\n&lt;p&gt;　　债权转让和净值标：投资人将待收还款转让给其他人，提前取出本金，利息预期年化收益也一同转让。转让债权的标的成为净值标。平台现在都有债权转让功能，人气活跃的平台转让速度较快。一般转让有手续费。&lt;/p&gt;\n&lt;p&gt;　　网贷黄牛：利用净值标和债权转让，通过低息借入高息借出而赚取利息差的一类投资者。&lt;/p&gt;\n&lt;p&gt;　　好了，更多术语解释请继续关注这个系列，觉得有用的就分享到朋友圈哦，让更多的小伙伴看到哈。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(72, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499928788, 1499928788, 1499928777, 0, 'P2P投资理财五大招', '', '', '', '\n&lt;p&gt;　　p2p网贷以势不可挡的趋势席卷中国金融市场。P2P行业的快速发展也吸引了大量投资人的眼球，但是相应的P2P问题也不断。作为投资者，到底如何才能辨别真假P2P呢？不要着急，理财专家给你支招！&lt;/p&gt;\n&lt;p&gt;　　一、探底P2P资金实力&lt;/p&gt;\n&lt;p&gt;　　企业实力是影响企业发展的重要因素之一，同时也是企业能否正常运行的关键。P2P虽然是客户集资与借款的服务平台，但如果没有强劲的实力支撑，客户的认可度与投资兴趣也会有所消减。所以，在选择P2P理财平台时，客户应先查看平台的资金实力，运营证明、客户群体等以保证自己选择100%正确性。&lt;/p&gt;\n&lt;p&gt;　　二、风控保障体系完善程度&lt;/p&gt;\n&lt;p&gt;　　完善的风控保障体系可在很大程度上降低客户的风险，所以风控保障体系是否完善也是验证P2P是否合格的标准之一。恒昌风控保障体系囊括：资金流向保障、平台保障、还款风险金保障与制度流程保障等四大风险项目，多角度多方位保证客户安全与利益。&lt;/p&gt;\n&lt;p&gt;　　三、P2P资金池&lt;/p&gt;\n&lt;p&gt;　　当前客户最为担心的就是P2P的资金池，如果理财客户的钱进入了P2P的资金池，它就具备了卷款跑路的诱因和条件，这也是许多虚假P2P平台跑路的途径之一，所以客户在选择平台时一定要走第三方支付，不要向个人账号投资或者集资。&lt;/p&gt;\n&lt;p&gt;　　四、P2P中的自融，你了解吗?&lt;/p&gt;\n&lt;p&gt;　　自融即自我融资，这种方式是许多虚假P2P的惯用伎俩即通过发虚假标蒙骗客户把资金转投到幕后企业，更甚者通过虚假标融资后直接卷款跑路。&lt;/p&gt;\n&lt;p&gt;　　如何才能规避自融平台呢，恒昌专家指出鉴别真实标和虚假标，可选择平台上一定数量的标的内容进行研究、核查。一般来说，个人资产抵押贷的资料比企业贷、信用贷更难虚构，所以发假标圈钱跑路的“群众贷”网站只能拷贝抄袭易贷网的借款人资料，因为伪造大量个人资产的权证资料是经不起查证的，想不露破绽难度太大。&lt;/p&gt;\n&lt;p&gt;　　另外，信用贷客户所需的资料证件少，企业贷客户的设备、货物等抵押物没有权属证件，造假方便省事，一个假标可以融上千万甚至上亿资金，所以发假标的多数是虚构信用贷客户和企业贷客户资料，还有就是直接拷贝抄袭正规网站。&lt;/p&gt;\n&lt;p&gt;　　五、你被拆标了吗?&lt;/p&gt;\n&lt;p&gt;　　拆标是指将长期债权拆分成短期标上网融资。大量短期标到期需要还款时，它不能将长期债权变现来偿清债务，只能靠自己垫资偿清之后再发短期标续贷，一旦后续标的无人承接，就会出现流动性不足的风险的一种现象。&lt;/p&gt;\n&lt;p&gt;　　在P2P拆标现象数不胜数，这也是一些平台倒下的因素之一。拆标不仅使企业运用艰难，信誉度降低更让投资者产生质疑心理影响P2P发展，同时也让一些假平台不断被拆穿，走上无人的绝境。&lt;/p&gt;\n&lt;p&gt;　　理财专家指出，投资人在选择平台的时候一定要慎重。擦亮自己的眼睛，采用多种鉴别方法，这样才能实现自己财富管理保值增值的目标。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(73, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499928809, 1499928809, 1499928798, 0, '70后 80后 90后的理财区别', '', '', '', '\n&lt;p&gt;　　时代不同，人的观念也就不同，对于财富，都有自己不同的看法以及做法。而在70后、80后、90后这三个年龄阶段的人来说，究竟最大的区别是什么呢?不妨就一些例子来看看从70后到90后的进阶：&lt;/p&gt;\n&lt;p&gt;　　第一笔工资&lt;/p&gt;\n&lt;p&gt;　　——70后&lt;/p&gt;\n&lt;p&gt;　　“70后”出来工作时，正巧碰上中国经济快速腾飞的时期。那时的许多大学毕业生的第一份工作是接受分配得来的。1973年出生黄先生大学毕业后分配到一家船舶厂做技术员。&lt;/p&gt;\n&lt;p&gt;　　“第一次拿到工资还有点小激动。那时候才出来工作，第一个月工资172元。”说到如何花费这笔钱，黄先生说：“因为单位提供员工宿舍，所以大部分都用在吃上面了，一个月的工资也就够基本生活，所以也没有往家里寄钱。”&lt;/p&gt;\n&lt;p&gt;　　“虽然那时候工资很少，不过终于可以自己养活自己，那种成就感是很难用钱来衡量的。”黄先生说。&lt;/p&gt;\n&lt;p&gt;　　——80后&lt;/p&gt;\n&lt;p&gt;　　“80后”作为独生子女的一代被贴上各种标签。他们是改革开放中成长的年青一代，接受了更多的外来事物。蒋先生是典型的“80后”，喜欢旅游，爱玩网游，爱看美剧、电影，喜欢活在当下。由于玩儿得一手好游戏，这也为他大学毕业后赢得了第一份工作——游戏事业部程序员。&lt;/p&gt;\n&lt;p&gt;　　蒋先生拿到第一份工资时，第一个想法就是给父母买点东西。“2005年参加工作时第一个月工资是1500元。给父亲买了一条烟，给父母买了两个‘老人手机’，共花了500元。”蒋先生说，剩下的1000元，一半交了房租，一半当做生活开销。&lt;/p&gt;\n&lt;p&gt;　　——90后&lt;/p&gt;\n&lt;p&gt;　　小刘是“90后”的一员。小刘拿到的第一笔工资是2200元。她早已规划好用途：给外公外婆买一些保养品作礼物，请父母吃了一顿晚餐，给自己买一份礼物。&lt;/p&gt;\n&lt;p&gt;　　小刘花700元给自己买了一副心仪已久的墨镜，“小小奢侈一把，也算犒劳犒劳自己，以后工作更加努力吧”。&lt;/p&gt;\n&lt;p&gt;　　除去上述花销后，工资只剩下800元，小刘把这些钱拿来作生活费。“平时吃住都在家里，这点钱还是够用做基本生活的。”&lt;/p&gt;\n&lt;p&gt;　　第一份工作、第一笔工资，随着时代的变迁，人们的工作或许不同，工资收入也有差异。作为迈入社会的第一步，第一笔工资的实际意义正在模糊，更多意味着成长和收获，以及他们对未来的期望。&lt;/p&gt;\n&lt;p&gt;　　同样，对于资金的分配，每一代人都不尽相同，老一辈的人可能觉得最好的理财方式就是把钱存进银行是最保险的了;相比而言，80后、90后一代的投资观念会比较先进，也比较容易接受新事物，比如互联网理财方式中的余额宝、P2P理财等等。关键还是要看自己的需求，结合自身情况再跟随时代变化去调整。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(74, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499928833, 1499928833, 1499928817, 0, '小心啦！P2P十大致命误区你造吗？', '', '', '', '\n&lt;p&gt;　　投资理财最重要的是要保住本金，如果连本金都保不住就别谈理财了，还是乖乖的把钱放在银行吧。P2P网贷这种新的互联网金融朝气蓬勃的发展背后也有很多隐患，投资者不是不知道风险而大多数都是有侥幸心理的。有部分投资者只是被P2P网贷的高预期年化收益率吸引来，对P2P一知半解对平台很多时候是道听途说或者是主观臆断，很多时候深入误区却并不知晓。为了保证资金安全现在很多人投资P2P网贷之所以赚不到钱，主要是因为在投资上会经常犯一些错误，有些还是致命的，为此建议各位投资者一定要谨慎几个误区，及时改正，不然还会造成更大的损失。各位投资者一定要小心下面几个误区。&lt;/p&gt;\n&lt;p&gt;　　误区一：平台越大越好&lt;/p&gt;\n&lt;p&gt;　　这个世界上永远没有十全十美，没有绝对的好和不好。大家一定要记住，专注的平台永远比大而全的更有竞争力，快鱼吃慢鱼。&lt;/p&gt;\n&lt;p&gt;　　误区二：平台运营时间长就安全&lt;/p&gt;\n&lt;p&gt;　　民间借贷坏账爆发期一般是在6月、12月、18月，经济周期3年-5年一个波动。如今是市场经济大环境并不好，每年10月以后是民间闹钱慌的重要时期。现在还没有一个平台完全走过一个经济萧条期。&lt;/p&gt;\n&lt;p&gt;　　误区三：利息低比利息高安全&lt;/p&gt;\n&lt;p&gt;　　其实平台安全不安全还要看是否在安全期，和高息低息没有绝对的关系。&lt;/p&gt;\n&lt;p&gt;　　误区四：人气高的平台就是好平台&lt;/p&gt;\n&lt;p&gt;　　投资人的口碑是最廉价的营销，也是效果最明显的传播。人气高的平台也许是平台采取一种营销方式，你看到的也许只是假象。&lt;/p&gt;\n&lt;p&gt;　　误区五：平台的模式最重要&lt;/p&gt;\n&lt;p&gt;　　很多人认为平台的模式永远比风控、催收重要。举个很简单的例子借款人在平台借款以房子5折抵押，但是如果借款人还款逾期房子又买不去怎么办?在这些因素中，经济环境第一，放贷的模式第二，风控第三，催收第四。&lt;/p&gt;\n&lt;p&gt;　　误区六：相信平台保本息的承诺&lt;/p&gt;\n&lt;p&gt;　　先不说平台保本息承诺的真假，就算是真的，天算不如人算，未来一切都是不可预知的。连最安全的银行理财产品和基金在发售时都只承诺历史预期年化收益，平台保本息的承诺又有多可靠呢?&lt;/p&gt;\n&lt;p&gt;　　误区七：过于相信对平台考察&lt;/p&gt;\n&lt;p&gt;　　考察是静态的，平台是动态的。过分相信数据分析，如果你相信数据，说明你不懂中国人!网贷的结果永远比数据要优先。&lt;/p&gt;\n&lt;p&gt;　　误区八：过于相信外界的分析推荐&lt;/p&gt;\n&lt;p&gt;　　很多投资者并不太懂P2P因此对自己缺乏自信，过于依赖评级参数、数据分析、名人推荐。其实鞋子适合不适合自己只有自己晓得，适合自己的投资才是好的投资，找到自己的分析平台方法才是好的方法。&lt;/p&gt;\n&lt;p&gt;　　误区九：国家政策保护&lt;/p&gt;\n&lt;p&gt;　　政策是宏观、投资人是微观，不可能出来政策了平台就不会倒闭，保护你的永远是自己的行业知识和经验。&lt;/p&gt;\n&lt;p&gt;　　误区十：分不清投资和投机&lt;/p&gt;\n&lt;p&gt;　　投资理财最关键的是知识、经验、心态，P2P网贷只是理财的一种，千万别指望靠它一夜暴富。稳健稳定的投资理财，适可而止的回报才能长久。&lt;/p&gt;\n&lt;p&gt;　　P2P行业在发展，做为投资者的我们怎么能停滞不前呢?被骗一次是善良，被骗二次是天真，被骗三次就是愚蠢了。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(75, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499928852, 1499928852, 1499928842, 0, '投资p2p网贷十二大误区', '', '', '', '\n&lt;p&gt;　　新鸟老鸟慢慢悟。投资平台三个月再来看，收获又不一样哦！平台的运营、老板慢慢想。不理解投资人的运营不是好运营哦！&lt;/p&gt;\n&lt;p&gt;　　一、认为一年以上的平台就安全了。民间借贷坏账爆发期，6月、12月、18月，平台还没有走完那？经济周期3年-5年一个波动。现在是经济萧条期！每年10月之后是民间闹钱慌的时期！现在还没有一个平台完全走过一个经济萧条期！&lt;/p&gt;\n&lt;p&gt;　　二、低息就安全、高息就不安全。平台安全不安全是看是否在安全期，和高息低息没有绝对的关系。安全期参考方法，在以后文章说明。&lt;/p&gt;\n&lt;p&gt;　　三、相信平台保本保息承诺，银行和基金只能承诺历史收益多少？任何理财都有风险，包括银行。平台只能历史收益。&lt;/p&gt;\n&lt;p&gt;　　四、相信高大上的平台一定就好，小而精的平台就不好。专注的平台永远比大而全的更有竞争力，快鱼吃慢鱼。&lt;/p&gt;\n&lt;p&gt;　　五、过于相信评级参数、数据分析、名人推荐。鞋子适合不适合自己只有自己知道，适合自己的投资才是好投资，找到自己的分析平台方法才是好方法。&lt;/p&gt;\n&lt;p&gt;　　六、过度依赖于国家政策保护。政策永远保护不了你，保护你的永远是自己的行业知识和经验。政策是宏观、投资人是微观，不可能出来政策，平台就不会倒闭！&lt;/p&gt;\n&lt;p&gt;　　七、投资和投机分不清、理财和发财搞不懂。网贷只是理财的一种，不要指望靠它发财。不要太过于激进，物极必反。适可而止的回报，才能长久！投资的是知识、经验、心态！&lt;/p&gt;\n&lt;p&gt;　　八、过于相信对平台考察。考察是静态的，平台是动态的。过于相信数据分析，如果你相信数据，说明你不懂中国人！网贷的结果永远比数据优先。&lt;/p&gt;\n&lt;p&gt;　　九、平台的模式永远比风控、催收重要。房子打5折抵押，但是房子买不去，和风控催收关系有多大。在这些因素中，经济环境第一，放贷的模式第二，风控第三，催收第四。做车子借贷是过户安全还是质押安全？过户后续问题少，质押的话问题只是刚刚开始。&lt;/p&gt;\n&lt;p&gt;　　十、人气高的平台就是好平台、我可以投机时间长一些；投资人对平台认同感强才是好，投资人的口碑是最廉价的营销，也是效果最明显传播。&lt;/p&gt;\n&lt;p&gt;　　十一、过度纠结于平台风控、坏账、老板实力。对于投资人来说平台运营才是第一位的，对于平台来说，风控是第一位的。风控不好的平台不会马上死、运营不好可能立刻挂。&lt;/p&gt;\n&lt;p&gt;　　十二、认为组团就是不安全。组团最大的问题就是向平台拿好处和集体进集体出。评级就是最大的组团。如果真是好平台，组团给平台省了很多广告费用，好平台就是好平台，合理推销组团没有罪。就怕垃圾平台还组团，一团就死，给大家留下阴影！明团、暗团一直都存在,你听不听它一直都在！&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(76, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499928873, 1499928873, 1499928863, 0, 'P2P监管细则将出', '', '', '', '\n&lt;p&gt;　　“野蛮生长”的P2P网贷平台有望在今年内有矩可循。银监会日前再次召集多家国内知名的P2P平台负责人召开座谈会，就P2P行业准入、制度选择、资金托管方式等内容征求意见。相关参会人士表示，P2P行业归由银监会监管，具体的法规或细则最快在下半年、超不过年底前应该就会发布。&lt;/p&gt;\n&lt;p&gt;　　座谈会重点讨论制度选择&lt;/p&gt;\n&lt;p&gt;　　其实，这已经是银监会5月第二次召集相关人士探讨P2P平台的监管问题。去年，P2P平台迎来了爆发式增长，与此同时由于行业自律缺乏和监管缺失，P2P平台跑路、倒闭现象频发，投资者资金打水漂。今年春节前后，政府确定由银监会对P2P网络借贷平台实施监管，相关监管条例也正在紧锣密鼓地制定之中。&lt;/p&gt;\n&lt;p&gt;　　一位不愿透露姓名的P2P参会人员表示，“监管层已经有了大概的监管框架，整体来说监管层希望是好的，希望P2P行业继续充当银行业的补充，回归到信息中介层面”。简言之，目前监管层已经达成共识，不希望扼杀P2P行业在民间借贷领域所发挥的积极作用。正在设立的互联网金融协会将对平台进行行业自律，并帮助监管细则落实。&lt;/p&gt;\n&lt;p&gt;　　对于监管层目前主要征求意见的内容，翼龙贷董事长王思聪在接受北京商报记者采访时表示，两个方面正在调研，就是到底采用登记制还是牌照制，登记制就是设立一些底线对P2P平台进行核准。未来的细则肯定会比较严格，包括大额自融肯定不会允许。&lt;/p&gt;\n&lt;p&gt;　　据公开信息显示，参加座谈会的机构主要包括陆金所、人人贷、红岭创投、拍拍贷、开鑫贷、宜信、有利网、点融网、翼龙贷等国内知名P2P平台以及部分银行和第三方支付机构的人士，而这些平台中不仅有国内各类P2P平台模式的代表，也有风控比较成熟到位的机构。&lt;/p&gt;\n&lt;p&gt;　　专家：不建议发放牌照&lt;/p&gt;\n&lt;p&gt;　　不过，市场也有传言称，P2P平台会先进行行业自律，然后再考虑监管细则和下发牌照。“行业自律不能有效抑制P2P平台跑路，需要一些准入门槛，比如注册资金多少、第三方资金托管如何进行等等。牌照不是没有可能，P2P平台如果没有严格的准入和管理，这种商业行为就不好监管。尽职调查和服务做不好，损害的是网民的利益，所以对于行业来说，牌照制好；从市场来讲登记制合适，政府无须兜底完全是市场行为。”王思聪认为。&lt;/p&gt;\n&lt;p&gt;　　日前中国支付清算协会业务协调三部副主任杜晓宇撰文指出，中国由于尚未设立存款保险制度，金融机构有政府的隐性担保，投资者风险意识不强，一旦经审批的金融企业发生危机，社会公众普遍要求政府予以兜底补偿，不建议对P2P和众筹企业设立行政许可。&lt;/p&gt;\n&lt;p&gt;　　王思聪补充道，“在注册资金、高管准入等方面从细则上肯定会有要求，注册资金我个人认为肯定不会低于1000万元，也有消息说会有对于高管的要求，即使最后不会有，至少也要做从业者登记”。杜晓宇也建议，可设立P2P行业自律注册制度，明确注册应达到的资金、技术、管理人员、内控制度等方面的要求。&lt;/p&gt;\n&lt;p&gt;　　监管层已有细则初步方案&lt;/p&gt;\n&lt;p&gt;　　接近监管层的人士透露，2014年内应该可以看到国内P2P监管细则的出台。王思聪也表示，可能在下半年、年底前就会有细则或法规先出来。&lt;/p&gt;\n&lt;p&gt;　　在北京商报记者采访过程中，不少参会人员及业内人士表示，监管层已经有了初步方案，可能不止一个，然后根据调查、征求意见等再进行最终确定。&lt;/p&gt;\n&lt;p&gt;　　其实，此前银监会处置非法集资部际联席会议办公室主任刘张君也首度透露了P2P不得跨越的四道底线：一是要明确平台的中介性质；二是要明确平台本身不得提供担保；三是不得将归集资金搞资金池；四是不得非法吸收公众资金。拍拍贷CEO张俊则希望监管层可以出具负面清单，规定什么可以做，什么不可以做。&lt;/p&gt;\n&lt;p&gt;　　“现在整体方案应该基本上与监管机构和媒体报道出来的差不多，很多监管层人士在个人演讲中也都透露出来，但无论是什么制，一定是很严格的。这样才会规范行业乱象。”前述P2P参会人员说道。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(77, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499928901, 1499928901, 1499928884, 0, 'P2P应该怎么玩？', '', '', '', '\n&lt;p&gt;　　对于P2P，整个行业应该说是既爱又恨，既想做，又怕做，做小了不挣钱，做大了高风险。一方面，现在是个人都在弄P2P，目前号称已经超过2000家了；另一方面，很多P2P网站真心做得太浮躁太急功近利了，没有沉下去，不会做或者压根就没想做征信和风控，就想挣快钱，做梦都想着明天就搞个风投几千万啥的，完全不是在做业务和生意。最后的结局是，一堆最先扛不住的家伙卷钱跑路，P2P在中国就此被搞臭了。&lt;/p&gt;\n&lt;p&gt;　　关于P2P的话题，行业各位大家都已经聊得很多了。什么政策法规、什么行业监管、什么安全性问题、什么诚信与欺诈、什么风险与预期年化收益、什么模式与创新……今天想跟大家聊的是比较实际操作层面的问题，也就是面对这么多令人眼花缭乱的P2P网站，我们作为普通个人投资者，到底应该有哪些三大纪律八项注意呢？&lt;/p&gt;\n&lt;p&gt;　　其一，只投资有一定资质和规模的网站。&lt;/p&gt;\n&lt;p&gt;　　前面说了，国内目前扎堆都有2000家大大小小良莠不齐的P2P网站了，这些网站各有背景、各有资质、各有规模，成立时间长短也差异很大，其中不乏三五个小朋友自己coding一个网站上去就开始营业的。虎哥不去评价人家的创业热情和远大抱负了，虎哥只从普通投资个人角度出发，建议大家还是尽量选择有一定资质（比如背靠银行、保险、基金等母公司或者有某知名企业投资的）、成立时间较长（最好2、3年以上）、已经有相当规模的P2P网站。其实符合条件的不多，但也不难找，大家真心想投资，这点功课还是要做的，多百度百度，看个几十篇相关P2P报道和文章，哪些P2P网站相对靠谱基本就知道了。&lt;/p&gt;\n&lt;p&gt;　　其二，广告说得太玄乎的不要参与。&lt;/p&gt;\n&lt;p&gt;　　什么叫做广告说得太玄乎？举个房地产的例子吧：所谓水景房，波光涟漪，其实呢，就是院子里挖了个小水池，还是死水！30分钟直达国贸（北京的金融中心区），其实呢，楼盘远在河北廊坊呢，30分钟直达国贸除非是提前封路+警车开道+一路绿灯+时速160公里。所以，如果P2P网站把它的项目描述得是这种感觉的话，虎哥劝你一秒钟都不用想，直接咔嚓关掉这个骗子网站吧。&lt;/p&gt;\n&lt;p&gt;　　其三，单笔投资金额太大的不要参与。&lt;/p&gt;\n&lt;p&gt;　　最纯粹的P2P其实就是个人跟个人借钱嘛，顶多，其中的个人可能是个个体户（或者现在时髦的称呼叫做小微企业），自己做点小买卖，缺个3万、5万、10万的启动资金。现在的P2P越玩越乱、越玩越大，动不动一个项目就敢要上百万，借钱人的成分也越来越复杂，但绝大多数P2P网站缺乏金融行业资质和从业经验，没有征信和风控能力。这类单笔投资金额过大的项目建议大家不要参与，哪怕它是把投资总额切成很多份（因为这并不解决借款人还款能力和诚信的问题）。&lt;/p&gt;\n&lt;p&gt;　　其四，预期年化收益率过高的项目不要参与。&lt;/p&gt;\n&lt;p&gt;　　这一点是所有投资P2P项目的人最难过的一个美人关，因为投资P2P的人要的就是一个高回报嘛，否则直接存余额宝、或者到银行买个啥基金不更简单、更放心？不过虎哥还是要提醒大家必须正视金融投资行业的一个基本规律和法则，那就是永远都是“高预期年化收益一定意味着高风险”，“高预期年化收益又低风险”的事情，大家就不要做梦了。&lt;/p&gt;\n&lt;p&gt;　　原则上，P2P投资的预期年化收益率控制在10%~15%就非常好了（现在多数P2P是按月还款，而且先还本金，所以实际预期年化收益率远比标称的要低）。15%以上的千万多掂量下，多了解下项目本身风险性、预期年化收益性、成功可能性及借款人背景和诚信度、还款能力。至于那些动不动30%、40%的比高利贷还猛的项目，虎哥的态度是一律忽略视而不见！&lt;/p&gt;\n&lt;p&gt;　　其五，把自己的投资资金至少分成三份。&lt;/p&gt;\n&lt;p&gt;　　这个原理其实跟炒股没有什么区别了，基本理论是风险分散论，也即不要把鸡蛋放在一个篮子里。分成几份后，怎么选择投资呢？比较简单的做法是：一、投资到不同预期年化收益率的项目中，其中在坚持第四点戒律的前提下，可以分配到高中低三档，其中高档预期年化收益率的投资金额不宜超过25%；二、投资到不同类型的项目中，比如以个人日常消费为主的借款+个人买车或者装修的借款+个体户小微公司经营性借款等组合投资。三、投资到不同金额的项目中，单笔金额低的项目可多投几个，单笔金额高的要少投。四、借款人的地域分布避免太集中，比如有北京的项目、有上海的项目、有大连的项目。以上几点做些排列组合，其实玩法还是挺多的，你会发现其中很有投资学问和乐趣。&lt;/p&gt;\n&lt;p&gt;　　其六，不建议投资P2P网站自身的大项目。&lt;/p&gt;\n&lt;p&gt;　　现在国内的P2P行业已经混乱到无以复加的程度了，就像现在的中国是个女人都敢叫美女，但美女与美女间的差别几乎跟男人跟女人间的差别一样大！现在大量的网站是挂着P2P之名，做着贷款公司之实，还有些实际就是一些用所谓编造的P2P项目在给自己公司募集资金了（怎么感觉应该叫做众筹网站而不是P2P呢？）对于这类网站和这类项目，建议大家最好敬而远之，这种投资应该是大型风投或者高富帅玩的，我辈屌丝就不要去碰了。&lt;/p&gt;\n&lt;p&gt;　　当然了，这些项目肯定是经过精心包装的，看着跟一般借款项目很像。注册马甲这玩意儿太简单了嘛，谁知道这个P到底是哪个P呢？一般要区分，往往要看网站的项目多不多，如果项目很少，或者借款人身份有一定关联性（地址、账号、营业场所等等信息），或者某个项目动则千万上亿，那肯定是假P无疑了！这类项目风险极高，严重不建议普通个人投资者参与。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(78, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499928926, 1499928926, 1499928914, 0, '如何看清楚高收益P2P产品？', '', '', '', '\n&lt;p&gt;　　如果要在P2P网贷领域说收益6% ，估计会被笑掉大牙。不是因为痴人说梦，而是因为太不敢做梦。对于动辄收益超过10%，甚至超过20%的P2P网贷领域来说，6%的收益简直是易如反掌。但天上不会掉馅饼，百万元的投资门槛，超过10%的收益，这一切看似如此美好，但要挖掘这个高收益的金矿，需要练就一副火眼金睛，选择一些靠谱的P2P平台很关键。&lt;/p&gt;\n&lt;p&gt;　　对于动辄收益超过10%，甚至超过20%的P2P网贷领域来说，赚6%的收益简直是易如反掌。但天上不会掉馅饼，要挖掘这个高收益的金矿，需要练就一副火眼金睛，选择一些靠谱的P2P平台很关键。&lt;/p&gt;\n&lt;p&gt;　　多维度选择平台&lt;/p&gt;\n&lt;p&gt;　　面对鱼龙混杂的千家P2P平台，一些初入网贷市场的投资者大多看得眼花缭乱。绝大多数平台都宣称是“本息担保”，这让投资者很困惑，不知道如何从中选择靠谱的平台。&lt;/p&gt;\n&lt;p&gt;　　对此，专业人士指出，对于初进入这个行业的投资者来说，有几个选择标准可以参考。&lt;/p&gt;\n&lt;p&gt;　　首先，选择媒体上报道较多的平台。此类平台自融资的概率小，这也表明这类平台比较开放，愿意接受大众的监督，平台的经营相对规范。&lt;/p&gt;\n&lt;p&gt;　　其次，初入市场的投资者，可选择一些收益较低的平台。也许年收益只有10%，或者还不到10%，但这类平台因为给投资者的收益低，借款方的融资成本也较低，安全性会提高不少。&lt;/p&gt;\n&lt;p&gt;　　再次，选择有风险投资方进入的平台。这类平台在获得风投认可的同时，大多获得一笔大的风投资金，这就对平台的长远发展提供了资金和资源支持。投资此类平台，短期出现问题的概率较小。&lt;/p&gt;\n&lt;p&gt;　　最后，选择成立时间较长的平台。这类平台在长期的经营过程中，积累了一定的经验，风控技术也相对成熟。&lt;/p&gt;\n&lt;p&gt;　　另外，对具体情况还要具体分析，切不可盲目照搬。不同时期的大环境对平台的影响也不同，也许现在有用的选择经验，在一年后就不灵验了。初入这个市场的投资者，最重要就是不断去学习和了解，最终选择适合自己的平台。&lt;/p&gt;\n&lt;p&gt;　　有业内人士建议，如果是大额投资的话，最好去平台走访一下，看看平台是如何开展业务的，最好与平台负责人能够当面交流，这样对平台能有一个深刻的认识。据记者了解，大多数平台特别欢迎投资者去实地走访。如果网贷平台对投资者走访推脱或者敷衍了事的话，这类平台还是少投资为好。&lt;/p&gt;\n&lt;p&gt;　　在具体的投资操作中，有资深投资者建议，可以把钱分散在自己看好的几个平台上，通过分散投资来降低风险。在投资平台地域选择上，多投资一线城市的平台，这些城市监督力度较大。如果自己有朋友在网贷平台工作，也可以听听他的建议。&lt;/p&gt;\n&lt;p&gt;　　风险意识不可或缺&lt;/p&gt;\n&lt;p&gt;　　对于P2P网贷投资者来说，投资之前，首先应该想到的就是风险。&lt;/p&gt;\n&lt;p&gt;　　过去的2013年就有超过70家P2 P平台倒闭或者老板“跑路”，大概涉及的金额是12亿元左右。在今年年初，杭州国临创投、深圳中贷信创、上海锋逸信创等3家P2 P平台接连倒闭，据投资者透露，这3家平台的实际控制人实际上同为一人，名为郑旭东。&lt;/p&gt;\n&lt;p&gt;　　上述国临创投事件被业内称为“2014年网贷首案”，但实际上，2014年刚过7天，就接连有3家P2P平台陷入兑付危机。&lt;/p&gt;\n&lt;p&gt;　　有网贷从业人士总结了3类导致P2P平台倒闭的原因：&lt;/p&gt;\n&lt;p&gt;　　一是网贷平台自身风险控制做得不好，坏账率太高，导致收入不能覆盖成本，平台最终支撑不下去。这类平台的特点就是成立时间不会很长。二是网贷平台自融。一些利用平台给自己企业融资的，可能因为经营不善，无法还清投资者的资金，而选择“跑路”或者倒闭。这类平台最大的特点是一般媒体公开报道很少。三是网贷欺诈平台。对这类平台最应该小心。它们大多采用高收益，吸引投资者，当聚集到一定额度时，平台创建人卷款逃跑。这类平台大多是新平台，利息很高，还有一些秒表，等等。对于这三类平台最好敬而远之。&lt;/p&gt;\n&lt;p&gt;　　也有网贷投资者建议，初入这个市场的投资者可以登录行业门户网贷之家等网站论坛，看看一些资深投资者的建议和评论也很有必要。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(79, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1499928948, 1503372568, 1499928900, 0, 'P2P网贷投资四大技巧', '', '', '', '\n&lt;p&gt;　　投资是有风险的，要想投资赚到钱，不调入陷阱，投资者一定要规划好自己的投资策略。这里献上P2P网贷投资关键的几个技巧。&lt;/p&gt;\n&lt;p&gt;　　一、不熟不投&lt;/p&gt;\n&lt;p&gt;　　网贷现在搞的好像傻瓜都能赚到钱，随便注册一下，充值，投资，然后坐等预期年化收益，只要稍微动点电脑就能赚钱，钱从来没有像今天这么好赚过。可是有多少人真正知道民间借贷的实际预期年化利率呢？多少人真正知道行业的平均利润率、借贷的手续，各种担保费、管理费等相关知识呢？很多人在讨论高息低息，其实这个要看具体情况，高息的不一定有问题，比如有些好的平台开业初期发布天标、秒标或者高息借款只是为了吸引人气。&lt;/p&gt;\n&lt;p&gt;　　低息的也不一定安全，有的无良的老板可能就是利用投资人觉得低息安全的心态来欺骗投资者的。高息低息如何界定区分，这就需要相关的知识和经验了，不懂的人不要随便进入网贷，进入之前好好了解一下相关知识再进不迟，事先做到心中有数，熟悉了再投，就能大致分辨出哪些投资报告有参考价值，对于平台的那些评论是真是假，平台发布的信息是真是假等等，别看到有钱赚就急吼吼的扔钱进来，钱是自己的，稳着点好啊。&lt;/p&gt;\n&lt;p&gt;　　二、分散投资&lt;/p&gt;\n&lt;p&gt;　　这个相信不用我多说，大家都知道鸡蛋放在一个篮子里等风险最大，一旦摔了，全部碎了。其实分散投资也不是越分散越好，人的精力是有限的，应该在了解好自己选择的平台后，把平台按预期年化收益、风险等级等排序，按照自己预先设定的比例投资，把预期年化收益做大最大化，同时把风险降到最低。你不可能即享受最大利益又不承担风险，只能平衡两者的关系。&lt;/p&gt;\n&lt;p&gt;　　三、心态&lt;/p&gt;\n&lt;p&gt;　　我一直尽量控制自己的心态，但是有时也会失控，我是凡人，做不到完全控制住自己的心态，但是希望大家尽量控制自己的心态。其实前两条大家都知道，关键是第三条。控制心态完全靠个人感觉，多数人都有追涨杀跌的心态，所以多数人成不了赢家，只有真正能控制住心态的人才能笑到最后。比如投资股市，谁也不能百分百预测到大盘何时下跌与上涨，投资股市很大程度上靠的是心态，有人就算天天看也赚不了钱，而有人个把星期看一次却依然能赚钱。&lt;/p&gt;\n&lt;p&gt;　　另外投资时也不要被外界的评论所左右，不要轻信那些广告宣传以及投资报告，不要轻信名人以及什么第三方，要有自己的判断，你觉得老板请考察人吃吃喝喝玩玩，考察人能写出啥来？还有个别平台用马甲自己考察自己呢。最后就是不要把自己的棺材本都押上，就算有你熟悉的人告诉你保本保息，预期年化收益翻番，你也要留足你的棺材本，不要冲动，保持平常心。&lt;/p&gt;\n&lt;p&gt;　　当然如果你非要赌一把谁也不能阻止你，只不过赌之前你要有心理准备去承受未知的风险，如果投资失败倾家荡产请不要做危害社会的事情，比如去幼儿园砍小朋友，也不要做影响不好的事情，比如跳楼，会堵塞交通，还要浪费警察、消防员、医生等公共资源。成年人做事之前过过脑子，你死了对于其他陌生人来说无所谓的，连屁都不如，可是对于你的家庭来说确实100%的损失啊，你要为你的家人着想。&lt;/p&gt;\n&lt;p&gt;　　四、遵守纪律&lt;/p&gt;\n&lt;p&gt;　　投资是个严肃的事，所以要像军人一样严格遵守纪律，股市你只要做个预判，然后投点钱进去，计算好自己希望的涨幅和跌幅，比如涨个20%就抛掉，跌个10%立马割肉。很多人觉得这是歪理，如果遇到牛市，只涨20%就抛那得少赚多少钱啊，遇到下跌可以补仓，说不定可以涨回来呢。其实这都是心态没有摆正，如果你严格执行你预先设定好的投资策略，对于大盘涨再多不心动，达到设定的涨幅立刻抛货，对于下跌超出你设定的止亏点立刻割肉，你也许不会赚大钱，但也不会亏很多，而且从长期投资经验来看，你的预期年化收益会超过多数散户（我们不跟庄家和大户比）。&lt;/p&gt;\n&lt;p&gt;　　常在河边走哪能不湿鞋，投资前就要做好失败的心理准备，不要学有些人失败后就倾家荡产，然后要死要活的。总之投资的平台没有一是绝对安全的，就算有秒标是100%的预期年化利率也不要随便碰，因为投资的心态和纪律性实在太重要了。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(80, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499928978, 1499928978, 1499928957, 0, '99%的贷款被拒都是折在这上面的', '', '', '', '\n&lt;p&gt;　　不管是申请什么贷款，比如说房贷，车贷，还是无抵押贷款，银行让借款人来提供征信报告的，这个是贷款中最重要的，如果你的征信记录不好，那根本就不可能贷下来款。除了征信记录，贷款还要审核很多的信息，那么还有那些信息是决定着贷款成功的关键呢。&lt;/p&gt;\n&lt;p&gt;　　恶意逾期&lt;/p&gt;\n&lt;p&gt;　　比如说，个人不了解银行还款日的规定、银行工作人员没有明确告知还款日等原因造成个人没有及时还款;又或者是大学期间申请助学贷款，毕业后没有按时还贷等等情况，都会造成逾期。如果持卡人是故意的在超过期限，额度内透支并且在银行已经催收了，但是仍然拒不归还的行为，就是恶意逾期了。&lt;/p&gt;\n&lt;p&gt;　　为他人担保巨额债务&lt;/p&gt;\n&lt;p&gt;　　在给别人进行担保的时候，一定要谨慎，一定要根据自己的能力，不要超过自己的能力范围，更不要用自己的房产等生活必备品来做抵押，在合同中最好表明“一般保证担保”，否则，可能会给自己带来巨额的债务，大家一定要谨记。&lt;/p&gt;\n&lt;p&gt;　　个人已有负债(负债占收入的比例达70%)&lt;/p&gt;\n&lt;p&gt;　　一般来说，一个家庭的总收入至少达到负债的两倍，银行才能同意放款。由此可见，借款人在贷款前一定要根据银行规定的收入负债比率，合理评估自己能获批的大概额度。不过，需要特别说明的是，各家银行对收入负债比率的规定有所不同，借款人还需进行详细咨询才行。&lt;/p&gt;\n&lt;p&gt;　　征信多次被查询记录&lt;/p&gt;\n&lt;p&gt;　　如果在一段时间内，您的信用报告因为贷款、信用卡审批等原因多次被不同的银行、机构查询(查询3、4次及以上)，但您的信用报告又表明您没有获得新贷款或申请到信用卡，可能说明您向很多银行申请过贷款或信用卡但均未成功，这样的信息对您获得新贷款或申请信用卡可能会产生不利影响。&lt;/p&gt;\n&lt;p&gt;　　配偶的信用糟糕&lt;/p&gt;\n&lt;p&gt;　　申请购房贷款的时候，银行不光审核贷款申请人的资料和信用，还会对其配偶的信用进行审核，如果有一方的信用记录不良，那么很可能导致申请个人房贷失败。&lt;/p&gt;\n&lt;p&gt;　　贷款说着简单，其实要是真的办理起来是非常麻烦的，银行的审核时非常严格的，也不要因为想要快速贷款而作假信息，或者轻信小广告而受骗，一定要踏踏实实的等着银行的审核，如果信用资产什么的都没有太大的问题的话，一般都是可以办下来的。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(81, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499929010, 1499929010, 1499928992, 0, '福州个人房贷市场大“变脸”　贷款可先停本还息', '', '', '', '\n&lt;p&gt;　　今年房贷市场陆续发生新变化。春节过后在榕银行实行房贷新政，不但首套房贷首付比例降至两成，而且贷款利率最低打9折。记者注意到，如今房贷市场在还款方式等方面继续松绑。为了减轻先期还款压力，市民现可选择停本还息的还款方式。与此同时，多次降息后，利率处于历史低位，市民还可选用固定利率还房贷。&lt;/p&gt;\n&lt;p&gt;　　贷款可先停本还息&lt;/p&gt;\n&lt;p&gt;　　办理过贷款的市民对银行贷款规定并不陌生。通常1年以内的抵押消费贷款可以按月还息，到期一次性还本金，但长期限的贷款则要求按月还本付息。&lt;/p&gt;\n&lt;p&gt;　　记者了解到，在榕招行对于超过1年以上的住房抵押消费贷款可以选择自主月供的方式。如客户抵押贷款期限5年，利息按5年计算并摊到每个月的还款额中。不过本金并不是按照5年计算月供，而是采取“变通”方式，按20年计算每月还款额，并与利息一起还款。剩余本金在最后一期时一起还款。招行福州分行相关人士表示，本金拉长期限计算月供，这样先期月供中本金还得少，可以减轻客户先期还款的压力。&lt;/p&gt;\n&lt;p&gt;　　此外，福建海峡银行也推出了灵活的还款方式，除了常见的等额本息和等额本金还款方式外，现增加了停本还息方式。市民在约定的期间内只还利息，不还本金，等约定期满后再转为等额本息或等额本金还款方式。停本期限则是根据借款人的年龄、工作收入、所购房产等综合情况而定。&lt;/p&gt;\n&lt;p&gt;　　此前个别银行在外地推出停本还息还款方式。市民办理房屋按揭贷款，停本期为1年，从第二年开始，客户就正常还本金和利息。客户采用停本还息还款方式，也不用多付利息。&lt;/p&gt;\n&lt;p&gt;　　房贷利率可固定不变&lt;/p&gt;\n&lt;p&gt;　　市民办理房贷，过往利率多是浮动利率，即在办理按揭贷款后，当年遇有银行利率调整，利率从次年的1月开始调整。目前除了这种常见的浮动利率外，在榕市民还能选择固定利率房贷。&lt;/p&gt;\n&lt;p&gt;　　在榕一家股份制银行相关人士表示，该行现主推固定利率房贷，客户选择了固定利率房贷，即使今后利率有变动，利息也不会随之调整。另外，房贷利率水平主要与贷款人资信状况挂钩，固定利率房贷的利率与浮动利率水平一样。&lt;/p&gt;\n&lt;p&gt;　　不同利率的计算方式有不同的优势。在加息周期背景下，浮动利率因次年利率会跟着调整，因而比固定利率不划算，但在降息周期中，因为固定利率提前锁定，其则比浮动利率不合算。&lt;/p&gt;\n&lt;p&gt;　　经过多次降息，目前我国存贷款利率水平已处于历史最低位，未来利率走势如何?针对昨日出炉的2月CPI数据，中国民生银行首席研究员温彬分析认为，虽然相对欧美发达经济体利率水平还有进一步下调空间，但因受制于人民币汇率和通胀率的约束，国内降息空间有限。今年二季度，前期各项稳增长政策效果会陆续显现，预计CPI将保持在2%左右，通缩压力缓解，短期降息概率下降。&lt;/p&gt;\n&lt;p&gt;　　按揭房再抵押利率&lt;/p&gt;\n&lt;p&gt;　　有优惠&lt;/p&gt;\n&lt;p&gt;　　正常按揭贷款的房子如何“动”起来，实现不动产的增值再贷?银行一般要求户主先筹钱还剩余贷款，然后再申请住房抵押贷款用于消费等指定用途。如客户贷款额度剩20万元。现房子升值了，经评估如果价值为100万元，贷7成则可贷70万元，减去原有的20万元贷款，客户实际上还可贷出50万元用于消费、经营等。不过房子解押后再抵押，属于抵押消费贷款，利率需在基准利率基础上通常上浮30%甚至更高。&lt;/p&gt;\n&lt;p&gt;　　如今在榕另一家股份制银行则推出了新的抵押贷款业务。该业务流程为，客户拿正在按揭的房子向该银行申请抵押贷，银行会先帮客户审核，审批通过后客户再向原按揭银行办理解押手续，然后转按揭到这家银行。抵押贷款利率不再一刀切，而是分两部分计算。原先20万元按揭额度继续执行原按揭利率，另外50万元则按抵押贷款利率水平执行。据了解，该抵押贷款期限最长可达15年。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(82, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499929032, 1499929032, 1499929021, 0, '用银行信用贷款“配资”买房?', '', '', '', '\n&lt;p&gt;　　最近，杭州楼市火爆，一些资金不足的购房者绕道各类金融公司获取资金进入楼市(本报上周二刊发的《买房也玩“配资” 首付贷放大楼市杠杆 杭州中介紧急叫停房产金融产品》曾作报道)。同时，一些银行资金也在通过个人信用贷款，曲线进入楼市。&lt;/p&gt;\n&lt;p&gt;　　目前，杭州有近十家银行提供个人消费信用贷业务。申请这类业务不需要资产抵押，凭用户的个人信用记录，就可以向银行申请，最高可贷30万元。&lt;/p&gt;\n&lt;p&gt;　　不同银行年利率上浮比例相差数倍&lt;/p&gt;\n&lt;p&gt;　　目前，在杭州提供个人消费信用贷的银行，既包括国有大行，也有股份制银行和城商行。根据银行的业务介绍，这一贷款优先面向企业白领、供职于事业单位或者国有企业的客户，不需要资产抵押，大多只要提供身份证、户口本和收入证明就可办理。&lt;/p&gt;\n&lt;p&gt;　　一家股份制银行的客户经理说，满足银行认定的“优质职业”标准，即公务员、老师、医生、律师、世界500强企业等，且信用记录良好，就可以通过该行信用贷款的审批，最高贷款金额30万元，贷款期限5年，年利率为7.5%左右。普通企业的申请人，获批的信用贷款年利率在8.5%-9%之间。&lt;/p&gt;\n&lt;p&gt;　　另一家银行面向工薪阶层推出无抵押个人消费信用贷款“信易贷”，年利率5.87%，最高授信额度30万元，借款人只需要提供房产证、身份证、户口本、结婚证等证明就能快速办理，并能循环授信，随借随还。此外，银行还提出两个要求，第一，申请人之前不能有担保记录;第二，不能有同类型消费贷记录。如果有，必须先还清。&lt;/p&gt;\n&lt;p&gt;　　萧山某银行正在重推一款消费贷产品。做个贷的郑经理介绍说，以前多集中在萧山地区，现在开始扩展到杭州主城区。符合银行认定优质客户条件的，贷款年利率为基准上浮30%，如果“组团”，一次性有5个人(含)以上一起申请，利率最低可以申请到5.4%，即基准上浮25%，提交资料后，最快7天放款。&lt;/p&gt;\n&lt;p&gt;　　记者了解到，部分银行还会给大型合作事业单位或者优质企业提供一个“友情价”，低的甚至已经接近基准利率，为4.7%左右。&lt;/p&gt;\n&lt;p&gt;　　许多个人贷款资金流入楼市&lt;/p&gt;\n&lt;p&gt;　　“我们其实很清楚，近段时间，很多客户的个人信贷资金流入了楼市”，杭州一家城商行负责个人贷款的刘经理说，虽然客户们都声称贷款用于消费，从实际情况来看，有不少还是进了楼市。&lt;/p&gt;\n&lt;p&gt;　　刘经理说，按监管部门规定，个人贷款资金不得用于买房、炒股，个人贷款超过30万元须采用银行受托支付方式，即由贷款银行将贷款资金直接支付给借款人的交易对象。通常申请人在办理申请业务时，银行都会让他们签一份承诺书，如银行发现借款人擅自改变贷款用途，将依法追讨，以确保资金安全。&lt;/p&gt;\n&lt;p&gt;　　有一位客户经理说，“有些客户熟悉操作，申请贷款控制在30万元以下，等授信下来后，便提取现金，经过多道跨行转账后存入另外账户，再用于买房，从而增加了监管难度。”即便如此，刘经理表示，银行在授信时对客户资质有严格的审批，对有稳定收入来源的优质客户来说，几十万元的贷款资金进入楼市，造成坏账的可能性极小。&lt;/p&gt;\n&lt;p&gt;　　对于消费类信用贷&lt;/p&gt;\n&lt;p&gt;　　大行削减额度 小行积极推广&lt;/p&gt;\n&lt;p&gt;　　记者了解到，大小银行对于发放个人信用贷款的态度截然相反。大银行收紧额度，审核通过率很低，小银行积极拓展客户，完成贷款指标。&lt;/p&gt;\n&lt;p&gt;　　一家国有大行信贷部张经理表示，从去年开始，该行就削减了个人信用贷款的额度，总体向房贷倾斜。通常，审核通过率较低。即使通过审批，授信额度也不会很高。&lt;/p&gt;\n&lt;p&gt;　　“银行主要出于风控的考虑，现在如果有客户申请信用贷款，我们会推荐他们办理信用卡分期业务”，张经理很有感触地说，“如今银行在风控方面更加审慎，考核也更为严格。信贷员和客户经理考核一旦出现不良，不仅要负责清收坏账，还要扣罚风险金，甚至绩效金。如果在信贷审核中出现失误，还可能受记过、降职和撤职等处分。”&lt;/p&gt;\n&lt;p&gt;　　与大行态度明显不同，一些股份制银行和城商行却加大了对消费贷款的资源投入。一位城商行的个贷经理说，去年以来，银行积极推广个人消费贷款，也是规避风险的选择。银行主动收缩对企业的贷款，更多投放在个人消费贷款。也许相比对公业务，个人消费贷款单笔资金量不大，但银行却更容易控制风险。另外，相比企业贷款动辄1-2个月的审批时间，个人贷款审批周期短，利差收益也比较可观。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(83, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499929054, 1499929054, 1499929043, 0, '知道这些可以降低你的贷款成本', '', '', '', '\n&lt;p&gt;　　贷款对于现在的人来说是一件很平常的事情，现在买房，买车，甚至装修，旅游等都是可以贷款的，所以，是非常的方便的，但是贷款也不是那么的容易，有些贷款比较容易贷下来，但是有一些就比较严格，需要很多的资料审查。今天小编就来给大家说说，怎么可以降低贷款的成本。&lt;/p&gt;\n&lt;p&gt;　　【选对贷款机构】&lt;/p&gt;\n&lt;p&gt;　　不同的贷款产品、不同的贷款机构，利率执行标准也就不一样。就拿房贷来说，有些银行可以打折，有些银行按照基准利率执行，而有些银行会在基准利率上上浮。所以选择贷款行时，借款人应多找几家银行进行对比，看看哪家银行利率较低，再着手办理贷款，切勿盲目行事。&lt;/p&gt;\n&lt;p&gt;　　【选对贷款产品】&lt;/p&gt;\n&lt;p&gt;　　选择一款适合自己的贷款产品，是非常重要的，这对降低贷款成本有很大的作用。还是拿房贷来说，如果你按时足额缴存了公积金，那么应优先考虑住房公积金贷款，因为公积金贷款利率比商业贷款利率低，而且一般不上浮，这将为你节省一大笔利息支出。&lt;/p&gt;\n&lt;p&gt;　　【选对还款方式】&lt;/p&gt;\n&lt;p&gt;　　眼下可供借款人选择的还款方式有很多，比如一次性还本付息、双周供等等，不过现在我们以大家常见的还款方式为例来说明。&lt;/p&gt;\n&lt;p&gt;　　等额本息与等额本金是最常见的两种还款方式，别看他们只有一字之差，在不同的还款方式下需要借款人支出的贷款利息却差之甚远。&lt;/p&gt;\n&lt;p&gt;　　等额本息每期本金还款较少，总利息付出较高;与按月付息，到期还本相比，每月都需偿还本金，资金利用率低。&lt;/p&gt;\n&lt;p&gt;　　而等额本金总的利息支出较低,但是前期支付的本金和利息较多,还款负担逐月递减。&lt;/p&gt;\n&lt;p&gt;　　【选对贷款年限】&lt;/p&gt;\n&lt;p&gt;　　很多人选择贷款年限的时候是“随心所欲”，但如果你知道它与贷款成本的高低有很大关系，可能就不会如此草率的确定它了。&lt;/p&gt;\n&lt;p&gt;　　一般来说，贷款期限越长，贷款利息支出的就越多;反之，贷款期限越短，贷款利息支出的就越少。因为贷款期限的长短与贷款机构需要承担的风险成正比，也就是说，贷款期限越长，贷款机构需要承担的风险就越大，给予的贷款利率也就较高;反之亦然。所以，在自身还款能力允许的情况下，尽量缩短贷款期限。&lt;/p&gt;\n&lt;p&gt;　　大家在贷款的时候也不要盲目的听信一些小道消息，或者说可以快速贷款，或者各种便利的条件，这些有可能就是骗人的，只要自己多看一些资料，把贷款研究透彻，就会很容易。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(84, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499929081, 1499929081, 1499929065, 0, '很多人不知道的申请个人信用贷款小技巧', '', '', '', '\n&lt;p&gt;　　贷款种类很多，相比抵押贷款，个人信用贷款因为不需要抵押物，简单，快速，所以更加常见。今天小编就来给大家简单说说，申请个人信用贷款的一些小技巧。&lt;/p&gt;\n&lt;p&gt;　　【信用记录要保持良好】&lt;/p&gt;\n&lt;p&gt;　　有一个良好的个人信用在贷款中是非常重要的，因为很多的贷款机构都是根据个人信用的评分来发放贷款的，所以，想要成功的申请贷款或者信用卡，一定要养成良好的还款习惯，还要保管好个人身份信息，避免“被贷款”的放生。&lt;/p&gt;\n&lt;p&gt;　　【多选择几家来对比】&lt;/p&gt;\n&lt;p&gt;　　现在有很多个人信用贷款业务的贷款机构，所以，申请个人贷款的时候，不妨多对比几件，从贷款从贷款要求、贷款费用等方面仔细对比，看看哪款产品与自身条件更为匹配，再着手办理贷款。&lt;/p&gt;\n&lt;p&gt;　　【要分辨出贷款机构真假】&lt;/p&gt;\n&lt;p&gt;　　因为信用贷款是不需要抵押物的，所以备受大众青睐。因为这样，所以很多不法分子利用这些来诈骗，所以大家在申请信用贷款的时候，一定要会判断贷款机构的真假，一般声称单凭身份证即可贷款、利率过低或过高、没有规定的经营场所、联系方式、贷前收费等等这些一定是有问题的贷款机构，一定不要上当受骗。&lt;/p&gt;\n&lt;p&gt;　　贷款是一件非常平常的事儿，好办也不好办，个人信用占了很重要的部分，所以，不论是自己的还是配偶的，个人信用都要保持良好，办理贷款会事半功倍。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(85, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499929204, 1499929204, 1499929091, 0, '小额贷款有哪些优势?选择适合自己的贷款方式', '', '', '', '\n&lt;p&gt;　　小额贷款公司费用虽然比银行要高一点，但是他是有很多的优势的，今天小编就来给大家总结一下关于小额贷款公司的一些优势，希望大家可以选择到适合自己的贷款方式。&lt;/p&gt;\n&lt;p&gt;　　首先，小额贷款对信用没有那么高的要求&lt;/p&gt;\n&lt;p&gt;　　办理贷款个人信用是非常关键的，尤其是到银行申请贷款，如果个人信用稍微有一点不好，就会很容易被银行拒绝，但是通过贷款公司申请贷款就没有那么严格了，贷款公司会根据借款人的条件来制定不同的，符合借款人条件的贷款。不过，一般信用条件比较糟糕的，申请贷款的费用会比较高，信用实在是非常差的，也是不容易申请到贷款的。&lt;/p&gt;\n&lt;p&gt;　　其次，小额贷款办理速度是比较快的&lt;/p&gt;\n&lt;p&gt;　　相对于银行来说，贷款公司办理贷款的速度是会比较快的，部分的贷款公司申请贷款，借款人最快可以在两到三天就可以获得资金，所以，一些比较着急的朋友，如果直接通过贷款公司申请贷款会比银行快很多。&lt;/p&gt;\n&lt;p&gt;　　第三，借款人会省掉很多的麻烦&lt;/p&gt;\n&lt;p&gt;　　贷款公司比去银行要省很多事情，时间也不会太长，又不会要求个人信用完美，借款人只需要提交资料并签订合同就可以获得资金了。如果去银行的话，需要自己办理的手续非常繁杂，要耗费很多的精力时间来完成这些。&lt;/p&gt;\n&lt;p&gt;　　第四，小额贷款的种类比较多，可以有不同的选择&lt;/p&gt;\n&lt;p&gt;　　贷款公司会根据每个不同的人群来推出不同的产品，在贷款和还款方面，借款人可以选择的方式很多，这对于借款人来说是非常有利的，可以灵活的根据自己的条件来做出选择，如果去银行的话可能就比较死板了。&lt;/p&gt;\n&lt;p&gt;　　最后，小额贷款公司比较多，可以选择最适合自己的&lt;/p&gt;\n&lt;p&gt;　　市面上的小额贷款公司有很多，大家可以货比三家，选择适合自己的贷款公司。&lt;/p&gt;\n&lt;p&gt;　　现在办理贷款是非常方便的事情，不想以前一样只可以在银行办理，需要的手续繁多，对于借款人的要求也是非常严格的，想要成功的办下来贷款是非常不容易的，现在有了林林总总的贷款公司，对于借款人来说就方便多了。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(86, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499929350, 1499929350, 1499929220, 0, '小额贷款者必看！免得下次被坑的你！', '', '', '', '\n&lt;p&gt;　　利用小额贷款者急于拿到钱款的心理，哄骗被害人签订巨额欠条，然后利用欠条追债。近日，上海市奉贤区检察院以敲诈勒索罪将韩肖等16名犯罪嫌疑人提起公诉。&lt;/p&gt;\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;img src=&quot;20170713/daf0b9a9d1b75ed368e47f5b86f5b0b2.png&quot; title=&quot;image.png&quot; alt=&quot;image.png&quot;&gt;&lt;/p&gt;\n&lt;p&gt;　　案件1：不速之客深夜堵锁眼泼油漆&lt;/p&gt;\n&lt;p&gt;　　2015年年初的一天深夜，上海市民杨某家里来了一伙不速之客，他们在门外骂骂咧咧，用脚踹门，还用胶水堵住锁眼，在墙上用红色油漆写“还钱”。杨某究竟得罪了什么人，被这样骚扰？&lt;/p&gt;\n&lt;p&gt;　　事情还要从2014年12月21日说起。杨某因生意周转急需用钱，在网上搜到一家名为“大众易贷”的贷款公司，帖子上说，有房产证就可以快速办理贷款，杨某拨打了帖子上的电话，并约好与该公司的人见面。&lt;/p&gt;\n&lt;p&gt;　　和杨某见面的人名叫张阳，大概三四十岁。了解了杨某的一些基本情况后，张阳拿出一张借条让杨某填写。杨某注意到，借条是事先打印好的，只需要填上名字、所借金额和还款日期就可以了，收款人一栏是空白的。“为什么我只借了1.5万元，要写15万元的借条？”杨某表示不解，张阳解释说：“这是行规，你只需还1.5万元就可以。”&lt;/p&gt;\n&lt;p&gt;　　借条写好后，张阳拿走了杨某的房产证原件、机动车产权证原件、户口本原件，并当场给了杨某8000元钱，说扣除3000元利息外，余下的4000元晚上通过银行卡转账给他。谁料，到了晚上，说好的4000元迟迟没有到账，杨某就给张阳打了电话，张阳说明天直接给现金，并约好了见面地点。&lt;/p&gt;\n&lt;p&gt;　　次日上午，杨某开着车来到约定地点，然而出现在他面前的人不是张阳，而是4个地痞模样的人。领头人说：“我们是替别人讨债来的，这是你写的15万元借条，还钱吧。”杨某说：“我是写了这个借条，可我没拿到这么多钱啊？”领头人说：“你有什么问题找借钱的人去！”&lt;/p&gt;\n&lt;p&gt;　　随后，杨某连续给张阳打了几个电话，一直没人接，他才意识到自己中了圈套。看着这伙人来势汹汹，杨某只得让对方先把自己的大众POLO轿车开走。因杨某不愿意还钱，这伙人开始持续骚扰杨某家。&lt;/p&gt;\n&lt;p&gt;　　与杨某的情况类似，家住奉贤区的沈某也遭到了这伙人的暴力骚扰。2015年4月7日，沈某来到派出所报案。&lt;/p&gt;\n&lt;p&gt;　　案件2：哄骗小额贷款者签下高额欠条&lt;/p&gt;\n&lt;p&gt;　　警方在深入调查后，发现这不是一件单纯的诈骗案，背后有一个诈骗团伙多次以虚假借款的方式实施敲诈勒索。通过技术分析后，民警先后找到杨某、艾某等多名被害人，并基本掌握了该团伙的人员情况和敲诈方式。&lt;/p&gt;\n&lt;p&gt;　　2015年4月23日下午，警方兵分几路将多名犯罪嫌疑人抓获归案，随后又根据嫌疑人口供将在逃的部分嫌疑人抓获。&lt;/p&gt;\n&lt;p&gt;　　经查，犯罪嫌疑人韩肖等人先是在网上发帖，虚构信息称“凭上海身份证1小时放款”，可办理只针对上海人的小额贷款，以吸引被害人。&lt;/p&gt;\n&lt;p&gt;　　被害人上钩后，由韩肖、张阳等人约被害人见面，在不给付或者仅给付小额本金的情况下，以公司需要审核资信，无抵押贷款需要虚增借款额为由，哄骗被害人在打印好的借条及协议上写下高于借款额几倍的数额。&lt;/p&gt;\n&lt;p&gt;　　借条到手后，犯罪嫌疑人王海滨等人以言语威胁、电话骚扰等手段，以对被害人家里封堵锁孔、泼油漆、扔大便及对被害人家属进行骚扰等恶劣行径强行收账。&lt;/p&gt;\n&lt;p&gt;　　一年作案18起，涉案金额近200万元&lt;/p&gt;\n&lt;p&gt;　　截至案发，韩肖参与作案10起，张阳参与作案9起，王海滨参与作案11起……从2014年4月至2015年4月，查实16名犯罪嫌疑人作案18起，涉案金额近200万元。&lt;/p&gt;\n&lt;p&gt;　　该案被移送至奉贤区检察院后，检察官经过审查发现这是一个组织和运行较为松散的团伙，成员间既合作作案，也单独作案，犯罪所得也基本上是谁参与谁分赃。&lt;/p&gt;\n&lt;p&gt;　　检察官介绍说，犯罪嫌疑人利用被害人急需小额贷款，哄骗被害人写下了高额借条，然后上门敲诈勒索，作案方式具有极强的迷惑性。一些被害人发现进入圈套后，迫于嫌疑人的压力和恐吓选择“花钱买太平”，没有及时报案或者寻求法律帮助，给了嫌疑人可乘之机。嫌疑人正是利用被害人这种心理，拿着借条有恃无恐，威胁被害人，屡屡得逞。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(87, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499929379, 1499929379, 1499929360, 0, '为实体企业融资贷款松绑 知识产权可作融资担保抵押', '', '', '', '\n&lt;p&gt;　　从市金融办获悉，为积极贯彻落实《重庆市人民政府办公厅进一步落实涉企政策促进经济平稳发展的意见》，更好服务实体经济，扩大企业融资渠道，我市通过整合银行、评估、保险、担保、收储、法务等资源，市知识产权质押融资服务平台已全面对接中小微科技型企业融资需求和中国人民银行的征信系统，形成网上网下协同运行的快速服务通道。&lt;/p&gt;\n&lt;p&gt;　　“没想到通过知识产权也能获得贷款。”重庆莱美制药有限公司负责人说，知识产权变现金，对科技型企业融资是巨大的利好。&lt;/p&gt;\n&lt;p&gt;　　去年，重庆莱美制药有限公司准备从银行贷款来提升产业规模，虽然企业经营情况非常好，又有一定的固定资产，但提供给银行的抵押物还是不够。在此情况下，该企业将一项知识产权进行质押贷款，专利评估价值是2.6亿元，最后从银行获得了1.3亿元贷款，这及时解决了企业的资金难关，使其得到飞跃式发展。&lt;/p&gt;\n&lt;p&gt;　　2015年10月，我市发布了《重庆市知识产权质押融资管理办法（试行）》（以下简称《办法》），明确支持科技型中小微企业开展知识产权质押融资。&lt;/p&gt;\n&lt;p&gt;　　按照《办法》的具体规定，企业融资方式主要有两种，一种是企业将知识产权财产权出质给银行等金融机构，银行等金融机构作为知识产权质权人向企业提供资金；第二种是企业将知识产权财产权出质给融资担保机构或贷款保证保险机构，由融资担保机构、贷款保证保险机构为企业融资提供担保、保证保险，银行向企业提供资金。&lt;/p&gt;\n&lt;p&gt;　　同时，我市还建立了两项知识产权质押融资风险补偿制度，一项是对企业知识产权质押贷款提供担保或保险的，给予担保或保险公司不超过每笔贷款1%的担保费和保险费补助。另一项是按不超过审定企业知识产权质押贷款坏账本金损失的30%给予补偿，每笔贷款损失补偿不超过150万元。&lt;/p&gt;\n&lt;p&gt;　　“由于知识产权是无形资产，不像固定资产那样容易估值，这在以前成为阻碍银行开展此项业务的绊脚石。”市金融办相关负责人介绍，这项扶持政策则调动了银行的积极性，从而为企业质押贷款提供便利。&lt;/p&gt;\n&lt;p&gt;　　据了解，自开展试点以来，截至2015年11月，我市实现专利质押融资176笔，涉及专利500余件，累计质押融资金额13.832亿元。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(88, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1499929404, 1503372554, 1499929380, 0, '“首付贷”被叫停 换马甲继续“零首付”', '', '', '', '\n&lt;p&gt;　　近期，多地出台措施叫停房地产首付贷，但记者在北京、上海、天津、深圳等地调查发现，零首付仍然可操作，一些地方首付贷换上“换房贷”“消费贷”“过桥贷”等“马甲”后横行楼市。&lt;/p&gt;\n&lt;p&gt;　　业内人士表示，虽然中央明令禁止，但目前热门楼市的首付贷问题依然较为突出。仅深圳市就初步排查30余家企业所投放首付贷规模约在25亿元至30亿元。&lt;/p&gt;\n&lt;p&gt;　　首付贷换“马甲”&lt;/p&gt;\n&lt;p&gt;　　央行负责人“两会”期间表示，对房地产中介机构、房地产开发企业以及他们与P2P平台合作开展的金融业务开展清理和整顿，打击提供首付贷融资、加大购房杠杆、变相突破住房信贷政策的行为。&lt;/p&gt;\n&lt;p&gt;　　记者近日在多地调查发现，首付贷表面上已偃旗息鼓，但一些中介仍表示，可根据情况牵线搭桥。有些中介还联合担保、小额贷款公司甚至银行操作“契税贷”“赎楼贷”等业务。&lt;/p&gt;\n&lt;p&gt;　　记者发现，在一些网贷平台直接搜索首付贷基本找不到相关产品，但是仍有各种疑似首付贷产品。“365地产家居网”有一款“新居贷”产品，写着“为首付资金不足的购房人提供低成本的资金”；在“安家贷”平台，有“优房贷”“换房贷”等多款产品，客服称，贷款用途是否用于购房首付是“客户自己的事”。&lt;/p&gt;\n&lt;p&gt;　　揭变种首付贷三大手法&lt;/p&gt;\n&lt;p&gt;　　记者调查发现，这些穿着“马甲”的首付贷资金来源多样，有的是中介机构提供自有资金“垫资”，有的是网贷平台通过投融资需求错配提供贷款资金，还有中介和地产商将银行机构的信用消费贷款转换为首付款“曲线入市”。&lt;/p&gt;\n&lt;p&gt;　　——“高评高贷”实现零首付。在上海，有中介表示，可以通过“高评高贷”实现零首付。链家地产天津园荫道店置业顾问介绍说，假设买200万元的房产，按20%首付需支付40万元，但通过评估公司把房价“高评”到250万元，可变成首付50万元、贷款200万元。中介可以先垫付50万元首付给卖方，待200万元银行贷款打到卖方账户后，卖方再将50万元归还中介。“高评高贷”周期约1个月，买方只需支付这50万元“过桥资金”1个月的利息，相当于零首付购得一套200万元的房产。在该流程中，中介多以自有资金进行“过桥垫付”，并从中获取服务费及过桥资金利息，稳赚不赔，但风险都转嫁至银行。&lt;/p&gt;\n&lt;p&gt;　　——通过P2P网贷首付款。P2P网贷门槛普遍较低，多数申请贷款只需提供身份证及工作、收入等证明，材料越多、贷款额度越高，资金去向可以模糊填写。&lt;/p&gt;\n&lt;p&gt;　　从资金来源看，P2P投资者为购房贷款“做了嫁衣”。某P2P平台投资项目中一款年化收益为7%的产品，用途描述为“住房消费”。据客服介绍，其对应标的就是该平台融资项目中的购房贷、装修贷及赎楼贷。&lt;/p&gt;\n&lt;p&gt;　　——银行“消费贷”成了首付款。天津市南开区天拖地块某楼盘销售人员表示，首付款不够，可协助申请天津某股份制银行的“消费贷”，无需抵押、不计入征信，最高可贷30万元。记者致电该银行了解到，“消费贷”是该银行一款信用贷款，银行把钱打到客户卡内，客户按月还款，购房时卡内余额可直接使用。&lt;/p&gt;\n&lt;p&gt;　　银监会2013年曾下发文件，明确消费信贷不能用于购房，且贷款用途应以发票作为证明材料。但中介人员称，通过担保机构，这些证明“都能搞定”，银行一般没有精力逐一审核，哪怕消费贷用于购房，实际操作中通常“睁一只眼闭一只眼”。&lt;/p&gt;\n&lt;p&gt;　　业内人士指出，各类变种首付贷在放大楼市金融杠杆、吹大楼市泡沫同时，也将透支购房者偿债能力，并将楼市风险向银行业等金融系统传导，需高度警惕。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(89, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499929430, 1499929430, 1499929415, 0, '四类人申请银行贷款易遭歧视', '', '', '', '\n&lt;p&gt;　　去年年底的时候，大表姐Jennifer Lawren曾公开控诉好莱坞的性别歧视，揭露女性演员的薪酬比同一部片的男演员薪酬低。歧视这件事不单单是发生在演艺圈，在贷款界也是屡见不鲜，现在我们就来说说哪些人难从银行获贷。&lt;/p&gt;\n&lt;p&gt;　　自由职业者&lt;/p&gt;\n&lt;p&gt;　　自由职业者从银行拿信用贷款，堪比登天。对于这种情况，银行给出的解释是：自由职业者没有稳定的收入，而信用贷款又不需要借款人提供抵押物，为了控制信贷风险，不得不这样做。&lt;/p&gt;\n&lt;p&gt;　　高危职业者&lt;/p&gt;\n&lt;p&gt;　　工作不稳定难获贷的情况，我们还能接受，但是有工作的人难获贷，就难以理解了。据悉，银行对借款人的职业会进行划分，如果借款人属于建筑、煤矿等高危行业人士，申请贷款将遭拒。&lt;/p&gt;\n&lt;p&gt;　　未婚人士&lt;/p&gt;\n&lt;p&gt;　　在当下，未婚并不是一种荣耀，反而在很多场合会受到歧视，比如贷款、就业等等。在银行眼中，未婚人士还款能力不强，出现逾期还款的几率高，为了保障贷款的顺利回收，不会轻易为这类人发放贷款。&lt;/p&gt;\n&lt;p&gt;　　低收入人士&lt;/p&gt;\n&lt;p&gt;　　银行贷款对借款人的收入都有一定的要求，一般信用贷款要求借款人月收入不低于五千元，抵押贷款门槛稍低，但若借款人收入过低，不管是抵押还是无抵押都将被拒。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(90, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499929464, 1499929464, 1499929442, 0, '公积金如何贷款购房？这份攻略让你心中有数', '', '', '', '\n&lt;p&gt;　　所有楼盘都可以用公积金贷款买房了。昨日，2016重庆春季房交会开幕，与往年不同的是，本届春交会上，参展楼盘公积金贷款基本全覆盖。金融机构扎堆在住房金融服务专区亮相，住房公积金管理中心的咨询台前更是围满不少前来咨询的购房者。&lt;/p&gt;\n&lt;p&gt;　　市住房公积金管理中心负责春交会现场咨询的刘先生昨日一上午就接待了20多个购房者，参展楼盘这次基本实现了住房公积金贷款全覆盖，购房者对此相当关心。&lt;/p&gt;\n&lt;p&gt;　　他说：“如果是个人用公积金贷款的话，最高贷款额度为40万元，首付为两成；如果以夫妻名义共同使用公积金贷款的话，额度为房价的80%，最高贷款额度为60万元。”&lt;/p&gt;\n&lt;p&gt;　　刘先生举例称，如果房子总价是80万元，首付两成为16万元，贷款则需要64万元，夫妻双方公积金贷款最高额度为60万元，有4万元的差额需要用商业贷款补充。如果房价是70万元，首付两成为14万元，贷款需要56万元，夫妻双方则可以贷56万元，以实际贷款为准。&lt;/p&gt;\n&lt;p&gt;　　除了春季房交会公积金贷款资金供应充足外，今年全年公积金贷款资金额度供应也很充足。据介绍，今年，住房公积金贷款资金供应计划额度比去年全年增加50%，额度达到230亿元。相关负责人表示，如果今年这个计划额度不够，到时还可以继续追加。&lt;/p&gt;\n&lt;p&gt;　　不少想用公积金贷款买房的购房者想咨询需要满足哪些条件？贷款流程又是怎样的？有什么注意事项？对此，记者进行了梳理，并奉上住房公积金贷款买房全攻略。&lt;/p&gt;\n&lt;p&gt;　　期房申请公积金贷款&lt;/p&gt;\n&lt;p&gt;　　申请公积金贷款需提供哪些资料？&lt;/p&gt;\n&lt;p&gt;　　（一）借款人及产权共有人（均含配偶）的身份证及户口（或其他有效居留证件）；&lt;/p&gt;\n&lt;p&gt;　　（二）合法有效的《重庆市商品房买卖合同》；&lt;/p&gt;\n&lt;p&gt;　　（三）已缴纳不低于购房总价款20%自筹资金的凭据；&lt;/p&gt;\n&lt;p&gt;　　（四）借款人及配偶收入证明；&lt;/p&gt;\n&lt;p&gt;　　（五）借款人及产权共有人婚姻状况证明（含单身证明）；&lt;/p&gt;\n&lt;p&gt;　　（六）公积金中心要求的其他资料。&lt;/p&gt;\n&lt;p&gt;　　★ 以上资料均需提供复印件（统一为A4标准）两套，申请和签约时需携原件备验。&lt;/p&gt;\n&lt;p&gt;　　申请公积金贷款办理有哪几步？&lt;/p&gt;\n&lt;p&gt;　　第一步：购房职工可通过售房单位，也可到贷款承办银行或住房公积金管理机构咨询办理贷款的有关事宜，测算可贷额度和期限。&lt;/p&gt;\n&lt;p&gt;　　第二步：购房人向承办银行提出贷款申请，同时提交相关资料复印件，同时携原件备验。&lt;/p&gt;\n&lt;p&gt;　　第三步：获得批准的借款申请人接经办人员通知后，按约定的时间到约定地点签订借款合同等相关合同文本。&lt;/p&gt;\n&lt;p&gt;　　第四步：办理购房交易、抵押登记手续。&lt;/p&gt;\n&lt;p&gt;　　第五步：已办妥所有手续的贷款由贷款承办银行按《借款合同》的约定向借款人发放，贷款资金直接划转借款人所购楼盘的售房单位指定的账户。&lt;/p&gt;\n&lt;p&gt;　　二手房申请公积金贷款&lt;/p&gt;\n&lt;p&gt;　　申请公积金贷款需提供哪些资料？&lt;/p&gt;\n&lt;p&gt;　　（一）借款人及产权共有人（均含配偶）身份证及户口（或其他有效居留证件）；&lt;/p&gt;\n&lt;p&gt;　　（二）合法有效的购房合同；&lt;/p&gt;\n&lt;p&gt;　　（三）所购二手房原《房地产权证》（或《房屋所有权证》和《国有土地使用证》）；&lt;/p&gt;\n&lt;p&gt;　　（四）借款人及其配偶收入证明；&lt;/p&gt;\n&lt;p&gt;　　（五）借款人及产权共有人婚姻状况证明（含单身证明）；&lt;/p&gt;\n&lt;p&gt;　　（六）《房地产价格评估报告》；&lt;/p&gt;\n&lt;p&gt;　　（七）售房人出具的划款账户证明（公积金中心委托机构受理的除外）；&lt;/p&gt;\n&lt;p&gt;　　（八）公积金中心要求的其他资料。&lt;/p&gt;\n&lt;p&gt;　　★ 以上资料均需提供复印件（统一为A4标准）两套，申请和签约时需携原件备验。&lt;/p&gt;\n&lt;p&gt;　　申请公积金贷款办理有哪些程序？&lt;/p&gt;\n&lt;p&gt;　　第一步：购房职工可到住房公积金管理机构或贷款承办银行咨询办理二手房贷款的有关事宜，初步测算可贷额度和期限。&lt;/p&gt;\n&lt;p&gt;　　第二步：借款申请人领取《贷款申请审批表》和《申请人情况调查表》并认真如实填写，同时提交相关申请资料。公积金管理中心或贷款承办银行初验借款申请人资料合格后，出具《价格评估通知书》。&lt;/p&gt;\n&lt;p&gt;　　第三步：借款人委托经住房公积金管理机构认可的房地产价格评估机构进行二手房价格评估，评估费用由借款人承担。&lt;/p&gt;\n&lt;p&gt;　　第四步：依据二手房价格评估结果确定可贷额度和期限，并将借款申请人购买二手房自筹资金部分存入指定专户，取得缴款凭据后交公积金管理中心或贷款承办银行。&lt;/p&gt;\n&lt;p&gt;　　第五步：公积金中心经办人与借款人谈话，并对贷款申请进行审查。&lt;/p&gt;\n&lt;p&gt;　　第六步：借款人及有关当事人按照经办人员通知的时间，到指定地点签订借款合同等相关合同文本。&lt;/p&gt;\n&lt;p&gt;　　第七步：办理二手房产权过户、抵押登记手续。&lt;/p&gt;\n&lt;p&gt;　　第八步：已办妥所有手续的贷款由贷款承办银行按《借款合同》的约定向借款人发放，贷款资金和借款人自筹资金直接划转售房人指定的账户。&lt;/p&gt;\n&lt;p&gt;　　权威解答&lt;/p&gt;\n&lt;p&gt;　　1.申请公积金贷款得满足哪些条件？&lt;/p&gt;\n&lt;p&gt;　　市住房公积金管理中心：住房公积金贷款对象为申请贷款前6个月（含）及以上按时足额连续缴存住房公积金（含异地缴存的本市或外地户籍职工），在我市城镇购买自有住房，具有完全民事行为能力的个人。&lt;/p&gt;\n&lt;p&gt;　　2.公积金贷款利率多少？与商业贷款比有何优势？&lt;/p&gt;\n&lt;p&gt;　　市住房公积金管理中心：住房公积金贷款按中国人民银行的规定执行，并随国家利率调整而调整。目前住房公积金贷款利率为：贷款五年以上为3.25%，贷款五年以内（包括五年）为2.75%。&lt;/p&gt;\n&lt;p&gt;　　以贷款60万为例，与商业贷款同期利率相比，住房公积金贷款年限10年、20年和30年可分别为借款人累计节约利息6.5384万元、14.5548万元和23.9371万元。&lt;/p&gt;\n&lt;p&gt;　　3.当前我市住房公积金贷款最多能贷多少？&lt;/p&gt;\n&lt;p&gt;　　市住房公积金管理中心：住房公积金个人贷款最低首付20%，最高贷款为购房总价的80%，个人最高额度为40万元。夫妻双方最高可贷款额度为60万元。&lt;/p&gt;\n&lt;p&gt;　　4.住房公积金贷款最多可贷多少年？&lt;/p&gt;\n&lt;p&gt;　　市住房公积金管理中心：住房公积金贷款最多可贷30年（包括二手房）。同时贷款到期年限不能超过法定退休年龄后10年。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(91, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499929490, 1499929490, 1499929476, 0, '十五种情形可提取公积金 延长贷款年限至退休后5年', '', '', '', '\n&lt;p&gt;　　住房公积金政策事关民生，牵着千家万户的宜居梦。近日，市住房公积金管理中心工作人员来到烟台文化中心广场开展集中宣传活动，有关公积金的提取 和贷款成为咨询热点。记者获悉，我市再次放宽了住房公积金的提取范围和贷款条件，比如，异地求学的，失业2年以上等可提取住房公积金，允许异地缴存住房公 积金在烟台购房的本市户籍职工，申请住房公积金贷款等，住房公积金正惠及更多职工。&lt;/p&gt;\n&lt;p&gt;　　十五种情形可提取公积金&lt;/p&gt;\n&lt;p&gt;　　“给父母在烟台买了一套房子，可以提取我的公积金给他们用吗？”“我失业好几年了，以前缴的住房公积金怎么办？”“听说物业费也可以提取公积金？”活动现场，有关住房公积金的提取条件成为热点话题。&lt;/p&gt;\n&lt;p&gt;　　市住房公积金管理中心工作人员介绍，去年以来我市将住房公积金的提取范围再次放宽，提取范围由“职工本人、配偶及未婚子女”调整为“职工本 人、配偶、父母和子女”；大修自住住房的提取时限由“取得规定购房凭证1年内一次性提取”调整为“在取得规定购房凭证3年内一次性提取”。&lt;/p&gt;\n&lt;p&gt;　　总的来说，符合下列十五种情形之一的职工可申请提取住房公积金账户内的存储余额：购买、建造、翻建、大修自住住房的；偿还购建自住住房贷款 本息的；职工及配偶在本市无自有住房且租赁住房的；支付普通自住住房物业费的；缴纳住宅专项维修资金的；离休、退休的；出境定居的；职工死亡、被宣告死亡 的；享受城镇居民最低生活保障的；完全丧失劳动能力的；本人、配偶或子女患重大疾病，造成家庭生活特别困难的；农村进城务工人员与单位终止劳动关系的；与 单位终止劳动关系，且户口迁往外地的（含外地户口职工离开烟台的）；异地求学的；失业2年以上的。&lt;/p&gt;\n&lt;p&gt;　　延长贷款年限至退休后5年&lt;/p&gt;\n&lt;p&gt;　　“我可以贷多少住房公积金？”来自开发区某企业的李女士问道。工作人员介绍，公积金贷款额度计算跟夫妻双方单位的缴存基数有关。在45万元 的最高贷款限额内，借款人家庭实际可贷款额度需同时满足下列两个条件（金额去整至万元）：其一，可贷额度≤(借款申请人公积金缴存基数+配偶公积金缴存基 数)×12×贷款年限×0.5；其二，月还款额≤(借款申请人月实际收入+配偶月实际收入)/2。&lt;/p&gt;\n&lt;p&gt;　　关于公积金贷款额度和年限。目前，购买新建商品房和二手房最高贷款额45万元，最长贷款期限30年。贷款年限加上借款人借款时年龄不能超过法定退休年龄后五年，二手房贷款期限还不得超过所购房屋土地使用权的剩余使用年限。&lt;/p&gt;\n&lt;p&gt;　　去年以来，我市再次放宽公积金贷款的申请条件：住房公积金贷款申请人缴存住房公积金条件由连续缴存满1年调整为6个月；允许异地缴存住房公积金在烟台购房的本市户籍职工，申请住房公积金贷款。&lt;/p&gt;\n&lt;p&gt;　　公积金贷款优越性大&lt;/p&gt;\n&lt;p&gt;　　关于公积金贷款首付比例及利率，也有不少市民咨询。记者获悉，购买首套住房且套型建筑面积在144平方米以下(含144平方米)的家庭(包 括借款人、配偶及未成年子女，下同)，贷款首付比例不低于20%；购买144平方米以上的，首付款比例不低于30%。个人住房公积金贷款利率按照中国人民 银行同期公布的利率执行。对存量贷款客户来讲，在贷款期内遇利率调整，从次年1月1日起执行新利率。公积金贷款利率分两档，目前5年以下（含5年）年利率 为2.75%，5年以上年利率为3.25%。&lt;/p&gt;\n&lt;p&gt;　　眼下，商业贷款的利率下降不少，但住房公积金贷款低存低贷的优越性仍不可比拟。工作人员现场算了一笔账，以贷款45万元，期限30年，采用 等额本息还款方式计算，住房公积金贷款与商业贷款对比结果如下：关于“年利率”，公积金3.25%，商业贷款4.9%（基准利率），相差1.65%；关于 “每月还款”，公积金贷款1958.43元，商业2388.27元，相差429.84元；关于“30年计息总额”，公积金贷款需支付255034.24 元，商业贷款需支付409777.29元，少付出154743.05元利息。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(92, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499929552, 1499929552, 1499929537, 0, '轻信他人 贸然向贷款公司提供个人资料被骗', '', '', '', '\n&lt;p&gt;　　大学生小杨和其他两名同学本想投资创业，不想被人欺骗，在私人公司分别贷下了15万元左右的贷款。&lt;/p&gt;\n&lt;p&gt;　　急用钱 她小额贷款成功&lt;/p&gt;\n&lt;p&gt;　　小杨是长春工业大学一名大一学生。“去年11月份，我急需用钱，当时正好看到有人在发广告，当我与对方取得联系后，对方称胡某可以贷款，于是我就认识了胡某。”27日，小杨说自己接触了胡某后得知，通过他在网络平台上提供一些基本信息资料，即使没有抵押物，也可以申请小额贷款。于是小杨便动了心，让胡某帮助申请1000元贷款。&lt;/p&gt;\n&lt;p&gt;　　很快，小杨便拿到了打到自己银行卡中的贷款，胡某同时取得了小杨的信任。之后小杨又有两名同学分别在胡某处做了贷款。&lt;/p&gt;\n&lt;p&gt;　　抛诱饵 让她投钱开公司&lt;/p&gt;\n&lt;p&gt;　　今年年初，胡某突然联系小杨说，自己手头有个创业的项目。&lt;/p&gt;\n&lt;p&gt;　　“他说现在大学生分期贷款买手机的人特别多，这是一个商机，我们可以把握一下，希望我和同学都能投资点钱。”小杨说，因为自己没钱，所以拒绝了，但胡某说他认识可以做私人贷款的公司，贷款很容易，只要将钱贷出来开个卖手机的实体店，很快就能将钱赚回来。&lt;/p&gt;\n&lt;p&gt;　　听了胡某的话，小杨和其他两名同学都挺动心。就这样，胡某带着小杨和另外两名同学，在长春一家私人贷款公司贷了款。“当时稀里糊涂地向那家贷款公司提供了个人资料，我们三个每人贷了15万左右的钱。”小杨说。“钱贷下来后，我曾分多次将贷款打给胡某，让他尽快将手机店开起来。”小杨说，大部分贷款她都是通过手机转账的方式，将钱转给胡某的。&lt;/p&gt;\n&lt;p&gt;　　贷完款 骗人者彻底消失&lt;/p&gt;\n&lt;p&gt;　　但让小杨他们想不到的是，事情远没那么简单。“我们三个对胡某十分信任，起初根本没有起疑心。”小杨同学说，那时候为了和胡某确定投资项目，三个人面谈了多次，胡某对店面开设，投资的预期回报都计划得很清楚。&lt;/p&gt;\n&lt;p&gt;　　但是三个人在收到了第一个月部分收益后，就再也没有在胡某处得到收益。“胡某对我们说，收益得慢慢给，后来几个月连客户都找得困难，生意不好做。”小杨同学说，慢慢的他们连胡某都很难找到。一次他们三个人终于将胡某约出来，但胡某借口说到公司去一趟，让他们在外面等，结果就从此消失了。&lt;/p&gt;\n&lt;p&gt;　　“我们进公司去找他，里面的人说他已经走了。”小杨说，之后再也没有联系上胡某。&lt;/p&gt;\n&lt;p&gt;　　随后，记者根据小杨提供的胡某电话联系他，发现电话已停机。&lt;/p&gt;\n&lt;p&gt;　　苦还钱 仨学生被骗45万&lt;/p&gt;\n&lt;p&gt;　　胡某消失后，小杨他们三个的麻烦事就来了。“当初胡某带我们在私人贷款公司填了很多表格，我们每个人的名下都有约15万元的贷款，开始的时候贷款还不上，公司就派人来找我们谈，没有办法，我们就跟家里人说了。”小杨哭着说，她才上大一，家人为了不影响她的学业，开始帮她还贷款。&lt;/p&gt;\n&lt;p&gt;　　小杨三个人的家庭都是工薪阶层，这些贷款压得他们及家人都喘不过气来。&lt;/p&gt;\n&lt;p&gt;　　后来，小杨和其他两位同学在长春市公安局宽城分局报了警，目前警方已经对此事立案调查。&lt;/p&gt;\n&lt;p&gt;　　“我们在这将自己的遭遇讲出来，就是想提醒大学生理智对待创业和贷款，一定要考虑自身能力，不能听人蛊惑，以免后悔莫及。”小杨说，他们希望尽快将胡某找到，摆脱贷款给他们和家人带来的困扰。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(93, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499929600, 1499929600, 1499929560, 0, '5个门道：借钱给别人，利息怎么约定？', '', '', '', '\n&lt;p&gt;　　近年来资金需求越来越活跃，借款中有关利息的纠纷也越来越多，好多小伙伴因为不懂怎么在借款合同中约定利息，白白吃亏。今天我就来跟大家说说借款利息中的5个门道。&lt;/p&gt;\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;img src=&quot;20170713/f9115e412c29c5a4ebe15b3a1887f805.png&quot; title=&quot;image.png&quot; alt=&quot;image.png&quot;&gt;&lt;/p&gt;\n&lt;p&gt;　　一、利息需要“白纸黑字”&lt;/p&gt;\n&lt;p&gt;　　虽然我们的小伙伴们都很讲信用，平常借款时也常常口头约定利息，但是万一遇到一个诚意不够的朋友事后不承认就麻烦了。&lt;/p&gt;\n&lt;p&gt;　　到了法庭，对于自然人之间的借条，没有约定利息或者利息约定不够明确的，都会被认作是无息借款。这时出借人就再难要求对方支付借款期限内的利息了。俗话说“白纸黑字”才有底，借款利息一定要写明。&lt;/p&gt;\n&lt;p&gt;　　二、月息多少才合适&lt;/p&gt;\n&lt;p&gt;　　利息约定并不是随心所欲而有一定讲究，小伙伴们约定利息时月息最多到三分（3%）。即使真正收取的利息超过了三分的，借款人也能起诉到法院要求返还不超过三分的利息。&lt;/p&gt;\n&lt;p&gt;　　约定了三分以内的利息，只要借款人将利息真正地还给了小伙伴们，那么该约定合法有效，借款人无法要回；但若约定利息超过二分，且对方未还利息，贷款人起诉到法院，法院仅支持二分利以内的部分。&lt;/p&gt;\n&lt;p&gt;　　一句话总结（看下图，年息），如果约定月息三分，借款人按时还了，万事大吉；如果借款人不按时还小伙伴起诉到法院，法院最多按月息两分支持。&lt;/p&gt;\n&lt;p&gt;　　三、利息不是你想扣就能扣&lt;/p&gt;\n&lt;p&gt;　　尽管看起来本金和利息都是人民币，但是在法律上两者属性可大不相同。因此，小伙伴们借款书写借条时最好不要事先约定要在本金中扣除利息，这样的约定事后会被法院认定为无效条款。&lt;/p&gt;\n&lt;p&gt;　　当然，实际出借时也不能随意预先扣除部分利息，否则，事后维权法院只会按照实际出借的金额来认定本金。&lt;/p&gt;\n&lt;p&gt;　　四、逾期不还？逾期利息事先写&lt;/p&gt;\n&lt;p&gt;　　对于任何一个作为出借方的小伙伴来说，最关心的问题一定是借款人能否按时还款，因此，事先在借条中约定清楚逾期利息才是明智之举。&lt;/p&gt;\n&lt;p&gt;　　如果因为疏忽大意在签订借条时实在忘记了约定逾期利息，而事后又出现了借款人没有按时还款的情况，这时就要分情况来维权获取逾期利息了。&lt;/p&gt;\n&lt;p&gt;　　如果约定了借期内的利率，出借的小伙伴可以按照借期利率主张逾期利息；如果整个借款什么利息都没有约定的话，法院可以按照年利率6%来支持出借人的逾期利息主张。&lt;/p&gt;\n&lt;p&gt;　　五、还款抵充顺序很重要&lt;/p&gt;\n&lt;p&gt;　　经常出现这样的情况：借款人已经分期好几次还款，但是最终也没有还清本息，如果此时借款人说我先还的是本金，没还的都是利息，岂不借钱出去的小伙伴很吃亏？&lt;/p&gt;\n&lt;p&gt;　　为了在这样的局面下不至于太过被动，因此最好在签订借条时写清楚“还款应当按照先抵充利息，再抵充本金的顺序来进行”，这样当借款人的还款不足时，按照这样的顺序来抵充可以最大限度保障出借人的利益。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(94, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499929630, 1499929630, 1499929617, 0, '注意！这些人最容易被拒绝贷款！', '', '', '', '\n&lt;p&gt;　　由于住房公积金个贷率一直处于高位，南昌市公积金管理中心日前宣布，从5月16日起暂停受理缴存职工“商转公”贷款申请。这是最近一个月来，继福州、郑州先后暂停办理这一业务后，第三个收紧“商转公”贷款业务的城市。&lt;/p&gt;\n&lt;p&gt;　　“商转公”，是一些地区为鼓励购房推出的政策，指的是购房者在申请公积金贷款难以满足的情况下，可以按公积金贷款利息申请商业贷款，其利息差额部分由住房公积金管理中心补给银行。“去库存”目标之下出台了诸多激励政策，越来越多的居民购房，使住房公积金的使用率大幅提高，很多城市超过了100%，住房公积金“被贷空”，推出“商转公”有助于解燃眉之急。但是，由于一段时间内房价高涨，政府不得不控制房价，停下“商转公”也就成了必然选择。&lt;/p&gt;\n&lt;p&gt;　　无论是“商转公”的推出还是暂停，都反映了地方政府对房地产市场的政策施力方向。我国的房地产市场建立20年来，由于地方政府将其作为拉动经济增长、增加财政收入的引擎来使用，支持市场发展、鼓励居民购房的政策频繁出台，导致房价快速走高，而政府基于自己承担的社会责任，在这种压力之下又必须出台政策控制房价。这种格局导致的一个结果，是名目繁多的政策形成了对市场的高杠杆作用，而频繁出台的不同政策经常互相打架，市场被高度扭曲。&lt;/p&gt;\n&lt;p&gt;　　购房者更是必须追着政策来行动。比如，在政策鼓励购房时抓紧购房，以享受到“政策红利”；而当房价在市场的集体意志下迅速冲高时，越来越多的人会转而观望，等待下一次鼓励政策出台。&lt;/p&gt;\n&lt;p&gt;　　住房公积金本是公积金缴存者的一种住房互助基金，公积金管理中心的职责只是以政府信誉代为保管和投放贷款。但是，在政策对房地产市场的高杠杆作用之下，公积金也被纳入了政策“组合拳”。放大公积金贷款额度，虽然让购房人享受到更多“政策红利”，却造成了公积金“被贷空”的后果，导致一些城市的公积金放贷周期过度拉长，公积金对支持购房的效能也难以正常发挥。因此，公积金“被贷空”，并且影响继续贷款，其实是政策发力不当的结果。&lt;/p&gt;\n&lt;p&gt;　　目前，公积金未实现全国统筹管理，地区与地区之间在公积金的使用上，出现了“苦乐不均”，“被贷空”正是由此出现的问题。在就业人口跨省流动已常见的情况下，住房公积金却不能跨省提取，造成了一些就业人口流出地区公积金不够用。建立公积金全国统筹制度的呼声已有多年，但迟迟未有政策响应，即使是去年年底修订后公布的《住房公积金管理条例》也只是以省级统筹为目标。在互联网技术已经高度普及的当下，解决这个问题，并无太大的难度，关键在于很多地方的政府部门将公积金当作自己支配的一块肥肉，忽略了缴存者才是公积金权利人这一本质属性。&lt;/p&gt;\n&lt;p&gt;　　从去年年底开始的房地产市场“去库存”是一项艰巨任务，但在实施过程中忽视市场机制，导致并不存在“去库存”要求或者要求不高的一、二线城市房价暴涨。实践证明，频繁变动的房地产政策只能对市场造成扭曲，如果说房地产市场因为事关民众的基本保障，因而需要政府发挥作用的话，这种政策也应该有长效机制，让购房者有明确的预期。至于住房公积金，应该建立“量入“为什么别人总是很容易就申请到贷款了，但是轮到我的时候为何却困难重重?”最近小编听到很多关于这样的言辞。&lt;/p&gt;\n&lt;p&gt;　　相信很多借款人都有这样的感受。你我都知道，不论是公积金贷款，还是商业贷款，每一个资金出借机构对借款人都有着一定的要求。所以，并不是所有人都可以轻而易举地成功办理贷款。&lt;/p&gt;\n&lt;p&gt;　　那么，哪些人在申请借款时，最容易被拒绝贷款呢??小编认为主要有以下几个方面，大家可以参考下&lt;/p&gt;\n&lt;p&gt;　　信用白户&lt;/p&gt;\n&lt;p&gt;　　“信用白户”就是指从未在银行办理过信用卡或贷款的一类人。由于透过信用报告也无法看清他们的信用面貌，所以有些“保守派”机构并未向这些人开放。不过，一些秉持着“一回生两回熟”经营理念的金融机构也会愿意为这类人提供贷款。&lt;/p&gt;\n&lt;p&gt;　　征信不良的人&lt;/p&gt;\n&lt;p&gt;　　征信不良者可真就是犯了所有金融机构的“大忌讳”了!两年内出现过连续逾期3次或累计逾期6次的严重程度，资金出借机构会条件反射一般拒绝贷款。个人征信不良记录唯有靠时间和良好的还款习惯去修复并重塑良好的信用，届时才能重新获得贷款的资格。&lt;/p&gt;\n&lt;p&gt;　　没有银行流水的人&lt;/p&gt;\n&lt;p&gt;　　银行流水作为收入的佐证，是贷款申请时不可或缺的重要材料。当然，如果你有自己每月往工资卡里存入工资所产生出的自存流水，在一些民间借贷机构面前同样奏效。只是，如果你连这也没有的话，若想贷款，结局恐怕只能用“可惜”二字来形容了。&lt;/p&gt;\n&lt;p&gt;　　刚参与工作的人&lt;/p&gt;\n&lt;p&gt;　　稳定的工作意味着有稳定的还款来源。因此，如果借款人没有稳定的工作也没有另外的财产性收入，或者刚工作不久，正处在试用期的话，那么申请贷款被拒绝的概率比较大。一般来说，收入越高工作越稳定的人群，申请贷款成功的概率也越高。&lt;/p&gt;\n&lt;p&gt;　　住所不稳定者&lt;/p&gt;\n&lt;p&gt;　　虽说贷款对户籍没有限制，本地和外地人员同享一样的“贷遇”。但如果外来人员没有稳定的居所，将意味着一旦客户逾期还款，未来的催收工作将颇有挑战意味，不排除有“大海捞针”的可能性。为了尽可能避免这种状况，金融机构也可能会拒绝住所不稳定的借款人的贷款申请。&lt;/p&gt;\n&lt;p&gt;　　农民工&lt;/p&gt;\n&lt;p&gt;　　碰上农民工“赤手空拳”，没有任何抵押物相助的求贷申请，大多会选择婉言拒绝。究其原因，不是嫌贫爱富，实在是资金风险难以把控：一来农民工大多是现金收入，缺少工资流水，不满足申请条件;二来工作性质所致，收入极其不稳定;三来学历和法律意识薄弱，还款意愿不禁让人打问号。&lt;/p&gt;\n&lt;p&gt;　　未成年人&lt;/p&gt;\n&lt;p&gt;　　未成年人没有稳定的收入来源以及还款能力欠缺，因此是不能申请房屋贷款的。除此之外，办理贷款的条件之一就是借款人的年龄必须在18岁以上，部分银行甚至会要求借款人的年龄在20岁以上，因此未成年人贷款是一定会被拒绝的。&lt;/p&gt;\n&lt;p&gt;　　年龄过大的人&lt;/p&gt;\n&lt;p&gt;　　有的金融机构规定，贷款人的年龄加上贷款年限不可以超过65岁，也就是说，贷款人的年龄如果过大，那么成功贷款的可能性就会变低。此外，年龄过大的人，身体素质会下降，可能会有大笔的医疗支出，这就会直接影响到其按时还款。为出”的制度，不能为鼓励购房而盲目提高可贷数额，造成“被贷空”。从根本上说，应尽快建立全国统筹机制，让公积金缴存者的权利得到充分保障。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(95, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499929655, 1499929655, 1499929640, 0, '公积金“被贷空”是忽视市场机制的结果', '', '', '', '\n&lt;p&gt;　　由于住房公积金个贷率一直处于高位，南昌市公积金管理中心日前宣布，从5月16日起暂停受理缴存职工“商转公”贷款申请。这是最近一个月来，继福州、郑州先后暂停办理这一业务后，第三个收紧“商转公”贷款业务的城市。&lt;/p&gt;\n&lt;p&gt;　　“商转公”，是一些地区为鼓励购房推出的政策，指的是购房者在申请公积金贷款难以满足的情况下，可以按公积金贷款利息申请商业贷款，其利息差额部分由住房公积金管理中心补给银行。“去库存”目标之下出台了诸多激励政策，越来越多的居民购房，使住房公积金的使用率大幅提高，很多城市超过了100%，住房公积金“被贷空”，推出“商转公”有助于解燃眉之急。但是，由于一段时间内房价高涨，政府不得不控制房价，停下“商转公”也就成了必然选择。&lt;/p&gt;\n&lt;p&gt;　　无论是“商转公”的推出还是暂停，都反映了地方政府对房地产市场的政策施力方向。我国的房地产市场建立20年来，由于地方政府将其作为拉动经济增长、增加财政收入的引擎来使用，支持市场发展、鼓励居民购房的政策频繁出台，导致房价快速走高，而政府基于自己承担的社会责任，在这种压力之下又必须出台政策控制房价。这种格局导致的一个结果，是名目繁多的政策形成了对市场的高杠杆作用，而频繁出台的不同政策经常互相打架，市场被高度扭曲。&lt;/p&gt;\n&lt;p&gt;　　购房者更是必须追着政策来行动。比如，在政策鼓励购房时抓紧购房，以享受到“政策红利”；而当房价在市场的集体意志下迅速冲高时，越来越多的人会转而观望，等待下一次鼓励政策出台。&lt;/p&gt;\n&lt;p&gt;　　住房公积金本是公积金缴存者的一种住房互助基金，公积金管理中心的职责只是以政府信誉代为保管和投放贷款。但是，在政策对房地产市场的高杠杆作用之下，公积金也被纳入了政策“组合拳”。放大公积金贷款额度，虽然让购房人享受到更多“政策红利”，却造成了公积金“被贷空”的后果，导致一些城市的公积金放贷周期过度拉长，公积金对支持购房的效能也难以正常发挥。因此，公积金“被贷空”，并且影响继续贷款，其实是政策发力不当的结果。&lt;/p&gt;\n&lt;p&gt;　　目前，公积金未实现全国统筹管理，地区与地区之间在公积金的使用上，出现了“苦乐不均”，“被贷空”正是由此出现的问题。在就业人口跨省流动已常见的情况下，住房公积金却不能跨省提取，造成了一些就业人口流出地区公积金不够用。建立公积金全国统筹制度的呼声已有多年，但迟迟未有政策响应，即使是去年年底修订后公布的《住房公积金管理条例》也只是以省级统筹为目标。在互联网技术已经高度普及的当下，解决这个问题，并无太大的难度，关键在于很多地方的政府部门将公积金当作自己支配的一块肥肉，忽略了缴存者才是公积金权利人这一本质属性。&lt;/p&gt;\n&lt;p&gt;　　从去年年底开始的房地产市场“去库存”是一项艰巨任务，但在实施过程中忽视市场机制，导致并不存在“去库存”要求或者要求不高的一、二线城市房价暴涨。实践证明，频繁变动的房地产政策只能对市场造成扭曲，如果说房地产市场因为事关民众的基本保障，因而需要政府发挥作用的话，这种政策也应该有长效机制，让购房者有明确的预期。至于住房公积金，应该建立“量入为出”的制度，不能为鼓励购房而盲目提高可贷数额，造成“被贷空”。从根本上说，应尽快建立全国统筹机制，让公积金缴存者的权利得到充分保障。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(96, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499929678, 1499929678, 1499929665, 0, '小企业信用贷款申请条件', '', '', '', '\n&lt;p&gt;　　一、小企业信用贷款介绍&lt;/p&gt;\n&lt;p&gt;　　小企业信用贷款是一种无需抵押，无需担保，手续简便，期限灵活，审批快捷，放款迅速，为企业提供流动资金，配合企业的不同业务需求，帮助企业顺利拓展国内、国际业务的贷款。&lt;/p&gt;\n&lt;p&gt;　　二、小企业信用贷款申请条件&lt;/p&gt;\n&lt;p&gt;　　（一）对企业主的年龄限制&lt;/p&gt;\n&lt;p&gt;　　由于信用贷款无第三方担保，这就要求企业自身具有较好的经营稳定性以及良好的盈利能力，企业主经营理念稳健，对所在行业有清晰的认识以及丰富的从业经验。因此，银行对申请信用贷款的企业主年龄限定在了25至65周岁之间。&lt;/p&gt;\n&lt;p&gt;　　（二）重视企业主人品&lt;/p&gt;\n&lt;p&gt;　　银行向来将借款人“人品”放在信贷调查的第一位，如果借款人人品不好，不仅不利于银行在贷前调查中获得真实的信息，难以核实其经营状况和合理的贷款用途；而且也增加了银行监控其信贷资金流向的难度。因此，银行要求信用贷款的申请人必须具有良好的道德品质，遵纪守法，无吸毒、赌博等不良行为；同时，信用状况良好，无重大不良信用记录，经银行信用评级取得A级以上。&lt;/p&gt;\n&lt;p&gt;　　（三）弱化对小微企业资产实力的考察&lt;/p&gt;\n&lt;p&gt;　　由于信用贷款直接以借款人自身信用作保证，无第二还款来源作保障，但小微企业资产实力普遍偏弱，如果对其资产实力要求过高，无疑加大了小微企业申请信用贷款的难度，也偏离了银行推行信用贷款的初衷。因此，在基于借款人良好人品和信用的基础上，如果借款人在当地有固定的住所，具有合法稳定的经济收入，较强的还款意愿及按期偿还贷款本息的能力，便可申请银行的信用贷款。&lt;/p&gt;\n&lt;p&gt;　　小微企业申请信用贷款用于日常生产经营，银行一般要求借款人在当地有固定的生产经营场所且当前主营业务经营年限不少于2年；银行存款账户现金流量与生产经营情况相匹配。一方面保障了借款人具有充足、稳定的还款来源；另一方面也防范了信贷资金被挪用的风险。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}');
INSERT INTO `jr_portal_post` (`id`, `parent_id`, `post_type`, `post_format`, `user_id`, `post_status`, `comment_status`, `is_top`, `recommended`, `post_hits`, `post_like`, `comment_count`, `create_time`, `update_time`, `published_time`, `delete_time`, `post_title`, `post_keywords`, `post_excerpt`, `post_source`, `post_content`, `post_content_filtered`, `more`) VALUES
(97, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499929701, 1499929701, 1499929687, 0, '贷款买房，个人信用很重要', '', '', '', '\n&lt;p&gt;　　新手购房，最困惑的莫过于贷款，好不容易看上了房子，开了一堆证明，等到银行办理房贷，却因为个人征信的不良记录卡了壳，这时候你才突然意识到，个人征信记录是多么重要。&lt;/p&gt;\n&lt;p&gt;　　日前，国务院印发《关于建立完善守信联合激励和失信联合惩戒制度加快推进社会诚信建设的指导意见》(以下简称《意见》)，更是将诚信建设制度化，《意见》中四类失信行为被列入黑名单，负面影响包括买房。&lt;/p&gt;\n&lt;p&gt;　　案例：&lt;/p&gt;\n&lt;p&gt;　　张先生因失信无法贷款买房&lt;/p&gt;\n&lt;p&gt;　　常州市民张先生就曾因失信行为而在买房子上遭遇重大挫折。&lt;/p&gt;\n&lt;p&gt;　　张先生看中了市区一套优质房源，因为怕被人“抢”走，他立马拍板向开发商交了几十万元的定金和首付。而后在办理银行贷款时却被银行告知曾有多次逾期还信用卡记录无法贷款。张先生和开发商交涉，对方称要么付清尾款要么就按违约处理，若按违约处理的话不但要没收定金，甚至还可能拿不回首付。实在是难舍心头好的张先生最后不得不选择全款买下。&lt;/p&gt;\n&lt;p&gt;　　除上述情况外，国务院最新出台《意见》，强调了将受到惩戒的另四类失信行为，其中一项惩戒就包括“失信黑名单”在办理住房贷款时不但会提高贷款利率，甚至有可能贷不到款。&lt;/p&gt;\n&lt;p&gt;　　点名：&lt;/p&gt;\n&lt;p&gt;　　四类失信行为要小心&lt;/p&gt;\n&lt;p&gt;　　第一类是严重危害人民群众身体健康和生命安全的行为，包括食品药品、生态环境、工程质量、安全生产、消防安全、强制性产品认证等领域的严重失信行为。&lt;/p&gt;\n&lt;p&gt;　　第二类是严重破坏市场公平竞争秩序和社会正常秩序的行为，包括贿赂、逃税骗税、恶意逃废债务、恶意拖欠货款或服务费、恶意欠薪、非法集资、合同欺诈、传销、无证照经营、制售假冒伪劣产品和故意侵犯知识产权、出借和借用资质投标、围标串标、虚假广告、侵害消费者或证券期货投资者合法权益、严重破坏网络空间传播秩序、聚众扰乱社会秩序等严重失信行为。&lt;/p&gt;\n&lt;p&gt;　　第三类是拒不履行法定义务，严重影响司法机关、行政机关公信力的行为，包括当事人在司法机关、行政机关作出判决或决定后，有履行能力但拒不履行、逃避执行等严重失信行为。&lt;/p&gt;\n&lt;p&gt;　　第四类是拒不履行国防义务，拒绝、逃避兵役，拒绝、拖延民用资源征用或者阻碍对被征用的民用资源进行改造，危害国防利益，破坏国防设施等行为。&lt;/p&gt;\n&lt;p&gt;　　后果：&lt;/p&gt;\n&lt;p&gt;　　吃穿住行皆受影响&lt;/p&gt;\n&lt;p&gt;　　失信“黑名单”除了在办理房贷时受到影响外，其他吃穿行等方方面面都会受到阻碍。&lt;/p&gt;\n&lt;p&gt;　　如果失信，政府先要跟你“过不去”。项目审批上会从严审核，还会限制股票发行上市融资或发行债券等，另外，还“严格限制申请财政性资金项目，限制参与有关公共资源交易活动，限制参与基础设施和公用事业特许经营”。&lt;/p&gt;\n&lt;p&gt;　　同时，失信还会让你在行业里无法立足，对严重失信企业及其法定代表人、主要负责人和对失信行为负有直接责任的注册执业人员等实施市场和行业禁入措施。&lt;/p&gt;\n&lt;p&gt;　　失信者同时寸步难行，因为《意见》中指出要对有履行能力但拒不履行的严重失信主体实施限制出境和限制购买不动产、乘坐飞机、乘坐高等级列车和席次、旅游度假、入住星级以上宾馆及其他高消费行为等措施。&lt;/p&gt;\n&lt;p&gt;　　有奖有惩，如果真正做到诚信也将得到褒奖。讲诚信者将在各类政府优惠政策、金融政策和教育就业创新和社保等领域，得到重点支持和优先便利。&lt;/p&gt;\n&lt;p&gt;　　影响期：&lt;/p&gt;\n&lt;p&gt;　　失信记录只保留5年，可参加公益服务等方式修复&lt;/p&gt;\n&lt;p&gt;　　一旦失信，“黑名单”是否会背一辈子?当然不是。&lt;/p&gt;\n&lt;p&gt;　　《指导意见》提到，涉及个人的信用记录，在失信行为终止之日起，这个失信记录只保留5年，5年后予以消除。而不再作为惩戒对象的期限，具体由相关部门来制定。除此之外，支持有失信行为的个人通过社会公益服务等方式修复个人信用。&lt;/p&gt;\n&lt;p&gt;　　对于失信个体，总的原则是鼓励纠错、有限期惩戒、有条件修复。当然，最好的办法还是不失信，只要发生了失信行为，必然要付出沉重的代价。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(98, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499929724, 1499929754, 1499929680, 0, '个人贷款建家庭光伏&quot;发电站&quot;是否可行', '', '', '', '\n&lt;p&gt;　　近几年，光伏发电在东阳市取得了快速发展，不少市民都在自家屋顶建起了光伏&quot;发电站&quot;，但是较为昂贵的投资费用仍然让不少家庭望而却步。&lt;/p&gt;\n&lt;p&gt;　　日前，东阳富民村镇银行与金华光驰能源科技有限公司合作，推出东阳首个&quot;光伏贷&quot;，帮助市民解决资金难题。那么贷款建家庭光伏&quot;发电站&quot;可行吗?&lt;/p&gt;\n&lt;p&gt;　　东阳富民村镇银行试水&quot;光伏贷&quot;&lt;/p&gt;\n&lt;p&gt;　　昨天，东阳市画水镇华溪四村的王严局家引来了众多围观的村民，他家屋顶的光伏&quot;发电站&quot;建成完工，他也成了华溪四村第一户贷款建光伏&quot;发电站&quot;的家庭。&lt;/p&gt;\n&lt;p&gt;　　王严局经营一家生产实木凳子的家庭作坊，平时耗电量较大，为了节省日常电费开支，他决定在自家屋顶建一个光伏&quot;发电站&quot;。&quot;粗算了下，建一个光伏&quot;发电站&quot;总投资费用超过12万元。&quot;王严局说，如果一下子拿出这部分钱，感觉有些困难。&lt;/p&gt;\n&lt;p&gt;　　在朋友推介下，王严局向东阳富民村镇银行申请了&quot;光伏贷&quot;，并网后用发电收益来偿还银行贷款。&quot;银行贷款8万元，自己出了4万元左右。&quot;王严局说，8万元贷款分8年还清，平均每个月才一千多块钱，压力并不大。&lt;/p&gt;\n&lt;p&gt;　　在东阳，像王严局这样贷款建光伏&quot;发电站&quot;的村民越来越多。&quot;目前已经发放了5笔光伏贷’，更多的贷款的客户正在审批中。&quot;东阳市富民村镇银行客户经理许天说，因为额度不大，还款期限长，客户还是比较乐意接受。而且从目前的反馈来看，客户的满意度较高。&lt;/p&gt;\n&lt;p&gt;　　贷款建光伏&quot;发电站&quot;合不合算?&lt;/p&gt;\n&lt;p&gt;　　如果把建屋顶光伏&quot;发电站&quot;看成是一项投资，那么贷款建光伏&quot;发电站&quot;何不合算?&lt;/p&gt;\n&lt;p&gt;　　在贷款建光伏&quot;发电站&quot;之前，王严局就算了一笔账，他家的屋顶共70多平方米，安装了40块光伏发电组板，一年发电量1.2万度来算，按照商铺出租户店家每度电费1元来算，所发电全部用万，则一年可以节省电费1.2万元。&lt;/p&gt;\n&lt;p&gt;　　此外，国家和省、市都出台了太阳能光伏发电的配套和扶持政策，按照王严局家的光伏&quot;发电站&quot;面积算，每年可享受国家补贴5040元(期限20年)，省级补贴1200元(期限20年)，东阳市补贴2400元，一年享受补贴总额8640元，算上节省的1.2万元电费，年均收益率在20%左右。&lt;/p&gt;\n&lt;p&gt;　　家庭光伏发电项目在每户家庭用电自给自足的同时，当所发的电有富裕时，还可将多余的电以0.42元每度价格卖给供电局，因此不用担心发出来的电会浪费。&quot;按照这样一个计算方法，再把光伏发电站’损耗、维修等费用考虑进去，再减去银行的利息，贷款建光伏发电站’还是相当合算。&quot;王严局说。&lt;/p&gt;\n&lt;p&gt;　　家庭光伏发电大规模推行是否可行?&lt;/p&gt;\n&lt;p&gt;　　家庭光伏发电项目既然有良好的收益，又有银行提供的&quot;光伏贷&quot;支持，那么大规模推行家庭光伏发电项目是否可行?&lt;/p&gt;\n&lt;p&gt;　　&quot;光伏贷的推出，在一定程度上促进了家庭光伏发电的推广，但是具体还是要看市场的需求。&quot;东阳富民村镇银行副行长李磊伟说，对于普通家庭，家庭光伏发电项目投资回报周期较长，成本相对较高，接受程度并不高。&lt;/p&gt;\n&lt;p&gt;　　而对于一些商户、家庭作坊等耗电量相对较大客户，比较容易接受&quot;光伏贷&quot;，因此安装意愿较为强烈。&quot;此外，安装家庭光伏发电项目基本是别墅、排屋、独立房，市区的套房并不适合。&quot;李磊伟说。因此在他看来，家庭光伏发电项目在东阳全市范围内大面积推广还是有一定难度。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(99, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499929794, 1499929794, 1499929761, 0, '暴力贷款谁之过?法律监管和行业信用缺一不可', '', '', '', '\n&lt;p&gt;　　网络借贷又出了新词：“裸贷”。申请贷款时要求女大学生提供手持身份证的裸照，并留下父母等亲朋的联系方式，经核实确认后便可放款。当发生违约不还的情况时，放贷人以公开裸照和与借款人父母联系等手段为要挟，逼迫借款人还款。&lt;/p&gt;\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;img src=&quot;20170713/216fa4504c39035f98e49cf41d3b8155.png&quot; title=&quot;image.png&quot; alt=&quot;image.png&quot;&gt;&lt;/p&gt;\n&lt;p&gt;　　由于“裸贷”可借款金额基本在5000元以上，一些女大学生出于个人消费、创业，甚至堕胎等理由，就此打了“裸条”。但涉及“裸贷”的利率往往较高，有的高达周利率30%。利滚利之下，让本就没有经济基础的女大学生无力偿还，只得面临裸照被公开的恶果。&lt;/p&gt;\n&lt;p&gt;　　针对学生的网络贷款收益巨大&lt;/p&gt;\n&lt;p&gt;　　不知这些女大学生在进行“裸贷”时，有没有考虑过随后的风险。那些放贷人手里握着裸照等信息，可以随时对借款人进行威胁，甚至在还款后还可能将女大学生的裸照和个人信息进行贩卖。这些潜在风险，绝不是贷款来的那些钱所能弥补的。&lt;/p&gt;\n&lt;p&gt;　　曾经饱受诟病的“校园贷”就存在借款利率普遍较高的问题，个别项目借款学生所付年利率达25%以上，超出了我国法律限定的范围。根据最高人民法院1991年发布的《关于人民法院审理借贷案件的若干意见》：“民间借贷的利率可以适当高于银行的利率，各地人民法院可根据本地区的实际情况具体掌握，但最高不得超过银行同类贷款利率的四倍(包含利率本数)。超出此限度的，超出部分的利息不予保护。”而“裸贷”显然也是这种形式的高利贷。&lt;/p&gt;\n&lt;p&gt;　　在实际生活中，“校园贷”、“裸贷”往往通过网络借贷平台进行，而为了规避责任，平台方会要求借款人自担风险，如果发生借贷纠纷，平台方一般不进行干涉和处理。这种来自平台方的监管缺位，客观造成了低门槛、高风险、野蛮化的暴力贷款在校园中蔓延，也使得网络借贷平台的形象大打折扣。作为服务提供方的网络借贷平台，有义务对平台上的交易进行审查，不应推脱说是借贷双方的个人行为而放弃监管。&lt;/p&gt;\n&lt;p&gt;　　法律监管和行业诚信缺一不可&lt;/p&gt;\n&lt;p&gt;　　今年4月，教育部办公厅和银监会办公厅联合发布通知，指出部分不良网络借贷平台诱导学生过度消费，甚至陷入高利贷陷阱，要求加强对校园网络借贷平台的监管和整治。在互联网金融的浪潮中，一些网络借贷平台确实为人们筹集资金提供了方便，像网络众筹、蚂蚁花呗、京东白条等，相信很多人都有过尝试。但是，网络借贷平台的良性发展，离不开政府的监管，不然蓬勃发展的校园金融消费市场，早晚会因信用缺失遭遇“滑铁卢”。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(100, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499929819, 1499929819, 1499929806, 0, '个人住房按揭贷款办理流程如何进行?有哪些注意事项?', '', '', '', '\n&lt;p&gt;　　个人住房按揭贷款办理流程如何进行?需要哪些证件?一般来说，购房者办理楼盘按揭的具体程序如下：(1)选择房产购房者如想获得楼盘按揭服务，在选择房产时应着重了解这方面的内容。购房者在广告中或通过销售人员的介绍得知一些项目可以办理按揭贷款时，还应进一步确认发展商开发建设的房产是否获得银行的支持，以保证按揭贷款的顺利取得。&lt;/p&gt;\n&lt;p&gt;　　按揭贷款办理流程&lt;/p&gt;\n&lt;p&gt;　　(2)按揭贷款办理流程中，申请购房者在确认自己选择的房产得到银行按揭支持后，应向银行或银行指定的律师事务所了解银行关于购房者获得按揭贷款支持的规定，准备有关法律文件，填报《按揭贷款申请书》。&lt;/p&gt;\n&lt;p&gt;　　(3)签订购房合同银行收到购房者递交的按揭申请有关法律文件，经审查确认购房者符合按揭贷款的条件后，发给购房者同意贷款通知或按揭贷款承诺书。购房者即可与发展商或其代理商签订《商品房预售、销售合同》。&lt;/p&gt;\n&lt;p&gt;　　(4)签订楼盘按揭合同购房者在签订购房合同，并取得交纳房款的凭证后，持银行规定的有关法律文件与发展商和银行签订《楼宇按揭抵押贷款合同》明确按揭贷款数额、年期、利率、还款方式及其他权利义务。&lt;/p&gt;\n&lt;p&gt;　　(5)办理抵押登记、保险购房者、发展商和银行持《楼宇按揭抵押贷款合同》及购房合同到房地产管理部门办理抵押登记备案手续。对期房，在竣工后应办理变更抵押登记。在通常情况下，由于按揭贷款期间相对较长，银行为防范贷款风险，要求购房者申请人寿、财产保险。购房者购买保险，应列明银行为第一受益人，在贷款履行期内不得中断保险，保险金额不得少于抵押物的总价值。在贷款本息还清之前，保险单交由银行执管。&lt;/p&gt;\n&lt;p&gt;　　(6)开立专门还款账户购房者在签订《楼宇按揭抵押贷款合同》后，按合同约定，在银行指定的金融机构开立专门还款账户，并签订授权书，授权该机构从该账户中支付银行与按揭贷款合同有关的贷款本息和欠款。银行在确认购房者符合按揭贷款条件，履行《楼宇按揭抵押贷款合同》约定义务。并办理相关手续后，一次性将该贷款划入发展商在银行开设的银行监管账户，作为购房者的购房款。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(101, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499929864, 1499929864, 1499929831, 0, '贷款不还有什么后果?小至影响信用,大到资产被查封', '', '', '', '\n&lt;p&gt;　　欠债还钱，天经地义，想要赖账，那你就得考虑考虑：贷款不还有什么后果?无论你是欠个人还是银行的债务，这些都是无法轻易逃脱的。从被催收到被起诉甚至被强制执行，欠款不还的路并不好走。小编总结了五点影响，看完或许你就会珍惜自己的信誉值了。&lt;/p&gt;\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;img src=&quot;20170713/8c792ca3ce51f654d15a8b5c74fd2da5.png&quot; title=&quot;image.png&quot; alt=&quot;image.png&quot;&gt;&lt;/p&gt;\n&lt;p&gt;　　后果一：遭遇罚息和违约金&lt;/p&gt;\n&lt;p&gt;　　贷款不还，首先遭遇到的就是高额罚息，一些金融机构在罚息的基础上，还需要你支付一笔违约金，这些费用加起来，可是一笔不菲的开支，如果不想自己深陷贷款泥潭，无法自拔，还是养成良好的还款习惯。&lt;/p&gt;\n&lt;p&gt;　　后果二：信用受损&lt;/p&gt;\n&lt;p&gt;　　借了银行的钱，逾期不还，你的信用报告就会留上污点，以后再想申请信用卡、申请贷款，就是难上加难。因为蝇头小利，错失自己的信用财富，其实非常得不偿失。&lt;/p&gt;\n&lt;p&gt;　　有些人说，我拿的小贷公司的贷款，这些不会计入央行征信。且不说，现在小贷公司与央行的互联互通更加紧密，就是在小贷公司圈子里，也有一套共享的“黑名单”体系，一家不还，别家的贷款也会很难审批。&lt;/p&gt;\n&lt;p&gt;　　后果三：被各种手段催收&lt;/p&gt;\n&lt;p&gt;　　无论是银行还是小贷公司，都有自己的催收体系。初级的会给你发短信、打电话催缴，程度严重一些的，甚至会有催收人员24小时贴身紧逼，严重扰乱你的工作、生活，一般人可受不了这种“精神压迫”。&lt;/p&gt;\n&lt;p&gt;　　后果四：被起诉，资产可能被查封&lt;/p&gt;\n&lt;p&gt;　　也许你“抗压”能力强，觉得以上所说的后果都是毛毛雨，那金融机构也不会跟你客气，敬酒不吃吃罚酒，那他们也只能拿出“法院”这个秘密武器，用法律武装自己了。&lt;/p&gt;\n&lt;p&gt;　　一旦法庭宣判完毕，你就算一百个不情愿，也必须得执行“还款裁决”，否则，法院就会依法查封你名下房产，以拍卖所得，偿还欠款。&lt;/p&gt;\n&lt;p&gt;　　后果五：情节严重要坐牢&lt;/p&gt;\n&lt;p&gt;　　一般来说，借钱不还这类事件都属于民事纠纷，不会上升上刑事层面。但如果借款人拒不执行，坚决要当老赖，宁可跑路也不还钱，情节非常恶劣的，法院还会追究借款人的刑事责任，过份严重就会坐牢。&lt;/p&gt;\n&lt;p&gt;　　近年来，国家也加大了对老赖的“惩戒”力度，不想四面楚歌、无路可走的唯一办法，就是乖乖还钱了。&lt;/p&gt;\n&lt;p&gt;　　总结：&lt;/p&gt;\n&lt;p&gt;　　俗话说得好，有借有还，再借不难。因眼前的利益欠款不还，其实是非常短视的行为，你不知道，有些时候，信用和人脉比金钱还要更值钱。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(102, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499929892, 1499929892, 1499929879, 0, '个人无抵押贷款的方式有哪些?办理流程是什么?', '', '', '', '\n&lt;p&gt;　　1、还款方法的规定&lt;/p&gt;\n&lt;p&gt;　　贷款期限在1年以内(含1年)的,实行到期一次还本付息,利随本清;贷款期限在1年以上的,可选择等额本息、等额本金或累进还款等方法来归还贷款本息。&lt;/p&gt;\n&lt;p&gt;　　2、利率调整&lt;/p&gt;\n&lt;p&gt;　　(1)贷款期间的利率变动按中国人民银行的规定执行。贷款期限在1年以内(含1年)的,遇法定利率调整,不调整贷款利率,继续执行实行合同利率;贷款期限在1年以上的,遇法定利率调整,于下年1月1日开始,按相应利率档次执行新的利率。&lt;/p&gt;\n&lt;p&gt;　　(2)借款合同约定,签订借款合同后与银行发放贷款期间,如遇法定贷款利率调整时,贷款账户开立时执行最新贷款利率。&lt;/p&gt;\n&lt;p&gt;　　3、分期还款计划调整&lt;/p&gt;\n&lt;p&gt;　　(1)贷款发放后,若贷款利率变化,在下年1月1日进行利率调整,并按当日未到贷款余额、调整后的贷款利率与剩余期限重新计算分期还款额。&lt;/p&gt;\n&lt;p&gt;　　(2)提前还款后,提前还款额达到贷款行规定的额度后,可以选择重新计算分期还款额或不改变分期还款额继续还款。&lt;/p&gt;\n&lt;p&gt;　　4、首期还款&lt;/p&gt;\n&lt;p&gt;　　个人商业用房贷款采取分期还款方式时,一般采取按期计息方式。在放款当期一般并不要求借款人归还借款,而采取于下个结息期归还个人无抵押贷款的方式有哪些?办理流程是什么?&lt;/p&gt;\n&lt;p&gt;　　说到买房自然也就想到房屋贷款，贷款的方式有很多种，可以是公积金贷款，也可以是商业贷款，还可以是个人无抵押贷款。那么，关于个人无抵押贷款，你们了解多少呢?今天小编就为大家讲讲个人无抵押贷款的申请方式以及办理流程。&lt;/p&gt;\n&lt;p&gt;　　一、个人无抵押贷款的方式&lt;/p&gt;\n&lt;p&gt;　　1、工资卡贷款&lt;/p&gt;\n&lt;p&gt;　　有些银行可以允许个人用工资卡贷款，也就是说如果你的工资是通过该银行发放到工资卡的，那么你就可以在该银行申请个人无抵押贷款，当然这对你的工作年限以及工资金额都是有一定的要求的。&lt;/p&gt;\n&lt;p&gt;　　2、银行流水贷款&lt;/p&gt;\n&lt;p&gt;　　银行流水贷款并不要求提供指定银行的银行流水，可以是任何银行的，它主要是要求银行流水需要满足一定期限，月收入要满足一定的金额即可。此外，绝大部分贷款公司也可做此类贷款。&lt;/p&gt;\n&lt;p&gt;　　3、利用房贷贷款&lt;/p&gt;\n&lt;p&gt;　　如果你有房贷，并且每月按时还款，那只要你提供房贷合同以及房贷还款账户的流水，也可以在部分银行和贷款公司申请无抵押贷款。&lt;/p&gt;\n&lt;p&gt;　　4、保险保证贷款&lt;/p&gt;\n&lt;p&gt;　　部分无抵押贷款不仅要求有银行流水，还要求提供保险保证。这类无抵押贷款除了需要承担贷款利息之外，还需要承担保险费用。&lt;/p&gt;\n&lt;p&gt;　　5、联保贷款&lt;/p&gt;\n&lt;p&gt;　　联保贷款不要求一定提供抵押物，但是需要联保小组成员相互为组员的贷款提供担保，这类贷款以信用社、邮政银行等居多。&lt;/p&gt;\n&lt;p&gt;　　二、个人无抵押贷款的流程&lt;/p&gt;\n&lt;p&gt;　　1、准备好贷款材料&lt;/p&gt;\n&lt;p&gt;　　在申请办理个人无抵押贷款时，你需要提前准备好贷款材料，据了解，个人无抵押贷款的申请材料主要包括二代身份证以及复印件、近三至六个月的银行流水单、居住证明(一般为水电燃气对账单)。&lt;/p&gt;\n&lt;p&gt;　　2、提前查询征信报告&lt;/p&gt;\n&lt;p&gt;　　由于个人无抵押贷款不需要借款人提供抵押物，因此对于借款人的个人资质很看重，其中最重要的就是个人信用记录。银行一般会看近两年的信用状况，普遍对逾期的限定是，近三个月内不能有二次，近半年内不能有三次，一年内不能有四次，所以在贷款前最好先去查询一下自己的征信报告。&lt;/p&gt;\n&lt;p&gt;　　3、选择正规的贷款机构&lt;/p&gt;\n&lt;p&gt;　　由于申请办理个人无抵押贷款的借款人越来越多，因此现在可供选择的贷款机构也变得多种多样，记得一定要选择合适的贷款机构进行办理，避免给自己带来不必要的麻烦。&lt;/p&gt;\n&lt;p&gt;　　以上就是小编为大家整理的个人无抵押贷款的方式和流程，希望能够帮到大家。应还款项。一般将个人住房贷款放款日当期实际天数加计下个结息期为贷款首期。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(103, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499929919, 1499929919, 1499929906, 0, '个人住房贷款需要注意的四大事项', '', '', '', '\n&lt;p&gt;　　1、还款方法的规定&lt;/p&gt;\n&lt;p&gt;　　贷款期限在1年以内(含1年)的,实行到期一次还本付息,利随本清;贷款期限在1年以上的,可选择等额本息、等额本金或累进还款等方法来归还贷款本息。&lt;/p&gt;\n&lt;p&gt;　　2、利率调整&lt;/p&gt;\n&lt;p&gt;　　(1)贷款期间的利率变动按中国人民银行的规定执行。贷款期限在1年以内(含1年)的,遇法定利率调整,不调整贷款利率,继续执行实行合同利率;贷款期限在1年以上的,遇法定利率调整,于下年1月1日开始,按相应利率档次执行新的利率。&lt;/p&gt;\n&lt;p&gt;　　(2)借款合同约定,签订借款合同后与银行发放贷款期间,如遇法定贷款利率调整时,贷款账户开立时执行最新贷款利率。&lt;/p&gt;\n&lt;p&gt;　　3、分期还款计划调整&lt;/p&gt;\n&lt;p&gt;　　(1)贷款发放后,若贷款利率变化,在下年1月1日进行利率调整,并按当日未到贷款余额、调整后的贷款利率与剩余期限重新计算分期还款额。&lt;/p&gt;\n&lt;p&gt;　　(2)提前还款后,提前还款额达到贷款行规定的额度后,可以选择重新计算分期还款额或不改变分期还款额继续还款。&lt;/p&gt;\n&lt;p&gt;　　4、首期还款&lt;/p&gt;\n&lt;p&gt;　　个人商业用房贷款采取分期还款方式时,一般采取按期计息方式。在放款当期一般并不要求借款人归还借款,而采取于下个结息期归还应还款项。一般将个人住房贷款放款日当期实际天数加计下个结息期为贷款首期。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(104, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499929952, 1499929952, 1499929929, 0, '小微企业贷款可以“上保险”', '', '', '', '\n&lt;p&gt;　　日前,省财政厅联合泰山财产保险股份有限公司、中国银行山东省分行等11家银行和保险公司,举办山东省“政银保”贷款保证保险业务合作签约仪式,通过“政府+银行+保险”三方合作形式,鼓励和引导金融机构加大对小微企业贷款的发放力度,合力解决小微企业、“三农”和城乡创业者融资难、融资贵难题。&lt;/p&gt;\n&lt;p&gt;　　“政银保”贷款保证保险业务由财政、银行和保险公司联合推出,运行方式简单明晰。借款人向银行申请流动性贷款时,由保险公司承保,银行按照不超过同期银行贷款基准利率上浮30%向借款人提供贷款,保险公司按贷款数额3%收取保费,保费总额财政补贴50%;对保险公司开展该项业务发生的赔偿损失超过150%的部分,由财政按照50%的标准给予风险补偿;当贷款发生本金损失时,由财政、银行、保险公司按照3:2:5比例承担。&lt;/p&gt;\n&lt;p&gt;　　据省财政厅金融与国际合作处处长李学春介绍,申请“政银保”业务的小微企业,是指在山东省行政区域内(不含青岛)注册并从事生产经营,符合工业和信息化部等四部委《关于印发中小企业划型标准规定的通知》规定,经省级税务部门确认依法纳税并纳入中国人民银行济南分行省域征信服务平台目录的小型微型企业,涵盖符合上述条件的农业种植养殖大户和农村各类生产经营性合作组织以及城乡创业者。“政银保”单户贷款控制在300万元以内,贷款利率上浮比例原则上不得超过中国人民银行公布的同期贷款基准利率的30%,贷款必须用于本企业生产经营,不包括房地产公司贷款、融资平台公司贷款和非生产经营性固定资产投资项目贷款,贷款期限最长为一年。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(105, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1499929982, 1503372521, 1499929920, 0, '企业纳税信用可换贷款额度', '', '', '', '\n&lt;p&gt;　　今后，企业纳税信用可换取信贷额度了!昨日，重庆晚报记者获悉，重庆市国税已联合重庆银监局、各大相关商业银行推出银税互动服务。市内企业无需抵押，在线即可凭纳税信用换取银行的信贷额度。&lt;/p&gt;\n&lt;p&gt;　　纳税信用可换信贷额度&lt;/p&gt;\n&lt;p&gt;　　据了解，企业遇到资金瓶颈后，可基于纳税信用级别及纳税金额向银行在线申请用于短期生产经营周转的可循环贷款，以纳税信用换取信贷额度。&lt;/p&gt;\n&lt;p&gt;　　此次银税互动服务，企业足不出户便能在线申请。具体来讲，有资金需求的企业向银行提出在线申请，并授权其向税务部门查询纳税信用;而税务部门也会将纳税人的纳税信用情况及时传递给银行，银行获得反馈信息后，在线审核，决定是否放款。整个过程信息化、透明化、电子化，企业无需跑腿就能贷款。&lt;/p&gt;\n&lt;p&gt;　　据悉，目前银税服务仅面向纳税信用级别为A、B、C级的企业，纳税信用级别为D级的企业不能申请银税互动服务。&lt;/p&gt;\n&lt;p&gt;　　两家银行支持银税服务&lt;/p&gt;\n&lt;p&gt;　　据悉，目前重庆有两家银行可申请银税服务，一家是国有商业银行，另一家是本地城市商业银行。&lt;/p&gt;\n&lt;p&gt;　　上述国有商业银行的银税互动服务贷款，贷款期限最长12个月，授信额度最高200万元，贷款利率8—12%，贷款对象为“经国家工商行政管理机关核准登记的，按时足额纳税的小微企业”。还款方式分为按月付息、本金随借随还。&lt;/p&gt;\n&lt;p&gt;　　此外，上述本地城市商业银行的银税互动服务贷款，贷款期限最长12个月，授信额度最高50万元，贷款利率为8—12%，贷款对象为“公司法定代表人，年龄18—60周岁，公司正常连续纳税两年以上，具有两年及两年纳税信用评级，并且评级不低于C级”。还款方式为按月付息、本金随借随还。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(106, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499930012, 1499930012, 1499929990, 0, '信用贷款的年限是如何规定的', '', '', '', '\n&lt;p&gt;　　很多人在到绿地石文红银行申请贷款的时候，都会产生这样的疑问，就是不知道选择哪一种贷款方式。其实在选择贷款方式的时候，需要结合自己的实际情况来进行选择，如果申请人在申请贷款的时候有足够的抵押品的话，那么可以选择抵押贷款这种方式。&lt;/p&gt;\n&lt;p&gt;　　但是如果申请人没有足够的抵押品的话，那么就应该凭借个人信用来进行贷款，这个时候信用贷款就是最佳的选择。&lt;/p&gt;\n&lt;p&gt;　　在申请信用贷款之后，银行会结合申请人的信用情况来放贷，个人信誉就是最好的保证，因为这种贷款方式比较简单，所以很多年轻人都会首选这种贷款方式。但是在申请绿地石文红信用贷款的时候，一定要注意这样一个问题，就是这种贷款方式和人们的信用度有直接的关系，用户的信用度直接影响着贷款金额的高低以及还款利息的高低等，另外还影响着还款年限的长短。&lt;/p&gt;\n&lt;p&gt;　　申请人的信用度高的话，那么还款年限就比较宽裕，而如果申请人的信用不高的话，那么还款时间也会比较短，这样在还款的时候就会比较不便，有的时候还需要承担很大的经济压力，所以在申请信用贷款的时候，一定要结合自己的实际情况来申请。&lt;/p&gt;\n&lt;p&gt;　　申请信用贷款之前，最好先询问一下自己是否符合申请标准，以及在申请过程中需要提交哪些资料等，这样可以做到心中有数，在申请贷款的时候也可以避免很多不必要的麻烦。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(107, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499930034, 1499930034, 1499930020, 0, 'A级纳税等级企业可获优惠信用贷款', '', '', '', '\n&lt;p&gt;　　8月29日，记者从郑州新区地税局获悉，该局日前联合郑州新区国税局、中国银行郑州新区支行举行了“征信互认银税互动”业务合作签约仪式。今后，获得A级纳税信用等级的企业，在满足信用记录等相关要求的条件下，可凭借纳税信用等级获得优惠信用贷款，无需提供任何抵押、担保。&lt;/p&gt;\n&lt;p&gt;　　在国家倾力扶持小微企业发展的大背景下，“银税互动”对于扶持小微企业发展、促进地方经济增长具有重要意义。据悉，中国银行河南省分行推出的“中银税贷通宝”业务，以银行征信、纳税信用和税收遵从为前提，集税务、金融两大优势资源，突破传统抵质押贷款方式，把纳税额度信用作为贷款守信的激励措施，将“纳税信用”、“纳税贡献”转化为“融资的有利条件”，开启了“银税合作”新模式，可有效解决中小企业融资难、银行寻找优质贷款难的“双向难题”。&lt;/p&gt;\n&lt;p&gt;　　“对于税务部门而言，通过帮助诚信纳税企业获得银行融资，扶持企业发展壮大，有力培养了税源。更重要的是：这种守信激励必然会在社会中产生良好的示范效应，增强企业对纳税信用的重视程度，引导更多的纳税人依法经营、诚信纳税。”郑州新区地税局有关负责人说。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(108, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499930058, 1499930058, 1499930047, 0, '个人消费等成新增贷款主要投向', '', '', '', '\n&lt;p&gt;　　10月24日，人民银行中山市中心支行披露了今年第三季度中山金融统计数据。数据显示，三季度我市本外币各项存、贷款加速增长，其中贷款同比增长13.79%;存款同比增长12.16%，这是2年来存款增速首现两位数。&lt;/p&gt;\n&lt;p&gt;　　贷款增速高于地方GDP 增速与CPI涨幅之和&lt;/p&gt;\n&lt;p&gt;　　人民银行中山市中心支行数据显示，9月末，全市本外币各项贷款余额3303.12亿元，较8月有轻微回落，但整体增速显著加快，同比增长13.79%，增速居珠三角九市第四位，位于珠海、深圳、惠州之后，对比全省平均增速、珠三角平均增速分别低1.52、2.36个百分点，但已显著高于地方GDP增速与CPI涨幅之和。&lt;/p&gt;\n&lt;p&gt;　　个人消费等成新增贷款主要投向&lt;/p&gt;\n&lt;p&gt;　　数据显示，前三季度投向房地产的贷款净增381.99 亿元，占当年各项贷款新增余额的93.44%，其中用于购房的新增贷款在投向房地产的贷款净增额中占比92.68%。个人贷款余额较年初净增315.24亿元，占当年各项贷款新增余额的77.11%，其中个人消费贷款净增额占当年各项贷款新增余额的81.31%。单位贷款余额较年初净增98.14亿元，占当年各项贷款新增余额的24.01%。&lt;/p&gt;\n&lt;p&gt;　　另外，各类型规模企业贷款增降不一。大型企业贷款余额同比增长29.23%，小微企业贷款余额同比增长4.72%，中型企业贷款余额同比下降8.87%。涉农贷款余额同比增长39.8%，增速较上半年、去年同期分别提高12个百分点、3.88个百分点。&lt;/p&gt;\n&lt;p&gt;　　存款增速2年来首现两位数&lt;/p&gt;\n&lt;p&gt;　　人民银行中山市中心支行披露的数据显示，三季度末本外币各项存款余额4898亿元，同比增长12.16%，这是我市2年来存款增速首现两位数。我市存款增速居珠三角九市第三位，位列惠州、珠海之后，较全省平均增速、珠三角平均增速分别高2.88、2.93个百分点。其中，单位存款余额2344.76亿元，同比增长19.83%，增速同比提高13.24个百分点;个人存款余额2272.95亿元，同比增长7.08%，增速同比提高8.31个百分点。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(109, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499930086, 1499930086, 1499930072, 0, '多家银行开始认房又认贷 北京个人贷款降11.69%', '', '', '', '\n&lt;p&gt;　　自“930”楼市新政执行以来，全市10月、11月两个月的房贷规模持续下降，市民贷款购房热度明显下降。此外，记者从北京市多家银行获悉，已经从严执行“认房又认贷”的政策。&lt;/p&gt;\n&lt;p&gt;　　今天上午，记者从北京市银监局获悉，10月、11月，全市房贷规模连续两个月下降。数据显示，10月北京辖内商业银行发放个人住房贷款300.12亿元，环比下降21.91%;11月北京辖内商业银行发放个人住房贷款339.41亿元，比9月末下降11.69%。据不完全统计，10月部分中资商业银行新受理个人住房贷款笔数和金额较前九个月的月均受理笔数和金额分别下降35.39%和42.75%。&lt;/p&gt;\n&lt;p&gt;　　而在住宅成交方面，统计数据显示，10月和11月北京新房分别成交0.63万套和0.59万套，环比下降27.62%和7.48%;二手住房分别成交1.97万套和1.94万套，环比下降36.45%和1.52%。&lt;/p&gt;\n&lt;p&gt;　　今天上午，记者从工行、建行、中行、光大等多家银行了解到，目前已按“930”新政中的规定执行，即对拥有1套住房的居民家庭再次贷款购房的，无论有无贷款记录，首付款比例均不低于50%;购买非普通自住房的，首付款比例不低于70%。&lt;/p&gt;\n&lt;p&gt;　　在二套房的贷款发放上，“930”新政要求看贷款人名下的房产数量，并未明确要求银行执行“认贷”政策，部分银行对于即使房贷还清了但有房贷记录的，也按二套房来认定。据了解，各家银行政策略有微调，但主基调是收紧的。 目前，各银行强化了借款人资质审核，严格执行借款人偿还住房贷款月支出不高于其月收入50%的相关规定，对于提供虚假收入证明或不符合月供收入比要求的，不得放贷。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(110, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499930106, 1499930106, 1499930095, 0, '居民中长贷仍高,企业贷款需求偏弱', '', '', '', '\n&lt;p&gt;　　信贷大幅下降,居民中长贷仍高,企业贷款需求略弱。10月金融机构新增贷款6513亿,同比多增1377亿,环比少增5687亿。居民贷款方面,地产调控对10月房贷的影响仍然较小,居民中长贷新增4891亿,环比少增850亿但仍处于单月较高水平,居民贷款新增4331亿,占新增信贷的比重仍高达2/3;企业贷款方面,10月企业贷款新增1684亿,其中中长贷仅728亿,环比大幅缩减3738亿,同比少增791亿。&lt;/p&gt;\n&lt;p&gt;　　企业中长贷下降固然包含季节性减少因素,但考虑到地方政府债券发行量与去年同期基本持平,中长贷同比下滑仍体现企业贷款需求偏弱,上月的回升态势未能持续。&lt;/p&gt;\n&lt;p&gt;　　新增社融规模季节性回落,信贷略弱,未贴现汇票降速减缓。10月新增社融8963亿,环比减少8246亿,但同比多增3370亿,尽管环比大幅回落,但表现小幅优于季节性,主因未贴现汇票降速减缓,当月减少1803亿,同比少减1894亿,预计未来几个月票据监管的影响逐步消退,未贴现汇票有望小幅增长。社融中对实体贷款新增6010亿,同比多增437亿,表现略弱。表外融资方面,委托贷款和信托贷款合计新增1255亿,与去年基本持平。直接融资方面,企业债券融资2439亿,其中公司债发行量较8-9月下降,中短期债务小幅净偿还。&lt;/p&gt;\n&lt;p&gt;　　M2增速小升至11.6%,M1增速持续下降,财政存款季节性增加。10月M2同比增速11.6%,较9月小幅回升0.1个百分点。10月居民存款减少4680亿,企业存款新增2083亿,同比合计多增3048亿,10月企业按季申报缴税令财政存款季节性增加6821亿,同比多增1710亿,非银金融机构新增5231亿,同比变化不大,M2整体平稳。M1同比增长23.9%,增速较上月进一步回落0.8个百分点,主因高基数效应。&lt;/p&gt;\n&lt;p&gt;　　10月地产调控尚未完全显现效果,居民中长贷仍处较高水平,企业信贷需求略偏弱,社融、M2整体表现稳定。随着地产调控逐步深化至央行和信贷管理层面,加之一二线城市地产交易逐步降温,预计未来几个月新增居民中长贷将逐步减少;企业信贷需求并未延续显著回升势头,预计未来几个月信贷数据或有所下滑。而M2、M1基数年底再次跳升,预计货币增速年底或进一步走低。短期经济修复仍有波动,经济基本面尚不构成债市收益率持续上扬的基础,而特朗普意外当选令美国增长前景上升,美联储年底加息概率较大,年底前资金面整体偏紧,预计债市继续震荡调整,关注调整带来的布局机会。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(111, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499930136, 1499930136, 1499930120, 0, '采用纯信用贷款模式 不良贷款率低于1%', '', '', '', '\n&lt;p&gt;　　国内首批互联网银行及民营银行之一，蚂蚁金服旗下网商银行背靠阿里巴巴这棵大树，几乎从筹备之日起就备受外界关注。3月2日，蚂蚁金服在北京举行“新动能助力中国经济沟通会”，相关负责人披露了网商银行自开业以来的业务数据。&lt;/p&gt;\n&lt;p&gt;　　“网商银行2016年贷款规模较2015年增加3倍，客户数增加4倍。每月贷款申请客户数也持续保持稳定增长，在纯信用贷款的业务模式下，2016年季度平均贷款不良率保持在1%以下。”蚂蚁金服副总裁、微贷业务负责人黄浩表示，这充分体现了代表中国社会最基层的各类小微企业、商户保持着旺盛的生产经营，且经营情况保持盈利和稳健。&lt;/p&gt;\n&lt;p&gt;　　数据显示，截至2017年1月末，网商银行服务小微企业和经营者的数量达到271万户，覆盖全国23个省、直辖市和自治区;累计放款金额1151亿元;贷款余额331.93亿元，户均贷款余额为1.7万元。&lt;/p&gt;\n&lt;p&gt;　　从2014年首批5家民营银行获批筹建以来，截至目前，银监会已正式批筹13家民营银行，包括2014年获批筹建的深圳微众银行、上海华瑞银行、天津金城银行、温州民商银行、浙江网商银行5家试点民营银行，以及2016获批筹建的重庆富民银行、四川希望银行(后更名为“新网银行”)、湖南三湘银行、安徽新安银行、福建华通银行、武汉众邦银行、苏宁银行和中关村银行。&lt;/p&gt;\n&lt;p&gt;　　黄浩在沟通会上详细介绍了网商银行信贷细分的数据。“为了更好地确保资金周转，网商用户小额高频是普遍的特征，1年贷款50次的用户占60%，平均贷款周期7天。”黄浩透露了一个颇有意思的案例，一位来自四川的女店主，从2012年至今，在蚂蚁金服及网商银行总计贷款3794笔，最大的一笔贷款56000元，最小的仅3元。&lt;/p&gt;\n&lt;p&gt;　　值得注意的是，在众多民营银行中，网商银行、微众银行和新获批的新网银行、苏宁银行都定位为互联网银行。一家没有线下网点的纯互联网银行，如何运营业务、控制风险?黄浩表示，网商银行依靠大数据、云计算等创新技术来驱动业务运营，对众多小微企业进行了全方位画像，对用户的信用评价不再是局限于历史的、静态的信息，而是能够动态地分析经营预期，做到精准的风控决策。&lt;/p&gt;\n&lt;p&gt;　　“数据化、场景化和平台化是我们总结的网商之道。”黄浩表示，数据化是指将用户点滴行为转化成信用积累。有了数据，就可以用合理的风控方式来建立信贷评估体系，可以不用担保和抵押，用信用来进行贷款。通过电商、蚂蚁金服、物流等环节，积累了海量的基础数据，帮助将坏账率控制在1%以内。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(112, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499930163, 1499930163, 1499930147, 0, '安徽银行业小微企业贷款余额首破万亿元', '', '', '', '\n&lt;p&gt;　　安徽银监局最新发布的数据显示，截至2017年1月末，安徽银行业小微企业贷款余额达10136亿元，首破万亿元大关。余额较年初增加288亿元，同比增长21.9%，增量居全国第五位。&lt;/p&gt;\n&lt;p&gt;　　此外，安徽银行业小微企业贷款在各项贷款中占比超过三成，达31.95%。&lt;/p&gt;\n&lt;p&gt;　　数据显示，安徽小微企业贷款户数71.24万户、申贷获得率95.95%，分别同比增加10.17万户、上升1.35个百分点，实现了增速、户数、申贷获得率“三个不低于”的目标。&lt;/p&gt;\n&lt;p&gt;　　同时，该省银行业小微企业不良贷款同比实现“双降”，其中不良增量同比下降了0.53亿元，不良贷款率同比下降了0.17个百分点，2016年以来小微企业贷款不良率保持在2%左右，信贷风险总体可控。&lt;/p&gt;\n&lt;p&gt;　　据悉，至2016年末，安徽省已设立各级小微企业金融服务专营机构488家、小微企业贷款重点推进行和特色支行396家。去年，安徽银监局帮扶该省有信用、有订单的困难小微企业共4503家，新增投放贷款243.87亿元，续贷客户2821户，累计减费让利21.35亿元。&lt;/p&gt;\n&lt;p&gt;　　中国人民银行发布的数据显示，2016年12月末，中国小微企业人民币贷款余额为20.84万亿元，同比增长16%，比同期大型和中型企业贷款增速分别高7.2个和9.1个百分点。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(113, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499930334, 1499930334, 1499930320, 0, '信达资产“违规收购个人贷款” 银监会发13张罚单', '', '', '', '\n&lt;p&gt;　　银监会近日对四大资产管理公司(AMC)之一的中国信达资产管理股份有限公司及其部分省分公司开出13张行政处罚罚单，处罚案由包括“违规收购个人贷款”、“收购金融机构非不良资产”、“为同业投资行为违规提供隐形担保”“管理不尽职导致风险发生”等。&lt;/p&gt;\n&lt;p&gt;　　一资深四大AMC人士对证券时报记者表示，银监会此次开出的罚单中，涉及四大AMC的只有信达资产一家，这是因为银监会对四大AMC的例行检查是每年一家，去年检查的是信达资产，因此近期公布的行政罚单应该是对去年检查结果的处罚。“按照检查安排，今年应该是对长城资产检查，明年是东方资产，后年则是华融资产。”&lt;/p&gt;\n&lt;p&gt;　　资产管理公司的传统主营业务就是从银行收购不良资产，针对信达资产违规“收购金融机构非不良资产”，上述人士表示，四大AMC都或多或少收购过银行的关注类贷款，几年前银监会领导口头表示过可以关注类贷款，但由于这一规定没有正式成文，因此各地银监局的监管尺度不一。&lt;/p&gt;\n&lt;p&gt;　　银监会主席助理杨家才表示，今年是银监会强监管的一年，也是加强监管问责的一年。数据显示，2017年一季度，银监会系统作出行政处罚485件，罚没金额合计1.9亿元;处罚责任人员197名，其中，取消19人的高管任职资格，禁止11人从事银行业工作。&lt;/p&gt;\n&lt;p&gt;　　3月29日，银监会机关针对票据违规操作、掩盖不良、规避监管、乱收费用、滥用通道、违背国家宏观调控政策等市场乱象，作出了25件行政处罚决定，罚款金额合计4290万元。本次处罚共惩处了17家银行业机构，包括信达资产管理公司、平安银行、恒丰银行、华夏银行以及作为信达资产管理公司交易对手的招商银行、民生银行、交通银行等机构;同时，对8名责任人员分别给予警告和罚款，其中含2名机构高管。&lt;/p&gt;\n&lt;p&gt;　　另据了解，目前，又一批违法违规行为已经立案，正处于行政处罚调查审理程序中。针对屡查屡犯、案件频发、严重扰乱市场秩序的各类乱象，银监会将继续加大监管处罚力度，进一步严厉打击、严肃处理。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(114, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499930355, 1499930355, 1499930343, 0, '六部门助推重庆自贸区发展 企业贷款损失补偿最高150万', '', '', '', '\n&lt;p&gt;　　重庆自贸试验区挂牌以来，市内多个部门陆续出台政策措施，助推自贸试验区建设。昨日，重庆市发改委、工商局、知识产权局等6部门召开专题新闻发布会出台相关政策。&lt;/p&gt;\n&lt;p&gt;　　畅通国际流通道&lt;/p&gt;\n&lt;p&gt;　　依托中欧(渝新欧)国际铁路联运通道，构建重庆至欧洲陆路国际贸易通道和规则体系，发展国际铁路联运;&lt;/p&gt;\n&lt;p&gt;　　依托长江黄金水道，探索建立沪渝外贸集装箱“五定”快班轮三峡船闸优先放行机制，发展江海联运;&lt;/p&gt;\n&lt;p&gt;　　依托渝昆泛亚铁路通道、东南沿海港口、陆路边境口岸，以铁路和高速公路网为陆路通道，发展铁海联运和跨区域、跨国境的国际陆路运输;&lt;/p&gt;\n&lt;p&gt;　　依托重庆江北国际机场，探索空域和航空资源管理改革，壮大基地航空公司，增开航线，加密航班，构建覆盖全球主要经济体的航线网络。&lt;/p&gt;\n&lt;p&gt;　　构建国际物流枢纽&lt;/p&gt;\n&lt;p&gt;　　积极引导和推动重庆西部现代物流园、重庆航空物流园、果园港物流园等三大枢纽型物流园物流功能细分和差异发展。&lt;/p&gt;\n&lt;p&gt;　　建设形成内陆自由贸易采购中心、供应链金融中心、临港产业服务中心、物流大数据中心、物流贸易协同创新中心五大功能，支撑建设内陆国际物流枢纽。&lt;/p&gt;\n&lt;p&gt;　　此外，还将积极培育和引进具有国际物流网络资源的国际物流企业来渝发展，打造中欧、中美、中新等国际贸易分拨、中转、销售和结算中心。&lt;/p&gt;\n&lt;p&gt;　　加快培育和引进跨境电商企业，鼓励跨境电商企业在自贸试验区内建设或租用保税备货仓和使用自动化仓储设施等。&lt;/p&gt;\n&lt;p&gt;　　同时，支持在自贸试验区内建立海关多式联运监管中心，打造覆盖铁、公、水、空多种运输方式的国际物流运输体系，促进航空、水港和铁路自贸试验区物流功能区之间的联运发展。记者聂莎&lt;/p&gt;\n&lt;p&gt;　　自贸区建设知识产权&lt;/p&gt;\n&lt;p&gt;　　质押融资风险补偿制度&lt;/p&gt;\n&lt;p&gt;　　企业贷款损失补偿最高150万&lt;/p&gt;\n&lt;p&gt;　　昨日，在中国(重庆)自由贸易试验区的新闻发布会上，市知识产权局表示，他们在自贸区核心区两江新区进行了一些知识产权领域的探索试点。其中，将在自贸区出台两项知识产权创新政策。&lt;/p&gt;\n&lt;p&gt;　　据了解，一项是企业购买知识产权服务补贴政策，即对企业购买服务机构的专利战略、专利导航、分析预警、海外维权等高端服务给予补助。另一项是知识产权质押融资政策，即对企业知识产权质押贷款提供担保或保险的，给予担保或保险公司不超过每笔贷款金额1%的担保费和保险费补助;建立知识产权质押融资风险补偿制度，按不超过审定企业知识产权质押贷款坏账本金损失的30%给予补偿，每笔贷款损失补偿不超过人民币150万元，其中纳入风险补偿范围的贷款，其贷款的实际利率应不超过同期人民银行贷款基准利率的150%。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(115, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499930381, 1499930381, 1499930365, 0, '中小企业信贷风险成因及对策', '', '', '', '\n&lt;p&gt;　　中小企业的重要性不言而喻，中小企业的困难不言而喻，中小企业的信贷风险不言而喻，笔者通过对省内某金融机构的31户、总计24460万元中小企业不良贷款调查分析，冀希以小见大，从中看出些许端倪。中小企业信贷风险的表象&lt;/p&gt;\n&lt;p&gt;　　对31户总计24460万元不良贷款分析，归结为六类直接表象，分别按企业户数和金额计算占比。&lt;/p&gt;\n&lt;p&gt;　　一类13户，户占比42%;金额11404万元，金额占比46%，是中小企业跨行业投资失败后形成不良贷款。企业实际控制人把已具备一定融资能力的中小企业当做融资平台，尽可能地加大杠杆，尽可能地融取更多的资金，再把这些融来的有成本的资金投入到与中小企业自身经营无关的房地产、股市、典当、小贷、担保公司等其他行业，或直接从事民间借贷，从中攫取高额的利差。高收益伴随着高风险，一旦跨行业投资失误，直接危及中小企业自身贷款的安全。&lt;/p&gt;\n&lt;p&gt;　　二类6户，户占比19%;金额5417万元，金额占比22%，是中小企业短贷长投后资金固化形成不良贷款。相当一部分中小企业靠自身实力使产品换代升级有一定困难，但为提高竞争力，在自有资金不足情况下不惜举债进行技术改造，创新产品。眼下金融机构给中小企业提供的大部分金融产品是一年期内的流动资金贷款，中小企业便只能靠短期流动资金贷款来支撑上项目。贷款一年到期，企业靠项目自身创造的收益很难还贷，而贷款产生的现金流又被项目固化，一旦资金统筹不好，极易形成不良。&lt;/p&gt;\n&lt;p&gt;　　三类5户，户占比16%;金额2859万元，金额占比12%，是中小企业被应收账款拖垮的。&lt;/p&gt;\n&lt;p&gt;　　四类4户，户占比12%;金额2946万元，金额占比12%，是政策调整影响到中小企业的贷款安全。进出口政策、环保政策、安全生产政策、食品安全政策、产业政策等政策调整对中小企业的影响是致命的，一旦踏不准政策节拍，被淘汰是必然的。&lt;/p&gt;\n&lt;p&gt;　　五类2户，户占比7%;金额1117万元，金额占比5%，是中小企业主营业务经营不善形成的不良贷款。市场经济优胜劣汰，个别中小企业被市场淘汰亦属正常现象，这里不再赘述。&lt;/p&gt;\n&lt;p&gt;　　六类1户，户占比3%;金额717万元，金额占比3%，是中小企业给他人担保，承担连带赔偿责任后危及自身的经营，进而形成不良贷款。&lt;/p&gt;\n&lt;p&gt;　　中小企业信贷风险的内因&lt;/p&gt;\n&lt;p&gt;　　中小企业信贷风险的表现是多种多样的，笔者主要归集为以上六种，其最直接的体现就是现金流断裂，背后深层次的原因值得挖掘。&lt;/p&gt;\n&lt;p&gt;　　一是融资过度是中小企业贷款出问题的最主要原因，正应了那句老话，不少中小企业不是被饿死的，而是被撑死的。中小企业拿到相对低成本且超过自身经营所需的贷款后急于寻找出路，一时控制不好投向，隔行如隔山，风险应运而生。&lt;/p&gt;\n&lt;p&gt;　　二是贷款期限错配制约了中小企业创新。中小企业创新技术，加大技术投入，本应大力扶持，关键是约定使用的贷款资金期限和实际使用的资金期限不合拍，这种期限的错配，不仅制约了企业的创新，甚至还会成为压垮企业的稻草，事与愿违。&lt;/p&gt;\n&lt;p&gt;　　三是应收账款居高不下，反映出中小企业在市场经济中弱势地位难改，对下游客户回款风险估计不足。部分中小企业自身规模小，话语权少，与下游配套客户特别是大客户谈判时很难做到平等公正，为了业务发展，赊销产品，也不得不为之。&lt;/p&gt;\n&lt;p&gt;　　四是政策变化对中小企业经营影响很大。企业的发展同国家政策息息相关，国家政策的制定是一个复杂和长期的过程，出台时又具有某种突然性，制定的周期往往滞后于企业和行业的发展现状，给企业经营造成一定的决策盲区。&lt;/p&gt;\n&lt;p&gt;　　五是中小企业主营业务经营不善形成的风险贷款占比并不高。中小企业自创立发展到成功融资，是经过市场检验的，是拥有相对成熟的经营模式的，可见单纯的主营业务经营失误形成的贷款风险并不多，况且只是形成风险，并不是最终的损失。&lt;/p&gt;\n&lt;p&gt;　　未来中小企业信贷建议&lt;/p&gt;\n&lt;p&gt;　　通过以上分析，可以看出中小企业融资存在着“三个并存”，即融资难与融资贵并存、融资难与融资过度并存、融资难与还款难并存。为减少信贷资源浪费，发挥有限的信贷资源作用，精准地落实今年“两会”提出的“增强服务实体经济能力，坚决防止向虚”的要求，建议如下：&lt;/p&gt;\n&lt;p&gt;　　首先是中小企业树立风险意识，提高自身抗风险能力。借债还钱，天经地义。中小企业借款之初要根据自身经营需求申请融资额度，未雨绸缪，做好还款规划。政策上紧跟国家的产业导向，经营上做精主业，提高主营收入，这才是企业持久发展的根本。投资时需谨慎，防止盲目扩张，持有适度的现金流，手中有粮，心中才能不慌。自身讲诚信，经营稳定，还款有保障，这样的中小企业融资不会难的。&lt;/p&gt;\n&lt;p&gt;　　其次是金融机构严格落实“三个办法一个指引”，特别是《流动资金管理办法》，科学地准确地测算贷款企业合理的流动资金需求，防范垒大户，防范盲目竞争，防范信贷资金避实趋虚，在防范中小企业过度融资的同时满足其正常的资金需求。从前面调查数据看，理想状态下如能有效地防范中小企业过度融资，则可避免约45%左右中小企业贷款风险。&lt;/p&gt;\n&lt;p&gt;　　三是金融机构要强化中小企业中长期贷款规模管理，贷款期限一般维持在二至三年，最长可达五年。中小企业要生存，要发展，要深化创新驱动，就要技改项目投入，就需要银行配套的中长期贷款。金融机构在准确评估的基础上更多地发放一些中小企业中长期技术改造贷款，该贷款期限和企业实际使用期限如衔接得好，可有效地防范约五分之一的中小企业不良贷款，可有效地减少中小企业使用“过桥资金”还贷，减少财务费用，减少运营成本，部分化解融资贵的问题，甚至还可能避免因融资贵而产生的社会问题。&lt;/p&gt;\n&lt;p&gt;　　四是帮助中小企业盘活应收账款。这里说的“帮助”更多的是营造一种环境，为中小企业提供更好的服务。金融机构充分利用人民银行的应收账款质押系统，在控制风险前提下，办理应收账款质押贷款。债务人特别是国有企业，要站在讲政治的高度，配合中小企业及金融机构办理保理业务。应收账款盘活对提高中小企业经营活力、清理三角债、重构社会信用具有重要意义。&lt;/p&gt;\n&lt;p&gt;　　五是加强贷后过程管理。中小企业贷款出现不良，也是个渐进的过程，金融机构应转变思路，改变重竞争、重营销、重审批的做法，加强贷后的过程管理。现在金融机构实现了贷款的监督支付，直接的贷款挪用基本上被杜绝，但间接的贷款挪用并不少见。间接的贷款挪用如贷后跟踪不到位，很难被发现，直接埋下风险隐患。贷后过程管理要适时评估贷款使用效果，贷款投放后没有如期产生效益，要么是贷款被挪用，要么就是经营恶化，应引起高度警惕。针对中小企业的经营特性，为中小企业量身设定灵活的还款期限和还款方式，贷款到期前及早提醒企业筹措资金，逐步积累资金，逐步缓释风险，仅靠到期一蹴而就地还款，不确定因素太多，出风险在所难免。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(116, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499930400, 1499930400, 1499930389, 0, '谨防利用网上贷款实施诈骗', '', '', '', '\n&lt;p&gt;　　从网上借贷平台的申请记录中获取个人信息，以投资公司的名义提供网上贷款业务，通过签订正式合同取得受害人信任，继而以收取手续费、验证金等方式骗取钱财。近日，绩溪县一居民落入不法分子设下的诈骗陷阱，警方提醒公众注意防范。&lt;/p&gt;\n&lt;p&gt;　　因生活之需，绩溪县家朋乡的汪某向一网上借贷平台提交贷款申请后不久，便接到北京某投资公司业务员打来的电话，对方称在网上看到汪某的贷款申请，认为汪某符合贷款条件。随后，该业务员给汪某发来一份贷款合同，让汪某签字后传回公司。将信将疑的汪某仔细查看合同条款及印章，并在网上查询到该公司的名称和网页，未发现疑点，于是主动与来电的业务员联系，询问办理贷款的程序。该业务员要求汪某支付200元的手续费就可以代为办理，汪某遂通过支付宝如数转账;对方收到手续费后又称为验证汪某的还款能力，根据合同规定需打款3000元进行验证。汪某向对方提供的账户汇款后，对方电话便再也无法接通。&lt;/p&gt;\n&lt;p&gt;　　警方提示，网络上的借贷平台真假难辨，尽量不要通过网上借贷平台申请贷款业务，更不要在提交贷款申请时泄露个人信息。贷款要到银行网点办理，网上“凭身份证就可以贷款、办理信用卡”的信息都是低级骗局。无论在任何情况下，都不要先给他人转账，以免受骗而蒙受经济损失。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(117, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499930422, 1499930422, 1499930410, 0, '上市系P2P退热潮 多家公司提“分手”', '', '', '', '\n&lt;p&gt;　　随着A股上市公司年报披露完毕，上市系P2P平台的业绩浮出水面，真可谓是几家欢喜几家愁。&lt;/p&gt;\n&lt;p&gt;　　值得注意的是，前两年盛行的上市公司涉足P2P平台的热潮，如今正在退去，今年仅有一家上市公司入股网贷平台。紫马财行CEO唐学庆在接受记者采访时表示，目前上市公司与P2P平台到了是共同进退还是分道扬镳的十字路口，在市场环境净化、合规风险排除之后，P2P行业有望再度赢得上市公司的青睐。&lt;/p&gt;\n&lt;p&gt;　　跨界互金&lt;/p&gt;\n&lt;p&gt;　　熊猫金控艰难扭亏为盈&lt;/p&gt;\n&lt;p&gt;　　2015年4月，湘股原熊猫烟花改名熊猫金控，完成从烟花到金融的全面转身。不过，经历定增互联网金融“流产”和亏损等一系列事件，熊猫金控的互联网金融跨界并非坦途。&lt;/p&gt;\n&lt;p&gt;　　熊猫金控日前发布的2016年度财报数据显示，在2016年前三季度亏损约240万元的颓势下，第四季度扭亏为盈。&lt;/p&gt;\n&lt;p&gt;　　数据显示，熊猫金控金融业务的5家公司中有3家盈利：熊猫小贷营业收入2887.3万元，本期盈利1898.4万元;P2P平台银湖网营收5091.3万元，本期扭亏，盈利240.5万元;西藏熊猫小贷营收256.9万元，盈利71.7万元。&lt;/p&gt;\n&lt;p&gt;　　另外两家公司账面仍是呈现亏损：融信通2016年营收12082万元，亏损3793万元;熊猫金库营收1311万元，亏损968万元。&lt;/p&gt;\n&lt;p&gt;　　值得注意的是，熊猫金控盈利背后，还有公司转让不良资产带来的变化。熊猫金控2016年前三季度资产减值损失高达5108万元，而2016年年度报告中，全年度资产减值损失已缩减至3567万元。究其原因，主要是融信通在2016年12月份以账面价格的60%对外转让了银湖网和熊猫金库的不良资产。这一笔债权转让直接冲减了因风险准备金计提的资产减值损失，助推全年业绩实现增长。&lt;/p&gt;\n&lt;p&gt;　　连年亏损&lt;/p&gt;\n&lt;p&gt;　　多家公司萌生退意&lt;/p&gt;\n&lt;p&gt;　　据网贷之家研究中心不完全统计，A股上市公司控股的P2P网贷平台共34家。其中，A股上市公司间接或直接持有平台100%比例的有12家。当前布局P2P网贷行业的上市公司所属行业分布广泛，房地产、有色金属、医疗、农业等多个传统行业均有涉足。&lt;/p&gt;\n&lt;p&gt;　　不过，诸多曾被上市公司寄予厚望的网贷平台，业绩并不“闪光”。&lt;/p&gt;\n&lt;p&gt;　　P2P平台丰收贷是上市公司康达尔旗下的互联网金融平台，运营主体为深圳市康达尔金融信息服务有限公司。康达尔年报显示，2016年公司金融营收167万元，亏损1941万元;2015年营收592万元，亏损862万元。由于注册资本只有1000万元且连续亏损，2016年年末康达尔金融的净资产为-1850.27万元。&lt;/p&gt;\n&lt;p&gt;　　记者查询发现，还有多家上市公司旗下网贷平台出现亏损状况。盈利能力不给力，上市公司对互联网金融业务的态度在最近一年里发生了明显转变。&lt;/p&gt;\n&lt;p&gt;　　据网贷之家统计，截至4月，退出互联网金融行业的上市公司多达8家，分别是益民集团、东方金钰、*ST匹凸、高鸿股份、盛达矿业、天源迪科、新纶科技和冠城大通。&lt;/p&gt;\n&lt;p&gt;　　业内&lt;/p&gt;\n&lt;p&gt;　　未来分合面临诸多变数&lt;/p&gt;\n&lt;p&gt;　　唐学庆表示，前两年上市公司大举涌入P2P领域，受到了“互联网+”政策东风的引领，有着增强公司盈利能力、享受互联网金融实体经济的政策福利等诸多考量。&lt;/p&gt;\n&lt;p&gt;　　近两年来，上市公司对P2P的态度，确实存在着由热络到审慎的转变，出现这一变化很大程度上是政策因素造成的。唐学庆表示，2016年以来，国家开始收紧对互联网金融的监管，互联网金融业务面临经营合规性风险，资本市场对于互金的发展前景持观望甚至看空态度者居多。但在唐学庆看来，随着网贷行业监管政策的陆续出台，P2P网贷行业经过此轮洗牌后，P2P行业有望再度赢得上市公司的青睐。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(118, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499930456, 1499930456, 1499930434, 0, '国外P2P网贷平台发展对我国的启示', '', '', '', '\n&lt;p&gt;　　P2P 网贷企业作为新兴金融服务模式的一种，一方面有效解决了中小民营企业融资难的问题，弥补了传统银行小额贷款业务的空缺。另一方面，将吸收来的社会闲置资金通过企业平台出借给贷款人，增加了资金的配置效率，可谓一箭双雕。这种新兴的金融服务模式刚刚出现就显现其旺盛的发展势头，交易额与用户也逐年增加;与此同时，运营中的问题也逐渐显现。&lt;/p&gt;\n&lt;p&gt;　　根据搜集的行业信息数据以及对 13 家P2P 网贷企业的调研，结合国外优秀的行业发展经验，为我国 P2P 网贷企业的发展提出对策建议。&lt;/p&gt;\n&lt;p&gt;　　国外P2P 网贷企业发展趋势：&lt;/p&gt;\n&lt;p&gt;　　(1) P2P 网贷企业与传统正规金融关联性越来越强。&lt;/p&gt;\n&lt;p&gt;　　合作点是 P2P 网贷企业的技术优势与正规金融机构的资金优势。正规金融机构以入股权方式向 P2P 网贷企业注资成为可能。&lt;/p&gt;\n&lt;p&gt;　　(2)机构投资人对于 P2P 网贷企业的青睐程度加大&lt;/p&gt;\n&lt;p&gt;　　从货币市场的现状可以看出，某些资本市场的产品收益率已大不如前，而 P2P 网贷企业的产品的却拥有较高的收益率;因此吸引了更多的机构投资人，一些基金也开始了对 P2P网贷产品的配置。&lt;/p&gt;\n&lt;p&gt;　　(3)跨国 P2P 网贷企业的业务越来越多&lt;/p&gt;\n&lt;p&gt;　　实现跨国业务是互联网金融不受地域限制的优势所在。在国家紧密度较高的欧洲，P2P网贷企业的跨国业务风生水起。&lt;/p&gt;\n&lt;p&gt;　　(4)P2P 网贷行业的模式向其他行业推广&lt;/p&gt;\n&lt;p&gt;　　如美国的 Lemonade 企业以及德国的 Friendsurance、英国的 Guevara 和法国的 ins Peer将P2P 网贷模式应用在了保险行业。通过这种方式，将具有同种保险需求的投保人分成小组，有效的降低了投保人的道德风险。&lt;/p&gt;\n&lt;p&gt;　　(5)P2P 网贷行业中小贷款规模扩大&lt;/p&gt;\n&lt;p&gt;　　与中国的银行业相似，很多国外大型银行也不能有效的满足中小企业的融资需求，P2P网贷企业势必以其方便、快捷的借贷模式赢得更多中小企业的青睐。&lt;/p&gt;\n&lt;p&gt;　　(6)P2P 网贷企业优秀员工面临被挖角&lt;/p&gt;\n&lt;p&gt;　　P2P 网贷企业 在吸引优秀人才 的同时也面临着流 失的风险。如高 盛企业就有向Lending Club 和 Prosper 招募员工。随着国外P2P 网贷行业不断的成熟，优秀的员工也会更加的炙手可热。&lt;/p&gt;\n&lt;p&gt;　　对我国 P2P 网贷企业发展的启示：&lt;/p&gt;\n&lt;p&gt;　　学习西方先进经验，一直是我国各行业发展不可缺少的重要因素。发展较早、相对规范、创新性较强的国外P2P 网贷企业的经验，可以对我国 P2P 网贷企业的发展带来如下启示：&lt;/p&gt;\n&lt;p&gt;　　(1)加强行业监管不留死角&lt;/p&gt;\n&lt;p&gt;　　从国外 P2P 网贷企业发展状况可以看出，无论企业规模大小，都存在违规操作资金的风险，即便是上市企业也不例外，因此行业监管必须严格规范、不留死角。这一点，对于中小型 P2P 网贷企业众多的我国，显得尤为重要。&lt;/p&gt;\n&lt;p&gt;　　(2)加强与传统金融机构的合作快速发展&lt;/p&gt;\n&lt;p&gt;　　国外 P2P 网贷行业发展中有通过与传统金融机构的合作，而迅速得到发展的成功案例。我国P2P 网贷企业可借鉴国外这方面的经验，利用自身技术及资源等优势与传统金融机构合作，积极主动学习传统金融行业的管理经验、共享传统金融融机构的客户资源。既可以增强 P2P 网贷企业的专业度、又可以获得更快的发展。&lt;/p&gt;\n&lt;p&gt;　　(3)加强产品创新保持企业生命力&lt;/p&gt;\n&lt;p&gt;　　纵观国外 P2P 网贷行业发展，各企业都十分重视产品研发，这是企业保持旺盛生命力的关键所在。而我国 P2P 网贷行业产品同质化十分严重，从长远来说定会影响其健康发展。加强产品研发、不断推出新产品的经验，值得我国 P2P 网贷借鉴。&lt;/p&gt;\n&lt;p&gt;　　(4)加强评级体系建设降低行业风险&lt;/p&gt;\n&lt;p&gt;　　国外 P2P 网贷行业发展规范的重要因素之一，是建立了相对完善的评级系统。主要体现在第三方专业评级机构参与 P2P 网贷企业评级、网络企业利用大量社交信息通过建立评级模型对贷款人进行评级以及建立P2P 网贷行业指数评级系统三方面。这样，无论是中介金融机构、贷款人还是投资人均可以找到自己所需的评估信息作为参考，帮助自己规避风险，做有良心的P2P平台，从而使整体行业的风险大大降低。 因此，国外 P2P 网贷行业建立有效的评级体系的经验也是值得借鉴的。&lt;/p&gt;\n&lt;p&gt;　　(5)加强跨国合作扩大客户范围&lt;/p&gt;\n&lt;p&gt;　　国外已经出现可以为境外客户提供贷款业务的 P2P 网贷企业，如 Ise Pankur 企业。这些企业在为国内需求者提供服务同时还可为境外客户提供服务。这种运营模式可以有效扩大的客户和资金范围，成为 P2P 网贷企业新的增长点。针对我国 P2P 网贷行业目前竞争十分激烈的现状，有实力的企业积极拓展国外市场、实现跨国合作，不失为发展的新选择。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(119, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499930482, 1499930482, 1499930471, 0, 'P2P理财单月交易量超过信托！网贷行业依托监管，迎来春天！', '', '', '', '\n&lt;p&gt;　　如今的余额宝在经历了央行多次降息降准之后，无论年化收益率还是规模都与前两年不可同日而语。&lt;/p&gt;\n&lt;p&gt;　　2013年刚诞生的余额宝第一次使人们发现原来理财可以如此简单快捷，既不耽误日常花销，还能获取远高于同样存取灵活的银行活期的收益，而且收益每天看得见，余额宝就此迅速打开市场，获得了无数忠实粉丝。当然，这也与支付宝和淘宝积累的用户基础，以及阿里巴巴的实力担保等原因密切相关。无论怎样，余额宝开启了全民理财的新时代，也为后来互联网金融带来的其他新型理财方式的发展奠定了基础。&lt;/p&gt;\n&lt;p&gt;　　然而花无百日红，2013年的钱荒事件的确为余额宝的发展提供了难得一遇的契机，但随着经济的发展，市场逐渐由钱荒转变为资产配置荒，再加上央行多次降息降准，市场上流动资金充足，余额宝议价能力降低，收益自然也应声而落。不断涌现的新型互联网理财方式也在一定程度上分流了余额宝的用户量，余额宝规模缩水、人气不断下降。&lt;/p&gt;\n&lt;p&gt;　　2016年9月P2P网贷行业单月实现了1947.17亿元的整体成交量，环比8月增长了1.93%，同比增长了69%，而单月成交量离2000亿元仅一步之遥。截至2016年9月底，P2P网贷行业历史累计成交量为27762.26亿元；从2007年到2015年，行业成交量实现第一个万亿。而第二个万亿用了7个月，第三个万亿来的更快，2016年1-9月累计成交量达到14110.05亿元，是2015年1-9月累计成交量的2.37倍。数据显示P2P网贷行业增长势头强劲，发展趋势良好；&lt;/p&gt;\n&lt;p&gt;　　P2P行业发展如此迅猛，除了P2P自身优势，还在于广大投资者的加入，随着人们理财意识的提高，P2P理财凭借着其高收益，低门槛，灵活简单的优势，越来越成为人们进行投资理财的首选。&lt;/p&gt;\n&lt;p&gt;　　随着P2P理财的普及，相信也将有更多新手加入到P2P理财的大军中。虽然P2P行业越来越规范发展，但还是存在不少问题平台。所以投资者在进行P2P理财时还需多加谨慎，选择靠谱安全的平台进行理财投资。&lt;/p&gt;\n&lt;p&gt;　　1、学习金融知识打好理财基础&lt;/p&gt;\n&lt;p&gt;　　究竟投资哪个平台才最靠谱？对于金融小白来说，多多关注金融行业的知识、学习理财技巧，是必须要做的事情。如果对投资理财P2P不了解，可以通过各种渠道深入了解其背景信息，或者浏览行业网站，还可以加入以理财知识为主题的讨论群。&lt;/p&gt;\n&lt;p&gt;　　2、安全放第一收益摆其次&lt;/p&gt;\n&lt;p&gt;　　许多刚刚接触P2P理财行业的人，只看到收益，却很难辨别风险。其实对于新人，最好综合从平台资质、平台背景、风控、收益范围、资金托管等因素去综合选择平台。另外，最好分散投资，可以选择几个不错的平台进行分散投资，降低风险。&lt;/p&gt;\n&lt;p&gt;　　3、收益太高太低都不好 适中才是最好的&lt;/p&gt;\n&lt;p&gt;　　P2P平台的收益并不是高就好，倘若平台年化率超过20%，那么，你就该多打几个问号了。当然，年化率也不宜太低，如果平台年化率低于10%，投资的意义又何在？选择8%-12%范围内的中间收益较为为稳妥。&lt;/p&gt;\n&lt;p&gt;　　4、实地细考察看清真面目&lt;/p&gt;\n&lt;p&gt;　　对于投资新人而言，可以找几个同城又有P2P考察经验的伙伴到公司进行实地考察，这样可以深入地了解平台运营团队的精神风貌、管理团队的专业水平、平台实力等。&lt;/p&gt;\n&lt;p&gt;　　P2P正式纳入金融监管层监管体系&lt;/p&gt;\n&lt;p&gt;　　2015年7月18日国务院发布《关于促进互联网金融健康发展的指导意见》成为互联网金融发展的纲要性指导文件；2016年8月24日，银监会十部委联合对外公布《网络借贷信息中介机构业务活动管理暂行办法》正式将网络借贷纳入监管体系，确认了P2P的合法身份和地位，P2P作为促进普惠金融发展的独具特色的一种形式，作为刺激传统金融改革的催化剂，P2P行业会在更大一轮的洗牌和探索中，获得更长远的发展。&lt;/p&gt;\n&lt;p&gt;　　投资永远是收益和风险成正比，风险意识最重要&lt;/p&gt;\n&lt;p&gt;　　监管落地之后，行业的洗牌还会持续一段时间，对于抗风险能力较近年，在经济转型时期，国家大力推崇消费能力的提升，并将其作为拉动GDP的主要动力。消费能力直接决定了消费金融的规模，而互联网消费金融依靠电商、移动互联网等新模式，逐渐成长为个人消费的新手段。&lt;/p&gt;\n&lt;p&gt;　　如今互联网消费金融呈现一片欣欣向荣的景象：国家政策支持、资本市场进入、多家P2P公司转型布局等等，多方信息展现出互联网消费金融行业的强势。艾瑞试从“信贷支出比-短期消费信贷渗透率-互联网消费金融渗透率”这一链条的角度，观察互联网消费金融的现状和趋势。&lt;/p&gt;\n&lt;p&gt;　　▌消费信贷占比—适度消费向超前消费的转变&lt;/p&gt;\n&lt;p&gt;　　消费信贷作为一种全新的支付手段，正在快速渗透到个人消费中。据中国人民银行公开数据及艾瑞计算，2008年消费信贷占居民消费支出的比例仅有3.6%，而美国作为消费模式和信贷模式都已成熟的国家，其信贷支出比高达26.5%。随着国民对消费信贷的熟知和认可，消费信贷占比呈线性持续上涨，到了2016年预计占比可高达18%左右，逐渐靠近美国水平。&lt;/p&gt;\n&lt;p&gt;　　艾瑞咨询认为，信贷支出比依然有较大的空间，至少有5%-8%的提升区间，且以每年2%的幅度上升，如果按照此速率，预计在2021年消费信贷就可达到较为成熟的水平。以90后，甚至是00后的年轻消费者是增长的主要用户群体，以3C数码、智能硬件、旅游教育等新兴消费领域是增长的主要行业。&lt;/p&gt;\n&lt;p&gt;　　▌短期消费信贷规模渗透率—长期信贷向短期信贷的转变&lt;/p&gt;\n&lt;p&gt;　　在过去，消费贷款的主要用途在于购房等中长期信贷，短期消费信贷的比例很小，2008年仅占7.3%。近几年内各类消费需求的转变和提升促使占比以较稳定的增幅提升，预计2016年将达到16.1%，规模突破5亿。&lt;/p&gt;\n&lt;p&gt;　　艾瑞咨询认为，近几年3C数码产品、科技硬件设备等更新频繁，增加了年轻消费者的消费欲望和消费需求。加上旅游市场、教育市场等传统老行业注入互联网基因，再次掀起精神消费的潮流。这些消费品类金额较大，绝大部分用户无法一次性支付，因此更多选择信贷支付，很好地缓解了资金压力。&lt;/p&gt;\n&lt;p&gt;　　目前，消费金融更多与实体商品结合，不过也出现了同旅游、教育市场联系的苗头。未来，消费金融将进入更多地行业，真正地将金融带入生活中。&lt;/p&gt;\n&lt;p&gt;　　▌互联网消费金融渗透率—放款便捷提升用户体验&lt;/p&gt;\n&lt;p&gt;　　互联网消费金融聚焦短期消费信贷，且覆盖人群更加全面，既包括信用良好的高净值用户，也有信用空白的大学生和蓝领人群等。并且依附在互联网，给了消费金融更多的渠道。2014年2月，随着京东白条杀入消费金融市场，以及分期乐、趣分期等网络分期平台抢占校园市场，互联网消费金融开始崛起。2015年阿里推出花呗，再一次拉动了互联网消费金融的整体规模，增幅高达546%。渗透率由2011年不足1%，到2016年预计达到8.5%的渗透率，可以预见互联网消费金融将在短期消费信贷上大展身手。&lt;/p&gt;\n&lt;p&gt;　　艾瑞咨询认为，互联网消费金融的最大优势在于放款便捷。传统的消费金融公司可能需要几天甚至是一周的审核，互联网依靠大数据、人工智能等高科技，审核只需要几小时甚至几分钟就可以了，大大提高了消费者的用户体验。并且，互联网消费金融很好地融入了消费场景中，线上同电商结合，线下同实体店结合，提高了用户转化率和渗透率。另一个优势在于，随着大数据技术的提高，一些行为数据、文本数据、图像等非结构化数据都可以被采集到，这些数据的分析利用提高了审核的准确度，降低了违约风险。&lt;/p&gt;\n&lt;p&gt;　　小的平台经营的风险依然比较到，而且行业资金、用户、资源慢慢向合规平台，盼望着，盼望着，网贷&quot;宪法&quot;已经落地，央行公开普及P2P知识，人民日报正名，行业的春天已经来了，你是否已经搭上了趋势的快车，获得稳健的理财收益！&lt;/p&gt;\n&lt;p&gt;　　曾经的王者-信托VS网贷P2P理财&lt;/p&gt;\n&lt;p&gt;　　单月交易量，网贷P2P完胜！&lt;/p&gt;\n&lt;p&gt;　　2016年9月，54家信托公司共计成立406款信托产品，其中343款产品公布了成立规模，产品总成立规模为959.08亿元，8月份的总成立规模为1078.99亿元，环比下降11.11%。&lt;/p&gt;\n&lt;p&gt;　　2016年9月P2P网贷行业单月已经实现了1947.17亿元的整体成交量，环比8月增长了1.93%，同比增长了69%，并且单月成交量离2000亿元仅一步之遥。&lt;/p&gt;\n&lt;p&gt;　　行业综合收益率，网贷P2P完胜！&lt;/p&gt;\n&lt;p&gt;　　从信托产品的预期收益率来看，9月份共有284款产品公布了预期收益率，平均预期收益率为6.31%，相比8月份继续下降。&lt;/p&gt;\n&lt;p&gt;　　网贷P2P行业综合收益率首次跌破10%，目前为9.83%，环比下降了25个基点（1个基点=0.01%），同比下降了280个基点。&lt;/p&gt;\n&lt;p&gt;　　产品安全性，各有亮点！&lt;/p&gt;\n&lt;p&gt;　　受全球经济周期变化、资本市场剧烈动荡、央行降息、地方政府以及大型企业通过直接发债降低融资成本等宏观环境变化影响，因此曾经的艺术品、债权类产品均有延期兑付的情况。&lt;/p&gt;\n&lt;p&gt;　　如果你选择网贷P2P理财方式，你将受到《民法》《公司法》《合同法》《网络借贷信息中介机构业务活动管理暂行办法》保护。&lt;/p&gt;\n&lt;p&gt;　　现在网贷P2P理财如此受欢迎，其实原因也很简单：&lt;/p&gt;\n&lt;p&gt;　　1.投资门槛低，真正做到普惠金融。&lt;/p&gt;\n&lt;p&gt;　　2.收益稳健合理，根据现在的经济情况，每年可以获得10%左右的理财收益。&lt;/p&gt;\n&lt;p&gt;　　3.投资期限灵活，1月至几年都有，投资结束后随时可选择新的项目，资金没有空置期。&lt;/p&gt;\n&lt;p&gt;　　4.相关政策监管从严，要求银行资金存管，小额分散，办理相关网关证件，都说明在做大程度的保护投资者的安全。&lt;/p&gt;\n&lt;p&gt;　　所以，投资理财就应该在正确的时间选择正确的产品。聪明人现在已经逃离房产投机，不再进入股市漩涡当中，选择固定收益类P2P理财产品，稳健安心！&lt;/p&gt;\n&lt;p&gt;　　强实力平台靠拢，投资P2P之前先学习，不了解，看不懂，不投资，监管到位后，正是认真观察、捡漏的时候。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(120, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499930508, 1499930508, 1499930493, 0, '互联网消费金融成为P2P平台转型的主要方向之一', '', '', '', '\n&lt;p&gt;　　如今的余额宝在经历了央行多次降息降准之后，无论年化收益率还是规模都与前两年不可同日而语。&lt;/p&gt;\n&lt;p&gt;　　2013年刚诞生的余额宝第一次使人们发现原来理财可以如此简单快捷，既不耽误日常花销，还能获取远高于同样存取灵活的银行活期的收益，而且收益每天看得见，余额宝就此迅速打开市场，获得了无数忠实粉丝。当然，这也与支付宝和淘宝积累的用户基础，以及阿里巴巴的实力担保等原因密切相关。无论怎样，余额宝开启了全民理财的新时代，也为后来互联网金融带来的其他新型理财方式的发展奠定了基础。&lt;/p&gt;\n&lt;p&gt;　　然而花无百日红，2013年的钱荒事件的确为余额宝的发展提供了难得一遇的契机，但随着经济的发展，市场逐渐由钱荒转变为资产配置荒，再加上央行多次降息降准，市场上流动资金充足，余额宝议价能力降低，收益自然也应声而落。不断涌现的新型互联网理财方式也在一定程度上分流了余额宝的用户量，余额宝规模缩水、人气不断下降。&lt;/p&gt;\n&lt;p&gt;　　2016年9月P2P网贷行业单月实现了1947.17亿元的整体成交量，环比8月增长了1.93%，同比增长了69%，而单月成交量离2000亿元仅一步之遥。截至2016年9月底，P2P网贷行业历史累计成交量为27762.26亿元；从2007年到2015年，行业成交量实现第一个万亿。而第二个万亿用了7个月，第三个万亿来的更快，2016年1-9月累计成交量达到14110.05亿元，是2015年1-9月累计成交量的2.37倍。数据显示P2P网贷行业增长势头强劲，发展趋势良好；&lt;/p&gt;\n&lt;p&gt;　　P2P行业发展如此迅猛，除了P2P自身优势，还在于广大投资者的加入，随着人们理财意识的提高，P2P理财凭借着其高收益，低门槛，灵活简单的优势，越来越成为人们进行投资理财的首选。&lt;/p&gt;\n&lt;p&gt;　　随着P2P理财的普及，相信也将有更多新手加入到P2P理财的大军中。虽然P2P行业越来越规范发展，但还是存在不少问题平台。所以投资者在进行P2P理财时还需多加谨慎，选择靠谱安全的平台进行理财投资。&lt;/p&gt;\n&lt;p&gt;　　1、学习金融知识打好理财基础&lt;/p&gt;\n&lt;p&gt;　　究竟投资哪个平台才最靠谱？对于金融小白来说，多多关注金融行业的知识、学习理财技巧，是必须要做的事情。如果对投资理财P2P不了解，可以通过各种渠道深入了解其背景信息，或者浏览行业网站，还可以加入以理财知识为主题的讨论群。&lt;/p&gt;\n&lt;p&gt;　　2、安全放第一收益摆其次&lt;/p&gt;\n&lt;p&gt;　　许多刚刚接触P2P理财行业的人，只看到收益，却很难辨别风险。其实对于新人，最好综合从平台资质、平台背景、风控、收益范围、资金托管等因素去综合选择平台。另外，最好分散投资，可以选择几个不错的平台进行分散投资，降低风险。&lt;/p&gt;\n&lt;p&gt;　　3、收益太高太低都不好 适中才是最好的&lt;/p&gt;\n&lt;p&gt;　　P2P平台的收益并不是高就好，倘若平台年化率超过20%，那么，你就该多打几个问号了。当然，年化率也不宜太低，如果平台年化率低于10%，投资的意义又何在？选择8%-12%范围内的中间收益较为为稳妥。&lt;/p&gt;\n&lt;p&gt;　　4、实地细考察看清真面目&lt;/p&gt;\n&lt;p&gt;　　对于投资新人而言，可以找几个同城又有P2P考察经验的伙伴到公司进行实地考察，这样可以深入地了解平台运营团队的精神风貌、管理团队的专业水平、平台实力等。&lt;/p&gt;\n&lt;p&gt;　　P2P正式纳入金融监管层监管体系&lt;/p&gt;\n&lt;p&gt;　　2015年7月18日国务院发布《关于促进互联网金融健康发展的指导意见》成为互联网金融发展的纲要性指导文件；2016年8月24日，银监会十部委联合对外公布《网络借贷信息中介机构业务活动管理暂行办法》正式将网络借贷纳入监管体系，确认了P2P的合法身份和地位，P2P作为促进普惠金融发展的独具特色的一种形式，作为刺激传统金融改革的催化剂，P2P行业会在更大一轮的洗牌和探索中，获得更长远的发展。&lt;/p&gt;\n&lt;p&gt;　　投资永远是收益和风险成正比，风险意识最重要&lt;/p&gt;\n&lt;p&gt;　　监管落地之后，行业的洗牌还会持续一段时间，对于抗风险能力较近年，在经济转型时期，国家大力推崇消费能力的提升，并将其作为拉动GDP的主要动力。消费能力直接决定了消费金融的规模，而互联网消费金融依靠电商、移动互联网等新模式，逐渐成长为个人消费的新手段。&lt;/p&gt;\n&lt;p&gt;　　如今互联网消费金融呈现一片欣欣向荣的景象：国家政策支持、资本市场进入、多家P2P公司转型布局等等，多方信息展现出互联网消费金融行业的强势。艾瑞试从“信贷支出比-短期消费信贷渗透率-互联网消费金融渗透率”这一链条的角度，观察互联网消费金融的现状和趋势。&lt;/p&gt;\n&lt;p&gt;　　▌消费信贷占比—适度消费向超前消费的转变&lt;/p&gt;\n&lt;p&gt;　　消费信贷作为一种全新的支付手段，正在快速渗透到个人消费中。据中国人民银行公开数据及艾瑞计算，2008年消费信贷占居民消费支出的比例仅有3.6%，而美国作为消费模式和信贷模式都已成熟的国家，其信贷支出比高达26.5%。随着国民对消费信贷的熟知和认可，消费信贷占比呈线性持续上涨，到了2016年预计占比可高达18%左右，逐渐靠近美国水平。&lt;/p&gt;\n&lt;p&gt;　　艾瑞咨询认为，信贷支出比依然有较大的空间，至少有5%-8%的提升区间，且以每年2%的幅度上升，如果按照此速率，预计在2021年消费信贷就可达到较为成熟的水平。以90后，甚至是00后的年轻消费者是增长的主要用户群体，以3C数码、智能硬件、旅游教育等新兴消费领域是增长的主要行业。&lt;/p&gt;\n&lt;p&gt;　　▌短期消费信贷规模渗透率—长期信贷向短期信贷的转变&lt;/p&gt;\n&lt;p&gt;　　在过去，消费贷款的主要用途在于购房等中长期信贷，短期消费信贷的比例很小，2008年仅占7.3%。近几年内各类消费需求的转变和提升促使占比以较稳定的增幅提升，预计2016年将达到16.1%，规模突破5亿。&lt;/p&gt;\n&lt;p&gt;　　艾瑞咨询认为，近几年3C数码产品、科技硬件设备等更新频繁，增加了年轻消费者的消费欲望和消费需求。加上旅游市场、教育市场等传统老行业注入互联网基因，再次掀起精神消费的潮流。这些消费品类金额较大，绝大部分用户无法一次性支付，因此更多选择信贷支付，很好地缓解了资金压力。&lt;/p&gt;\n&lt;p&gt;　　目前，消费金融更多与实体商品结合，不过也出现了同旅游、教育市场联系的苗头。未来，消费金融将进入更多地行业，真正地将金融带入生活中。&lt;/p&gt;\n&lt;p&gt;　　▌互联网消费金融渗透率—放款便捷提升用户体验&lt;/p&gt;\n&lt;p&gt;　　互联网消费金融聚焦短期消费信贷，且覆盖人群更加全面，既包括信用良好的高净值用户，也有信用空白的大学生和蓝领人群等。并且依附在互联网，给了消费金融更多的渠道。2014年2月，随着京东白条杀入消费金融市场，以及分期乐、趣分期等网络分期平台抢占校园市场，互联网消费金融开始崛起。2015年阿里推出花呗，再一次拉动了互联网消费金融的整体规模，增幅高达546%。渗透率由2011年不足1%，到2016年预计达到8.5%的渗透率，可以预见互联网消费金融将在短期消费信贷上大展身手。&lt;/p&gt;\n&lt;p&gt;　　艾瑞咨询认为，互联网消费金融的最大优势在于放款便捷。传统的消费金融公司可能需要几天甚至是一周的审核，互联网依靠大数据、人工智能等高科技，审核只需要几小时甚至几分钟就可以了，大大提高了消费者的用户体验。并且，互联网消费金融很好地融入了消费场景中，线上同电商结合，线下同实体店结合，提高了用户转化率和渗透率。另一个优势在于，随着大数据技术的提高，一些行为数据、文本数据、图像等非结构化数据都可以被采集到，这些数据的分析利用提高了审核的准确度，降低了违约风险。&lt;/p&gt;\n&lt;p&gt;　　小的平台经营的风险依然比较到，而且行业资金、用户、资源慢慢向合规平台，强实力平台靠拢，投资P2P之前先学习，不了解，看不懂，不投资，监管到位后，正是认真观察、捡漏的时候。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(121, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499930535, 1499930535, 1499930523, 0, '余额宝走下神坛,P2P成主流理财方式 !', '', '', '', '\n&lt;p&gt;　　如今的余额宝在经历了央行多次降息降准之后，无论年化收益率还是规模都与前两年不可同日而语。&lt;/p&gt;\n&lt;p&gt;　　2013年刚诞生的余额宝第一次使人们发现原来理财可以如此简单快捷，既不耽误日常花销，还能获取远高于同样存取灵活的银行活期的收益，而且收益每天看得见，余额宝就此迅速打开市场，获得了无数忠实粉丝。当然，这也与支付宝和淘宝积累的用户基础，以及阿里巴巴的实力担保等原因密切相关。无论怎样，余额宝开启了全民理财的新时代，也为后来互联网金融带来的其他新型理财方式的发展奠定了基础。&lt;/p&gt;\n&lt;p&gt;　　然而花无百日红，2013年的钱荒事件的确为余额宝的发展提供了难得一遇的契机，但随着经济的发展，市场逐渐由钱荒转变为资产配置荒，再加上央行多次降息降准，市场上流动资金充足，余额宝议价能力降低，收益自然也应声而落。不断涌现的新型互联网理财方式也在一定程度上分流了余额宝的用户量，余额宝规模缩水、人气不断下降。&lt;/p&gt;\n&lt;p&gt;　　2016年9月P2P网贷行业单月实现了1947.17亿元的整体成交量，环比8月增长了1.93%，同比增长了69%，而单月成交量离2000亿元仅一步之遥。截至2016年9月底，P2P网贷行业历史累计成交量为27762.26亿元；从2007年到2015年，行业成交量实现第一个万亿。而第二个万亿用了7个月，第三个万亿来的更快，2016年1-9月累计成交量达到14110.05亿元，是2015年1-9月累计成交量的2.37倍。数据显示P2P网贷行业增长势头强劲，发展趋势良好；&lt;/p&gt;\n&lt;p&gt;　　P2P行业发展如此迅猛，除了P2P自身优势，还在于广大投资者的加入，随着人们理财意识的提高，P2P理财凭借着其高收益，低门槛，灵活简单的优势，越来越成为人们进行投资理财的首选。&lt;/p&gt;\n&lt;p&gt;　　随着P2P理财的普及，相信也将有更多新手加入到P2P理财的大军中。虽然P2P行业越来越规范发展，但还是存在不少问题平台。所以投资者在进行P2P理财时还需多加谨慎，选择靠谱安全的平台进行理财投资。&lt;/p&gt;\n&lt;p&gt;　　1、学习金融知识打好理财基础&lt;/p&gt;\n&lt;p&gt;　　究竟投资哪个平台才最靠谱？对于金融小白来说，多多关注金融行业的知识、学习理财技巧，是必须要做的事情。如果对投资理财P2P不了解，可以通过各种渠道深入了解其背景信息，或者浏览行业网站，还可以加入以理财知识为主题的讨论群。&lt;/p&gt;\n&lt;p&gt;　　2、安全放第一收益摆其次&lt;/p&gt;\n&lt;p&gt;　　许多刚刚接触P2P理财行业的人，只看到收益，却很难辨别风险。其实对于新人，最好综合从平台资质、平台背景、风控、收益范围、资金托管等因素去综合选择平台。另外，最好分散投资，可以选择几个不错的平台进行分散投资，降低风险。&lt;/p&gt;\n&lt;p&gt;　　3、收益太高太低都不好 适中才是最好的&lt;/p&gt;\n&lt;p&gt;　　P2P平台的收益并不是高就好，倘若平台年化率超过20%，那么，你就该多打几个问号了。当然，年化率也不宜太低，如果平台年化率低于10%，投资的意义又何在？选择8%-12%范围内的中间收益较为为稳妥。&lt;/p&gt;\n&lt;p&gt;　　4、实地细考察看清真面目&lt;/p&gt;\n&lt;p&gt;　　对于投资新人而言，可以找几个同城又有P2P考察经验的伙伴到公司进行实地考察，这样可以深入地了解平台运营团队的精神风貌、管理团队的专业水平、平台实力等。&lt;/p&gt;\n&lt;p&gt;　　P2P正式纳入金融监管层监管体系&lt;/p&gt;\n&lt;p&gt;　　2015年7月18日国务院发布《关于促进互联网金融健康发展的指导意见》成为互联网金融发展的纲要性指导文件；2016年8月24日，银监会十部委联合对外公布《网络借贷信息中介机构业务活动管理暂行办法》正式将网络借贷纳入监管体系，确认了P2P的合法身份和地位，P2P作为促进普惠金融发展的独具特色的一种形式，作为刺激传统金融改革的催化剂，P2P行业会在更大一轮的洗牌和探索中，获得更长远的发展。&lt;/p&gt;\n&lt;p&gt;　　投资永远是收益和风险成正比，风险意识最重要&lt;/p&gt;\n&lt;p&gt;　　监管落地之后，行业的洗牌还会持续一段时间，对于抗风险能力较小的平台经营的风险依然比较到，而且行业资金、用户、资源慢慢向合规平台，强实力平台靠拢，投资P2P之前先学习，不了解，看不懂，不投资，监管到位后，正是认真观察、捡漏的时候。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(122, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499930560, 1499930560, 1499930549, 0, 'P2P利息仍将持续下降，投资人热情反而高涨！', '', '', '', '\n&lt;p&gt;　　根据权威第三方透露，他们认为网贷行业的综合收益率还会继续走低，预计年底将跌至9%～9.5%。面对降息不必恐慌，因为该来的始终还是要来的。降息后仍留下的平台和投资人对双方来讲或许都是优质的。P2P投资，还是觉得要从长远的角度来看，坚守安全稳定的收益才是硬道理。&lt;/p&gt;\n&lt;p&gt;　　P2P的利息收益问题，永远是投资人最关心的问题。相对于其他理财产品，投资人之所以心仪P2P，大部分原因是因为利好，就像一投资人朋友曾经和我说，“我玩P2P就是因为它的利息算高的，不然还玩什么P2P？”&lt;/p&gt;\n&lt;p&gt;　　但是眼下，降息已成大潮，不少P2P平台都在陆续下调产品收益率，还没有下调产品收益率的平台也正在下调收益率的路上，或者说，正在酝酿降息的计划。&lt;/p&gt;\n&lt;p&gt;　　降息似乎已经成为一种共识。根据第三方数据显示，2016年9月网贷行业综合收益率首次跌破10%大关，降至9.83%，环比下降了25个基点(1个基点=0.01%)，同比下降了280个基点。&lt;/p&gt;\n&lt;p&gt;　　总体来说，主流综合收益率区间仍分布在8%-12%，处在这个收益率区间的平台占比为46.37%。其次是综合收益率在12%-18%的平台，处在这个收益率区间的平台占比为35.41%。《暂行办法》出台之后，洗牌趋势愈加明显，方方面面的动作都直接地影响了P2P平台给到投资人的收益率。&lt;/p&gt;\n&lt;p&gt;　　一，由于央行的降准降息，社会上的流动资金多了，社会整体融资成本下降。加之优质资产端的争夺呈现尔虞我诈的局面，未来市场上放贷业务的利息也必然会受到影响。网贷企业利差空间被压缩了，P2P平台要提高业务质量，降息是必然趋势。&lt;/p&gt;\n&lt;p&gt;　　二，《暂行办法》最关键的作用就是引导各P2P平台，往合规合法的方向健康地运营发展，但是办法中的各项要求使得很多平台整改力度较大，所以合规调整成本增大。&lt;/p&gt;\n&lt;p&gt;　　三，也有不少平台是处于自身运营和发展的方向，采取主动降息的策略来应对。根据某行业机构此前针对国内300家网贷平台的调查结果显示，P2P平台要实现盈亏平衡点需要达到约4800万的月成交额，57600万元的年成交额。然而整个行业处于盈亏平衡点的企业也仅有42家，也就意味着90%以上的P2P平台其实是不赚钱的。外加接连几次双降，对于整个网贷行业来说，降息是最理性的解决方案。&lt;/p&gt;\n&lt;p&gt;　　说起P2P平台的辛酸之处，平台的从业人员恐怕是最有发言权的。有人说“在陆家嘴CBD工作的金融民工们，中午去国金中心吃饭的，一般是信托和投行的，去东昌路吃黄焖鸡米饭的，一般是P2P民工们。”还有人说，“金融民工的分层，其实从早饭就可以看出。星巴克、85度C的一般为投行、信托民工。KFC等快餐店的一般为银行民工。山东煎饼加蛋、加香肠的一般为证券民工。不加蛋原味的就是我，不一样的P2P民工。”&lt;/p&gt;\n&lt;p&gt;　　真正合规的P2P平台盈利的方式主要是收取平台中介费、VIP年费、利息管理费、借款管理费，充值，提现收取一定的费用。其实利润是微乎其微的，早期又要面对用高息吸引资金端的局面，更有甚者还采用烧钱模式推广，平台的运营成本过大。&lt;/p&gt;\n&lt;p&gt;　　所以很多平台如今选择降息的策略，一是为了让整个行业的利息收益回落到一个正常区间，二是为了让平台更好地活下去，三是为了通过降息加强平台自身的运营能力，抗风险能力等，从而给投资人一个更好的选择。&lt;/p&gt;\n&lt;p&gt;　　投资人是怎么看待降息这个问题的？降息前，有很多P2P的旁观者猜测，现在降息了，P2P场上的人应该都会离场的。还有不少的声音也在传播P2P降息，曲终人散的氛围。却不曾想到，息虽降，人犹在。而且，越来越多的人进场。&lt;/p&gt;\n&lt;p&gt;　　从第三方权威机构的数据统计可以发现，虽然网贷行业的综合收益率下降了，但网贷行业的整体成交量却实现了增长。2016年9月P2P网贷行业单月实现了1947.17亿元的整体成交量，环比8月增长了1.93%，同比增长了69%。&lt;/p&gt;\n&lt;p&gt;　　为什么P2P降息而投资用户却没有流失，反而增长呢？其实，如果单个平台的收益率下调，可能会导致偏好高利息收益的投资人转向高收益的平台。但现实情况告诉我们，首先这不是单个平台的收益率下调，其次，不是所有的投资人都是高收益偏好的类型。&lt;/p&gt;\n&lt;p&gt;　　前不久就有投资人朋友，亲口告诉我，“其实我觉得降息挺好的，这些平台有钱去运营，日子不用紧巴巴的，他们好好做，我也就不用担心，他跑路不跑路的。”先不去追求这位投资人朋友的逻辑问题，只是他当时这一番话，让我清楚地知道，原来还有投资人是不抗拒平台降息，并且真心希望平台降息的。&lt;/p&gt;\n&lt;p&gt;　　降息就像是平台和投资人之间的一次共同考验，降息后，做得更好的平台是正确利用了降息的契机，选择留下的投资人，是稳定性高，诚信度高的优质用户。&lt;/p&gt;\n&lt;p&gt;　　最后也是最重要的问题，网贷行业的降息力度已经跌破10%的大关了，还会继续往下跌吗？&lt;/p&gt;\n&lt;p&gt;　　根据权威第三方的研究人员透露，他们认为网贷行业的综合收益率还会继续走低，预计年底将跌至9%～9.5%。&lt;/p&gt;\n&lt;p&gt;　　面对降息不必恐慌，因为该来的始终还是要来的。随着整体经济的发展及风险收益的变化，网贷行业的整体收益必然要回到与经济发展相适应的区间。历史的车轮已经滚滚而来，挡也是挡不住的。不如就看看上车之后，如何玩得更好吧。&lt;/p&gt;\n&lt;p&gt;　　降息的环境下，关于P2P投资的建议。还是觉得要从长远的角度来看，坚守安全稳定的收益才是硬道理。毕竟安全是互联网金融的核心竞争力，而安全也是投资人最心心念念的东西。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}');
INSERT INTO `jr_portal_post` (`id`, `parent_id`, `post_type`, `post_format`, `user_id`, `post_status`, `comment_status`, `is_top`, `recommended`, `post_hits`, `post_like`, `comment_count`, `create_time`, `update_time`, `published_time`, `delete_time`, `post_title`, `post_keywords`, `post_excerpt`, `post_source`, `post_content`, `post_content_filtered`, `more`) VALUES
(123, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1499930592, 1503372604, 1499930520, 0, '这三大现象表明P2P行业正总体向好', '', '', '', '\n&lt;p&gt;　　近期发布的《P2P网贷行业2016年9月月报》指出，9月投资人数为345.43万人，环比下降了1.81%，网贷行业景气指数也由8月的131.13降至127.46。9月P2P行业人气指数有微弱下滑，但从整体交易额上看，P2P行业仍保持着增速发展势头。数据显示，9月P2P网贷行业单月成交量达到了1947.17亿元，环比8月增长1.93%，同比增长了69%。缓慢上升的交易额仍然预示了整个行业的增速发展势头。尤其是8月24日银监会颁布P2P行业首部监管细则以后，P2P行业更是进入了以“合规整改”为主题的特殊发展阶段，平台积极探索合规发展之道，也充分显示了整个行业都在朝着更良好、有序的发展方向而行。&lt;/p&gt;\n&lt;p&gt;　　1、政策密集，引导行业规范化&lt;/p&gt;\n&lt;p&gt;　　2015年以来，P2P行业规模高速扩张，风险事件也持续升级，处在冰火交困中的P2P行业引起了监管层的高度重视。去年7月银监会发布的《关于促进互联网金融健康发展的指导意见》更标志着P2P行业正式进入“监管时代”。近一年多时间里，互联网金融专项整治工作虽然整体进展较慢，但政策层面的关注却十分密集，期间出台了包括《网络借贷信息中介机构业务活动管理暂行办法(征求意见稿)》、《网络借贷信息中介机构业务活动管理暂行办法》在内的多份重量级监管文件。近期，在距离《暂行办法》的颁布不到两个月时间里，银监会又出台了《互联网金融风险专项整治工作实施方案》，引起了业内的高度重视。&lt;/p&gt;\n&lt;p&gt;　　监管紧盯、政策密集，短期内可能会给P2P平台以较大的生存压力，但长期来看，却是一股推动行业有序发展的重要力量。有数据显示，截至2016年9月底，P2P行业停业及问题平台共计98家，其中问题平台40家（跑路32家、提现困难8家），停业平台58家（停业57家、转型1家），主动停业平台占比逐渐扩大，一定程度上也说明了监管整改的初见成效。监管的持续推进，一方面能够净化现有的行业环境，早期由于监管缺失，P2P行业出现了不少乱象，包括线下揽客、资金池、拆标等灰色行为，监管对诸如此类的行为进行严打，无疑是在为新秩序的建立清扫障碍。另一方面也有利于监督平台规范运营，最大限度保障投资人权益。伴随着政策潮的开启，P2P平台今后在业务规范、行为准则、职业操守等方面都将受到诸多法规的约束，行业的规范化一定程度上也是在为投资人创造一个相对透明、稳定的投资环境。&lt;/p&gt;\n&lt;p&gt;　　2、信息披露趋于常态化、体系化&lt;/p&gt;\n&lt;p&gt;　　P2P行业真正有意识地开始重视信息披露，要归功于《暂行办法》的出台。《暂行办法》在第五章详细阐述了“信息披露”的相关内容，首次正式规定P2P平台应在官网显著位置充分披露包括项目基本信息、资金运用情况、平台经营管理信息、平台年度报告等在内的多项关键信息。因此，在《暂行办法》出台之后，信息披露就成了P2P平台合规运营体系建设工作中的重要内容。笔者观察发现，目前业内多数主流平台都已经在官网新增了“信息披露”版块，公示平台交易数据、用户数量、运营报告、项目详情等内容。事实上，对于P2P行业而言，常态化的信息披露体系的建立一方面是有助于构建公开、透明的市场环境，另一方面则有利于推动整个行业健康、稳定、长远发展。&lt;/p&gt;\n&lt;p&gt;　　如今我们之所以能深刻地领会到信息披露的意义及其重要性，很大程度上是因为我们都吃过信息不透明所带来的苦果。2014、2015两年间，伴随着行业的高速发展，风险事件也呈现加速爆发和持续升级两种趋势，而跑路潮、倒闭潮等风险热潮的出现更是体现了P2P行业风险所具有的趋同性和集中性。以2015年为例，数据显示2015年P2P行业共有868家问题平台，其中跑路型平台510家，占比高达59%；提现困难型平台240家，占比为28%。而在这两类占比最高的问题平台类型中，约有80%的风险源头是属于信息披露不透明。&lt;/p&gt;\n&lt;p&gt;　　通常而言，信息不透明即意味着资产来源不清晰、资产质量无从考据，所暴露的即是平台在风险控制、资产筛选上的短板，这样的平台显然不具备长久发展的竞争力，爆发风险也是情理之中的；资金用途不明确、资金安全无法保证，极易引发道德风险，常见的提现困难、失联跑路等风险有很大一部分就是因为平台能够在信息壁垒的“庇护”下随意挪用投资人资金所致；项目信息不详尽，影响投资人进行独立判断及投资决策，也是不利于整个用户市场的进步及成熟化的。&lt;/p&gt;\n&lt;p&gt;　　而从行业建设和平台发展的角度来看，信息披露体系的建立也是有利无害的。一方面，信息披露体系将平台置于阳光化、透明化的市场环境中，等同于增强了社会对平台的监督职能，有利于强化平台的合规发展意识。另一方面，从平台内部而言，但凡一个渴望长久发展的平台，都期望自己披露出来的数据是健康的、良好的、具有成长力的，这种期望无疑能够激发平台对自我发展的约束力和控制力，反映到执行层面上则是资产开发和风险控制上的严格要求和业务能力的不断提高。&lt;/p&gt;\n&lt;p&gt;　　3、降息推动行业回归理性&lt;/p&gt;\n&lt;p&gt;　　最新数据显示，2016年9月，P2P网贷行业综合收益率为9.83%，首次跌破10%，环比下降了25个基点（1个基点=0.01%），同比下降了280个基点。事实上，从2015年12月开始，P2P行业综合收益率就呈现着持续下滑的走势，10个月以来，P2P综合收益率已经从12.45%降到了9.83%，如今跌破10%，再度引发了业内对降息的讨论。然而，近两年以来，伴随着央行的多次降准降息，P2P行业也先后出现过几轮平台集中降息的热潮，到今天，降息已经是业内老生常谈的话题了。&lt;/p&gt;\n&lt;p&gt;　　个人认为，适度的降息对于P2P平台和投资人来说都是一件利大于弊的事。一方面，于平台而言，合理的利率可能更有利于长久稳定的发展。首先，降息一定程度上是能够帮助平台缩减运营成本的。在2013年、2014年，P2P行业十分盛行高息，基础收益加上各种返现、红包、加息，综合下来最高能达到40%，殊不知平台为了制造这种“神话”需要付出的多高的成本。早期行业还处于“流量为王”的竞争时期，平台为了跑马圈地贴钱获客也无可厚非，但是近两年P2P行业的竞争核心已由“流量”向“资产”转移，换句话说P2P“资产为王”的时代已经到来，平台的运营成本每一分都要回到刀刃上，而不是再像过去那样无度地用于维持“高息”。其次，某些时期内降息有利于平台保有优质资产的竞争力。在P2P行业内，某些时期尤其是指银行降准降息的时候。从资金成本来说，银行仍是目前市面上较优的融资渠道。&lt;/p&gt;\n&lt;p&gt;　　当银行下调贷款利率的时候，即意味着会接纳更多的中小企业或个人进来融资。这个时候，其他民间融资渠道如果维持原有贷款利率不变，在社会总融资成本降低的情况下，优质资产会倾向流入银行等成本更合理的渠道，P2P行业如果不变就会面临优质资产加速流失的局面。一旦在资产端失去优势，整个行业都将沦为“垃圾债”市场。&lt;/p&gt;\n&lt;p&gt;　　最后，从监管层面来说，P2P行业的高息也注定是不具可持续性的。以深圳为例，今年年初就有消息传出本地监管部门正在严查P2P行业，收益率在15%的平台更是成了重点关注对象。再看看北京，早在3月份就有金融办负责人称P2P平台收益率必须降至10%以下。长期以来，正是看中了投资人对高收益的追崇心理，不良分子才有机会举着高息的旗子干诈骗的勾当，高息风险的层出不穷，自然也让高息平台成了监管层首要打击的对象。&lt;/p&gt;\n&lt;p&gt;　　另一方面，对于投资人来说，理性的利率更有助于维持投资的稳定性和安全性。为什么呢？通过前文所总结的降息之于平台的意义，我们可以发现降息有利于平台维持优质资产端的竞争力、合理控制运营成本、提高持续生存能力，以及靠拢监管，那么一个能够具备上述优势的平台所能提供给投资人的产品和服务想必不会太差。此外，从资金本身的安全性来说，利率畸高的资产必然有很大一部分是属于风险补偿利率，这部分利率比例越高，资产的资质越差。从这一层面来看，合理利率更意味着优质资产，而这才是保证资金安全的重要前提。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(124, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499930614, 1499930614, 1499930602, 0, '为什么90后敢投P2P？', '', '', '', '\n&lt;p&gt;　　“为什么90后敢投P2P?”，“钱又没多少，干嘛不敢投?”&lt;/p&gt;\n&lt;p&gt;　　虽然是玩笑话，但不无一定的道理。作为刚刚步入工作没几年的90后，工资几乎是其唯一的收入来源，而需要支出的地方又多如繁星，因此90后对于增收与收益，有着急切的渴望。加之，90后对于新鲜事物的接受程度比较高，P2P网贷理财的投资门槛又比较低，综合其操作简单、低门槛高收益还不需要专业投资知识(如股票)的特点，90后热衷于投资P2P似乎就不是那么难理解了。&lt;/p&gt;\n&lt;p&gt;　　一、回报率高&lt;/p&gt;\n&lt;p&gt;　　P2P网贷平台的回报率相比较传统理财的回报率要高4-5倍，并且期限灵活，投资人可根据自身需求选择合适的投资期限。P2P平台的平均年化收益率约6%-15%，收益率是其他无固定期限的理财产品的3-5倍，是同期限银行定期存款的4-8倍。&lt;/p&gt;\n&lt;p&gt;　　二、投资门槛低&lt;/p&gt;\n&lt;p&gt;　　在传统的理财中，一般都是几万元起步甚至更多，起步就把大多数理财人士隔离开来。比如5万元起投，期限1年。或者，500万起投，期限2年。而P2P理财门槛是非常低的，通常为100元起投，人人都可以理财。相对于传统理财，P2P网贷理财更“接地气”些。&lt;/p&gt;\n&lt;p&gt;　　三、无需专业的金融知识&lt;/p&gt;\n&lt;p&gt;　　相对于投资股票、外汇、贵金属等需要的专业知识和资金量，投资P2P并不需要这些，你只要研究一到两个平台，然后一直盯着其大的动态就行了。根据自己的资金流通需求，错配好理财产品投资期限，比如，七天期、一个月期、三个月期、一年期分别买多少比例，保证自己在想用钱的时候不会着急提不出来钱，另外，专注于研究一到两家平台，也会让你更有精力去掌握更多信息。&lt;/p&gt;\n&lt;p&gt;　　四、节省时间，方便快捷&lt;/p&gt;\n&lt;p&gt;　　P2P网贷理财不需要像股票、外汇等投资一样不断看盘，也不需要经常进行买入卖出操作，用手机app、微信、电脑都可以投资提现。唯一一个需要在日历本里标注，让自己上心的，恐怕就是投资到期日，即回款时间。这么做是为了不让资金在账户里没收益“静躺”着，记住日期，就可安排好再次投资计划。当然，有的平台是会发投资到期提醒短信的。&lt;/p&gt;\n&lt;p&gt;　　五、短期理财，流动性强&lt;/p&gt;\n&lt;p&gt;　　对比银行定期存款，P2P流通性相对较好，一次投出，按月回款，而银行必须等到期限结束才有收益。对于90后来说，他们更热衷于短期理财产品，比较灵活便捷。不同的P2P平台有不同期限的理财产品，投资者可根据自己对资金周转的需求进行合理的配置。&lt;/p&gt;\n&lt;p&gt;　　“为什么90后敢投P2P?”，“钱又没多少，干嘛不敢投?”&lt;/p&gt;\n&lt;p&gt;　　虽然是玩笑话，但不无一定的道理。作为刚刚步入工作没几年的90后，工资几乎是其唯一的收入来源，而需要支出的地方又多如繁星，因此90后对于增收与收益，有着急切的渴望。加之，90后对于新鲜事物的接受程度比较高，P2P网贷理财的投资门槛又比较低，综合其操作简单、低门槛高收益还不需要专业投资知识(如股票)的特点，90后热衷于投资P2P似乎就不是那么难理解了。&lt;/p&gt;\n&lt;p&gt;　　一、回报率高&lt;/p&gt;\n&lt;p&gt;　　P2P网贷平台的回报率相比较传统理财的回报率要高4-5倍，并且期限灵活，投资人可根据自身需求选择合适的投资期限。P2P平台的平均年化收益率约6%-15%，收益率是其他无固定期限的理财产品的3-5倍，是同期限银行定期存款的4-8倍。&lt;/p&gt;\n&lt;p&gt;　　二、投资门槛低&lt;/p&gt;\n&lt;p&gt;　　在传统的理财中，一般都是几万元起步甚至更多，起步就把大多数理财人士隔离开来。比如5万元起投，期限1年。或者，500万起投，期限2年。而P2P理财门槛是非常低的，通常为100元起投，人人都可以理财。相对于传统理财，P2P网贷理财更“接地气”些。&lt;/p&gt;\n&lt;p&gt;　　三、无需专业的金融知识&lt;/p&gt;\n&lt;p&gt;　　相对于投资股票、外汇、贵金属等需要的专业知识和资金量，投资P2P并不需要这些，你只要研究一到两个平台，然后一直盯着其大的动态就行了。根据自己的资金流通需求，错配好理财产品投资期限，比如，七天期、一个月期、三个月期、一年期分别买多少比例，保证自己在想用钱的时候不会着急提不出来钱，另外，专注于研究一到两家平台，也会让你更有精力去掌握更多信息。&lt;/p&gt;\n&lt;p&gt;　　四、节省时间，方便快捷&lt;/p&gt;\n&lt;p&gt;　　P2P网贷理财不需要像股票、外汇等投资一样不断看盘，也不需要经常进行买入卖出操作，用手机app、微信、电脑都可以投资提现。唯一一个需要在日历本里标注，让自己上心的，恐怕就是投资到期日，即回款时间。这么做是为了不让资金在账户里没收益“静躺”着，记住日期，就可安排好再次投资计划。当然，有的平台是会发投资到期提醒短信的。&lt;/p&gt;\n&lt;p&gt;　　五、短期理财，流动性强&lt;/p&gt;\n&lt;p&gt;　　对比银行定期存款，P2P流通性相对较好，一次投出，按月回款，而银行必须等到期限结束才有收益。对于90后来说，他们更热衷于短期理财产品，比较灵活便捷。不同的P2P平台有不同期限的理财产品，投资者可根据自己对资金周转的需求进行合理的配置。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(125, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499930632, 1499930632, 1499930621, 0, '就是这15件大事，影响了整个P2P行业！', '', '', '', '\n&lt;p&gt;　　现阶段我国网贷行业进入网贷3.0大浪淘沙阶段，这段时间内专项整治和合规整改并驾齐驱，或将有越来越多的网贷平台主动退出市场，到了明年的这个时候网贷经过大洗牌之后，剩下来的都是精英。如果某高校开设互联网金融专业，那么网贷则是其中重点课程。在中国投资P2P，哪儿能不了解网贷的发展简史。就眼下行业现状来说，网贷虽然不是中国发明的，但中国的网贷确实走出了世界，不仅走出了世界，中国的网贷规模在世界范围内目前也是遥遥领先的，正所谓青出于蓝而胜于蓝。从2007年中国诞生了第一家P2P平台，到2016年网贷基本法终于落地，这近十年来，网贷走过一段极其不平常的发展道路，这中间也凝聚了许多网贷人的心血，下面笔者将带领大家用网贷发展过程中的里程碑事件来回顾网贷行业这些年的心路历程。&lt;/p&gt;\n&lt;p&gt;　　01　网贷1.0时代：群雄逐鹿&lt;/p&gt;\n&lt;p&gt;　　网贷1.0时代是网贷在中国萌生和发展的阶段，时间段大致是从2007年到2013年，这段时间内中国诞生了P2P，但P2P的影响和发展程度并不是很充分，P2P代表一种创新的业务形式正逐步的面向社会，新的平台如雨后春笋，很多银行、保险等传统金融公司也纷纷成立P2P平台，中国网贷行业正式进入群雄逐鹿的1.0发展时代。&lt;/p&gt;\n&lt;p&gt;　　1、中国第一家网贷平台的成立&lt;/p&gt;\n&lt;p&gt;　　P2P是进入二十一世纪后才诞生的新事物，起源于英国， 但却在中国发展壮大，枝繁叶茂。2005年3月英国伦敦有一家叫做ZOPA的网站上线，这是全球第一家提供P2P金融服务的公司，没过多久，中国也诞生了第一家P2P平台，2007年6月，拍拍贷正式上线，拍拍贷公司全称为“上海拍拍贷金融信息服务有限公司”，总部位于上海。经过10年多时间的发展，拍拍贷在国内网贷行业仍然举足轻重，根据网贷之家2016年8月全国百强网贷平台发展指数评级表显示拍拍贷仍然位列第五，平台累计成交额已经达到204亿。值得一提的是中国P2P网贷百强平台就前几名几乎都是一些老平台，例如红岭创投于2009年3月上线， 人人贷成立于2010年4月，陆金所和微贷网上线于2011年，而有利网和宜信旗下的宜人贷则于2012年上线。&lt;/p&gt;\n&lt;p&gt;　　2、中国第一个跑路的平台的诞生&lt;/p&gt;\n&lt;p&gt;　　跑路这个词，大家可能都不会太陌生，我们常常说三十六计走为上计，当无力偿贷时，很多价款人选择跑路出逃躲避债务，其实在P2P诞生之前就有很多人为了躲避债务而“跑路”，但真正将“跑路”这一词推向社会大众面前的还是P2P网贷，资料显示截至目前停业、问题平台（含跑路）已经达到了2041家，很快这个数字还将会超过中国运营中的网贷平台数量（8月份2235家运营中的平台。） 有第一个成立的网贷平台就有第一个跑路的网贷平台，到底谁是中国第一个跑路的网贷平台，现在好像还没有个定论，现有资料显示中国自2011年开始出现很多跑路平台，出名的有给力贷、哈哈贷、鼎力贷，学生借贷网等。也是从2011年开始，中国每年都有问题平台不断涌现，问题平台数量不断刷新记录，尤其是2014年后，从2014年到现在，问题平台有增无减。随着网贷监管政策趋严，还将有更多的平台陆陆续续消失在大众的视野。&lt;/p&gt;\n&lt;p&gt;　　3、首家银行系背景平台——陆金所成立&lt;/p&gt;\n&lt;p&gt;　　2011年9月一个叫做陆金所的网站横空出世。陆金所总部位于上海。全名为上海陆家嘴国际金融资产交易市场股份有限公司，是中国平安保险股份有限公司旗下成员。陆金所注定从出生就不平凡，因为是平安旗下的公司，陆金所形同于“含着金汤匙出生”，虽然时至今日P2P业务只不过是陆金所很小的一部分，但陆金所打造的金融集团已经成为中国规模最大的互联网金融公司之一，这样的一个金融帝国更是无人能及，陆金所在中国，除了蚂蚁金服估计也找不到更好的对手了。资料显示仅2016年上半年，陆金所控股累计注册用户数2,342万，上半年总交易量32,019亿元。3万亿，要知道本年度中国网贷行业的累计成交量有望突破3万亿，等于是中国网贷行业的十年辛苦结果，陆金所仅用半年达成目标（当然陆金所的业务远不止P2P），如果陆金所再整体上市，那么其就能当之无愧的成为龙头型、航母型中国互联网金融企业。&lt;/p&gt;\n&lt;p&gt;　　4、网贷朝前方，监管在路上&lt;/p&gt;\n&lt;p&gt;　　问题平台的不断曝光，投资人损失惨重必然会引起政府层面的注意，但网贷是一个新事物，从网贷诞生一直到2014年网贷几乎处于纯粹的监管真空期，网贷行业无法可依，一些诈骗分子浑水摸鱼。但从2014年4月21日开始，网贷监管姗姗来迟，银监会先后出台了几个监管思路，如4月21日银监会提出网贷监管的四条红线（一是要明确这个平台的中介性质，二是要明确平台本身不得提供担保，三是不得将归集资金搞资金池，四是不得非法吸收公众资金。）8月3日银监会官员提出P2P监管的五条导向（“明定位”、“不碰钱”、“有门槛”、“重透明”、“强自律”）。当年8月22日银监会的官员提出了P2P发展的六大原则。当年9月27日P2P发展的六大原则又被银监会的官员延伸为十大监管原则。通观这短期间的监管思路，除了四条红线外，其他都是银监会个人的意见和解读和建议，都未形成具体的监管细则或方案，所以说这段时间内，网贷监管仍在路上，而网贷发展却迎来了第一波迅猛发展的势头，新成立的平台数量一再刷新纪录，运营中的P2P平台数量持续上升，行业内不断爆出平台融资或者获得风投的消息，P2P成为资本市场的香饽饽。&lt;/p&gt;\n&lt;p&gt;　　5、互联网金融写进政府工作报告&lt;/p&gt;\n&lt;p&gt;　　2014年3月5日，对互联网金融行业来说是一个值得纪念的日子，因为这天总量将互联网金融写入政府工作报告。李克强总理在提请十二届全国人大二次会议审议的政府工作报告中提到，促进互联网金融健康发展，完善金融监管协调机制。这是互联网金融首次被写入政府工作报告。自此后互联网金融连续三年被写进了政府工作报告。2014年的政府工作报告首次提出“促进互联网金融健康发展”，2015年的报告用“异军突起”来评价互联网金融的发展，并继续提出“促进互联网金融健康发展”。2016年政府工作报告提到互联网金融时用词是“规范发展”，也引起了不少代表委员的注意。从促进互金健康发展到规范发展，其实这反映出了互金市场环境以及监管思路的变化。而除了互联网金融写进政府工作报告外，过去几年李总理十多次为互联网金融发生也成为业内人士津津乐道，此外互联网金融写进了十三五规划，国家更是出台了《推进普惠金融发展规划2016-2020》，由此看发展仍是主要矛盾。&lt;/p&gt;\n&lt;p&gt;　　02　网贷2.0时代：风起云涌&lt;/p&gt;\n&lt;p&gt;　　从2014年到2015年年末可以看做是网贷发展的2.0时代，这段时间内网贷成交量不断刷新纪录，网贷人气稳步上升，但新成立的网贷平台数量和问题平台数量同时爆棚，但随着几个标志性事件，特别是“指导意见”的出台和“e租宝事件”让网贷行业发展风起云涌、大起大落。&lt;/p&gt;\n&lt;p&gt;　　6、“指导意见”出台&lt;/p&gt;\n&lt;p&gt;　　2015年7月18日网贷行业终于迎来了第一个比较系统也比较全面的政策性的文件，文件名称叫做《关于促进互联网金融健康发展的指导意见》（下称“意见”），意见是由银监会等十部委一起发布，可见分量之重，当然从政策发展历程上看，这个意见的出台也是年初把互联网金融写进政府工作报告的一个回应。对于这个“意见”我们大致记得一下几点。总体要求：“鼓励创新、防范风险、趋利避害、健康发展”。监管原则：依法监管、适度监管、分类监管、协同监管、创新监管”。至于网贷的部分，意见明确提出了P2P网贷只能作为信息中介机构而不得提供增信服务，不得非法集资。现在来分析这个指导意见，其实在关键时刻是提升了网贷行业的士气和信心，但是后来发生很多事与意见相背而驰，例如意见明确提到“鼓励保险公司与互联网企业合作，提升互联网金融企业风险抵御能力。”而今年保监会一纸令文叫停了保险公司和网贷行业的合作。&lt;/p&gt;\n&lt;p&gt;　　7、e租宝的垮台&lt;/p&gt;\n&lt;p&gt;　　其实严格来说e租宝都算不上是互联网金融，也有很多业内人士也表示e租宝的模式根本就不是P2P，但e租宝的垮台对网贷行业的打击力度和影响可谓空前，网贷行业背黑锅在这以后也是司空见惯，特别是2016年初许多线下理财集中暴雷的时候。从2015年12月3日开始，深圳警方突袭e租宝深圳分公司，e租宝开始分崩瓦解。最新消息是案件已经进入收尾阶段，等待e租宝负责人、高管的将是法律的制裁，但要说e租宝对中国网贷行业的影响，那却不是几句话就能交代清楚的，涉案金额近500亿，涉及投资人近百万。e租宝最火时日进数亿，这要归功于铺天盖地的广告投放，分公司和线下业务遍各地以及丁宁个人的狼子野心。 其实e租宝没出事之前，就有很多行家质疑e租宝的业务模式，包括离职员工发帖揭发，但这些都没能引起监管层面的注意，这恰恰也是反映出监管的滞后性。&lt;/p&gt;\n&lt;p&gt;　　从个人情感上来说，我时常在想一个问题，丁宁疯狂吸储近500亿，这笔钱他该怎么花呢，如此巨款，想全部花出去还真不是一个很简单的事情。就像很多事情，我们也只能想想，背后很多细节我们无法去考证或者深究。但值得肯定的是，对网贷行业来说，也许将来还会有一个日进数亿的网贷平台，但再想一天骗他个几亿，那或将不会再发生了。&lt;/p&gt;\n&lt;p&gt;　　8、宜人贷美股上市&lt;/p&gt;\n&lt;p&gt;　　如果不是遇到e租宝的危机，宜人贷在美股上市必将成为中国网贷行业崛起发展的新起点，然而宜人贷选择上市的时机撞上了枪口，2015年12月21日宜人贷在美股正式挂牌上市，发行价美股10美元，虽然笔者不炒股，但也一直关注着宜人贷的股价，上市没多久，宜人贷受国e租宝、申彤大大等理财公司的影响，股价跌入低谷，最低价只3美元多点。好在宜人贷最终挺过了e租宝危机，之后稳中有升，最高时也达到了30多美元。有人说股市是经济的晴雨表，果不其然，至少股市能反映出投资者的心理状态，2016年8月24日国内发布网贷监管细则，宜人贷股价大跌22%。而截至发稿宜人贷股价21.44美元，总体上较之发行时上升了近一倍以上，关键是宜人贷作为中国第一个在美股上市的P2P平台，它为国内众多平台树立了目标和发展方向。&lt;/p&gt;\n&lt;p&gt;　　9、征求意见稿出台&lt;/p&gt;\n&lt;p&gt;　　2015年12月28日《网络借贷中介机构业务活动暂行办法（征求意见稿）》（下称征求意见稿）在千呼万唤中终于姗姗来迟，征求意见稿首先将网贷定义成金融信息中介服务机构，并对网贷平台备案、办理增值电信业务许可证，银行存管，信息披露等相关方面做出了具体规定，特别是“12禁”的负面清单是重点关注的对象，如果说平台不自融，不发虚假标，不得拆分期限、不得虚假宣传等是意料之中的话，还有一些例如平台不得开展线下业务，不得捆绑和代理基金股票等相关规定对一些大中型平台影响较大。征求意见稿给出了18个月的整改期，也就说网贷行业在有法可依的前提下正式进入大洗牌期。&lt;/p&gt;\n&lt;p&gt;　　10、互金协会成立&lt;/p&gt;\n&lt;p&gt;　　2016年3月25日备受关注中国互联网金融协会挂牌成立。尽管会费很高，尽管协会对会员的资格审查有一套严格的审核流程，包括对合规经营、关联企业、金融产品、创新能力、社会影响力等多个维度信息、数据的深入调查，但还是有很多网贷平台纷纷提交了入会申请。互金协会第一次会员代表大会437会员中，来自银行机构84名，来自证券、基金、期货公司44名，来自保险公司17名，来自其他互联网金融新兴企业及研究、服务机构292名，而网贷平台会员单位全国仅40余家。协会成立后组织了几次高管培训，对下属会员的数据统计报送和信息披露也做出了一些规定，而协会的官网也于日前正式上线并开通了会员管理功能和新会员入会申请的通道，总的来说中国互联网金融协会在网贷自律发展上扮演了重要的角色，但协会在促进网贷走向规范化发展的关键时期究竟能发挥多大的功能和作用，还有待于进一步观察。&lt;/p&gt;\n&lt;p&gt;　　03　网贷3.0时代 去伪存真&lt;/p&gt;\n&lt;p&gt;　　网贷的3.0时代始于2016年年初，严格说来是征求意见稿颁发后国内2000多家网贷平台的大调整、大洗牌开始，网贷行业进入一个优胜劣汰和自我革新的蜕变期，这段时间内运营中的网贷平台数量越来越少，问题平台的数量超过了新生平台的数量，网贷正式迈入了去伪存真的规范化发展期。&lt;/p&gt;\n&lt;p&gt;　　11、国家部署专项整治&lt;/p&gt;\n&lt;p&gt;　　2016年初国内一些线下理财机构集中暴雷，加上e租宝带来的投资惶恐心理仍在，监管进入全面收紧期，在地方例如北京、上海、深圳、重庆等地先后出台地方性的监管方案，部分地方也叫停了网贷行业的注册申请。在金融圈业态内，银行叫停网贷的支付接口合作，保监会也叫停了保险公司与网贷行业的合作。在中央，国务院在全国范围内启动有关互联网金融领域的专项整治，央行牵头联合多个部委出台了《互联网金融风险专项整治工作实施方案》，专项整治工作将为期一年，计划于2017年3月底完成。专项整治方案出台以后一些地方金融办对当地互金行业进行摸底排查，另悉专项整治方案将网贷分为合法类、整改类和取缔类三大类别。最近消息是网贷的专项整治行动也开始进入收尾阶段了，北京和山东等地又开始支持互联网金融发展。&lt;/p&gt;\n&lt;p&gt;　　12、e速贷“经侦雷”&lt;/p&gt;\n&lt;p&gt;　　e速贷事件的发生时间正好在国家开启互联网金融专项整治之后，所以这个时间点也很微妙,e速贷被查之所以能成为标志性事件，主要是因为事件爆发后很多投资者主动为平台发声，质疑当地监管部门的执法是否妥当。作为一个6年的老平台，e速贷是惠州规模最大的平台，累计成交额70多亿人民币，平台投资人数超过了33万。与以往爆出的问题平台不同，e速贷被抓，很多投资者以及业内观察人士都发出了支持平台的声音，希望主管部门能从稳定网贷市场环境，促进平台健康发展的角度给予e速贷整改的机会。毕竟征求意见稿规定了18个月的整改期，而正式的监管细则也给出了12个月的过渡期，在整改期内采用一刀切和一棒子打死的监管方法显然失妥，但过了这个整改期那就另当别论了。&lt;/p&gt;\n&lt;p&gt;　　13、东方创投、铜都贷兑付&lt;/p&gt;\n&lt;p&gt;　　2014年7月，深圳市罗湖区人民法院出具了中国首个P2P问题平台司法判决书，网贷平台东方创投案的负责人邓亮等因非法吸收公众存款罪被判刑，平台累计成交1.26亿，除去投资人已经提现的7000多万，还有5000多万人民币尚未兑付。当年10月22日，深圳罗湖法院发布了《邓亮、线李泽明非法吸收公众存款罪一案执行公告》以及涉案款项的分配方案。根据该方案，扣划在案的金额为2522万元，实际未归还投资参与人本金为5177万元，返还比例为48.7%，即投资者最终仅能挽回不到一半的本金，东方创投非法集资案是司法体系对P2P平台自融案件的首次裁量。应该说能拿回近一半已经很不错了，比如2016年8月22日，铜陵市铜官区人民法院公布了“铜都贷”执行款发放的通知，按照涉案金额和兑付情况，每名被害人只能收回12.3%的投资款项。12.3%这不是最低的兑付比例，还有很多投资者血本无归的，但就这12.3%，投资人都等了近三年时间，那么去年年底查处的“e租宝”，近百万投资者，近500亿，涉案金额如此之大，案件如此复杂，涉及人数如此之多，投资人究竟能拿回多少钱，什么时候才能拿到钱呢？这是一个让人心碎的问题！&lt;/p&gt;\n&lt;p&gt;　　14、存管指引征求意见稿&lt;/p&gt;\n&lt;p&gt;　　8月14日银监会发布了《网络借贷资金存管业务指引（征求意见稿）》（以下简称存管指引），在这个文件之前，无论是指导意见还是征求意见稿都提到了银行存管，而同期国内已经有一两百家网贷平台对外宣称上线了银行存管系统了，但存管指引之所以成为里程碑事件，是因为征求意见稿中有条让人争议的条款就是“存管银行应对客户资金履行监督责任，不应外包或由合作机构承担，不得委托网贷机构和第三方机构代开出借人和借款人交易结算资金账户”。这就预示着“第三方支付+商业银行”的联合存管模式或将被判“死刑”，存管指引出台时，国内采用“银行+第三方支付”联合存管方式的，已签约的平台有46家，完成系统上线的约24家。这其实又一次显示了监管的滞后性，监管部门在一些网贷平台上线了联合存管系统之后，才出台的存管指引征求意见稿，否定了联合存管的方案，但就此造成的资金、人力、资源损失该找谁承担呢？&lt;/p&gt;\n&lt;p&gt;　　15、监管细则正式出台&lt;/p&gt;\n&lt;p&gt;　　2016年8月24日《网络借贷信息中介机构业务活动暂行办法》（以下称监管细则）正式出台，这个正式监管细则是去年年底的征求意见稿的完善和补充，包括网贷的定位、备案登记、ICP证、银行存管、信息披露、数据报送等基本未变，12禁的负面清单变成了13禁，大致雷同，但监管细则中的“借款上限”成为业内重点关注的热点。办法中指出同一个企业至多从5个网贷平台借款500万，每家平台不能超过100万，同一个自然人至多从5个网贷平台借款100然，每家不能超过20万，这对当下的网贷平台来说，其杀伤力无疑是毁灭性的。特别是一些发大标的平台，这样“小而散”的业务模式虽然降低了投资风险，但也压缩了网贷平台的发展空间，同时或将提高借款人的借款成本，投资人的可选择性也将受限。&lt;/p&gt;\n&lt;p&gt;　　网贷3.0时代还在继续，大浪淘沙，或将一直到明年8月即网贷监管细则出台12个月过渡期结束为止，这段时间内专项整治和合规整改并驾齐驱，或将有越来越多的网贷平台主动退出市场，到了明年的这个时候网贷经过大洗牌之后，剩下来的都是精英，经得起时间和政策的考验，但究竟谁能笑到最后，我们还是拭目以待吧！&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(126, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499930651, 1499930651, 1499930641, 0, '做P2P赚钱吗？红岭创投等大平台深陷盈利困境', '', '', '', '\n&lt;p&gt;　　我做P2P六七年了，去年是所在平台第一次实现年度盈利，但估计今年很难延续去年的势头。”5月12日，一位华南地区的P2P平台负责人对《国际金融报》记者感叹，各种成本不断上升，P2P要实现盈利的确不容易。&lt;/p&gt;\n&lt;p&gt;　　其实，记者曾与不少P2P平台人士聊起过这个话题，但要么讳莫如深，完全不愿意聊；要么直言不讳，但听到的回答中很少有肯定的答复。&lt;/p&gt;\n&lt;p&gt;　　如今，在严监管的大潮下，想要继续生存下去的P2P平台都在竭尽全力地朝合规方向奔跑。然而，即使达到合规的全部指标，盈利依旧是一家企业的终极目标。如果无法实现盈利，多数P2P平台仍旧难逃被淘汰的结局。&lt;/p&gt;\n&lt;p&gt;　　费用吞噬利润&lt;/p&gt;\n&lt;p&gt;　　从目前已披露年报的多家大平台来看，盈利情况并不乐观，其中包括陆金所、信而富、你我贷、ppmoney、宜人贷、微贷网、红岭创投等14家平台中，收入超过亿元的平台预计有8家，亏损的平台有5家。&lt;/p&gt;\n&lt;p&gt;　　“像宜人贷这样能持续盈利的P2P平台是令人羡慕的，但是也依旧难抵成本不断高企的压力。”上述负责人坦言，像红岭创投这样大规模、老资格的P2P平台都还没实现盈利，多数中小平台盈利的难度更大，大家都在烧投资方的钱而已。但等钱烧完后，如果无法继续再融到资金的话，那也就难逃关门大吉的结局。&lt;/p&gt;\n&lt;p&gt;　　该负责人称，“前几年情况稍微还好一点，来钱相对容易。但也正是由于来钱容易，大家花钱也‘疯狂’，市场推广、产品广告投放等都是不惜成本。这两年监管一严，大家都开始有所收敛。”&lt;/p&gt;\n&lt;p&gt;　　但如今获客成本已越来越高。实现盈利的宜人贷2016年第四季度运营成本及费用为6.76亿元，全年为21.7亿元。其中，销售费用依然是平台成本的大头。2016年末，宜人贷销售成本的比例上升到接近80%。&lt;/p&gt;\n&lt;p&gt;　　“宜人贷的获客成本绝对不算是业内最高的。”上述平台负责人指出，一方面，P2P平台数量大，很多资源都消耗在彼此间的竞争上；另一方面，近两年P2P平台接连出事令投资者对这一行业产生越来越多的怀疑和不安全感，这无形之中也大大提高了P2P平台继续获客的成本。&lt;/p&gt;\n&lt;p&gt;　　除获客成本高企之外，合规成本已然成为压在P2P平台身上的另一座大山。“对不合规产品整改、资金对接银行存管等，都需要付出很大费用。”该负责人称，仅平台资金对接银行存管一项，平台要消耗的成本就是数百万元。“所在平台目前还未上线银行存管，但已经在与银行努力对接中，预计会在下半年完成。这块费用核算下来很可能将吞食掉今年的利润”。&lt;/p&gt;\n&lt;p&gt;　　“动刀”投资收益&lt;/p&gt;\n&lt;p&gt;　　成本的不断高企让越来越多的P2P平台选择在投资者收益上“动刀子”。&lt;/p&gt;\n&lt;p&gt;　　据统计，今年2月，全国网贷行业综合收益率为9.51%。其中，北京市网贷行业综合收益率为9.8%，较上月下降27个基点；上海市网贷行业综合收益率为8.33%，较上月下降5个基点；广东省网贷行业综合收益率为10.3%，较上月下降15个基点。到了3月份，全国网贷行业综合收益率为9.41%。其中，北京市网贷行业综合收益率为9.77%，较上月下降3个基点；上海市网贷行业综合收益率为8.45%，较上月上升12个基点；广东省网贷行业综合收益率为9.98%，较上月下降32个基点。4月份，全国网贷行业综合收益率为9.3%，环比下降了11个基点，同比下降了194个基点。&lt;/p&gt;\n&lt;p&gt;　　随着严监管的持续进行，网贷行业综合收益率继续下行。据了解，目前平台主流综合收益率区间仍分布在8%至12%，占比为55.68%；其次为综合收益率在12%至18%的平台，占比为29.32%；综合收益率8%以下的低息平台，占比为11.62%；综合收益率达24%及以上的高息平台，则是极少数。&lt;/p&gt;\n&lt;p&gt;　　“在如今的市场环境下，网贷利率的下行是必然的。之前很多平台的高利率都是靠补贴贴出来的。烧钱烧出了P2P行业的一片繁荣盛象，但是钱总有烧完的时候。”上述P2P平台负责人表示，“未来想要继续在这一行业打拼的P2P平台必须谋求转型，单一的网贷业务很难支撑起平台的盈利。”&lt;/p&gt;\n&lt;p&gt;　　自去年8月份网贷暂行办法规定借款上限后，小额分散成为平台业务转型的重点。目前，约有1000多家平台已涉足汽车抵押借贷业务。根据零壹研究院公布的报告，“2016年中国P2P车贷百强榜”，排在第一的微贷网年交易额451.1亿元。微贷网CEO姚宏表示：车贷业务受到P2P平台青睐的原因有以下三个方面。首先，车贷标的小而分散，符合政策上对借款上限的要求；第二，汽车具备强质押和变现属性，比较容易做风控；第三，汽车属于普及类消费品，加上市场规模逐年增长，其中蕴含着足够多的潜在优质资产端，平台更有机会从这项业务中获得可持续发展的空间。&lt;/p&gt;\n&lt;p&gt;　　也有平台押注房贷业务。3月31日，红岭创投发布消息，宣布正式上线房产抵押担保贷款产品“房易贷”。在红岭创投的转型计划当中，房易贷今年背着60亿元的业绩压力。&lt;/p&gt;\n&lt;p&gt;　　在该人士看来，P2P平台的转型，要么是在规模做大的基础上进行多元化方向发展；要么就选择一个细分的垂直领域进行专业而深入的运作。但真正能实现成功转型的平台并不会太多。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(127, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499930671, 1499930671, 1499930661, 0, '聚焦e租宝，宜人贷富民投资网点融网教你识别合规平台', '', '', '', '\n&lt;p&gt;　　近日，e租宝案在北京开审的消息再一次引起了网友们的围观，同时，P2P理财也顺带着成了投资者们热议的话题，现在的P2P到底能不能投资?类似e租宝类的诈骗会不会再次出现?P2P理财是否真如报道的那样，国家的监管体系已经建立，市场正在逐步合规化......一系列问题扑面而来。&lt;/p&gt;\n&lt;p&gt;　　曾经，网贷行业凭借着新颖的模式在金融市场一路高歌，但是，随着e租宝事件的爆发，让这个市场的行情一时间飞流直下，遭遇了断崖式的冷遇，投资者对网贷的不信任让这个行业一度萎靡不振。如今，国家开始大力整顿网贷市场，监管条例接踵而来，P2P网贷市场迎来了新的转折点。虽然国家下大力气进行了整顿，但是不可否认的是理财有风险，金融市场瞬息万变，在国家整顿工作结束以前，也并非所有平台都是靠谱的，这就需要投资者认真筛选平台了。其实风险小的理财平台也是有章可循的，比如宜人贷、富民投资网、点融网这几类平台，都有着明显的特点可供投资者借鉴。&lt;/p&gt;\n&lt;p&gt;　　宜人贷：美交所上市平台，实力雄厚&lt;/p&gt;\n&lt;p&gt;　　宜人贷是宜信公司2012年推出的在线金融服务平台，2015年12月在美国纽约证券交易所成功上市。在安全保障方面平台通过分散投资并且为用户建立专属账户以及设立质保服务专款，降低投资者的风险。宜人贷的产品分为三类：精英标、新手标宜定赢以及债权转让。投资期限1到36月不等，资金回流速度相对较慢，年化收益一般在6.8%—9.6%左右，所以较适合对资金灵活度要求不高的人投资。&lt;/p&gt;\n&lt;p&gt;　　富民投资网：车辆质押为主，风控严谨&lt;/p&gt;\n&lt;p&gt;　　富民投资网是一家专注于车辆和房产抵押的P2P平台，成立三年以来，富民投资网凭借严格的风控措施和车辆房产抵押的安全保障普罗了一大批投资理财者。平台自建大型停车场以车辆质押为主。所谓质押就是借款人将车辆质押给出资人作为借款的担保方式,在借款人不履行到期债务或者发生当事人约定的其他情形时,出资人可以就该车辆在法律范围内进行折价、拍卖，所以车辆质押借款是比车辆抵押、信用贷等更为安全的借贷模式，坏账的概率也极小，这种模式也广受投资理财者的好评。&lt;/p&gt;\n&lt;p&gt;　　在风控方面，富民投资网为投资者打造了两个核心+四个辅助的6级保障体系。其交易资金的保管完全按照&quot;专户专款专用&quot;的标准模式进行运作，投资者可以实时查询账户资金交易详情。&lt;/p&gt;\n&lt;p&gt;　　富民投资网主打中短期理财，投资期限1、2、3、6个月不等，年化收益在6%—18%之间在业内还是比较有优势的，平台产品有散标、新手标、活期标等供投资者选择，比较适合资金流动性强的年轻群体投资。&lt;/p&gt;\n&lt;p&gt;　　点融网：注重品牌宣传，知名度高。&lt;/p&gt;\n&lt;p&gt;　　点融网是全球第一家由渣打银行直接投资的互联网金融公司，成立于2012年，在业内拥有较高的知名度。平台通过团团赚产品和散标实行分散投资，有效降低了投资人的投资风险，点融网的团团赚项目100元可投，年化收益4.5%-10%，计息方式为每日付息。在理财产品这一块虽然没有固定投资期限，但可以做到方便取款，但如果在持有期内退出的话会产生一定费用，所有还是要谨慎选择投资期限。&lt;/p&gt;\n&lt;p&gt;　　投资有风险，理财需谨慎。选择P2P理财平台，如果要最大化地减低风险，可以主要从平台实力、运营模式、风控水平、知名度等方面考虑，当然最终的把控在于投资者在于投资者多多学习，在实践中摸索出一套适合自己的理财方式然后进行合理筛选才是最重要的。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(128, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499930689, 1499930689, 1499930679, 0, 'P2p理财坏账率到底多高？从宜人贷、信而富盘点数据告诉你', '', '', '', '\n&lt;p&gt;　　一直以来p2p理财行业的还账率都是这个行业不能捅破的秘密。主动公布平台还账率的平台都宣称自己坏账率在3%以下。这些比银行还低的坏账率说实话你信吗？&lt;/p&gt;\n&lt;p&gt;　　但P2P网贷理财的坏账率含有“水分”是不争的事实，从统计口径到数据真实性的可参考度都不高，我们要怎么去得知网贷理财平台真实的坏账率呢？&lt;/p&gt;\n&lt;p&gt;　　935理财的专家指出，每个平台的坏账率都不同，但主流的大平台坏账率是相似的，我们由信而富和宜人贷来分析一下。不过从趋势上来说，网贷平台坏账率攀升是不争的事实。&lt;/p&gt;\n&lt;p&gt;　　宜人贷：坏账率为5.1%—8.2%&lt;/p&gt;\n&lt;p&gt;　　不同的平台使用的盘点坏账的方法不尽相同，像宜人贷的借款期限偏长，最长有48个月期的借款，因此从上面的表格中可以看到，其坏账率的表现相对会有很长的时滞，也就是说，13年对D类人放贷的坏款率会在15年左右显现出来。&lt;/p&gt;\n&lt;p&gt;　　935理财的专家表示现在主流p2p大平台的坏账率普遍在5%-23%不等，并且不同投资人等级的划分坏账率也大有不同。一些宣称收益收益在15%以上的小平台坏账率甚至达到30%-40%！&lt;/p&gt;\n&lt;p&gt;　　有用户在935理财咨询问我们专家，坏账对平台的影响。坏账有多可怕，对于资金链就是生命线的网贷行业来说，每一笔坏账都有可能引发像多米诺骨牌一样的资金周转不灵从而资金链断裂。后果只能是停业。&lt;/p&gt;\n&lt;p&gt;　　因此我们都说投资一个网贷平台前一定要全面了解其运营情况，坏账率就是要着重了解和调查的。此外坏账率的高低还很大程度上反映了p2p平台的风控等可持续经营的硬条件。所以为了您的资金安全，务必要了解自己平台的坏账率还有不同的投资人的坏账分级，如果自己不清楚的可以在935理财咨询上问问专家，让你的投资更安全有保障。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(129, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499930717, 1499930717, 1499930699, 0, '这样理财最来钱！死也要坚守这些习惯！', '', '', '', '\n&lt;p&gt;　　想告别月光族？想为将来准备更多的钱？理财是关键。理财并不高深莫测，养好理财习惯、不入理财陷阱，在日常生活就能做到安全高效地钱生钱。&lt;/p&gt;\n&lt;p&gt;　　工资到手马上花光？月底总为还信用卡发愁？不，从今天起，请勇敢地做金钱的主人！&lt;/p&gt;\n&lt;p&gt;　　为了未来，我们都需要未雨绸缪，而理财就是帮助我们达成这一目标的工具。&lt;/p&gt;\n&lt;p&gt;　　很多人都觉得理财很高深，但其实，只要养成良好的理财习惯、不要犯常见的理财错误，理财也可以很美、很简单。&lt;/p&gt;\n&lt;p&gt;　　这些理财习惯、招数，死也要坚守！&lt;/p&gt;\n&lt;p&gt;　　1、预留生活备用金&lt;/p&gt;\n&lt;p&gt;　　这是为了应付日常开支以及紧急支出，一般应留出3—6个月的生活开支。&lt;/p&gt;\n&lt;p&gt;　　2、保命的钱绝不能拿出投资&lt;/p&gt;\n&lt;p&gt;　　何谓保命的钱？即3—5年的生活费，这部分资金绝不能拿出投资。一般以定存方式存放，虽说利息少，但至少本金安全。&lt;/p&gt;\n&lt;p&gt;　　3、每月计划存点钱&lt;/p&gt;\n&lt;p&gt;　　别总想着自己能“一夜暴富”，财富的积累重在平时“点滴积累”。每月计划拿出部分的收入来进行强制储蓄，剩余的资金再用于生活消费以及投资。&lt;/p&gt;\n&lt;p&gt;　　4、储蓄和投资并行&lt;/p&gt;\n&lt;p&gt;　　不储蓄，绝对成不了富豪，储蓄不是美德，而是手段。储蓄是守，投资是攻。时间就是金钱，储蓄和投资都要趁早。&lt;/p&gt;\n&lt;p&gt;　　5、拿闲钱来进行投资&lt;/p&gt;\n&lt;p&gt;　　闲置的钱做投资，就算亏了，也不影响到家庭生活。并注意优选一些稳健型的投资方式。&lt;/p&gt;\n&lt;p&gt;　　6、保住本钱&lt;/p&gt;\n&lt;p&gt;　　投资原则之一，绝对不能把本钱丢了；投资原则之二，一定要坚守原则一。能保住本钱就是赚钱！&lt;/p&gt;\n&lt;p&gt;　　7、将每一分钱用到实处&lt;/p&gt;\n&lt;p&gt;　　人口爆炸、房价、物价疯涨，赚钱已不易，花钱更不易，需勤俭节约，精打细算地使用钱，将每一分钱用到实处。&lt;/p&gt;\n&lt;p&gt;　　8、适当省钱也很必要&lt;/p&gt;\n&lt;p&gt;　　省钱的前提是保证基本生活质量。那些刻意省钱，整天不吃饭，只吃泡面，甚至一年到头不吃鱼肉的做法不可取。该花的钱要花，不该花的钱绝对不花。&lt;/p&gt;\n&lt;p&gt;　　9、拒绝冲动型消费&lt;/p&gt;\n&lt;p&gt;　　购买一样东西理由是“需要”，而不是“漂亮”或是“打折”。付款前多想想，买这个东西是要干什么&lt;/p&gt;\n&lt;p&gt;　　10、复利投资&lt;/p&gt;\n&lt;p&gt;　　这是富人的“垫脚石”。&lt;/p&gt;\n&lt;p&gt;　　11、依靠“常识”炒股票&lt;/p&gt;\n&lt;p&gt;　　寻找变化中的不变，就是能挣大钱的“常识”。将分散的投资和集中投资有机结合起来，绩优股要长期持有。&lt;/p&gt;\n&lt;p&gt;　　12、善投基金&lt;/p&gt;\n&lt;p&gt;　　不能一味信奉基金代理商，还要仔细看基金商品过去的业绩，而不是现在的业绩。 不要固执地选择收益率超过平均收益率的基金商品，不要这山望那山高。&lt;/p&gt;\n&lt;p&gt;　　13、追逐知识&lt;/p&gt;\n&lt;p&gt;　　不断追逐财富，就是不断学习投资理财知识的过程。&lt;/p&gt;\n&lt;p&gt;　　14、信息就是财富&lt;/p&gt;\n&lt;p&gt;　　锻炼自己运用信息的预见力和决断力。&lt;/p&gt;\n&lt;p&gt;　　15、不跟风投资&lt;/p&gt;\n&lt;p&gt;　　很多人都是什么热买什么，没有真正的投资理财意识，只是投机。你现在是投资还是投机，要考虑清楚！&lt;/p&gt;\n&lt;p&gt;　　16、积累人脉&lt;/p&gt;\n&lt;p&gt;　　不管什么人，光凭自己的力量是成不了富豪的，而人脉需要细心经营。&lt;/p&gt;\n&lt;p&gt;　　17、向富人学习&lt;/p&gt;\n&lt;p&gt;　　多研究那些真正靠努力致富的人，学学他们的言行举止、成功经验、投资理念等。&lt;/p&gt;\n&lt;p&gt;　　18、败不馁胜不骄&lt;/p&gt;\n&lt;p&gt;　　不管是失败或成功，都冷静分析，作出最有利于自己的决定。&lt;/p&gt;\n&lt;p&gt;　　19、放眼全球市场&lt;/p&gt;\n&lt;p&gt;　　不要把眼光局限于国内，海外投资也逐渐成为趋势，如海外置业等。&lt;/p&gt;\n&lt;p&gt;　　20、对家庭财富做定期体检&lt;/p&gt;\n&lt;p&gt;　　即针对家庭收入支出、资产负债等，从风险控制、合理负债等角度进行分析预测，从而确定家庭的日常饮食、出行活动等的安排。&lt;/p&gt;\n&lt;p&gt;　　21、负债也是一种资产&lt;/p&gt;\n&lt;p&gt;　　钱是活的，聪敏人处处都可以生钱。可以利用债务创造更多收益。&lt;/p&gt;\n&lt;p&gt;　　22、借钱“拿不回来也不要紧”？&lt;/p&gt;\n&lt;p&gt;　　很多朋友最后翻脸都是因为钱，不要为了充义气而把大笔资金借出去，万一收不回来，又伤财又伤感情。&lt;/p&gt;\n&lt;p&gt;　　23、不把鸡蛋放在同一个篮子里&lt;/p&gt;\n&lt;p&gt;　　这话是老土，但真正用起来却是真理。多元化投资，不但可以分散风险，还可以多赚点钱。&lt;/p&gt;\n&lt;p&gt;　　24、学会“精于算计”&lt;/p&gt;\n&lt;p&gt;　　不是勾心斗角，而是加强对财富数字的敏感。计算能力好，在控制成本、风险、判断收益等时都能得心应手。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(130, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499930741, 1499930741, 1499930730, 0, 'P2P投资理财三大法则', '', '', '', '\n&lt;p&gt;　　互联网的迅速发展，与传统民间借贷充分融合，P2P应运而生了。作为互联网金融模式，它解决了当前国内众多小微企业以及个人的贷款需求，满足了投资者的理财欲望。在根本上，推进了普惠金融理念深入人心。高收益低风险的特性，从理论和实践上，已经证明了P2P的优越性。下面小编和大家分享一些P2P理财法则，希望可以加快你们的财富积累。&lt;/p&gt;\n&lt;p&gt;　　1、官网公开信息要核实&lt;/p&gt;\n&lt;p&gt;　　在P2P监管细则并未出台、P2P企业鱼龙混杂的今天，如果你轻易付出信任和金钱，其实相当于去冒险。因此，当你在选择P2P平台进行投资时，应该仔细核实p2p平台官网上的信息是否真实。&lt;/p&gt;\n&lt;p&gt;　　2、要记住高收益具有高风险&lt;/p&gt;\n&lt;p&gt;　　从普通投资人角度看风险当然越小越好，但事实上，无论银行等传统金融行业，还是互联网金融平台，收益率和风险水平永远是相匹配的。尽管互联网金融平台通过互联网运营、创新业务模式等方式能够在一定程度上降低运营成本、提高收益，但风险不可小觑。&lt;/p&gt;\n&lt;p&gt;　　3、时刻关注行业动态&lt;/p&gt;\n&lt;p&gt;　　挑选理财平台比挑选产品更重要，如果平台成立时间较短、没有任何背景或瞎编乱造背景、资金实力不强，对这类平台就要小心了，即使不是非法集资，项目逾期、资金提现困难的可能性也会大大增加。&lt;/p&gt;\n&lt;p&gt;　　另外，需要提醒小白们的是，P2P投资是一个动态过程，需要不断评估平台风险。一些平台可能因为经营不善而倒闭，因此需时刻关注平台动态、平台数据变化、行业走势、政策动向等。&lt;/p&gt;\n&lt;p&gt;　　真正的正规的P2P网贷对于风险把控要求相当高，实行平台资金的第三方托管、银行存管，保证投资者资金的独立性和安全性，这是网贷行业为保障投资者安全几乎无法绕过的门槛，通过建立资金第三方托管、银行存管，加大风险把控，杜绝平台构建资金池和擅自动用平台资金，杜绝平台形成自我担保等风险，这也是银监会对网贷行业最直接的要求。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(131, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1499930769, 1503372483, 1499930700, 0, 'P2P网贷、股权众筹合规年，你的理财安全吗', '', '', '', '\n&lt;p&gt;　　互联网金融已经逐步走进千家万户，很多投资人享受到了互联网投资带来了便利和收益，但是市场上不乏有浑水摸鱼的平台。合规是2016年互联网金融的主旋律，尤其在涉及投资人回报的P2P网贷和股权众筹领域，如何确保平台的中介性质，又能提升投资人理财的安全性是很多平台要考虑的问题。近期，在多个地区开展针对互联网金融平台的整治工作，将重点排查开展P2P网络借贷和股权众筹业务、通过互联网开展资产管理及跨界从事金融业务、开展第三方支付业务和开展互联网金融领域广告等行为的企业，全面形成多方联动的良好工作格局，牢牢守住不发生区域性系统性金融风险和大规模群体性事件底线。根据摸底排查情况，平台将被分为合规、整改、取缔三类。其中整改和取缔类的机构将交由市政府或牵头部门实施清理整顿。&lt;/p&gt;\n&lt;p&gt;　　“我们收到了监管部门下发的自查表格，里面有一些问题让平台如实填写，监管部门再进行审核。”北京一位网贷平台负责人介绍。填写的内容主要包括平台的业务模式是否真正的P2P还是包含财富管理等业务，平台是否在第三方支付或银行进行资金托管等。在这样的背景下，不合规平台将会逐步退出市场，优胜劣汰，优质平台将会更加受到投资人的青睐。&lt;/p&gt;\n&lt;p&gt;　　作为普通投资人如何挑选安全合规的平台进行投资呢？很多投资人希望通过网络评价和实地考察来挑选安全平台，但是往往事与愿违。网络上的评论人员也许对平台了解的并不透彻，实地考察获得的信息也比较有限，很难对平台安全性做出专业的判断。其实，借助权威的互联网理财第三方平台是一个不错的办法，可以参考风车理财等等。&lt;/p&gt;\n&lt;p&gt;　　据悉，风车理财是业内领先的互联网理财第三方甄选管理平台，向投资者展示的全部是经过专业风控严格筛选的优质互联网理财平台。对提出入驻申请的理财平台，风控团队通过独创的FRAS风险评估体系对平台在背景实力、业务模式、风控体系、产品特性、运营能力和IT技术等6大角度、32个维度进行专业审查，筛选出符合标准的优质平台。投资人可以通过风车理财创建投资组合分散投资，还可以获得5%额外加息。&lt;/p&gt;\n&lt;p&gt;　　P2P网贷、股权众筹合规年，为了你的理财安全，一定要坚守安全第一收益第二的原则，谨慎选择优质理财平台，切忌盲目投资。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(132, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499930797, 1499930797, 1499930784, 0, 'P2P网贷成理财“风向标”', '', '', '', '\n&lt;p&gt;　　近年，P2P网贷逐渐成为大众理财的主要渠道，给日益僵化的金融模式注入了无限活力，备受人们的推崇与信赖。很多人问到底是为什么呢？求其原因，小编给大家总结了如下几点；&lt;/p&gt;\n&lt;p&gt;　　首先，互联网的普及。互联网是一项伟大的发明，以先进的现代信息技术极大提高信息传播的速度和覆盖面，一方面使人们更容易接受新鲜事物，另一方面降低了信息传播成本，为借贷双方提供了便捷的中间平台。&lt;/p&gt;\n&lt;p&gt;　　其次，借款方的资金需求。一般情况下，借款方多为中小企业，或急需资金流通的老企业，或急需启动资金的刚起步的企业。有数据表明，中小企业占全国企业总数的99%以上，GDP的贡献超过90%，对科技创新的贡献也是在70%以上，然而就是这些支撑起国民生产总值的中小企业，由于没有强大的信用背书，强硬的社会关系，有效的抵押物品等种种原因，在银行贷款时很难得到正常所需。P2P网贷则不然，尽管对借款企业的风控严格，甚至高于银行，但主要考虑的是企业的发展前景、负责人的人品道德以及有效的抵押物品，相对而言借款方便快捷，利于企业获得资金，获得长足发展。&lt;/p&gt;\n&lt;p&gt;　　再者，投资方的需求。据不完全统计，截至2015年10月24日，一年期存款利率最高的银行为上海农商银行，利率为2.1%，而人民币贬值的基数大致为每年3%，两相对比，无需多言。人们不得不寻找更有效的投资渠道，保证自己的财产不被贬值，甚至做到升值。股票、基金可以满足人们的这一需求，高门槛、高风险却又另人望而却步。P2P网贷则不然，大多数平台起投资金极低，1元、50元、100元皆可;资金流动性极强，活期、1~12月都有，选择空间非常大;投资效率极高，由于搭载互联网的原因，人们完全可以做到足不出户轻松理财。最重要的一点，P2P网贷的收益占据很大优势，尽管在行业逐渐趋于理性的情况下收益日渐降低，平均收益率仍达到10.38%。&lt;/p&gt;\n&lt;p&gt;　　有相关的行业人士表示：“P2P网贷之所以受到国家重视，与其连接借贷双方，有效进行资金配置的原因息息相关。一方面促进中小企业发展，解决大多数人就业问题的同时，也可以增加国家税收。另一方面，人们通过P2P网贷理财所得，必将用于日常消费，消费水平的提高也意味着促进国家经济的发展。”。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(133, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499930827, 1499930827, 1499930809, 0, '投资理财最常见的5个问题 教你逐一击破', '', '', '', '\n&lt;p&gt;　　无论是“菜鸟”还是已有几年经验的投资者，在投资理财时依旧会碰到不少问题。其中有些问题是大家的通病，非常常见。&lt;/p&gt;\n&lt;p&gt;　　对此，小编就为大家总结了5个，并给了解决方案，教各位投资者如何一一击破这些问题。&lt;/p&gt;\n&lt;p&gt;　　1、知道要记账但不想记&lt;/p&gt;\n&lt;p&gt;　　记账基本属于理财入门级别的“必备武器”，很多人也都知道记账的重要性，但就是不想记，嫌麻烦。还有人表示就算想到去记账，也不能完全记得当天或是前几天究竟花了几笔钱，根本记不全，时间长了就不高兴记了。&lt;/p&gt;\n&lt;p&gt;　　对此，小编建议大家在花钱的同时，随手打开手机记事本，当场记下每笔花费，或是直接下载一个记账软件，不仅使用方便，也不用回家后再用笔和纸去记，省下不少时间。&lt;/p&gt;\n&lt;p&gt;　　2、懒得计算理财收益&lt;/p&gt;\n&lt;p&gt;　　投资理财时，大家最关注的还是收益，但不同理财产品收益率不尽相同。此外，像股票、基金等产品，收益率也很难估算出来，这就致使不少投资者只看账户余额，如果比原始本金多了，那就赚了，至于赚多少，懒得算。另外，如果是分散投资，部分投资者也懒得算自己最后获得的总收益。&lt;/p&gt;\n&lt;p&gt;　　但万一理财产品中亏盈同时存在，不计算总收益，就不知道自己究竟是赚还是赔，最后可能损失了很多钱自己却还未意识到。对于这部分投资者，建议尽可能选择固定收益类产品，如国债等，省去了自己计算收益的环节。当然，资产够多的话，也可交给专业的理财师进行打理，省时省力，财富也有保障。&lt;/p&gt;\n&lt;p&gt;　　3、容易犯选择困难症&lt;/p&gt;\n&lt;p&gt;　　现在能投资理财的渠道并不少，理财产品也是五花八门，这就让很多投资者开始犯选择困难症了。一会儿觉得股票好，赚钱快，一会儿又觉得货币基金好，资金有保障，但前者风险太高，后者收益又低，纠结来纠结去，完全不知道该选哪个。&lt;/p&gt;\n&lt;p&gt;　　小编大家要根据自己的资金状况和风险承受能力选择不同的理财产品，比如存款较少或是风险承受能力一般的投资者，可以选择货币基金、国债等；而收入较高，存款也多及风险承受能力较强的投资者，则可在稳健型投资的基础上，再配置些股票、基金等产品，分散风险。&lt;/p&gt;\n&lt;p&gt;　　4、挡不住“低门槛高收益”的诱惑&lt;/p&gt;\n&lt;p&gt;　　“高收益”对投资者的吸引力一直很大，但比它更有吸引力的是“低门槛高收益”。毕竟有些理财产品的门槛过高，很多投资者就算想投也不一定投得起，比如信托等。但一旦有产品降低门槛，收益也高，那投资者很可能“鱼贯而入”，比如P2P。&lt;/p&gt;\n&lt;p&gt;　　但需要提醒大家的是，收益高的产品基本风险也大，不要因高收益低门槛就忽视了风险的存在。建议大家在投资前，一定要了解产品详情，问清资金流向，切忌盲目跟风，避免造成巨大损失。&lt;/p&gt;\n&lt;p&gt;　　5、以为只有“钱生钱”才是投资&lt;/p&gt;\n&lt;p&gt;　　一说到投资，很多人第一反应就是通过配置各种投资理财产品，达到“钱生钱”的目的。但投资往往不仅是在“钱”上做文章，还要在自己身上做文章。因为，世界上最好的投资就是投资自己。&lt;/p&gt;\n&lt;p&gt;　　因此，在投资理财时，大家一定要摒弃投资仅是“钱生钱”的误解，多想想是不是可以在自己身上多做些投资，让自己变得更具竞争力，将来才能赚更多钱。&lt;/p&gt;\n&lt;p&gt;　　除了以上5点常见的问题外，各位在投资理财时还会碰到其他一些问题，但只要找到解决方案，那理财之路将会更顺利。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(134, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499930846, 1499930846, 1499930835, 0, '理财，从零开始', '', '', '', '\n&lt;p&gt;　　在人生的坐标里，如何寻找财富的元素？世界富豪沃伦·巴菲特几乎从零出发，开创了他最富传奇色彩的理财人生。随着“后理财时代”的到来，“你不理财，财不理你”成为了常挂在人们嘴边的一句口头弹。理财规划的重要性日益凸现。&lt;/p&gt;\n&lt;p&gt;　　首先，理财规划是收支平衡的 “调节器”。人们通常要面临收支不平衡问题：或者是收入大于支出的最理想的状况，但更多时候是收入等于支出，赤条条来去无牵挂；或者是收入小于支出，生活拮据艰苦。其实，在人生的各个阶段，都有着大笔的支出，如用于支付教育、购房、培育下一代、医疗养老等。这客观上要求人们提早进行理财规划，以免出现入不敷出的情况。从这个角度上讲，理财规划是调节收支平衡的一个利器，不仅仅是打理所挣到的钱财，更是用心经营我们未来的生活。&lt;/p&gt;\n&lt;p&gt;　　其次，理财规划是经济生活的 “解压器”。面对各种生活成本的不断攀升，你若善用理财工具，进行人生阶段的理财规划，可有效地缓解生活压力，提高生活质量。笔者认为，对于“月光族”而言，应增强理财规划意识，养成理财习惯，压缩消费开支，学会从“透支”到“投资”的转变。对于打工一族，不要以为钱少不必理财或“没财理”。其实每天付账、缴保费、到银行存取款等等，都是理财活动。因此你无时无刻不在理财，只是理得好不好而已，有规划的理财方式，可以帮助自己顺利地累积财富，逐步实现梦想。&lt;/p&gt;\n&lt;p&gt;　　再次，理财规划是财富增长的“助推器”。在现代生活中，能否进行科学的理财规划在很大程度上决定了财富收益率的高与低，不同的理财规划，往往会产生两种截然不同的收益。举个例子：小李和小林同年大学毕业，参加工作的时候都只有24岁，两人收入水平差不多每年都只有2万元积蓄，假如小李把自己的钱拿去存银行，税后的收益率大约只有2‰左右，而小林把自己的钱拿去买理财产品，收益率大约能达到10‰，当他们都到60岁时，小李的总资产为108万元，而小林的总资产为660万元，后者的余额为前者的6倍多。可见，从货币的时间价值上看，理财规划日益成为了财富增长的“助推器”。&lt;/p&gt;\n&lt;p&gt;　　第四，理财规划是规避经济风险的 “防火墙”。有的人则认为只要会赚钱就够了，但会赚钱的人不一定会理财。事实上每个人都有可能遇到财务风险，为了降低风险和实现人生各个阶段目标，应该有一个完善的理财规划。在现实生活中，好些人看中了房产的升值速度与潜力，将积攒不多的现金投入首付支出上，不但用钱“告急”，而且有的还背上了债务，成为了“房奴”，从而影响了家庭的正常生活支出，导致了无能力支付意外开支的无奈。有些人听说现在股票来钱快，便盲目跟进，几乎把所有的积蓄都投到股市，但连续遇上几个跌停板，一下子被“套牢”了。究其原因，是缺乏较好的理财规划，没有为规避经济风险设置一道“防火墙”。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(135, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499930944, 1499930944, 1499930928, 0, '关于理财这点事', '', '', '', '\n&lt;p&gt;　　现在理财已经是一种趋势，一种习惯了，原因无他，因为人民币贬值和房价一样搭火箭了，咱们没法阻止火箭起飞，但是可以增加重量，减慢其速度。&lt;/p&gt;\n&lt;p&gt;　　有时候小编也是蛮纠结的，你说这有钱人吧，有钱就是优势，同一个平台，我只有五千，别人有五百万，然后收益的时候，人家收益50000，咱才50，哎，这就是差距啊。一句话，越是有钱人就会越有钱，咱们穷人就只好滚雪球，由小积大，慢慢积累财富。&lt;/p&gt;\n&lt;p&gt;　　很多人说理财要养成这样那样的好习惯，小编也试过，但最后真的没坚持下来，不过我觉得，有时候该花的钱还是要花的，因为人生苦短，还是要学会享受生活的。&lt;/p&gt;\n&lt;p&gt;　　大多数人理财的时候在选择平台时也是纠结得不得了，说白了就是担心资金不安全，互金会，银监会说是在大力整治，也不知道最后效果怎么样，不过这样也有一个好处，就是那些为平台在第一轮排查中已经挂了，估计最后可以活下来的才算正规平台。&lt;/p&gt;\n&lt;p&gt;　　据说在今年年底之前可以彻底排查有问题平台，因此建议那些特别谨慎的投资人，建议选择稳健安全的理财产品，待事态平息后再选择。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(136, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499930965, 1499930965, 1499930954, 0, '养成理财习惯 思维决定财富', '', '', '', '\n&lt;p&gt;　　人人都希望自己成为有钱人，都羡慕李嘉诚的富有,很多人埋怨老天对自己不公，为什么发财总没有自己份，幸运之神总不眷顾我?也有不少人相信爱拼才会赚，可发生在身边不少真人故事告诉我们，有人日夜奔波，到头来依然捉襟见肘，甚至要刷卡透支，成了名副其实的“月光族”，而有人成天似乎悠闲惬意，却是闭着眼睛都有钱来。其实，理财并不是富人的专利，穷人也可以理财，首先要有理财的思维，再就是养成良好的理财习惯，同样能过上富裕的生活。&lt;/p&gt;\n&lt;p&gt;　　一、思维决定财富&lt;/p&gt;\n&lt;p&gt;　　当然，说思维决定财富，并不是说要打击勤劳致富一族的积极性。只是说勤劳值得肯定，它也是我们致富的基础，但要真正富起来，还得加上“富的思维”才能真的实现致富，否则纵然可以富起来，然发展“钱途”和速度都会十分有限。&lt;/p&gt;\n&lt;p&gt;　　为了证明“思维决定财富”这一理论的正确性，美国理财专家考利，他用了5年时间，对美国富人和穷人在日常生活中的行为和习惯进行了调查和分析，结果发现，存在于富人和穷人之间很大的一个差异是对财富的思维习惯。而且考利还认为，运气，在决定人穷富上只占很小的成分，这更加从另一个层面道明了思维在决定财富上的重要意义。&lt;/p&gt;\n&lt;p&gt;　　二、养成理财习惯&lt;/p&gt;\n&lt;p&gt;　　先讲个小故事。有三个人要被关进监狱三年，监狱长满足了他们一人一个要求。俄国人爱抽雪茄，要了三箱雪茄;法国人最浪漫，要一个美丽的女子相伴;而犹太人说，他要一部与外界沟通的电话。三年过后，第一个冲出来的是俄国人，他的嘴里鼻孔里塞满了雪茄，大喊道：“给我火，给我火!”原来他忘记要火了。接着出来的是法国人。只见他手里抱着一个小孩子，女子的肚子里还怀着一个。最后出来的是犹太人，他紧紧握住监狱长的手说：“这三年来我每天与外界联系，我的生意不但没有停顿，反而增长了200%，为了表示感谢，我送你一辆劳斯莱斯!”&lt;/p&gt;\n&lt;p&gt;　　故事的寓意很明显，选择决定生活。选择追求富裕，就会为之养成良好的理财习惯，克服不必要的欲望，最终就会成为富人。相反，穷人往往是年轻时没有规划，不懂的量入为出，花钱无节制，结果必然贫困一生。所以理财的第一步，就是树立理财观念，养成理财习惯。&lt;/p&gt;\n&lt;p&gt;　　理财没有贫富的限制，富人要理财，穷人更需要理财，可以用“富人理财就象锦上添花，穷人理财有如雪中送炭”来形容，有人说，“我月入只有三千元，没有其他收入，能理财吗?”答案是肯定的，关键看你怎样开源节流，将有限的资金合理调配，在保证必需的基本生活费用后，将余钱用于理财，退休后的生活就有保障。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(137, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499930985, 1499930985, 1499930974, 0, 'p2p理财的主要优势', '', '', '', '\n&lt;p&gt;　　投资门槛低&lt;/p&gt;\n&lt;p&gt;　　正常情况下，涉及传统理财产品的投资门槛都相对较高，从几万到十几万的门槛都有。但是，对于大多数投资人而言，这种投资门槛未免太高了。而P2P理财产品一般没有起投门槛的限制，非常符合大众投资人的需求。&lt;/p&gt;\n&lt;p&gt;　　高收益&lt;/p&gt;\n&lt;p&gt;　　传统理财产品的年化收益率基本在5%-10%左右，对于理财需求较强烈的投资人来说还有些略显不足，而P2P理财产品的年化收益率基本在8%-15%左右，这类还是属于比较保守型的P2P理财产品，普遍为匹配债权模式，其安全性很高。若是涉及到高收益的信贷产品，年化收益率会更高，不过安全性就无法保障了。但是，不论是哪种模式的P2P理财产品，其年化收益率都高于传统理财产品。&lt;/p&gt;\n&lt;p&gt;　　投资便利&lt;/p&gt;\n&lt;p&gt;　　互联网最大的特性就是易操作，处理速度快。对于传统理财产品动不动就要往银行或者证劵所跑的情况，P2P理财产品让投资人在家里就可以进行投资理财行为，从而节省了大量的时间给投资人。同时，完成投资的速度也比需要经过多到手续的传统理财产品快得多。&lt;/p&gt;\n&lt;p&gt;　　理财期限灵活&lt;/p&gt;\n&lt;p&gt;　　传统理财产品的理财周期一般是以年为单位进行的，这对于投资人手里资金的流动性非常不利，若是出现个别紧急状况很难把资金尽快返还到手里。而P2P理财产品，其理财周期一般在1-12个月不等。投资人可以根据自己的理财需求选择不同周期的理财产品，当出现紧急状况时，也可以使资金尽快返回到自己手里。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(138, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499931006, 1499931006, 1499930996, 0, '个人投资理财，10大技巧你知道多少？', '', '', '', '\n&lt;p&gt;　　个人如何理财?如今大多数人对理财方面越来越重视，那么究竟如何更好地做好个人理财呢?为此,趣生财理财师整理了一些个人理财中常用的技巧，看似非常简单，但每一个你都必须掌握!&lt;/p&gt;\n&lt;p&gt;　　1、你不预算，财不理你&lt;/p&gt;\n&lt;p&gt;　　个人理财做预算时可划分为三部分：必要的开支、无关紧要的开支、不必要的开支，对自己的每一笔开支做到心中有数，以后就能分出部分收入作储蓄或投资。&lt;/p&gt;\n&lt;p&gt;　　2、记账，能助你做好个人理财一臂之力&lt;/p&gt;\n&lt;p&gt;　　记账对很多人来说似乎有点太烦，容易忘记，但坚持记账是件一劳永逸的事。记账不仅能帮助你做好预算，还能帮助控制你一些不必要的浪费。&lt;/p&gt;\n&lt;p&gt;　　3、定期存款，强制自己存钱&lt;/p&gt;\n&lt;p&gt;　　不要总将“我不会理财”“没钱理财”挂嘴边再不会理财，定期存款总该会吧。钱不是万能的，但没钱却是万万不能的。所以你可以给自己制定一个计划，每个月定期定额在银行进行存款，强制自己存钱。&lt;/p&gt;\n&lt;p&gt;　　4、购物应货比三家，省一点是一点&lt;/p&gt;\n&lt;p&gt;　　购物消费，也要学会控制，当然也并不是说让你生活质量降低了，只是说同样的产品，或许你能花比别人少很多的钱买到。你可以货比三家，或者利用商品优惠券购买，或者不打紧的东西，趁打折促销时买，省一点是一点。&lt;/p&gt;\n&lt;p&gt;　　5、跳槽好比“调仓”，找个“收益”高的&lt;/p&gt;\n&lt;p&gt;　　对每个人来说，跳槽是机会也是风险。如果你真想跳槽，首先自己对自己未来的职业发展方向有了明确的规划;其次你确实有了跳槽的资本，想拥有更大发展空间;最后，跳槽好比“调仓”，那就找个“收益”高的吧。&lt;/p&gt;\n&lt;p&gt;　　6、不懂投资，找理财专家&lt;/p&gt;\n&lt;p&gt;　　现今社会上的专业独立的理财机构很多，你不懂投资可以找他们。比如国内知名的第三方理财机构余额宝、理财通、趣生财，他们都有专业独立的理财专家团队，目前都能免费为家庭和个人投资理财提供理财咨询，甚至帮你挑选适合的理财方式。&lt;/p&gt;\n&lt;p&gt;　　7、学好投资理财，每天看新闻联播&lt;/p&gt;\n&lt;p&gt;　　要想学好投资理财，每天看新闻联播。因为国家政治局势对经济局势影响最大，而且每天的新闻联播图文并茂，有声有色，简单易懂。&lt;/p&gt;\n&lt;p&gt;　　8、不懂的领域，不要投资&lt;/p&gt;\n&lt;p&gt;　　你想投资艺术品、投资古董、购买股票、外汇等，自己问自己“真的懂行吗?”艺术品和古董，赝品太多很难辨认;股票，你看的懂那些红绿线吗?外汇，你对汇率懂吗?会换算吗?等等。总之，不懂的领域，不要投资，就不会吃亏。&lt;/p&gt;\n&lt;p&gt;　　9、个人理财定律，也要善于利用&lt;/p&gt;\n&lt;p&gt;　　个人投资理财必须掌握的定律：资产合理配置的 4321 定律;预计你承受风险的 80 定律;个人购买保险比例的双十定律;房贷的三一定律等等。&lt;/p&gt;\n&lt;p&gt;　　10、健康是本钱，勿忘身体&lt;/p&gt;\n&lt;p&gt;　　投资健康是革命的本钱，不要只想着拼命工作赚钱。只有身体健康了，你才能享受美好生活，疾病不仅会浪费你的时间、精力，还会浪费你的金钱，那样成本更大。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(139, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499931032, 1499931032, 1499931015, 0, '从理财市场规模看P2P网贷发展前景！', '', '', '', '\n&lt;p&gt;　　日前，从14个部委联合打击金融领域非法集资专项整治开始，P2P网贷成为监管部门重点关照的对象。对P2P网贷的集中整治可以说涉及到工商注册、招商引资、税务稽查、楼宇租赁、广告管理、信息披露、平台运营等全方位监管与排查。P2P网贷行业好似被一片肃杀之气所笼罩。&lt;/p&gt;\n&lt;p&gt;　　同时有媒体报道，2015年底开始征求意见的《网贷信息中介机构业务活动管理暂行办法》已暂时搁置。于是，有业内人士惊呼，互联网金融行业、P2P网贷将“步入冬天”，一些从业者，也开始为P2P网贷行业的未来走向担忧。行业研究员，结合网贷之家等第三方平台数据，用数据说话，简单分析依旧看好P2P网贷的原因：&lt;/p&gt;\n&lt;p&gt;　　看规模！&lt;/p&gt;\n&lt;p&gt;　　截至2015年底，我国金融机构和第三方理财总规模为81.18万亿。银行、信托、券商和保险是最大的理财机构。其中：银行23.5万亿，占28.95%；信托16.3万亿，占20.08%；券商11.89万亿，占14.65%；保险11.86万亿，占14.61%；基金公司16.65万亿，占20.51%，其中包括基金专户4.03万亿，基金子公司8.57万亿和私募基金4.05万亿；互联网P2P理财规模为9800万，占1.21%。&lt;/p&gt;\n&lt;p&gt;　　看增速！&lt;/p&gt;\n&lt;p&gt;　　2015年，除了P2P理财规模疯狂增近400%以外，基金下属的资管子公司理财规模扩张最快，同比增长率高达130%，其次是私募基金，同比增幅也超过100%，与此同时，二级市场的牛市也连带催生了银行理财和券商资管的高速增长，其年度增幅都超过50%。只有信托行业的资管规模收到政策调整因素的影响，大幅放缓，年度增幅只有16%。&lt;/p&gt;\n&lt;p&gt;　　看对比！&lt;/p&gt;\n&lt;p&gt;　　从信托行业经验看，P2P网贷平台当下最重要的事，显然已不是野蛮扩张，而是在监管框架内，让业务合规化，最终存留下来，并真正在借贷的长尾市场上建立竞争力，等待市场的真正爆发。而一旦这个时点临近，P2P网贷因为其互联网性质，扩张速度可能将远超信托业。&lt;/p&gt;\n&lt;p&gt;　　2015年底，信托公司的家数只有68家，从2007年以来仅小幅增长，但行业资产规模突破16万亿元，增长16倍。最大的信托公司资产为1.09万亿元，最小的98亿元。资产规模最大的信托公司行业份额占比为6.69%，前十家信托公司资产规模占整个行业的40%，集中度并非很高。&lt;/p&gt;\n&lt;p&gt;　　最后从市场空间看，以P2P网络借贷占到整个社会债务融资规模的5%测算，五年后有望达到6.65万亿元到10.7万亿元的贷款余额规模，相比2015年末预计将有14到23倍的空间。&lt;/p&gt;\n&lt;p&gt;　　“总之，P2P网贷行业已经步入了‘爬坡过坎’的关键阶段。当下对金融相关领域的集中整治，有利于整个P2P网贷行业实现‘控制增量、优化存量、提高质量’之目标，这与国家支持和鼓励P2P网贷行业的发展不矛盾，相反，这对于真正从事P2P网贷行业的平台而言实际上是利好的。通过上述数据分析，我们依然对网贷行业的未来，充满信心”&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(140, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499931056, 1499931056, 1499931042, 0, '90后已逐渐成为P2P理财新势力', '', '', '', '\n&lt;p&gt;　　作为互联网的原住民，90后无疑是见证互联网高速发展的一代。对新兴电子产品、通讯工具如有家珍，不在话下。高效、便捷、创新成为90后的生活标签。&lt;/p&gt;\n&lt;p&gt;　　随着各类网贷平台的出现，掀起了互联网理财的热潮，互联网基金理财、P2P理财、互联网保险理财、产品众筹等新颖的理财方式随后也进入人们的视野。《2016年中国个人理财市场研究报告》显示截至2015年年底，互联网理财的市场规模已经接近2万亿元，参与用户累计达到2~3亿人，用户基础基本确立，产品日益丰富，并仍在源源不断创新理财产品结构和理财服务形式。&lt;/p&gt;\n&lt;p&gt;　　近年来，个人理财市场进入互联网理财时代。“互联网+”的时代，无疑是90后的时代。“花今天的钱，圆明天的梦”无疑是工作资历较浅、消费需求旺盛、还款能力可预见的90后不少人的选择。蚂蚁花呗、京东白条为代表的小额信用借贷以及余额宝、网贷平台此类小额亲民理财渠道的顺势出现以及蓬勃发展，无疑为90后提供了新的理财渠道。&lt;/p&gt;\n&lt;p&gt;　　90后精力旺盛，尝新能力强，信息获取能力比较强。平台的重大事件、舆论的导向也会吸引90后对平台的持续关注或视线焦点。借助平台资讯以及第三方评级、专业人士点评等渠道，有足够的精力和时间去考察、分析，对于平台的发展以及投资持长久的培养状态。熟悉手机应用以及电脑技术的90后，也较少畏惧网上理财产品的复杂繁多。丰富的线下活动以及平台活动，也是增加90后的粘性以及活跃程度的重要法宝，互动性是90后理财的重要特点。&lt;/p&gt;\n&lt;p&gt;　　90后思想做事独立，看重自身信息安全，担忧信息泄漏。资金安全以及信息安全成为90后选择平台的一个重点。90后因为日常花销以及娱乐活动占据大部分可支配收入，闲置资金较少，对资金的流动性需求较高。本金数额有限，但其敢于尝鲜，风险承受能力高，风险系数有限，更加注重体验，愿意用超前消费满足个性化的消费意愿，迫切希望能够购买到带给他们个性化生活的体验和东西，且对新兴的互联网金融能够快速接纳。高收益、便捷、及时的互联网金融更加契合90后的理财需求，正好能匹配快速消费的金融商业服务。因此更偏向超短期的线上理财产品。每个月都能产生现金流，又能产生收益。&lt;/p&gt;\n&lt;p&gt;　　早在2015年，国内知名第三方支付平台发布了P2P行业季度发展报告就显示，上年年以来P2P平台数量、成交量、投资人数都呈爆炸式增长的势态。特别是在P2P投资人中出现了 “90后”、“本科”、“5万年收入”等标签。&lt;/p&gt;\n&lt;p&gt;　　“理财趁早”，毫无疑问成了90后的理财宣言。不同于70、80后的理财意识萌发晚，越来越多的90后理财意识成熟，纷纷加入理财大军，网贷行业作为高速发展的新生行业，如何结合90后投资体验开发创新相应服务，培养用户的粘性，增加平台和用户的忠诚度，也许是一个新的契机。除了细化业务领域，针对不同人群定制个性化理财产品，值得期待。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(141, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499931090, 1499931090, 1499931075, 0, '不同收入层次年轻人 如何做一些基础性理财工作', '', '', '', '\n&lt;p&gt;　　对于现在工作几年的年轻人，如果手中也开始有了一定的资金积累，如何去做一些投资理财呢？可不要盲目的跟风，且来听听理财师是怎么讲的。&lt;/p&gt;\n&lt;p&gt;　　1、收入仍不多的年轻人&lt;/p&gt;\n&lt;p&gt;　　对于收入仍不多的年轻人，怎么去投资呢？年轻人年富力强，有一定的抗风险能力，因此可尝试配置一些基金、股票等。&lt;/p&gt;\n&lt;p&gt;　　这两类投资的初始投资金额要求都不高，几百元就可以起投。长期投资的话，注意是长期投资，收益还是会比较好的。不过仍要注意一些投资的风险性，建议初期可配置跟踪股票指数的基金，此外加少量的股票的配置。&lt;/p&gt;\n&lt;p&gt;　　2、收入还不错的年轻人&lt;/p&gt;\n&lt;p&gt;　　比如年收入在10万-20万的年轻人，可能也有了一定的积蓄。买房也好，或者是暂时不买房去投资，那么投资的方向，可以跟上述的一致，也可以再加配置一些固定收益类的产品，这样投资组合的稳健型会更好，每年可享有6%-11%的收益，收益也不低了。&lt;/p&gt;\n&lt;p&gt;　　需要注意的是，有了一定资金后，也不能大意的投资，比如前段时间，一些像现货、期货的贵金属等衍生品投资比较火，很多人也去跟风投资。也许，在这段时间能赚一点钱，但从长期来看，这些高风险的投资品种，最好还是要避免。一旦“上瘾”去玩这些投资，一不小心就可能损失惨重，代价太大。&lt;/p&gt;\n&lt;p&gt;　　3、收入很少的年轻人&lt;/p&gt;\n&lt;p&gt;　　对于收入很少的年轻人，励国金融理财师给予的较为实际的建议是，可以去做一些投资，如做些基金定投，一个月几百元就可，但最好还是把精力花在如何提高自己的收入上可能会比较好。&lt;/p&gt;\n&lt;p&gt;　　因为如果是投资的基数比较小，即使有再好的“行情”，资产的增长也比较缓慢，故最好还是把自己的精力用在如何提高自己的收入上，提高自身的能力上，多学习，提升自己。&lt;/p&gt;\n&lt;p&gt;　　4、不差钱的主&lt;/p&gt;\n&lt;p&gt;　　或许一些家庭背景不错，工作和生活已不差钱，这部分年轻人进行一些自己的投资，也很有必要。具有一定的资金，就可涉及更多的投资种类，包括国内外的市场都可以。此时，建议做一些综合的资产配置计划，可使资产能长期稳定的保值和增值。具体的可咨询专业人士，做一些订制的个人专属方案。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(142, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499931111, 1499931111, 1499931100, 0, '这样理财，50岁后不工作钱也够花！', '', '', '', '\n&lt;p&gt;　　想要提前实现财务自由并不是件难事，你只是缺少理财规划，即使你一个月只挣4000块月薪，只要按照理财规划一步步实施，认真存钱，50岁就能提前退休，实现财务自由。&lt;/p&gt;\n&lt;p&gt;　　某银行理财师表示，理财是建立在一定经济基础上才能进行，首先我们要满足三个前提。&lt;/p&gt;\n&lt;p&gt;　　1稳定的收入&lt;/p&gt;\n&lt;p&gt;　　对于大部分人来说，工资是主要的收入来源。出入社会的年轻人可能收入不是很高，勉强够自己的开销，但是在接下来打拼的二十年中，一定要保证收入可持续增长。&lt;/p&gt;\n&lt;p&gt;　　一方面，有理财信念的支撑，从自身上要更快的提升自己，抓住合适机遇，合理规划自己的职场生涯，升职加薪使收入自然增长。你挣得越多，走向财务自由的速度越快。&lt;/p&gt;\n&lt;p&gt;　　2攒钱很有必要&lt;/p&gt;\n&lt;p&gt;　　很明显如果一个月光族说自己想实现财务自由，那根本就是天方夜谭，因为财务自由的前提，是拥有一笔能够为你带来被动收益的资产。&lt;/p&gt;\n&lt;p&gt;　　“有人觉得，挣钱就是应该去消费。但是多数人还是选择将眼光放长远，他们觉得存下来的钱，才是自己的。存钱也不是一分不花，而是通过一些改变，减少自己不必要的开支。“理财师在谈到攒钱观念时说道。想实现理财目标，就要在消费上有一定规划，节制消费，才能攒下后续投资的资本。&lt;/p&gt;\n&lt;p&gt;　　3你要会“投”&lt;/p&gt;\n&lt;p&gt;　　经过我们的测算，达到每年10%的平均收益就能够实现预期目标。可能有的人会说，这点收益算什么，谁会在乎这点钱啊，但是长期的、持续的增长对我们的资产增值是非常可观的。&lt;/p&gt;\n&lt;p&gt;　　现在有许多低风险产品，无形间也降低了投资理财的门槛，即使你并不精通于此，稍加了解也能够找到合适自己的产品。&lt;/p&gt;\n&lt;p&gt;　　4摆正理财心态，制定合理计划&lt;/p&gt;\n&lt;p&gt;　　“许多人不去接触理财的主要原因，是他们总觉得投资理财是有钱人的专利，自己又没有大钱哪用的着投资理财。&lt;/p&gt;\n&lt;p&gt;　　这种观点是不正确的，正因为储蓄少才更应该合理的理财，详细的规划，别让”等有钱了再说“成为你发财路上的绊脚石。”理财师谈到理财心态时说，没有人是天生的理财达人，理财经验都来源于学习和积累。&lt;/p&gt;\n&lt;p&gt;　　5别做一朝致富的发财梦&lt;/p&gt;\n&lt;p&gt;　　理财不可盲目，如果你一味的瞎理财，财自然不会理你。理财师表示，掌握基本的理财知识还是很必要的，如货币基金及股票基金简单的运作原理，知道它是如何实现收益的。&lt;/p&gt;\n&lt;p&gt;　　多看理财书籍，树立理财意识，一步步积攒自己的小金库。有时间多多关注民生新闻、财经新闻，这些内容很多都会反映在股市中，对于理财来说十分重要。&lt;/p&gt;\n&lt;p&gt;　　对于如何合理的制定理财计划，理财师给出了以下几点建议，供大家参考：&lt;/p&gt;\n&lt;p&gt;　　1. 根据自己的消费情况，制定理财计划&lt;/p&gt;\n&lt;p&gt;　　为自己的各项消费分出比例，保证每个月的投资额度都不低于上个月。例如生活消费支出、意外开销、投资理财等几个方面，分门别类的形成书面，方便根据现实情况随时调整计划。&lt;/p&gt;\n&lt;p&gt;　　2. 削减开销，零存整取&lt;/p&gt;\n&lt;p&gt;　　常常有人对花点小钱不以为然，但即使很小数目的投资，也可能会带来不小的财富。假设你从25岁开始，每个月都多存100元，并可以拿到10%的年利润，到了35岁就有了20000元，投资时间越长，复利的作用就越明显。&lt;/p&gt;\n&lt;p&gt;　　零存整取这个概念，是每个理财师都会跟客户强调的，每月固定存一笔钱，存期一年，到期后全部转为一年定期存款或国债，存款和国债是没有风险的，可以作为生活备用金或以后购房的首付款。&lt;/p&gt;\n&lt;p&gt;　　3. 控制自己的信用卡，杜绝盲目的透支行为&lt;/p&gt;\n&lt;p&gt;　　信用卡的实际消费总额不宜超过工资收入的四分之一，为了避免盲目透支行为，建议只办一张信用卡最为妥当。理财师还以大多数年轻人为例，举个例子告诉我们该如何制定自己的理财计划：假设月收入4000元，年终奖4000元，平均每月正常支出1000元，应该这样做：每月拿出500元资金零存整取，应付日常应急开支　申请一张信用卡，平时选择刷卡消费，特别是在有意外事件发生时，可依靠信用卡度过难关。但要记得及时还款，保证信用良好。为自己购买一份重大疾病保险　支出与保障都做好以后，可以考虑投资。但投资应该注意，保持头脑清醒，不冒进，不多买，根据自己的实际情况，购买适合自己的理财产品。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(143, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499931131, 1499931131, 1499931122, 0, 'P2P理财平台安全吗', '', '', '', '\n&lt;p&gt;　　一直以来，投资者都是根据行业人士，以及一些理财专家给出的建议来识别网贷中的规范平台。进入到2016年，随着国家监管层对网贷专项整治工作严厉有序的推进，投资人选择网贷平台的时，在考虑网贷平台的本质化特征的同时，也会考虑网贷平台的监管合规性。总体来说，投资者在判断一家网贷平台的安全性上有了更多的更专业的辨别依据。不过，对网贷平台的政策性要求了解不详尽或者不透彻的投资人来说，要选到踏实安心的投资平台依然不十分容易。&lt;/p&gt;\n&lt;p&gt;　　不过，在上周，由中国银监会召开的“2016年上半年全国银行业监督管理工作暨经济金融形势分析会议”上，在指出下半年将继续稳妥开展网贷网络借贷风险专项整治工作的同时，也为大家提供了关于如何识别判断不规范网贷平台的“四看”建议。如下，不妨随笔者一起略作解读。&lt;/p&gt;\n&lt;p&gt;　　第一看，机构性质。是否坚持了信息中介定位。&lt;/p&gt;\n&lt;p&gt;　　看点解析：&lt;/p&gt;\n&lt;p&gt;　　对于网贷平台信息中介的定位，这是早在去年7月份，代表着监管靴子落地的纲领性文件《关于促进互联网金融健康发展的指导意见》中就已经十分明确的被提出。在该文件第二大部分第八条，在提到网络借贷时，明确提出，个体网络借贷机构要明确信息中介性质，主要为借贷双方的直接借贷提供信息服务，不得提供增信服务，不得非法集资。&lt;/p&gt;\n&lt;p&gt;　　因此建议，大家在做网贷理财的平台选择时，不妨对号入坐进行排除，坚守不是纯信息中介性质的平台坚决不碰。可以肯定，在国内专业合规，且广受青睐的网贷平台在信息中介的功能定位上都是很清晰到位的。&lt;/p&gt;\n&lt;p&gt;　　第二看，担保增信。有没有向出借人提供担保或者承诺保本保息高收益。&lt;/p&gt;\n&lt;p&gt;　　看点解析：&lt;/p&gt;\n&lt;p&gt;　　要求网贷平台不得向出借人提供担保或者承诺保本保息这一规定，在去年底发布的网贷监管的细则性文件《网络借贷信息中介机构业务活动管理暂行办法(征求意见稿)》中，重申了此前由监管部门提出的网贷红线，即不得提供资金担保、设立资金池、非法集资，而且不承担借贷违约风险。文中还表示，不得向出借人提供担保或者保本保息。&lt;/p&gt;\n&lt;p&gt;　　可见，大凡承诺平台可以为投资人提供担保，并承诺100%保本保息，虽然看上去似乎让人感觉心里安全，实则一点都不安全，首先平台是否是真的有实力暂且不提，至少它已经在合规监管的道路上走偏了。像这类已经与监管政策纲领背道而驰，并不思整改的平台，自然也是不建议投资人选择的。&lt;/p&gt;\n&lt;p&gt;　　第三看，资金流向。有没有点对点的资金进入网贷平台账户，有没有接受、归集出借人资金形成资金池。&lt;/p&gt;\n&lt;p&gt;　　看点解析：&lt;/p&gt;\n&lt;p&gt;　　对于平台的资金流向是否合乎监管要求，是否不存在资金池情况，如果要甄别清楚，主要看平台是否实现了第三方资金存管，或者银行资金存管。&lt;/p&gt;\n&lt;p&gt;　　关于2015年年底，银监会在下发的《网络借贷信息中介机构业务活动管理暂行办法(征求意见稿)》中，就已明确规定，网贷平台需要通过与银行存管合作来实现投资者资金的运转，给出的过渡期限是18个月。&lt;/p&gt;\n&lt;p&gt;　　目前与网贷平台签订资金存管的银行中，华兴银行、恒丰银行、民生银行排名前三，分别为34家、21家、18家，另外江西银行、徽商银行、中信银行、浙商银行等也签约了不同数量的平台。在资金存管上已经和银行达成合作的平台，若做投资理财，安全性就相对可靠。&lt;/p&gt;\n&lt;p&gt;　　第四看，营销方式。有没有在平台以外向社会不特定对象进行公开宣传，尤其是标榜高额回报的公开推介宣传。&lt;/p&gt;\n&lt;p&gt;　　看点解析：&lt;/p&gt;\n&lt;p&gt;　　平台运营的模式特征，从贷款人到投资人业务基本都是通过线上完成。这在《网络借贷信息中介机构业务活动管理暂行办法(征求意见稿)》第三章第十六条已经规定的很清楚，除信用信息采集、核实、贷后跟踪、抵质押管理等风险管理及网络借贷有关监管规定明确的部分必要经营环节外，网贷平台不得在互联网、固定电话、移动电话及其他电子渠道以外的物理场所开展业务。这意味着，网贷平台，不得在线下门店开展推介、销售业务。&lt;/p&gt;\n&lt;p&gt;　　显然，对于那些有开展线下门店招揽网贷业务的平台，显然不是真的网贷平台，选择它们无疑会存在很大风险。因而，投资人在做平台选择时，一定要注意规避。虽然平台发展规模以及公司办公地点看上去俨然一副系出名门的样子，实则，本质的网贷业务并不合规，因为在它们共同的特征里，都有从网贷里不被允许的线下门店揽客生意。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(144, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499931153, 1499931153, 1499931141, 0, 'P2P网贷理财的收益为什么比银行高那么多？', '', '', '', '\n&lt;p&gt;　　很多人都不明白为什么银行理财收益仅有4%-6%，而很多P2P却能达到10%以上?这导致很多奔着银行安全去的理财人都想转投P2P，但又觉得收益比银行高这么多有点难以理解进而有点担心：都是做理财的，为什么差距就这么大呢？&lt;/p&gt;\n&lt;p&gt;　　一、因为“玩法”不一样&lt;/p&gt;\n&lt;p&gt;　　银行理财是这么玩的：&lt;/p&gt;\n&lt;p&gt;　　投资人购买理财产品本质上就是放贷，但是简单的借贷关系中由于加入了银行及影子银行（非标资产的通道），借款人实际付出的高利息，被中间的金融机构以手续费的形式层层剥夺，到投资者一端就所剩无几了。&lt;/p&gt;\n&lt;p&gt;　　而P2P是这么玩的：&lt;/p&gt;\n&lt;p&gt;　　P2P是建立在互联网基础上的金融，投资人和借款人可以直接实现资金的对接，借款人愿意支付的高利息可以直接转化为投资人的高收益，而P2P在其中只是担当了信息传递者的角色，收取少量的居间费用。&lt;/p&gt;\n&lt;p&gt;　　现在你应该豁然开朗了吧？所谓雁过拔毛，中间经手的环节越多，收益当然就会越少。其实，买银行理财就相当于去商场购物，而投资P2P就相当于逛天猫，少了许多中间环节，自然能获得更多实惠。&lt;/p&gt;\n&lt;p&gt;　　二、因为“门槛”不一样&lt;/p&gt;\n&lt;p&gt;　　银行的借贷门槛高是出了名了的，撇开理财端不说，单提借款端。首先一部分“嗷嗷待哺”的个人和小微企业直接被拒之门外，这叫“银行不是慈善家”；其次因为银行贷款需要经过诸多的抵押以及验证程序，流程冗长，于是又有一部分主动选择了放弃，这叫“远水解不了近渴”；再次即使通过了条条关卡，最终贷款的金额也非常有限，这叫“杯水车薪”。　　而P2P门槛低，可以为更多的个人或小微企业“雪中送炭”；操作流程简洁，从而节省了时间成本，这点对于某些小微企业或个人来说，有时候就是“跳楼”与“不跳楼”的差别。为了融资，为了有更好的效率，从而让小微企业或个人愿意支付更高的利息成本来获得贷款。　　简单来讲，不管门槛也好，效率也好，最终P2P的收益率是由市场决定的。好比当你正在厕所拉屎却发现没有手纸，这时有人跟你说“十块钱一张”，也许，你真的会买！&lt;/p&gt;\n&lt;p&gt;　　三、因为“成本”不一样&lt;/p&gt;\n&lt;p&gt;　　在传统银行里，要完成“借贷”这个流程，必须面临高额的“运行”成本。这点从流程繁琐和时间漫长就可以看出来，不是他们不想快，而是快不了！就好像一个奔跑的胖子想要改变方向，肯定要耗费更多的体力一样。另外，银行理财产品的收益类型、资产投向、币种、发行期限、银行考核、市场利率等因素都会影响银行发行理财产品的收益率。这就是“有钱人的烦恼”！而P2P平台是借款人与投资者之间的交易，没有那么多弯弯绕绕，这不仅提高了运营效率，也必然大大降低了运营成本。&lt;/p&gt;\n&lt;p&gt;　　随着运营成本的降低，明智的P2P平台，一方面可以讨借款方的欢心，降低利息以获取优质项目；同时，也可以提高理财收益，让利投资人，从而为平台发展获取更持久的动力。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(145, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499931176, 1499931176, 1499931164, 0, 'P2P理财10大常识 投资还需最强大脑', '', '', '', '\n&lt;p&gt;　　为什么要投资?当然是为了得到更多资本!固然，对于投资者来说，较高的收益率是P2P贷款平台最诱人的地方。2014年，P2P平台的综合收益率为17.86%，这无疑远高于银行存款利率，使得投资人将此作为闲置资金增值的渠道。&lt;/p&gt;\n&lt;p&gt;　　但伴随着高收益，P2P平台的风险性也接连爆出。2014年1月至7月，每月平均就有9.3家问题平台出现，进入8月后，问题平台数量显著增多。而关于P2P理财内容五花八门，免不得会有头晕眼花的感觉，看来想让钱生钱也并非易事，投资还需要超强的大脑来梳理投资逻辑，理清投资思路。&lt;/p&gt;\n&lt;p&gt;　　下面小编烧脑理清了网贷投资的些许思路，为诸位投资人尽可能降低P2P理财风险略尽绵力。&lt;/p&gt;\n&lt;p&gt;　　NO1: 安全放第一 收益摆其次&lt;/p&gt;\n&lt;p&gt;　　许多刚刚接触P2P行业的人，只看到收益，却很难辨别风险，要知道追求高收益的前提是先保本。对于新人最好参照知名机构的网贷评级选择投资平台，然后再选择收益较高的平台投资。另外最好在评级中选择2-4个平台分散投资。&lt;/p&gt;\n&lt;p&gt;　　NO2: 学习金融知识 打好理财基础&lt;/p&gt;\n&lt;p&gt;　　究竟投资哪个平台才最靠谱呢?对于金融盲来说，多多关注金融行业的知识，多多学习理财技巧，是必须要做的事情。如果对网贷平台不了解，可以通过各种渠道深入了解其背景信息，或者浏览行业网站如网贷之家等行业网站，还可以加入以理财知识为主题的讨论群。&lt;/p&gt;\n&lt;p&gt;　　NO3: 精挑细选平台 投资分散勿集中&lt;/p&gt;\n&lt;p&gt;　　准备投资前，不妨先对P2P平台进行初步的筛选，再做进一步的精选，挑选出最安全、收益好且有保障的P2P平台，最好选择各个领域的龙头企业，较知名的有信用贷款平台人人贷，房产抵押平台国诚金融，车辆抵押平台微贷网，担保合作机构有利网，再生金属质押平台鑫循环。&lt;/p&gt;\n&lt;p&gt;　　NO4: 收益太高太低都不好 适中才是最好的&lt;/p&gt;\n&lt;p&gt;　　P2P网贷收益并不是最高才是最好的，倘若平台年化率超过20%，那么，你就该多打几个问号了。当然，年化率也不宜太低，如果平台年化率低于10%，也是不宜进行投资的。目前行业收益率通常在12%到18%，保证了不同客户群体收益的稳定性。&lt;/p&gt;\n&lt;p&gt;　　NO5: 网站美观 体验度好&lt;/p&gt;\n&lt;p&gt;　　用户体验度的好坏，网站设计是否美观，这些指标可以从一个侧面衡量网站架构是否完善，功能设计是否人性化，公司管理是否规范化，这些信息也可以做为判断网贷平台好坏与否的指标。&lt;/p&gt;\n&lt;p&gt;　　NO6: 小额先试水 缓步且慢行&lt;/p&gt;\n&lt;p&gt;　　投资P2P的理念养成，以及方法构建，短期内是很难形成的，需要投资者通过不断的实践，并与理论学习相结合，然后在不断的尝试和交流学习中逐步养成正确的投资理念。&lt;/p&gt;\n&lt;p&gt;　　NO7: 专业风控是刚需&lt;/p&gt;\n&lt;p&gt;　　在国内征信体系尚不完善的环境下，P2P平台须对借款人进行初审、面审、考察等一系列的贷前审核，通过审核的专业度可以判断风控团队的专业性。一个正规的P2P平台应该通过现场、非现场等方式了解借款人的基本状况、信用状况、收入状况、贷款用途等，确保第一还款来源。&lt;/p&gt;\n&lt;p&gt;　　NO8: 关注平台动态 掌握行业信息&lt;/p&gt;\n&lt;p&gt;　　如果你已经选定了目标P2P平台，那么平常应该多多关注平台的新闻动态，同时可以在搜索引擎、门户网站等多个渠道中搜集与平台相关的信息。&lt;/p&gt;\n&lt;p&gt;　　NO9: 平台的借款人须小额分散&lt;/p&gt;\n&lt;p&gt;　　从某种意义上说，网贷平台如能做到每笔借款都是小额的、分散的，那么就能在一定程度上防止因某一个借款人的逾期、坏账而导致资金链的断裂。&lt;/p&gt;\n&lt;p&gt;　　NO10: 实地细考察 看清真面目&lt;/p&gt;\n&lt;p&gt;　　对于投资新人而言，可以找几个同城又有P2P考察经验的伙伴到公司进行实地考察，这样可以深入地了解平台运营团队的精神风貌、管理团队的专业水平、借款业务资料是否齐备等。另外要参加投资人见面会，平台最好有投资人监督委员会机制，新人一方面可以搭便车，让老人在前面核查公司运营细节，另一方面可以和很多资深投资人学习投资经验。一个良好的投资氛围非常重要。&lt;/p&gt;\n&lt;p&gt;　　不明白就去问，要对钱袋负责任&lt;/p&gt;\n&lt;p&gt;　　另外建议多去沟通客服，客服的表现和解释有时比公司负责人更能体现出平台情况，合格平台的客服必然对平台的状况和数据有清晰的认识，不要觉得不方便，有问题有疑惑就打电话询问，钱在里边，我们必须要对它负责任。&lt;/p&gt;\n&lt;p&gt;　　一个不安全的平台，就算刻意去营造正规的投资环境，必然会在某些方面留下蛛丝马迹，若与客服沟通仍无法得到合理解释或者牵强易识破，这时投资人就必须要谨慎再谨慎了，根据对平台的评测情况选择相应的投资。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(146, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499931211, 1499931211, 1499931199, 0, 'P2P线上理财发展现状', '', '', '', '\n&lt;p&gt;　　P2P平台在经过了前两年大幅增长后，各地区近期却迎来了清理整顿阶段，不合规的平台加速离场。整个行业面临洗牌，今年上半年P2P网贷良性运转的平台数量已呈阶梯式下降，与以往“卷钱跑路”相比，清盘停业的良性退出呈主旋律。业内人士表明，P2P从此将告别鱼龙混杂，良莠不济的局面。&lt;/p&gt;\n&lt;p&gt;　　与此同时，P2P作为一个新兴行业，自一开始便饱受争议，然而现阶段不断增长的数据却在告诉我们，以P2P为首的中国P2P正处在蓬勃发展的时代!&lt;/p&gt;\n&lt;p&gt;　　权威平台联合发布的《中国P2P网贷行业2016年5月月报》显示，2016年5月，P2P网贷行业实现了1480.17亿元的整体成交量，较上月环比上升了3.44%，是2015年5月成交量的2.43倍。单月成交量再接再厉刷新了历史新高。随着5月的结束，P2P网贷行业历史累计成交量也成功实现了第2个万亿元，达到了20361.35亿元。此时，距离2015年10月P2P网贷行业实现个万亿元，仅仅过去了7个月时间。&lt;/p&gt;\n&lt;p&gt;　　事实上，受互联网理财时代的影响，民间理财需求日益增加，我国第三方理财机构也顺势蓬勃发展。但作为一个新兴的业态，基于P2P网贷平台因低门槛造成的风险性，央行部委联合发布《关于促进P2P健康发展的指导意见》，明确要求P2P等P2P机构应选择银行建立客户资金第三方存管制度。于是第三方支付机构纷纷与银行开展合作，越来越多的平台转向资金存管模式，共同建立P2P资金存管的新生态圈。&lt;/p&gt;\n&lt;p&gt;　　选择一个可靠的P2P理财平台对于投资者来说是至关重要的，因为它会影响你最终的收益情况。但近几年来，国内的P2P网贷平台发展迅速，倒闭的也很迅速，其中的很大一个原因是风控措施的不完善。随着国家监管制度的密集出台与不断完善，一大批不合规定、跟不上制度的P2P理财平台被淘汰出去，P2P理财市场开始走向规范化，理财产品的年化利率也回归理性。这次国家对P2P的整治，其实是代表国家对P2P行业未来发展的认可，也是希望通过整治后能让投资者深刻了解P2P理财，不要盲目跟随，必须理性分析产品后再进行投资。在选择时不仅要要求P2P理财平台信息透明化，更需要具有完善、严格的风控体系，以此保障资金的安全。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}');
INSERT INTO `jr_portal_post` (`id`, `parent_id`, `post_type`, `post_format`, `user_id`, `post_status`, `comment_status`, `is_top`, `recommended`, `post_hits`, `post_like`, `comment_count`, `create_time`, `update_time`, `published_time`, `delete_time`, `post_title`, `post_keywords`, `post_excerpt`, `post_source`, `post_content`, `post_content_filtered`, `more`) VALUES
(147, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499931243, 1499931243, 1499931222, 0, 'P2P网贷返利的正确理财攻略', '', '', '', '\n&lt;p&gt;　　随着中国经济发展，时代进步，现在国内已经进入全民理财时代。你不理财，财不理你。&lt;/p&gt;\n&lt;p&gt;　　传统的投资方式有很多，例如，炒股，黄金，房地产，基金、信托、艺术品投资等，但这些却不是普通人玩儿的起的。不是人人都敢玩股票的，而且敢玩股票的一般都只有10%的人在赚钱，可能你侥幸的认为自己就是那个幸运儿，90%的情况下不是你，这个时候中国还有什么可以投资的?存银行定期?利率还赶不上通货膨胀。买基金？大部分要求5-50万起购买，年化利率也只有5%-8%，还不保证收益，经常浮动。信托更是要求100万起，这样的市场让你只能把钱存银行。炒房？那你得先有资金买房。&lt;/p&gt;\n&lt;p&gt;　　但如今，理财已经不是有钱人的投资方式了。打工族们也渐渐加入投资的行列。月入8000已不是水中月，境中花。随着互联网的快速发展，传统投资项目渐渐被互联网理财投资所代替，近两年来，p2p网贷模式已经火爆金融圈，一时间兴起许多p2p网贷平台，随着国家出台相关政策，网贷平台渐渐趋于饱和。而网贷返利平台的兴起，又将掀起一阵金融风。&lt;/p&gt;\n&lt;p&gt;　　什么叫“返利”，对于有过网购经验的人来说必然不陌生，而“网贷返利”也是借鉴了电商的模式，目前网贷返利平台有很多，做好的也有，不好的也比比皆是，而掘金时代作为国内领先的互联网金融返利导购平台，在业界有着良好的口碑。&lt;/p&gt;\n&lt;p&gt;　　第三方网贷返利有多种好处，以掘金时代为例&lt;/p&gt;\n&lt;p&gt;　　1、作为第三方网贷返利型平台，在一定程度上起到把关和监管的作用，在降低投资者风险上作用巨大。因为，在平台入驻之初，第三方网贷返利平台就会对平台进行严格的考核、审查等，存在风险隐患的平台根本无法第三方网贷返利平台的“安检”考核。&lt;/p&gt;\n&lt;p&gt;　　2、投入资金可大可小，无论打工族或者大投资者都可选择合适的标的。&lt;/p&gt;\n&lt;p&gt;　　3、双重收益。选择掘金时代进行投资，相较于直接投资p2p网贷平台更具收益上的优势。网贷返利平台会将入驻平台缴纳的合作佣金，以返利加息的模式返还给投资者。这样一来，投资者在相同的时间成本和资金成本上，所获得的投资理财收益将更高。在享受p2p平台原有收益的基础上，增加了返利加息的收益。并且，有些实力雄厚的网贷返利平台，返利加息的幅度甚至比p2p网贷平台的投资收益还要高&lt;/p&gt;\n&lt;p&gt;　　4、掘金时代平台除了返利加息回馈投资者以外，还会不定期的举办一些让利活动。&lt;/p&gt;\n&lt;p&gt;　　5、发展下线。如果你也觉得现在是一个理财专家，你还可以分享投资链接给朋友，他们在你的推荐下去投资后，你同样可以获得等同于你自己投资获得佣金奖励。&lt;/p&gt;\n&lt;p&gt;　　因此可以发现，月入8000是不难的。当然，是投资就会存在风险，能赚钱的人用远是理性的人。作为第三方网贷返利平台能帮助投资者将风险降到较低，所以投资还需谨慎。但相比其他投资，类似于掘金时代这类第三方网贷返利平台终究是最能盈利的平台，更适合普通人的平台。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(148, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1499931316, 1503372330, 1499931240, 0, '银行理财战打响：最高收益率超6% 晚间限时抢', '', '', '', '\n&lt;p&gt;　　近段时间，不少银行理财产品收益率纷纷上涨，各银行之间打响“理财收益战”。&lt;/p&gt;\n&lt;p&gt;　　据了解，银行理财收益率超过5%已不算罕见，有股份制银行在6月1日新推出的理财产品预期年化收益率最高已达6.05%。&lt;/p&gt;\n&lt;p&gt;　　上海一家建设银行网点内，一位理财经理对前来咨询理财业务的客户表示，最近理财产品卖得比较好，最好通过手机银行等移动客户端操作购买，“一般都会秒杀掉的，要靠抢。”不过，这些需要靠抢的产品，年化收益率最高也没有超过4.65%。&lt;/p&gt;\n&lt;p&gt;　　从走访中发现，工商银行的理财产品收益率与建设银行差别不大，一般在4.5%左右。而相比这些国有大行，一些股份制银行和城商行的理财产品收益率更高，同时涨得也更快。&lt;/p&gt;\n&lt;p&gt;　　收益率继续上涨，短期理财收益率涨速更快&lt;/p&gt;\n&lt;p&gt;　　光大银行一位理财经理告诉，近两个月，理财产品收益率确实在持续上涨，但在向客户推荐产品时，并不建议将理财资金全部投向较长期限的产品。&lt;/p&gt;\n&lt;p&gt;　　在上海一家浦发银行网点，其现在主力推广的都是银行自有理财产品。这些产品的认购起点金额均为5万元，年化收益率从3.5%到4.95%不等。不过，年化收益率4.95%的是一款新客专享产品。&lt;/p&gt;\n&lt;p&gt;　　从张贴在这家浦发银行门口的公告栏上可以看出，理财产品的“预计年化收益率”一栏不断被新的贴纸覆盖，而数字也是越来越大。&lt;/p&gt;\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img width=&quot;513&quot; height=&quot;689&quot; title=&quot;image.png&quot; style=&quot;width: 513px; height: 689px;&quot; alt=&quot;image.png&quot; src=&quot;20170713/a016eca0112cd38fc9af34fa486262a2.png&quot;&gt;&lt;/p&gt;\n&lt;p&gt;　　目前这款理财产品四个月（123天）期限和一年（389天）期限的预期收益率均为4.75%。&lt;/p&gt;\n&lt;p&gt;　　据该行一位理财经理透露，有一款收益率较高的在售产品，“5天后，预期收益率四个月（123天）期限的会上调到4.85%，一年（389天）的变成4.8%。”而目前，这款产品四个月（123天）期限和一年（389天）期限的预期收益率均为4.75%。换而言之，这款产品在5天后将呈现“倒挂“现象，投资期限较短反而收益率更高。&lt;/p&gt;\n&lt;p&gt;　　除此之外，从南京银行6月2日发售的多款理财产品来看，多款91天和35天的非保本产品预期收益率均达到了5%，最高收益率达到了5.20%。一些投资期限较长的产品收益率反而不及这部分短期产品。&lt;/p&gt;\n&lt;p&gt;　　交通银行首席经济学家连平在接受澎湃新闻采访时表示，这种“倒挂”现象并不少见，但又不能说是正常现象，主要是短期流动性偏紧，而中期又不确定等因素造成的。“今年以来存款增速放缓，目前又临近半年末，去杠杆背景下考核因素影响增强，因而短期收益率可能还会有所上升。”&lt;/p&gt;\n&lt;p&gt;　　“花式”理财业务频出，高收益产品限时限购&lt;/p&gt;\n&lt;p&gt;　　为了吸引更多的客户，银行在提高理财产品收益率的同时，也推出了不少“花式”理财产品。&lt;/p&gt;\n&lt;p&gt;　　各大银行都有新客专享的理财产品，比同类型产品要高出20至45个BP。不过新客专享产品都会有相应的购买限制。以中信银行两款“乐盈稳健”系列的“新客户专属”产品为例，期限都为92天，预期年化收益为4.9%和5.0%，分别对应5万元和50万元的认购起点金额。&lt;/p&gt;\n&lt;p&gt;　　据前述浦发银行理财经理介绍，一款在售的新客专享理财产品，“收益率马上要调整，将会超过5%”。不过，虽然该产品认购起点金额较低，仅为5万元，但其有30万元的人均购买上限。&lt;/p&gt;\n&lt;p&gt;　　专属类产品并非只有新客一种，大到各类节假日、小到某天的特定时间段，都可以被银行拿来包装成定制理财产品。&lt;/p&gt;\n&lt;p&gt;　　六一儿童节期间，光大银行和民生银行也推出了许多高收益理财产品。光大银行的儿童节理财产品预期年化收益率为4.75%，民生银行则打出了“喜‘迎’六一，安‘享’未来”的口号。&lt;/p&gt;\n&lt;p&gt;　　6月2日晚间，有华夏银行相关人士在朋友圈晒出一款“手机夜市专属”产品。该产品的发售日期为6月6日和6月7日，认购起点金额为5万元，限购300万元。这款产品分90天和182天期限，预期最高年化收益率为5.0%和5.1%。不过，客户只能在每晚20点至22点进行购买。&lt;/p&gt;\n&lt;p&gt;　　公开数据显示，“五一劳动节”和“母亲节”期间与之关联的理财产品平均收益为4.64%、4.58%，在当时也都大幅领先于全市场产品的平均收益。&lt;/p&gt;\n&lt;p&gt;　　银行体系短期流动性紧缩是必然现象&lt;/p&gt;\n&lt;p&gt;　　6月已至，央行二季度MPA（宏观审慎评估）大考临近，强监管、金融去杠杆等叠加效应使得整个市场呈现资金紧张的现象。银行理财产品的收益飞涨也进一步体现了银行对于资金的渴求。&lt;/p&gt;\n&lt;p&gt;　　自2017年以来，隔夜Shibor（上海银行间同业拆放利率）报价从2%左右上升至2.79%，7天Shibor报价从2.4%左右升至2.88%，一年期Shibor报价从3.4%左右升至4.38%左右，Shibor的全线走高态势凸显了当前银行体系流动性的进一步紧缩。&lt;/p&gt;\n&lt;p&gt;　　央行曾在5月25日表示，已关注到市场对半年末资金面存在担忧情绪，考虑到6月份影响流动性的因素较多，拟在6月上旬开展MLF操作，并择机启动28天逆回购操作，搭配好跨季资金供给，保持流动性基本稳定，稳定市场预期。&lt;/p&gt;\n&lt;p&gt;　　市场普遍认为，银行理财收益走势并不会因6月MPA年中考核临近而出现大幅调整。&lt;/p&gt;\n&lt;p&gt;　　2017年3月以来，银监会连续下发8份文件，要求开展“三违反”“三套利”“四不当”专项治理工作。银监会一季度经济金融形势分析会议则再次强调，银行业重点防范信用风险、流动性风险、规范交叉金融业务等重点领域风险，并要求加大治理金融乱象，做到全面排查，列出清单，逐一整改。&lt;/p&gt;\n&lt;p&gt;　　中国社科院金融研究所银行业研究室主任曾刚向澎湃新闻指出，收紧流动性本就是去杠杆的必然条件，去杠杆的核心就是去掉多余的流动性，所以这个过程中整个金融体系包括银行体系流动性收紧以及利率暂时上行是必然的现象。&lt;/p&gt;\n&lt;p&gt;　　从中长期流动性来看，曾刚认为这并不值得担忧。“随着这个流动性收紧，利率上行，过去一段时间银行多加出来的部分杠杆的存量到期之后，流动性肯定会降下来。”曾刚表示，中期利率适度下行可能是一个比较正常的结局，但是在目前的窗口时期，利率上行、流动性收紧是很正常的。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(149, 0, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 1499931363, 1503372361, 1499931300, 0, '企业资金有困难 可申请融资担保贷款', '', '', '', '\n&lt;p&gt;　　近日，《巴中市市级中小企业融资担保基金管理办法》经三届市政府第82次常务会议讨论通过，并正式实施。我市市级融资担保基金首期到位3000万元，专门给企业提供担保，由担保基金担保的企业一年内最高可贷款2000万元。&lt;/p&gt;\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img title=&quot;image.png&quot; alt=&quot;image.png&quot; src=&quot;20170713/8cdf0dbc2ee12870e9be4e8ac346567c.png&quot;&gt;&lt;/p&gt;\n&lt;p&gt;　　首期到位的3000万元市级融资担保基金由市级财政筹集，合作融资担保机构按照政府出资额的一定比例配套安排补充基金，共同存放于合作银行托管账户，实行封闭运行。各县(区)人民政府可根据辖区企业发展需要和财力状况，适度安排融资担保基金，参与市级融资担保基金的运作，按出资比例共担风险，并按与合作银行约定的放大倍数对辖区中小企业融资贷款给予倾斜支持。&lt;/p&gt;\n&lt;p&gt;　　凡在我市直属、巴中经济开发区、巴州区、恩阳区辖区范围内依法设立的、符合工信部认定标准的中、小型工业生产企业和中型以上重点商贸流通企业，以及平昌县、通江县、南江县的重点工业生产企业均可使用融资担保基金申请贷款。融资担保基金为中小企业融资提供担保，申请基金担保的企业，必须向合作融资担保机构提供相应的反担保措施。&lt;/p&gt;\n&lt;p&gt;　　融资担保基金提供的贷款担保额度，同一企业同一年度内累计不得超过2000万元，贷款期限不超过一年。贷款利率按国家的优惠利率政策执行。合作融资担保机构原则上按不高于担保额度的3%向借款人收取担保费。借款人按时结付利息，到期还清借款本息，无不良记录的，可按应收担保费的80%计收担保费用。连续两次以上申请贷款担保且按时还清本息的优良客户，可按应收担保费的60%计收担保费。对使用人民银行支持小微企业再贷款的企业，担保费可按担保额的2%收取。&lt;/p&gt;\n&lt;p&gt;　　县(区)人民政府、巴中经济开发区管委会负责组织审查辖区企业贷款担保申请材料并签署审查意见，对推荐企业的诚信和申请材料的真实性负责，督促贷款企业按期偿还担保贷款本息。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(150, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499931417, 1499931417, 1499931377, 0, '有融资需求，首选那类贷款方式？', '', '', '', '\n&lt;p&gt;　　很多时候，当我们遇到困难，&lt;/p&gt;\n&lt;p&gt;　　急需要资金时。&lt;/p&gt;\n&lt;p&gt;　　我们第一反应是“借”&lt;/p&gt;\n&lt;p&gt;　　而不是贷款，&lt;/p&gt;\n&lt;p&gt;　　为什么会这样？&lt;/p&gt;\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;img src=&quot;20170713/06446a88bbef8e84812305efa80b0d15.png&quot; title=&quot;image.png&quot; alt=&quot;image.png&quot;&gt;&lt;/p&gt;\n&lt;p&gt;　　融资&lt;/p&gt;\n&lt;p&gt;　　是因为利息高，手续繁琐，贷款条件不达标？&lt;/p&gt;\n&lt;p&gt;　　很多时候“借”不一定是好的选择，&lt;/p&gt;\n&lt;p&gt;　　为什么？&lt;/p&gt;\n&lt;p&gt;　　不仿接下看：让你更了解贷款&lt;/p&gt;\n&lt;p&gt;　　贷借方式分为四种:&lt;/p&gt;\n&lt;p&gt;　　第一种就是抵押，&lt;/p&gt;\n&lt;p&gt;　　第二种就是担保，&lt;/p&gt;\n&lt;p&gt;　　第三种就是民间融资&lt;/p&gt;\n&lt;p&gt;　　第四种就是P2P小额信贷。&lt;/p&gt;\n&lt;p&gt;　　1.抵押借贷：&lt;/p&gt;\n&lt;p&gt;　　有房子或者资产，以抵押给大兴金融的形式获取贷款。&lt;/p&gt;\n&lt;p&gt;　　特点：准入门槛高，利息低（七八厘），手续简单，&lt;/p&gt;\n&lt;p&gt;　　额度高，放款时效快。&lt;/p&gt;\n&lt;p&gt;　　2.担保借贷：&lt;/p&gt;\n&lt;p&gt;　　法人代表，有实体企业或工厂，&lt;/p&gt;\n&lt;p&gt;　　以担保或者是三方联保的形式从银大兴金融获取贷款。&lt;/p&gt;\n&lt;p&gt;　　特点：准入门槛高，利息低（一分左右）手续复杂，&lt;/p&gt;\n&lt;p&gt;　　额度高，放款时效长。&lt;/p&gt;\n&lt;p&gt;　　3.民间借贷：&lt;/p&gt;\n&lt;p&gt;　　任何人都可以借，有抵押物或担保人，&lt;/p&gt;\n&lt;p&gt;　　从私人手里获取贷款。&lt;/p&gt;\n&lt;p&gt;　　特点：门槛低，利息高（3分-2毛）手续复杂，&lt;/p&gt;\n&lt;p&gt;　　额度不等，放款时效快。&lt;/p&gt;\n&lt;p&gt;　　4.小额信用借贷：&lt;/p&gt;\n&lt;p&gt;　　任何人都可以借&lt;/p&gt;\n&lt;p&gt;　　免抵押免担保，&lt;/p&gt;\n&lt;p&gt;　　以信用为基础，&lt;/p&gt;\n&lt;p&gt;　　以收入为评估，获取贷款。&lt;/p&gt;\n&lt;p&gt;　　特点：门槛低，利息中等（2-3分）手续简单，&lt;/p&gt;\n&lt;p&gt;　　额度最高50万，放款时效快。&lt;/p&gt;\n&lt;p&gt;　　从四种方式借贷方式中&lt;/p&gt;\n&lt;p&gt;　　信用借贷方式的条件是最低的：免抵押 免担保，&lt;/p&gt;\n&lt;p&gt;　　放款和民间借贷的时效差不多。&lt;/p&gt;\n&lt;p&gt;　　抵押类型的利息是最低的，所以需要资金额度高，&lt;/p&gt;\n&lt;p&gt;　　不防考虑抵押贷款。&lt;/p&gt;\n&lt;p&gt;　　要是不符合抵押贷，不需要着急，保持稳定&lt;/p&gt;\n&lt;p&gt;　　从信用贷出发，解决融资需求，精选适合您的融资方案。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(151, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499931484, 1499931484, 1499931448, 0, 'P2P步入细分市场，小额信用贷款是新机遇', '', '', '', '\n&lt;p&gt;　　P2P网贷行业经过几年的大浪淘沙，市场逐渐步入细分化。从最开始某些传统金融机构的衍生金融服务，如传统的抵押、担保、小贷公司项目，再到现在“小而美”的小额信贷和融资服务市场，整个行业从粗放形发展走向后续的细分化和多样化。&lt;/p&gt;\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;img src=&quot;20170713/634b2791108105fd19935766a9e90d05.png&quot; title=&quot;image.png&quot; alt=&quot;image.png&quot;&gt;&lt;/p&gt;\n&lt;p&gt;　　如果按照行业和人群的特定需求作为细分，这部分市场具有较大的市场潜力，比如80、90后等年轻并且收入水平稳定，对网络接受度高，却又经常有着临时性用钱需求的群体，P2P行业对于这个群体的诉求存在较大的服务缺口。&lt;/p&gt;\n&lt;p&gt;　　从P2P的本质含义而言，以细分客户金融服务需求为切入点，结合数据化的信用环境，能够更好地诠释高效便捷安全的P2P服务理念，有助于普惠金融，对于整个P2P行业的健康发展也有着推动作用。&lt;/p&gt;\n&lt;p&gt;　　进入细分市场后，在百花齐放的P2P行业中，如何做出平台的差异化特色?对于乐投贷“优职贷”而言，具有免抵押、额度高、审批快、利率低的特点。可以依据申请人所积累的信用和情况进行快速的审批，额度一般3万以上，最高可达30万，以满足工薪白领临时性以及短期的周转需要。&lt;/p&gt;\n&lt;p&gt;　　随着央行牵头出台《互联网金融指导意见》，网络借贷作为互联网金融的业态之一受官方认可，行业走向的清晰化，会有更多的细分领域的P2P网贷平台脱颖而出，立足于特定人群和特定需求。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(152, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499931509, 1499931509, 1499931497, 0, 'P2P平台房屋抵押贷款风控注意要点', '', '', '', '\n&lt;p&gt;　　目前我国的P2P网贷业务可谓是五花八门，多式多样，其种类居于世界之首。对于中国这样一个以房地产为支柱产业的国家来说，房屋抵押贷款业务也必将不会在P2P网贷行业中缺席。&lt;/p&gt;\n&lt;p&gt;　　P2P平台的房屋抵押贷款业务是指：P2P平台的借款人以自有房屋作为抵押物向出借人提供担保并在平台上发布借款需求的一种融资方式。&lt;/p&gt;\n&lt;p&gt;　　以房屋作为抵押虽然会因中国房地产产业的特殊性给P2P平台的出借人一剂强心针，但是这并不代表P2P平台的房屋抵押业务就一定是优质的融资业务。因为其特殊，所以相应也伴随着不少的“陷阱”，其常常会让P2P平台也看不清其真实风险。本文就将如何甄别P2P平台房屋抵押借款业务中的风险谈谈从实践中得来的经验。&lt;/p&gt;\n&lt;p&gt;　　一、抵押房屋有司法和行政限制的具有高风险&lt;/p&gt;\n&lt;p&gt;　　在P2P平台的房屋抵押贷款业务当中，如果当借款人不能履行还款义务的时候，平台有将借款人抵押的房屋进行处理并给予出借人相应的抵押偿付款的权利。不过，在法律上，如果当房屋先于抵押存在司法或者行政限制的时候，此房屋是不具有被抵押的权利的，与之相对应的是平台就不具备处理这类房屋的权利了。现实生活中，房屋司法限制一般是指房屋所有者因为司法纠纷导致其房屋被司法机关强行封锁；行政限制一般是指房屋为违章建筑、或之前有过交易备案但未撤销等。有司法和行政限制的抵押房屋存在两种风险。第一，当司法机关判决被封锁的房屋用于其他赔偿事项时，P2P平台就自动丧失了其处理权，投资人面临血本无归的风险；第二，即使房屋可解除司法或行政限制，但期限不确定或者可能过长，导致平台不能在适当时间内获得处置权，致其不能按时获得处置金，增加了垫付平台的流动性风险。查看房屋是否存在司法或行政限制的途径是去房屋所在地的房地产交易中心查询。&lt;/p&gt;\n&lt;p&gt;　　二、抵押房屋属性是“划拨”还是“出让”？&lt;/p&gt;\n&lt;p&gt;　　在我国，土地有两种基本的使用权证，一是出让，二是划拨。房产证上属性栏一般有标明是出让还是划拨。以出让方式获得的国有土地使用权是有偿和有时间限制的，土地使用者在设定的权利范围内享有对土地的使用，转让和抵押等民事权利，任何单位和个人不得干预；而以划拨方式取得国有土地使用权的，除了法律的特别规定外，没有使用期限的要求，一般只有国家机关用地，军事用地，城市基础设施建设和公益事业用地等其他用地可以以划拨形式取得，但其转让，出租，和抵押受到法律限制。&lt;/p&gt;\n&lt;p&gt;　　在P2P平台的房屋抵押贷款业务当中，如果借款人可能会进行抵押的房屋属性为划拨的话，那么平台需要考虑其风险。因为其受到法律的制约是不能随意进入抵押和转让市场的。一般居民的商品房若是划拨属性的话，表明其并未交纳土地出让金，而一般来讲土地出让金是一笔大数目，除此之外，还有大量繁杂的法律手续。因此，对于P2P平台来说，划拨类房屋具有极高的风险，一般不建议接受这类房屋的抵押。&lt;/p&gt;\n&lt;p&gt;　　三、抵押房屋尚有贷款未还，贷款属于二次抵押贷款&lt;/p&gt;\n&lt;p&gt;　　在现实生活中，房屋抵押贷款是一种常见的融资方式，也是融资机构乐于接受的抵押贷款种类之一。在P2P平台房屋抵押贷款业务当中，有时会出现抵押房屋存在尚未还清其他贷款的情况，再融资属于二次抵押。由于存在二次抵押，此类贷款的风险明显加大，不过这并不代表这类抵押贷款就完全不能做，在某些情况下其风险是可控的。&lt;/p&gt;\n&lt;p&gt;　　在法律上，二次抵押是合法的。对于P2P平台来讲，为了帮投资人争取最大利益和把关风险，对于二次房屋抵押贷款既要尽量争取也要谨慎查看。二次抵押的风险存在于：当借款人因某种原因不能履行还款义务的时候，处置房屋之后因平台出借人没有优先受偿权而可能得不到或者不能全得到赔偿。举例说明，如果A借款人拿自己房屋做抵押在B小额贷款公司贷款100万，之后又在P2P平台C 进行二次抵押借款30万，当A 因某原因不能还款时，处置完A的房屋后只得到了110万。根据优先受偿条例，B公司获得了100万的赔偿，而C的借款人只有10万的赔偿金。&lt;/p&gt;\n&lt;p&gt;　　为了规避风险，P2P平台在接受二次房屋抵押贷款时，一般需要了解此房屋首次抵押贷款的未还金额，对于存在较大未还金额的二次抵押房屋，在对房屋有准确的估价的基础之上，一般要么减少抵押的成数要么帮借款人偿还首次抵押的未还余额帮助平台借款人成为第一抵押债权人，即优先受偿人。&lt;/p&gt;\n&lt;p&gt;　　四、借款人有且只有一套房，且面积较小&lt;/p&gt;\n&lt;p&gt;　　在P2P平台房屋抵押贷款业务当中，如果当借款人抵押的房屋是借款人唯一的一套房屋，而且面积较小的话，其风险比较大。因为如果借款人因故无法履行还款义务时，即使根据抵押法平台出借人获得抵押房屋的处置权，但是由于借款人及其家人无其他安身之处拒绝搬迁时，就算平台申请法律援助，司法机关也会考虑到具体情况给予借款人及其家人人道主义的关怀，其结果对于平台来说极具道义和法律的考验。&lt;/p&gt;\n&lt;p&gt;　　一方面，平台需要考虑投资人的利益，要尽最大努力为投资人争取到赔偿金；另一方面，在讲究人道主义情怀的商业社会以及平台的社会公众形象，平台不能使用暴力让借款人及其家人流落街头，风餐露宿。因此，P2P平台在接受这类房屋贷款申请时需要考虑其风险并酌情考虑是否放贷。&lt;/p&gt;\n&lt;p&gt;　　五、抵押贷款用途是否合法，抵押物成数不宜超过65%&lt;/p&gt;\n&lt;p&gt;　　P2P平台的房屋抵押贷款业务属于民间借贷范畴，根据民间借贷法规定：只有当借款用途合法时，出借人的权利才会受到法律保障；反之，如果出借人明知借款人的借款用途不合法而出借，则其权益不受法律保护。&lt;/p&gt;\n&lt;p&gt;　　在P2P平台房屋抵押贷款业务当中，平台应该了解到借款人的借款用途并在平台予以公示，同时出借人也有知晓借款用途的权利。当平台与借款人签订借款协议时，协议中应该明晰标明借款人的借款用途，并确认其合法。&lt;/p&gt;\n&lt;p&gt;　　虽然房屋具有较高的保值性，但在一些二三线城市，甚至是一些小城镇，或者是特殊时期，其保值性并不高而且流动性也不强。当P2P平台在办理房屋抵押贷款时，如果给予的贷款成数过高，投资人遭遇损失的风险较大。在借款人不能履行还款义务的时候，虽然平台获得了其房屋的处置权，但是并不能保证处置后的房屋就能够获得足够的赔偿金。房价下降，流动性差，或者处置成本过高都是影响其的因素。因此，P2P平台在办理抵押贷款时控制好贷款成数就显得及其重要，一般来讲贷款成数在房屋市场价格的6.5成比较合适，投资人遭遇损失的风险比较小。&lt;/p&gt;\n&lt;p&gt;　　六、其他风险因素&lt;/p&gt;\n&lt;p&gt;　　在P2P平台房屋抵押贷款业务当中，风险因素远不止上述的五类，诸如房屋产权不明，借款人年纪过大，借款人与用款人不一致陷入三角债，借款人职业特殊等等都是风险因素。&lt;/p&gt;\n&lt;p&gt;　　P2P网贷行业中的房屋抵押贷款业务让从业者是又爱又恨。我国地域差异性大，房屋抵押业务在不同地域呈现多样化的特点，这对于从事房屋抵押贷款业务的P2P平台来讲是极其具有挑战性的。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(153, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499931545, 1499931545, 1499931517, 0, '地方完善小额贷款政策，鼓励中小企业', '', '', '', '\n&lt;p&gt;　　为促进辖区就业和再就业工作，历下区甸柳新村街道从规范小额贷款办理流程、强化跟踪服务等方面着手，为有创业意愿的居民提供服务。截至目前，共办理网贷小额贷款14笔，贷款金额140万，带动就业40人。&lt;/p&gt;\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;img src=&quot;20170713/71f804e999b88c5f959ad9c89374f89e.png&quot; title=&quot;image.png&quot; alt=&quot;image.png&quot;&gt;&lt;/p&gt;\n&lt;p&gt;　　据介绍，甸柳街道为避免出现来访不遇、等待的情况，创新实行“柜员制”、“一窗式”服务模式，对所有业务流程、工作人员行为规范、作风建设、档案管理、对外宣传等制度基础上，在辖区人流密集处，贷款相关政策及办事指南，还可进一步了解创业项目、创业导师、创业场地等信息。此外，在认定申请人资格，摸清其家庭情况、经营状况及担保人担保能力的基础上，甸柳街道加强对贷款人员的跟踪服务，实行专人专项负责制，并定期填写跟踪服务记录表、反馈贷款情况，全程服务帮助商户做强做大。&lt;/p&gt;\n&lt;p&gt;　　石嘴山市就业创业贷款担保中心针对就业压力增大等问题，全面降低放贷门槛，提升放贷标准，“贷”出了大众创业新“钱”景。今年1月至5月，该中心共为1228名创业者和农村妇女发放小额担保贷款8642万元，带动就业4708人。&lt;/p&gt;\n&lt;p&gt;　　据介绍，石嘴山将针对不同群体创业人员的个人网贷最高额度由5万元、8万元、10万元不等，统一调整为10万元；为吸引更多人员在当地投资创业，在全区率先取消户籍限制，凡在石嘴山市创业并办理了就业失业登记证的人员，均可享受小额担保贷款扶持；转移放贷重心，将贷款扶持重点放在资金不足的小企业、组织起来就业和合伙经营小企业上，加大贷款扶持力度。对小企业按照带动就业的人数，给予最高50万元的贷款扶持，对组织起来就业和合伙经营的，按照其组织就业人数和合伙经营人数，给予人均5万元至10万元贷款扶持。&lt;/p&gt;\n&lt;p&gt;　　石嘴山市还创新贷款方式，与经办银行协商推行一套贷款手续、一个贷款流程、一站式贷款发放的“一票式”贷款模式，降低小企业贷款成本，提高小企业融资效率。此外，免收房产担保评估费，减收50%房产抵押登记费用，为创业者减负，提高创业者的利润空间。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(154, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499931568, 1499931568, 1499931550, 0, '大数据征信：使小额贷款在线化加速', '', '', '', '\n&lt;p&gt;　　业内人士认为，未来5万元以下的小额贷款申请将有可能完全在线化，不再需要人工的审核流程，因而速度将极大地加快。人工审核一般需要一周以上才能放款；纯线上审核可以做到10分钟以内。这将意味着贷款在线化有望得到大规模普及。&lt;/p&gt;\n&lt;p&gt;　　除了贷款审批速度实现了突破，贷款获批率也得到显著提升，同一类用户，用抵押物、收入流水证明等粗放式的传统风控方式，贷款获批率在15%左右，而使用大数据征信结合人工操作后获批率可以达到45%以上。&lt;/p&gt;\n&lt;p&gt;　　互联网金融搜索平台融360日前宣布，该网贷平台与第三方征信机构芝麻信用已经建立了数据上的战略合作。这是融360在今年5月初成功开发和运用“天机”大数据风控系统之后在探索互联网大数据征信实践上的又一进展。&lt;/p&gt;\n&lt;p&gt;　　该平台负责人李英浩向记者描述了通过大数据征信将使在线小额信贷迅速发展的前景。他说，假如你需要5万元左右的资金短期周转，不必再劳时费力去银行或小贷公司申请了，只需要靠自己常年累月攒下来的信用，凭借第三方征信公司提供的信用分，就可以在融360等在线金融平台上贷款了。由于大数据风控的运用，未来小额信贷的应用场景将发生极大的变革，将近万亿元的小额信贷市场因此正在成为各大在线金融服务商争夺的潜在市场。&lt;/p&gt;\n&lt;p&gt;　　今年年初，央行已印发《关于做好个人征信业务准备工作的通知》，要求芝麻信用管理有限公司、腾讯征信有限公司等8家机构做好个人征信业务的准备工作，准备时间为6个月。业内人士预计，到6月底，经央行批准后，这8家民营机构将有望获得筹建第三方征信机构的资质。&lt;/p&gt;\n&lt;p&gt;　　现在该平台与芝麻信用建立数据上的战略合作，无疑将有助于双方的优势互补，在开展互联网大数据风控和征信业务实践上取得较快进展。&lt;/p&gt;\n&lt;p&gt;　　统计数据显示，截至2013年底，央行银行个人征信系统中收录有信贷记录的自然人约3.2亿，还不到全国总人口数的1/4，远远满足不了借贷市场的需求，很多没有信用卡或从未跟银行发生借贷关系的人群很难获得信贷服务。而在美国，征信体系的覆盖率已经达到了85%。&lt;/p&gt;\n&lt;p&gt;　　商业大数据征信的兴起，将改变这一状况。该平台负责人向记者表示，“6月份8家商业征信公司将有望拿到央行颁发的牌照，补充央行征信记录的不足。”他透露，平台正广泛地和国内外各类征信机构洽谈合作，其中一些合作项目已经启动。商业征信数据结合央行征信数据，能够让广大草根人群，例如自由职业者、个体户、小微企业主、学生等人群有机会在线借贷。&lt;/p&gt;\n&lt;p&gt;　　据了解，该网贷平台过去三年半积累了大量的信贷用户数据，帮助用户成功获取了超过3000亿元贷款。在借款人访问数据、用户申请资质信息、网站行为数据、批贷信息和贷后信息方面拥有强大的优势。业内人士认为，未来无论是用芝麻信用，还是融360的大数据风控服务，5万元以下的小额贷款申请将有可能完全在线化，不再需要人工的审核流程，因而速度将极大地加快。李英浩介绍说，人工审核一般需要一周以上才能放款，慢的可能两个月；纯线上审核可以做到10分钟以内。这将意味着贷款在线化有望很快得到大规模普及。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(155, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1499931589, 1499931589, 1499931577, 0, 'P2P网络小额贷款平台和银行小额贷款哪个好', '', '', '', '\n&lt;p&gt;　　贷款是一种永不过时的需求，不论是个人还是企业,都有需要资金周转的时候。近期央行再次降息，虽然贷款利率降低了,但是银行贷款门槛高,还是挡住了不少需要资金应急的借款人，P2P（网贷）小贷款平台却可以很好的解决这个问题。&lt;/p&gt;\n&lt;p&gt;　　P2P网络小额贷款平台和银行小额贷款哪个好?&lt;/p&gt;\n&lt;p&gt;　　互联网金融的诞生使得贷款也可以通过互联网实现，且十分简单便捷，甚是方便。在互联网上，P2P网络小额贷款平台处理起借款人的借贷信息来较快，他们有着独特的风控体系，全程网络化，大大的压缩了借款人的借款成本，且资金来自于全国各地的投资者，其中个人较多，使得真正的形成了互惠互利的借贷模式。&lt;/p&gt;\n&lt;p&gt;　　p2p网贷平台借款注意事项：&lt;/p&gt;\n&lt;p&gt;　　1、勿图省事贪便利&lt;/p&gt;\n&lt;p&gt;　　相比抵押贷款来说，无抵押的信用贷款所需要的风险更大，因此也都有着更为严格的审核标准与申请流程，切忌因为急需资金就轻信这些看上去简单的办理条件流程。要知道，天下没有免费的午餐，任何资金的出借都是有一定的风险的，也就相应有着风险控制措施。&lt;/p&gt;\n&lt;p&gt;　　2、当面申请&lt;/p&gt;\n&lt;p&gt;　　任何从事贷款服务的公司都有其固定的办公场所，而且都是需要申请人当面填写申请的。申请者亲自上门申请，就能有效地对公司的真实性进行评估，极大地降低上当的可能。即使不能亲自上门的，也得亲自见到相关负责人面谈，加强了对于贷款提供者真实性的直观评估，同时也相应降低了借贷风险。&lt;/p&gt;\n&lt;p&gt;　　3、勿轻信“贷前费用”&lt;/p&gt;\n&lt;p&gt;　　正规的（网贷）贷款服务公司都不会收取贷前费用的，而预扣利息的行为也是有违相关法律规定的。因此，直接或者变相的“贷前费用”都是不合法的，申请人有权拒绝。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(156, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1499931610, 1499931610, 1499931599, 0, '商业贷款转公积金 可找小贷公司垫资', '', '', '', '\n&lt;p&gt;　　从去年年底开始，合肥市及省直住房公积金管理部门均出台政策，市民“商转公”须自行结清贷款，这让一些市民有些犯难，大多数人都面临资金压力。而现在，市民又多了一个选择——向P2P小额（网贷）款公司垫资，直到公积金贷款申请下来。&lt;/p&gt;\n&lt;p&gt;　　记者从公积金管理部门获悉，市民“商转公”可以前往与其合作担保公司旗下的（网贷）小额贷款公司申请贷款，月利率为1.2%。据悉，除了垫资需要一定成本外，市民办理“商转公”，还需承担其他一些费用。&lt;/p&gt;\n&lt;p&gt;　　虽然“商转公”从利率的数字本身来看，优惠了不少。但也并不是所有人都适合办理“商转公”。业内人士表示，这还需要看贷款人自身的具体情况：如果在贷款金额较高的情况下，商转公可以节省一大笔利息;反之，贷款少、年限短就不够划算。这是因为办理“商转公”一方面会耗费时间成本;另一方面，此种情况下，商贷所付利息与扣除手续费后的公积金利息相差不太大。&lt;/p&gt;\n&lt;p&gt;　　不过，“商转公”也会占用公积金贷款使用次数。按照规定，目前合肥一户家庭只能使用两次公积金贷款，市民办理商转公还需斟酌。&lt;/p&gt;\n&lt;p&gt;　　申贷人须前往合肥市住房公积金管理中心填写申请表到营业大厅2楼担保公司柜台处进行商转公担保申请，由担保公司初审，管理中心复审，确定转贷金额到营业大厅2楼担保公司柜台处进行商转公担保申请，由担保公司初审，管理中心复审，确定转贷金额。&lt;/p&gt;\n&lt;p&gt;　　如果以垫资30万贷款余额为例，公司一般预收3个月的资金， 30万×1.2%×3=10800元。市民有以下两种选择利息的缴纳。按天结算的方式，适用于放贷快、预期时间短于3个月;在3个月内，按实际时间退款。3个月包月的结算方式，则适用于放贷慢、预期时间超过3个月;超期不需另行支付费用。&lt;/p&gt;\n&lt;p&gt;　　办理“商转公”业务免收担保费。但如个人因信用不良无法申办贷款的借款人，可向（网贷）担保公司申请信用担保。担保公司若同意提供担保，则按贷款额×0.6‰×贷款年限收取，最低300元。印花税则是贷款额的0.05‰，由税务部门收取。他项权利变更费为50元，由房产局收取。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}'),
(157, 0, 1, 1, 1, 1, 1, 1, 1, 4, 0, 0, 1499931635, 1499952070, 1499931600, 0, '手机贷款软件哪个好', '', '', '', '\n&lt;p&gt;　　随着“互联网+”时代的到来，各种手机贷款软件应运而生，如速贷之家、招行闪电贷、借呗、平安易贷等等，手机APP贷款，操作简单方便，给贷款者带来许多便利。下面希财君就给大家分析一下手机贷款软件哪个好，并为大家推荐几款比较好的手机贷款软件。&lt;/p&gt;\n&lt;p&gt;　　1、速贷之家&lt;/p&gt;\n&lt;p&gt;　　速贷之家这款手机贷款软件其实是一个多钟借款产品的整合平台，它主要包括快贷、现金巴士、省呗等借款平台。快贷、省呗等借款平台广受用户的喜爱，由此可见速贷之家这个手机借款的整合平台还是不错的。&lt;/p&gt;\n&lt;p&gt;　　前阵子，希财君的一个朋友十分激动的给我打电话，说要请我吃饭，当时希财君就想这是找到了女朋友呢，还是加薪了，这么开心。事实是两者都不是，我那朋友说他通过一朋友介绍下载了速贷之家的手机APP，本抱着试一试的心态，然后提交了信息，谁知道几分钟内平台就下款了，真是一个意外的惊喜。&lt;/p&gt;\n&lt;p&gt;　　可见，速贷之家还是比较平民化的，贷款成功率高，贷款速度又快，并且其最大的特点是作为一个借款产品的整合平台，用户可以根据自己的借款需求选择合适的借款产品。&lt;/p&gt;\n&lt;p&gt;　　2、招行闪电贷&lt;/p&gt;\n&lt;p&gt;　　招行闪电贷是招行针对招行一卡通客户和正在使用招行POS机具，在招行有日常业务正在进行的企业推出的一款贷款软件。受招行邀约的客户可以通过手机银行或者网上银行下载APP.。&lt;/p&gt;\n&lt;p&gt;　　招行闪电贷的贷款速度特别快，基本上是一分钟放款。由于闪电贷是针对招行优质客户推出的，因此其贷款额度比较高，最高可获得50万的贷款。最长贷款期限为12个月，用户到期不需要一次性还款，可以分期还款，这样的话，用户的每期还款压力就没得那么大了，而且其利息在手机贷款软件中算是比较低的。&lt;/p&gt;\n&lt;p&gt;　　说实话，招行闪电贷确实是一款比较实惠的手机贷款软件，不过呢，并不是每个人都有资格申请闪电贷的，除非你是招行的客户。&lt;/p&gt;\n&lt;p&gt;　　手机贷款软件哪个好&lt;/p&gt;\n&lt;p&gt;　　3、借呗&lt;/p&gt;\n&lt;p&gt;　　借呗是阿里巴巴推出的一款手机贷款软件，和闪电呗一样，也是一分钟放款。借呗的适用人群是芝麻信用分600以上的淘宝达人，这也是借呗的唯一申请条件，所以说借呗的申请门槛还是比较低。芝麻信用分数不同，用户申请到的贷款额度也不一样，最低1000元，最高的有30万。&lt;/p&gt;\n&lt;p&gt;　　借呗的最长贷款期限也是12个月，而且随借随还。作为一名资深的网购用户，希财君对这款手机贷款软件那是相当的有好感。&lt;/p&gt;\n&lt;p&gt;　　4、平安易贷&lt;/p&gt;\n&lt;p&gt;　　平安易贷是平安银行推出的手机贷款软件，它主要是面向工薪族、有房人士、有车人士、企业主等，所以申请平安易贷的用户还必须是有一定资产、工作比较稳定的人。平安易贷的贷款额度在1万到15万之间，月预期年化利率最低0.78%。&lt;/p&gt;\n&lt;p&gt;　　平安易贷的下卡速度也比较快，相比其他的银行贷款，平安易贷不需要任何的抵押或担保。还款期限也比较灵活，可以选择1年、2年、3年。&lt;/p&gt;\n&lt;p&gt;　　平安易贷作为一种银行贷款，一推出后就广受用户的喜爱，因此那些想向银行贷款的人，不妨可以考虑平安银行的这款手机贷款软件。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{"thumbnail":"","template":""}');

-- --------------------------------------------------------

--
-- 表的结构 `jr_portal_tag`
--

CREATE TABLE `jr_portal_tag` (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT '分类id',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `recommended` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '标签文章数',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标签名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 文章标签表';

-- --------------------------------------------------------

--
-- 表的结构 `jr_portal_tag_post`
--

CREATE TABLE `jr_portal_tag_post` (
  `id` bigint(20) NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '标签 id',
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '文章 id',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='portal应用 标签文章对应表';

-- --------------------------------------------------------

--
-- 表的结构 `jr_recycle_bin`
--

CREATE TABLE `jr_recycle_bin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `object_id` int(11) DEFAULT '0' COMMENT '删除内容 id',
  `create_time` int(10) UNSIGNED DEFAULT '0' COMMENT '创建时间',
  `table_name` varchar(60) DEFAULT '' COMMENT '删除内容所在表名',
  `name` varchar(255) DEFAULT '' COMMENT '删除内容名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT=' 回收站';

-- --------------------------------------------------------

--
-- 表的结构 `jr_role`
--

CREATE TABLE `jr_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父角色ID',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '状态;0:禁用;1:正常',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `list_order` float NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色表';

--
-- 转存表中的数据 `jr_role`
--

INSERT INTO `jr_role` (`id`, `parent_id`, `status`, `create_time`, `update_time`, `list_order`, `name`, `remark`) VALUES
(1, 0, 1, 1329633709, 1329633709, 0, '超级管理员', '拥有网站最高管理员权限！'),
(2, 0, 1, 1329633709, 1329633709, 0, '普通管理员', '权限由最高管理员分配！');

-- --------------------------------------------------------

--
-- 表的结构 `jr_role_user`
--

CREATE TABLE `jr_role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '角色 id',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色对应表';

-- --------------------------------------------------------

--
-- 表的结构 `jr_route`
--

CREATE TABLE `jr_route` (
  `id` int(11) NOT NULL COMMENT '路由id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态;1:启用,0:不启用',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'URL规则类型;1:用户自定义;2:别名添加',
  `full_url` varchar(255) NOT NULL DEFAULT '' COMMENT '完整url',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '实际显示的url'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='url路由表';

--
-- 转存表中的数据 `jr_route`
--

INSERT INTO `jr_route` (`id`, `list_order`, `status`, `type`, `full_url`, `url`) VALUES
(12, 5000, 1, 2, 'portal/List/index?id=8', 'pingce'),
(13, 4999, 1, 2, 'portal/Article/index?cid=8', 'pingce/:id'),
(14, 5000, 1, 2, 'portal/List/index?id=9', 'gonglue'),
(15, 4999, 1, 2, 'portal/Article/index?cid=9', 'gonglue/:id'),
(16, 5000, 1, 2, 'portal/List/index?id=10', 'p2p'),
(17, 4999, 1, 2, 'portal/Article/index?cid=10', 'p2p/:id'),
(18, 5000, 1, 2, 'portal/List/index?id=11', 'loan'),
(19, 4999, 1, 2, 'portal/Article/index?cid=11', 'loan/:id'),
(20, 5000, 1, 2, 'portal/List/index?id=12', 'licai'),
(21, 4999, 1, 2, 'portal/Article/index?cid=12', 'licai/:id'),
(22, 5000, 1, 2, 'portal/List/index?id=13', 'p2p'),
(23, 4999, 1, 2, 'portal/Article/index?cid=13', 'p2p/:id'),
(24, 5000, 1, 2, 'portal/List/index?id=14', 'loan'),
(25, 4999, 1, 2, 'portal/Article/index?cid=14', 'loan/:id'),
(26, 5000, 1, 2, 'portal/List/index?id=15', 'licai'),
(27, 4999, 1, 2, 'portal/Article/index?cid=15', 'licai/:id');

-- --------------------------------------------------------

--
-- 表的结构 `jr_slide`
--

CREATE TABLE `jr_slide` (
  `id` int(11) NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态,1:显示,0不显示',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '删除时间',
  `name` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片分类',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '分类备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='幻灯片表';

--
-- 转存表中的数据 `jr_slide`
--

INSERT INTO `jr_slide` (`id`, `status`, `delete_time`, `name`, `remark`) VALUES
(1, 1, 0, 'index_slide', '首页幻灯片'),
(2, 1, 0, 'licai_slide', '理财板块幻灯片'),
(3, 1, 0, 'p2p_slide', 'P2P板块幻灯片');

-- --------------------------------------------------------

--
-- 表的结构 `jr_slide_item`
--

CREATE TABLE `jr_slide_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `slide_id` int(11) NOT NULL DEFAULT '0' COMMENT '幻灯片id',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态,1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '幻灯片名称',
  `image` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片图片',
  `url` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片链接',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `description` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '幻灯片描述',
  `content` text CHARACTER SET utf8 COMMENT '幻灯片内容',
  `more` text COMMENT '链接打开方式'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='幻灯片子项表';

--
-- 转存表中的数据 `jr_slide_item`
--

INSERT INTO `jr_slide_item` (`id`, `slide_id`, `status`, `list_order`, `title`, `image`, `url`, `target`, `description`, `content`, `more`) VALUES
(1, 1, 1, 10000, '优化投资,超级返利', 'admin/20170713/08a5df79dbca29c78d98f3d57933820c.jpg', 'http://www.baidu.com', '', '', '', NULL),
(2, 1, 1, 10000, '40岁买什么保险最合适', 'admin/20170713/4deece6cb8671fbbb358a61fb09911b4.jpg', 'http://www.baidu.com', '', '', '', NULL),
(3, 1, 1, 10000, '世上最全', 'admin/20170713/c41572a7236b2b01776340fd30b5fe58.jpg', 'http://www.baidu.com', '', '', '', NULL),
(4, 1, 1, 10000, '招行王者荣耀信用卡', 'admin/20170713/4ec82f12770633c4af9bed67960cd174.jpg', 'http://www.csai.cn/creditcard/1240874.html', '', '', '', NULL),
(5, 2, 1, 10000, '西财评级公布', 'admin/20170713/74ceb7f3261267b2b897280212223629.jpg', 'http://www.csai.cn/p2pzixun/1239229.html', '', '', '', NULL),
(6, 2, 1, 10000, '观财经资讯', 'admin/20170713/828e031c1a68dd0f77acdf5fa46c852a.jpg', 'http://www.xinrongnews.com/', '', '', '', NULL),
(7, 3, 1, 10000, ' ​爆！这325家P2P平台上线银行直接存管（附：名单)', 'admin/20170713/03c3863f513f5102040a758f268f6b3f.jpg', 'http://www.csai.cn/p2pzixun/1241483.html', '', '', '', NULL),
(8, 3, 1, 10000, '2017年7月网贷评级最新排名：P2P排名前十的平台盘点', 'admin/20170713/4721e61382613efc2408381266a821b5.jpg', 'http://www.csai.cn/p2pzixun/1241303.html', '', '', '', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `jr_theme`
--

CREATE TABLE `jr_theme` (
  `id` int(11) NOT NULL,
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '最后升级时间',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '模板状态,1:正在使用;0:未使用',
  `is_compiled` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否为已编译模板',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '主题目录名，用于主题的维一标识',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '主题名称',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '主题版本号',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `author` varchar(20) NOT NULL DEFAULT '' COMMENT '主题作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `lang` varchar(10) NOT NULL DEFAULT '' COMMENT '支持语言',
  `keywords` varchar(50) NOT NULL DEFAULT '' COMMENT '主题关键字',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '主题描述'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jr_theme`
--

INSERT INTO `jr_theme` (`id`, `create_time`, `update_time`, `status`, `is_compiled`, `theme`, `name`, `version`, `demo_url`, `thumbnail`, `author`, `author_url`, `lang`, `keywords`, `description`) VALUES
(19, 0, 0, 0, 0, 'simpleboot3', 'simpleboot3', '1.0.2', 'http://demo.thinkcmf.com', '', 'ThinkCMF', 'http://www.thinkcmf.com', 'zh-cn', 'ThinkCMF模板', 'ThinkCMF默认模板');

-- --------------------------------------------------------

--
-- 表的结构 `jr_theme_file`
--

CREATE TABLE `jr_theme_file` (
  `id` int(11) NOT NULL,
  `is_public` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否公共的模板文件',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '模板名称',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '模板文件名',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作',
  `file` varchar(50) NOT NULL DEFAULT '' COMMENT '模板文件，相对于模板根目录，如Portal/index.html',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '模板文件描述',
  `more` text COMMENT '模板更多配置,用户自己后台设置的',
  `config_more` text COMMENT '模板更多配置,来源模板的配置文件',
  `draft_more` text COMMENT '模板更多配置,用户临时保存的配置'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jr_theme_file`
--

INSERT INTO `jr_theme_file` (`id`, `is_public`, `list_order`, `theme`, `name`, `action`, `file`, `description`, `more`, `config_more`, `draft_more`) VALUES
(105, 0, 10, 'simpleboot3', '文章页', 'portal/Article/index', 'portal/article', '文章页模板文件', '{"vars":{"hot_articles_category_id":{"title":"Hot Articles\\u5206\\u7c7bID","name":"hot_articles_category_id","value":"1","type":"text","tip":"","rule":[]}}}', '{"vars":{"hot_articles_category_id":{"title":"Hot Articles\\u5206\\u7c7bID","name":"hot_articles_category_id","value":"1","type":"text","tip":"","rule":[]}}}', NULL),
(106, 0, 10, 'simpleboot3', '联系我们页', 'portal/Page/index', 'portal/contact', '联系我们页模板文件', '{"vars":{"baidu_map_info_window_text":{"title":"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57","name":"baidu_map_info_window_text","value":"ThinkCMF<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>","type":"text","tip":"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801","rule":[]},"company_location":{"title":"\\u516c\\u53f8\\u5750\\u6807","value":"","type":"location","tip":"","rule":{"require":true}},"address_cn":{"title":"\\u516c\\u53f8\\u5730\\u5740","value":"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7","type":"text","tip":"","rule":{"require":true}},"address_en":{"title":"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09","value":"NO.0001 Xie Tu Road, Shanghai China","type":"text","tip":"","rule":{"require":true}},"email":{"title":"\\u516c\\u53f8\\u90ae\\u7bb1","value":"catman@thinkcmf.com","type":"text","tip":"","rule":{"require":true}},"phone_cn":{"title":"\\u516c\\u53f8\\u7535\\u8bdd","value":"021 1000 0001","type":"text","tip":"","rule":{"require":true}},"phone_en":{"title":"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09","value":"+8621 1000 0001","type":"text","tip":"","rule":{"require":true}},"qq":{"title":"\\u8054\\u7cfbQQ","value":"478519726","type":"text","tip":"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00","rule":{"require":true}}}}', '{"vars":{"baidu_map_info_window_text":{"title":"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57","name":"baidu_map_info_window_text","value":"ThinkCMF<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>","type":"text","tip":"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801","rule":[]},"company_location":{"title":"\\u516c\\u53f8\\u5750\\u6807","value":"","type":"location","tip":"","rule":{"require":true}},"address_cn":{"title":"\\u516c\\u53f8\\u5730\\u5740","value":"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7","type":"text","tip":"","rule":{"require":true}},"address_en":{"title":"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09","value":"NO.0001 Xie Tu Road, Shanghai China","type":"text","tip":"","rule":{"require":true}},"email":{"title":"\\u516c\\u53f8\\u90ae\\u7bb1","value":"catman@thinkcmf.com","type":"text","tip":"","rule":{"require":true}},"phone_cn":{"title":"\\u516c\\u53f8\\u7535\\u8bdd","value":"021 1000 0001","type":"text","tip":"","rule":{"require":true}},"phone_en":{"title":"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09","value":"+8621 1000 0001","type":"text","tip":"","rule":{"require":true}},"qq":{"title":"\\u8054\\u7cfbQQ","value":"478519726","type":"text","tip":"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00","rule":{"require":true}}}}', NULL),
(107, 0, 5, 'simpleboot3', '首页', 'portal/Index/index', 'portal/index', '首页模板文件', '{"vars":{"top_slide":{"title":"\\u9876\\u90e8\\u5e7b\\u706f\\u7247","value":"","type":"text","dataSource":{"api":"admin\\/Slide\\/index","multi":false},"placeholder":"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247","tip":"","rule":{"require":true}}},"widgets":{"features":{"title":"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF","display":"1","vars":{"sub_title":{"title":"\\u526f\\u6807\\u9898","value":"Quickly understand the ThinkCMF","type":"text","placeholder":"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898","tip":"","rule":{"require":true}},"features":{"title":"\\u7279\\u6027\\u4ecb\\u7ecd","value":[{"title":"MVC\\u5206\\u5c42\\u6a21\\u5f0f","icon":"bars","content":"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002"},{"title":"\\u7528\\u6237\\u7ba1\\u7406","icon":"group","content":"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002"},{"title":"\\u4e91\\u7aef\\u90e8\\u7f72","icon":"cloud","content":"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002"},{"title":"\\u5b89\\u5168\\u7b56\\u7565","icon":"heart","content":"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002"},{"title":"\\u5e94\\u7528\\u6a21\\u5757\\u5316","icon":"cubes","content":"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002"},{"title":"\\u514d\\u8d39\\u5f00\\u6e90","icon":"certificate","content":"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002"}],"type":"array","item":{"title":{"title":"\\u6807\\u9898","value":"","type":"text","rule":{"require":true}},"icon":{"title":"\\u56fe\\u6807","value":"","type":"text"},"content":{"title":"\\u63cf\\u8ff0","value":"","type":"textarea"}},"tip":""}}},"last_news":{"title":"\\u6700\\u65b0\\u8d44\\u8baf","display":"1","vars":{"last_news_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}}}}', '{"vars":{"top_slide":{"title":"\\u9876\\u90e8\\u5e7b\\u706f\\u7247","value":"","type":"text","dataSource":{"api":"admin\\/Slide\\/index","multi":false},"placeholder":"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247","tip":"","rule":{"require":true}}},"widgets":{"features":{"title":"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF","display":"1","vars":{"sub_title":{"title":"\\u526f\\u6807\\u9898","value":"Quickly understand the ThinkCMF","type":"text","placeholder":"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898","tip":"","rule":{"require":true}},"features":{"title":"\\u7279\\u6027\\u4ecb\\u7ecd","value":[{"title":"MVC\\u5206\\u5c42\\u6a21\\u5f0f","icon":"bars","content":"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002"},{"title":"\\u7528\\u6237\\u7ba1\\u7406","icon":"group","content":"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002"},{"title":"\\u4e91\\u7aef\\u90e8\\u7f72","icon":"cloud","content":"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002"},{"title":"\\u5b89\\u5168\\u7b56\\u7565","icon":"heart","content":"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002"},{"title":"\\u5e94\\u7528\\u6a21\\u5757\\u5316","icon":"cubes","content":"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002"},{"title":"\\u514d\\u8d39\\u5f00\\u6e90","icon":"certificate","content":"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002"}],"type":"array","item":{"title":{"title":"\\u6807\\u9898","value":"","type":"text","rule":{"require":true}},"icon":{"title":"\\u56fe\\u6807","value":"","type":"text"},"content":{"title":"\\u63cf\\u8ff0","value":"","type":"textarea"}},"tip":""}}},"last_news":{"title":"\\u6700\\u65b0\\u8d44\\u8baf","display":"1","vars":{"last_news_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}}}}', NULL),
(108, 0, 10, 'simpleboot3', '文章列表页', 'portal/List/index', 'portal/list', '文章列表模板文件', '{"vars":[],"widgets":{"hottest_articles":{"title":"\\u70ed\\u95e8\\u6587\\u7ae0","display":"1","vars":{"hottest_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}},"last_articles":{"title":"\\u6700\\u65b0\\u53d1\\u5e03","display":"1","vars":{"last_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}}}}', '{"vars":[],"widgets":{"hottest_articles":{"title":"\\u70ed\\u95e8\\u6587\\u7ae0","display":"1","vars":{"hottest_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}},"last_articles":{"title":"\\u6700\\u65b0\\u53d1\\u5e03","display":"1","vars":{"last_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}}}}', NULL),
(109, 0, 10, 'simpleboot3', '单页面', 'portal/Page/index', 'portal/page', '单页面模板文件', '{"widgets":{"hottest_articles":{"title":"\\u70ed\\u95e8\\u6587\\u7ae0","display":"1","vars":{"hottest_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}},"last_articles":{"title":"\\u6700\\u65b0\\u53d1\\u5e03","display":"1","vars":{"last_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}}}}', '{"widgets":{"hottest_articles":{"title":"\\u70ed\\u95e8\\u6587\\u7ae0","display":"1","vars":{"hottest_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}},"last_articles":{"title":"\\u6700\\u65b0\\u53d1\\u5e03","display":"1","vars":{"last_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}}}}', NULL),
(110, 0, 10, 'simpleboot3', '搜索页面', 'portal/search/index', 'portal/search', '搜索模板文件', '{"vars":{"varName1":{"title":"\\u70ed\\u95e8\\u641c\\u7d22","value":"1","type":"text","tip":"\\u8fd9\\u662f\\u4e00\\u4e2atext","rule":{"require":true}}}}', '{"vars":{"varName1":{"title":"\\u70ed\\u95e8\\u641c\\u7d22","value":"1","type":"text","tip":"\\u8fd9\\u662f\\u4e00\\u4e2atext","rule":{"require":true}}}}', NULL),
(111, 1, 0, 'simpleboot3', '模板全局配置', 'public/Config', 'public/config', '模板全局配置文件', '{"vars":{"enable_mobile":{"title":"\\u624b\\u673a\\u6ce8\\u518c","value":1,"type":"select","options":{"1":"\\u5f00\\u542f","0":"\\u5173\\u95ed"},"tip":""}}}', '{"vars":{"enable_mobile":{"title":"\\u624b\\u673a\\u6ce8\\u518c","value":1,"type":"select","options":{"1":"\\u5f00\\u542f","0":"\\u5173\\u95ed"},"tip":""}}}', NULL),
(112, 1, 1, 'simpleboot3', '导航条', 'public/Nav', 'public/nav', '导航条模板文件', '{"vars":{"company_name":{"title":"\\u516c\\u53f8\\u540d\\u79f0","name":"company_name","value":"ThinkCMF","type":"text","tip":"","rule":[]}}}', '{"vars":{"company_name":{"title":"\\u516c\\u53f8\\u540d\\u79f0","name":"company_name","value":"ThinkCMF","type":"text","tip":"","rule":[]}}}', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `jr_third_party_user`
--

CREATE TABLE `jr_third_party_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '本站用户id',
  `last_login_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'access_token过期时间',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '绑定时间',
  `login_times` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '登录次数',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态;1:正常;0:禁用',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '用户昵称',
  `third_party` varchar(20) NOT NULL DEFAULT '' COMMENT '第三方惟一码',
  `app_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方应用 id',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `access_token` varchar(512) NOT NULL DEFAULT '' COMMENT '第三方授权码',
  `openid` varchar(40) NOT NULL DEFAULT '' COMMENT '第三方用户id',
  `union_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方用户多个产品中的惟一 id,(如:微信平台)',
  `more` text COMMENT '扩展信息'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='第三方用户表';

-- --------------------------------------------------------

--
-- 表的结构 `jr_user`
--

CREATE TABLE `jr_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '用户类型;1:admin;2:会员',
  `sex` tinyint(2) NOT NULL DEFAULT '0' COMMENT '性别;0:保密,1:男,2:女',
  `birthday` int(11) NOT NULL DEFAULT '0' COMMENT '生日',
  `last_login_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `coin` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '金币',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '注册时间',
  `user_status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码;cmf_password加密',
  `user_nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `user_email` varchar(100) NOT NULL DEFAULT '' COMMENT '用户登录邮箱',
  `user_url` varchar(100) NOT NULL DEFAULT '' COMMENT '用户个人网址',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '用户头像',
  `signature` varchar(255) NOT NULL DEFAULT '' COMMENT '个性签名',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '' COMMENT '激活码',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '用户手机号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

--
-- 转存表中的数据 `jr_user`
--

INSERT INTO `jr_user` (`id`, `user_type`, `sex`, `birthday`, `last_login_time`, `score`, `coin`, `create_time`, `user_status`, `user_login`, `user_pass`, `user_nickname`, `user_email`, `user_url`, `avatar`, `signature`, `last_login_ip`, `user_activation_key`, `mobile`) VALUES
(1, 1, 0, 0, 1503372260, 0, 0, 1499926926, 1, 'admin', '###9031cb48b99ee81bbcd666856e8399f9', 'admin', '595931496@qq.com', '', '', '', '180.168.159.198', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `jr_user_action_log`
--

CREATE TABLE `jr_user_action_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户id',
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '访问次数',
  `last_visit_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '最后访问时间',
  `object` varchar(100) NOT NULL DEFAULT '' COMMENT '访问对象的id,格式:不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作名称;格式:应用名+控制器+操作名,也可自己定义格式只要不发生冲突且惟一;',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户ip'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='访问记录表';

-- --------------------------------------------------------

--
-- 表的结构 `jr_user_favorite`
--

CREATE TABLE `jr_user_favorite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户 id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '收藏内容的标题',
  `url` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '收藏内容的原文地址，不带域名',
  `description` varchar(500) CHARACTER SET utf8 DEFAULT '' COMMENT '收藏内容的描述',
  `table_name` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '收藏实体以前所在表,不带前缀',
  `object_id` int(10) UNSIGNED DEFAULT '0' COMMENT '收藏内容原来的主键id',
  `create_time` int(10) UNSIGNED DEFAULT '0' COMMENT '收藏时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户收藏表';

-- --------------------------------------------------------

--
-- 表的结构 `jr_user_login_attempt`
--

CREATE TABLE `jr_user_login_attempt` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `login_attempts` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '尝试次数',
  `attempt_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '尝试登录时间',
  `locked_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '锁定时间',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户 ip',
  `account` varchar(100) NOT NULL DEFAULT '' COMMENT '用户账号,手机号,邮箱或用户名'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户登录尝试表' ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- 表的结构 `jr_user_token`
--

CREATE TABLE `jr_user_token` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT ' 过期时间',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `token` varchar(64) NOT NULL DEFAULT '' COMMENT 'token',
  `device_type` varchar(10) NOT NULL DEFAULT '' COMMENT '设备类型;mobile,android,iphone,ipad,web,pc,mac,wxapp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户客户端登录 token 表';

--
-- 转存表中的数据 `jr_user_token`
--

INSERT INTO `jr_user_token` (`id`, `user_id`, `expire_time`, `create_time`, `token`, `device_type`) VALUES
(3, 1, 1518924260, 1503372260, '8a15261555f161068a14271d5f947cc5c27a8481a7aaa59538d38e062970e2c3', 'web');

-- --------------------------------------------------------

--
-- 表的结构 `jr_verification_code`
--

CREATE TABLE `jr_verification_code` (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT '表id',
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '当天已经发送成功的次数',
  `send_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '最后发送成功时间',
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '验证码过期时间',
  `code` varchar(8) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '最后发送成功的验证码',
  `account` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '手机号或者邮箱'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='手机邮箱数字验证码表';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dp_admin_action`
--
ALTER TABLE `dp_admin_action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dp_admin_attachment`
--
ALTER TABLE `dp_admin_attachment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dp_admin_config`
--
ALTER TABLE `dp_admin_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dp_admin_hook`
--
ALTER TABLE `dp_admin_hook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dp_admin_hook_plugin`
--
ALTER TABLE `dp_admin_hook_plugin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dp_admin_log`
--
ALTER TABLE `dp_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action_ip_ix` (`action_ip`),
  ADD KEY `action_id_ix` (`action_id`),
  ADD KEY `user_id_ix` (`user_id`);

--
-- Indexes for table `dp_admin_menu`
--
ALTER TABLE `dp_admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dp_admin_module`
--
ALTER TABLE `dp_admin_module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dp_admin_packet`
--
ALTER TABLE `dp_admin_packet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dp_admin_plugin`
--
ALTER TABLE `dp_admin_plugin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dp_admin_role`
--
ALTER TABLE `dp_admin_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dp_admin_user`
--
ALTER TABLE `dp_admin_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dp_dkcs_feedback`
--
ALTER TABLE `dp_dkcs_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dp_dkcs_member_base`
--
ALTER TABLE `dp_dkcs_member_base`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mobile` (`mobile`),
  ADD KEY `product_id` (`login_count`,`server_date`) USING BTREE;

--
-- Indexes for table `dp_dkcs_proimg`
--
ALTER TABLE `dp_dkcs_proimg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jr_admin_menu`
--
ALTER TABLE `jr_admin_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `parentid` (`parent_id`),
  ADD KEY `model` (`controller`);

--
-- Indexes for table `jr_asset`
--
ALTER TABLE `jr_asset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jr_auth_access`
--
ALTER TABLE `jr_auth_access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `rule_name` (`rule_name`) USING BTREE;

--
-- Indexes for table `jr_auth_rule`
--
ALTER TABLE `jr_auth_rule`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`) USING BTREE,
  ADD KEY `module` (`app`,`status`,`type`);

--
-- Indexes for table `jr_comment`
--
ALTER TABLE `jr_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_post_ID` (`object_id`),
  ADD KEY `comment_approved_date_gmt` (`status`),
  ADD KEY `comment_parent` (`parent_id`),
  ADD KEY `table_id_status` (`table_name`,`object_id`,`status`),
  ADD KEY `createtime` (`create_time`);

--
-- Indexes for table `jr_hook`
--
ALTER TABLE `jr_hook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jr_hook_plugin`
--
ALTER TABLE `jr_hook_plugin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jr_link`
--
ALTER TABLE `jr_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_visible` (`status`);

--
-- Indexes for table `jr_nav`
--
ALTER TABLE `jr_nav`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jr_nav_menu`
--
ALTER TABLE `jr_nav_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jr_option`
--
ALTER TABLE `jr_option`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `jr_plugin`
--
ALTER TABLE `jr_plugin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jr_portal_category`
--
ALTER TABLE `jr_portal_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jr_portal_category_post`
--
ALTER TABLE `jr_portal_category_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `term_taxonomy_id` (`category_id`);

--
-- Indexes for table `jr_portal_post`
--
ALTER TABLE `jr_portal_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`create_time`,`id`),
  ADD KEY `post_parent` (`parent_id`),
  ADD KEY `post_author` (`user_id`),
  ADD KEY `post_date` (`create_time`) USING BTREE;

--
-- Indexes for table `jr_portal_tag`
--
ALTER TABLE `jr_portal_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jr_portal_tag_post`
--
ALTER TABLE `jr_portal_tag_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `term_taxonomy_id` (`post_id`);

--
-- Indexes for table `jr_recycle_bin`
--
ALTER TABLE `jr_recycle_bin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jr_role`
--
ALTER TABLE `jr_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parentId` (`parent_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `jr_role_user`
--
ALTER TABLE `jr_role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`role_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `jr_route`
--
ALTER TABLE `jr_route`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jr_slide`
--
ALTER TABLE `jr_slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jr_slide_item`
--
ALTER TABLE `jr_slide_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slide_cid` (`slide_id`);

--
-- Indexes for table `jr_theme`
--
ALTER TABLE `jr_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jr_theme_file`
--
ALTER TABLE `jr_theme_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jr_third_party_user`
--
ALTER TABLE `jr_third_party_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jr_user`
--
ALTER TABLE `jr_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nickname`);

--
-- Indexes for table `jr_user_action_log`
--
ALTER TABLE `jr_user_action_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_object_action` (`user_id`,`object`,`action`),
  ADD KEY `user_object_action_ip` (`user_id`,`object`,`action`,`ip`);

--
-- Indexes for table `jr_user_favorite`
--
ALTER TABLE `jr_user_favorite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`user_id`);

--
-- Indexes for table `jr_user_login_attempt`
--
ALTER TABLE `jr_user_login_attempt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jr_user_token`
--
ALTER TABLE `jr_user_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jr_verification_code`
--
ALTER TABLE `jr_verification_code`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `dp_admin_action`
--
ALTER TABLE `dp_admin_action`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- 使用表AUTO_INCREMENT `dp_admin_attachment`
--
ALTER TABLE `dp_admin_attachment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- 使用表AUTO_INCREMENT `dp_admin_config`
--
ALTER TABLE `dp_admin_config`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- 使用表AUTO_INCREMENT `dp_admin_hook`
--
ALTER TABLE `dp_admin_hook`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `dp_admin_hook_plugin`
--
ALTER TABLE `dp_admin_hook_plugin`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `dp_admin_log`
--
ALTER TABLE `dp_admin_log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=71;
--
-- 使用表AUTO_INCREMENT `dp_admin_menu`
--
ALTER TABLE `dp_admin_menu`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;
--
-- 使用表AUTO_INCREMENT `dp_admin_module`
--
ALTER TABLE `dp_admin_module`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `dp_admin_packet`
--
ALTER TABLE `dp_admin_packet`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `dp_admin_plugin`
--
ALTER TABLE `dp_admin_plugin`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `dp_admin_role`
--
ALTER TABLE `dp_admin_role`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '角色id', AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `dp_admin_user`
--
ALTER TABLE `dp_admin_user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `dp_dkcs_feedback`
--
ALTER TABLE `dp_dkcs_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `dp_dkcs_member_base`
--
ALTER TABLE `dp_dkcs_member_base`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `dp_dkcs_proimg`
--
ALTER TABLE `dp_dkcs_proimg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- 使用表AUTO_INCREMENT `jr_admin_menu`
--
ALTER TABLE `jr_admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;
--
-- 使用表AUTO_INCREMENT `jr_asset`
--
ALTER TABLE `jr_asset`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- 使用表AUTO_INCREMENT `jr_auth_access`
--
ALTER TABLE `jr_auth_access`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `jr_auth_rule`
--
ALTER TABLE `jr_auth_rule`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键', AUTO_INCREMENT=158;
--
-- 使用表AUTO_INCREMENT `jr_comment`
--
ALTER TABLE `jr_comment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `jr_hook`
--
ALTER TABLE `jr_hook`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- 使用表AUTO_INCREMENT `jr_hook_plugin`
--
ALTER TABLE `jr_hook_plugin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `jr_link`
--
ALTER TABLE `jr_link`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `jr_nav`
--
ALTER TABLE `jr_nav`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `jr_nav_menu`
--
ALTER TABLE `jr_nav_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `jr_option`
--
ALTER TABLE `jr_option`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `jr_plugin`
--
ALTER TABLE `jr_plugin`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id';
--
-- 使用表AUTO_INCREMENT `jr_portal_category`
--
ALTER TABLE `jr_portal_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '分类id', AUTO_INCREMENT=16;
--
-- 使用表AUTO_INCREMENT `jr_portal_category_post`
--
ALTER TABLE `jr_portal_category_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;
--
-- 使用表AUTO_INCREMENT `jr_portal_post`
--
ALTER TABLE `jr_portal_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;
--
-- 使用表AUTO_INCREMENT `jr_portal_tag`
--
ALTER TABLE `jr_portal_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '分类id';
--
-- 使用表AUTO_INCREMENT `jr_portal_tag_post`
--
ALTER TABLE `jr_portal_tag_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `jr_recycle_bin`
--
ALTER TABLE `jr_recycle_bin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `jr_role`
--
ALTER TABLE `jr_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `jr_role_user`
--
ALTER TABLE `jr_role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `jr_route`
--
ALTER TABLE `jr_route`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id', AUTO_INCREMENT=28;
--
-- 使用表AUTO_INCREMENT `jr_slide`
--
ALTER TABLE `jr_slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `jr_slide_item`
--
ALTER TABLE `jr_slide_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `jr_theme`
--
ALTER TABLE `jr_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- 使用表AUTO_INCREMENT `jr_theme_file`
--
ALTER TABLE `jr_theme_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- 使用表AUTO_INCREMENT `jr_third_party_user`
--
ALTER TABLE `jr_third_party_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `jr_user`
--
ALTER TABLE `jr_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `jr_user_action_log`
--
ALTER TABLE `jr_user_action_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `jr_user_favorite`
--
ALTER TABLE `jr_user_favorite`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `jr_user_login_attempt`
--
ALTER TABLE `jr_user_login_attempt`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `jr_user_token`
--
ALTER TABLE `jr_user_token`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `jr_verification_code`
--
ALTER TABLE `jr_verification_code`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id';
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
