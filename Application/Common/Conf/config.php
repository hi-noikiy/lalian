<?php
require dirname(__FILE__).'/secure.php';
if(!defined('WHERECOME')){
	define('WHERECOME','HOME');
}
return array(
	'DB_TYPE'              => DB_TYPE,
	'DB_HOST'              => DB_HOST,
	'DB_NAME'              => DB_NAME,
	'DB_USER'              => DB_USER,
	'DB_PWD'               => DB_PWD,
	'DB_PORT'              => DB_PORT,
	'DB_PREFIX'            => 'tw_',
	'ACTION_SUFFIX'        => '',
	'MULTI_MODULE'         => true,
	'MODULE_DENY_LIST'     => array('Common', 'Runtime'),
	'MODULE_ALLOW_LIST'    => array('Home', 'Mobile', 'Admin'),
	'DEFAULT_MODULE'       => WHERECOME,
	'URL_CASE_INSENSITIVE' => false,
	'URL_MODEL'            => 2,
	'LANG_SWITCH_ON' => true,   // 开启语言包功能
	'LANG_AUTO_DETECT' => true, // 自动侦测语言 开启多语言功能后有效
	'DEFAULT_LANG' => 'zh-cn', // 默认语言
	'LANG_LIST'        => 'zh-cn,en-us', // 允许切换的语言列表 用逗号分隔
	'VAR_LANGUAGE'     => 'l', // 默认语言切换变量
	'think_email' => array(
		'smtp_host' => 'smtp.mxhichina.com', //SMTP服务器
		'smtp_port' => '465', //SMTP服务器端口
		'smtp_user' => 'admin@gg-ex.com', //SMTP服务器用户名
		'smtp_pass' => 'buZhiQiMei8LiuQD', //SMTP服务器密码
		'from_email' => 'admin@gg-ex.com',
		'from_name' => '客服', //发件人名称
		'reply_email' => 'admin@gg-ex.com', //回复EMAIL（留空则为发件人EMAIL）
		'reply_name' => '客服', //回复名称（留空则为发件人名称）
		'session_expire'=>'72',
	),
);
?>