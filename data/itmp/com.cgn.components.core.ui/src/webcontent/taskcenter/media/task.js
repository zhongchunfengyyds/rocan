/**
 * 
 */
(function() {
	"use strict";
	$.fn.extend({
		task: function(conf) {
			var self = this;
			self.form = null;
			self.conf = conf;
			/**附件**/
			function getAttachs() {
				var attachs = [];
				/*if(nui.get("#attach-panel")) {
					attachs = nui.get("#attach-panel").getNewRecords();
				}*/
				// 选择新插入的行
				var newRecords = $("#flists").find("div[id='NAN']");
				if(newRecords) {
					$.each(newRecords, function(i) {
						var attach = {};
						attachs.push(attach);
						var name = $(this).find(".name").html();
						var size = $(this).find(".size").html().split(" ")[0];
						var uploadTime = $(this).find(".uploadTime").html();
						var uri = $(this).find(".uri").val();
						attach["name"] = name;
						attach["size"] = size;
						attach["uploadTime"] = uploadTime;
						attach["uri"] = uri;
					});
				}
				return attachs;
			};
			
			this.setFormDisabled = function(formId) {
				var form = new nui.Form(formId);
				if(form){
					form.setEnabled(false);
	//				$(formId).find(".table-cell span.mini-labelfield").attr("class", "mini-textbox mini-labelfield mini-textbox-readOnly");
					$(formId).find(".mini-textbox-disabled,.mini-buttonedit-disabled,.mini-textarea-disabled,.mini-disabled").removeClass("mini-textbox-disabled").removeClass("mini-buttonedit-disabled").removeClass("mini-textarea-disabled").removeClass("mini-disabled").children("span").css("border", "none");
					$(formId).find(".table-cell span.mini-labelfield input").attr("class", "mini-textbox-input");
					$(formId).find(".mini-buttonedit-buttons").remove();
					$(formId).find(".table-cell span.mini-labelfield .mini-buttonedit-border").attr("class", "mini-textbox-border");
				}
			};
			
			var loadApplyView = function(url) {
				$("#biz-infov").load(url, function() {
					if(conf.status == 2) {
						if(conf.operationPageUrl && conf.operationPageUrl!= '') {
							$("#operation-info").load(_CONTEXT_PATH + "/" + conf.operationPageUrl + 
									"?workItemId=" + conf.workItemId + 
									"&actDefName=" + conf.actDefName +
									"&canChooseNextActivity=" + conf.canChooseNextActivity +
									"&last=" + conf.last, 
									function() {
										initUi();
									}
							);
						} else {
							initUi();
						}
					} else {
						initUi();
					}
				},function(e){
					initUi();
				});
			};

		    var showTips = function(state, content) {
		        mini.showTips({
		            content: content,
		            state: state,
		            x: "right",
		            y: "center",
		            timeout: 3000
		        });
		    };
			
			var initUi = function() {
				nui.parse();
				if(window.initBizView) {
					window.initBizView(conf.processInstId, self);
				}
				
				self.form = new nui.Form($(self)[0]);
				
				if(conf.status != 0 && !conf.canModifyBizData) {
					// 将biz-info设置成只读
					self.setFormDisabled("#biz-infov");
				}
				$("#back").bind("click", self.close);
				if(conf.status != 1) {
					$("#submit").bind("click", self.doSubmit);
				}
				if(conf.status == 0) {
					$("#save").bind("click", self.doSave);
				}
				
				if(conf.status == 2  && !conf.operationPageUrl && conf.operationPageUrl!= '') {
					nui.get("#operationMode").on("valuechanged", function(e) {
						var v = e.value;
						nui.get("#nextActiviId").set({visible: v == -1});
						nui.get("#nextPerson").set({visible: v == -1});
						nui.get("#cc").set({visible: v != -2});
						nui.get("#reminderWay").set({visible: v != -2});
						var next = nui.get("#nextActivityDefName");
						
						if(next) {
							$("#divagree").hide();
							next.set({visible: v == 1});
							nui.get("#candidates").set({visible: v == 1});
							if(v==1){
								$("#divagree").show();
							}
						}
						$("#divnoagree").hide();
						if(v == -1) {
							$("#divnoagree").show();
							var nextActiviIdObj = nui.get("#nextActiviId");
							nextActiviIdObj.load();
							if(nextActiviIdObj.data.length == 1) {
								nextActiviIdObj.setValue(nui.get("#nextActiviId").data[0].activityInstId);
								nextActiviIdObj.doValueChanged();//chy add
							}
						}
						if(v == 1) {
							$("#nextCandidatesCell").show();
						} else {
							$("#nextCandidatesCell").hide();
						}
						try {
							nui.get("#opinions").setValue(e.source.getSelected().dictName);
						} catch (e) {}
					}).setValue(1);
				}
				if(nui.get("#operationMode")){
					nui.get("#operationMode").doValueChanged();
				}
				
				try {
					nui.get("#opinions").setValue(nui.get("#operationMode").getSelected().dictName);
				} catch (e) {};

				if(conf.status > 0) {
					$("#follow").bind("click", function() {
						var btn = this;
						var unfollowed =  $(btn).find("i").hasClass("fa-lightbulb-o");
						var url = unfollowed ? "com.cgn.components.coframe.taskcenter.FollowManager.addFollow.biz.ext" : "com.cgn.components.coframe.taskcenter.FollowManager.removeFollow.biz.ext";
						var successMsg = unfollowed ? conf.fsm: conf.cfsm;
						function updateIconCls() {
							var iconCls= unfollowed ? "fa-times-circle" : "fa-lightbulb-o";
							var text= unfollowed ? conf.btCancelFollow : conf.btFollow;
							$(btn).find("i").removeClass("fa-times-circle");
							$(btn).find("i").removeClass("fa-lightbulb-o");
							$(btn).find("i").addClass(iconCls);
							$(btn).find("span").html(text);
						}
						nui.ajax({
							url: url,
							type : "POST",
							data : {processInstId: conf.processInstId},
							dataType : "json",
							success : function(data) {
								if(data.result == "success") {
									showTips("success", successMsg);
									updateIconCls();
									var p = parent.parent;
									if(p != window && p.cgnui && p.cgnui.syncStatisticsNums) {
										p.cgnui.syncStatisticsNums();
									}
								}
							}
						});
					});
				}

				$("#show-flow-chart").bind("click", function() {
					if(conf.processInstId) {
						$("#chart-frame").attr("src", "com.cgn.components.coframe.taskcenter.flowchart.flow?processInstId=" + conf.processInstId + "&contextPath=" + _CONTEXT_PATH);
					} else {
						$("#chart-frame").attr("src", "com.cgn.components.coframe.taskcenter.flowchart.flow?processDefName=" + conf.processDefId + "&contextPath=" + _CONTEXT_PATH);
					}
					nui.get("#chart-dialog").show();
				});
				
				$("#show-reassign").bind("click", function() {
					var workitemid = nui.get("#workItemId").value;
					 nui.open({
				         url: _CONTEXT_PATH + "/coframe/taskcenter/reassign.jsp",
				         title: "转办人员选择", width: 600, height: 480,
				         onload: function () {//弹出页面加载完成
					         var iframe = this.getIFrameEl();
					         var data = {workitemid:workitemid};//传入页面的json数据
					         iframe.contentWindow.setFormData(data);
				         }
				         
				     });
				});
				
				$.each(nui.findControls(function(d) {return d.uiCls == "mini-panel";}), function(i, panel) {if(i) {panel.set({borderStyle: "border-top: 0"});}});
			};
			
			/***输出业务基础信息**/
			if(conf.status == 0 && !conf.processInstId) {
				loadApplyView("com.cgn.components.coframe.taskcenter.bizInfo.flow?processDefId=" + conf.processDefId + "&status=" + conf.status + "&actionURL=" + conf.actionURL + "&actDefId=" + conf.actDefId);
			} else {//  自定义的页面
				loadApplyView("com.cgn.components.coframe.taskcenter.bizInfo.flow?processDefId=" + conf.processDefId + "&processInstId=" + conf.processInstId + "&status=" + conf.status + "&actionURL=" + conf.actionURL + "&actDefId=" + conf.actDefId);
			}
			
			this.close = function() {
				if(mini._getTopWindow() == window) {
					window.opener = null;
					window.open('','_self');
					window.close();
				} else {
					self.hide();
				}
			};
			
			this.hide = function(reload) {
				var win = parent.window.nui.get("#window");
				if(win) {
					win.hide(reload);
				} else {
					parent.window.location.reload(false);
				}
				
				if(reload) {
					var p = parent.parent;
					if(p != window && p.cgnui && p.cgnui.syncStatisticsNums) {
						p.cgnui.syncStatisticsNums();
					}
				}
			};
			
			this.getBizData = function() {
				var bizData = null;
				if(window.getBizData) {
					bizData = window.getBizData();
				} else {
					bizData = (new nui.Form("#biz-infov")).getData();
					if(window.getArrayData) {
						var eData = window.getArrayData();
						for(var k in eData) {
							bizData[k] = eData[k];
						}
					}
				}
				return bizData;
			};
			
			this.doSubmit = function(e) {
		 		//var form = new nui.Form(el);
				//如果用户的业务表单页面存在自己的方法，先执行
				if(typeof(myself) !=  "undefined" && typeof(myself) ==  "function"){
					myself(e);
				}
				self.form.validate();
				var validated = self.form.isValid(); 
				if(validated && !!window.validate) {
					validated = window.validate(self.form, e.isDraft);
				}
				if(validated) {
					var d = self.form.getData(true, true);
					if(e.isDraft) {
						d.isDraft = true;
					}
					d.attachs = getAttachs();
					if(conf.status == 0) {
						d.basic = new nui.Form("#basic").getData();
						d.operationData = nui.encode((new nui.Form("#next")).getData());
//						d.basic.createWorkDepartName = nui.get("#workDepart").getText();
						d.bizData = nui.encode(self.getBizData());
					} else {
						var o = nui.get("#operationMode").getValue();
						var noname = {name: null}, cname = {name: "nextCandidates"};
						if(o == "1") {
							if(nui.get("#nextPerson")) 
								nui.get("#nextPerson").set(noname);
							if(nui.get("#candidates"))
								nui.get("#candidates").set(cname);
						} else if(o == "-1") {
							if(nui.get("#candidates"))
								nui.get("#candidates").set(noname);
							if(nui.get("#nextPerson")) 
								nui.get("#nextPerson").set(cname);
						}
						if(conf.canModifyBizData) {
							d.bizData = nui.encode(self.getBizData());
						}
						d.operationData = nui.encode(window.getOperationData ? window.getOperationData() : (new nui.Form("#operation-info")).getData());
					}
					self.form.mask(conf.postMask);
					if(!!window.doSubmit) {
						window.doSubmit(d);
					} else {
						nui.ajax({
							url: "com.cgn.components.coframe.taskcenter.TaskManager.taskHandle.biz.ext",
							type : "POST",
							data : d,
							dataType : "json",
							success : function(data) {
								if(data.code == 1) {
									var msg = null;
									if(e.isDraft) {
										msg = "<p align=left style='text-indent: 1em;'><b>草稿保存成功！</b></p><p align=left style='text-indent: 1em;'><b>可在【我的草稿】中查看草稿信息</b></p>";
									} else {
										if(d.processInstId==""){
											msg = "<p align=left style='text-indent: 1em;'><b>流程发起成功！</b></p><p align=left style='text-indent: 1em;'><b>可在已办任务中查看流程信息</b></p>";
										}else{
											msg = "<p align=left style='text-indent: 1em;'><b>流程处理成功！</b></p><p align=left style='text-indent: 1em;'><b>可在已办任务中查看流程信息</b></p>";
										}
									}
									
									if(mini._getTopWindow() == window) {
										self.form.unmask();
										nui.alert(msg, "提示", function(action) {
											self.close();
							            });
									} else {
										self.hide(true);
										parent.window.nui.showMessageBox({
								            showModal: false,
								            width: 250,
								            title: "提示",
								            iconCls: "mini-messagebox-info",
								            message: msg,
								            timeout: 3000,
								            x: 'right',
								            y: 'bottom'
								        });
									}
								} else {
									self.form.unmask();
									window.location.href=_CONTEXT_PATH + "/common/error.jsp";
								}
							}
						});
					}
				}
			};
			this.doSave = function(e) {
				
				e.isDraft = true;
				self.doSubmit(e);
			};
			
			return self;
		}
	});
	
	//////////////////////////////////////////////////////////////////////
	// NextCandidates
	nui.NextCandidates = function() {
		nui.NextCandidates.superclass.constructor.apply(this, arguments);
	};
	nui.extend(nui.NextCandidates, nui.TextBox, {
		uiCls: 'nui-cgn-task-candidates',
		_InputType: "hidden",
		_initEvents: function(){},
		getAttrs: function (el) {
			var attrs = nui.NextCandidates.superclass.getAttrs.call(this, el);
		    mini._ParseString(el, attrs, ["processDefName"]);
		    mini._ParseInt(el, attrs, ["workItemId"]);
		    this.setAllowInput(false);
		    return attrs;
		},
		setProcessDefName: function(value) {
			$(this._borderEl).load("com.cgn.components.coframe.taskcenter.nextsCandidates.flow?processDefName=" + value);
		},
		setWorkItemId: function(value) {
			$(this._borderEl).load("com.cgn.components.coframe.taskcenter.nextsCandidates.flow?workItemId=" + value);
		}
	});
	mini.regClass(nui.NextCandidates, "cgntasknextcandidates");
	//////////////////////////////////////////////////////////////////////
	// BackActiviListBox
	nui.BackActiviListBox = function() {
		nui.BackActiviListBox.superclass.constructor.apply(this, arguments);
		this.set({
			dataField: "list",
			valueField: "activityInstId",
			textField: "activityDefName"
		});
	};
	nui.extend(nui.BackActiviListBox, nui.ComboBox, {
		uiCls: "nui-backactivilistbox",
		setWorkItemId: function(value) {
			this._workItemId = value;
		},
		setCandidatesField: function(value) {
			this.on("valuechanged", function(e) {
				var text = "";
				$.each(e.selected.participants.WFParticipant, function(i, p) {
					text += ",[" + p.id + "]" + p.name;
				});
				nui.get(value).set({
					value: text.substring(1, text.length)
				});
			});
		},
		getAttrs: function (el) {
			var attrs = nui.BackActiviListBox.superclass.getAttrs.call(this, el);
		    mini._ParseInt(el, attrs, ["workItemId"]);
		    mini._ParseString(el, attrs, ["candidatesField"]);
		    return attrs;
		},
		load: function(url) {
			if(url) {
				nui.BackActiviListBox.superclass.load.call(this, url);
			} else {
				if(!this.url) {
					this.setUrl("com.cgn.components.coframe.taskcenter.TaskManager.getNextActInstList.biz.ext?workItemId=" + this._workItemId);
				}
			}
		}
	});
	mini.regClass(nui.BackActiviListBox, "cgntaskbackactivilistbox");
	//////////////////////////////////////////////////////////////////////
	// NextActiviListBox
	nui.NextActiviListBox = function() {
		nui.NextActiviListBox.superclass.constructor.apply(this, arguments);
		this.set({
			dataField: "list.WFActivityDefineExt",
			valueField: "activityId",
			textField: "name"
		});
	};
	nui.extend(nui.NextActiviListBox, nui.ComboBox, {
		uiCls: "nui-nextactivilistbox",
		setCandidatesField: function(value) {
			this.on("valuechanged", function(e) {
				var data = [];
				var candidates = e.selected.candidates;
				if(candidates) {
					candidates = candidates.split(/,/);
					for(var i = 0; i < candidates.length; i++) {
						var parts = candidates[i].split(/\[|\]/);
						var id = parts.shift();
						if(id == "") {
							id = parts.shift();
						}
						data.push({
							userId: id,
							userName: candidates[i]
						});
					}
				}
				nui.get(value).load(data);
			});
		},
		setProcessDefName: function(value) {
			this.setUrl("com.cgn.components.coframe.taskcenter.TaskManager.getNextActivities.biz.ext?processDefName=" + value);
		},
		setCurrentActInstId: function(value) {
			this.setUrl("com.cgn.components.coframe.taskcenter.TaskManager.getNextActivities.biz.ext?currentActInstId=" + value);
		},
		getAttrs: function (el) {
			var attrs = nui.NextActiviListBox.superclass.getAttrs.call(this, el);
		    mini._ParseString(el, attrs, ["candidatesField", "processDefName"]);
		    mini._ParseInt(el, attrs, ["currentActInstId"]);
		    return attrs;
		}
	});
	mini.regClass(nui.NextActiviListBox, "cgntasknextactivilistbox");
	//////////////////////////////////////////////////////////////////////
	// CandidatesBox
	nui.CandidatesBox = function() {
		nui.CandidatesBox.superclass.constructor.apply(this, arguments);
		this.set({
			valueField: "userId",
			textField: "userName"
		});
	};
	nui.extend(nui.CandidatesBox, nui.ComboBox, {
		uiCls: "nui-candidatesbox",
		setOtherParticipants: function(value) {
			this._otherParticipants = value;
			if(value == true) {
				this._createOtherButton();
			}
		},
		
		_createOtherButton: function() {
			var self = this;
			var $nb = $("<span></span>").attr("id", this.id + "_selectperson").attr("title", "选择其它人员").attr("class", "mini-buttonedit-button").attr("onmouseover", "mini.addClass(this, 'mini-buttonedit-button-hover');").attr("onmouseout", "mini.removeClass(this, 'mini-buttonedit-button-hover');").append($("<span class='icon-node'></span>"));
			/* $nb.selectVirtualPerson({
				source: "com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext",
	            dept: { 
	                idKey: "orgid", 
	                pIdKey: "parentorgid", 
	                dept: "orgname", 
	                deptOpen: "Open", 
	                dataType: "json", 
	                source: "com.cgn.components.coframe.tools.OrgManager.getOrgByWords.biz.ext"
	            }, 
				modal: true,
				dataType: "json",
				selectedMulti: true,
				ok: function(e, data) {
					var value = "",ids=""; 
					$(data).each(function (i, person) { 
						ids += "," + person.empid;
						value += ",[" + person.empid + "]" + person.empname; 
			        });
					if(value.length > 0) {
						value = value.substring(1, value.length);
						ids = ids.substring(1, ids.length);
					}
					self.setValue(ids);
					self.setText(value);
					self.validate();
				}
			});*/
			$nb.bind("click",function(e){
				var url="";
				var showCheckBox = "true";
				if(self._multi){
					showCheckBox=self._multi;
				}
				var allowChoose = "true";
				if(self._allowchoose){
					allowChoose = self._allowchoose;
				}
				/*if(self._rooturl){
					 url=self._rooturl+"/coframe/tools/employeewidget.jsp?showCheckBox=" + showCheckBox;
				}else{
					 url="/default/coframe/tools/employeewidget.jsp?showCheckBox=" + showCheckBox;
				}*/
				url="../newui/widget/personwidget.html?showCheckBox=" + showCheckBox + "&allowChoose="+allowChoose;
				nui.open({
		            url:url,
		            showMaxButton: false,//设置隐藏最大化窗口按钮
		            title: "选择人员",//窗口标题
		            width: 740,//窗口宽度
		            height: 540,//窗口高度
		            allowResize:true,//允许调整窗口大小
		            onload:function(){
		            	var iframe = this.getIFrameEl();
		            	//if(empData){
		            		//调用弹出页面方法进行初始化
		            		var empids= self.getValue();
		            	var empnames=self.getText();
		            	var arr=new Array();
		            	if(empids){
		            		var empidarr=empids.split(",");
		            		var empnamearr=empnames.split(",");
		            		for(var i=0;i<empidarr.length;i++){
		            			var emp = {};
		            			emp.empId=empidarr[i];
		            			emp.empName=empnamearr[i];
		            			arr.push(emp);
		            		}
		            		iframe.contentWindow.SetData(arr);
		            	}
		            		
		            	//}
		            },
		            ondestroy: function (action) {
		                if (action == "ok") {
		                	var iframe = this.getIFrameEl();
		                    var data = iframe.contentWindow.GetData();
		                    data = nui.clone(data);
		                    if (data) {
		                    	var value = "",ids=""; 
		    					$(data).each(function (i, person) { 
		    						ids += "," + person.empId;
		    						value += "," + person.empName; 
		    			        });
		    					if(value.length > 0) {
		    						value = value.substring(1, value.length);
		    						ids = ids.substring(1, ids.length);
		    					}
		    					self.setValue(ids);
		    					self.setText(value);
		    					self.validate();
		                    }
		                }
		            }
		        });
			});
			$(this.getEl()).find(".mini-buttonedit-buttons").append($nb);
			$nb.bind("click", function() {
				self._cancel_showpopup = true;
			});
		},
		
		_initEvents: function() {
			var self = this;
			nui.CandidatesBox.superclass._initEvents.apply(this, arguments);
			this.on("beforeshowpopup", function(e) {
				e.cancel = self._cancel_showpopup;
				self._cancel_showpopup = false;
			});
		},
		
		getAttrs: function(el) {
			var attrs = nui.CandidatesBox.superclass.getAttrs.call(this, el);
			mini._ParseBool(el, attrs, ["otherParticipants"]);
			mini._ParseString(el, attrs,["rootUrl"]);
			mini._ParseBool(el, attrs, ["multi"] );
			mini._ParseString(el, attrs,["allowchoose"]);
		    return attrs;
		},
		setRootUrl: function(value) {
			this._rooturl = value;
		},
		setMulti: function(value) {
			this._multi = value;
		},
		setAllowchoose: function(value) {
			this._allowchoose = value;
		},
	});
	mini.regClass(nui.CandidatesBox, "cgntaskcandidatesbox");
	//////////////////////////////////////////////////////////////////////
	// LogsGrid
	nui.LogsGrid = function() {
		nui.LogsGrid.superclass.constructor.apply(this, arguments);
		this.set({
			showPager: false,
			url: "com.cgn.components.coframe.taskcenter.TaskManager.getTransitionList.biz.ext",
			dataField: "logs.WFProcessLog"
		});
	};
	nui.extend(nui.LogsGrid, nui.DataGrid, {
		uiCls: 'nui-logsgrid',
		setProcessInstId: function(value) {
			this.load({processInstId: value});
		},
		setTimeFormat: function(value) {
			this._timeFormat = value;
		},
		getAttrs: function(el) {
			var attrs = nui.CandidatesBox.superclass.getAttrs.call(this, el);
			mini._ParseString(el, attrs, ["timeFormat", "processInstId"]);
		    return attrs;
		},
		_divTimes: function(flag, time) {
			// 整除
			var div = function(n1, n2) {
			    var n1 = Math.round(n1); //四舍五入
			    var n2 = Math.round(n2); //四舍五入
			    var rslt = n1 / n2; //除
			    if (rslt >= 0) {
			        rslt = Math.floor(rslt); //返回值为小于等于其数值参数的最大整数值。
			    } else {
			        rslt = Math.ceil(rslt); //返回值为大于等于其数字参数的最小整数。
			    }
			    return rslt;
			};
			var t = {
					d: 24 * 60 * 60 * 1000,
					h: 60 * 60 * 1000,
					m: 60 * 1000,
					s: 1000
			};
			return [div(time, t[flag]), time % t[flag]];
		},
		_format: function(time) {
			var times = [0, time];
			var text = new String(this._timeFormat);
			if(text.indexOf("d") >= 0) {
				times = this._divTimes("d", times[1]);
				text = text.replace("d", times[0]);
			}
			if(text.indexOf("h") >= 0) {
				times = this._divTimes("h", times[1]);
				text = text.replace("h", times[0]);
			}
			if(text.indexOf("m") >= 0) {
				times = this._divTimes("m", times[1]);
				text = text.replace("m", times[0]);
			}
			if(text.indexOf("s") >= 0) {
				times = this._divTimes("s", times[1]);
				text = text.replace("s", times[0]);
			}
			return text;
		},
		_initEvents: function() {
			var self = this;
			this.on("drawcell", function(e) {
				if("takeTime" == e.field) {
					var text = "";
					var time = e.record.endTime - e.record.startTime;
					if(self._timeFormat) {
						text = self._format(time);
					} else {
						text = (time / (60 * 1000)) + "'";
					}
					e.cellHtml = text;
				}
			});
		}
	});
	mini.regClass(nui.LogsGrid, "cgntasklogsgrid");
	//////////////////////////////////////////////////////////////////////
	// TextAreaBox
	nui.TextAreaBox = function () {
	    nui.TextAreaBox.superclass.constructor.apply(this, arguments);
	};
	nui.extend(nui.TextAreaBox, nui.TextArea, {
		uiCls: 'nui-textareabox',
		_loaded: false,
		
		_create: function(e) {
			nui.TextAreaBox.superclass._create.apply(this, arguments);
			this._menu = new nui.Menu();
			$(this.getEl()).addClass("mini-textarea").addClass("nui-textareabox");
			this.btn = new nui.MenuButton();
			this.btn.set({text: "插入常用意见"});
			$(this.btn.getEl()).css("margin-left", "100px").insertBefore($(this.getEl()).find(".mini-textbox-border"));
		},
		_getAddHeight: function() {
			return $(this.btn.getEl()).outerHeight(true) + 2/*按钮与文本框间的间距*/;
		},
		setHeight: function(value) {
			value = parseInt(value);
			if(isNaN(value)) {
				value = "75";
			} else {
				value = (value + this._getAddHeight()).toString();
			}
			nui.TextAreaBox.superclass.setHeight.apply(this, [value]);
		},
		doLayout: function() {
			nui.TextAreaBox.superclass.doLayout.apply(this, [arguments]);
			var h = this._borderEl.clientHeight;//parseInt(this.height);
			if(!isNaN(h)) {
				$(this.getEl()).find("textarea").css("height", (h - this._getAddHeight()).toString() + "px");
				$(this.getEl()).find(".mini-textbox-border").css("top", "2px");
			}
		},
		_initEvents: function() {
			nui.TextAreaBox.superclass._initEvents.apply(this, arguments);
			var self = this;
			this.btn.on("click", function() {
				if(!self._loaded) {
					self._menu.loading();
					self._menu.setUrl(self._url);
				}
			});
			this._menu.on("load", function(e) {
				e.source.unmask();
				self.btn.set({menu: e.source});
				self._loaded = true;
				e.source.showAtEl(self.btn.getEl(), {});
			});
			this._menu.on("itemclick", function(e) {
				var item = e.item, isLeaf = e.isLeaf;
				if(isLeaf) {
					self.setValue(item.opinions);
					self.validate();
				}
			});
		},
		setUrl: function(value) {
			this._url = value;
		},
		setDataField: function(value) {
			this._menu.set({
				dataField: value
			});
		},
		setTextField: function(value) {
			this._menu.set({
				textField: value
			});
		},
		setIdField: function(value) {
			this._menu.set({
				idField: value
			});
		},
		setParentField: function(value) {
			this._menu.set({
				parentField: value
			});
		},
		setButtonText: function(value) {
			this.btn.set({text: value});
		},
	    getAttrs: function (el) {
	        var attrs = nui.OrgPicker.superclass.getAttrs.call(this, el);
	        mini._ParseString(el, attrs, ["url", "dataField", "textField", "idField", "parentField", "buttonText"] );
	        return attrs;
	    }
	});
	mini.regClass(nui.TextAreaBox, "textareabox");
})();