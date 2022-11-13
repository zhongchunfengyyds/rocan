<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- 
  - Author(s): jirukang
  - Date: 2019-10-22 10:45:31
  - Description:被检部位选择树弹出框选择树
-->
<head>
<title>被检部位选择树</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
    
</head>
<style>
	html,body{
		height:100%;
	}
</style>
<body>
<div style="width: 100%; height: 100%; ">
		<ul id="tree1" class="mini-tree" style="height: 100%"
			 onbeforeexpand="onBeforeExpand" onnodeclick="onNodeSelect" onbeforeexpand="onBeforeExpand"
			onnodeselect="onNodeSelect" expandOnNodeClick="true"
			onbeforenodeselect="onBeforeNodeSelect" 
			showTreeIcon="true" showTreeIcon="true" textField="text" idField="id">
		</ul>
		
	</div>


	<script type="text/javascript">
    	nui.parse();
    	
    	var jdid = getCookie('jdid');
		var jzid = getCookie('jzid');
		var tree;
		var parentdata;
		var separentdata;
    	var data={};
    	data.base=jdid;
    	data.crew=jzid;
    	var jsondata=nui.encode(data);
    	showtree();
		function showtree(){
		$.ajax({
					url : "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutreebiz.gettree.biz.ext",
					type : 'POST',
					data : jsondata,
					contentType : 'text/json',
					success : function(treeData) {
					
						var tree1 = mini.get("tree1");
						tree1.loadList(treeData.treeData, "id", "pid");
					}
				});
			}
	
		
		function getData(){
			var treeData={}
			treeData.tree=tree;
			treeData.separentdata=separentdata;
			treeData.parentdata=parentdata;
			return treeData;
		}
		
    	 //菜单点击事件
		 function onNodeSelect(e) {
			var node = e.node;
			var isLeaf = e.isLeaf;
			
			if(isLeaf){
				tree=node;
				CloseWindow("cancel");
			}else{
				nui.alert("请选择被检部位!")
			}
			
		}
		function onBeforeExpand(e) {
			var tree1 = e.sender;
			var nowNode = e.node;
			var level = tree1.getLevel(nowNode);
			var root = tree1.getRootNode();
			if(level=="0"){
				parentdata=nowNode.text;
			}
			if(level=="1"){
				separentdata=nowNode.text;
			}
			tree1.cascadeChild(root, function(node) {
				if (tree1.isExpandedNode(node)) {
					var level2 = tree1.getLevel(node);
					if (node != nowNode && !tree1.isAncestor(node, nowNode)
							&& level == level2) {
						tree1.collapseNode(node, true);
					}
				}
			});

		}
		function onBeforeNodeSelect(e) {
            var tree = e.sender;
            var node = e.node;
            if (tree.hasChildren(node)) {
                e.cancel = true;
            }
        }
        
        //关闭窗口
		function CloseWindow(action) {
			if (window.CloseOwnerWindow)
				return window.CloseOwnerWindow(action);
			else
				window.close();
		}
		//树点击查询
		/* function searchInfo(e){
			var tree = mini.get("tree1");
            var node = tree.getSelectedNode();
            if (node) {
	            var form = new nui.Form("#form1");
				form.jd = jdid;
				form.jz = jzid;
				var data = form.getData(false, false);
				 nui.get("partname").setValue(node.text);
				data["criteria/_expr[4]/partname"] = node.text;
				data["criteria/_expr[7]/isdel"] = "0";
				grid.load(data);//grid查询 
            }
		} */
    </script>
</body>
</html>