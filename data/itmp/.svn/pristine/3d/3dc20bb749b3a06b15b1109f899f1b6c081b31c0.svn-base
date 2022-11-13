<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true" %>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%@ page import="com.eos.data.datacontext.IUserObject" %>
<%@ page import="com.cgn.itmp.basecommon.CommonUtil" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%


    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
    String dataTime = df.format(new Date());

    IUserObject cu = CommonUtil.getUserObject();
    String userid = cu.getUserId();
    String username = cu.getUserRealName();

%>
<html>

<head>
    <title>
        大修执行条目录入
    </title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script><script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
    </script>
</head>
<body>
<!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
<input name="pageType" class="nui-hidden"/>
<div id="form1" style="padding-top:5px;">
    <!-- 人员及原因信息 -->
    <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
        <tr>
            <td class="form_label" align="center">
                删除人:
            </td>
            <td colspan="2">
                <input id="creator" style="text-align: center;border: 0" readonly="readonly" value="<%=username %>"/>
            </td>
        </tr>
        <tr>
            <td class="form_label" align="center">
                删除时间:
            </td>
            <td colspan="2">
                <input id="datetime" style="text-align: center;border: 0" readonly="readonly" value="<%=dataTime %>"/>
            </td>
        </tr>
        <tr>
            <td class="form_label" align="center">
                删除原因:
            </td>
            <td colspan="2">

                <textarea id="reason" style="width: 100%"></textarea>
            </td>
        </tr>
    </table>
</div>
<div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
    <table width="100%">
        <tr>
            <td style="text-align:center;" colspan="4">
                <a class="nui-button"  onclick="saveData()">
                    提交
                </a>
                <span style="display:inline-block;width:25px;">
                            </span>
                <a class="nui-button" onclick="onCancel()">
                    关闭
                </a>
            </td>
        </tr>
    </table>
</div>
<script type="text/javascript">
    nui.parse();
    var json;

    function saveData() {

        var reason = $('#reason').val();
        if ('' == reason) {
            nui.alert("请输入原因", "提示");
            return;
        }
        var success = true;
        for (var i = 0; i < json.tcgncgdtyrc.length; i++) {
            var jsondata = "{'tcgncgdtyrc':{'parms':'remove','uuid':'" + json.tcgncgdtyrc[i].uuid + "','isdelete':'1','cname':'" + json.tcgncgdtyrc[i].checkprojectname + "','currentuser':'" + $('#creator').val() + "','currentdatetime':'" + $('#datetime').val() + "','currentreason':'" + $('#reason').val() + "'}}";
            $.ajax({
                url: "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.CGDTY.biz.ext",
                type: 'POST',
                data: jsondata,
                cache: false,
                contentType: 'text/json',
                success: function (text) {
                    var returnJson = nui.decode(text);
                    if (returnJson.exception == null) {

                    } else {
                        success = false;
                        break;
                    }
                },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
							});	
						}
            });
        }
        if (success) {
            nui.alert("删除成功", "系统提示", function (action) {
                onCancel();
            });
        } else {
            nui.alert("删除失败", "系统提示", function (action) {
                onCancel();
            });
        }

    }

    /*   var json;
      function saveData(){
                  var rows = grid.getSelecteds();
                  if(rows.length > 0){
                      nui.confirm("确定删除选中记录？","系统提示",
                      function(action){
                          if(action=="ok"){
                              var json = nui.encode({tcgncgdtyrcs:rows});
                              grid.loading("正在删除中,请稍等...");
                              $.ajax({
                                  url:"com.cgn.itmp.outlineandplan.specialinspection.tcgncgdtyrcbiz.ljDeletetcgncgdtyrcs.biz.ext",
                                  type:'POST',
                                  data:json,
                                  cache: false,
                                  contentType:'text/json',
                                  success:function(text){
                                      var returnJson = nui.decode(text);
                                      if(returnJson.exception == null){
                                          grid.reload();
                                          nui.alert("删除成功", "系统提示", function(action){
                                              });
                                          }else{
                                              grid.unmask();
                                              nui.alert("删除失败", "系统提示");
                                          }
                                      }
                                      });
                                  }
                                  });
                              }else{
                                  nui.alert("请选中一条记录！");
                              }
                          } */

    //页面间传输json数据
    function setFormData(data) {
        //
        //跨页面传递的数据对象，克隆后才可以安全使用
        var infos = nui.clone(data);

        json = infos.record;

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
</script>
</body>
</html>
