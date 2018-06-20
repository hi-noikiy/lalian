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
<link rel="stylesheet" type="text/css" href="/Public/Home/news/style/animate.css">
<style>
.banner_bottom{width: 100%;background:rgba(0,0,0,0.5);position: absolute;bottom:0;left:0;padding:15px 0;}
.p1{font-size:16px;line-height:20px;text-align: center;color:#4F5A7A;}
.p2{font-size:20px;line-height:20px;color:rgb(153, 171, 191);margin-top:10px;text-shadow: 0 2px 4px rgba(0,0,0,0.50);text-align: center;}
.section2{width:100%;background: #fff;}
.hyjy{border:1px solid #7B8A9D;border-radius: 4px;width:250px;height: 40px;color:#99A6BF;text-align: center;line-height: 40px;font-size: 16px;margin-bottom: 20px;cursor: pointer;}
</style>
        <div class="banner" >
        <!-- banner图轮播开始 -->
          <div class="bd">
            <ul>
            <?php if(is_array($indexAdver)): $i = 0; $__LIST__ = $indexAdver;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($vo['url'] != ''): ?><li onclick="window.open('<?php echo ($vo['url']); ?>')" style="height:640px;background: url(<?php echo ($vo["img"]); ?>) top center no-repeat;"></li>
              <?php else: ?>
                <li style="height:640px;background: url(<?php echo ($vo["img"]); ?>) top center no-repeat;"></li><?php endif; endforeach; endif; else: echo "" ;endif; ?>
            </ul>
          </div>
          <div class="hd">
            <ul>
            <?php if(is_array($indexAdver)): $i = 0; $__LIST__ = $indexAdver;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li></li><?php endforeach; endif; else: echo "" ;endif; ?>
            </ul>
          </div>
          <script>
            jQuery(".banner").slide({mainCell:".bd ul",autoPlay:true,effect:"fold"});
          </script>
        <!--  banner图轮播结束 -->
         <!--  无缝轮播开始 -->
         <div class="banner_bottom">
           <div class="scrollleft" style="overflow: hidden; position: relative;">
    <ul style="margin: 0px; padding: 0px; overflow: hidden; position: relative; list-style: none; width: 1485px; left: -155px;">
        <?php if(is_array($market_list)): $i = 0; $__LIST__ = $market_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li style="position: relative; overflow: hidden; float: left;">
            <p class="p1">
                <?php echo (chongzu($vo['name'])); ?> <span class="fudu fudu_d"><?php echo (NumToStr($vo['change'])); ?>%</span>
            </p>
            <p class="p2">
                <?php echo (NumTofour($vo['new_price'])); ?>
            </p>
        </li><?php endforeach; endif; else: echo "" ;endif; ?>
    </ul>
</div>
</div>
<style>
/* scrollleft */
.scrollleft {
    width:100%;
}
.scrollleft li {
    float:left;
    display:inline;
    width:155px;
    padding:0 20px;
    text-align:center;
    line-height:19px;
    border-right:1px solid #3a3c3e;
}
.scrollleft li .fudu{
    display: inline-block;margin-left: 10px;color:#fff;font-size: 16px;
}
.scrollleft li .fudu_z{
    color:#1fa72f;
}
.scrollleft li .fudu_d{
    color:rgb(159,51,59);
}
</style>
<script type="text/javascript">
    $(document).ready(function() {

        $(".scrollleft").imgscroll({
            speed: 40, //图片滚动速度
            amount: 0, //图片滚动过渡时间
            width: 1, //图片滚动步数
            dir: "left" // "left" 或 "up" 向左或向上滚动
        });

        $(".scrolltop").imgscroll({
            speed: 40, //图片滚动速度
            amount: 0, //图片滚动过渡时间
            width: 1, //图片滚动步数
            dir: "up" // "left" 或 "up" 向左或向上滚动
        });

    });
</script>
<script>
    $.fn.imgscroll = function(o){
    var defaults = {
        speed: 40,
        amount: 0,
        width: 1,
        dir: "left"
    };
    o = $.extend(defaults, o);

    return this.each(function(){
        var _li = $("li", this);
        _li.parent().parent().css({overflow: "hidden", position: "relative"}); //div
        _li.parent().css({margin: "0", padding: "0", overflow: "hidden", position: "relative", "list-style": "none"}); //ul
        _li.css({position: "relative", overflow: "hidden"}); //li
        if(o.dir == "left") _li.css({float: "left"});

        //初始大小
        var _li_size = 0;
        for(var i=0; i<_li.size(); i++)
            _li_size += o.dir == "left" ? _li.eq(i).outerWidth(true) : _li.eq(i).outerHeight(true);

        //循环所需要的元素
        if(o.dir == "left") _li.parent().css({width: (_li_size*3)+"px"});
        _li.parent().empty().append(_li.clone()).append(_li.clone()).append(_li.clone());
        _li = $("li", this);

        //滚动
        var _li_scroll = 0;
        function goto(){
            _li_scroll += o.width;
            if(_li_scroll > _li_size)
            {
                _li_scroll = 0;
                _li.parent().css(o.dir == "left" ? { left : -_li_scroll } : { top : -_li_scroll });
                _li_scroll += o.width;
            }
                _li.parent().animate(o.dir == "left" ? { left : -_li_scroll } : { top : -_li_scroll }, o.amount);
        }

        //开始
        var move = setInterval(function(){ goto(); }, o.speed);
        _li.parent().hover(function(){
            clearInterval(move);
        },function(){
            clearInterval(move);
            move = setInterval(function(){ goto(); }, o.speed);
        });
    });
};
</script>
           <!--  无缝轮播结束 -->

        </div>
        <div class="section2">
        <!-- tab切换开始 -->
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
    width:100%;
    margin:0 auto;
    padding:30px 0 60px;
}
.ul_list {
    width:1200px;
    margin:0 auto;
}
.ul_list li {
    float:left;
    width:auto;
    padding:0 17px;
    text-align:center;
    box-sizing:border-box;
    cursor:pointer;
    height: 33px;
    line-height: 33px;
    border: 1px solid #e6e6e6;
    background: #f9f9f9;
    color: #333;
    font-size: 14px;
    font-weight: bold;
    vertical-align: middle;
}
.ul_list li.active {
    background: #fff;
    color: #e8b342;
    border-bottom-color: #fff;
}
.div_box {
    width:1200px;
    margin:0 auto;
}
.div_box .div_list {
    display:none;
    border: 1px solid #e6e6e6;
    margin-top: -1px;
}
.div_box .div_list table tr th,.div_box .div_list table tr td{
   background: #fff;
    padding: 0px 26px;
    border-top: 1px solid #f0f0f0;
    height: 30px;
    line-height: 30px;
    text-align: right;
    font-size: 12px;
}
.div_box .div_list table tr th{
    color:#999;font-weight: normal;
    border:none;
}
.div_box .div_list table tr:hover td{background-color: #fefcf6;}
.div_box .div_list table tr td{color:#333;}
.div_box .div_list table tr .die{color:#e21476;}
.div_box .div_list table tr .zhang{color:#1fa72f;}
.ul_list li .bg_image{display: inline-block;width:13px;height:13px;background: url('/Public/Home/images/star.png') no-repeat;margin-right: 5px;background-size: 100%;vertical-align: middle;}
.choose.active .bg_image{display: inline-block;width:13px;height:13px;background: url('/Public/Home/images/star3.png') no-repeat;margin-right: 5px;background-size: 100%;vertical-align: middle;}
</style>
           <div class="box">
    <ul class="ul_list clearfix">
        <li class="choose"><!-- <img src="/Public/Home/images/star1.png" alt="" style="height: 13px;vertical-align: middle;margin-right: 5px;"> -->
        <span class="bg_image"></span><?php echo (L("index_xz")); ?></li>
        <li class="active" style="border-right:0;border-left:0;">ZNC<?php echo (L("index_sc")); ?></li>
        <li>BTC<?php echo (L("index_sc")); ?></li>
    </ul>
    <div class="div_box">
     <div class="div_list">
          <table>
              <thead>
                  <tr>
                      <th width="200px;" style="text-align: center;"><?php echo (L("index_sc")); ?></th>
                      <th width="110px;" style="text-align: left;"><?php echo (L("index_zxj")); ?></th>
                      <th width="220px;"><?php echo (L("index_zd")); ?></th>
                      <th width="230px;"><?php echo (L("index_zgj")); ?></th>
                      <th width="230px;"><?php echo (L("index_zdj")); ?></th>
                      <th width="210px;"><?php echo (L("index_cjl")); ?></th>
                  </tr>
              </thead>
               <tbody id='zxdiv'>
               </tbody>
          </table>
        </div>
        <div class="div_list" style="display:block;">
             <table>
              <thead>
                  <tr>
                      <th width="200px;" style="text-align: center;"><?php echo (L("index_sc")); ?></th>
                      <th width="110px;" style="text-align: left;"><?php echo (L("index_zxj")); ?></th>
                      <th width="220px;"><?php echo (L("index_zd")); ?></th>
                      <th width="230px;"><?php echo (L("index_zgj")); ?></th>
                      <th width="230px;"><?php echo (L("index_zdj")); ?></th>
                      <th width="210px;"><?php echo (L("index_cjl")); ?></th>
                  </tr>
              </thead>
              <tbody id='zncdiv'>
                  <?php if(is_array($market_list)): $i = 0; $__LIST__ = $market_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if(houmark($vo['name']) == 'znc'): ?><tr id="<?php echo ($vo['id']); ?>">
                      <td width="200px;" style="text-align:left;">
                      <span style="width:25px;float: left;margin-left: 20px;" onclick="bian(this)" data="1">
                      <img src="/Public/Home/images/star2.png" alt="" style="vertical-align: middle;width:15px;"></span><a href="/Trade/index/market/<?php echo ($vo['name']); ?>" style="color: #333;"><?php echo (chongzu($vo['name'])); ?></a></td>
                      <td width="110px;" style="text-align: left;"><?php echo (NumTofour($vo['new_price'])); ?><span style="color: #999"></span></td>
                      <td width="220px;" class="zhang"><?php echo (NumToStr($vo['change'])); ?>%</td>
                      <td width="230px;"><?php echo (NumTofour($vo['max_price'])); ?></td>
                      <td width="230px;"><?php echo (NumTofour($vo['min_price'])); ?></td>
                      <td width="210px;"><?php echo (NumTofour($vo['volume'])); ?></td>
                  </tr><?php endif; endforeach; endif; else: echo "" ;endif; ?>

              </tbody>
          </table>
        </div>
        <div class="div_list" >
          <table>
              <thead>
                  <tr>
                      <th width="200px;" style="text-align: center;"><?php echo (L("index_sc")); ?></th>
                      <th width="110px;" style="text-align: left;"><?php echo (L("index_zxj")); ?></th>
                      <th width="220px;"><?php echo (L("index_zd")); ?></th>
                      <th width="230px;"><?php echo (L("index_zgj")); ?></th>
                      <th width="230px;"><?php echo (L("index_zdj")); ?></th>
                      <th width="210px;"><?php echo (L("index_cjl")); ?></th>
                  </tr>
              </thead>
              <tbody id='btcdiv'>
                <?php if(is_array($market_list)): $i = 0; $__LIST__ = $market_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if(houmark($vo['name']) == 'btc'): ?><tr id="<?php echo ($vo['id']); ?>">
                      <td width="200px;" style="text-align:left;">
                      <span style="width:25px;float: left;margin-left: 20px;" onclick="bian(this)" data="1">
                      <img src="/Public/Home/images/star2.png" alt="" style="vertical-align: middle;width:15px;"></span><a href="/Trade/index/market/<?php echo ($vo['name']); ?>"style="color: #333;"><?php echo (chongzu($vo['name'])); ?></a></td>
                      <td width="110px;" style="text-align: left;"><?php echo (NumTofour($vo['new_price'])); ?><span style="color: #999"></span></td>
                      <td width="220px;" class="zhang"><?php echo (NumToStr($vo['change'])); ?>%</td>
                      <td width="230px;"><?php echo (NumTofour($vo['max_price'])); ?></td>
                      <td width="230px;"><?php echo (NumTofour($vo['min_price'])); ?></td>
                      <td width="210px;"><?php echo (NumTofour($vo['volume'])); ?></td>
                  </tr><?php endif; endforeach; endif; else: echo "" ;endif; ?>
              </tbody>
          </table>
        </div>

    </div>
</div>
<script>
    $(function() {
    $('.box .ul_list li').on('click', function() {
        $(this).addClass('active').siblings('li').removeClass('active');
        //获取当前li的索引
        var n = $(this).index();
        $('.div_box .div_list').eq(n).show().siblings('.div_list').hide();
    });
});
</script>
<script type="text/javascript">
    function bian(bian){

        if($(bian).attr("data")==1){
            $(bian).attr("data","2");
            $(bian).children("img").attr("src","/Public/Home/images/star3.png");
            //需要在自选中加上
            //获取父类的id
           if($(bian).parent().parent().parent().attr('id')!='zxdiv'){
                trid=$(bian).parent().parent().attr('id');
                $('#zxdiv').append("<tr id='"+trid+"'>"+$(bian).parent().parent().html()+"</tr>");
           }
        }else if($(bian).attr("data")==2){
            $(bian).attr("data","1");
            //需要在自选中加上
            //获取父类的id
            trid=$(bian).parent().parent().attr('id');
           if($(bian).parent().parent().parent().attr('id')=='zxdiv'){
              $(bian).parent().parent().remove();
           }else{
                //移除zxdiv的一行开始吧
                var mailbody = document.getElementById("zxdiv");
                var cell = document.getElementById(trid);
                mailbody.removeChild(cell);


           }
           $("#"+trid+" td:eq(0) span").attr("data","1");
           $("#"+trid+" td:eq(0) img").attr("src","/Public/Home/images/star2.png");
        }

    }
</script>
        <!--  tab切换结束 -->
          <style>
        .bottom_1{height:340px;position: relative;width: 100%;background: url(/Public/Home/images/shutterstock.jpg) top center no-repeat fixed;background-size: cover;display: none;}
        .mask{position: absolute;width: 100%;height: 340px;background: #213569;background-size: cover;z-index: 1;opacity: .9;}
        .animated_img{height:382px;position: relative;top: -10px;left:30px;z-index: 2;}
        .bottom_1 .left{width: 40%;position: relative;z-index: 2;float: right;color: #fff;}
        .bottom_1 .pp1{font-size: 24px;color:#fff;margin-top:85px;margin-bottom:15px;}
        .bottom_1 .pp2{font-size: 24px;color:#fff;}
        .white_bottom{width:100%;background-color: #fff;padding:70px 0 50px;overflow: hidden;}
        .white_bottom ul{width: 1200px;margin:0 auto;text-align: center;}
        .white_bottom ul li{float: left;width: 400px;}
        .white_bottom ul li .title{color:#888;margin-top:20px;font-size: 18px;margin-bottom: 10px;}
        .white_bottom ul li .jieshao{color: #8c8990;line-height:22px;font-size: 14px;}
        .white_bottom ul li .img{width:150px; transition: All 0.8s ease-in-out;-moz-transition:All 0.8s ease-in-out; -o-transition: All 0.8s ease-in-out;}
        .white_bottom ul li .img:hover{ transform: rotate(360deg);-webkit-transform: rotate(360deg);-moz-transform: rotate(360deg);-o-transform: rotate(360deg);-ms-transform: rotate(360deg);}
        .gonggao{width:100%;background-color:#fafafa;padding:50px 0;}
        .gonggao .ul{width:1200px;margin:0 auto;overflow: hidden;}
        .gonggao .ul .li{float: left;width:320px;margin-right:120px;}
        .gonggao .ul .li .bg_img{display:inline-block;background: url('/Public/Home/images/icon_gg.png') no-repeat;width: 20px;height: 20px;background-size: 20px auto;vertical-align: middle;margin-right: 10px;}
        .gonggao .ul .li .bg_img1{background-position: 0px 0px;}
        .gonggao .ul .li .bg_img2{background-position: 0px -42px;}
        .gonggao .ul .li .bg_img3{background-position: 0px -21px;}
        .gonggao .ul .li .more{float: right;font-size: 14px;color: #696777}
        .gonggao .ul .li h4{font-size: 18px;font-weight: normal;padding:0px 0px 25px;}
        .gonggao .ul .li:last-child{float: right;margin-right: 0;}
        .gonggao .ul .li .ul_n{width: 100%;}
        .gonggao .ul li .ul_n li{line-height: 34px;}
        .gonggao .ul li .ul_n li a{color: #3f3d4d;font-size: 14px;}
        .gonggao .ul li .ul_n li a .time{color: #a0a0ab;font-size: 14px;display: inline-block;width: 50px;margin-right: 5px;}
        .gonggao .ul li a:hover{text-decoration: underline;}
        .gonggao .ul li a:hover .time{text-decoration: none;}
        </style>
        <div class="bottom_1">
            <div class="mask"></div>
                <div style="width:1200px;margin: 0 auto;">
                    <img class="animated fadeInLeft animated_img"  src="/Public/Home/images/phone.png" alt="" >
                <div class="left animated fadeInRight">
                    <p class="pp1">致力于提供优质的币币交易</p>
                    <p class="pp2">专业的数字货币钱包服务</p>
                </div>
                </div>
        </div>
        <div class="white_bottom">
        <ul>
            <li>
                <img src="/Public/Home/images/safe@2x.png" alt="" class="img">
                <h5 class="title"><?php echo (L("index_aq")); ?></h5>
                <p class="jieshao"><?php echo (L("index_aq1")); ?></p>
                <p class="jieshao"><?php echo (L("index_aq2")); ?></p>
            </li>
            <li>
                <img src="/Public/Home/images/specialty@2x.png" alt="" class="img">
                <h5 class="title"><?php echo (L("index_zy")); ?></h5>
                <p class="jieshao"><?php echo (L("index_zy1")); ?></p>
                <p class="jieshao"><?php echo (L("index_zy2")); ?></p>
            </li>
            <li>
                <img src="/Public/Home/images/easy@2x.png" alt="" class="img">
                <h5 class="title"><?php echo (L("index_yy")); ?></h5>
                <p class="jieshao"><?php echo (L("index_yy1")); ?></p>
                <p class="jieshao"><?php echo (L("index_yy2")); ?></p>
            </li>
        </ul>
        </div>
        <div class="gonggao">
        <ul class="ul">
          <li class="li">
          <h4><span class="bg_img bg_img1"></span>
                 <?php if(LANG_SET == 'en-us'): echo ($gfgonggao["title_en"]); ?>
                <?php else: ?>
                     <?php echo ($gfgonggao["title"]); endif; ?> <a href="<?php echo U('Article/detail');?>" class="more"><?php echo (L("Finance_gd")); ?></a></h4>
            <ul class="ul_n">
                <?php if(is_array($gglist)): $i = 0; $__LIST__ = $gglist;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li>
                        <?php if(LANG_SET == 'en-us'): ?><a href="<?php echo U('Article/detail',array('id'=>$vo['id']));?>"><span class="time">[<?php echo (timehs($vo["addtime"])); ?>]</span><?php echo (msubstr($vo["title_en"],0,30,'utf-8')); ?></a>
                        <?php else: ?>
                            <a href="<?php echo U('Article/detail',array('id'=>$vo['id']));?>"><span class="time">[<?php echo (timehs($vo["addtime"])); ?>]</span><?php echo (msubstr($vo["title"],0,16,'utf-8')); ?></a><?php endif; ?>

                    </li><?php endforeach; endif; else: echo "" ;endif; ?>
          </ul>
          </li>
          <li class="li">
          <h4><span class="bg_img bg_img2"></span>
           <?php if(LANG_SET == 'en-us'): echo ($xwzx["title_en"]); ?>
                <?php else: ?>
                     <?php echo ($xwzx["title"]); endif; ?>
                 <a href="<?php echo U('Article/detail');?>" class="more"><?php echo (L("Finance_gd")); ?></a></h4>
          <ul class="ul_n">
            <?php if(is_array($xwlist)): $i = 0; $__LIST__ = $xwlist;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li>
                        <?php if(LANG_SET == 'en-us'): ?><a href="<?php echo U('Article/detail',array('id'=>$vo['id']));?>"><span class="time">[<?php echo (timehs($vo["addtime"])); ?>]</span><?php echo (msubstr($vo["title_en"],0,30,'utf-8')); ?></a>
                        <?php else: ?>
                            <a href="<?php echo U('Article/detail',array('id'=>$vo['id']));?>"><span class="time">[<?php echo (timehs($vo["addtime"])); ?>]</span><?php echo (msubstr($vo["title"],0,16,'utf-8')); ?></a><?php endif; ?>

                    </li><?php endforeach; endif; else: echo "" ;endif; ?>
          </ul>
          </li>
          <li class="li">
          <h4><span class="bg_img bg_img3"></span> <?php if(LANG_SET == 'en-us'): echo ($jyrm["title_en"]); ?>
                <?php else: ?>
                     <?php echo ($jyrm["title"]); endif; ?>
            <a href="<?php echo U('Article/detail');?>" class="more"><?php echo (L("Finance_gd")); ?></a></h4>
          <ul class="ul_n">
            <?php if(is_array($jylist)): $i = 0; $__LIST__ = $jylist;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li>
                        <?php if(LANG_SET == 'en-us'): ?><a href="<?php echo U('Article/detail',array('id'=>$vo['id']));?>"><span class="time">[<?php echo (timehs($vo["addtime"])); ?>]</span><?php echo (msubstr($vo["title_en"],0,30,'utf-8')); ?></a>
                        <?php else: ?>
                            <a href="<?php echo U('Article/detail',array('id'=>$vo['id']));?>"><span class="time">[<?php echo (timehs($vo["addtime"])); ?>]</span><?php echo (msubstr($vo["title"],0,16,'utf-8')); ?></a><?php endif; ?>

                    </li><?php endforeach; endif; else: echo "" ;endif; ?>
          </ul>
          </li>
        </ul>
        </div>
        </div>

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