/*
 * Name:SelectPerson 人员选择组件
 * Author:PCITWSQ
 * Version:1.0
 *
 * Depends:
 * jquery-1.8.3.js
 * jquery.ui-1.10.1.js
 */
(function ($, undefined) {
    var _selectedLinkObj = new Array();
    var _deptselectionId = "";
    //var _personselectionId = "";
    var _imgUrl = "";
    var _consts = {
        id: {
            DIV: "_personselection",
            LOADING: "_loading",
            DATA_NOT_FOUND: "_notFound",
            DIALOG: "_dialog",
            TIP: "_tip",
            INPUT: "_input",
            TREE: "_tree",
            LANG_JS: "_personselection_lang",
            SELECT: "_select"
        },
        isTest: true
    };

    $
			.widget(
					"cgnui.selectPerson",
					{
					    version: "1.0",
					    personSelectionId: "",
					    _personselectionScoll: 0,
					    fileName: "cgn.ui.selectperson.js",
					    requestCount: 0,
					    initData: [], // 初始数据，进去赋值
					    matchedNodes: [], //
					    cacheDate: [],
					    tempSelectedPerson: [],
					    selectedPerson: [],
					    loadedPerson: [],
					    // 0：查询未开始 1：查询完毕
					    searchStatus: 0,
					    // 计时器对象
					    timeCount: null,
					    options: {
					        // 附加容器
					        appendTo: "body",
					        // 超时时间30s
					        timeout: 30000,

					        // 触发时间类型
					        eventType: "click",
					        height: 550,
					        width: 500,
					        // 是否为模态窗口
					        modal: true,
					        // 标题名称
					        title: "人员选择",
					        // 语言
					        lang: 'zh-cn',
					        // 是否多选
					        selectedMulti: false,
					        // 默认选中人员id
					        selectedId: null,
					        // 数据源
					        source: null,
					        selectPersontopCount: 20, // 显示人员的数量
					        //columnHead: ["员工号", "姓名", "部门", "明细"],
					        columnHead: ["员工号", "姓名", "部门",""],
					        // 属性映射
					        dataMapping: {

					            userId: "DId",
					            userName: "Name",
					            userDept: "PathName",
					            describe :"describe",
					            StaffNamePY: "StaffNamePY",
					            StaffShortPY: "StaffShortPY",
					            url: "url"
					        },
					        dept: {
					            source: [],
					            idKey: "Id",
					            pIdKey: "PId",
					            dept: "Name",
					            title: "PathName",
					            deptOpen: "Open",
					            isParent: "isParent",
					            children: "children",
					            // 数据默认为json，当跨域时使用jsonp
					            dataType: "json",
					            // jsonp回调函数，当dataType="jsonp"时设置
					            jsonpCallback: "callback",
					            rootId: "",
					            callback: {
					                selectedComplete: null
					            }

					        },
					        search: {
					            // 查询关键字名称
					            key: "keyWord",
					            // 前端搜索属性(仅数据源为数组时适用)
					            clientSearchAttrs: '',
					            // 搜索提示信息
					            inputTip: '',
					            // 搜索部门提示信息
					            selectTip: '',
					            // 最小查询字符数
					            minChars: 1,
					            // 延时时间
					            delay: 500
					        },
					        // 数据默认为json
					        dataType: "json",
					        // jsonp回调函数，当dataType="jsonp"时设置
					        jsonpCallback: "callback",
					        // 是否异步
					        async: false,
					        // 最大选择数，默认不限制
					        maxSelectNum: 0,
					        // 点击确认按钮回调的函数
					        ok: null,
					        // 点击取消按钮回调的函数
					        cancel: null
					    },

					    _create: function () {
					        var self = this;
					        //doc = this.element[0].ownerDocument,
					     
					        self.personSelectionId = self.element[0].id
									+ _consts.id.DIV;

					        // 获取js文件所在目录
					        var js = document.scripts;
					        var jsPath="";
					        for (var i = js.length; i > 0; i--) {
					            if (js[i - 1].src.toLowerCase().indexOf(
										self.fileName) > -1) {
					                var langScript = js[i - 1];
					                jsPath =langScript.src.substring(0,
					                		langScript.src.lastIndexOf("/") + 1);
					                break;
					            }
					        }

					        var existsLang = false;
					        var url = jsPath + "lang/";
					        _imgUrl = jsPath
									+ "presence_img/presence_16-unknown.png";

					        // 检查语言文件是否存在
					        for (var i = js.length; i > 0; i--) {
					            if (js[i - 1].src.toLowerCase().indexOf(url) > -1) {
					                existsLang = true;
					                break;
					            }
					        }

					        // 如果不存在，则动态加载语言文件
					        if (!existsLang) {
					            // 设置语言
					            self.options.lang = self._getRealLang();
					            var jsUrl = jsPath + "lang/"
										+ self.options.lang + ".js";
					            // 加载语言文件
					            self._loadLang(jsUrl, url, function () {
					                self._createContent();
					            });
					        }

					    },

					    _createContent: function () {
					        var self = this;

					        // 内部容器宽度
					        var innerContainerWidth = self.options.width - 32;

					        var remainHeight = self.options.height - 32;

					        if (!self.options.title) {
					            self.options.title = $cgn_ui_selectPerson_lang.titleText;
					        }
					        if (!self.options.search.inputTip) {
					            self.options.search.inputTip = $cgn_ui_selectPerson_lang.inputTipText;
					        }
					        if (!self.options.search.selectTip) {
					            self.options.search.selectTip = $cgn_ui_selectPerson_lang.inputDeptTipText;
					        }
					        // if (!self.options.columnHead) {
					        self.options.columnHead[0] = $cgn_ui_selectPerson_lang.tablecolumnHead1;
					        self.options.columnHead[1] = $cgn_ui_selectPerson_lang.tablecolumnHead2;
					        self.options.columnHead[2] = $cgn_ui_selectPerson_lang.tablecolumnHead3;
					        //self.options.columnHead[3] = $cgn_ui_selectPerson_lang.tablecolumnHead4;
					        self.options.columnHead[3] = "";
					        // }

					        // 输入控件
					        self.inputControl = $("<input></input>")
									.attr("id", self.personSelectionId + _consts.id.INPUT)
									.attr("type", "text")
									.attr("maxLength", 30)
									.val(self.options.search.inputTip)
									.bind("keyup"
											, function (event) {
											    if (event.keyCode == 16
														|| (event.keyCode >= 37 && event.keyCode <= 40)) {
											        return;
											    }
											    if (event.keyCode == 13) {
											        var text = $
															.trim(self.inputControl
																	.val());
											        if (text.length > 0
															&& text.length < self.options.search.minChars) {
//											            alert($cgn_ui_selectPerson_lang.minInputCharText.replace( "{0}", self.options.search.minChars));
											            return;
											        }
											        if (self.searchStatus == 0) {
											            self
																._prepareSearch(self);
											        } else {
											            var text = $
																.trim(self.inputControl
																		.val());
											            // 回车快捷选择
											            self
																._prepareSearch(self);
											            // self._executeEnterSearch(self,
											            // text);
											        }
											    } else {
											        self._prepareSearch(self);
											    }
											})
									.bind(
											"focus",
											function () {
											    if (this.value == self.options.search.inputTip) {
											        this.value = '';
											        this.style.color = '#000';
											    }
											})
									.bind(
											"blur",
											function () {
											    if (!this.value) {
											        this.value = self.options.search.inputTip;
											        this.style.color = '#999';
											    }
											}).addClass(
											"ui-personselection-input").css(
											"background-position",
											innerContainerWidth * 0.5 - 15
													+ "px" + " 6px").css(
											"width", innerContainerWidth * 0.5);

					        // 选择控件
					        self.selectControl = $("<input></input>")
									.attr("id", self.element[0].id + _consts.id.SELECT)
									.attr("type", "text")
									//.attr("readonly", "true")
									//.val(self.options.search.selectTip)
									.addClass("nui-treeselect")
									.attr("height", "23px")
									.css("width", innerContainerWidth * 0.45);
					        // 选择图片
					        self.selectControlImg = null;
					        /*
							self.selectControlImg = $("<a></a>").attr("href",
									"#").addClass(
									"ui-personselection-selectimg").css("left",
									innerContainerWidth * 0.418).bind("click",
									function(event) {
										self.selectControl.trigger('click');
										return false;
									});
	*/
					        // 加载提示
					        self.dataLoading = $("<div></div>").append(
									$cgn_ui_selectPerson_lang.loadingText)
									.attr("id", self.element[0].id + _consts.id.LOADING)
									.addClass("mvcui-personselection-loading")
									.css("width", innerContainerWidth).hide();

					        // 没有找到数据
					        self.dataNotFound = $("<div></div>")
									.append($cgn_ui_selectPerson_lang.dataNotFoundText)
									.attr("id", self.element[0].id + _consts.id.DATA_NOT_FOUND)
									.addClass("mvcui-personselection-dataNotFound")
									.css("width", innerContainerWidth).hide();

					        // 用户信息列表头部
					        this.userlisthead = $(
									"<table><thead><tr class='ui-widget-header'><th style='width:20%;text-align:center'>"
											+ self.options.columnHead[0]
											+ "</th><th style='width:15%;text-align:center'>"
											+ self.options.columnHead[1]
											+ "</th><th style='text-align:center'>"
											+ self.options.columnHead[2]
											+ "</th><th style='width:15%;text-align:center'>"
											+ self.options.columnHead[3]
											+ "</th></tr></thead></table>")
									.attr("width", "100%")
									.addClass("ui-widget ui-widget-content");
					        // 用户信息列表实体
					        this.userlist = $("<table width='100%'  cellpadding='0' cellspacing='0' border='0'  class='ui-personselection-usertable'></table>");

					        // 所选用户显示区域
					        // 选择提示
					        self.selectedDeptMsg = $("<span></span>").addClass(
									"ui-personselection-selectedtip").append(
									$cgn_ui_selectPerson_lang.selectedDeptText);

					        // 添加人员按钮
					        this.addUserBtn = $("<button></button>")
									.append($cgn_ui_selectPerson_lang.addSelectPersonText)
									.addClass("ui-personselection-addselecteduserbtn")
									.bind("click", function (event) {
									    self._addSelectedUser();
									});

					        // 清空人员按钮
					        this.clearUserBtn = $("<button></button>")
									.append($cgn_ui_selectPerson_lang.clearSelectPersonText)
									.addClass("ui-personselection-clearselecteduserbtn")
									.bind("click", function (event) {
									    self._removeAllPerson();
									});

					        // 人员选择限制提示
					        // self.addMsg = $("<span></span>")
					        // .append($cgn_ui_selectPerson_lang.maxSelectedNumText.replace("{0}",
					        // self.options.maxSelectNum))
					        // .addClass("ui-deptselection-warnning")
					        // .css("display", "none")
					        // .attr("id", self.personSelectionId +
					        // _consts.id.TIP);

					        self.okbtn = $("<input></input>")
                               .bind("click", function (event) {
                                   if (typeof self.options.ok === "function") {
                                       self.element.trigger("ok.selectPerson");
                                   }
                                   var win = nui.get(self.dialogContainer.attr("id"));
                                   win.hide();
                               })
                               .attr("type", "button")
                               .val($cgn_ui_selectPerson_lang.okText);
					        //.addClass("nui-button");
					        self.Space=$("<span></span>")
					           .css("width","10px")
					           .attr("width","10px")
					           .append("&nbsp;&nbsp;");

					        self.cancelbtn = $("<input></input>")
                            .bind("click", function (event) {
                                if (self.options.cancel && typeof self.options.cancel === "function") {
                                    self.options.cancel();
                                }
                                var win = nui.get(self.dialogContainer.attr("id"));
                                win.hide();
                            })
                            .attr("type", "button")
                            //.addClass("nui-button")
                            .val($cgn_ui_selectPerson_lang.closeText);

					        self.foot = $("<div></div>")
                            .css("height", "30px")
                            .css("text-align", "right")
                            .css("padding", "5px")
                            .css("padding-right", "15px")
                            .attr("property", "footer")
                            .append(self.okbtn)
                            .append(self.Space)
                            .append(self.cancelbtn);

					        // 所选人员显示区域
					        self.chooseUserArea = $("<ul></ul>").addClass(
									"ui-personchosen-choices").css("height",
									remainHeight * 0.2).attr("id",
									self.personSelectionId + "_container");

					        // 人員組件提示的信息
					        self.messageContainer = $(
									"<div style='color:green '></div>").append(
									$cgn_ui_selectPerson_lang.remindMessage);

					        // 人员选择对话框表格容器
					        self.personselectionMainTable = $("<table></table>")
									.addClass("personmainContainer").attr(
											"cellpadding", "0").attr(
											"cellspacing", "0");

					        // 容器
					        var ztreeContainer = $("<div></div>").addClass(
									"ui-personselection-ztreeContainer");

					        ztreeContainer.append(self.dataLoading);
					        ztreeContainer.append(self.dataNotFound);
					        ztreeContainer.append(self.userlisthead); // 人员表头添加

					        self.personDiv = $("<div></div>")
									.addClass("ui-personselection-usersdiv")
									.append(self.userlist)
									.bind(
											"scroll",
											function (event) {
											    self._personselectionScoll = this.scrollTop;
											    if (self.initData.length > 0) {
											        self._setUserListSource(self.initData);
											    }

											});

					        // 人员信息添加;
					        if (!self.options.selectedMulti) {
					            // self.options.height = remainHeight * 0.9;
					            self.personDiv
										.css("height", remainHeight - 180 > 200 ? remainHeight - 180 : 200);
					        }
					        ztreeContainer.append(self.personDiv);

					        $("<tr></tr>")
									.append(
											$("<td style='width:70%'></td>")
													.append(self.inputControl))
									.append(
											$("<td style='position:relative;width:30%'></td>")
													.append(self.selectControl)
													.append(
															self.selectControlImg))
									.appendTo(self.personselectionMainTable);
					        // $("<tr></tr>").append($("<td
					        // style='position:relative;'></td>").append(self.inputControl).append(self.selectControlImg)).appendTo(self.personselectionMainTable);
					        $("<tr></tr>").append(
									$("<td></td>").attr("colspan", "2").append(
											ztreeContainer)).appendTo(
									self.personselectionMainTable);
					        // $("<tr></tr>").append($("<td></td>").append(this.userlisthead).append($("<div></div>").addClass("ui-personselection-usersdiv").append(this.userlist))).appendTo(this.personselectionMainTable);
					        // 如果是多选就显示容器面板
					        if (self.options.selectedMulti) {
					            self.personDiv
										.css(
												"height",
												remainHeight - 180 > 200 ? (remainHeight - 180) * 0.65
														: 200);
					            self.chooseUserArea
										.css(
												"height",
												remainHeight - 180 > 200 ? (remainHeight - 180) * 0.25
														: remainHeight * 0.2);
					            $("<tr></tr>")
										.append(
												$("<td></td>")
														.attr("colspan", "2")
														.append(self.addUserBtn)
														.append("&nbsp;&nbsp;")
														.append(
																self.clearUserBtn))
										.appendTo(self.personselectionMainTable);
					            // $("<tr></tr>").append($("<td></td>").append(self.selectedDeptMsg).append(self.addMsg)).appendTo(self.personselectionMainTable);
					            $("<tr></tr>")
										.append(
												$("<td></td>").attr("colspan",
														"2").append(
														self.chooseUserArea))
										.appendTo(self.personselectionMainTable);
					        }
					        $("<tr></tr>").append(
									$("<td  ></td>").attr("colspan", "2")
											.append(self.messageContainer))
									.appendTo(self.personselectionMainTable);
					        //
					        self.dialogContainer = $("<div></div>")
									.attr("title", self.options.title)
									.attr("height", self.options.height)
									.attr("width", self.options.width)
									.attr("showToolbar", true)
									.attr("showFooter", true)
									.attr("showModal", self.options.modal)
									.attr("allowResize", false)
									.css("display", "none")
									.attr("id", self.element[0].id + _consts.id.DIALOG)
									.addClass("nui-window")
									.append(self.personselectionMainTable)
									.append(self.foot)
									.appendTo(self.options.appendTo == null ? $("body") : $(self.options.appendTo));

					        // showToolbar="true" showFooter="true" showModal="false" allowResize="true" allowDrag="true"


					    },

					    destroy: function () {
					        $.Widget.prototype.destroy.call(this);
					    },

					    _setOption: function (key, value) {

					    },

					    _init: function () {
					        var self = this;
					        //nui.parse();
					        // 最小字符数1
					        if (self.options.search.minChars <= 0) {
					            self.options.search.minChars == 1;
					        }
					        if (typeof self.options.ok === "function") {
					            self.element
										.bind(
												'ok.selectPerson',
												function (event, parames) {
												    // 赋值给选择人员
												    self.selectedPerson = self.tempSelectedPerson
															.slice(0);
												    var returnItems = self.selectedPerson;
												    if (!self.options.selectedMulti) {
												        returnItems = returnItems.length > 0 ? returnItems[0]
																: null;
												    }

												    // 执行事件
												    self.options.ok
															.apply(
																	"",
																	[event,
																			returnItems]);
												    // 阻止事件冒泡
												    event.stopPropagation();
												});
					        }

					        self.element.bind(self.options.eventType,
								function () {
					        	//if(self)
					        	//	return;
									  // return;
					        	// var that = this;
									    //self.dialogContainer.dialog("open");
									    nui.parse();
									    
									    
									    var win = nui.get(self.dialogContainer.attr("id"));
									    win.show();
									    
									    // 清空输入框的值
									    self.inputControl.val("");
									    _deptselectionId="";
									    self._removeAllPerson();
									    
									    
									    self.options.selectedId = self.options.viewInput.getValue();
									    
									    //self._removeAllPerson();
									    
									    // 清空输入框的值
									    //self.inputControl.val("");
									    //_deptselectionId="";
									    //self._removeAllPerson();
									    // 清空部门输入框的值
									    //self.selectControl.val("");
									    // 初始化数据源
									    
									    var temp = self.options.viewInput.getText();
									    var tempArr = null;
									    if(temp && temp.length>0){
									    	tempArr = temp.split(",");
									    	if(tempArr && tempArr.length>0){
									    		for(var i=0;i<tempArr.length;i++){
									    			var user = tempArr[i];
									    			user = user.replace(" ",",");
									    			var userId = user.split(",")[0];
									    			var userName = user.split(",")[1];
									    			userId = userId.replace("[","");
									    			userId = userId.replace("]","");
									    			self._addMorePerson(userId,
									    					userName, null);
									    		}
									    	}
									    }
									    self._initTreeSelect();
									    self._initSource();
									    self._refreshSelectedPersonContainer(self.selectedPerson);
									    //self._renewStatus();
									    //self._refreshSelectedPersonContainer(self.tempSelectedPerson);
								});
					    },

					    _initTreeSelect: function () {
					        var self = this;
					        var treeSelect = nui.get(this.selectControl.attr("id"));
//					        treeSelect.setResultAsTree(false);
					        treeSelect.setTextField(self.options.dept.dept);
					        treeSelect.setDataField("list");
					        treeSelect.setParentField(self.options.dept.pIdKey);
					        treeSelect.setValueField(self.options.dept.idKey);
					        //
					        //treeSelect.setShowClose(true);
					        treeSelect.setAllowInput(true);
					        //treeSelect.tree.setAjaxOptions({ dataType: self.options.dept.dataType});
					        
					        if(treeSelect._events["beforeload"]){
					        	treeSelect._events["beforeload"].clear();
					       	}
					        treeSelect.on("beforeload", function (e) {
								 //e.params.keyWord = text;
								 //e.params.rootId = self.options.dept.rootId;
				             });
					        treeSelect.setUrl(self.options.dept.source);
					        if (treeSelect._events["valuechanged"]) {
					            treeSelect._events["valuechanged"].clear();
					        }
					        treeSelect.setValue("");
					        
					        treeSelect.on("valuechanged", function (e) {
					            // 执行查询功能
//					             
					            _deptselectionId = treeSelect.getValue();
					            if(_deptselectionId==""){
					            	_deptselectionId=self.options.dept.rootId;
					            }
					            //alert(_deptselectionId);
					            if (typeof self.options.source === "string") {
					                self._executeSearch(self, $.trim(self.inputControl.val()), _deptselectionId);
					            } else {
					                self._executeEnterSearch(self, $.trim(self.inputControl.val()));
					            }
					        });
					    },
					    // 初始化数据源
					    _initSource: function () {

					        var self = this,  _personselectionId = "";
					        self._personselectionScoll = 0;
					        // 
					        this.dataNotFound.hide();
					        if (typeof self.options.source === "string") {
					            // 检查是否已经请求
					            if (self.requestCount > 0) {
					                self._renewStatus();
					                // 赋值给加载人员
					                self.loadedPerson = self.selectedPerson
											.slice(0);
					                // 赋值给临时部门
					                self.tempSelectedPerson = self.selectedPerson
											.slice(0);

					                // self._refreshSelectedNode(self.selectedPerson);

					                if (self.options.selectedMulti) {
					                    self
												._refreshSelectedPersonContainer(self.selectedPerson);
					                }
					            } else {
					                $
											.ajax({
											    url: self.options.source,
											    timeout: self.options.timeout,
											    data: {
											        "selectid": self.options.selectedId,
											        "orgid": self.options.dept.rootId,
											        "topCount": self.options.selectPersontopCount
											    },
											    dataType: self.options.dataType,
											    jsonp: self.options.jsonpCallback,
											    type: "GET",
											    success: function (d, status) {
											        if (d.list) {
											            self.initData = d.list.slice(0);
											            if (d.list.length == 0) {
											                self.dataNotFound.show();
											            }
											            if (d.selectedPerson && d.selectedPerson.length > 0) {
											                _personselectionId = d.selectedPerson.slice(0);
											            }
											            if (self.options.selectedMulti) {

											                if (self.selectedPerson.slice(0).length == 0) {
											                    self.selectedPerson = _personselectionId.slice(0).length > 0 ? _personselectionId.slice(0) : [];
											                } else {
											                    $.each(self.selectedPerson, function (i, person) {
											                        $.each(_personselectionId, function (i, item) {
											                            if (item) {
											                                var userId = item[self.options.dataMapping.userId];
											                                if (userId == person[self.options.dataMapping.userId]) {
											                                    // 移除临时列表中的一个人员以及加载列表的一个人员
											                                    _personselectionId.splice($.inArray(item, _personselectionId),
                                                                                                1);
											                                }
											                            }
											                        });

											                    });
											                    self.selectedPerson = $.merge(
																				$.merge([], self.selectedPerson),
																				_personselectionId);

											                }
											                self.loadedPerson = self.selectedPerson.slice(0);
											                // 赋值给临时人员
											                self.tempSelectedPerson = self.selectedPerson.slice(0);
											                self._refreshSelectedPersonContainer(self.selectedPerson);
											            }

											        } else {
											            self.initData = [];
											           // if (d.slice(0).length == 0) {
											                self.dataNotFound.show();
											           // }
											        }
											        self._setUserListSource(self.initData);
											    },
											    beforeSend: function () {
											        //self._showLoading();
											    },
											    complete: function () {
											        self.dataLoading.hide();
											    },
											    error: function (e) {
											        // self.initData =
											        // e.responseText.data.slice(0);
//											        alert("error:" + e.statusText);
											    }
											});

					            }
					        } else {
					            self.initData = self.options.source.slice(0);
					            if (self.initData.length > 0) {
					                self._setUserListSource(self.initData);
					                // self._response(self.initData);
					            }
					            // 
					            // 赋值给加载人员
					            self.loadedPerson = self.selectedPerson
										.slice(0);
					            // 赋值给临时人员
					            self.tempSelectedPerson = self.selectedPerson
										.slice(0);

					            if (self.options.selectedMulti) {
					                self._refreshSelectedPersonContainer(self.selectedPerson);
					            }
					        }
					        this._initSelectable();

					    },

					    selectedComplete: function (event, e, id, treeNode) {
					        // 
					        var zTree = $.fn.zTree.getZTreeObj(id), nodes = zTree
									.getSelectedNodes(), v = "", deptId = "";
					        var idKey = this.options.dept.idKey;
					        var dept = this.options.dept.dept;
					        nodes.sort(function (a, b) {
					            return a.id - b.id;
					        });
					        $(nodes).each(function (i, item) {
					            v += item[dept] + ",";
					            deptId = item[idKey];
					        });

					        // for (var i = 0, l = nodes.length; i < l; i++) {
					        // v += nodes[i].name + ",";
					        // deptId = nodes[i].id;
					        // // alert(deptId);
					        // }
					        if (v.length > 0)
					            v = v.substring(0, v.length - 1);
					        var obj = $("#" + id.replace("_ztree", ""));
					        obj.attr("value", v);
					        _deptselectionId = deptId;
					        return v;
					    },

					    // 恢复到初始状态
					    _renewStatus: function () {
					        var self = this;
					        if (self.initData.length > 0) {
					            // self._response(self.initData);
					            self._setUserListSource(self.initData);
					        }
					        // 根据临时选择部门恢复选择状态
					        // self._refreshSelectedNode(self.tempSelectedPerson);

					        if (self.options.selectedMulti) {
					            self
										._refreshSelectedPersonContainer(self.tempSelectedPerson);
					        }
					    },

					    // 显示人员信息主体的样式
					    _initSelectable: function () {
					        var self = this;
					        $(self.userlist).selectable({
					            stop: function () {
					                _selectedLinkObj = [];
					                // self.loadedPerson =
					                // self.selectedPerson.slice(0);
					                $(".ui-selected", this).each(function () {
					                    _selectedLinkObj.push(this);

					                });
					            },
					            filter: "tr"
					        });

					    },

					    // 设置用户的数据源
					    _setUserListSource: function (datasource) {

					        var self = this;
					        $(self.userlist).find("tr").each(function () {
					            $(this).remove();
					        });
					        var source = [];
					        if (datasource != null) {
					            source = datasource;
					        }
					        $(source)
									.each(
											function (i, item) {
											    this.selectControlImg = $(
														"<img src='" + _imgUrl
																+ "' ></img>")
														// .attr("src", _imgUrl)
														.attr(
																"id",
																self.element[0].id
																		+ i
																		+ Math
																				.random())
														.bind(
																"load",
																function () {

																    PresenceControl(
																			item[self.options.dataMapping.userId]
																					+ "@gnpjvc.cgnpc.com.cn",
																			self._personselectionScoll);
																});
											    // selectControlImg
											    this.spanShow = $(
														"<span ></span>")
														.append(
																this.selectControlImg);
											    this.divDetail = $(
														"<div style='cursor:pointer;display:none'></div>")
									//"<div style='cursor:pointer'>明细</div>")
														.bind(
																"click",
																function () {

																    var url = 'http://p27/system/tys/WebForms/ShowInnerPersonInfo.aspx?StaffNO='
																			+ item[self.options.dataMapping.userId];
																    alert(url);
																    return;
																    var result = window
																			.showModalDialog(
																					url,
																					'M',
																					"dialogHeight:500px;dialogWidth:650px;status:no;help:no;scroll:auto");
																});

											    $("<tr></tr>")
														.bind(
																"dblclick",
																function () {
																   
																    if (!self.options.selectedMulti) {
																        // var
																        // flag
																        // =
																        // self._IsPersonToList(item);
																        // if
																        // (!flag)
																        // {
																        self.tempSelectedPerson = [];
																        self.tempSelectedPerson
																				.push(item);
																        self.element
																				.trigger("ok.selectPerson");
																        var win = nui.get(self.dialogContainer.attr("id"));
																        win.hide();

																    } else {
																        self._addPerson(item);
																    }
																})
														.bind(
																"click",
																function () {
																    if (!self.options.selectedMulti) {
																        self.tempSelectedPerson = [];
																        self.tempSelectedPerson
																				.push(item);
																    }
																})
														.append(
																$("<td  style='text-align:center;width:5%;'></td>")
																		.append(this.spanShow))
														.append("<td style='text-align:left;width:15%;word-break:break-all; word-wrap:break-all;'>"
																		+ self._tool
																				.nullStringToEmpty(item[self.options.dataMapping.userId])
																		+ "</td>")
														.append(
																"<td style='text-align:center;width:15%;word-break:break-all; word-wrap:break-all;'>"
																		+ self._tool
																				.nullStringToEmpty(item[self.options.dataMapping.userName])
																		+ "</td>")
														.append(
																"<td style='text-align:center;word-break:break-all; word-wrap:break-all;'>"
																		+ self._tool
																				.nullStringToEmpty(item[self.options.dataMapping.userDept])
																		+ "</td>")
														//.append(
																//$(
																	//	"<td  style='text-align:center;width:15%;'></td>")
																	//	.append(
																	//			this.divDetail))
													
														// .append($("<td
														// style='text-align:center;width:2%;background-color:
														// #80c269'></td>"))
														.appendTo(self.userlist);
											    //alert(item[self.options.dataMapping.describe]);
	
											});
					    },
					    _tool: {
					        nullStringToEmpty: function (value) {
					            if (value == null) {
					                return "";
					            }
					            return value;
					        }
					    },

					    // 对按钮进行多人添加
					    _addSelectedUser: function () {
					        // 
					        var self = this;
					        if (_selectedLinkObj.length <= 0) {
					            return;
					        }
					        $.each(_selectedLinkObj, function (i, item) {
					            // 检测人员所选数量是否超过限制
					            // var r = self._chkChoosedUserNum();
					            // if (!r) {
					            // alert("所选人数已超过限制!");
					            // return;
					            // }
					            var td = item.children;
					            self._addMorePerson(td[1].innerText,
										td[2].innerText, td[3].innerText);

					        });

					    },
					    // 添加一个人员方法(根据参数)
					    _addMorePerson: function (id, userName, userDept) {
					        // 
					        var self = this;
					        var obj = [];
					        // self.initData = self.options.source.slice(0);
					        if (self.initData.length > 0) {
					            // 遍历JSON数据得到所需形式

					            $(self.initData)
										.each(
												function (i, item) {
												    var flag1 = item[self.options.dataMapping.userId]
															.indexOf(id) > -1;
												    var flag2 = item[self.options.dataMapping.userName]
															.indexOf(userName) > -1;
												    //var flag3 = item[self.options.dataMapping.userDept]
													//		.indexOf(userDept) > -1;
												    if (flag1 && flag2 ) {
												        obj = item;
												    }
												});
					        }
					        if (obj.length == 0) {
					            return;
					        }

					        var flag = self._IsPersonToList(obj);
					        if (!flag) {
					            self.tempSelectedPerson.push(obj);
					            // 刷新已选人员列表
					            self._refreshSelectedPersonContainer(self.tempSelectedPerson);
					        }
					        obj = [];
					    },

					    // 添加一个人员方法
					    _addPerson: function (person) {
					        // 
					        var self = this;
					        var flag = self._IsPersonToList(person);
					        if (!flag) {
					            self.tempSelectedPerson.push(person);
					            // 刷新已选人员列表
					            self._refreshSelectedPersonContainer(self.tempSelectedPerson);
					        }
					    },

					    // 是否添加一个人员到列表
					    _IsPersonToList: function (person) {
					        // 
					        var self = this;
					        var isExists = false;
					        if (self._PersonIsExists(
									person[self.options.dataMapping.userId],
									self.loadedPerson)) {
					            isExists = true;
					            return isExists;
					        }
					        self.loadedPerson.push(person);
					        return isExists;
					    },

					    // 获取已经加载的人员列表
					    _getLoadedDept: function () {
					        var self = this;
					        return self.loadedPerson;
					    },

					    // 移除一个人员
					    _removePerson: function (userId) {
					        // 
					        var self = this;
					        var d=null;
					        $(self.tempSelectedPerson)
									.each(
											function (i, e) {
											    if (e[self.options.dataMapping.userId] == userId) {
											        d = e;
											    }
											});

					        if (d) {
					            // 移除临时列表中的一个人员以及加载列表的一个人员
					            self.tempSelectedPerson.splice($.inArray(d,
										self.tempSelectedPerson), 1);
					            self.loadedPerson.splice($.inArray(d,
										self.loadedPerson), 1);
					        }
					        self._refreshSelectedPersonContainer(self.tempSelectedPerson);
					    },

					    // 移除所有人员
					    _removeAllPerson: function () {
					        // 
					        var self = this;
					        self.tempSelectedPerson = [];
					        self.loadedPerson = [];
					        self._refreshSelectedPersonContainer(self.tempSelectedPerson);
					    },

					    // 从容器中移除一个人员面板
					    _removePanelFromContainer: function (userId) {
					        var self = this;
					        // 移除一个人员
					        self._removePerson(userId);

					        // 根据临时人员重新绑定Container
					        self._refreshSelectedPersonContainer(self.tempSelectedPerson);
					        // 显示选择上限提示
					        if (self.options.maxSelectNum > 0
									&& self.tempSelectedPerson.length <= self.options.maxSelectNum) {
					            $("#" + self.deptselectionId + _consts.id.TIP).hide();
					        }
					    },

					    // 刷新选择的人员
					    _refreshSelectedPersonContainer: function (personList) {
					        // 
					        var self = this;
					        self.chooseUserArea.empty();

					        $.each(personList, function (i, item) {
					            var userId = item[self.options.dataMapping.userId];
					            var userName = item[self.options.dataMapping.userName];
					            var userTemplate = "{0}({1})"
					            		.replace("{0}", userName)
                                        .replace("{1}", userId);

					            var User = $("<li></li>")
                                        .addClass("search-choice")
                                        .bind("keydown", function (event) {
                                            return false;
                                        });
					            // 
					            $("<span id='" + userId + "'></span>")
                                        .append(userTemplate)
                                        .appendTo(User);
					            $("<a></a>").bind("click", function () {
                                            self._removePanelFromContainer(userId);
                                        })
                                        .appendTo(User);

					            User.appendTo(self.chooseUserArea);

					        });

					    },

					    // 准备查询
					    _prepareSearch: function (obj) {

					        var self = obj;
					        var text = $.trim(self.inputControl.val()) == self.options.search.inputTip ? ""
									: $.trim(self.inputControl.val());
					        
					        //var deptId =  treeSelect.getValue();
					        var  deptId = _deptselectionId;
					        if (self.options.timeCount) {
					            // 不管存不存在延时执行函数，先清除
					            clearTimeout(self.options.timeCount);
					        }

					        if (text.length == 0) {
					            this.dataNotFound.hide();
					            // 恢复查询状态
					            self.searchStatus = 0;
					            if (typeof this.options.source === "string") {
					                self._renewStatus();
					            } else {
					                // 加载所有数据
					                self._setUserListSource(self.initData);
					            }
					        } else if (text.length >= self.options.search.minChars) {

					            self.searchStatus = 1;
					            // 最小计时器为300ms
					            self.options.search.delay = self.options.search.delay < 300 ? 300
										: self.options.search.delay;

					            // 只要有输入则不执行查询操作
					            self.options.timeCount = setTimeout(
										function () {
										    if (typeof self.options.source === "string") {
										        self._executeSearch(obj, text,deptId);
										    } else {
										        self._executeEnterSearch(obj,text);
										    }
										},
										self.options.search.delay < 300 ? 300
												: self.options.search.delay);
					        }

					    },

					    // 执行远程查询
					    _executeSearch: function (obj, text, deptId) {
					        // 
					        var self = obj;

					        // 编码查询条件
					        text = text == self.options.search.inputTip ? ""
									: encodeURIComponent(text);
					        deptId = encodeURIComponent(deptId);
					       // var rootId = self.options.dept.rootId;
					        $
									.ajax({
									    url: self.options.source,
									    dataType: self.options.dataType,
									    timeout: self.options.timeout,
									    data: {
									        "keyword": text,
									        "orgid": deptId,
									        "topCount": self.options.selectPersontopCount
									    },
									    jsonp: self.options.jsonpCallback,
									    success: function (d) {
									    	if(d.list){
									    		self.initData = d.list.slice(0);
									    		self._setUserListSource(d.list);
									    		if (d.list.length == 0) {
									    			self.dataNotFound.show();
									    		}
									    	}
									    	else {
									            self.initData = [];
									            self._setUserListSource(self.initData);
									           // if (d.slice(0).length == 0) {
									                self.dataNotFound.show();
									           // }
									        }
									    },
									    beforeSend: function () {
									        self._showLoading();
									    },
									    complete: function () {
									        self.dataLoading.hide();
									    }
									});
					        // }
					    },

					    // 执行enter OR 自动搜索
					    _executeEnterSearch: function (obj, text) {
					        // 
					        var self = obj;
					        self.cacheDate = [];
					        var searchKeys = self.options.search.clientSearchAttrs == "" ? self.options.dataMapping.userId
									: self.options.search.clientSearchAttrs;
					        var searchKeysArr = searchKeys.split(',');


					        self.initData = self.options.source.slice(0);
					        if (self.initData.length > 0) {
					            // 遍历JSON数据得到所需形式

					            $(self.initData)
										.each(
												function (i, item) {
												    var flag1 = false, flag2 = false, flag3 = false;
												    for (var i = 0; i < searchKeysArr.length; i++) {
												        if (self.options.dataMapping.userId == searchKeysArr[i]) {
												            flag1 = item[self.options.dataMapping.userId]
																	.indexOf(text) > -1;
												        }
												        if (self.options.dataMapping.userName == searchKeysArr[i]) {
												            flag2 = item[self.options.dataMapping.userName]
																	.indexOf(text) > -1;
												        }
												        if (self.options.dataMapping.userDept == searchKeysArr[i]) {
												            flag3 = item[self.options.dataMapping.userDept]
																	.indexOf(text) > -1;
												        }
												    }
												    if (flag1 || flag2 || flag3) {
												        var b = self.cacheDate.length > 0 ? self.cacheDate.length
																: 0;
												        self.cacheDate[b] = item;
												    }
												});
					            if (self.cacheDate.length == 0) {
					                self.dataNotFound.show();
					            } else {
					                self.dataNotFound.hide();
					            }
					            self._setUserListSource(self.cacheDate);

					        } else {
					            self.dataNotFound.show();
					        }

					        // var res= self.initData.where( "( el, i, res,
					        // param ) => el.DId == param" , "000");

					        // var res = $objeq(self.initData, "DId =000");

					    },

					    // 确认关闭
					    _confirmClose: function () {
					        var self = this;
					        self.element.trigger("ok.selectPerson");
					       // self.dialogContainer.dialog("close");
					    },

					    // 人员是否存在
					    _PersonIsExists: function (userId, personList) {
					        // 
					        var self = this;
					        var isExists = false;
					        if (userId && personList) {
					            for (var i = 0; i < personList.length; i++) {
					                if (userId == personList[i][self.options.dataMapping.userId]) {
					                    isExists = true;
					                    break;
					                }
					            }
					        }
					        return isExists;
					    },

					    // 加载语言包
					    _loadLang: function (jsUrl, url, fn) {
					        //var self = this;
					        //var js = document.scripts;
					        var script = null;
					        var headHtml = $("head")[0].innerHTML;
					        // 检查js文件是否已经加载
					        if (headHtml.indexOf(url) == -1) {
					            script = $("<script></script>").attr("type",
										"text/javascript").attr("id",
										_consts.id.LANG_JS).attr("src", jsUrl);

					            document.getElementsByTagName("head")[0]
										.appendChild(script.get(0));
					        } else {
					            script = $("#" + _consts.id.LANG_JS);
					            
					            if(script.get(0).completed === true) {
						        	fn instanceof Function && fn.call();
						        	return;
					            }
					        }

					        if ($.browser.msie) { // IE
					            script.bind("readystatechange",function () {
												    if (script.get(0).readyState == 'loaded'
															|| script.get(0).readyState == 'complete') {
												    	script.get(0).completed = true;
												        fn instanceof Function && fn.call();
												    }
												});
					        } else { // 其它
					            script.bind("load", function () {
							    	script.get(0).completed = true;
					                fn instanceof Function && fn.call();
					            });
					        }

					    },

					    // 获取语言
					    _getRealLang: function () {
					        var self = this;
					        if (!self.options.lang
									|| self.options.lang == 'auto') {
					            return navigator.browserLanguage.toLowerCase();
					        }
					        return self.options.lang;
					    },

					    // 显示正在加载中
					    _showLoading: function () {
					        var self = this;
					        self.dataNotFound.hide();
					        self.dataLoading.show();
					    }
					});

    /*
	 * 扩展方法
	 */
    $.fn
			.extend({

			    // 卫星库人员
			    selectCGNPerson: function (opts) {
			        var options = {
			            lang: 'zh-cn',
			            dataMapping: {
			                userId: "StaffNO",
			                userName: "StaffName",
			                StaffNamePY: "StaffNamePY",
			                StaffShortPY: "StaffShortPY",
			                userDept: "orgname",
			                describe:"orgname"
			            },
			            dataType: "jsonp",
			            async: true,
			            search: {
			                // 查询关键字名称
			                keyName: "keyWord"
			            }
			        };
			        options = $.extend({}, options, opts);
			        $(this).selectPerson(options);
			    },

			    // 虚拟组织机构人员
			    selectVirtualPerson: function (opts) {
			        var options = {
			            lang: 'zh-cn',
			            dataMapping: {
			                userId: "empcode",
			                userName: "empname",
			                StaffNamePY: "StaffNamePY",
			                StaffShortPY: "StaffShortPY",
			                userDept: "orgname",
			                describe:"orgname"
			            },
			            dept: {
			                idKey: "OrgId",
			                pIdKey: "ParentOrg",
			                dept: "orgname",
			                deptOpen: "Open",
			                isParent: "isParent",
			                children: "children",
			                dataType: "jsonp"
			                // source: "http://tev-app01/NET01SERVICE/api/dept"
			            },
			            dataType: "jsonp",
			            async: true,
			            search: {
			                // 查询关键字名称
			                keyName: "keyWord"
			            }
			        };
//			        if (_consts.isTest) {
//			            options.source = "http://10.28.0.160/WebAPI/api/virtualstaff";
//			            options.dept.source = "http://10.28.0.160/WebAPI/api/dept";
//			        } else {
//			            options.source = "http://tev-app01/NET01SERVICE/api/virtualstaff";
//			            options.dept.source = "http://tev-app01/NET01SERVICE/api/dept";
//			        }
			        options = $.extend({}, options, opts);
			        $(this).selectPerson(options);
			    }

			});

})(jQuery);
