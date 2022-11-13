<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%@ page import="com.eos.data.datacontext.IUserObject" %>
<%@ page import="com.cgn.itmp.basecommon.CommonUtil" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String dataTime = df.format(new Date());
    IUserObject cu = CommonUtil.getUserObject();
    String userid = cu.getUserId();
    String username = cu.getUserRealName();
    String type = request.getParameter("type");
%><html>
<%--
- Author(s): Administrator
- Date: 2019-02-11 10:35:04
- Description:
    --%>
<head>
    <title>
        TDgglTzyjcjhrcrq录入
    </title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
    </script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/table.css" />
</head>
<body>
<!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
<input name="pageType" class="nui-hidden"/>
<div id="dataform1" style="padding-top:5px;">
    <!-- hidden域 -->
    <input class="nui-hidden" name="data.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken">
    <input class="nui-hidden" name="data.uuid"/>
    <input id='orderno' class="nui-hidden" name="data.orderno"/>
    <input class="nui-hidden" name="data.entity" value="com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDailyEdit.NuclearIslandDailyEdit"/>
    <input class="nui-hidden" name="data.entitytype" value="com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Container"/>
    <!-- hidden域 流程对应信息 -->
    <input class="nui-hidden" name="data.processDefName" value="com.cgn.itmp.outlineandplan.specialinspection.DailyRQRJHQAdd"/>
    <input class="nui-hidden" name="data.processInstName" value="专用检查计划(核岛部件)_日常执行条目_新增焊容器和热交换器"/>
    <input class="nui-hidden" name="data.processInstDesc" value="专用检查计划(核岛部件)_日常执行条目_新增焊容器和热交换器"/>
    <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
        <tr>
            <td class="form_label"   align="center">
                基地:
            </td>
            <td colspan="1">
                <input class="nui-combobox" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext"
                       textField="name"  onvaluechanged="reloadJz"     readonly="readonly" dataField="jsonObject" id="jd" name="data.base" valueField="id"/>
            </td>

            <td class="form_label"   align="center">
                机组:
            </td>
            <td colspan="1">
                <input class="nui-combobox" dataField="jsonObject" id="jz" textField="name"
                       url="" name="data.crew"  valueField="id"/>
            </td>

            <td class="form_label"   align="center">
                类型:
            </td>
            <td colspan="1">
                <input class="nui-dictcombobox" id="type" value="<%=type %>" dictTypeId="ZYJCJH"  name="data.type"/>
            </td>
        </tr>
        <tr>
            <td class="form_label"   align="center">
                维护项目:
            </td>
            <td colspan="1">
                <input class="nui-textbox"  onvalidation="hasIllegalChar(e,500,true,true)" required="true" requiredErrorText="请输入维护项目" name="data.tasklist"/>
            </td>
			<td class="form_label" align="center">
                项目来源:
            </td>
            <td colspan="1">
                <input id="protype" class="nui-dictcombobox"  readonly="readonly" required="true" dictTypeId="protype" name="data.zytool"/>
            </td>
            <td class="form_label"   align="center">
                检查部位名称:
            </td>
            <td colspan="1">
                <input class="nui-textbox"  id="checkprojectname" readonly="readonly"required="true" requiredErrorText="请输入检查项目名称" name="data.checkprojectname"/>
            </td>
            
        </tr>
        <tr>
        	<td class="form_label"   align="center">
                项号:
            </td>
            <td colspan="1">
                <input class="nui-textbox" onvalidation="hasIllegalChar(e,1000,false,true)" name="data.itemnumber"/>
            </td>
            <td class="form_label"   align="center">
                功能位置:
            </td>
            <td colspan="1">
                <input class="nui-textbox" onvalidation="hasIllegalChar(e,1000,false,true)" name="data.gnwz"/>
            </td>
            <td class="form_label"   align="center">
                设备名称:
            </td>
            <td colspan="1">
                <input class="nui-textbox" onvalidation="hasIllegalChar(e,500,false,true)" name="data.sbname"/>
            </td>

            
        </tr>

        <tr>
        	<td class="form_label"   align="center">
                管壳侧:
            </td>
            <td colspan="1">
                <input class="nui-textbox" onvalidation="hasIllegalChar(e,500,false,true)" name="data.gkc"/>
            </td>
            <td class="form_label"   align="center">
                设备图号:
            </td>
            <td colspan="1">
                <input class="nui-textbox" onvalidation="hasIllegalChar(e,1000,false,true)" name="data.sbnumber"/>
            </td>
            <td class="form_label"   align="center">
                检查方法:
            </td>
            <td colspan="1">
                <input class="nui-textbox" onvalidation="hasIllegalChar(e,1000,true,true)" required="true" requiredErrorText="请输入检查方法" name="data.jcmethod"/>
            </td>

            
        </tr>
        <tr>
        	<td class="form_label"   align="center">
                检查程序:
            </td>
            <td colspan="1">
                <input class="nui-textbox" onvalidation="hasIllegalChar(e,1000,false,true)" name="data.jcprocedure"/>
            </td>
        </tr>
        <tr>
            <td class="form_label"   align="center">
                被检部位:
            </td>
            <td colspan="5">
                <input class="nui-textarea"  onvalidation="hasIllegalChar(e,1000,false,true)" style="width: 100%" name="data.jcbw"/>
            </td>
        </tr>
        <tr>
            <td class="form_label"   align="center">
                接近方式:
            </td>
            <td colspan="5">
                <input class="nui-textarea"  onvalidation="hasIllegalChar(e,500,false,true)" style="width: 100%" name="data.jjmode"/>
            </td>

        </tr>
        <tr>
            <td class="form_label"   align="center">
                备注:
            </td>
            <td colspan="5">
                <input class="nui-textarea"  onvalidation="hasIllegalChar(e,500,false,true)" style="width: 100%" name="data.remarks"/>
            </td>
        </tr>
    </table>
   <table id="nd" style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
             	<tr>
					<td id="n1991" class="form_label"  align="center">
						   1991:
					</td>
					<td id="n1991ii" colspan="1">
						<div name="data.c1991" id="combobox1991i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
					<td id="n1992" class="form_label"  align="center">
						1992:
					</td>
					<td id="n1992ii" colspan="1">
						<div name="data.c1992" id="combobox1992i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
					<td id="n1993" class="form_label"  align="center">
					   1993:
					</td>
					<td id="n1993ii" colspan="1">
						<div name="data.c1993" id="combobox1993i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
				</tr>
             <tr>
				
				<td id="n1994" class="form_label"  align="center">
					1994:
				</td>
				<td id="n1994ii" colspan="1">
					<div name="data.c1994" id="combobox1994i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n1995" class="form_label"  align="center">
					   1995:
				</td>
				<td id="n1995ii" colspan="1">
					<div name="data.c1995" id="combobox1995i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n1996" class="form_label"  align="center">
					1996:
				</td>
				<td id="n1996ii" colspan="1">
					<div name="data.c1996" id="combobox1996i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n1997" class="form_label"  align="center">
					   1997:
				</td>
				<td id="n1997ii" colspan="1">
					<div name="data.c1997" id="combobox1997i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n1998" class="form_label"  align="center">
					1998:
				</td>
				<td id="n1998ii" colspan="1">
					<div name="data.c1998" id="combobox1998i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n1999" class="form_label"  align="center">
					   1999:
				</td>
				<td id="n1999ii" colspan="1">
					<div name="data.c1999" id="combobox1999i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2000" class="form_label"  align="center">
					2000:
				</td>
				<td id="n2000ii" colspan="1">
					<div name="data.c2000" id="combobox2000i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2001" class="form_label"  align="center">
					   2001:
				</td>
				<td id="n2001ii" colspan="1">
					<div name="data.c2001" id="combobox2001i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2002" class="form_label"  align="center">
					2002:
				</td>
				<td id="n2002ii" colspan="1">
					<div name="data.c2002" id="combobox2002i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2003" class="form_label"  align="center">
					   2003:
				</td>
				<td id="n2003ii" colspan="1">
					<div name="data.c2003" id="combobox2003i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2004" class="form_label"  align="center">
					2004:
				</td>
				<td id="n2004ii" colspan="1">
					<div name="data.c2004" id="combobox2004i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2005" class="form_label"  align="center">
					   2005:
				</td>
				<td id="n2005ii" colspan="1">
					<div name="data.c2005" id="combobox2005i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2006" class="form_label"  align="center">
					2006:
				</td>
				<td id="n2006ii" colspan="1">
					<div name="data.c2006" id="combobox2006i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2007" class="form_label"  align="center">
					   2007:
				</td>
				<td id="n2007ii" colspan="1">
					<div name="data.c2007" id="combobox2007i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2008" class="form_label"  align="center">
					2008:
				</td>
				<td id="n2008ii" colspan="1">
					<div name="data.c2008" id="combobox2008i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2009" class="form_label"  align="center">
					   2009:
				</td>
				<td id="n2009ii" colspan="1">
					<div name="data.c2009" id="combobox2009i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2010" class="form_label"  align="center">
					2010:
				</td>
				<td id="n2010ii" colspan="1">
					<div name="data.c2010" id="combobox2010i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2011" class="form_label"  align="center">
					   2011:
				</td>
				<td id="n2011ii" colspan="1">
					<div name="data.c2011" id="combobox2011i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2012" class="form_label"  align="center">
					2012:
				</td>
				<td id="n2012ii" colspan="1">
					<div name="data.c2012" id="combobox2012i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2013" class="form_label"  align="center">
					   2013:
				</td>
				<td id="n2013ii" colspan="1">
					<div name="data.c2013" id="combobox2013i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2014" class="form_label"  align="center">
					2014:
				</td>
				<td id="n2014ii" colspan="1">
					<div name="data.c2014" id="combobox2014i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2015" class="form_label"  align="center">
					   2015:
				</td>
				<td id="n2015ii" colspan="1">
					<div name="data.c2015" id="combobox2015i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2016" class="form_label"  align="center">
					2016:
				</td>
				<td id="n2016ii" colspan="1">
					<div name="data.c2016" id="combobox2016i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2017" class="form_label"  align="center">
					   2017:
				</td>
				<td id="n2017ii" colspan="1">
					<div name="data.c2017" id="combobox2017i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2018" class="form_label"  align="center">
					2018:
				</td>
				<td id="n2018ii" colspan="1">
					<div name="data.c2018" id="combobox2018i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2019" class="form_label"  align="center">
					   2019:
				</td>
				<td id="n2019ii" colspan="1">
					<div name="data.c2019" id="combobox2019i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2020" class="form_label"  align="center">
					2020:
				</td>
				<td id="n2020ii" colspan="1">
					<div name="data.c2020" id="combobox2020i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2021" class="form_label"  align="center">
					   2021:
				</td>
				<td id="n2021ii" colspan="1">
					<div name="data.c2021" id="combobox2021i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2022" class="form_label"  align="center">
					2022:
				</td>
				<td id="n2022ii" colspan="1">
					<div name="data.c2022" id="combobox2022i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2023" class="form_label"  align="center">
					   2023:
				</td>
				<td id="n2023ii" colspan="1">
					<div name="data.c2023" id="combobox2023i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2024" class="form_label"  align="center">
					2024:
				</td>
				<td id="n2024ii" colspan="1">
					<div name="data.c2024" id="combobox2024i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2025" class="form_label"  align="center">
					   2025:
				</td>
				<td id="n2025ii" colspan="1">
					<div name="data.c2025" id="combobox2025i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2026" class="form_label"  align="center">
					2026:
				</td>
				<td id="n2026ii" colspan="1">
					<div name="data.c2026" id="combobox2026i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2027" class="form_label"  align="center">
					   2027:
				</td>
				<td id="n2027ii" colspan="1">
					<div name="data.c2027" id="combobox2027i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2028" class="form_label"  align="center">
					2028:
				</td>
				<td id="n2028ii" colspan="1">
					<div name="data.c2028" id="combobox2028i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2029" class="form_label"  align="center">
					   2029:
				</td>
				<td id="n2029ii" colspan="1">
					<div name="data.c2029" id="combobox2029i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2030" class="form_label"  align="center">
					2030:
				</td>
				<td id="n2030ii" colspan="1">
					<div name="data.c2030" id="combobox2030i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2031" class="form_label"  align="center">
					   2031:
				</td>
				<td id="n2031ii" colspan="1">
					<div name="data.c2031" id="combobox2031i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2032" class="form_label"  align="center">
					2032:
				</td>
				<td id="n2032ii" colspan="1">
					<div name="data.c2032" id="combobox2032i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2033" class="form_label"  align="center">
					   2033:
				</td>
				<td id="n2033ii" colspan="1">
					<div name="data.c2033" id="combobox2033i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2034" class="form_label"  align="center">
					2034:
				</td>
				<td id="n2034ii" colspan="1">
					<div name="data.c2034" id="combobox2034i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2035" class="form_label"  align="center">
					   2035:
				</td>
				<td id="n2035ii" colspan="1">
					<div name="data.c2035" id="combobox2035i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2036" class="form_label"  align="center">
					2036:
				</td>
				<td id="n2036ii" colspan="1">
					<div name="data.c2036" id="combobox2036i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2037" class="form_label"  align="center">
					   2037:
				</td>
				<td id="n2037ii" colspan="1">
					<div name="data.c2037" id="combobox2037i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2038" class="form_label"  align="center">
					2038:
				</td>
				<td id="n2038ii" colspan="1">
					<div name="data.c2038" id="combobox2038i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2039" class="form_label"  align="center">
					   2039:
				</td>
				<td id="n2039ii" colspan="1">
					<div name="data.c2039" id="combobox2039i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2040" class="form_label"  align="center">
					2040:
				</td>
				<td id="n2040ii" colspan="1">
					<div name="data.c2040" id="combobox2040i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2041" class="form_label"  align="center">
					   2041:
				</td>
				<td id="n2041ii" colspan="1">
					<div name="data.c2041" id="combobox2041i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2042" class="form_label"  align="center">
					2042:
				</td>
				<td id="n2042ii" colspan="1">
					<div name="data.c2042" id="combobox2042i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2043" class="form_label"  align="center">
					   2043:
				</td>
				<td id="n2043ii" colspan="1">
					<div name="data.c2043" id="combobox2043i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2044" class="form_label"  align="center">
					2044:
				</td>
				<td id="n2044ii" colspan="1">
					<div name="data.c2044" id="combobox2044i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2045" class="form_label"  align="center">
					   2045:
				</td>
				<td id="n2045ii" colspan="1">
					<div name="data.c2045" id="combobox2045i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2046" class="form_label"  align="center">
					2046:
				</td>
				<td id="n2046ii" colspan="1">
					<div name="data.c2046" id="combobox2046i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2047" class="form_label"  align="center">
					   2047:
				</td>
				<td id="n2047ii" colspan="1">
					<div name="data.c2047" id="combobox2047i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2048" class="form_label"  align="center">
					2048:
				</td>
				<td id="n2048ii" colspan="1">
					<div name="data.c2048" id="combobox2048i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2049" class="form_label"  align="center">
					   2049:
				</td>
				<td id="n2049ii" colspan="1">
					<div name="data.c2049" id="combobox2049i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2050" class="form_label"  align="center">
					2050:
				</td>
				<td id="n2050ii" colspan="1">
					<div name="data.c2050" id="combobox2050i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2051" class="form_label"  align="center">
					   2051:
				</td>
				<td id="n2051ii" colspan="1">
					<div name="data.c2051" id="combobox2051i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2052" class="form_label"  align="center">
					2052:
				</td>
				<td id="n2052ii" colspan="1">
					<div name="data.c2052" id="combobox2052i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2053" class="form_label"  align="center">
					   2053:
				</td>
				<td id="n2053ii" colspan="1">
					<div name="data.c2053" id="combobox2053i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2054" class="form_label"  align="center">
					2054:
				</td>
				<td id="n2054ii" colspan="1">
					<div name="data.c2054" id="combobox2054i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2055" class="form_label"  align="center">
					   2055:
				</td>
				<td id="n2055ii" colspan="1">
					<div name="data.c2055" id="combobox2055i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2056" class="form_label"  align="center">
					2056:
				</td>
				<td id="n2056ii" colspan="1">
					<div name="data.c2056" id="combobox2056i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2057" class="form_label"  align="center">
					   2057:
				</td>
				<td id="n2057ii" colspan="1">
					<div name="data.c2057" id="combobox2057i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2058" class="form_label"  align="center">
					2058:
				</td>
				<td id="n2058ii" colspan="1">
					<div name="data.c2058" id="combobox2058i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2059" class="form_label"  align="center">
					   2059:
				</td>
				<td id="n2059ii" colspan="1">
					<div name="data.c2059" id="combobox2059i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2060" class="form_label"  align="center">
					2060:
				</td>
				<td id="n2060ii" colspan="1">
					<div name="data.c2060" id="combobox2060i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2061" class="form_label"  align="center">
					   2061:
				</td>
				<td id="n2061ii" colspan="1">
					<div name="data.c2061" id="combobox2061i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2062" class="form_label"  align="center">
					2062:
				</td>
				<td id="n2062ii" colspan="1">
					<div name="data.c2062" id="combobox2062i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2063" class="form_label"  align="center">
					   2063:
				</td>
				<td id="n2063ii" colspan="1">
					<div name="data.c2063" id="combobox2063i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2064" class="form_label"  align="center">
					2064:
				</td>
				<td id="n2064ii" colspan="1">
					<div name="data.c2064" id="combobox2064i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2065" class="form_label"  align="center">
					   2065:
				</td>
				<td id="n2065ii" colspan="1">
					<div name="data.c2065" id="combobox2065i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2066" class="form_label"  align="center">
					2066:
				</td>
				<td id="n2066ii" colspan="1">
					<div name="data.c2066" id="combobox2066i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2067" class="form_label"  align="center">
					   2067:
				</td>
				<td id="n2067ii" colspan="1">
					<div name="data.c2067" id="combobox2067i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2068" class="form_label"  align="center">
					2068:
				</td>
				<td id="n2068ii" colspan="1">
					<div name="data.c2068" id="combobox2068i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2069" class="form_label"  align="center">
					   2069:
				</td>
				<td id="n2069ii" colspan="1">
					<div name="data.c2069" id="combobox2069i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2070" class="form_label"  align="center">
					2070:
				</td>
				<td id="n2070ii" colspan="1">
					<div name="data.c2070" id="combobox2070i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2071" class="form_label"  align="center">
					   2071:
				</td>
				<td id="n2071ii" colspan="1">
					<div name="data.c2071" id="combobox2071i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2072" class="form_label"  align="center">
					2072:
				</td>
				<td id="n2072ii" colspan="1">
					<div name="data.c2072" id="combobox2072i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2073" class="form_label"  align="center">
					   2073:
				</td>
				<td id="n2073ii" colspan="1">
					<div name="data.c2073" id="combobox2073i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2074" class="form_label"  align="center">
					2074:
				</td>
				<td id="n2074ii" colspan="1">
					<div name="data.c2074" id="combobox2074i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2075" class="form_label"  align="center">
					   2075:
				</td>
				<td id="n2075ii" colspan="1">
					<div name="data.c2075" id="combobox2075i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2076" class="form_label"  align="center">
					2076:
				</td>
				<td id="n2076ii" colspan="1">
					<div name="data.c2076" id="combobox2076i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2077" class="form_label"  align="center">
					   2077:
				</td>
				<td id="n2077ii" colspan="1">
					<div name="data.c2077" id="combobox2077i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2078" class="form_label"  align="center">
					2078:
				</td>
				<td id="n2078ii" colspan="1">
					<div name="data.c2078" id="combobox2078i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2079" class="form_label"  align="center">
					   2079:
				</td>
				<td id="n2079ii" colspan="1">
					<div name="data.c2079" id="combobox2079i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2080" class="form_label"  align="center">
					2080:
				</td>
				<td id="n2080ii" colspan="1">
					<div name="data.c2080" id="combobox2080i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2081" class="form_label"  align="center">
					   2081:
				</td>
				<td id="n2081ii" colspan="1">
					<div name="data.c2081" id="combobox2081i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2082" class="form_label"  align="center">
					2082:
				</td>
				<td id="n2082ii" colspan="1">
					<div name="data.c2082" id="combobox2082i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2083" class="form_label"  align="center">
					   2083:
				</td>
				<td id="n2083ii" colspan="1">
					<div name="data.c2083" id="combobox2083i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2084" class="form_label"  align="center">
					2084:
				</td>
				<td id="n2084ii" colspan="1">
					<div name="data.c2084" id="combobox2084i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2085" class="form_label"  align="center">
					   2085:
				</td>
				<td id="n2085ii" colspan="1">
					<div name="data.c2085" id="combobox2085i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2086" class="form_label"  align="center">
					2086:
				</td>
				<td id="n2086ii" colspan="1">
					<div name="data.c2086" id="combobox2086i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2087" class="form_label"  align="center">
					   2087:
				</td>
				<td id="n2087ii" colspan="1">
					<div name="data.c2087" id="combobox2087i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2088" class="form_label"  align="center">
					2088:
				</td>
				<td id="n2088ii" colspan="1">
					<div name="data.c2088" id="combobox2088i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2089" class="form_label"  align="center">
					   2089:
				</td>
				<td id="n2089ii" colspan="1">
					<div name="data.c2089" id="combobox2089i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
             </table>
    <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">

        <tr>
            <td class="form_label"  align="center">
                发起人:
            </td>
            <td colspan="2">
                <input id="creator" class="nui-textbox" name="data.creator"/>
            </td>
            <td class="form_label"  align="center">
                发起日期:
            </td>
            <td colspan="2">
                <input id="datetime" dateFormat="yyyy-MM-dd HH:mm:ss" style="width: 100%" class="nui-textbox" name="data.datetime"/>
            </td>
        </tr>
        <tr>
            <td class="form_label"  align="center">
                新增原因:
            </td>
            <td colspan="5">
                <input class="nui-textarea"  onvalidation="hasIllegalChar(e,1000,true,true)" required="true" requiredErrorText="请输入新增原因" style="width: 100%" name="data.reason"/>
            </td>
        </tr>
    </table>
	<table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table" id="personTable">
		<tr>
			<td class="form_label">
				校核人员:
			</td>
<!-- 			<td colspan="5"> -->
<!-- 				<input class="nui-combobox" dataField="resultList.EmployeeSource" onvaluechanged="onchangePerson" -->
<!-- 					   id="jhry" name="data.jhry" textField="empname" style="width:50%" -->
<!-- 					   url="" required="true" -->
<!-- 					   requiredErrorText="请选择校核人员" valueField="empid"/> -->
<!-- 			</td> -->
 <td colspan="5">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="jhry"  name="jhry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/>
                    </td>
		</tr>
		<tr>
			<td class="form_label">
				抄送人员:
			</td>

			<td colspan="5">
				<input property="editor" id="ccry" name="data.ccry" class="nui-textboxlist"
					   dataField="list" style="width:250px"
					   url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"
					   valueField="empcode" textField="empcodename" searchField="keyword"
				/>

			</td>
		</tr>
	</table>
    <div id="btn" class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
        <table width="100%">
            <tr>
                <td style="text-align:center;" colspan="4">
                    <a class="nui-button" id="btnSubmit"  onclick="onOk('manualActivity')">提交</a>
                    <span style="display:inline-block;width:25px;"></span>
                    <a id='saveDraftBtn' class="nui-button"  onclick="onOk('')">保存至草稿</a>
                    <span style="display:inline-block;width:25px;"></span>
                    <a class="nui-button" onclick="onCancel()">关闭</a>
                </td>
            </tr>
        </table>
    </div>
</div>

<script type="text/javascript">
    nui.parse();
    var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
    
    if(isadmin == 'true'){ //如果是管理员
        $('#personTable').hide();
        nui.get('saveDraftBtn').hide();
    }
	//审核人员设置
//  	nui.get('jhry').setAjaxType("POST");
//  	nui.get('jhry').load(encodeURI("com.cgn.components.coframe.RoleService.getEmpListByRoleInfo.biz.ext?roleCode=ITMP_SPRY_" +  getCookie('jdname')));
   

    var jzid = parent.nui.get("jzid").getValue();
    var jdid = parent.nui.get("jdid").getValue();
    nui.get("jd").setValue(jdid);
    nui.get('jz').setAjaxType("POST"); nui.get('jz').load( "com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=" + jdid);
    nui.get("jz").setValue(jzid);
    labelModel("jz");
    labelModel("jd");
    labelModel("type");
    labelModel("creator");
    labelModel("datetime");
    function reloadJz(e) {
        var jdid = jdCombox.getValue();
        jzCombox.setValue("");
        var url = "com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=" + jdid;
        jzCombox.setUrl(url);
    }
    function labelModel(column) {
        var c = nui.get(column);
        if (c.setReadOnly) c.setReadOnly(true);     //只读
        if (c.setIsValid) c.setIsValid(true);      //去除错误提示
        if (c.addCls) c.addCls("asLabel");          //增加asLabel外观

    }
    $(function() {
        nui.get("creator").setValue('<%=username %>');
        nui.get("datetime").setValue('<%=dataTime %>');
        var parms = "{baseid:"+jdid+",crewid:"+jzid+",type:n}";
            var urlStr = "com.cgn.itmp.basecommon.Common.getBaseCircle.biz.ext";
        $.ajax({
            url:urlStr,
            type:'POST',
            data:parms,
            cache:false,
            contentType:'text/json',
            success:function(data){
                var returnJson = nui.decode(data);
                if(returnJson.data.sucess){
                    var start = returnJson.data.start;
                    var end = returnJson.data.end;
                    for(var i = 1991;i < parseInt(start);i++){
                        $('#n'+i).hide();
                        $('#n'+i+"ii").hide();
                    }
                    for(var i = parseInt(end)+11;i <= 2089 ;i++){
                        $('#n'+i).hide();
                        $('#n'+i+"ii").hide();
                    }
                    if(jdid == "86"){
                        for(var i=parseInt(start);i<=parseInt(end)+10;i++){
                            nui.get('combobox'+i+'i').setAjaxType("POST"); nui.get('combobox'+i+'i').load("com.cgn.itmp.basecommon.Common.getStatus.biz.ext?type=taishanbase");
                        }
                    }else{
                        for(var i=parseInt(start);i<=parseInt(end)+10;i++){
                            nui.get('combobox'+i+'i').setAjaxType("POST"); nui.get('combobox'+i+'i').load("com.cgn.itmp.basecommon.Common.getStatus.biz.ext?type=otherbases");
                        }
                    }
                }
            }
        });
    });
    function onJhryValidation(e){
        if(isadmin != 'true'){ //如果不是管理员
            var sendee = e.value;
            if(sendee == "" || sendee == null || sendee == undefined ){
                e.errorText = "请选择校核人员";
                e.isValid = false;
            }
        }
    }
    function saveData(nextStep){

        var form = new nui.Form("#dataform1");
        form.setChanged(false);
        //保存
        var urlStr = "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandOverhaul.addZYJC_CGD_Overhaul.biz.ext";


        form.validate();
        if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
		nui.get("#btnSubmit").setEnabled(false);
		nui.get("#saveDraftBtn").setEnabled(false);
        var data = form.getData(false,true);
        data.data['isadmin'] = isadmin;
		if(isadmin == 'true'){
			data.data['entity'] = 'com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Container';
		}
        data.data['finishFirstActivityId'] = nextStep;
        var json = nui.encode(data);

        $.ajax({
            url:urlStr,
            type:'POST',
            data:json,
            cache:false,
            contentType:'text/json',
            success:function(text){
                var returnJson = nui.decode(text);
                if(returnJson.exception == null){
                      var message = "提交成功";
                	   if(nextStep == '' && isadmin != 'true'){
			            	message = "保存成功，请在我的草稿中尽快处理该流程，否则影响数据操作！";
			            }
						            
                    nui.alert(message, "提交提示", function(action){
                        if(action == "ok" || action == "close"){
                            CloseWindow("saveSuccess");
                        }
                    });
                }else{
                    nui.alert("保存失败", "系统提示", function(action){
                        if(action == "ok" || action == "close"){
                            //CloseWindow("saveFailed");
                        }
                    });
                }
            },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
									nui.get("#btnSubmit").setEnabled(true);
									nui.get("#saveDraftBtn").setEnabled(true);
							});
						 }
        });
    }

    //页面间传输json数据
    function setFormData(data){
        //跨页面传递的数据对象，克隆后才可以安全使用
            var infos = nui.clone(data);
                       nui.get('userToken').setValue("<%=TokenUtil.getTokenString(request.getSession())%>");
                        //保存list页面传递过来的页面类型：add表示新增、edit表示编辑
                        nui.getbyName("pageType").setValue(infos.pageType);
                         var json = infos.record;
                        nui.get('checkprojectname').setValue(infos.checkprojectname);
                         nui.get('protype').setValue(json.data.zytool);
        if (infos.pageType == "view") {
            var form = new nui.Form("#dataform1");//将普通form转为nui的form
            form.setData(json);
            form.setChanged(false);

            nui.get('datetime').setValue(nui.formatDate ( json.data.datetime , "yyyy-MM-dd HH:mm:ss" ));
            var fields = form.getFields();
            for (var i = 0, l = fields.length; i < l; i++) {
                var c = fields[i];
                if (c.setReadOnly) c.setEnabled(false);     //只读
                if (c.setIsValid) c.setIsValid(true);      //去除错误提示
                if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
            }
			$("#btnSubmit").hide();
			$("#saveDraftBtn").hide();
            $('#personTable').hide();
        }  else{
       nui.get('orderno').setValue(json.data.orderno);
                    	}
    }

    //关闭窗口
    function CloseWindow(action) {
        if (action == "close" && form.isChanged()) {
            if (confirm("数据被修改了，是否先保存至草稿？")) {
                saveData('');
            }
        }
        if (window.CloseOwnerWindow)
            return window.CloseOwnerWindow(action);
        else window.close();
    }

    //确定保存或更新
    function onOk(nextStep) {
        saveData(nextStep);
    }
    function onCloseClick(e) {
        var obj = e.sender;
        obj.setText("");
        obj.setValue("");
    }
    //取消
    function onCancel() {
        CloseWindow("cancel");
    }
</script>
<style>
    ul,li{list-style:none;}

    ul li{float:left;margin:3px;}
    {overflow:hidden;}
</style>
</body>
</html>
