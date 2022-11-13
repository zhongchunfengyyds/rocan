/**
 * 
 */
"use strict";
/*
var STextBoxList = function(a) {
	STextBoxList.superclass.constructor.call(this, null);
	this.data = [];
	this.doUpdate();
	if (a) {
		mini.applyTo.call(this, a);
	}
};
STextBoxList.dateRegExp = /^(\d{4})-((\d{1,2})(-(\d{1,2}?)?)?)?( ((\d{1,2})(:((\d{1,2})(:(\d{1,2})?)?)?)?)?)?$/;
mini.extend(STextBoxList, mini.TextBoxList, {
	uiCls: "nui-stextboxlist",
	tmplId: null,
	tmplData: null,
	minDate: new Date(1753, 0, 1, 0, 0, 0),
	maxDate: new Date(10000, 0, 1, 0, 0, 0),
	_create: function() {
		STextBoxList.superclass._create.apply(this, arguments);
		this.setUrl(function(c) {
			c._showPopup();
		});
	},
	_createData: function() {
	},
	_getCalendar: function() {
		if(!this._calendar) {
			var self = this;
			this._calendar = new nui.Calendar();
			this._calendar.set({
				showTime: true,
				timeFormat: 'HH:mm:ss'
			});
			this._calendar.setStyle("border: 0;");
			this._calendar.on("dateclick", function(e) {
				self._getCustomPopup().hide();
				self._inputEl.value = e.source.getFormValue();
				self.doQuery();
			});
			this._calendar.on("drawdate", function(e) {
				var date = e.date;
				e.allowSelect = date >= self.minDate && date < self.maxDate;
			});
		}
		return this._calendar;
	},
	_showCalendar: function(y, m, d, h, mi, s) {
		this._stopQuery();
		y = parseInt(y);
		y = y >= 1753 ? y : 1753; // SQL SERVER 日期最小值
		m = m ? parseInt(m) - 1 : 0;
		d = d ? parseInt(d) : 1;
		h = h ? parseInt(h) : 0;
		mi = mi ? parseInt(mi) : 0;
		s = s ? parseInt(s) : 0;
		
		var date = new Date();
		date.setFullYear(y, m, d);
		date.setHours(h, mi, s, 0);

		var calendar = this._getCalendar();
		calendar.setViewDate(date);
		calendar.setValue(date);
		if(!this._customPopup || (this._customPopup && !this._customPopup.isPopup)) {
			this.hidePopup();
			this._getCustomPopup().setBody(calendar.getEl());
			this._getCustomPopup().showAtEl(this.getEl());
		}
	},
	_getCustomPopup: function() {
		if(!this._customPopup) {
			var popup = this._customPopup = new nui.Popup();
			popup.set({
				popupEl: this.getEl(),
				showAction: "none",
				hideAction: "outerclick"
			});
		}
		return this._customPopup;
	},
	__OnInputKeyDown: function(e) {
		var keyCode = e.keyCode;
		if(this._customPopup && this._customPopup.isPopup) {
			if(keyCode == 13) {
				this._customPopup.hide();
				this._inputEl.value = this._getCalendar().getFormValue();
				this.doQuery();
				return;
			}
			
			if(keyCode == 27) {
				this._customPopup.hide();
				this.doQuery();
				return;
			}
		}
		
		if(!this.fire("keydown", {htmlEvent: e})) {
			STextBoxList.superclass.__OnInputKeyDown.apply(this, arguments);
		}
		
		if((keyCode == 8  || keyCode == 46) && this._inputEl) {
			var inputText = this.getInputText();
			
			var cursurPosition = 0;
			if(this._inputEl.selectionStart != null) {// 非IE
				cursurPosition = this._inputEl.selectionStart;
			} else { // IE
				var range = document.selection.createRange();
				range.moveStart("character", - inputText.length);
				cursurPosition = range.text.length;
			}
			
			if(keyCode == 8) {
				inputText = inputText.substring(0, cursurPosition - 1) + 
							inputText.substring(cursurPosition, inputText.length);
			} else {
				inputText = inputText.substring(0, cursurPosition) + 
							inputText.substring(cursurPosition + 1, inputText.length);
			}
			var p = inputText.match(STextBoxList.dateRegExp);
			if(p) {
				this._showCalendar(p[1], p[3], p[5], p[8], p[11], p[13]);
				return;
			} else if(this._customPopup && this._customPopup.isPopup) {
				this._customPopup.hide();
				this.doQuery();
				return;
			}
		}
	},
	__OnInputKeyPress: function(e) {
		var charCode = e.keyCode;//.charCode;
		var inputText = this.getInputText() + String.fromCharCode(charCode);
		var p = inputText.match(STextBoxList.dateRegExp);
		if(p) {
			this._showCalendar(p[1], p[3], p[5], p[8], p[11], p[13]);
			return;
		} else {
			if(this._customPopup && this._customPopup.isPopup) {
				this._customPopup.hide();
				this.doQuery();
				return;
			}
		}
	},
	getAttrs: function (el) {
		var attrs = STextBoxList.superclass.getAttrs.apply(this, arguments);
	    mini._ParseString(el, attrs, ["tmplId"]);
	    return attrs;
	},
	doUpdate: function() {
		if(this._inputEl) {
			nui.un(this._inputEl, "keypress", this.__OnInputKeyPress, this);
		}
		STextBoxList.superclass.doUpdate.apply(this, arguments);
		if(this._inputEl) {
			nui.on(this._inputEl, "keypress", this.__OnInputKeyPress, this);
		}
	},
	_loadTmpl: function(callback) {
		var self = this;
		$.ajax({
			url: "com.cgn.components.coframe.tools.QueryTmplManager.getQueryTmpl2.biz.ext",
			data: {tmplId: self.tmplId},
			success: function(n, o, m) {
				if(n.exception) {
					
				} else {
					self.tmplData = n.list;
					callback();
				}
			}
		});
	},
	_showPopup: function() {
		if(!this.tmplData) {
			var self = this;
			this._loadTmpl(function() {
				self.showPopup.call(self);
			});
		} else {
			this.showPopup();
		}
	},
	showPopup: function() {
		if(!this._customPopup || this._customPopup.isPopup == false) {
			if(this._listbox) {
				this._listbox.setData(this._buildListData());
				STextBoxList.superclass.showPopup.apply(this, arguments);
				this._listbox._focusItem(0, true);
				this._loading = false;
				if(this._selectOnLoad) {
					this.__doSelectValue();
					this._selectOnLoad = null;
				}
			} else {
				STextBoxList.superclass.showPopup.apply(this, arguments);
			}
		}
	},
	_buildListData: function() {
		var key = this.getInputText();
		var list = [];
		if(key && this.tmplData) {
			var keyValue = key.replace(/:/g, "\\:");
			var text = this.textField;
			var value = this.valueField;
			$.each(this.tmplData, function(index, item) {
				if(item.islike === true) {
					var d = {};
					d[text] = item.text + ":包含\"" + key + "\"";
					d[value] = item.field + ":%" + keyValue;
					list.push(d);
				} else if(item.israng === true) {
					var d = {};
					d[text] = item.text + ":大于\"" + key + "\"";
					d[value] = item.field + ":>" + keyValue;
					list.push(d);
					
					d = {};
					d[text] = item.text + ":小于\"" + key + "\"";
					d[value] = item.field + ":<" + keyValue;
					list.push(d);
				} else {
					var d = {};
					d[text] = item.text + ":等于\"" + key + "\"";
					d[value] = item.field + ":=" + keyValue;
					list.push(d);
				}
			});
		}
		return list;
	}
});
mini.regClass(STextBoxList, "stextboxlist");
*/
$(function() {
	$(document).keydown(function(e) {
		if(e.ctrlKey && e.keyCode == 70 /*Ctrl + F*/) {
			e.stopPropagation();
			e.originalEvent.keyCode = 0;
			e.originalEvent.returnValue = false;
			$("#cond").focus();
		}
	});
});

nui.parse();

var queryType = 0;

function btnText(query ,html){
    var html = "";
    if(query.css("display") == "none"){
        html = "返回";
    }else{
        html = "高级搜索";
    }
    query.slideToggle();
    return html ;
}
$(".adv-search").bind("click",function(e){
    e.preventDefault();
    var folding = $(this).parents(".navbar").next(".folding-menu");
    var html = btnText(folding );
    $(this).html(html);
    $(this).parents(".query-form").find(".dw-toggle .fa").toggleClass("fa-angle-down");
});
$(".dw-toggle").bind("click",function(e){
    e.preventDefault();
    $(this).find(".fa").toggleClass("fa-angle-down");
    var folding = $(this).parents(".navbar").next(".folding-menu");
    var html = btnText(folding);
    $(this).parents(".navbar-right").prev().find(".adv-search").html(html);
});

function onDrawDate(e) {
	var date = e.date;
	var d = new Date();
	var lastday = new Date(d.getTime() - 24*60*60*1000);

	if (date.getTime() < lastday.getTime()) {
		e.allowSelect = false;
	}
}

//nui.get("#taskList").groupBy("processInstID", "desc");
nui.get("#taskList").on("drawcell", function(e) {
//	var record = e.record, column = e.column;
	var field = e.field, value = e.value, dataType = e.column.dataType;
	//格式化日期
	if (dataType == "date" && value) {
		var dateFormat = e.column.dateFormat ? e.column.dateFormat : "yyyy-MM-dd HH:mm:ss";
		var lens = dateFormat.split(/-| |:/);
		var dirs = dateFormat.replace(/y|M|m|d|H|s/g, "").split("");
		var d = "", index = 0, len = 0;
		for(var i = 0; i < lens.length; i++) {
			len = lens[i].length;
			d += value.substring(index, index + len) + (i < dirs.length ? dirs[i] : "");
			index += len;
		}
		e.cellHtml = d;
		return;
	}
	
	if(field == "reassign") {
		e.cellStyle = "text-align:center";
		e.cellHtml = '<a href="javascript:reassign(),void(0)"><img src="' + (typeof actionIcon == 'string' ? actionIcon : "media/images/ui-icon_edit.gif") + '"/></a>';
		return;
	}
	
	
	if(field == "action") {
		e.cellStyle = "text-align:center";
		e.cellHtml = '<a href="javascript:showTaskDetailed(),void(0)"><img src="' + (typeof actionIcon == 'string' ? actionIcon : "media/images/resizeApi7.png") + '"/></a>';
		return;
	}
	
	if(field == "remove") {
		e.cellStyle = "text-align:center";
		e.cellHtml = '<a href="javascript:remove(),void(0)"><img src="' + (typeof actionIcon == 'string' ? actionIcon : "media/images/remove.gif") + '"/></a>';
		return;
	}
});




nui.get("#window").show = function() {
	nui.Window.prototype.show.apply(this, arguments);
	if(parent.cgnui) {
		parent.cgnui.addNavigationItem(this.title, "icon-task", null);
	}
};
// 重写hide方法，接受reload(boolean)参数，true重新刷新列表
nui.get("#window").hide = function(reload) {
	nui.Window.prototype.hide.apply(this, arguments);
	if(parent.cgnui) {
		parent.cgnui.removeLastNavigationItem();
	}
	if(reload) {
		nui.get("#taskList").reload();
	}
};

function getSelectedWorkItem() {
	return nui.get("#taskList").getSelected();
}



//转办
function reassign(){
	var selected = getSelectedWorkItem();
	var workitemid;
	if(selected) {
		workitemid = selected.workItemID;
	}else{
		return;
	}
	 nui.open({
         url: _CONTEXT_PATH + "/taskcenter/reassign.jsp",
         title: "转办人员选择", width: 600, height: 480,
         onload: function () {//弹出页面加载完成
	         var iframe = this.getIFrameEl();
	         var data = {workitemid:workitemid};//传入页面的json数据
	         iframe.contentWindow.setFormData(data);
         },
         ondestroy: function (action) {//弹出页面关闭前
        	 nui.get("#taskList").reload();
	     }
     });
}


function showTaskDetailed() {
	var selected = getSelectedWorkItem();
	if(selected) {
		var reloadAfterOpenTask = false;
		var pdn = selected.processDefName;
		var pii = selected.processInstID;
		var aii = selected.activityInstID;
		var wii = selected.workItemID;
		var actionURL = selected.actionURL;
		var url = "com.cgn.components.coframe.taskcenter.task.flow?processInstId=" + pii + "&actInstId=" + aii + "&workItemId=" + wii + "&processDefId=" + pdn + "&editable=" + editable + "&actionURL=" + actionURL;
		if("string" == typeof _eosFlowAction) {
			url += ("&_eosFlowAction=" + _eosFlowAction);
			reloadAfterOpenTask = (_eosFlowAction == "read");
		}
		nui.get("#window").load(url, function() {
			if(reloadAfterOpenTask) {
			
				nui.get("#taskList").reload();
			}
		});
		nui.get("#window").max();//.show();
	}
}

function remove() {
	var tasklist=nui.get("#taskList");
	var selected = getSelectedWorkItem();
	if(selected) {
		  nui.confirm("确定删除选中记录？","系统提示",
	        function(action){
	            if(action=="ok"){
	        		var pii = selected.processInstID;
	        		var wii = selected.workItemID;
	        		var entityType = selected.workItemDesc;
	        		//var json = nui.encode({processInstId:pii,workItemId:wii});
	        		var json = nui.encode({processInstId:pii,workItemId:wii,entityType:entityType});
	        		tasklist.loading("正在删除中,请稍等...");
	                $.ajax({
	                    //url:"com.cgn.components.bps.api.webservice.ProcessInstManager.wsterminateProcessInstance.biz.ext",
	                	url:"com.cgn.itmp.basecommon.WorkFlowCommon.wsterminateProcess.biz.ext",
	                    type:'POST',
	                    data:json,
	                    cache: false,
	                    contentType:'text/json',
	                    success:function(text){
	                    	tasklist.reload();
                        	parent.window.cgnui.syncStatisticsNums();
                        	parent.window.nui.showMessageBox({
					            showModal: false,
					            width: 250,
					            title: "提示",
					            iconCls: "mini-messagebox-info",
					            message:"删除成功!",
					            timeout: 3000,
					            x: 'center',
					            y: 'middle'
					        });
//	                        var returnJson = nui.decode(text);
//	                        if(returnJson.code==1){
//	                        	tasklist.reload();
//	                        	parent.window.cgnui.syncStatisticsNums();
//	                        	parent.window.nui.showMessageBox({
//						            showModal: false,
//						            width: 250,
//						            title: "提示",
//						            iconCls: "mini-messagebox-info",
//						            message:"删除成功!",
//						            timeout: 3000,
//						            x: 'center',
//						            y: 'Middle'
//						        });
//                            }else{
//                            	parent.window.nui.showMessageBox({
//						            showModal: false,
//						            width: 250,
//						            title: "提示",
//						            iconCls: "mini-messagebox-info",
//						            message:"删除失败!",
//						            timeout: 3000,
//						            x: 'center',
//						            y: 'Middle'
//						        });
//                            }
	                    	

                        }
                    });
                }
            });
	}
}


function showFlowchart() {
	var selected = getSelectedWorkItem();
	if(selected) {
		window.top.showWin("com.cgn.components.coframe.taskcenter.flowchart.flow?processInstId=" + selected.processInstID + "&contextPath=" + _CONTEXT_PATH);
		
		//$("#chart-frame").attr("src", "com.cgn.components.coframe.taskcenter.flowchart.flow?processInstId=" + selected.processInstID + "&contextPath=" + _CONTEXT_PATH);
		//nui.get("#chart-dialog").show();
	}
}

function resetFlowchart(zoomQuotiety){
	var selected = getSelectedWorkItem();
	if(selected) {
		$("#chart-frame").attr("src", "com.cgn.components.coframe.taskcenter.flowchart.flow?processInstId=" + selected.processInstID + "&contextPath=" + _CONTEXT_PATH+"&zoomQuotiety="+zoomQuotiety);
	}
}

/*nui.get("#detailed").on("click", showTaskDetailed);*/

/*nui.get("#transition").on("click", function() {
	var selected = getSelectedWorkItem();
	if(selected) {
		nui.get("#transition-dialog").show();
		nui.get("#transition-list").load({processInstId: selected.processInstID});
	}
});*/

/*nui.get("#chart").on("click", function() {
	showFlowchart();
});*/

/*nui.get("#attach").on("click", function() {
	var selected = getSelectedWorkItem();
	if(selected) {
		nui.get("#attach-dialog").show();
		nui.get("#attach-list").load({processInstId: selected.processInstID});
	}
});

nui.get("#forward").on("click", function() {
	var selected = getSelectedWorkItem();
	if(selected) {
		(new nui.Form("#forward-form")).reset();
		nui.get("#forward-dialog").show();
	}
});*/

$(function() {
	var grouping = nui.get("#grouping");
	if(grouping) {
		var list = nui.get("#taskList");
		list.on("drawgroup", function(e) {
			e.cellHtml = "任务:" + e.rows[0].processInstDesc;
		});
		
		grouping.on("checkedchanged", function() {
			if(this.checked) {
				list.groupBy("processInstID", "asc");
				list.collapseGroups();
			} else {
				list.clearGroup();
			}
		});
		if(grouping.checked) {
			grouping.checked = false;
			grouping.doClick();
		}
	}
});

function loadData() {
	nui.get("#taskList").load();
}

/*nui.get("#query").on("click", function(e) {
	alert();
	try{
		if(typeof(eval(appendCond))=="function")
			appendCond();
	}catch(e){
		
	}
	loadData();
});*/

function btnQuery(){
	queryType = 0;
	try{
		if(typeof(eval(appendCond))=="function")
			appendCond();
	}catch(e){
		
	}
	loadData();
}

function btnQueryDetail(){
	queryType = 1;
	loadData();
}

nui.get("#taskList").on("showRowDetail", function(e) {
});
nui.get("#taskList").on("selectionchanged", function(e) {
	var empty = this.getSelected() == null;
	//empty ? nui.get("#detailed").disable() : nui.get("#detailed").enable();
//	empty ? nui.get("#transition").disable() : nui.get("#transition").enable();
	//empty ? nui.get("#chart").disable() : nui.get("#chart").enable();
//	empty ? nui.get("#attach").disable() : nui.get("#attach").enable();
//	empty ? nui.get("#forward").disable() : nui.get("#forward").enable();
});
nui.get("#taskList").on("load", function(e) {
	var taskList = nui.get("#taskList");
	taskList.clearSelect(true);
	taskList.collapseGroups();
	
	if(typeof syncStatisticsNums == "boolean" && syncStatisticsNums) {
		if(parent.cgnui && parent.cgnui.syncStatisticsNums) {
			parent.cgnui.syncStatisticsNums();
		}
	}
});
nui.get("#taskList").on("beforeload", function(e) {
	var cond = "";
	//var queryPopup = nui.get("#query-popup");
	//if(queryPopup && queryPopup.getVisible()) {
	if(queryType==1) {
		var queryForm = new nui.Form("#queryForm");
		var data = queryForm.getData();
		for(var key in data) {
			var value = data[key];
			if(value) {
				if(value instanceof Date){
					var timeStr = value.getFullYear() + "-" + ((value.getMonth() + 1) < 10 ? ("0" + (value.getMonth() + 1)) : (value.getMonth() + 1)) + "-" + (value.getDate() < 10 ? ("0" + value.getDate()) : value.getDate()) + " " + (value.getHours() < 10 ? ("0" + value.getHours()) : value.getHours()) + ":" + (value.getMinutes() < 10 ? ("0" + value.getMinutes()) : value.getMinutes()) + ":" + (value.getSeconds() < 10 ? ("0" + value.getSeconds()) : value.getSeconds());
					cond += ("," + key + timeStr.replace(/:/g, "\\:"));//把时间里的":"转义
				}else{
					cond += ("," + key + value.replace(/:/g, "\\:").replace(/,/g, "\\,"));//把时间里的":"转义
				}
			}
		}
		cond = cond.substring(1, cond.length);
	} else {
		//cond = nui.get("#cond").getValue();
		cond = "processInstDesc:%"+$("#cond").val();
	}
	if(cond) {
		e.data.cond = cond;
	}
});
/*nui.get("#cond").on("keydown", function(e) {
	if(e.htmlEvent.keyCode == 13 && !this.isShowPopup) {
		loadData();
		return true;
	}
	return false;
});*/
function condKeyDown(e){
	if(e.htmlEvent.keyCode == 13 && !this.isShowPopup) {
		loadData();
		return true;
	}
	return false;
}
loadData();
