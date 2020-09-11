
<%
/* *
 *���ܣ������յ����׽ӿڽ���ҳ
 *�汾��3.4
 *�޸����ڣ�2019-01-08
 *˵����
 *���´���ֻ��Ϊ�˷����̻����Զ��ṩ���������룬�̻����Ը����Լ���վ����Ҫ�����ռ����ĵ���д,����һ��Ҫʹ�øô��롣
 *�ô������ѧϰ���о�֧�����ӿ�ʹ�ã�ֻ���ṩһ���ο���

 *************************ע��*****************
 *������ڽӿڼ��ɹ������������⣬���԰��������;�������
 *1��֧�����ģ�https://global.alipay.com/service/service.htm��
 *2��֧�����䣨overseas_support@service.alibaba.com��
     ҵ��֧������(global.service@alipay.com)
 *�����ʹ����չ����,�밴�ĵ�Ҫ��,������ӵ�parameter���鼴�ɡ�
 **********************************************
 *function:the access page of cross border payment interface 
 *version:3.4
 *modify date:2019-01-08
 *instructions:
 *This code below is a sample demo for merchants to do test.Merchants can refer to the integration documents and write your own code to fit your website.Not necessarily to use this code.  
 *Alipay provide this code for you to study and research on Alipay interface, just for your reference.

  *************************note*****************
 *If you have problem during integration��we provide the below ways to help 
  
  *1��Development documentation center��https://global.alipay.com/service��
  *2��Technical assitant email��overseas_support@service.alibaba.com��
      Business assitant email (global.service@alipay.com)
  
  *If you want to use the extension,please add parameters according to the documentation.
 **********************************************
 */
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.alipay.config.*"%>
<%@ page import="com.alipay.util.*"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Map"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>֧�����¾����յ����׽ӿ�new_create_forex_trade</title>
</head>
<%
		////////////////////////////////////�������//////////////////////////////////////
        ////////////////////////////////////request parameter////////////////////////////////////
        //�̻������ţ��̻���վ����ϵͳ��Ψһ�����ţ�����
	    //merchant order no,the unique transaction ID specified in merchant system ,not null
        String out_trade_no = new String(request.getParameter("WIDout_trade_no").getBytes("ISO-8859-1"),"UTF-8");

        //�������ƣ�����
	    //order name  ,not null
        String subject = new String(request.getParameter("WIDsubject").getBytes("ISO-8859-1"),"UTF-8");

        //���������
	    //payment amount in foreign currency ,not null
        String total_fee = new String(request.getParameter("WIDtotal_fee").getBytes("ISO-8859-1"),"UTF-8");

        //��Ʒ�������ɿ�
	    //product description ,not null 
        String body = new String(request.getParameter("WIDbody").getBytes("ISO-8859-1"),"UTF-8");
        
        //���֣����ɿ�
	    //The settlement currency code the merchant specifies in the contract. ,not null 
        String currency = new String(request.getParameter("WIDcurrency").getBytes("ISO-8859-1"),"UTF-8");
        
	    //product_code�����ɿ�
	    //product_code could not be nullable for new_cross_border payment
        String product_code = new String(request.getParameter("WIDproduct_code").getBytes("ISO-8859-1"),"UTF-8");
	
	    //split_fund_info could be nullable if the merchant does not need split fund to domerstic account; in JSON format
        //String split_fund_info = new String(request.getParameter("WIDsplit_fund_info").getBytes("ISO-8859-1"),"UTF-8");
        
        //trade_information : Information about the trade industry.
  		String trade_information = new String(request.getParameter("WIDtrade_information").getBytes("ISO-8859-1"),"UTF-8");

		//////////////////////////////////////////////////////////////////////////////////
		
		//������������������
		//package the request parameters
		Map<String, String> sParaTemp = new HashMap<String, String>();
		sParaTemp.put("service", AlipayConfig.service);
        sParaTemp.put("partner", AlipayConfig.partner);
        sParaTemp.put("_input_charset", AlipayConfig.input_charset);
		sParaTemp.put("notify_url", AlipayConfig.notify_url);
		sParaTemp.put("return_url", AlipayConfig.return_url);
		sParaTemp.put("refer_url", AlipayConfig.refer_url);
		sParaTemp.put("out_trade_no", out_trade_no);
		sParaTemp.put("subject", subject);
		sParaTemp.put("total_fee", total_fee);
		sParaTemp.put("body", body);
		sParaTemp.put("currency", currency);
		sParaTemp.put("product_code", product_code);
		//split_fund_info = split_fund_info.replaceAll("\"", "'");
		//sParaTemp.put("split_fund_info", split_fund_info);
		
		trade_information = trade_information.replaceAll("\"", "'");
		sParaTemp.put("trade_information", trade_information);
			
		//����ҵ������������߿����ĵ�����Ӳ���
		//To add other parameters,please refer to development documents.Document address:https://global.alipay.com/service
		//��sParaTemp.put("������","����ֵ");
		//eg:sParaTemp.put("parameter name","parameter value");	
			
		//��������
		//build request
		String sHtmlText = AlipaySubmit.buildRequest(sParaTemp,"get","OK");
		out.println(sHtmlText);
	%>
<body>
</body>
</html>
