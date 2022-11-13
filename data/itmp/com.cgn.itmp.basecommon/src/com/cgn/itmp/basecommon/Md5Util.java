package com.cgn.itmp.basecommon;


import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;

/**
 * 
 * @author ruijun_suo
 *
 */

public class Md5Util {
	

	public static final String ALGORITHM_MD5 = "MD5";
	private static char hexDigits[] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c',
			'd', 'e', 'f' };

	/**
	 * 根据传入的字符串，生成对应的MD5值
	 * @param plainText：字符串原文
	 * @return
	 */
	public static String getMd5FromStr(String plainText) {
		StringBuffer buf = new StringBuffer("");
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");

			md.update(plainText.getBytes());
			byte b[] = md.digest();

			int i;

			for (int offset = 0; offset < b.length; offset++) {
				i = b[offset];
				if (i < 0)
					i += 256;
				if (i < 16)
					buf.append("0");
				buf.append(Integer.toHexString(i));
			}
		} catch (NoSuchAlgorithmException e) {
		}
		return buf.toString();
	}
	
	/**
	 * 根据传入的字节数组，生成对应的MD5值
	 * @param plainText：字节数组原文
	 * @return
	 */
	public static String getMD5FromByte(byte[] plainText) {
		String md5Value = null;
		
		try {
			java.security.MessageDigest md = java.security.MessageDigest.getInstance("MD5");
			md.update(plainText);
			byte tmp[] = md.digest(); // MD5 的计算结果是一个 128 位的长整数，用字节表示就是 16 个字节
			char str[] = new char[16 * 2]; // 每个字节用 16 进制表示的话，使用两个字符，所以表示成 16 进制需要 32 个字符
			int k = 0; // 表示转换结果中对应的字符位置
			for (int i = 0; i < 16; i++) { // 从第一个字节开始，对 MD5 的每一个字节转换成 16 进制字符的转换
				byte byte0 = tmp[i]; // 取第 i 个字节
				str[k++] = hexDigits[byte0 >>> 4 & 0xf]; // 取字节中高 4 位的数字转换,>>>为逻辑右移，将符号位一起右移
				str[k++] = hexDigits[byte0 & 0xf]; // 取字节中低 4 位的数字转换
			}
			md5Value = new String(str); // 换后的结果转换为字符串

		} catch (Exception e) {
		}
		return md5Value;
	}

	/**
	 * 计算输入流MD5
	 * 
	 * @param stream
	 * @return
	 */
	public static String streamToMD5(InputStream stream) {
		try {
			MessageDigest digester = MessageDigest.getInstance(ALGORITHM_MD5);
			byte[] buffer = new byte[1024];
			int numRead = 0;
			while ((numRead = stream.read(buffer)) > 0) {
				digester.update(buffer, 0, numRead);
			}
			byte[] dg = digester.digest();
			return bufferToHex(dg, 0, dg.length);
		} catch (Exception e) {
		}
		return null;
	}

	// byte[] to hex
	private static String bufferToHex(byte[] bf, int offset, int len) {
		StringBuffer buf = new StringBuffer(2 * len);
		for (int i = offset, k = offset + len; i < k; ++i) {
			appendHexPair(bf[i], buf);
		}
		return buf.toString();
	}

	// byte to hex
	private static void appendHexPair(byte bt, StringBuffer buf) {

		char c0 = hexDigits[((bt & 0xF0) >> 4)];
		char c1 = hexDigits[(bt & 0xF)];
		buf.append(c0);
		buf.append(c1);
	}
	
	public static void main(String[] args){
    	String version = "1.0"; 
    	String appId = "ITMP";
    	String appkey = "0060c338064441a9aa7e658418630c79";
    	String appsecret = "dfe2fbc314724b27ac34bbd0b3f318b7";
    	String appMethod = "/User/getUserByLoginName";
    	String timestamp = "2020-12-25 16:20:00";
    	
    	String str = version + ", " + appId +  ", " + appkey  +  ", " +  appsecret  +  ", " +  appMethod  +  ", " + timestamp;
    	
    	String md5Str = getMd5FromStr(Base64.getEncoder().encodeToString(str.getBytes()));
		
		System.out.println(md5Str);
	}
}
