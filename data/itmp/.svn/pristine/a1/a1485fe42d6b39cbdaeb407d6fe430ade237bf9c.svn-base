<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.eos.data.datacontext.UserObject"%>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	UserObject user=(UserObject)request.getSession().getAttribute("userObject");
	String userName=user.getUserId();
 %>
<html>
<head>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
 <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
 <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"> </script>
<script type="text/javascript" src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>
<script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/cuc/skin.css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/default/css/cuc.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css"/>
<title>修改密码</title>
</head>
<body>
<div style="padding-top:5px;" id = "form1">
	<!-- <form > -->
	 <table>
        <tr>
            <td><label for="username$text">当前用户：</label></td>
            <td>
                <input name="username" id="userid" class="nui-textbox" value="<%=userName%>" readonly="readonly"/>
                
            </td>    
        </tr>
        <tr>
            <td><label for="pwd$text">输入旧密码：</label></td>
            <td>
                <input name="pwd" id="pwd"  class="nui-password" vtype="minLength:6" required="true" minLengthErrorText="密码不能少于6个字符" required="true"/>

            </td>
        </tr>
         <tr>
            <td><label for="pwd1$text">输入新密码：</label></td>
            <td>
                <input name="pwd1" id="pwd1" class="nui-password" vtype="minLength:6" required="true" minLengthErrorText="密码不能少于6个字符" required="true" />
            </td>
        </tr>
         <tr>
            <td><label for="pwd2$text">确定新密码：</label></td>
            <td>
                <input name="pwd2" id="pwd2"  class="nui-password" vtype="minLength:6" required="true" minLengthErrorText="密码不能少于6个字符" required="true" onvalidation="onCheckEqual" />

            </td>
        </tr>
    </table>
		
	    <div  style="border:0;padding:0px;">
		   <table width="100%">
		      <tr>
		        <td style="text-align:center;">
		           <a class="nui-button btn btn-warning btn-xs" id="save" onclick="save()" ><i class="fa fa-save"></i>保存</a>  
		            <span style="display:inline-block;width:25px;"></span>
                    <a class="nui-button btn btn-default btn-xs" id="cancle" onclick="cancelSave()"><i class="fa fa-times"></i>取消</a> 
            
		        </td>
		      </tr>
		   </table>
		</div>
	<!-- </form> -->
</div>
<script type="text/javascript">    
    nui.parse();
    var form1 = new nui.Form("#form1");
    function save () {
       return;
    	 var form = document.getElementById("form1");
    	//密码强度校验
    	var pwd = nui.get("pwd1").value;
    	var oldpwd = nui.get("pwd").value;
    	var userid = nui.get("userid").value;
    	form1.validate();
    	if(form1.isValid()==false) return;
    	var level = IsPasswordLevel(pwd);
    	var msg = level == "1"?"极其弱": level == "2"?"非常弱":level == "3"?"弱":level == "4"?"一般":"";
    	if(msg != ""){
    		msg = "您的密码强度<span class='redbold'>"+msg + "</span>,是否继续?";
    		nui.confirm(msg,'系统提示', function(action){
    			if (action == "ok"){    				
    				nui.ajax({
	                url: "com.cgn.components.coframe.EmpSource.userPasswordChange.biz.ext",
	                type: 'POST',
	                data: {'userid':userid,'oldpassword': oldpwd,'newpassword':pwd },
	                success: function (text) {
	                var returnJson = nui.decode(text);
                        if(returnJson.flag == 1){
                            CloseWindow("saveSuccess");  
                        }else{
                            nui.alert("密码修改失败", "系统提示", function(action){
                                if(action == "ok" || action == "close"){
                                    //CloseWindow("saveFailed");
                                }
                                });
                            }     
                        CloseWindow();
	                },
	                error: function (jqXHR, textStatus, errorThrown) {
	                    alert(jqXHR.responseText);
	                }
	            }); 
    				
    			}else{
    				CloseWindow();
    			}
    		})
    	}else{
    		form.submit();
    	}
    }
 
    //取消保存
			function cancelSave(){
			 parent.window.close();
// 				nui.confirm("是否取消取消此次操作，确认取消？", "确定？",
// 	            function (action) {            
// 	                if (action == "ok") {
// 	                   parent.window.close();
	                   
// 	                }
// 	            }
//        		 );
			}
	function setError(){
    	window.alert("原密码填写错误！");
    }    
    function setSuccess(){
    	window.alert("密码修改成功！");
    	//登出系统
    	window.location.href="/auth/coframe/auth/login/logout.jsp";
    	//CloseWindow("SaveSuccess");
    }
    function cancel(){
      CloseWindow("cancel");
    }

    function onCheckEqual(e){
      if(e.isValid){
        var pwd = nui.get("pwd1").value;
        if(e.value!=pwd){
          e.errorText = "新密码不一致";
          e.isValid = false;
        }
      }
    }
    
    function checkFormSelf(form1){
    	  	
 		form.validate();
      	if (form.isValid() == true) {
      		return true;
      	}
    	return false;
    	
    	
    }
    
    function CloseWindow(action){
      return window.close();
      }
    
    
    // / <summary>
// / 判断密码强度
// / </summary>
// / <param name="sPassword">密码字符串</param>
// / <returns>返回强度等级(string)</returns>

//是否有字符
var hasLetter = false;
//强度等级
var pwdLevel = 0;
//是否有符号 参 数
var hasSymbol = false;
//是否有数字
var hasNumeric = false;
//是否有大小写
var hasULLetter = false;
function IsPasswordLevel(sPassword) {
	pwdLevel = 0;
	if (sPassword == "" || sPassword == null) {
		return "空密码";
	} else {
		// 判断密码长度
		JugePwdLength(sPassword);
		
		// 判断字母
		JugePwdLetter(sPassword);
		
		// 判断数字
		JugePwdNumeric(sPassword);
		
		// 判断符号
		JugeSymbol(sPassword);
		
		// 判断奖励
		JugeAward();
		
		// 判断密码级别
		// >= 90: 非常安全
		// >= 80: 安全（Secure）
		// >= 70: 非常强
		// >= 60: 强（Strong）
		// >= 50: 一般（Average）
		// >= 25: 弱（Weak）
		// >= 0: 非常弱
		if (pwdLevel > 0) {
			if (pwdLevel > 25) {
				if (pwdLevel > 50) {
					if (pwdLevel > 60) {
						if (pwdLevel > 70) {
							if (pwdLevel > 80) {
								if (pwdLevel > 90) {
									return 8 ; //"非常安全";
								} else {
									return 7 ; //"安全";
								}
							} else {
								return  6; //"非常强";
							}
						} else {
							return 5 ; //"强";
						}
					} else {
						return 4 ; //"一般";
					}
				} else {
					return 3; //"弱";
				}
			} else {
				return 2 ;//"非常弱";
			}
		}
		return 1; //"极其弱";
	}
}
/*******************************************************************************
 * 函数名称：JugePwdlength 功能说明：判断密码字符串长度 参 数：str:字符串 调用示列： string str="abc123-_";
 * JugePwdlength(str);
 ******************************************************************************/
// / <summary>
// / 判断密码字符串长度
// / </summary>
// / <param name="slength">密码字符串</param>
function JugePwdLength(sLength) {
	var length = sLength.length;
	if (length <= 4) {
		pwdLevel += 5;
	} else {
		if (length <= 7) {
			pwdLevel += 10;
		} else {
			pwdLevel += 20;
		}
	}
}
/*******************************************************************************
 * 函数名称：JugePwdLetter 功能说明：判断密码强度是否有字符 参 数：str:字符串 调用示列： string str="abc123-_";
 * JugePwdLetter(str);
 ******************************************************************************/
// / <summary>
// / 判断密码强度是否有字符
// / </summary>
// / <param name="sLetter">密码字符串</param>
function JugePwdLetter(sLetter) {
	// 0 分: 没有字母
	// 10 分: 全都是小（大）写字母
	// 20 分: 大小写混合字母
	// 判断是否有字母
	var count = 0;
	var othercount = 0;
	var bLower = false, bUpper = false;
	for (var i = 0; i <= sLetter.length - 1; i++) {
		// 大小写字母的KEYCODE 65-90
		if ((sLetter.charCodeAt(i) >= 65) && (sLetter.charCodeAt(0) <= 90)) {
			count += 1;
		}
		// 判断字符是否有大小写
		if (sLetter.substr(i, 1).match("[A-Z]")) {
			bUpper = true;
		}
		// 判断字符是否有大小写
		if (sLetter.substr(i, 1).match("[a-z]")) {
			bLower = true;
		}
	}
	if (count == 0) {
		pwdLevel += 0;
	} else {
		hasLetter = true;
		if (bLower && bUpper) {
			hasULLetter = true;
			pwdLevel += 20;
		} else {
			pwdLevel += 10;
		}
	}
	;
}
/*******************************************************************************
 * 函数名称：JugePwdNumeric 功能说明：判断密码强度是否有数字 参 数：str:密码字符串 调用示列： string
 * str="abc123-_"; JugePwdNumeric(str);
 ******************************************************************************/
// / <summary>
// / 判断密码强度是否有数字
// / </summary>
// / <param name="str">密码字符串</param>
function JugePwdNumeric(sNum) {
	// 三、数字:
	// 0 分: 没有数字
	// 10 分: 1 个数字
	// 20 分: 大于等于 3 个数字
	var count = 0;
	for (var i = 0; i <= sNum.length - 1; i++) {
		// 数字的KEYCODE 96-105
		if ((sNum.charCodeAt(i) >= 96) && (sNum.charCodeAt(0) <= 105)) {
			count += 1;
		}
	}
	if (count == 0) {
		pwdLevel += 0;
	} else {
		hasNumeric = true;
		if (count < 3) {
			pwdLevel += 10;
		} else {
			pwdLevel += 20;
		}
	}
}
/*******************************************************************************
 * 函数名称：JugeAward 功能说明：判断密码强度奖励 参 数： 调用示列： JugeAward();
 ******************************************************************************/
// / <summary>
// / 判断密码强度奖励
function JugeAward() {
	// 五、奖励:
	// 2 分: 字母和数字
	// 3 分: 字母、数字和符号
	// 5 分: 大小写字母、数字和符号
	if (hasLetter && hasNumeric) {
		if (hasSymbol) {
			if (hasULLetter) {
				pwdLevel += 5;
			} else {
				pwdLevel += 3;
			}
		} else {
			pwdLevel += 2;
		}
	}
}
/*******************************************************************************
 * 函数名称：JugeAward 功能说明：判断特定的符号 参 数：str:密码字符串 调用示列： string str="abc123-_";
 * IsSymbol(str);
 ******************************************************************************/
// / <summary>
// / 判断特定的符号
// / </summary>
// / <param name="str">密码字符串</param>
// / <returns>返回是否(bool)</returns>
function IsSymbol(str) {
	var bResult = str.match("[_]|[-]|[#]");
	if (bResult == null) {
		return false;
	} else {
		return true;
	}
}
/*******************************************************************************
 * 函数名称：JugeSymbol 功能说明：判断密码强度是否有符号 参 数：str:密码字符串 调用示列： string str="abc123-_";
 * JugeSymbol(str);
 ******************************************************************************/
// / <summary>
// / 判断是密码强度否有符号
// / </summary>
// / <param name="str">密码字符串</param>
function JugeSymbol(sSymbol) {
	// 四、符号:
	// 0 分: 没有符号
	// 10 分: 1 个符号
	// 25 分: 大于 1 个符号
	var count = 0;
	var tmpstr = "";
	for (var i = 0; i <= sSymbol.length - 1; i++) {
		tmpstr = sSymbol.substr(i, 1);
		if (IsSymbol(tmpstr)) {
			count += 1;
		}
	}
	if (count == 0) {
		pwdLevel += 0;
	} else {
		hasSymbol = true;
		if (count > 1) {
			pwdLevel += 25;
		} else {
			pwdLevel += 10;
		}
	}
}
  </script>
</body>
</html>
