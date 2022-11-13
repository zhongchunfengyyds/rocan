<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): LENOVO
- Date: 2019-08-16 16:22:13
- Description:
    --%>
    <head>
        <title>
            焊接质量计划
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        <script type="text/javascript" src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>
        <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
        <link rel="stylesheet" href="<%= request.getContextPath() %>/css/themes/default/css/mdialog.css" />
        <script src="<%= request.getContextPath() %>/scripts/mdialog.js"></script>
    </head>
    <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <input name="pageType" class="nui-hidden"/>
        <input name="uid" class="nui-hidden"/>
        <input name="qnum" class="nui-hidden"/>
        <div id="dataform1" style="padding-top:5px;">
            <!-- hidden域 -->
            <input class="nui-hidden" name="entity.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken" >
            <div class="nui-hidden" name="quality.uuid">
            </div>
            <div class="nui-hidden" name="quality.isdel" value="0">
            </div>
            <input class="nui-hidden" name="quality.uuid"/>
              <input class="nui-hidden" id="fpath" name="quality.filepath"/>
            <input class="nui-hidden" id="fname" name="quality.filename"/>
			<input class="nui-hidden" id="fid" name="quality.fj"/> 
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">                
                	
                	<tr>
                	<td class="form_label">
                   WQP流程状态
                    </td>
                    <td colspan="2">
                        <input class="nui-textbox" style="width:100%" readOnly="readOnly" name="quality.wqp_statu"/>
                    </td>
                	<td class="form_label">
                 	 当前任务状态
                    </td>
                    <td colspan="2">
                        <div class="nui-textbox" style="width:100%" readOnly="readOnly" name="quality.state"></div>
                    </td>
                	</tr>
                	<td class="form_label">
                   WQP编号
                    </td>
                    <td colspan="1" id="qualitynumber">
                        <input class="nui-textbox" style="width:100%" id="qualitynumber" readOnly="readOnly" name="quality.qualitynumber"/>
                    </td>
                    <td class="form_label">
                   	描述
                    </td>
                      <td colspan="1">
                        <input class="nui-textbox" style="width:100%" readOnly="readOnly" name="quality.describe"/>
                    </td>
                    
                    <td class="form_label">
                  	功能位置
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width:100%" readOnly="readOnly" name="quality.position"/>
                    </td>
                   </tr>
                   <tr>
                <td class="form_label">
                        制造级别
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width:100%" readOnly="readOnly" name="quality.level"/>
                    </td>
                    
                
                    <td class="form_label">
                        接头形式
                    </td>
                    <td colspan="1">
                        <input class="nui-dictcombobox"   dictTypeId="JTXS" style="width:100%" readOnly="readOnly" name="quality.form"/>
                    </td>
                    <td class="form_label">
                        专业
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width:100%" readOnly="readOnly" name="quality.major"/>
                    </td>
                    </tr>
               <tr>
                    <td class="form_label">
                        无损检测方法及比例
                    </td>
                    <td colspan="5">
                        <input class="nui-textbox" style="width:100%" readOnly="readOnly" name="quality.ndtmethod_proportions"/>
                    </td>
             	</tr>
             	<tr>
                    <td class="form_label">
                        预派焊工
                    </td>
                    <td colspan="5">
                        <input class="nui-textbox" style="width:100%" readOnly="readOnly" name="quality.prewelder"/>
                    </td>
             	</tr>
             	<tr>
                    <td class="form_label">
                        实派焊工
                    </td>
                    <td colspan="5">
                    	<input class="nui-textbox" style="width:100%" readOnly="readOnly" name="quality.solidwelder"/>
                    </td>
             	</tr>
             	<tr>
                    <td class="form_label">
                        工作负责人
                    </td>
                    <td colspan="5">
                   		 <input class="nui-textbox" style="width:100%" readOnly="readOnly" name="quality.chargeperson"/>
                        
                    </td>
             	</tr>
             	<tr>
                    <td class="form_label">
                        附件
                    </td>
                     <td  colspan="5" id="fileHref">
                    
                    </td>
                    <td colspan="5"  style="cursor: pointer;display: none">
                    	<span onclick="load()">
                        <input class="nui-textbox" style="width:100%" readOnly="readOnly" name="quality.filerealname" />
                        </span>
                    </td>
             	</tr>
             	<input class="nui-hidden" id="jd" name="quality.jd"/>
             	<input class="nui-hidden" id="jz" name="quality.jz"/>
             	<input class="nui-hidden" name="quality.rounds">
             	<input class="nui-hidden" name="quality.createtime">
             	<input class="nui-hidden" id="fildid" name="quality.fildid">
             	<input class="nui-hidden" id="fj" name="quality.fj">
            </table>
        </div>
        <div class=""  style="text-align:center;width:100%;height:13%;" showToolbar="false" showFooter="false" >
				<a class="nui-button"  onclick="onCancel()">
                                关闭
                            </a>
				</div>
        <script type="text/javascript">
            nui.parse();
            
				
            //回显附件
			function fileHref(){
				var fileRealName = nui.get('fj').value;
				var fileId = nui.get('fildid').value;
			 	var div = document.getElementById('fileHref');
				if(fileRealName!=""&&fileId!=""){
					div.innerHTML = '<a href="javascript:void(0)" onclick="load(\'' + fileId + '\',\'' + fileRealName + '\')" >' + fileRealName + '</a>';
				}
			}
			//附件下载
			function load(fileId,fileRealName) {
				 var elemIF = document.createElement("iframe");
		         elemIF.src = "<%=request.getContextPath()%>/coframe/tools/download.jsp?remoteFile="+fileId+"&name="+encodeURI(fileRealName); 
		         document.body.appendChild(elemIF);
		         elemIF.style.display = "none";
			}
                    //页面间传输json数据
                    function setFormData(data){
                        //跨页面传递的数据对象，克隆后才可以安全使用
                         
                        var infos = nui.clone(data);
                        //保存list页面传递过来的页面类型：add表示新增、edit表示编辑
                        nui.getbyName("pageType").setValue(infos.pageType);
                        //如果是点击编辑类型页面
                        if (infos.pageType == "show") {
                        var loadingTip = new LoadingBox({str:"数据加载中...",left:"43%",top:"30%"});
                            var json = infos.record;
							var qualitynumber=nui.encode({qualitynumber:json.qualitynumber});
							 $.ajax({
				                    url:"com.cgn.itmp.weldingmanagement.qualitybiz.getQualityInfoByqnum.biz.ext",
				                    type:'POST',
				                    data:qualitynumber,
				                    async:true,
				                    contentType:'text/json',
				                    success:function(text){
				                    if(text.quality.state!=null){
				                    	text.quality.state = nui.getDictText("DQRWZT",text.quality.state);
				                    }
				                    if(text.quality.wqp_statu!=null){
				                    	text.quality.wqp_statu = nui.getDictText("WQPLCZT",text.quality.wqp_statu)
				                    }
				                    	
	                        	 	var form = new nui.Form("#dataform1");//将普通form转为nui的form
		                            form.setData(text);
		                            form.setChanged(false);
		                            nui.get("fildid").setValue(text.quality.fildid);
		                            nui.get("fj").setValue(text.quality.fj);
		                         	fileHref();
		                            var jzid = parent.nui.get("jzid").getValue();
					        		var jdid = parent.nui.get("jdid").getValue();
					        		if(text.quality.weldertype=="D"){
					        			var div = document.getElementById('qualitynumber');
										div.innerHTML = '<a href="javascript:void(0)" onclick="showOneQuality(\''+text.quality.qualitynumber+'\')">'+text.quality.qualitynumber+'</a>';
					        		}
					        				
		                        	loadingTip.destroy();
				                        }
				                     });
				                     
                        }
                        nui.get('userToken').setValue("<%=TokenUtil.getTokenString(request.getSession())%>");
                    }
                    
                    
                  
                function showOneQuality(value){
				var json=nui.encode({qualitynumber:value});
				$.ajax({
				url:"com.cgn.itmp.weldingmanagement.qualitybiz.getQualityOneSimple.biz.ext",
					    type:'POST',
					    cache:false,
					    data:json,
					    contentType:'text/json',
					    success:function(text){
					    	nui.open({
					    	showMaxButton : true,
			                    url: "/itmp/weldingmanagement/Quality/QualitySingleformwork.jsp",
			                    title: "查看记录", width: '95%', height: '60%',
			                    onload: function () {//弹出页面加载完成
			                    var iframe = this.getIFrameEl();
			                    var data = {pageType:"editone",record:{quality:text.quality[0]}};//传入页面的json数据
			                    iframe.contentWindow.setFormData(data);
			                    },
			                    ondestroy: function (action) {//弹出页面关闭前
// 			                    grid.reload();
			                }
			                });
					    }
				});
		
		}

                    //关闭窗口
                    function CloseWindow(action) {
                        if (action == "close" && form.isChanged()) {
                            if (confirm("数据被修改了，是否先保存？")) {
                                saveData();
                            }
                        }
                        if (window.CloseOwnerWindow)
                        return window.CloseOwnerWindow(action);
                        else window.close();
                    }

                    //确定保存或更新
                    function onOk() {
                        saveData();
                    }

                    //取消
                    function onCancel() {
                        CloseWindow("cancel");
                    }
                    
$("input[readonly]").keydown(function(e) {
              e.preventDefault();
         });
                </script>
            </body>
        </html>
