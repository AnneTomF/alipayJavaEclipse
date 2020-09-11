<%
	/* *
	 *功能：支付宝即时到账外币交易同步退款接口调试入口页面
	 *版本：3.3
	 *日期：2012-08-17
	 *说明：
	 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
	 */
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
	<title>同步退款接口</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
*{
	margin:0;
	padding:0;
}
ul,ol{
	list-style:none;
}
.title{
    color: #ADADAD;
    font-size: 14px;
    font-weight: bold;
    padding: 8px 16px 5px 10px;
}
.hidden{
	display:none;
}

.new-btn-login-sp{
	border:1px solid #D74C00;
	padding:1px;
	display:inline-block;
}

.new-btn-login{
    background-color: #ff8c00;
	color: #FFFFFF;
    font-weight: bold;
	border: medium none;
	width:82px;
	height:28px;
}
.new-btn-login:hover{
    background-color: #ffa300;
	width: 82px;
	color: #FFFFFF;
    font-weight: bold;
    height: 28px;
}
.bank-list{
	overflow:hidden;
	margin-top:5px;
}
.bank-list li{
	float:left;
	width:153px;
	margin-bottom:5px;
}

#main{
	width:750px;
	margin:0 auto;
	font-size:14px;
	font-family:'宋体';
}
#logo{
	background-color: transparent;
    background-image: url("images/new-btn-fixed.png");
    border: medium none;
	background-position:0 0;
	width:166px;
	height:35px;
    float:left;
}
.red-star{
	color:#f00;
	width:10px;
	display:inline-block;
}
.null-star{
	color:#fff;
}
.content{
	margin-top:5px;
}

.content dt{
	width:160px;
	display:inline-block;
	text-align:right;
	float:left;
	
}
.content dd{
	margin-left:100px;
	margin-bottom:5px;
}
#foot{
	margin-top:10px;
}
.foot-ul li {
	text-align:center;
}
.note-help {
    color: #999999;
    font-size: 12px;
    line-height: 130%;
    padding-left: 3px;
}

.cashier-nav {
    font-size: 14px;
    margin: 15px 0 10px;
    text-align: left;
    height:30px;
    border-bottom:solid 2px #CFD2D7;
}
.cashier-nav ol li {
    float: left;
}
.cashier-nav li.current {
    color: #AB4400;
    font-weight: bold;
}
.cashier-nav li.last {
    clear:right;
}
.alipay_link {
    text-align:right;
}
.alipay_link a:link{
    text-decoration:none;
    color:#8D8D8D;
}
.alipay_link a:visited{
    text-decoration:none;
    color:#8D8D8D;
}
</style>
</head>
<body text=#000000 bgColor="#ffffff" leftMargin=0 topMargin=4>
	<div id="main">
		<div id="head">
            <dl class="alipay_link">
                <a target="_blank" href="http://www.alipay.com/"><span>Alipay Homepage</span></a>|
                <a target="_blank" href="https://b.alipay.com/home.htm"><span>Merchant Services</span></a>|
                <a target="_blank" href="http://help.alipay.com/support/index_sh.htm"><span>Help Center</span></a>
            </dl>
            <span class="title">forex_refund_issync</span>
		</div>
        <div class="cashier-nav">
            <ol>
				<li class="current">1、confirm information →</li>
				<li>2、click ok →</li>
				<li class="last">3、confirm finish</li>
            </ol>
        </div>
        <form name=alipayment action=alipayapi.jsp method=post target="_blank">
            <div id="body" style="clear:left">
                <dl class="content">
										<dt>out_return_no：</dt>
					<dd>
						<span class="null-star">*</span>
						<input size="30" name="WIDout_return_no" />
						<span>required
</span>
					</dd>
					<dt>out_trade_no：</dt>
					<dd>
						<span class="null-star">*</span>
						<input size="30" name="WIDout_trade_no" />
						<span>required
</span>
					</dd>
					<dt>return_amount：</dt>
					<dd>
						<span class="null-star">*</span>
						<input size="30" name="WIDreturn_amount" />
						<span>required
</span>
					</dd>
					<dt>gmt_return：</dt>
					<dd>
						<span class="null-star">*</span>
						<input size="30" name="WIDgmt_return" />
						<span>required
</span>
					</dd>
					<dt> refund currency：</dt>
					<dd>
						<span class="null-star">*</span>
						<input size="30" name="WIDcurrency" />
						<span>required
</span>
					</dd>
					<dt>reason：</dt>
					<dd>
						<span class="null-star">*</span>
						<input size="30" name="WIDreason" />
						<span></span>
					</dd>
					
				
                    <dt></dt>
                    <dd>
                        <span class="new-btn-login-sp">
                            <button class="new-btn-login" type="submit" style="text-align:center;">ok</button>
                        </span>
                    </dd>
                </dl>
            </div>
		</form>
        <div id="foot">
			<ul class="foot-ul">
				<li><font class="note-help">If you click the OK button, it means that you agree to the execution of this time。 </font></li>
				<li>
					Alipay all rights reserved. 2011-2015 ALIPAY.COM 
				</li>
			</ul>
		</div>
	</div>
</body>
</html>