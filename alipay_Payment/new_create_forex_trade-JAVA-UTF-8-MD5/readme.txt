
            ╭───────────────────────╮
    ────┤     Alipay Code Structure Sample             ├────
            ╰───────────────────────╯ 
　                                                                  
　       API ：New cross border（create_forex_trade）
　 　    Demo Version：3.4
         development language：JAVA
         Default eEdition：JDK 1.8
         Copyright：Alipay (China) network technology co. LTD
　       Prodcers：Technical support of Aliay Merchant division

    ─────────────────────────────────

───────
 Code File Structure
───────

create_forex_trade-JAVA-UTF-8-MD5-new
  │
  ├src┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈Source Folder
  │  │
  │  ├com.alipay.config
  │  │  │
  │  │  └AlipayConfig.java┈┈┈┈┈Base configuration class
  │  │
  │  ├com.alipay.util
  │  │  │
  │  │  ├AlipayCore.java┈┈┈┈┈┈Alipay pulbic function class
  │  │  │
  │  │  ├AlipayNotify.java┈┈┈┈┈Alipay notification processing class
  │  │  │
  │  │  ├AlipaySubmit.java┈┈┈┈┈Alipay API request submit class 
  │  │  │
  │  │  └UtilDate.java┈┈┈┈┈┈┈Alipay customized class of order
  │  │
  │  ├com.alipay.md5
  │  │  │
  │  │  └MD5.java ┈┈┈┈┈┈┈┈┈MD5 algorithm class
  │
  ├WebRoot┈┈┈┈┈┈┈┈┈┈┈┈┈┈Web folder
  │  │
  │  ├alipayapi.jsp┈┈┈┈┈┈┈┈┈Alipay API portal
  │  │
  │  ├index.jsp┈┈┈┈┈┈┈┈┈┈┈Alipay debug page
  │  │
  │  ├notify_url.jsp ┈┈┈┈┈┈┈┈files of server asynchronous notification
  │  │
  │  └return_url.jsp ┈┈┈┈┈┈┈┈files of page redirect synchronous notification
  │  │
  │  └WEB-INF
  │   	  │
  │      └lib（Import below jars if they are not exist in the project ）
  │   	     │
  │   	     ├commons-codec-1.6.jar
  │   	     │
  │   	     ├commons-logging-1.1.1.jar
  │   	     │
  │   	     └dom4j-1.6.1.jar
  │
  └readme.txt ┈┈┈┈┈┈┈┈┈Instruction

※NOTICE※
Class need to be configured：
AlipayConfig.java

─────────
 Methods in the class
─────────

AlipayCore.java

public static Map paraFilter(Map<String, String> sArray)
Function：remove the null value and sign,sign_type parameters of the string
Input   ：Map<String, String> sArray to-be signed string
Output  ：Map<String, String> new string which remove the null value and sign,sign_type parameter 

public static String createLinkString(Map<String, String> params)
Function：Connect parameters with "&" in "key=value" format
Input   ：Map<String, String> params to-be connected parameters
Output  ：pre-string which parameters connected

public static void logResult(String sWord)
Function：Write log，facilitate testing（Can store in the database,it depends the requirement）
Input   ：String sWord contents to-be recorded in the log

public static String getAbstract(String strFilePath, String file_digest_type) throws IOException
Function：Generate file abstract
Input   ：String strFilePath file path
          String file_digest_type  
Output  ：String file digest

┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉

MD5.java

public static String sign(String text, String key, String input_charset)
Function：MD5 sign
Input   ：String text unencrypted string
          String key private key
          String input_charset encoding format
Output  ：String sign value

public static boolean verify(String text, String sign, String key, String input_charset)
Function：MD5 verification
Input   ：String text unencrypted string
          String sign sign value of alipay
          String key private key
          String input_charset encoding Format
Output  ：boolean verification result

┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉




AlipayNotify.java

public static boolean verify(Map<String, String> params)
Function：Get verification status with input value
Input   ：Map<String, String>  Params Returned parameters by notification
Output  ：boolean verification result

private static boolean getSignVeryfy(Map<String, String> Params, String sign)
Function：Get sign status with input value
Input   ：Map<String, String>  Params Returned parameters by notification
          String sign aliapay sign value
Output  ：boolean sign status

private static String verifyResponse(String notify_id)
Function：Get the remote server ATN results,verify the respond URL
Input   ：String notify_id verify notification id
Output  ：String verification value

private static String checkUrl(String urlvalue)
Function：Get the remote server ATN results
Input   ：String urlvalue Designate URL path
Output  ：String ANT String returned from server

┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉

AlipaySubmit.java

public static String buildRequestMysign(Map<String, String> sPara)
Function：Generate sign value
Input   ：Map<String, String> sPara to-be signed parameters
Output  ：String sign value

private static Map<String, String> buildRequestPara(Map<String, String> sParaTemp)
Function：Generate request parameters
Input   ：Map<String, String> sParaTemp pre request parameters
Output  ：Map<String, String> request parameters

public static String buildRequest(Map<String, String> sParaTemp, String strMethod, String strButtonName)
Function：build request，construct with HTML format（default）
Input   ：Map<String, String> sParaTemp request parameters
          String strMethod submit methods。two options：post、get
          String strButtonName button name
Output  ：String submit form

public static String query_timestamp()
Function：Anti-phishing，Call API to get the query_timestamp function
Output：String TimeStamp String

┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉

UtilDate.java

public  static String getOrderNum()
Function：Generate Order number automatically，FormatyyyyMMddHHmmss
Output：String Order number

public  static String getDateFormatter()
Function：Get date，Format：yyyy-MM-dd HH:mm:ss
Output：String Date

public static String getDate()
Function：Get date，formate：yyyyMMdd
Output：String Date

public static String getThree()
Function：Generate Random triple digit
Output：String Random triple digit

┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉


──────────
 Contact
──────────

If there is any issue during integration,please contact overseas_support@service.alibaba.com






