package com.cgn.itmp.basecommon;


import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.json.JSONArray;
import org.json.JSONObject;

/**
 * 提供些常用的字符串相关的工具方法
 */
public final class StringUtil {

    

    /**
     * 把string array or list用给定的符号symbol连接成一个字符串
     *
     * @param list   需要处理的列表
     * @param symbol 链接的符号
     * @return 处理后的字符串
     */
    public  static String joinString(List list, String symbol) {
        String result = "";
        if (list != null) {
            for (Object o : list) {
                String temp = o.toString();
                if (temp.trim().length() > 0)
                    result += (temp + symbol);
            }
            if (result.length() > 1) {
                result = result.substring(0, result.length() - 1);
            }
        }
        return result;
    }

    /**
     * 判定第一个字符串是否等于的第二个字符串中的某一个值
     *
     * @param str1 测试的字符串
     * @param str2 字符串数组(用,分割)
     * @return 是否包含
     */
    public  static boolean requals(String str1, String str2) {
        if (str1 != null && str2 != null) {
            str2 = str2.replaceAll("\\s*", "");
            String[] arr = str2.split(",");
            for (String t : arr) {
                if (t.equals(str1.trim())) {
                    return true;
                }
            }
        }
        return false;
    }

    /**
     * 判定第一个字符串是否等于的第二个字符串中的某一个值
     *
     * @param str1  测试的字符串
     * @param str2  字符串数组
     * @param split str2字符串的分隔符
     * @return 是否包含
     */
    public  static boolean requals(String str1, String str2, String split) {
        if (str1 != null && str2 != null) {
            str2 = str2.replaceAll("\\s*", "");
            String[] arr = str2.split(split);
            for (String t : arr) {
                if (t.equals(str1.trim())) {
                    return true;
                }
            }
        }
        return false;
    }


    /**
     * 字符串省略截取
     * 字符串截取到指定长度size+...的形式
     *
     * @param subject 需要处理的字符串
     * @param size    截取的长度
     * @return 处理后的字符串
     */
    public  static String subStringOmit(String subject, int size) {
        if (subject != null && subject.length() > size) {
            subject = subject.substring(0, size) + "...";
        }
        return subject;
    }


    /**
     * 截取字符串　超出的字符用symbol代替
     *
     * @param str    需要处理的字符串
     * @param len    字符串长度
     * @param symbol 最后拼接的字符串
     * @return 测试后的字符串
     */
    public  static String subStringSymbol(String str, int len, String symbol) {
        String temp = "";
        if (str != null && str.length() > len) {
            temp = str.substring(0, len) + symbol;
        }
        return temp;
    }


    /**
     * 把string array or list用给定的符号symbol连接成一个字符串
     *
     * @param array  需要处理的字符串数组
     * @param symbol 链接的符号
     * @return 处理后的字符串
     */
    public  static String joinString(String[] array, String symbol) {
        String result = "";
        if (array != null) {
            for (String temp : array) {
                if (temp != null && temp.trim().length() > 0)
                    result += (temp + symbol);
            }
            if (result.length() > 1 && CheckUtil.valid(symbol)) {
                result = result.substring(0, result.length() - symbol.length());
            }
        }
        return result;
    }

    /**
     * 将一组字符才以指定的字符链接起来
     * @param linkStr 链接字符
     * @param strs  需要连接的动态参数
     * @return
     */
    public  static String join(String linkStr,String ... strs){
        StringBuffer result = new StringBuffer();
            for (String temp : strs) {
                if (temp != null && temp.trim().length() > 0)
                    result.append(temp + linkStr);
            }
            if (result.length() > 1 && CheckUtil.valid(linkStr)) {
                return result.substring(0, result.length() - linkStr.length());
            }
        return result.toString();
    }


    /**
     * 隐藏邮件地址前缀。
     *
     * @param email - EMail邮箱地址 例如: ssss@koubei.com 等等...
     * @return 返回已隐藏前缀邮件地址, 如 *********@koubei.com.
     */
    public  static String getHideEmailPrefix(String email) {
        if (null != email) {
            int index = email.lastIndexOf('@');
            if (index > 0) {
                email = repeat("*", index).concat(email.substring(index));
            }
        }
        return email;
    }

    /**
     * repeat - 通过源字符串重复生成N次组成新的字符串。
     *
     * @param src - 源字符串 例如: 空格(" "), 星号("*"), "浙江" 等等...
     * @param num - 重复生成次数
     * @return 返回已生成的重复字符串
     */
    public  static String repeat(String src, int num) {
        StringBuilder s = new StringBuilder();
        for (int i = 0; i < num; i++)
            s.append(src);
        return s.toString();
    }

    /**
     * 截取字符串左侧的Num位截取到末尾
     *
     * @param str1 处理的字符串
     * @param num  开始位置
     * @return 截取后的字符串
     */
    public  static String ltrim(String str1, int num) {
        String tt = "";
        if (!isEmpty(str1) && str1.length() >= num) {
            tt = str1.substring(num, str1.length());
        }
        return tt;

    }

    /**
     * 截取字符串右侧第0位到第Num位
     *
     * @param str 处理的字符串
     * @param num 截取的位置
     * @return 截取后的字符串
     */
    public  static String rtrim(String str, int num) {
        if (!isEmpty(str) && str.length() > num) {
            str = str.substring(0, str.length() - num);
        }
        return str;
    }

//    /**
//     * 根据指定的字符把源字符串分割成一个list
//     *
//     * @param src     处理的字符串
//     * @param pattern 分割字符串
//     * @return 处理后的list
//     */
//    public  static List<String> parseString2List(String src, String pattern) {
//        List<String> list = new ArrayList<>();
//        if (src != null) {
//            String[] tt = src.split(pattern);
//            list.addAll(Arrays.asList(tt));
//        }
//        return list;
//    }

    /**
     * 格式化一个float
     *
     * @param format 要格式化成的格式 such as #.00, #.#
     * @return 格式化后的字符串
     */
    public  static String formatDouble(double f, String format) {
        DecimalFormat df = new DecimalFormat(format);
        return df.format(f);
    }


    /**
     * 截取字符串左侧指定长度的字符串
     *
     * @param input 输入字符串
     * @param count 截取长度
     * @return 截取字符串
     */
    public  static String left(String input, int count) {
        if (isEmpty(input)) {
            return "";
        }
        count = (count > input.length()) ? input.length() : count;
        return input.substring(0, count);
    }

    /**
     * 截取字符串右侧指定长度的字符串
     *
     * @param input 输入字符串
     * @param count 截取长度
     * @return 截取字符串
     * Summary 其他编码的有待测试
     */
    public  static String right(String input, int count) {
        if (isEmpty(input)) {
            return "";
        }
        count = (count > input.length()) ? input.length() : count;
        return input.substring(input.length() - count, input.length());
    }



    /**
     * 全角字符变半角字符
     *
     * @param str 需要处理的字符串
     * @return 处理后的字符串
     */
    public  static String full2Half(String str) {
        if(isEmpty(str)){
            return "";
        }
        return BCConvert.qj2bj(str);
    }

    /**
     * 半角字符变全角字符
     * @param str 需要处理的字符串
     * @return 处理后的字符串
     */
    public  static String Half2Full(String str){
        if(isEmpty(str)){
            return "";
        }
        return BCConvert.bj2qj(str);
    }


    /**
     * 页面中去除字符串中的空格、回车、换行符、制表符
     *
     * @param str 需要处理的字符串
     */
    public  static String replaceBlank(String str) {
        if (str != null) {
            Pattern p = Pattern.compile("\\s*|\t|\r|\n");
            Matcher m = p.matcher(str);
            str = m.replaceAll("");
        }
        return str;
    }


    /**
     * 判断字符串数组中是否包含某字符串元素
     *
     * @param substring 某字符串
     * @param source    源字符串数组
     * @return 包含则返回true，否则返回false
     */
    public  static boolean isIn(String substring, String[] source) {
        if(isEmpty(substring) || !CheckUtil.valid(source)){
            return false;
        }
        for (String t:source) {
            if (substring.equals(t)) {
                return true;
            }
        }
        return false;
    }


    /**
     * 字符串转换unicode.实现native2ascii.exe类似的功能
     *
     * @param string 需要处理的字符串
     */
    public  static String string2Unicode(String string) {
        StringBuilder uni = new StringBuilder();
        for (int i = 0; i < string.length(); i++) {
            String temp ="\\u"+String.valueOf(Integer.toHexString(string.charAt(i)));
            uni.append(temp);
        }
        return uni.toString();
    }

    /**
     * 转字符串 实现native2ascii.exe类似的功能
     *
     * @param unicode 需要处理的字符串
     */
    public  static String unicode2String(String unicode) {
        StringBuilder str = new StringBuilder();
        String[]     hex    = unicode.split("\\\\u");
        for (int i = 1; i < hex.length; i++) {
            int data = Integer.parseInt(hex[i], 16);
            str.append((char) data);
        }
        return str.toString();
    }


    /**
     * 删除所有的标点符号
     *
     * @param str 处理的字符串
     */
    public  static String trimPunct(String str) {
        if(isEmpty(str)){
            return "";
        }
        return str.replaceAll("[\\pP\\p{Punct}]", "");
    }

    /**
     * 字符串相似度比较(速度较快)
     */
    public  static double SimilarityRatio(String str1, String str2) {
        str1 = StringUtil.trimPunct(str1);
        str2 = StringUtil.trimPunct(str2);
        if (str1.length() > str2.length()) {
            return StringImpl.SimilarityRatio(str1, str2);
        } else {
            return StringImpl.SimilarityRatio(str2, str1);
        }

    }

    /**
     * 字符串相似度比较(速度较快)
     */
    public  static double SimilarDegree(String str1, String str2) {
        str1 = StringUtil.trimPunct(str1);
        str2 = StringUtil.trimPunct(str2);
        if (str1.length() > str2.length()) {
            return StringImpl.SimilarDegree(str1, str2);
        } else {
            return StringImpl.SimilarDegree(str2, str1);
        }
    }





    /**
     * 获取字符串str在String中出现的次数
     *
     * @param string 处理的字符串
     * @param str 子字符串
     */
    public  static int countSubStr(String string, String str) {
        if ((str == null) || (str.length() == 0) || (string == null) || (string.length() == 0)) {
            return 0;
        }
        int count = 0;
        int index = 0;
        while ((index = string.indexOf(str, index)) != -1) {
            count++;
            index += str.length();
        }
        return count;
    }


    /**
     * 替换一个出现的子串
     *
     * @param s    source string
     * @param sub  substring to replace
     * @param with substring to replace with
     */
    public  static String replaceFirst(String s, String sub, String with) {
        int i = s.indexOf(sub);
        if (i == -1) {
            return s;
        }
        return s.substring(0, i) + with + s.substring(i + sub.length());
    }


    /**
     * 替换最后一次出现的字串
     * Replaces the very last occurrence of a substring with supplied string.
     *
     * @param s    source string
     * @param sub  substring to replace
     * @param with substring to replace with
     */
    public  static String replaceLast(String s, String sub, String with) {
        int i = s.lastIndexOf(sub);
        if (i == -1) {
            return s;
        }
        return s.substring(0, i) + with + s.substring(i + sub.length());
    }


    /**
     * 删除所有的子串
     * Removes all substring occurrences from the string.
     *
     * @param s   source string
     * @param sub substring to remove
     */
    public  static String remove(String s, String sub) {
        int c      = 0;
        int sublen = sub.length();
        if (sublen == 0) {
            return s;
        }
        int i = s.indexOf(sub, c);
        if (i == -1) {
            return s;
        }
        StringBuilder sb = new StringBuilder(s.length());
        do {
            sb.append(s.substring(c, i));
            c = i + sublen;
        } while ((i = s.indexOf(sub, c)) != -1);
        if (c < s.length()) {
            sb.append(s.substring(c, s.length()));
        }
        return sb.toString();
    }

    /**
     * 将字符串首字母转大写
     * @param str 需要处理的字符串
     */
    public  static String upperFirstChar(String str){
        if(isEmpty(str)){
            return "";
        }
        char[] cs=str.toCharArray();
        if((cs[0] >= 'a') && (cs[0] <= 'z')){
            cs[0] -= (char) 0x20;
        }
        return String.valueOf(cs);
    }

    /**
     * 将字符串首字母转小写
     * @param str
     * @return
     */
    public  static String lowerFirstChar(String str){
        if(isEmpty(str)){
            return "";
        }
        char[] cs=str.toCharArray();
        if((cs[0] >= 'A') && (cs[0] <= 'Z')){
            cs[0] += (char) 0x20;
        }
        return String.valueOf(cs);
    }

    /**
     * 判读俩个字符串右侧的length个字符串是否一样
     * @param str1
     * @param str2
     * @param length
     * @return
     */
    public  static boolean rigthEquals(String str1,String str2,int length){
        return right(str1,length).equals(right(str2,length));
    }

    /**
     * 判读俩个字符串左侧的length个字符串是否一样
     * @param str1
     * @param str2
     * @param length
     * @return
     */
    public  static boolean leftEquals(String str1,String str2,int length){
        return left(str1,length).equals(left(str2,length));
    }
    
    /**
	 * 字符串校验正则表达式：ID主键使用
	 */
	public static final String STRING_REGEX_PK_ID = "^[a-zA-Z0-9]{32}$";
	
	/**
	 * 字符串校验正则表达式：字母和数字（不限长度）
	 */
	public static final String STRING_REGEX_ID = "^[a-zA-Z0-9_]*$";
	
	/**
	 * 字符串校验正则表达式：字母和数字中文 （不限长度）
	 */
	public static final String STRING_REGEX_UNICODE_ID = "^[a-zA-Z0-9\u4E00-\u9FA5_]*$";
	
	/**
	 * 字符串校验正则表达式：编码使用
	 */
	public static final String STRING_REGEX_CODE = "^[_a-zA-Z][a-zA-Z0-9_-]*$";
	
	/**
	 * 字符串校验正则表达式：FUNCCODE使用
	 */
	public static final String STRING_REGEX_FUNCCODE = "^[a-zA-Z_/][a-zA-Z0-9_/]*$";
	
	/**
	 * 字符串校验正则表达式：URL
	 */
	public static final String STRING_REGEX_URL = "^(((https|http)://)(([a-zA-Z0-9\\._-]+\\.[a-zA-Z]{2,6})|([0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}))(:[0-9]{1,4})*)?(/[a-zA-Z0-9\\&%_\\./-~-]*)?$";
	
	/**
	 * 字符串校验正则表达式：单位编码集合校验
	 */
	public static final String STRING_REGEX_ORGS = "^(\\d{8,})(\\,\\d{8,})*$";
	/**
	 * 日期校验
	 */
	public static final String STRING_REGEX_DATE = "^20[0-9]{2}-(0[1-9]{1}|1[0-2]{1}|Q[1-4]{1}|FY|H[1-2]{1})$";

	public static String capitalize(String string) {
		return String.valueOf(string.charAt(0)).toUpperCase() + string.substring(1);
	}

	public static boolean isNotEmpty(String str) {
		return (str != null && str.length() > 0 && !"null".equalsIgnoreCase(str));
	}

	public static boolean isEmpty(String string) {
		return ((string == null) || (string.length() == 0));
	}

	public static boolean isEmptyOrBlank(String string) {
		return ((string == null) || (string.trim().length() == 0));
	}

	public static boolean isEmptyAndNotNullString(String string) {
		return ((string == null) || "null".equalsIgnoreCase(string) || (string.length() == 0));
	}

	public static String toNumberString(String string) {
		return isEmptyAndNotNullString(string) ? "0" : string;
	}

	public static boolean compare(String str1, String str2) {
		if (isEmpty(str1) && isEmpty(str2)) {
			return true;
		} else if (!isEmpty(str1) && !isEmpty(str2)) {
			return (str1.equals(str2));
		} else {
			return false;
		}
	}

	public static boolean compareIgnorCase(String str1, String str2) {
		if (isEmpty(str1) && isEmpty(str2)) {
			return true;
		} else if (!isEmpty(str1) && !isEmpty(str2)) {
			return (str1.equalsIgnoreCase(str2));
		} else {
			return false;
		}
	}

	public static String replace(String src, String oldStr, String newStr) {
		int index;
		StringBuffer buffer;

		if (isEmpty(src) || isEmpty(oldStr) || (newStr == null)) {
			return src;
		}

		buffer = new StringBuffer(src);
		index = src.length();

		while ((index = src.lastIndexOf(oldStr, index)) >= 0) {
			buffer.replace(index, index + oldStr.length(), newStr);

			index = index - oldStr.length();
		}

		return buffer.toString();
	}

	public static String replaceIgnoreCase(String src, String oldStr, String newStr) {

		int index;
		StringBuffer buffer;
		String s;

		if (isEmpty(src) || isEmpty(oldStr) || (newStr == null)) {
			return src;
		}

		s = src.toLowerCase();
		oldStr = oldStr.toLowerCase();
		buffer = new StringBuffer(src);
		index = s.length();

		while ((index = s.lastIndexOf(oldStr, index)) >= 0) {
			buffer.replace(index, index + oldStr.length(), newStr);

			index = index - oldStr.length();
		}

		return buffer.toString();
	}

	public static String replaceChar(String src, char oldChar, char newChar) {
		StringBuffer buf = new StringBuffer(src);
		int length = buf.length();

		for (int i = 0; i < length; i++) {
			if (buf.charAt(i) == oldChar) {
				buf.setCharAt(i, newChar);
			}
		}
		return new String(buf);
	}

	public static String compressChar(String src, char oldChar) {
		if (src == null) {
			return null;
		}
		StringBuffer buf = new StringBuffer();
		int length = src.length();
		boolean isOldChar = false;

		for (int i = 0; i < length; i++) {
			char c = src.charAt(i);
			if (c == oldChar) {
				if (!isOldChar) {
					buf.append(c);
				}
				isOldChar = true;
			} else {
				buf.append(c);
				isOldChar = false;
			}
		}
		return buf.toString();
	}

	/**
	 * 根据db2数据库中的TimeStamp格式,确定日期时间格式 <br>
	 * yyyy-MM-dd hh:mi:ss
	 * 
	 * @param timeStamp
	 * @return
	 */
	public static String getStandardDateTimeStrFromTimeStamp(String timeStamp) {
		String dateTime = "";
		if (isNotEmpty(timeStamp)) {// yyyy-MM-dd hh:mi:ss 19位
			dateTime = timeStamp.substring(0, timeStamp.length() > 19 ? 19 : timeStamp.length());
		}
		return dateTime;
	}

	/**
	 * 取得当前时间的标准格式 <br>
	 * 标准格式yyyy-MM-dd HH:mm:ss
	 * 
	 * @param timeStamp
	 * @return
	 */
	public static String getTimeStampFromCurrentTime() {
		String dateTime = "";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		dateTime = sdf.format(new Date());
		return dateTime;
	}

	public static String getFormatCheckDate(String check_date) {
		String res = "";
		if (isNotEmpty(check_date)) {
			String[] str = check_date.split("-");
			switch (str.length) {
			case 1:
				res = (str[0]).replaceAll("_", "") + "年";
				break;
			case 2:
				res = str[0] + "年";
				String two = str[1];
				if (two.startsWith("Q")) {// 季度
					res += "第" + two.replace("Q", "") + "季度";
				} else if (two.startsWith("HY")) {// 半年
					if ("HY1".equalsIgnoreCase(two)) {
						res += "上半年";
					} else {
						res += "下半年";
					}
				} else {
					res += two + "月";
				}
				break;
			case 3:
				res = str[0] + "年" + str[1] + "月" + str[2] + "日";
				break;
			default:
				break;
			}
		}
		return res;
	}

	public static String getFirstDayFromCheckDate(String check_date) {
		String res = "";
		if (isNotEmpty(check_date)) {
			String[] str = check_date.split("-");
			switch (str.length) {
			case 1:
				res = str[0] + "-01-01";
				break;
			case 2:
				res = str[0] + "-";
				String two = str[1];
				if (two.startsWith("Q")) {// 季度
					int month = Integer.parseInt(two.replace("Q", "")) * 3 - 2;
					String monthStr = ("00" + String.valueOf(month)).substring(String.valueOf(month).length());
					res += monthStr + "-01";
				} else {
					res += two + "-01";
				}
				break;
			case 3:
				res = check_date;
				break;
			default:
				break;
			}
		}
		return res;
	}

	/**
	 * 处理数据库LIKE查询条件特殊字符
	 * 
	 * @param str
	 *            LIKE查询条件字符串
	 * @return 带前后 % 的条件字符串
	 */
	public static String makeDBLikeString(String str) {
		if (str != null) {
			return "%" + str.trim().replace("'", "''").replace("\\", "\\\\").replace("_", "\\_").replace("%", "\\%")
					+ "%";
		}
		return null;
	}

	/**
	 * 处理数据库Left LIKE查询条件特殊字符
	 * 
	 * @param str
	 *            LIKE查询条件字符串
	 * @return 带后 % 的条件字符串
	 */
	public static String makeDBLeftLikeString(String str) {
		if (str != null) {
			return str.trim().replace("'", "''").replace("\\", "\\\\").replace("_", "\\_").replace("%", "\\%") + "%";
		}
		return null;
	}

	/**
	 * 处理数据库Right LIKE查询条件特殊字符
	 * 
	 * @param str
	 *            LIKE查询条件字符串
	 * @return 带前 % 的条件字符串
	 */
	public static String makeDBRightLikeString(String str) {
		if (str != null) {
			return "%" + str.trim().replace("'", "''").replace("\\", "\\\\").replace("_", "\\_").replace("%", "\\%");
		}
		return null;
	}

	public static boolean isNumber(String str) {
		if (isNotEmpty(str)) {
			try {
				Double.parseDouble(str);
				return true;
			} catch (Exception e) {
			}
		}
		return false;
	}

	public static boolean isInteger(String str) {
		if (isNotEmpty(str)) {
			try {
				Integer.parseInt(str);
				return true;
			} catch (Exception e) {
			}
		}
		return false;
	}

	public static boolean isLong(String str) {
		if (isNotEmpty(str)) {
			try {
				Long.parseLong(str);
				return true;
			} catch (Exception e) {
			}
		}
		return false;
	}

	/**
	 * 处理数据库特殊字符
	 * 
	 * @param str
	 *            传入字符串
	 * @return 处理后的字符串
	 */
	public static String filterSPChar(String str) {
		if (isNotEmpty(str)) {
			str = str.trim();
			str = str.replaceAll("<", "&lt;");
			str = str.replaceAll(">", "&gt;");
			str = str.replaceAll("'", "''");
			return str;
		}
		return null;
	}
	
	/**
	 * 是否JsonObject格式
	 * @param str
	 * @return
	 */
	public static boolean isJsonObject(String str) {
		try {
			new JSONObject(str);
			return true;
		} catch (Exception e) {
		}
		return false;
	}
	
	/**
	 * 是否JsonArray格式
	 * @param str
	 * @return
	 */
	public static boolean isJsonArray(String str) {
		try {
			new JSONArray(str);
			return true;
		} catch (Exception e2) {
		}
		return false;
	}
	
	@SuppressWarnings("unchecked")
	public static String convertArray(Object uuids){
		String[] ids = null;
		if(uuids instanceof String[]){
			ids = (String[])uuids;
			if(uuids==null || ids.length==0){
				return "('')";
			}
			StringBuilder sb = new StringBuilder("(") ;
			for(int i=0;i<ids.length;i++){
				sb.append("'");
				sb.append(ids[i]);
				sb.append("'");
				if(i<ids.length-1){
					sb.append(",");
				}
			}
			sb.append(")");
			
			return sb.toString();
		}else if(uuids instanceof ArrayList){
			ArrayList<String> idArrs = (ArrayList<String>) uuids;
			
			if(uuids==null || idArrs.size()==0){
				return "('')";
			}
			StringBuilder sb = new StringBuilder("(") ;
			for(int i=0;i<idArrs.size();i++){
				sb.append("'");
				sb.append(idArrs.get(i));
				sb.append("'");
				if(i<idArrs.size()-1){
					sb.append(",");
				}
			}
			sb.append(")");
			return sb.toString();
		}
		
		return "";
	}

	public static boolean isChinese(char c) {
		Character.UnicodeBlock ub = Character.UnicodeBlock.of(c);
		if (ub == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS
				|| ub == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS
				|| ub == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A
				|| ub == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B
				|| ub == Character.UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION
				|| ub == Character.UnicodeBlock.HALFWIDTH_AND_FULLWIDTH_FORMS
				|| ub == Character.UnicodeBlock.GENERAL_PUNCTUATION) {
			return true;
		}
		return false;
	}
	
	public static int getCharCount(String s ,char c){
		if(isEmpty(s)){
			return 0;
		}
		int count = 0;
		char[] cs = s.toCharArray();
		for(int i=0;i<cs.length;i++){
			if(c==cs[i]){
				count++;
			}
		}
		return count;
	}
	
	/**
	 * 数组转为字符串
	 * 如：["1","2","3"] token="_" 
	 *  结果为"1_2_3"
	 * @param array
	 * @param token
	 * @return
	 */
	public static String array2str(String[] array, String token) {
		if(array==null || array.length == 0){
			return "";
		}
		StringBuilder builder = new StringBuilder("");
		for(int i=0;i<array.length;i++){
			builder.append(array[i]);
			if(i<array.length-1){
				builder.append(token);
			}
		}
		return builder.toString();
	}
	
	/**
	 * 解析复合指标公式表达式
	 * @param expr公式
	 * @return
	 */
	public static Set<String> parseExpr(String expr){
		Set<String> kpi_dim = new HashSet<String>();
		String[] ss = expr.split("@#");
		for(String g : ss){
			String[] gg = g.split("#");
			for(String m :gg){
				if(m.length()>0 && m.contains("@")){
					kpi_dim.add(m);
				}
			}
		}
		return kpi_dim;
	}
	
	/**
	 * 返回字符串
	 * @param args
	 */
	public static String getStr(Object obj){
		if(obj == null){
			return "";
		}if(obj.equals(JSONObject.NULL)){
			return "";
		}
		else{
			return obj.toString();
		}
	}
	
	public static boolean matchWithRegex(String value, String regex) {
		if (value == null) {
			return false;
		}
		if (regex != null && !value.matches(regex)) {
			return false;
		}
		return true;
	}
	
	public static void matchWithRegex(String value, String regex, String errorMsg) {
		if (!matchWithRegex(value, regex)) {

		}
	}
	/**
	 * 判断一个字符串是否有值，空格也不算有值
	 * @param str 
	 * @return boolean
	 */
	public static boolean availableStr(String str){
		if(str!=null && !"".equals(str) && !"null".equals(str)){
			String avaStr = str.trim();
			return (avaStr!=null && !"".equals(avaStr) && !"null".equals(avaStr));
		}else{
			return false;
		}
	}
	
}
