/*
* Name:SelectDept 部门选择组件
* Author:PCITOYT
* Version:1.0
*
* Depends:
 *	jquery-1.8.3.js
 *	jquery.ui-1.10.1.js
*/
(function ($, undefined) {

    var _consts = {
        id: {
            DIV: "_deptselection",
            LOADING: "_loading",
			DATA_NOT_FOUND:"_notFound",
            DIALOG: "_dialog",
			TIP:"_tip",
			INPUT:"_input",
			TREE:"_tree",
			LANG_JS:"_deptselection_lang"
        }
	};

    $.widget("cgnui.selectDept", {
        version: "1.0",
        deptselectionId: "",
		fileName:"cgn.ui.selectdept.js",
	    requestCount:0,
		initData:[],
		matchedNodes:[],
		tempSelectedDept:[],
		selectedDept:[],
		loadedDept:[],
		//0：查询未开始  1：查询完毕
		searchStatus:0,
	    //计时器对象
		timeCount:null,
        options: {
			//附加容器
            appendTo: "body",
		    //超时时间30s
			timeout:30000,
			//语言
			lang:'zh-cn',
			//触发事件类型
			eventType:"click",
            height: 420,
            width: 400,
			//是否为模态窗口
            modal: true,
			//标题名称
            title: "部门选择",
			//是否多选
            selectedMulti: false,
		    //默认选中的id
			selectedId:null,
			//数据源
			source:null,
			rootId:null,
			//属性映射
			dataMapping:{
				idKey:"orgid",
				pIdKey:"parentorgid",
				name:"orgname",
				title:"orgname",
				dataField:"list",
				children:"children",
				checked:"Checked",
				matched:"matched",
				url:"url"
			},
			search:{
				//查询关键字名称
				key:"keyWord",
				//前端搜索属性(仅数据源为数组时适用)
				clientSearchAttrs:'',
				//搜索提示信息
				inputTip:'',
				//最小查询字符数
				minChars: 3,
				//延时时间
				delay: 500
			},
			//数据默认为json
			dataType:"json",
			//jsonp回调函数，当dataType="jsonp"时设置
			jsonpCallback:"callback",
			//是否异步
			async:false,
			//最大选择数，默认不限制
		    maxSelectNum:0,
		    //点击确认按钮回调的函数
            ok: null,
		    //点击取消按钮回调的函数
            cancel: null
        },

        _create: function () {
			
            var self = this;
            self.deptselectionId = self.element[0].id + _consts.id.DIV;

			
			//获取js文件所在目录
			var js=document.scripts;
			var jsPath="";
			for(var i=js.length;i>0;i--){
			 if(js[i-1].src.toLowerCase().indexOf(self.fileName)>-1){
			   var langScript=js[i-1];
			   jsPath=langScript.src.substring(0,js[i-1].src.lastIndexOf("/")+1);
			   break;
			 }
			}

			var existsLang=false;

			var url=jsPath+"lang/";

			//检查语言文件是否存在
			for(var i=js.length;i>0;i--){
				if(js[i-1].src.toLowerCase().indexOf(url)>-1){
					existsLang=true;
					break;
				}
			}

			//如果不存在，则动态加载语言文件
			if(!existsLang){
				//设置语言
				self.options.lang=self._getRealLang();
				var jsUrl=jsPath+"lang/"+self.options.lang+".js";
				//加载语言文件
				self._loadLang(jsUrl,url,function(){
					self._createContent();
				});
			}
			
        },

		_createContent:function(){
			var self=this;

			
			//内部容器宽度
			var innerContainerWidth=self.options.width - 32;

			var remainHeight=self.options.selectedMulti?200:110;

			if(!self.options.title){
				self.options.title=$cgn_ui_selectDept_lang.titleText;
			}
			if(!self.options.search.inputTip){
				self.options.search.inputTip=$cgn_ui_selectDept_lang.inputTipText;
			}
			
			 //输入控件
            self.inputControl = $("<input></input>")
                .attr("id", self.deptselectionId+_consts.id.INPUT)
                .attr("type", "text")
				.attr("maxLength",30)
				.val(self.options.search.inputTip)
				.bind("keyup",function(event){
					if(event.keyCode==16||(event.keyCode>=37&&event.keyCode<=40)){
						return ;
					}
					
					if(event.keyCode==13){
						var text= $.trim(self.inputControl.val());
						if(text.length>0&&text.length<self.options.search.minChars){
							alert($cgn_ui_selectDept_lang.minInputCharText.replace("{0}",self.options.search.minChars));
							return;
						}
						//
						if(self.searchStatus==0){
							self._prepareSearch(self);
						}else{
							//回车快捷选择
							self._shortcutSelect(self);
						}
					}else{
						self._prepareSearch(self);
					}
				})
				.bind("focus",function(){
					if(this.value==self.options.search.inputTip){
						this.value='';
						this.style.color='#000';
					}
				})
				.bind("blur",function(){
					if(!this.value){
						this.value=self.options.search.inputTip;
						this.style.color='#999';
					}
				})
                .addClass("ui-deptselection-input")
				.css("background-position",innerContainerWidth-15+"px"+" 6px")
				.css("width",innerContainerWidth);
			
			//加载提示
            self.dataLoading = $("<div></div>").append($cgn_ui_selectDept_lang.loadingText)
                .attr("id", self.element[0].id + _consts.id.LOADING)
                .addClass("mvcui-deptselection-loading")
				.css("width",innerContainerWidth)
				.hide();

			//没有找到数据
            self.dataNotFound = $("<div></div>").append($cgn_ui_selectDept_lang.dataNotFoundText)
                .attr("id", self.element[0].id + _consts.id.DATA_NOT_FOUND)
                .addClass("mvcui-deptselection-dataNotFound")
				.css("width",innerContainerWidth)
				.hide();

			//树
            self.ztree = $("<ul></ul>")
                .addClass("nui-tree")
				.bind("keyup",function(event){
					if(event.keyCode==13){
						self._confirmClose();
					}
				})
				.css("background-color","#fffff")
                .css("height", self.options.height - remainHeight)
                .css("width", innerContainerWidth)
                .attr("id", self.deptselectionId+_consts.id.TREE)
				.css("overflow-y","auto")
				.attr("aysncLoad",false)
				.attr("checkRecursive",false)
                .attr("showCheckBox", self.options.selectedMulti);
			
			//选择提示
            self.selectedDeptMsg=$("<span></span>")
				.addClass("ui-deptselection-selectedtip")
				.append($cgn_ui_selectDept_lang.selectedDeptText);

		    //部门选择限制提示
			self.addMsg=$("<span></span>")
				.append($cgn_ui_selectDept_lang.maxSelectedNumText.replace("{0}",self.options.maxSelectNum))
                .addClass("ui-deptselection-warnning")
				.css("display","none")
				.attr("id", self.deptselectionId+_consts.id.TIP);


			//所选部门显示区域
            self.chooseUserArea = $("<ul></ul>")
                .addClass("ui-deptchosen-choices")
				.attr("id",self.deptselectionId+"_container");
          
            self.okbtn= $("<input></input>")
            .bind("click",function(event){
            	 if (typeof self.options.ok === "function") {
                     self.element.trigger("ok.selectDept");
                 }
            	 var win=nui.get(self.dialogContainer.attr("id"));
 				 win.hide();
				})
			.attr("type", "button")
            .val($cgn_ui_selectDept_lang.okText);
        	//.addClass("nui-button");
           self.Space=$("<span></span>")
           .css("width","10px")
           .attr("width","10px")
           .append("&nbsp;&nbsp;");
            self.cancelbtn= $("<input></input>")
            .bind("click",function(event){
            	if(self.options.cancel&&typeof self.options.cancel === "function"){
					self.options.cancel();
				 }
            	 var win=nui.get(self.dialogContainer.attr("id"));
 				 win.hide();
				})
			.attr("type", "button")
			//.addClass("nui-button")
            .val($cgn_ui_selectDept_lang.closeText);
            
            self.foot = $("<div></div>")
            .css("height","30px")
            .css("text-align","right")
            .css("padding","5px")
            .css("padding-right","15px")
            .attr("property","footer")
            .append(self.okbtn)
            .append(self.Space)
            .append(self.cancelbtn);
		    //部门选择对话框表格容器
            self.deptselectionMainTable = $("<table></table>")
				.addClass("deptmainContainer")
				.attr("cellpadding", "0")
				.attr("cellspacing", "0");
			
          
			//容器
			var ztreeContainer=$("<div></div>").addClass("ui-deptselection-ztreeContainer");
			ztreeContainer.append(self.dataLoading);
			ztreeContainer.append(self.dataNotFound);
			ztreeContainer.append(self.ztree);

            $("<tr></tr>").append($("<td></td>").append(self.inputControl)).appendTo(self.deptselectionMainTable);
            $("<tr></tr>").append($("<td></td>").append(ztreeContainer)).appendTo(self.deptselectionMainTable);

			//如果是多选就显示容器面板
			if(self.options.selectedMulti){
				$("<tr></tr>").append($("<td></td>").append(self.selectedDeptMsg).append(self.addMsg)).appendTo(self.deptselectionMainTable);
				$("<tr></tr>").append($("<td></td>").append(self.chooseUserArea)).appendTo(self.deptselectionMainTable);
			}

            self.dialogContainer = $("<div></div>")
                .attr("title", self.options.title)
                .attr("id", self.element[0].id + _consts.id.DIALOG)
				.attr("height", self.options.height)
				.attr("width", self.options.width)
				.attr("showToolbar",true)
				.attr("showFooter",true)
				.attr("showModal",self.options.modal)
				.attr("allowResize",false)
                .addClass("nui-window")
                .css("display", "none")
                .append(self.deptselectionMainTable)
                .append(self.foot)
                .appendTo(self.options.appendTo==null?$("body"):$(self.options.appendTo));
           
		},

        destroy: function () {
        	//
            $.Widget.prototype.destroy.call(this);
        },

		
        _setOption: function (key, value) {
         
        },

        _init: function () {
           var self = this;
       	  // nui.parse();
		   //最小字符数1
		   if(self.options.search.minChars<=0){
			  self.options.search.minChars==1;
		   }

            if (typeof self.options.ok === "function") {
                self.element.bind('ok.selectDept', function (event, parames) {
					//赋值给选择部门
					self.selectedDept=self.tempSelectedDept.slice(0);
                    var returnItems = self.selectedDept;
					if(!self.options.selectedMulti){
						returnItems=returnItems.length>0?returnItems[0]:null;
					}

                    //执行事件
                    self.options.ok.apply("", [event, returnItems]);
                    //阻止事件冒泡
                    event.stopPropagation();
                });
            }

			self.element.bind(self.options.eventType,function(){
				//var that=this;
				nui.parse();
				//
				//nui.create(self.deptselectionId+_consts.id.TREE);
				var win=nui.get(self.dialogContainer.attr("id"));
			    win.show();
				//清空输入框的值
				self.inputControl.val("");
				
				//初始化树
				self._initTree();
				//初始化数据源
				self._initSource();
				
				
			});
        },

		//初始化数据源
        _initSource: function () {
		   
           var self = this;
		   
		   this.dataNotFound.hide();
           if (typeof self.options.source === "string") {	
        	 
				//检查是否已经请求
			    if(self.requestCount>0)
			    {
			    	 // 
					self._renewStatus();
					 //赋值给临时部门
					self.tempSelectedDept=self.selectedDept.slice(0);
					
					self._refreshSelectedNode(self.selectedDept);

					if(self.options.selectedMulti){
						self._refreshSelectedDeptContainer(self.selectedDept);
					}
			    }else{
			    	nui.ajax({
						url: self.options.source,
						timeout:self.options.timeout,
						dataType:self.options.dataType,
						jsonp:self.options.jsonpCallback,
						data:{"selectedid":self.options.selectedId,"rootid":self.options.rootId},
						success: function (d) {
							 self.initData=d.list.slice(0);
							 if(d.selectedDept){
								self.selectedDept=d.selectedDept;
							 }
							// self._response(d.data);
							 if(d.list.length==0){
								self.dataNotFound.show();
							 }
							// self._fillData();
							 self.requestCount++;
						},
						beforeSend:function(){
							//self._showLoading();
						},
						complete:function(){
							self.dataLoading.hide();
						},error:function(e){
							alert("error:"+e.statusText);
						}
					});
				}
            }else{
				self.initData=self.options.source.slice(0);
				if(self.initData.length>0){
					self._response(self.initData);
				}

                //赋值给临时部门
				self.tempSelectedDept=self.selectedDept.slice(0);
				
				self._refreshSelectedNode(self.selectedDept);

				if(self.options.selectedMulti){
					self._refreshSelectedDeptContainer(self.selectedDept);
				}
            }
        },

		//恢复到初始状态
		_renewStatus: function () {
		   var self = this;
			if(self.initData.length>0){
				for(var i=0;i<self.initData.length;i++){
					var item=self.initData[i];
					if(item){
						item.expanded=false;
					}
				}
				self._response(self.initData);
			}
			//根据临时选择部门恢复选择状态
			self._refreshSelectedNode(self.tempSelectedDept);

			if(self.options.selectedMulti){
				self._refreshSelectedDeptContainer(self.tempSelectedDept);
			}
        },

		_fillData:function(){
			var self=this;

			if(self.options.selectedId&&self.selectedDept.length==0){
				 if (typeof self.options.source === "string"&&self.options.async) {	
					
				 }else{
					 
					var selectedIdArr=self.options.selectedId.split(',');
					var sDept=[];
					for(var i=0;i<self.initData.length;i++){
						var item=self.initData[i];
						if(item){
							if(self.options.selectedMulti){
								for(var j=0;j<selectedIdArr.length;j++){
									if(selectedIdArr[j]){
										if(item[self.options.dataMapping.idKey]==selectedIdArr[j]){
											sDept.push(item);
										}	
									}
								}
							}else{
								if(selectedIdArr[0]){
									if(item[self.options.dataMapping.idKey]==selectedIdArr[0]){
										sDept.push(item);
									}	
								}
							}
						}
					}

					self.selectedDept=sDept.slice(0);
					
				 }
			}

			//赋值给临时部门
			self.tempSelectedDept=self.selectedDept.slice(0);
			
			self._refreshSelectedNode(self.selectedDept);

			if(self.options.selectedMulti){
				self._refreshSelectedDeptContainer(self.selectedDept);
			}
		},
	  
		_initTree:function(){
			var self=this;
			var tree=nui.get(self.deptselectionId+_consts.id.TREE);
			
	       	 tree.setResultAsTree(false);
	       	 tree.setTextField(self.options.dataMapping.name);
	       	 tree.setDataField(self.options.dataMapping.dataField);
	       	 tree.setExpandOnLoad(true);
	       	 tree.setParentField(self.options.dataMapping.pIdKey);
	       	 tree.setIdField(self.options.dataMapping.idKey);
	       	 tree.setAjaxOptions({dataType:self.options.dataType,jsonp:self.options.jsonpCallback});
	       	
			
	       	function beforeload(e){
	       		var text= $.trim(self.inputControl.val());
	       		text=encodeURIComponent(text);
	       		e.params.keyword = text;
			    e.params.rootid = self.options.rootId;
	  		}
	       	if(tree._events["beforeload"]){
	       	   tree._events["beforeload"].clear();
	       	}
			 tree.on("beforeload",beforeload);
			 function loaderror(e){
				 alert("数据加载数据失败！");
			 }
			 if(tree._events["loaderror"]){
				 tree._events["loaderror"].clear();
			 }
			// tree.un("loaderror",loaderror);
        	 tree.on("loaderror",loaderror);
        	 function nodeclick(e){
        		 var treeObj=self._getZTree();
					var flag=true;
					if(self.options.selectedMulti&&self.options.maxSelectNum>0){
						if(!e.node.checked){
							if(self.tempSelectedDept.length>=self.options.maxSelectNum){
								$("#"+self.deptselectionId+_consts.id.TIP).show();
								flag= false;
							}
						}
					}
					if(flag){
						$("#"+self.deptselectionId+_consts.id.TIP).hide();
						//自定触发onCheck事件
						if(!e.node.checked){
							treeObj.checkNode(e.node);
						}else{
							treeObj.uncheckNode(e.node);
						}
						//触发check事件
						nodecheck(e);
					}
			 }
        	 //tree.un("nodeclick",nodeclick);
        	 if(tree._events["nodeclick"]){
				 tree._events["nodeclick"].clear();
			 }
        	 tree.on("nodeclick",nodeclick);
        	 function beforenodecheck(e){
        		 if(self.options.selectedMulti&&self.options.maxSelectNum>0){
						if(!e.node.checked){
							if(self.tempSelectedDept.length>=self.options.maxSelectNum){
								$("#"+self.deptselectionId+_consts.id.TIP).show();
								e.cancel= true;
							}
						}
						$("#"+self.deptselectionId+_consts.id.TIP).hide();
					}
     		 e.cancel= false;
			 }
        	 //节点选择前
        	 if(tree._events["beforenodecheck"]){
				 tree._events["beforenodecheck"].clear();
			 }
        	// tree.un("beforenodecheck",beforenodecheck);
        	 tree.on("beforenodecheck",beforenodecheck);
        	 //选中
        	 function nodecheck(e){
        		 if(self.options.selectedMulti){  
						if(e.node.checked){
							self._addDept(e.node);
							//自动定位到滚动条底部
							$(self.chooseUserArea).scrollTop($(self.chooseUserArea).get(0).scrollHeight);
						}else{
							self._removeDept(e.node[self.options.dataMapping.idKey]);
						}
					}else{
						if(self.tempSelectedDept&&self.tempSelectedDept.length>0){
							self._removeDept(self.tempSelectedDept[0][self.options.dataMapping.idKey]);
						}
						if(e.node.checked){
							self._addDept(e.node);
						}
					}
        	 }
        	// tree.un("nodecheck",nodecheck);
        	 if(tree._events["nodecheck"]){
				 tree._events["nodecheck"].clear();
			 }
        	 tree.on("nodecheck",nodecheck);
        	 function nodedblclick(e){
        		 if (e.node&&!self.options.selectedMulti) {

						if(self.tempSelectedDept&&self.tempSelectedDept.length>0){
							self._removeDept(self.tempSelectedDept[0][self.options.dataMapping.idKey]);
						}

						e.node.checked=true;
							self._addDept(e.node);

						//var elementId = e.sender.id.split('_')[0];
						self.element.trigger("ok.selectDept", { IsDlbClick: true, TreeNode: e.node });
						var win=nui.get(self.dialogContainer.attr("id"));
						win.hide();
						//
						//self.dialogContainer.dialog("close");
					}
        	 }
        	// tree.un("nodedblclick",nodedblclick);
        	 if(tree._events["nodedblclick"]){
				 tree._events["nodedblclick"].clear();
			 }
        	 tree.on("nodedblclick",nodedblclick);
        	 function load(e){
        		 if(!e.node){tree.expandAll();}
        		 if(e.data&&e.data.length>0){
						self.dataNotFound.hide();
						//var treeObj=self._getZTree();
						$(tree.getList()).each(function(i,node){
							self._checkedNode(node);
						});
						//
						if(e.node&&e.node.children){
							$(e.node.children).each(function(i,node){
								//添加部门到已加载部门列表
								self._addDeptToList(node);
							});
						}
					}else{
						self.dataNotFound.show();
					}
					
					self.dataLoading.hide();
        	 }
        	
        	 if(tree._events["load"]){
				 tree._events["load"].clear();
			 }
        	 tree.on("load",load);
        	 function expand(e){
        		 $(e.node.children).each(function(i,node){
						self._checkedNode(node);
					});
        	 }
        	
        	 if(tree._events["expand"]){
				 tree._events["expand"].clear();
			 }
        	 tree.on("expand",expand);
        	
        	 tree.setUrl(self.options.source);
		},
		//加载tree数据
        _response: function (content) {
			var self=this;
            if (content) {
            	var tree=nui.get(self.deptselectionId+_consts.id.TREE);
            	tree.loadList(content,self.options.dataMapping.idKey,self.options.dataMapping.pIdKey);
            	//tree.expandAll();
            }
        },


		//添加一个部门
		_addDept:function(dept){
			var self=this;
			self._addDeptToList(dept);
			self.tempSelectedDept.push(dept);
			//刷新已选部门列表
			self._refreshSelectedDeptContainer(self.tempSelectedDept);
		},

		//添加一个部门到列表
		_addDeptToList:function(dept){
			var self=this;
			if(self._deptIsExists(dept[self.options.dataMapping.idKey],self.loadedDept)){
				return;
			}
			self.loadedDept.push(dept);
		},

		//勾选节点
		_checkedNode:function(node){
			var self=this;
			if(self._deptIsExists(node[self.options.dataMapping.idKey],self.tempSelectedDept)){
				self._getZTree().checkNode(node,true);
			}
		},

		//刷新勾选节点
		_refreshCheckedNode:function(node){
			var self=this;
			var flag=self._deptIsExists(node[self.options.dataMapping.idKey],self.tempSelectedDept);
			if(flag){
				self._getZTree().checkNode(node);
			}else{
				self._getZTree().uncheckNode(node);
			}
		},		


		//获取已经加载的部门列表
		_getLoadedDept:function (){
			var self=this;
			
			return self.loadedDept;
		},

	    //移除一个部门
		_removeDept:function(id){
			var self=this;
			var d=null;
			$(self.tempSelectedDept).each(function(i,e){
				if(e[self.options.dataMapping.idKey]==id){
					d=e;
				}
			});

			if(d){
				//移除临时列表中的一个部门
				self.tempSelectedDept.splice($.inArray(d,self.tempSelectedDept),1); 
			}
			self._refreshSelectedDeptContainer(self.tempSelectedDept);
		},

		 //从容器中移除一个部门面板
		_removePanelFromContainer:function(id){
			var self=this;
			//移除一个部门
			self._removeDept(id);

			//根据临时部门重新绑定Container
			self._refreshSelectedDeptContainer(self.tempSelectedDept);
			self._refreshSelectedNode(self.tempSelectedDept);
			//显示选择上限提示
			if(self.options.maxSelectNum>0&&self.tempSelectedDept.length<=self.options.maxSelectNum){
				$("#"+self.deptselectionId+_consts.id.TIP).hide();
			}
		},

	    //刷新选择的节点
		_refreshSelectedNode:function (deptList) {
			var self = this;
            var treeObj = self._getZTree();

			$.each(treeObj.getList(),function (i, node) {
				self._refreshCheckedNode(node);
            });
        },
	
		//刷新选择的部门
        _refreshSelectedDeptContainer: function (deptList) {
            var self = this;
			self.chooseUserArea.empty();
			$.each(deptList,function (i, item) {

				var id=item[self.options.dataMapping.idKey];
				var name=item[self.options.dataMapping.name];
				var deptTemplate = "{0}.{2}".replace("{0}", i+1).replace("{2}", name);
				
				this.User = $("<li></li>")
				.addClass("search-choice")
				.bind("keydown", function (event) {
					return false;
				});
				$("<span id='"+id+"'></span>").append(deptTemplate).appendTo(this.User);
				$("<a></a>")
				.bind("click",function(){
					self._removePanelFromContainer(id);
				})
				.appendTo(this.User);
				this.User.appendTo(self.chooseUserArea);
            });
        },


		//准备查询
		_prepareSearch:function(obj){
			var self=obj;
			var text= $.trim(self.inputControl.val());

            var treeObj = self._getZTree();

			if(!treeObj){
				return ;
			}

			if(self.options.timeCount){
				//不管存不存在延时执行函数，先清除
				clearTimeout(self.options.timeCount);
			}


			if(text.length==0){
				this.dataNotFound.hide();
				//恢复查询状态
				self.searchStatus=0;
				if(typeof this.options.source === "string"){
					self._renewStatus();
				}else{
					//var allNode = treeObj.getList();  
					//treeObj.showNodes(allNode);
				}
			}else if(text.length>=self.options.search.minChars){

				self.searchStatus=1;
				//最小计时器为300ms
				self.options.search.delay=self.options.search.delay<300?300:self.options.search.delay;

				//只要有输入则不执行查询操作
				self.options.timeCount = setTimeout(function(){
					if(typeof self.options.source === "string"){
						self._executeSearch(obj,treeObj,text);
					}else{
						self._executeNodeSearch(obj,treeObj,text);
					}
				},self.options.search.delay<300?300:self.options.search.delay);	
			}

		},

		//执行远程查询
		_executeSearch:function(obj,treeObj,text){
			//
			var self=obj;
			//编码查询条件
			text=encodeURIComponent(text);
			if(self.options.async){
				
				treeObj.load();
			}else{
				//
				$.ajax({
					url: self.options.source,
					dataType:self.options.dataType,					
					timeout:self.options.timeout,
					data:{"keyword":text,"rootid":self.options.rootId},
					jsonp:self.options.jsonpCallback,
					success: function (d) {
						 self._response(d.list);
						 self._fillData();
						 if(d.list.length==0){
							self.dataNotFound.show();
						 }
					},
					beforeSend:function(){
						self._showLoading();
					},
					complete:function(){
						self.dataLoading.hide();
					}
				});
			}
		},
		
		//执行节点搜索
		_executeNodeSearch:function(obj,treeObj,text){
			var self=obj;
			self.matchedNodes=[];
			self.options.search.clientSearchAttrs=self.options.search.clientSearchAttrs||self.options.dataMapping.name;
			var searchKeysArr=self.options.search.clientSearchAttrs.split(',');

			treeObj.filter(function (node) {
				var f=false;
				for(var key in searchKeysArr){
					if(node[searchKeysArr[key]]){
						flag= node[searchKeysArr[key]].indexOf(text)>-1;
						if(flag){
							f=true;
							break;
						}
					}					
				}
				return f;
             });
		},

		//快捷选择
		_shortcutSelect:function(self){
			var treeObj = self._getZTree();
			if(treeObj){
				var nodes=treeObj.getList(); 
				var treeNode=null;
				//获取匹配的第一个节点
				for(var i=0;i<nodes.length;i++){
					if(nodes[i][self.options.dataMapping.matched]){
						treeNode=nodes[i];
						break;
					}
				}
				if(treeNode){
					if(!treeNode[self.options.dataMapping.checked]){
						if(!self.options.selectedMulti){  //单选
							if(self.tempSelectedDept&&self.tempSelectedDept.length>0){
								self._removeDept(self.tempSelectedDept[0][self.options.dataMapping.idKey]);
							}
							treeObj.checkNode(treeNode);
							self._addDept(treeNode);
							self._confirmClose();
						}else{
							treeObj.checkNode(treeNode);
							self._addDept(treeNode);
							self.inputControl.select();
						}
					}					
				}
			}
		},

		//确认关闭
		_confirmClose:function(){
			var self=this;
			self.element.trigger("ok.selectDept");
			var win=nui.get(self.dialogContainer.attr("id"));
			win.hide();
		    //self.dialogContainer.dialog("close");
		},
		
		//查找父节点
		_findParent:function(treeObj,node){  
			 var self=this;
             var pNode = node.getParentNode();  
             if(pNode != null){  
				 treeObj.expandNode(pNode,true,false,false);  
                 self.matchedNodes.push(pNode);  
                 self._findParent(treeObj,pNode);  
             }  
         }, 

		//查找子节点
	    _findChildren:function(node,o){  
			 var self=o;
			 if(node.children&&node.children.length>0){
				$(node.children).each(function(i,e){
					self.matchedNodes.push(e);  
					self._findChildren(e,self);  
				});
			 }
         }, 

		//部门是否存在
		_deptIsExists:function(id,deptList){
			var self=this;
			var isExists=false;
			if(id&&deptList){
				for(var i=0;i<deptList.length;i++){
					if(id==deptList[i][self.options.dataMapping.idKey]){
						isExists=true;
						break;
					}
				}
			}
			return isExists;
		},

		
		//获取zTree树
		_getZTree:function(){
			var self=this;
			return nui.get(self.deptselectionId+_consts.id.TREE);
			//return $.fn.zTree.getZTreeObj(self.deptselectionId+_consts.id.TREE);
		},

		//加载语言包
	   _loadLang:function (jsUrl,url, fn) { 

		    //var self=this;

			//var js=document.scripts;
			var script=null;
			var headHtml=$("head")[0].innerHTML;
			//检查js文件是否已经加载
			if(headHtml.indexOf(url)==-1){
				script = $("<script></script>")
				.attr("type","text/javascript")
				.attr("id",_consts.id.LANG_JS)
				.attr("src",jsUrl);

				document.getElementsByTagName("head")[0].appendChild(script.get(0)); 
			}else{
				script=$("#"+_consts.id.LANG_JS);
	            
	            if(script.get(0).completed === true) {
		        	fn instanceof Function && fn.call();
		        	return;
	            }
			}

			if($.browser.msie){   //IE
				script.bind("readystatechange",function () { 
					 if (script.get(0).readyState == 'loaded' || script.get(0).readyState == 'complete') { 
					    script.get(0).completed = true;
						fn instanceof Function && fn.call(); 
					} 
				}); 
			}else{   //其它
				script.bind("load",function () { 
			    	script.get(0).completed = true;
					fn instanceof Function && fn.call(); 
				}); 
			}

		} ,


	   //获取语言
	   _getRealLang:function(){
			var self=this;
			if(!self.options.lang||self.options.lang=='auto'){
			   return navigator.browserLanguage.toLowerCase();
			}
			return self.options.lang;
		},

		//显示正在加载中
		_showLoading:function(){
			var self=this;
			self.dataNotFound.hide();
			self.dataLoading.show();
		}
    });

	/*
	* 扩展方法
	*/
	$.fn.extend({

		
		//卫星库部门
		selectCGNDept:function(opts){
			var options={
				dataMapping:{
					idKey:"DeptId",
					pIdKey:"DeptParentId",
					name:"DeptName",
					title:"DeptNamePath"
				},
				dataType:"jsonp",
				async:false,
				search:{
					//查询关键字名称
					keyName:"keyWord"
				}
			};
			options=$.extend({},options,opts);
			$(this).selectDept(options);
		},

	    //虚拟组织机构
		selectVirtualOrg:function(opts){
			var options={
				dataMapping:{
					idKey:"orgid",
					pIdKey:"parentorgid",
					name:"orgname",
					title:"orgname"
				},
				dataType:"json",
				async:false,
				search:{
					//查询关键字名称
					keyName:"keyWord"
				}
			};
			options=$.extend({},options,opts);
			$(this).selectDept(options);
		}
	});

})(jQuery);
