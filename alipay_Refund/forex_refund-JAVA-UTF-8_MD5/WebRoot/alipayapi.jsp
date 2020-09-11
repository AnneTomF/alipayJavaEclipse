<%
/* *
 *功能：国际专用forex_refund接入页
 *版本：3.3
 *日期：2012-08-14
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。

 *************************注意*****************
 *如果您在接口集成过程中遇到问题，可以按照下面的途径来解决
 *1、商户服务中心（https://b.alipay.com/support/helperApply.htm?action=consultationApply），提交申请集成协助，我们会有专业的技术工程师主动联系您协助解决
 *2、商户帮助中心（http://help.alipay.com/support/232511-16307/0-16307.htm?sh=Y&info_type=9）
 *3、支付宝论坛（http://club.alipay.com/read-htm-tid-8681712.html）
 *如果不想使用扩展功能请把扩展功能参数赋空值。
 **********************************************
 */
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.alipay.config.*"%>
<%@ page import="com.alipay.util.*"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Map"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>支付宝国际专用forex_refund</title>
	</head>
	<%
		////////////////////////////////////请求参数//////////////////////////////////////
		//String notify_url = "http://c9682a37.ngrok.io/Forex_Refund-JAVA-UTF-8/notify_url.jsp";//asycn refund moderl
		//需http://格式的完整路径，不允许加?id=123这类自定义参数
		
		//The original partner transaction id given in the payment request
		String out_return_no = new String(request.getParameter("WIDout_return_no").getBytes("ISO-8859-1"),"UTF-8");
		//必填

		//The refund order id
		String out_trade_no = new String(request.getParameter("WIDout_trade_no").getBytes("ISO-8859-1"),"UTF-8");
		//必填

		//refund_amount
	//return_rmb_amount
		String return_amount = new String(request.getParameter("WIDreturn_amount").getBytes("ISO-8859-1"),"UTF-8");
		//String return_rmb_amount = new String(request.getParameter("WIDreturn_rmb_amount").getBytes("ISO-8859-1"),"UTF-8");
		
		String gmt_return = new String(request.getParameter("WIDgmt_return").getBytes("ISO-8859-1"),"UTF-8");
		//必填

		// refund currency
		String currency = new String(request.getParameter("WIDcurrency").getBytes("ISO-8859-1"),"UTF-8");
		//必填

		//The reason of refund

		String reason = new String(request.getParameter("WIDreason").getBytes("ISO-8859-1"),"UTF-8");
		//String split_fund_info = new String(request.getParameter("WIDsplit_fund_info").getBytes("ISO-8859-1"),"UTF-8");
		//////////////////////////////////////////////////////////////////////////////////
		
		
		//////////////////////////////////////////////////////////////////////////////////
		
		//把请求参数打包成数组
		Map<String, String> sParaTemp = new HashMap<String, String>();
		sParaTemp.put("service", "forex_refund");
		//sParaTemp.put("service", "alipay.acquire.overseas.spot.refund");
        sParaTemp.put("partner", AlipayConfig.partner);
        sParaTemp.put("_input_charset", AlipayConfig.input_charset);
	//	sParaTemp.put("notify_url", notify_url);
		sParaTemp.put("out_return_no", out_return_no);
		sParaTemp.put("out_trade_no", out_trade_no);
		sParaTemp.put("return_amount", return_amount);
		//sParaTemp.put("return_rmb_amount", return_rmb_amount);
		sParaTemp.put("gmt_return", gmt_return);
		sParaTemp.put("currency", currency);
		sParaTemp.put("reason", reason);
		sParaTemp.put("product_code", AlipayConfig.product_code);
		sParaTemp.put("is_sync", AlipayConfig.is_sync);// async model, pls get rid of it.
		sParaTemp.put("product_code", AlipayConfig.product_code);
		//split_fund_info = split_fund_info.replaceAll("\"", "'");
		
		//建立请求
		String sHtmlText = AlipaySubmit.buildRequest("", "", sParaTemp);
		out.println(sHtmlText);
	%>
	<body>
	</body>
</html>
