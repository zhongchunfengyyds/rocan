/**
 * 
 */
(function($, nui) {
	"use strict";
	if(nui.PersonPicker) return;
	
	nui.PersonPicker = function () {
	    nui.PersonPicker.superclass.constructor.apply(this, arguments);
	};
	nui.OrgPicker = function () {
	    nui.OrgPicker.superclass.constructor.apply(this, arguments);
	};

	nui.extend(nui.PersonPicker, nui.ButtonEdit, {
		uiCls: 'nui-personpicker',
		
		_initEvents: function() {
		},
	    getAttrs: function (el) {
	        var attrs = nui.PersonPicker.superclass.getAttrs.call(this, el);
	        mini._ParseBool(el, attrs, ["multi"] );
	        mini._ParseString(el, attrs,["disabled"]);
		    var self = this;
		    if(!self.getEl().id) {
		    	self.getEl().id = self.uid + "_picker";
		    }
		    if(attrs["disabled"]=="disabled"){
	        	return attrs;
	        }
		    //alert(attrs["disabled"]);
		    
			$(self.getEl()).selectVirtualPerson({
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
				selectedMulti: attrs["multi"],
				viewInput:self,
				//selectedId:"C209218",
				ok: function(e, data) {
					var value = "",ids=""; 
					$(data).each(function (i, person) { 
						ids += "," + person.empid;
						value += ",[" + person.empid + "] " + person.empname; 
			        });
					if(value.length > 0) {
						value = value.substring(1, value.length);
						ids = ids.substring(1, ids.length);
					}
					self.setValue(ids);
					self.setText(value);
					self.doValueChanged();

				}
			});
	        return attrs;
	    }
	    
	});
	
	nui.extend(nui.OrgPicker, nui.ButtonEdit, {
		uiCls: 'nui-orgpicker',
		
		_initEvents: function() {
		},
		setValueField: function(value) {
			this._$valueField.attr("name", value);
		},
	    getAttrs: function (el) {
	        var attrs = nui.OrgPicker.superclass.getAttrs.call(this, el);
	        mini._ParseBool(el, attrs, ["multi"] );
	        mini._ParseString(el, attrs, ["valueField"]);
	        mini._ParseInt(el, attrs, ["rootId"]);
	        mini._ParseString(el, attrs,["disabled"]);
			var self = this;
		    if(!self.getEl().id) {
		    	self.getEl().id = self.uid + "_picker";
		    }
		    if(attrs["disabled"]=="disabled"){
	        	return attrs;
	        }
			$(self.getEl()).selectVirtualOrg({
				source: "com.cgn.components.coframe.tools.OrgManager.getOrgByWords.biz.ext",
				modal: true,
				dataType: "json",
				selectedMulti: attrs["multi"],
				rootId: attrs["rootId"],
				ok: function(e, data) {
					var ids = "", text = "";
					$(data).each(function (i, dept) { 
						ids += "," + dept.orgid;
			            text += "," + dept.orgname; 
			        }); 
					if(ids.length > 0) {
						ids = ids.substring(1, ids.length);
						text = text.substring(1, text.length);
					}
					self.setValue(ids);
					self.setText(text);
					self.doValueChanged();
				}
			});
	        return attrs;
	    }
	});

	nui.NPersonPicker = function () {
	    nui.NPersonPicker.superclass.constructor.apply(this, arguments);
	};
	nui.NOrgPicker = function () {
	    nui.NOrgPicker.superclass.constructor.apply(this, arguments);
	};
	nui.extend(nui.NPersonPicker, nui.ButtonEdit, {
		uiCls: 'nui-npersonpicker',
		
		_initEvents: function() {
			nui.TextAreaBox.superclass._initEvents.apply(this, arguments);
			var self = this;
			self.on("buttonclick",function(e){
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
		    					self.doValueChanged();
		                    }
		                }
		            }
		        });
			});
		},
	    getAttrs: function (el) {
	        var attrs = nui.NPersonPicker.superclass.getAttrs.call(this, el);
	        mini._ParseBool(el, attrs, ["multi"] );
	        mini._ParseString(el, attrs,["disabled"]);
	        mini._ParseString(el, attrs,["rootUrl"]);
	        mini._ParseString(el, attrs,["allowchoose"]);
		    var self = this;
		    if(!self.getEl().id) {
		    	self.getEl().id = self.uid + "_picker";
		    }
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
	
	nui.extend(nui.NOrgPicker, nui.ButtonEdit, {
		uiCls: 'nui-norgpicker',
		
		_initEvents: function() {
			nui.TextAreaBox.superclass._initEvents.apply(this, arguments);
			var self = this;
			self.on("buttonclick",function(e){
				var showCheckBox = "false";
				if(self._multi){
					showCheckBox=self._multi;
				}
				var url="";
				/*if(self._rooturl){
					 url=self._rooturl+"/coframe/tools/organizationwidget.jsp?showCheckBox=" + showCheckBox;
				}else{
					 url="/default/coframe/tools/organizationwidget.jsp?showCheckBox=" + showCheckBox;
				}*/
				url="../newui/widget/organizationwidget.html?showCheckBox=" + showCheckBox;
				nui.open({
		            url:url,
		            showMaxButton: false,//设置隐藏最大化窗口按钮
		            title: "选择部门",//窗口标题
		            width: 450,//窗口宽度
		            height: 450,//窗口高度
		            allowResize:true,//允许调整窗口大小
		            ondestroy: function (action) {
		                if (action == "ok") {
		                	var iframe = this.getIFrameEl();
		                    var data = iframe.contentWindow.GetData();
		                    data = nui.clone(data);
		                    if (data) {
			                    var ids = "", text = "";
								$(data).each(function (i, dept) { 
									ids += "," + dept.orgId;
						            text += "," + dept.orgName; 
						        }); 
								if(ids.length > 0) {
									ids = ids.substring(1, ids.length);
									text = text.substring(1, text.length);
								}
								self.setValue(ids);
								self.setText(text);
								self.doValueChanged();
		                    }
		                }
		            }
		        });
			});
		},
		setValueField: function(value) {
			this._$valueField.attr("name", value);
		},
	    getAttrs: function (el) {
	        var attrs = nui.NOrgPicker.superclass.getAttrs.call(this, el);
	        mini._ParseBool(el, attrs, ["multi"] );
	        mini._ParseString(el, attrs, ["valueField"]);
	        mini._ParseString(el, attrs,["rootUrl"]);
	        mini._ParseInt(el, attrs, ["rootId"]);
	        mini._ParseString(el, attrs,["disabled"]);
			var self = this;
		    if(!self.getEl().id) {
		    	self.getEl().id = self.uid + "_picker";
		    }
		    return attrs;
	    },
		setRootUrl: function(value) {
			this._rooturl = value;
		},
		setMulti: function(value) {
			this._multi = value;
		},
	});
	
	mini.regClass(nui.NPersonPicker, "npersonpicker");
	mini.regClass(nui.NOrgPicker, "norgpicker");
	
	mini.regClass(nui.PersonPicker, "personpicker");
	mini.regClass(nui.OrgPicker, "orgpicker");
})(jQuery, nui);