<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta content="width=device-width, initial-scale=0.1, maximum-scale=1.0, user-scalable=1" name="viewport">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta name="renderer" content="webkit">
    <meta name="format-detection" content="telephone=no,email=no,address=no">
    <title>
	<?php if(LANG_SET == 'en-us'): echo C('en_web_title');?>
	<?php else: ?>
		<?php echo C('web_title'); endif; ?>
	</title>
    <link rel="shortcut icon" href="/Public/images/favor.ico" type="image/x-icon" />
    <?php if(LANG_SET == 'en-us'): ?><meta name="Keywords" content="<?php echo C('en_web_keywords');?>">
	<?php else: ?>
		<meta name="Keywords" content="<?php echo C('web_keywords');?>"><?php endif; ?>
	<?php if(LANG_SET == 'en-us'): ?><meta name="Description" content="<?php echo C('en_web_description');?>">
	<?php else: ?>
		<meta name="Description" content="<?php echo C('web_description');?>"><?php endif; ?>
    <link rel="stylesheet" href="/Public/Home/css/dfc.css"/>
    <link rel="stylesheet" type="text/css" href="/Public/Home/news/style/base.css">
    <link rel="stylesheet" type="text/css" href="/Public/Home/news/style/style.css">
    <link rel="stylesheet" type="text/css" href="/Public/Home/news/style/fb.css">
    <link rel="stylesheet" type="text/css" href="/Public/Home/news/style/index.css">
    <script type="text/javascript" src="/Public/Home/news/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="/Public/Home/news/js/jquery.SuperSlide.2.1.1.js"></script>
    <script type="text/javascript" src="/Public/layer/layer.js"></script>
    <script type="text/javascript" src="/Public/Home/js/jquery.cookies.2.2.0.js"></script>
    <script type="text/javascript" src="/Public/Home/js/jquery.flot.js"></script>
    <style type="text/css">
        .deal_list {
                position: absolute;
                left: -128px;
                background: #fff;
                z-index: 999999;
                border-bottom: 2px solid #f6554b;
                padding-bottom: 10px;
            }
        #menu_list_json img{vertical-align: middle;}
        .deal_list dl {
                width:360px;
                margin: 0 auto;
            }
        .deal_list dd {
                width: 150px;
                padding-left: 10px;
                height: 40px;
                line-height: 40px;
                float: left;
                font-size: 14px;
                color: #666;
                margin:10px 10px 0 10px;
            }
        .deal_list dd:hover{background: #f6554b;}
        .deal_list dd:hover a{color: #fff;}
        .nocontent {
                height: 34px;
                width:80px;
                position: absolute;
                left: 0;
                top: -34px;
            }
        .deal_list dd a {
                float: left;
                font-size: 12px;
            }
        .hdmenu ul li{font-size:16px;}
        .hdmenu ul li a{display: block;height: 100%;position: relative;}
        .logo{float:left;width:200px;height:60px;line-height:60px;}
        .logo img{vertical-align:middle;}
        .deal_list_pic_cny img{width:15px;height:15px;}
        .hdmenu{float:left;width:480px;height:60px;text-align:center;}
        .inhright{width:420px;height: 60px;line-height: 60px;float:right;}
        .zc_new{display: inline-block;width:90px;height: 32px;border:2px solid #059FF5;border-radius: 4px;color:#059FF5;line-height: 32px;text-align: center;font-size:16px;}
        .zc_new:hover{background:#059FF5;color:#fff;}
        .new_line{width:100%;height:6px;background:#135F91;}
        .orange1{color: #99A6BF;}
        #lange li{height: 40px;line-height: 40px;padding-left:10px;}
		.chooselan{display: inline-block;line-height: 60px; margin-left:105px;cursor:pointer;}
		.logchooselan{height:60px;line-height: 60px;cursor:pointer;}
		.logchooselan img{display:block;float:right;width:20px;margin-right:5px;padding-top:20px;}
		.logchooselan span{display:block;color:#99A6BF;font-size:12px;float:right;}
    </style>
</head>
<body>
    <div id="container">
        <div class="otheader" style="height:60px;">
            <div class="header" style="height:60px;">
                <div class="logo">
                    <a href="/">
                        <img src="<?php echo C('web_logo');?>" style="height:40px;" />
                    </a>
                </div>
                <div class="hdmenu">
                    <ul>
                        <li id="index_box"><a href="/"><?php echo (L("Fenhong_index")); ?> </a></li>
                        <li id="trade_box">
                            <a href="<?php echo U('Trade/index');?>"><span><?php echo (L("g_trade_center")); ?> </span></a>
                        </li>
                        <?php if(is_array($daohang)): $i = 0; $__LIST__ = $daohang;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li id="<?php echo ($vo['name']); ?>_box">
								<a href="/<?php echo ($vo['url']); ?>">
									<?php if(LANG_SET == 'en-us'): echo ($vo['title_en']); ?>
									<?php else: ?>
										<?php echo ($vo['title']); endif; ?>
								</a>
							</li><?php endforeach; endif; else: echo "" ;endif; ?>
                        <li >
                            <a href="http://coinlala.org"><span>OTC </span></a>
                        </li>
                    </ul>
                </div>
                           <!-- 登录注册 -->
                    <div class="inhright">
                        <div class="right orange1" id="login">
                            <?php if(($_SESSION['userId']) > "0"): ?><dl class="mywallet" style="z-index:999;width:100%">
                                    <dt id="user-finance">
                                    <div class="mywallet_name clear">
                                        <a href="/user/"><?php echo (session('userName')); ?></a><i></i>
                                    </div>
                                    <div class="mywallet_list" style="display:none;">
                                        <div class="clear">
                                            <h3 style="color:#7B8A9D;font-size:12px;vertical-align: middle;height: 40px;line-height: 40px;"><img src="/Public/Home/images/images/qbb.png" alt="" style="width:15px;margin-right: 5px;vertical-align: middle;"><?php echo (L("Fenhong_wdzc")); ?> </h3>
                                            <table width="380">
                                                <tr style="height: 40px;line-height: 40px;background:#2d2c3d;">
                                                    <th style="width: 120px;text-align: left;text-indent:12px;"><?php echo (L("Fenhong_bizhong")); ?></th>
                                                    <th style="width: 130px;text-align: left;"><?php echo (L("Finance_kyye")); ?></th>
                                                    <th style="width: 130px;text-align: left;"><?php echo (L("Fenhong_wtdj")); ?></th>
                                                </tr>
                                                <?php if(is_array($coin_top)): $i = 0; $__LIST__ = $coin_top;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$ct): $mod = ($i % 2 );++$i;?><tr style="height: 40px;line-height: 40px;">
                                                    <td style="vertical-align: middle;text-indent:10px;"><img src="<?php echo ($ct[0]); ?>" style="width:20px;height:20px;vertical-align: middle;margin-right: 5px;" /><?php echo ($ct[1]); ?>：</td>
                                                    <td><?php echo ($ct[2]); ?><!-- <br/>/￥<?php echo ($ct[3]); ?><br/>/$<?php echo ($ct[4]); ?> --></td>
                                                    <td><?php echo ($ct[5]); ?><!-- <br/>/￥<?php echo ($ct[6]); ?><br/>/$<?php echo ($ct[7]); ?> --></td>
                                                </tr><?php endforeach; endif; else: echo "" ;endif; ?>
                                            </table>
                                        </div>
                                    </div>
                                    </dt>
                                    <dd>
                                        ID：<span><?php echo (session('userId')); ?></span>
                                    </dd>
                                    <dd>
                                        <a href="<?php echo U('Login/loginout');?>"><?php echo (L("Finance_getout")); ?> </a>
                                    </dd>
									<dd style="height:60px;position:relative;padding-right: 0;float: right;width:120px;">
										<?php if(LANG_SET == 'en-us'): ?><div class="logchooselan">
                                                <span>English</span>
												<img src="/Public/Home/images/images/enen.png" />
                                            </div>
                                            <div id="loglanges" style="float:right;display:none;margin-right: 4px;">
                                            <ul id="lange" style="position:relative ;left:7px;top:-10px;z-index:5555;width:100px;padding:5px 0;background:url(/Public/Home/images/images/impression2.svg) no-repeat;">
                                                <li><a href="?l=zh-cn">
                                                    <img src="/Public/Home/images/images/cncn.png" alt="" style="vertical-align: middle;width:20px;">
                                                    <span style="vertical-align: middle;color:#99A6BF;font-size:12px;">中国</span></a>
                                                </li>
                                                <li><a href="?l=en-us"><img src="/Public/Home/images/images/enen.png" alt="" style="vertical-align: middle;width:20px;">
                                                    <span style="vertical-align: middle;color:#99A6BF;font-size:12px;">English</span></a>
                                                </li>
                                            </ul>
                                        </div>
										<?php else: ?>
											<div class="logchooselan">
                                                <span>中国</span>
												<img src="/Public/Home/images/images/cncn.png" />
											</div>
                                            <div id="loglanges" style="float:right;display:none;margin-right: 4px;">
                                            <ul id="lange" style="position:relative ;left:28px;top:-10px;z-index:5555;width:100px;padding:5px 0;background:url(/Public/Home/images/images/impression2.svg) no-repeat;">
                                                <li><a href="?l=zh-cn">
                                                    <img src="/Public/Home/images/images/cncn.png" alt="" style="vertical-align: middle;width:20px;">
                                                    <span style="vertical-align: middle;color:#99A6BF;font-size:12px;">中国</span></a>
                                                </li>
                                                <li><a href="?l=en-us"><img src="/Public/Home/images/images/enen.png" alt="" style="vertical-align: middle;width:20px;">
                                                    <span style="vertical-align: middle;color:#99A6BF;font-size:12px;">English</span></a>
                                                </li>
                                            </ul>
                                        </div><?php endif; ?>

									</dd>
                                </dl>
                                <?php else: ?>
                                <div class="inhright">
                                    <span>
                                        <a href="<?php echo U('Login/index');?>" style="color:#ebebeb;display:inline-block;width:90px;line-height:60px;font-size:16px;text-align: center;"><?php echo (L("Finance_login")); ?> </a>
                                    </span>
                                    <span><a href="<?php echo U('Login/register');?>" class="zc_new"><?php echo (L("Finance_reg")); ?> </a></span>
                                    <?php if(LANG_SET == 'en-us'): ?><span class="chooselan">
                                            <img src="/Public/Home/images/images/enen.png" alt="" style="vertical-align: middle;width:20px;margin-right:5px;">
                                            <span style="vertical-align: middle;color:#99A6BF;font-size:12px;">English</span>
										</span>
                                    <?php else: ?>
                                        <span class="chooselan">
                                            <img src="/Public/Home/images/images/cncn.png" alt="" style="vertical-align: middle;width:20px;margin-right:5px;">
                                            <span style="vertical-align: middle;color:#99A6BF;font-size:12px;">中国</span>
										</span><?php endif; ?>
                                    <div id="langes" style="float:right;display:none;margin-right: 26px;">
										<ul id="lange" style="position:relative ;top:-10px;z-index:5555;width:100px;padding:5px 0;background:url(/Public/Home/images/images/impression2.svg) no-repeat;">
											<li><a href="?l=zh-cn">
												<img src="/Public/Home/images/images/cncn.png" alt="" style="vertical-align: middle;width:20px;">
												<span style="vertical-align: middle;color:#99A6BF;font-size:12px;">中国</span></a>
											</li>
											<li><a href="?l=en-us"><img src="/Public/Home/images/images/enen.png" alt="" style="vertical-align: middle;width:20px;">
												<span style="vertical-align: middle;color:#99A6BF;font-size:12px;">English</span></a>
											</li>
										</ul>
                                    </div>
                                </div><?php endif; ?>
                        </div>
                    </div>
                   <!--  登录注册结束 -->
            </div>
        </div>
        <div class="new_line"></div>
        <script>
            //新改
            $('#trade_box').mouseover(function() {
                $(".deal_list").show();
            });
            $(".hdmenu ul").mouseleave(function(){
                $(".deal_list").hide();
            });
            $('.deal_list').hover(function () {
                $('.deal_list').show()
            });
            $('#user-finance').hover(function () {
                $('.mywallet_list').show();
            }, function () {
                $('.mywallet_list').hide()
            });
            $(".chooselan").click(function(){
				$("#langes").toggle();
			});
			$(".logchooselan").click(function(){
				$("#loglanges").toggle();
			});
        </script>
    <style>
.clearfix:before,.clearfix:after {
    content:"";
    display:table;
}
.clearfix:after {
    clear:both;
}
.clearfix {
    clear:both;
    *zoom:1;
}
.show {
    display:block!important;
}
.box {
    width:450px;
}
.ul_list {
    width:100%;
    height:32px;
    text-align: center;
}
.ul_list li {
    width:100px;
    box-sizing:border-box;
    cursor:pointer;
    font-size:22px;
    line-height: 22px;
    text-align: center;
    color:#99A6BF;
    display:inline-block;
}
.ul_list li.active {
    color:#059FF5;
}
.div_box {
    width: 450px;background:#2D2C3C;border:1px solid #2D2C3C;margin:23px auto;
}
.div_box .div_list {
    display:none;
}
.wjmm{color:#059FF5;font-size:14px;line-height: 30px;}
.white:hover{color:#fff;}
    </style>
<div class="outlogbox">
	<div class="logbox">
		<!-- tab开始 -->
		<div class="box">
			<ul class="ul_list clearfix">
				<li class="active"><span class="white"><?php echo (L("Finance_login")); ?> </span></li>
				<li style='width:20px;'>·</li>
				<a href="<?php echo U('Login/register');?>"><li><span class="white"><?php echo (L("Finance_reg")); ?> </span></li></a>
			</ul>
			<div class="div_box">
				<div class="div_list" style="display:block;">
				<!-- 登录开始 -->
				 <form id="form-login" class="mask_wrap login-fb">
					<div class="inbox">
						<div class="boxrow">
							<div class="rightbox">
								<input id="login_username" name="username" type="text" class="iptbox" onblur="usernames();" placeholder="<?php echo (L("g_dz_yx")); ?> " />
							</div>
						</div>
						<div class="boxrow">
							<div class="rightbox">
								<input id="login_password" name="password" type="password" class="iptbox" onkeyup="chkpwd();" maxlength="16" onblur="passwords()" placeholder="<?php echo (L("User_password")); ?> " />
							</div>
						</div>
							<div class="boxrow" id="ga-box-i" style="margin-bottom:5px;">
								<div class="rightbox">
									<input type="text" class="iptbox yzm" id="login_verify" name="code" style="width: 170px; float: left;" onblur="verifys();" maxlength="6" placeholder="<?php echo (L("Finance_yzm")); ?> " />
										<img id="codeImg reloadverifyindex" src="<?php echo U('Verify/code');?>" style="width:145px;height: 40px;margin-left:10px;cursor: pointer;" onclick="this.src=this.src+'?t='+Math.random()" title="<?php echo (L("Finance_yzmhyz")); ?> " class='codeImg'>
								</div>

							</div>
							<div class="boxrow" id="ga" style="display:none">
								<div class="rightbox">
									<input id="foot_ga" type="text" placeholder="<?php echo (L("Login_wbdbs")); ?>" class="iptbox"  onblur="if(this.value == '')this.placeholder='<?php echo (L("Login_wbdbs")); ?>';" onclick="if(this.placeholder == '<?php echo (L("Login_wbdbs")); ?>')this.placeholder='';"/>
								</div>
							</div>
							<p style="text-align: right;display:inline-block;width:330px;margin-bottom:10px"> <a href="<?php echo U('Login/findpwd');?>" class="wjmm"><?php echo (L("Finance_wjmm")); ?> </a></p>
						<div class="boxrow">
							<div class="rightbox nolabel">
								<input type="button" name="index_submit" id="loginSubmin" onclick="upLogin();" class="iptbut" value="<?php echo (L("g_login")); ?> ">
							</div>
						</div>
					</div>
				</form>
				<!-- 登录结束 -->
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	//记住账号
	var cookieValue=$.cookies.get('cookie_username');
	if(cookieValue!=''&&cookieValue!=null){
		$("#username").val(cookieValue);
		$("#autoLogin").attr("checked",true);
	}
	// 检测用户名
    function usernames(){
        var username = $('#login_username').val();
        if(username==""||username==null){
            layer.tips('<?php echo (L("Finance_srusn")); ?> ','#login_username',{tips:3});
            return false;
        }
        $.post("<?php echo U('Login/jiancega');?>", {
        	username:username,
        	}, function (data) {
        		if (data.status == 1) {
        			$('#ga').show();
        		}

        	}, "json");
    }

    // 检测密码
    function passwords(){
        var password = $('#login_password').val();
        if(password==""||password==null){
            layer.tips('<?php echo (L("Finance_srdlmm")); ?> ','#login_password',{tips:3});
            return false;
        }
    }
	// 检测验证码
    function verifys(){
        var verify = $('#login_verify').val();
        if(verify==""||verify==null){
            layer.tips('<?php echo (L("g_guge_put_yzm")); ?> ','#login_verify',{tips:3});
            return false;
        }
    }
	function upLogin() {
		var username = $("#login_username").val();
		var password = $("#login_password").val();
		var verify = $("#login_verify").val();
		var foot_ga = $("#foot_ga").val();
		if (username == "" || username == null) {
			layer.tips('<?php echo (L("Finance_srusn")); ?> ', '#login_username', {tips: 3});
			return false;
		}
		if (password == "" || password == null) {
			layer.tips('<?php echo (L("Finance_srdlmm")); ?> ', '#login_password', {tips: 3});
			return false;
		}

		if (verify == "" || verify == null) {
			layer.tips('<?php echo (L("g_guge_put_yzm")); ?> ', '#login_verify', {tips: 3});
			return false;
		}

		$('#loginSubmin').css('background','#135F91');

		$.post("<?php echo U('Login/submit');?>", {
			username: username,
			password: password,
			verify: verify,
			ga: foot_ga
		}, function (data) {
			if (data.status == 1) {
				$.cookies.set('cookie_username', username);
				layer.msg(data.info, {icon: 1});
				window.location = '/User/index';
				$('#loginSubmin').css('background','#135F91');
			} else {
				//刷新验证码
				//$(".reloadverifyindex").click();
				var codeImg = $(".codeImg").attr("src");
                if (codeImg.indexOf('?') > 0) {
                    $(".codeImg").attr("src",
                            codeImg + '&random=' + Math.random());
                } else {
                    $(".codeImg").attr(
                            "src",
                            codeImg.replace(/\?.*$/, '') + '?'
                            + Math.random());
                }
				layer.msg(data.info, {icon: 2});
				$('#loginSubmin').css('background','#135F91');
				if (data.url) {
					window.location = data.url;
				}
			}
		}, "json");
	}
	function chkpwd(){
		var loginpassword = $("#login_password").val();
		var patten =/^[a-zA-Z0-9]+$/;
		var match = new RegExp(patten);
		if (!match.test(loginpassword)) {
			layer.tips('<?php echo (L("Finance_mmjc")); ?> ','#login_password',{tips:3});
			var result = loginpassword.substring(0,loginpassword.length-1);
			$("#login_password").val(result);
		}
	}
	//顶部菜单高亮
	$('#menu_top_index').addClass('current');
</script>
        <!-- 底部 -->
        <style type="text/css">
            .bottom{margin-bottom: -2px;}
            .bottom .bottop .botcent .ftmenu {float: left; width: 100px;height: auto;overflow: hidden;margin-left:33px;}
            .bottom_ul_new{width:1200px;margin:0 auto;overflow: hidden;}
            .bottom_ul_new ul{width:1200px;overflow: hidden;text-align: center;}
            .bottom_ul_new ul li{display: inline-block;width:120px;height:15px;}
            .bottom_ul_new ul li a{display:inline-block;color:#B1B8CB;font-size: 14px;text-align: center;width:120px;line-height: 15px;border-right: 1px solid #B1B8CB;}
            .bottom_ul_new ul li a:hover{text-decoration: underline;}
            .bottom_img{width:1200px;line-height:100px;margin:0 auto;text-align: center;}
            .bottom_img ul{width:1200px;height:100px;}
            .bottom_img ul li{display: inline-block;width:60px;height: 100px;}
            .bottom_img ul li a{vertical-align: middle;border-right: 0;width:60px;}
            .bottom_img ul li a .span{display: inline-block;width:40px;height: 40px;}
            .bottom_img ul li a .span11{background: url(/Public/Home/images/images/facebook_1@1x.png) no-repeat;background-size: 100%;}
            .bottom_img ul li a .span11:hover{background: url(/Public/Home/images/images/facebook_2@1x.png) no-repeat;background-size: 100%;}
            .bottom_img ul li a .span22{background: url(/Public/Home/images/images/twitter_1@1x.png) no-repeat;background-size: 100%;}
            .bottom_img ul li a .span22:hover{background: url(/Public/Home/images/images/twitter_2@1x.png) no-repeat;background-size: 100%;}
            .bottom_img ul li a .span33{background: url(/Public/Home/images/images/blog_1.png) no-repeat;background-size: 100%;}
            .bottom_img ul li a .span33:hover{background: url(/Public/Home/images/images/blog_2.png) no-repeat;background-size: 100%;}
            .bottom_img ul li a .span44{background: url(/Public/Home/images/images/Email_1@1x.png) no-repeat;background-size: 100%;}
            .bottom_img ul li a .span44:hover{background: url(/Public/Home/images/images/Email_2@1x.png) no-repeat;background-size: 100%;}
            .bottom_new1{width:100%;height: 40px;border-top:1px solid #353B47;}
            .bottom_container1{width: 1200px;height: 40px;margin: 0 auto;}
            .bottom_container1 ul{width:1200px;height: 40px;text-align: center;}
            .bottom_container1 ul li{display: inline-block;padding:0 15px;color:#7B8A9D;line-height: 40px;vertical-align: middle;}
            .bottom_container1 ul li img{vertical-align: middle;}
			.blanguage{width:110px;height:95px;position:relative;left:414px;top:-125px;background:url(/Public/Home/images/impression.svg) no-repeat;}
			.blanguage ul{width:110px;height:95px;z-index:5555;}
			.blanguage ul li{width:110px;height:40px;line-height:40px;padding:0;text-align:left;text-indent:15px;}
        </style>
        <div class="bottom">
            <div class="bottop">
                <div class="bottom_ul_new">
                    <ul>
                        <li><a href="/Article/detail/id/91.html"><?php echo (L("g_user_xy")); ?> </a></li>
                        <li><a href="/Article/detail/"><?php echo (L("g_help_center")); ?> </a></li>
                        <li><a href="/Article/detail/id/110.html"><?php echo (L("g_guanyu_us")); ?> </a></li>
						<li><a  href="/Article/detail/id/77.html"><?php echo (L("g_fee_shuoming")); ?> </a></li>
                        <li><a style="border:none;" href="/Article/detail/id/112.html">上币申请 </a></li>
                    </ul>
                    <div class="bottom_img">
                        <ul>
                            <li><a href="##">
                            <span class="span span11"></span></a></li>
                            <li><a href="##"><span class="span span22"></a></li>
                            <li><a href="##"><span class="span span33"></a></li>
                            <li><a href="##"><span class="span span44"></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="bottom_new1">
                <div class="bottom_container1">
                    <ul>
						<?php if(LANG_SET == 'en-us'): ?><li class="bchooselan">
								<span>
									<img src="/Public/Home/images/images/enen.png" alt="" style="width:20px;margin-right:10px;">
								</span>
								<span>English</span>
							</li>
						<?php else: ?>
							<li class="bchooselan">
								<span>
									<img src="/Public/Home/images/images/cncn.png" alt="" style="width:20px;margin-right:10px;">
								</span>
								<span>中国</span>
							</li><?php endif; ?>
                        <li>© Copyright  GG-EX.COM</li>
                    </ul>
					<div id="blanges" class="blanguage" style="display:none;">
						<ul>
							<li><a href="?l=zh-cn">
								<img src="/Public/Home/images/images/cncn.png" alt="" style="vertical-align: middle;width:20px;">
								<span style="vertical-align: middle;color:#99A6BF;font-size:12px;">中国</span></a>
							</li>
							<li><a href="?l=en-us"><img src="/Public/Home/images/images/enen.png" alt="" style="vertical-align: middle;width:20px;">
								<span style="vertical-align: middle;color:#99A6BF;font-size:12px;">English</span></a>
							</li>
						</ul>
					</div>
                </div>
            </div>
        </div>
        <div class="rightkefu">
            <ul>
                <li>
                    <a href="http://wpa.qq.com/msgrd?v=3&amp;uin=<?php echo ($C['contact_qq'][0]); ?>&amp;site=qq&amp;menu=yes" target="_blank">
                        <div class="topimg">
                        <span class="kfphone"><?php echo (L("g_kefu_cell")); ?> </span>
                            <img src="/Public/Home/images/images/ddddh.png" class="img1" width="36">
                            <img src="/Public/Home/images/images/dh_2.png" class="img2" width="36">
                        </div>

                    </a>
                </li>
            </ul>
        </div>
        <script type="text/javascript">
            $(".backtop").click(function () {
                var speed=300;
                $('body,html').animate({ scrollTop: 0 }, speed);
                return false;
             });
            var Height = $(".userm_left").outerHeight();
            $(".userm_right").css("minHeight",Height);
			$(".bchooselan").click(function(){
				$("#blanges").toggle();
			});
        </script>
    </div>
</body>
</html>