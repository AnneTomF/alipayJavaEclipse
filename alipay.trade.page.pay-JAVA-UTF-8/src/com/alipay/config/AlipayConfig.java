package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016101100663861";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCksFwcms3wzRAzMFhkXqTbcnX5TXX06CVpS7ggWB6Kd4bcvvKjEOFKVK8J/uTaaTlVyplCi3PCDhIKV48kp3fhO7aLEgDZriNpSmv1iv+8GX3LdaWvFCN8egTPXz9q/KRBr+XWdD0QIWLgwU+LzWbURGbJiKqibb47mVHtbwHcTFcDlW039yn57oIt+xRmafV6WqmQUd9jnRPJMn2eo++IVdnDV2DG+LBkZdMpH+7DmbUoD0Kk+uXKu0EHsOCXtcFQuslfDwUaGYo4CAO/2D5tbZ5OOwSzyHcg7v+OBZaGqQI5vPvvx7VD+/NMkdnk1XtxLd9Tmjmu4/xqdD9MeRYpAgMBAAECggEAFKGLSIIUHoBx8RezWw+IM32JTevoRP/3/9LehB7F5K7IlErPdqIctwUY0HXAEaRw7FBvFqkFnV/J3sXNRtg76lliqtVcieiIwx3xnFcHZncDDUP1t5McRvG6PIhAF5UCtr/kWRNCuwyTqHhPEMJwiVLwVXrrdWGuHSU94DKx1vj9xzQQ/rzWM0fFsVWgB4PpvCAuZJeofT3XX7GuLUqMsTFZX0LWKQ181lUUWBNRoXIWouuMpRNqLmBnptD2fUh28JDx0crh3OI/fKKFTc32gbnYThv2Wm2eGMlZ76RaAMtHuuM7pCKjmmCz3OL27sC+tth1rp3wdJWTJu1OUAPa6QKBgQDWbf6q6BVAKltWr/VVhBD+mEpSud04bibZC6anO/9cRPFHMSZ5P3VU9GIeMhrHm99KnyVu/ZPm33zJ1DTMiE1MpNIXzb4YkQEOskK0Bsm545NinxvwmmZo8tP7epd6XQo9d+jLg5vijKhpHXFuRwmkgEs0a+J5XCUULfch0RLk5wKBgQDEncNnnHgtyGdsULSxkLdXyz3ZFv/v9TO7OP33OGaGTL77MnUVzl5RJz1PJwzVL7grJIDSMzffXqjbIYFGsPXzTG9SwMCgdcJ48Cln6Nl/3veK8ubQDImDyLh1u409fbUz8fFrv9qCjElOBEHqONc0z1wiW+lrzhlHguHa5ki6bwKBgA3LVa6472UJVIbnGuk9bbpzIZTg0BJpQ6aC0V3AxlSxOrRRvR/frTSh5A39OyvMIzkxs77IIVOg3O4+8IaX3iEoGTveyHPcIC1J2nCqXx/OPBUEF1ALHrtxo6Fx6Xy9r4L0y80L0mNomQzqD/oAJ+alOjFNH2yfOONrcZKDWKvRAoGAR7hMqSTYacrqfwZJg2QInQvUObY8EendvvOhIGcAbwjbuYHEV/n5SZ0IrjDOa42GnqYoH4TzYpWC/rwQDhtK/D7rdMI/Acky8S6Zy/+SJyTMI3FLZKTOHLZBIyEQ+lc6nAIrUGShbnGB4+WFrcyiI+9n6ligouSBMCa8AD90VB0CgYEAvd5SWz20z/xzwyklI8MefFpoCTn5Q/+Mc7ZH9NlH44OwhIJ8bOY8E5Rf2TwtnI0MJ82oGk/0PWgqphF2LxYq3hDkhfBbGIYJkCQk4mOJgwVgh1erSbHVZEQhThXgZf8Jgli7X3uTha+4DIBboZjwMOS46/iq9U1DilD7Xj1NpYg=";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqCZxPbaDyemkDISoZ+Og7nFS7B738QI7/imqQigyfmxe91l2C6+ZwnjblKiqKeVOI3hrkhny0dT3VRLH+27qoFqvluJ14RRDGlMmRpPTuJeHYplgEZkXWikpqMQihxy+SxEJ6ub1JKWUXwSU0piJHqEICnurAtY1cOddFmNBGBFX+J32CLGtRtyXbDIVMg2/4MXevX4AAwZTGtdZs3UY9Y6e9eSd85yhFwLY4ZrjH8Ov0PO8CeKexRt3IWC0s6Ffp5V4Mn3bCtehbNCH0JWm+k9iNxIrL55FC7yHjBMH54JVtuELRkFTPPil4U+nCij2gaJuZviRXZi5WYWx1N4PvwIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://localhost:8080/alipay.trade.page.pay-JAVA-UTF-8/";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://localhost:8080/alipay.trade.page.pay-JAVA-UTF-8/";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

