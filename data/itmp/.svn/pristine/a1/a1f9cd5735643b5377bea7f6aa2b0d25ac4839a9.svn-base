<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>
<html>
<%--
- Author(s): littlebear
- Date: 2019-08-01 16:16:36
- Description:
    --%>
<head>
<title></title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
	
<script src="<%= request.getContextPath()%>/common/common.js"
   	 type="text/javascript"></script>
   	<script src="<%= request.getContextPath()%>/common/nui/nui.js" type="text/javascript"></script>
</head>
<style>
.sx{
 background-color:red;
	cursor: pointer;
}
</style>
<body style="background-color: #f1f1f1; overflow: scroll;">
         <div class="nui-fit">
                <div 
                        id="datagrid2"
                        dataField="machines"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        pageSize="20" sizeList="[20,100,1000]"
                        showPageIndex="false"
                        onselectionchanged="ceshi"
                        allowCellEdit="true"
                        allowCellSelect="true"
                        multiSelect="true"
                        editNextOnEnterKey="true" 
                        showPager="false"
                        >
                       <div header="学历信息">
			                <div property="columns">
			                    <div field="name" width="100">学历</div>
			                    <div field="operatingnumber" width="120">毕业院校</div>
			                </div>
			            </div>       
                    <div property="columns" >
                        <div field="index" type="indexcolumn" name="index" headerAlign="center" allowSort="true" >
                            序号
                        </div>
                        
                        <div field="name" name="name" headerAlign="center" allowSort="true" >
                            姓名
                        </div>
                        <div field="operatingnumber" name="operatingnumber" headerAlign="center" allowSort="true" >
                            操作证编号
                        </div>
                        
                        <div field="job" name="job" headerAlign="center" allowSort="true" >
                            作业类别
                        </div>
                        <div field="authority" name="authority" headerAlign="center" allowSort="true" >
                            发证机关
                        </div>
                        <div field="items" name="items" headerAlign="center" allowSort="true"   renderer="dicCZXM">
                            操作项目
                        </div>
                		<div field="initial" name="initial" headerAlign="center" allowSort="true" >
                            初领日期
                        </div>
                        <div field="validity" name="validity" headerAlign="center" allowSort="true" >
                            证件有效期
                        </div>
                        <div field="review" name="review" headerAlign="center" allowSort="true" >
                            复审日期
                        </div>
                        <div field="reviewresult" name="reviewresult" headerAlign="center" allowSort="true" >
                            结果
<!--                             <input class="nui-textbox" enabled="true" name="reviewresult" property="editor" required="false" visible="true"/> -->
                        </div>
                        <div field="reviewremarks" name="reviewremarks" headerAlign="center" allowSort="true" >
                            备注
<!--                             <input class="nui-textbox" enabled="true" name="reviewremarks" property="editor" required="false" visible="true"/> -->
                        </div>
                        <div field="cernumber" allowSort="true" align="left" headerAlign="center" width="">
                            证书编号
                            
                        </div>
                        <div field="projcode" allowSort="true" align="left" headerAlign="center" width="">
                            项目代号
                            
                        </div>
                        <div field="validdate" allowSort="true" align="left" headerAlign="center" width="">
                            有效时间
                            
                        </div>
                        <div field="office" allowSort="true" align="left" headerAlign="center" width="">
                            发证机关
                            
                        </div>
                        <div field="recordresult" name="recordresult" headerAlign="center" allowSort="true" >
                            结果
<!--                             <input class="nui-textbox" enabled="true" name="recordresult" property="editor" required="false" visible="true"/> -->
                        </div>
                        <div field="recordremarks" name="recordremarks" headerAlign="center" allowSort="true" >
                            备注
<!--                             <input class="nui-textbox" enabled="true" name="recordremarks" property="editor" required="false" visible="true"/> -->
                        </div>
                                             
                    </div>
                </div>
            </div>
            <div class=""  style="text-align:center;width:100%;height:8%;" showToolbar="false" showFooter="false" >
				<a class="nui-button"  onclick="onCancel()">
                                关闭
                            </a>
				</div>
	<script type="text/javascript">
    	nui.parse();
            var grid = nui.get("datagrid1");
            var grid2 = nui.get("datagrid2");
            
            var jdid=getCookie('jdid');
            var jzid=getCookie('jzid');
            var id=getQueryString("id");
            chushihua();
            //得到跨页面传过来的值
           function getQueryString(name) {
				var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
				var r = window.location.search.substr(1).match(reg);
				if (r != null) return unescape(r[2]); return null;
			}      
 function onCancel(){
            CloseWindow("cancel");
        }
        
         function CloseWindow(action){

        if(action=="close"){
            }else if(window.CloseOwnerWindow){
            	return window.CloseOwnerWindow(action);
            }else{
	            return window.close();
            }
        }
            function chaxun(){
            	var a=fz();
     			
                grid.load(a);
            }
            //初始化合并单元格式
            function chushihua(){
            grid2.loading("正在加载,请稍等...");
            var data={uuid:id,jd:jdid};
             var json = nui.encode({paramdata:data});
                $.ajax({
                    url:"com.cgn.itmp.weldingmanagement.reviewrecordbiz.getReviewrecord.biz.ext",
                    type:'POST',
                    data:json,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
                    	var index=text.data.length;
                    	var marges = new Array();
                    	var json = new Array();
                    	var x=0;
                    	var index2=1;
                    	//遍历主表
                    	for(var i=0;i<index;i++){
                    		index2=1;
                    		if(text.data[i].certificates.length>0){
                    			index2=text.data[i].certificates.length;
                    		}
                    		//添加合并单元格格式
                    		for(var row=1;row<11;row++){
                				var a={};
                    			a["rowIndex"]=x;
                    			a["columnIndex"]=row;
                    			a["rowSpan"]=index2;
                    			a["colSpan"]=1;
	                   			marges.push(a);
                			}
                    		x+=index2;
                    		
                    		var b={};
                    			b["name"]=text.data[i].name;
                    			b["operatingnumber"]=text.data[i].operatingnumber;
                    			b["job"]=text.data[i].job;
                    			b["authority"]=text.data[i].authority;
                    			b["items"]=text.data[i].items;
                    			b["initial"]=text.data[i].initial;
                    			b["reviewresult"]=text.data[i].reviewresult;
                    			b["reviewremarks"]=text.data[i].reviewremarks;
//                     			var validity=new Date(text.data[i].validity);
//                     			if(validity>starttime&&validity>endtime){
//                     				b["reviewresult"]="合格";
//                     				b["reviewremarks"]="";
//                     			}else if(validity>starttime&&validity<endtime){
//                     				b["reviewresult"]="合格";
//                     				b["reviewremarks"]="注意到期时间";
//                     			}else{
//                     				b["reviewresult"]="不合格";
//                     				b["reviewremarks"]="";
//                     			}
								if(text.data[i].validity!=null){
	                    			b["validity"]=nui.formatDate(nui.parseDate(text.data[i].validity),"yyyy-MM-dd");
                    			}
                    			if(text.data[i].initial!=null){
	                    			b["initial"]=nui.formatDate(nui.parseDate(text.data[i].initial),"yyyy-MM-dd");
                    			}
//                     			b["validity"]=text.data[i].validity;
                    			b["review"]=text.data[i].review;
                    			
                    			if(text.data[i].certificates.length>0){
		                    		//数据处理添加到列表中	
		                    		for(var r=0;r<index2;r++){
		                    			var child=$.extend(true,{},b);;
		                    			child["cernumber"]=text.data[i].certificates[r].cernumber;
		                    			child["projcode"]=text.data[i].certificates[r].projcode;
		                    			child["recordresult"]=text.data[i].certificates[r].recordresult;
		                    			child["recordremarks"]=text.data[i].certificates[r].recordremarks;
		//                     			var validdate=new Date(text.data[i].certificates[r].validdate);
		//                     			if(validdate>starttime&&validdate>endtime){
		//                     				child["recordresult"]="合格";
		//                     				child["recordremarks"]="";
		//                     			}else if(validity>starttime&&validity<endtime){
		//                     				child["recordresult"]="合格";
		//                     				child["recordremarks"]="注意到期时间";
		//                     			}else{
		//                     				child["recordresult"]="不合格";
		//                     				child["recordremarks"]="";
		//                     			}
									if(text.data[i].certificates[r].validdate!=null&&text.data[i].certificates[r].validdate!=""){
										child["validdate"]=nui.formatDate(nui.parseDate(text.data[i].certificates[r].validdate),"yyyy-MM-dd");
									}
// 		                    			child["validdate"]=text.data[i].certificates[r].validdate;
		                    			child["office"]=text.data[i].certificates[r].office;
		                    			child["uuid"]=text.data[i].certificates[r].uuid;
		                    			json.push(child);
		                    		}
                    			}else{
                    				json.push(b);	
                    			}
                    	}
                    	
                    //添加数据
                       grid2.setData(json);
                    //添加格式
                       grid2.mergeCells(marges);
                       grid2.unmask();
                    }
                    });
                    
                }
            
            
           
           	function huigun(text){
           		
           		var xin=new Array();
           		var xy=grid2.getData();
           		var cx=text.data;
           		for(var i=0;i<cx.length;i++){
           			var pd=0;
           			var yi=cx[i].operatingnumber;
           			for(var j=0;j<xy.length;j++){
           				var er=xy[j].operatingnumber;
           				if(yi==er){
           					pd=1;
           				}
               		}
           			if(pd==0){
           				xin.push(cx[i]);
           			}
           		}
           		text={data:xin};
           	return text;
           	}
            
            function setData(data){
            	zhi=data;
            	panduan="edit";
                data = nui.clone(data);
            	grid2.loading("正在加载,请稍等...");
            	nui.get("tcompany").setValue(data.tcomany);
            	nui.get("combobox1").setValue(data.overhaul);
            	nui.get("copyperson").setValue(data.copyperson);
            	nui.get("review_person").setValue(data.review_person);
            	
                
                var json = nui.encode({paramdata:data});
                $.ajax({
                    url:"com.cgn.itmp.weldingmanagement.reviewrecordbiz.getReviewrecord.biz.ext",
                    type:'POST',
                    data:json,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
                    	
                    	var index=text.data.length;
                    	var marges = new Array();
                    	var json = new Array();
                    	var x=0;
                    	//遍历主表
                    	for(var i=0;i<index;i++){
                    		var index2=text.data[i].certificates.length;
                    		//添加合并单元格格式
                    		for(var row=1;row<12;row++){
                				var a={};
                    			a["rowIndex"]=x;
                    			a["columnIndex"]=row;
                    			a["rowSpan"]=index2;
                    			a["colSpan"]=1;
	                   			marges.push(a);
                			}
                    		
                    		x+=index2;
                    	//数据处理添加到列表中	
                    		for(var r=0;r<index2;r++){
                    			var b={};
                    			b["name"]=text.data[i].name;
                    			b["operatingnumber"]=text.data[i].operatingnumber;
                    			b["job"]=text.data[i].job;
                    			b["authority"]=text.data[i].authority;
                    			b["items"]=text.data[i].items;
                    			b["initial"]=text.data[i].initial;
                    			b["validity"]=text.data[i].validity;
                    			b["review"]=text.data[i].review;
                    			b["cernumber"]=text.data[i].certificates[r].cernumber;
                    			b["projcode"]=text.data[i].certificates[r].projcode;
                    			b["validdate"]=text.data[i].certificates[r].validdate;
                    			b["office"]=text.data[i].certificates[r].office;
                    			b["uuid"]=text.data[i].certificates[r].uuid;
                    			b["reviewresult"]=text.data[i].reviewresult;
                    			b["reviewremarks"]=text.data[i].reviewremarks;
                    			b["recordresult"]=text.data[i].certificates[r].recordresult;
                    			b["recordremarks"]=text.data[i].certificates[r].recordremarks;
                    			json.push(b);
                    		}
                    	}
                    	
                    //添加数据
                       grid2.setData(json);
                    //添加格式
                       grid2.mergeCells(marges);
                       var formData=fz();
                       grid.load(formData);
                    }
                    });
                    grid2.unmask();
                }


			//添加
			function tankuang(){
				var array=new Array();
 				var id=new Array;
				var rows = grid.getSelecteds();
				var yicunzai=grid2.data;
				grid.removeRows(rows,true);
				for (var index in rows){
					if(!isNaN(index)){
						id.push(rows[index]["operatingnumber"]);
					}
				}
				for (var index in yicunzai){
					if(!isNaN(index)){
						id.push(yicunzai[index]["operatingnumber"]);
					}
				}
				bianli(id);
				
				
			}
			//删除
			function shanchu(){
				var tiaojian=new Array;
				var id=new Array;
				var rows = grid2.getSelecteds();
				
				for (var index in rows) {
					if(!isNaN(index)){
						id[index]=rows[index]["operatingnumber"];
					}
				}
				var rowall=grid2.data;
				var remove=new Array;
				for(var i=0;i<id.length;i++){
				    for(var j=0;j<rowall.length;j++){
				        if(rowall[j]["operatingnumber"]==id[i]){
				        
				 			remove.add(rowall[j]);
				 			//数组中删除当前元素
				 			rowall.splice(j,1);
				 			//减一个下表
				            j--;
				        }else{
				        	tiaojian.push(id[j]["operatingnumber"]);
				        }
				    }
				}
				
// 				grid2.SetData(rowall);
				bianli(tiaojian);
	            var formData=fz();
	            grid.load(formData);
				grid2.removeRows(remove,true);
			}
			//清空
			function qingkong(){
				var data=grid2.getData();
				grid2.removeRows(data,true);
				grid.load(formData);
			}
			//
			function chec(){
				nui.get('combobox1').setAjaxType("POST");
				nui.get('combobox1').load("com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.getOverhaulSequence.biz.ext?base="+jdid);
			
			}
			
			var editRow = null;
			//测试
			function ceshi(){
				var row=grid2.getData();
				grid.beginEditRow(row);
				editRow = row;
			}
			
			
			//打印
			function saveData(){
				var form=new nui.Form("#form1").getData(false,false);
				var form2=new nui.Form("#form2").getData(false,false);
				
				var combobox=nui.get("combobox1").text;
				if(combobox==""){
					alert("请填写大修轮次");
					return;
				}
				if(form["tcompany"]==""){
					alert("请填写公司名称");
					return;
				}
				if(form2["copyperson"]==""){
					alert("请填写抄送人员");
					return;
				}
				if(form2["review_person"]==""){
					alert("请填写复审人员");
					return;
				}
				
				if(panduan=="edit"){
					
					
					
					zhi.record_name=combobox+form["tcompany"]+"检修特殊工种操作证审查表";
					zhi.record_person="测试";
					zhi.copyperson=form2["copyperson"],
					zhi.review_person=form2["review_person"]
					
					
					var obj=grid2.getData();
	 				
					var json={reviewrecord:zhi,data:obj};
					json=nui.encode(json);
	                $.ajax({
	                    url:"com.cgn.itmp.weldingmanagement.reviewrecordbiz.updateReviewrecord.biz.ext",
	                    type:'POST',
	                    data:json,
	                    cache:false,
	                    contentType:'text/json',
	                    success:function(text){
	                    	
	                      
	                        }
	                        });
	                return;
					
				}
				
				
				
				
				var reviewrecord={
						tcomany:form["tcompany"],
						overhaul:combobox,
						record_name:combobox+form["tcompany"]+"检修特殊工种操作证审查表",
						record_person:"",
						copyperson:form2["copyperson"],
						review_person:form2["review_person"]
				};
 				
 				
				var json=nui.encode({reviewrecord:reviewrecord,data:obj});
				
                $.ajax({
                    url:"com.cgn.itmp.weldingmanagement.reviewrecordbiz.addReviewrecord.biz.ext",
                    type:'POST',
                    data:json,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
                    	
                      
                        }
                        });
                    }
//性别公共代码转换
           function dicCZXM(e) {
               return nui.getDictText("CZXM", e.value);
           }
    </script>
</body>
</html>