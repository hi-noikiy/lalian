<?php
namespace Home\Controller;

class AjaxController extends HomeController
{
	protected function _initialize(){
		parent::_initialize();
		$allow_action=array("getJsonMenu","allsum","allcoin","trends","getJsonTop","getTradelog","getDepth","getEntrustAndUsercoin","getprice","getEntrustHistory","kline","getDepthcharts","getMyTradelog","down","curlDownFile");
		if(!in_array(ACTION_NAME,$allow_action)){
			$this->error("非法操作！");
		}
	}
	
	public function __construct() {
		parent::__construct();
	}
	
	public function getDepthcharts($market = NULL, $trade_moshi = 1, $ajax = 'json')
	{
		// 过滤非法字符----------------S

		if (checkstr($market) || checkstr($trade_moshi)) {
			$this->error('您输入的信息有误！');
		}

		// 过滤非法字符----------------E

		if (!C('market')[$market]) {
			return null;
		}
		
		if ($trade_moshi == 1) {
			$limt = 12;
		}

		if (($trade_moshi == 3) || ($trade_moshi == 4)) {
			$limt = 25;
		}

		$mo = M();

		if ($trade_moshi == 1) {
			$buy = M('trade')->where(array('status'=>0,'type'=>1,'market'=>$market))->field('id,price,sum(num-deal)as nums')->group('price')->order('price desc')->limit($limt)->select();
			$tmp_sell = M('trade')->where(array('status'=>0,'type'=>2,'market'=>$market))->field('id,price,sum(num-deal)as nums')->group('price')->order('price asc')->limit($limt)->select();
			$sell = array_reverse($tmp_sell);
		}

		if ($trade_moshi == 3) {
			$buy = M('trade')->where(array('status'=>0,'type'=>1,'market'=>$market))->field('id,price,sum(num-deal)as nums')->group('price')->order('price desc')->limit($limt)->select();
			$sell = null;
		}

		if ($trade_moshi == 4) {
			$buy = null;
			$sell_tmp = M('trade')->where(array('status'=>0,'type'=>2,'market'=>$market))->field('id,price,sum(num-deal)as nums')->group('price')->order('price asc')->limit($limt)->select();
			$sell = array_reverse($sell_tmp);
		}

		if ($buy) {
			foreach ($buy as $k => $v) {
				$data['depth']['buy'][$k] = array(floatval($v['price']), floatval($v['nums'] * 1));
			}
		}
		else {
			$data['depth']['buy'] = '';
		}

		if ($sell) {
			foreach ($sell as $k => $v) {
				$data['depth']['sell'][$k] = array(floatval($v['price']), floatval($v['nums'] * 1));
			}
		}
		else {
			$data['depth']['sell'] = '';
		}

		$data_getDepth[$market][$trade_moshi] = $data;

		if ($ajax) {
			exit(json_encode($data));
		}
		else {
			return $data;
		}
	}
	
	public function kline(){
		$size = $_REQUEST['size'];
		$type = $_REQUEST['type'];
		$market = !empty($_REQUEST['market']) ? $_REQUEST['market'] : C('market_mr');
		$xnb = explode("_",$market)[0];
		$rmb = explode("_",$market)[1];
		if(empty($size)){
			$size = 1000;
		}
		if($size>0){
			switch ($type)
			{
				case "1min":
					$time = 1;
					break;
				case "3min":
					$time = 3;
					break;
				case "5min":
					$time = 5;
					break;
				case "15min":
					$time = 15;
					break;
				case "30min":
					$time = 30;
					break;
				case "1hour":
					$time = 60;
					break;
				case "2hour":
					$time = 120;
					break;
				case "4hour":
					$time = 240;
					break;
				case "6hour":
					$time = 360;
					break;
				case "12hour":
					$time = 720;
					break;
				case "1day":
					$time = 1440;
					break;
				case "3day":
					$time = 4320;
					break;
				case "1week":
					$time = 10080;
					break;
				default:
					$time = 15;
					break;
			}

			$tjcount = M('TradeJson')->where(array('type' => $time, 'market' => $market))->count();
			if($tjcount>$size){
				$tradeJson = M('TradeJson')->where(array('type' => $time, 'market' => $market))->order('addtime asc')->limit($tjcount-$size,$tjcount)->select();
			}else{
				$tradeJson = M('TradeJson')->where(array('type' => $time, 'market' => $market))->order('addtime asc')->select();
			}

			$list=array();
			foreach ($tradeJson as $k => $v) {
				$json_data = json_decode($v['data'], true);
				$list[] = array(($json_data[0]+$v['type']*60)*1000,$json_data[2]*1,$json_data[3]*1,$json_data[4]*1,$json_data[5]*1,$json_data[1]*1);
			}

			$result = array(
				"des" => "注释",
				"isSuc" => true,
				"datas" => array(
					"USDCNY" => 6.83,
					"contractUnit" => strtoupper($xnb),
					"data" => $list,
					"marketName" => "鼎发币",
					"moneyType" => strtoupper($rmb),
					"symbol" => $xnb.$rmb,
				)
			);
			echo json_encode($result);
			exit;
		}
	}
	
	public function getprice($market = NULL, $ajax = 'json'){
		// 过滤非法字符----------------S

		if (checkstr($market)) {
			$this->error('您输入的信息有误！');
		}

		// 过滤非法字符----------------E


		if (!userid()) {
			return null;
		}

		if (!C('market')[$market]) {
			return null;
		}
		$data=array();
		$buy = M('trade')->where(array('status'=>0,'type'=>1,'market'=>$market))->field('price')->order('price desc')->limit(1)->find();
		$sell = M('trade')->where(array('status'=>0,'type'=>2,'market'=>$market))->field('price')->order('price asc')->limit(1)->find();
		$market_info=M('market')->where(array('name'=>$market))->find();
		if(empty($buy['price'])){
			$cjmr = M('TradeLog')->where(array('market' => $market, 'status' => 1))->order('addtime desc')->find();
			$data['buy'] = number_format($cjmr['price'],$market_info['round'],'.','');
		}else{
			$data['buy'] = number_format($buy['price'],$market_info['round'],'.','');
		}
		if(empty($sell['price'])){
			$cjmc = M('TradeLog')->where(array('market' => $market, 'status' => 1))->order('addtime desc')->find();
			$data['sell'] = number_format($cjmc['price'],$market_info['round'],'.','');
		}else{
			$data['sell'] = number_format($sell['price'],$market_info['round'],'.','');
		}
		if ($ajax) {
			exit(json_encode($data));
		}
		else {
			return $data;
		}
	}
	
	public function getJsonMenu($ajax = 'json')
	{
		foreach (C('market') as $k => $v) {
			$v['xnb'] = explode('_', $v['name'])[0];
			$v['rmb'] = explode('_', $v['name'])[1];
			$data[$k]['name'] = $v['name'];
			$data[$k]['img'] = $v['xnbimg'];
			$data[$k]['title'] = $v['title'];
		}
		
		if ($ajax) {
			exit(json_encode($data));
		}
		else {
			return $data;
		}
	}

	public function allsum($ajax = 'json')
	{
		$data = M('TradeLog')->sum('mum');
		$data = round($data);
		$data = str_repeat('0', 12 - strlen($data)) . (string) $data;

		if ($ajax) {
			exit(json_encode($data));
		}
		else {
			return $data;
		}
	}

	public function allcoin($ajax = 'json')
	{
		foreach (C('market') as $k => $v) {
			$data[$k][0] = $v['title'];
			$data[$k][1] = round($v['new_price'], $v['round']);
			$data[$k][2] = round($v['buy_price'], $v['round']);
			$data[$k][3] = round($v['sell_price'], $v['round']);
			$data[$k][4] = round($v['volume'] * $v['new_price'], 2) * 1;
			$data[$k][5] = '';
			$data[$k][6] = round($v['volume'], 2) * 1;
			$data[$k][7] = round($v['change'], 2);
			$data[$k][8] = $v['name'];
			$data[$k][9] = $v['xnbimg'];
			$data[$k][10] = '';
		}

		if ($ajax) {
			exit(json_encode($data));
		}
		else {
			return $data;
		}
	}

	public function trends($ajax = 'json')
	{
		foreach (C('market') as $k => $v) {
			$tendency = json_decode($v['tendency'], true);
			$data[$k]['data'] = $tendency;
			$data[$k]['yprice'] = $v['new_price'];
		}

		if ($ajax) {
			exit(json_encode($data));
		}
		else {
			return $data;
		}
	}

	public function getJsonTop($market = NULL, $ajax = 'json')
	{

		// 过滤非法字符----------------S

		if (checkstr($market)) {
			$this->error('您输入的信息有误！');
		}

		// 过滤非法字符----------------E

		if ($market) {
			$xnb = explode('_', $market)[0];
			$rmb = explode('_', $market)[1];
			$market_list = M('Market')->where(array('status'=>1))->select();
			foreach ($market_list as $k => $v) {
				$v['xnb'] = explode('_', $v['name'])[0];
				$v['rmb'] = explode('_', $v['name'])[1];
				$coin = M('Coin')->where(array('name'=>$v['xnb']))->find();
				$data['list'][$k]['name'] = $v['name'];
				$data['list'][$k]['img'] = $coin['img'];
				$data['list'][$k]['title'] = $coin['title'];
				$data['list'][$k]['new_price'] = $v['new_price'];
			}
			$market_info = M('Market')->where(array('name'=>$market,'status'=>1))->find();
			$coin_info = M('Coin')->where(array('name'=>$xnb))->find();
			$data['info']['img'] = $coin_info['img'];
			$data['info']['title'] = $coin_info['title'];
			$data['info']['new_price'] = $market_info['new_price']*1;
			$data['info']['max_price'] = $market_info['max_price']*1;
			$data['info']['min_price'] = $market_info['min_price']*1;
			$data['info']['buy_price'] = $market_info['buy_price']*1;
			$data['info']['sell_price'] = $market_info['sell_price']*1;
			$data['info']['volume'] = number_format($market_info['volume']*1,6,'.','');//$market_info['volume']*1;
			$data['info']['change'] = $market_info['change'];
			$tmp_cjamount = $market_info['cjamount'];
			$tmp_rmb = explode("_",$market)[1];
			$data['info']['cjamount_btc'] =number_format($tmp_cjamount,6,'.','');// getoperator($tmp_rmb,'btc');
			$data['info']['cjamount_usd'] = getoperator($tmp_rmb,'usd');
			$data['info']['cjamount_rmb'] = getoperator($tmp_rmb,'rmb');
		}
		
		if ($ajax) {
			exit(json_encode($data));
		}
		else {
			return $data;
		}
	}

	public function getTradelog($market = NULL, $jjcoin = NULL, $ajax = 'json')
	{

		// 过滤非法字符----------------S

		if (checkstr($market)) {
			$this->error('您输入的信息有误！');
		}
		
		if(empty($jjcoin)){
			$jjcoin = "btc";
		}
		$rmb = explode("_",$market)[1];
		$operator =1;// getoperator($rmb,$jjcoin);

		// 过滤非法字符----------------E

		$tradeLog = M('TradeLog')->where(array('status' => 1, 'market' => $market))->order('id desc')->limit(27)->select();

		if ($tradeLog) {
			foreach ($tradeLog as $k => $v) {
				$data['tradelog'][$k]['addtime'] = date('H:i:s', $v['addtime']);
				$data['tradelog'][$k]['type'] = $v['type'];
				$data['tradelog'][$k]['price'] = $v['price'] * $operator;
				$data['tradelog'][$k]['num'] = round($v['num'], 6);
				$data['tradelog'][$k]['mum'] = round($v['mum'], 6);
			}
		}
		
		if ($ajax) {
			exit(json_encode($data));
		}
		else {
			return $data;
		}
	}
	public function getMyTradelog($market = NULL, $jjcoin = NULL,$uid, $ajax = 'json')
	{

		// 过滤非法字符----------------S

		if (checkstr($market)) {
			$this->error('您输入的信息有误！');
		}
		
		if(empty($jjcoin)){
			$jjcoin = "btc";
		}
		$rmb = explode("_",$market)[1];
		$operator = getoperator($rmb,$jjcoin);

		// 过滤非法字符----------------E
		// $tradeLog = M('TradeLog')->where(array('status' => 1, 'market' => $market))->order('id desc')->limit(27)->select();
		$tradeLog = M('TradeLog')->where("status=1 and market='".$market."'  and (userid=".$uid." or peerid=".$uid.") ")->order('id desc')->limit(27)->select();

		if ($tradeLog) {
			foreach ($tradeLog as $k => $v) {
				if($v['userid']==$v['peerid']){
					$cjtype="<font class='buy'>".L('sFinance_mycj_zmr')."</font><font class='sell'>".L('sFinance_mycj_zm')."</font>";
					// $fee=L('sTrade_index_mc').number_format($v['fee_sell'],6,'.','')."/".L('sTrade_index_mr').number_format($v['fee_buy'],6,'.','');
					$fee=number_format($v['fee_sell'],6,'.','');
				}else{
					if($v['userid']==$uid && $v['type']==1){
						$cjtype="<font class='buy'>".L('sTrade_index_mr')."</font>";
						$fee=number_format($v['fee_buy'],6,'.','');
					}
					if($v['userid']==$uid && $v['type']==2){
						$cjtype="<font class='buy'>".L('sTrade_index_mr')."</font>";
						$fee=number_format($v['fee_buy'],6,'.','');
					}
					if($v['peerid']==$uid && $v['type']==1){
						$cjtype="<font class='sell'>".L('sTrade_index_mc')."</font>";
						$fee=number_format($v['fee_sell'],6,'.','');
					}
					if($v['peerid']==$uid && $v['type']==2){
						$cjtype="<font class='sell'>".L('sTrade_index_mc')."</font>";
						$fee=number_format($v['fee_sell'],6,'.','');
					}
				}

				$data['tradelog'][$k]['cjtype'] = $cjtype;
				$data['tradelog'][$k]['addtime'] = date('m-d H:i:s', $v['addtime']);
				$data['tradelog'][$k]['type'] = $v['type'];
				$data['tradelog'][$k]['price'] = $v['price'] * $operator;
				$data['tradelog'][$k]['num'] = number_format($v['num'],6,'.','');// round($v['num'], 6);
				$data['tradelog'][$k]['mum'] = round($v['mum'], 6);//number_format($v['mum'],6,'.','');

				$data['tradelog'][$k]['fee'] =$fee; 

			}
		}
		
		if ($ajax) {
			exit(json_encode($data));
		}
		else {
			return $data;
		}
	}

	public function getDepth($market = NULL, $jjcoin=NULL, $trade_moshi = 1, $ajax = 'json')
	{


		// 过滤非法字符----------------S

		if (checkstr($market) || checkstr($trade_moshi)) {
			$this->error('您输入的信息有误！');
		}

		// 过滤非法字符----------------E

		if (!C('market')[$market]) {
			return null;
		}
		
		if(empty($jjcoin)){
			$jjcoin = 'btc';
		}
		$rmb = explode("_",$market)[1];
		$operator =1;// getoperator($rmb,$jjcoin);

		if ($trade_moshi == 1) {
			$limt = 5;
		}

		if (($trade_moshi == 3) || ($trade_moshi == 4)) {
			$limt = 25;
		}

		$mo = M();

		if ($trade_moshi == 1) {
			$buy = M('trade')->where(array('status'=>0,'type'=>1,'market'=>$market))->field('id,price,sum(num-deal)as nums')->group('price')->order('price desc')->limit($limt)->select();
			$tmp_sell = M('trade')->where(array('status'=>0,'type'=>2,'market'=>$market))->field('id,price,sum(num-deal)as nums')->group('price')->order('price asc')->limit($limt)->select();
			$sell = array_reverse($tmp_sell);
		}

		if ($trade_moshi == 3) {
			$buy = M('trade')->where(array('status'=>0,'type'=>1,'market'=>$market))->field('id,price,sum(num-deal)as nums')->group('price')->order('price desc')->limit($limt)->select();
			$sell = null;
		}

		if ($trade_moshi == 4) {
			$buy = null;
			$sell_tmp = M('trade')->where(array('status'=>0,'type'=>2,'market'=>$market))->field('id,price,sum(num-deal)as nums')->group('price')->order('price asc')->limit($limt)->select();
			$sell = array_reverse($sell_tmp);
		}

		if ($buy) {
			foreach ($buy as $k => $v) {
				$data['depth']['buy'][$k] = array(floatval($v['price'] * $operator), floatval($v['nums'] * 1));
			}
		}
		else {
			$data['depth']['buy'] = '';
		}

		if ($sell) {
			foreach ($sell as $k => $v) {
				$data['depth']['sell'][$k] = array(floatval($v['price'] * $operator), floatval($v['nums'] * 1));
			}
		}
		else {
			$data['depth']['sell'] = '';
		}

		$data_getDepth[$market][$trade_moshi] = $data;

		if ($ajax) {
			exit(json_encode($data));
		}
		else {
			return $data;
		}
	}

	public function getEntrustAndUsercoin($market = NULL, $jjcoin=NULL, $ajax = 'json')
	{


		// 过滤非法字符----------------S

		if (checkstr($market)) {
			$this->error('您输入的信息有误！');
		}

		// 过滤非法字符----------------E


		if (!userid()) {
			return null;
		}

		if (!C('market')[$market]) {
			return null;
		}
		
		if(empty($jjcoin)){
			$jjcoin = "btc";
		}
		$xnb = explode('_', $market)[0];
		$rmb = explode('_', $market)[1];
		$operator = 1;//getoperator($rmb,$jjcoin);
		
		$result = M('trade')->where(array('status'=>0,'market'=>$market,'userid'=>userid()))->field('id,price,num,deal,mum,type,fee,status,addtime')->order('id desc')->limit(10)->select();

		if ($result) {
			foreach ($result as $k => $v) {
				$data['entrust'][$k]['addtime'] = date('m-d H:i:s', $v['addtime']);
				$data['entrust'][$k]['type'] = $v['type'];
				$data['entrust'][$k]['price'] = $v['price'] * $operator;
				$data['entrust'][$k]['num'] = round($v['num'], 6);
				$data['entrust'][$k]['deal'] = round($v['deal'], 6);
				$data['entrust'][$k]['id'] = round($v['id']);
			}
		}
		else {
			$data['entrust'] = null;
		}

		$userCoin = M('UserCoin')->where(array('userid' => userid()))->find();

		if ($userCoin) {
			
			
			$data['usercoin']['xnb'] =number_format($userCoin[$xnb],6,'.','');// floatval($userCoin[$xnb]);
			$data['usercoin']['xnbd'] =number_format($userCoin[$xnb . 'd'],6,'.','');// floatval($userCoin[$xnb . 'd']);
			$data['usercoin'][$rmb] =number_format($userCoin[$rmb],6,'.','');// intval($userCoin[$rmb]*100)/100;
			$data['usercoin'][$rmb.'d'] = number_format($userCoin[$rmb . 'd'],6,'.','');//floatval($userCoin[$rmb . 'd']);
		}
		else {
			$data['usercoin'] = null;
		}
		// var_dump(($data['usercoin']));
		// 处理开盘闭盘交易时间===开始
		$times = date('G',time());
		$minute = date('i',time());
		$minute = intval($minute);
		$data['time_state'] = 0;
		if(( $times <= C('market')[$market]['start_time'] && $minute< intval(C('market')[$market]['start_minute']))|| ( $times > C('market')[$market]['stop_time'] && $minute>= intval(C('market')[$market]['stop_minute'] ))){
			$data['time_state'] = 1;
		}
		if(( $times <C('market')[$market]['start_time'] )|| $times > C('market')[$market]['stop_time']){
			$data['time_state'] = 1;
		}else{
			if($times == C('market')[$market]['start_time']){
				if( $minute< intval(C('market')[$market]['start_minute'])){
					$data['time_state'] = 1;
				}
			}elseif($times == C('market')[$market]['stop_time']){
				if(( $minute > C('market')[$market]['stop_minute'])){
					$data['time_state'] = 1;
				}
			}
		}
		// 处理周六周日是否可交易===开始
		$weeks = date('N',time());
		if(!C('market')[$market]['agree6']){
			if($weeks == 6){
				$data['time_state'] = 1;
			}
		}
		if(!C('market')[$market]['agree7']){
			if($weeks == 7){
				$data['time_state'] = 1;
			}
		}
		//处理周六周日是否可交易===结束
		if ($ajax) {
			exit(json_encode($data));
		}
		else {
			return $data;
		}
	}
	
	public function getEntrustHistory($market = NULL, $ajax = 'json')
	{


		// 过滤非法字符----------------S

		if (checkstr($market)) {
			$this->error('您输入的信息有误！');
		}

		// 过滤非法字符----------------E


		if (!userid()) {
			return null;
		}

		if (!C('market')[$market]) {
			return null;
		}
		
		$where = array();
		$where['status'] = array('neq',0);
		$where['market'] = $market;
		$where['userid'] = userid();
		$result = M('trade')->where($where)->field('id,price,num,deal,mum,type,fee,status,addtime')->order('id desc')->limit(10)->select();

		if ($result) {
			foreach ($result as $k => $v) {
				$data['entrust'][$k]['addtime'] = date('m-d H:i:s', $v['addtime']);
				$data['entrust'][$k]['type'] = $v['type'];
				$data['entrust'][$k]['price'] = $v['price'] * 1;
				$data['entrust'][$k]['num'] = round($v['num'], 6);
				$data['entrust'][$k]['deal'] = round($v['deal'], 6);
				$data['entrust'][$k]['id'] = round($v['id']);
				if($v['status'] == 1){
					$data['entrust'][$k]['status'] = "已完成";
				}elseif($v['status'] == 2){
					$data['entrust'][$k]['status'] = "已撤销";
				}
			}
		}
		else {
			$data['entrust'] = null;
		}
		
		if ($ajax) {
			exit(json_encode($data));
		}
		else {
			return $data;
		}
	}
	function curl_post($url){
		$ch = curl_init();
 		$res= curl_setopt ($ch, CURLOPT_URL,$url);
 		curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
 		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
 		curl_setopt($ch, CURLOPT_BINARYTRANSFER, true) ; // 在启用 CURLOPT_RETURNTRANSFER 时候将获取数据返回 
 		curl_setopt ($ch, CURLOPT_RETURNTRANSFER, 1);
 		$result = curl_exec ($ch);
 		curl_close($ch);
 		if ($result == NULL) {
 			return 0;
 		}
 		return $result;
	}
	function down($path){

		// $path="http://cncoinlala.oss-ap-southeast-1.aliyuncs.com/pic/banner-q.jpg";
		$res_filepath = $path;  
    	$file_basename = basename($path);
    	$file_filesize = filesize($res_filepath); 
    
    	$ret = $this->curl_post($path);
		//需将内容显示修改为文件下载

		header("Content-Type: application/force-download");
		header("Content-Disposition: attachment; filename=$file_basename"); 
		echo $ret;
    	
		
	}
 
}

?>