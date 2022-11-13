//
//net01 mvc  菜单
//v1.0
//

(function ($, undefined) {
    var requestIndex = 0;
    $.widget("ui.mvcmenu", {
        version: "1.0",
        options: {
            appendTo: "body",
            target: "_blank",
            fillSpace: true,
            source: [],
            rootUrl:"",
            click: null
        },
        pending: 0,
        _create: function () {
            var self = this;
            this.options.appendTo = self.element[0].id; //default append to this control 
            this.menu = self.element[0];

            this.response = function () {
                return self._response.apply(self, arguments);
            };
            this._initSource();
        },
        destroy: function () {
            this.menu.element.remove();
            $.Widget.prototype.destroy.call(this);
        },

        _setOption: function (key, value) {
            $.Widget.prototype._setOption.apply(this, arguments);
            if (key === "source") {
                this._initSource();
            }
            if (key === "appendTo") {
                this.menu.element.appendTo($(value || "body", this.element[0].ownerDocument)[0]);
            }
            if (key === "disabled" && value && this.xhr) {
                this.xhr.abort();
            }
        },

        _initSource: function () {
            var self = this, array, url;
            if ($.isArray(this.options.source)) {
                array = this.options.source;
                this.source = function (request, response) {
                    response(array);
                };
            } else if (typeof this.options.source === "string") {
                url = this.options.source;
                this.source = function (request, response) {
                    if (self.xhr) {
                        self.xhr.abort();
                    }
                    self.xhr = $.ajax({
                        url: url,
                        data: request,
                        dataType: "json",
                        autocompleteRequest: ++requestIndex,
                        success: function (data, status) {
                            if (this.autocompleteRequest === requestIndex) {
                                self.options.source = data.menu.MenuSource;
                                self._response(self.options.source);
                            }
                        },
                        error: function () {
                            if (this.autocompleteRequest === requestIndex) {
                                response([]);
                            }
                        }
                    });
                };
            } else {
                this.source = this.options.source;
            }
            this.source(null, this.response);
        },
        _response: function (content) {
            if (content && content.length && $.isArray(content)) {
                content = this._normalize(content);
                this._suggest(content);

            }
            this.pending--;
            if (!this.pending) {
                this.element.removeClass("ui-autocomplete-loading");
            }
        },

        _normalize: function (items) {
        	items.forEach(function(item){
        		delete item.Items;
        	});
            var map={};
            items.forEach(function(item){
            	map[item.menuid]=item;
            });
            var val=[];
            items.forEach(function(item){
             var parent=map[item.parentsid];
             if(parent){
            	 (parent.Items||(parent.Items=[])).push(item);
             }else{
            	 val.push(item);
             }
            });
            //if(items.)
            return $.map(val, function (item) {
                if (typeof item === "string") {
                    return { name: item };
                }
                var c = $.extend({
                    name: item.menuname,
                    icon: item.Icon
                }, item);
                var child = [];
                if ($.isArray(item.Items)) {
                    $.map(item.Items, function (k) {
                        var o = $.extend({
                            name: k.menuname,
                            css: k.Css,
                            numurl: k.numurl,
                            url: k.funcaction
                        }, k);
                        child.push(o);
                    });
                }
                c.Items = child;
                return c;
            });
        },

        _suggest: function (items) {
            var self = this;
            var ul = $(this.menu).empty().zIndex($(this.element).zIndex() + 1);
            //var ul = $(this.menu).zIndex($(this.element).zIndex() + 1);
            this._renderMenu(ul, items);
            ul.show();
            this._resizeMenu();
        },

        _resizeMenu: function () {
            var ul = $(this.menu);
            ul.outerWidth(Math.max(
			ul.width("").outerWidth(),
			this.element.outerWidth()
		));
        },

        _renderMenu: function (ul, items) {
            var self = this;
            //菜单头
            var menuHead = "";
            $("<button class=\"side-toggle\"><span class=\"fa fa-outdent\"></span></button>").bind("click",function(){
            	var side = $(".side-bar").width();
        		$(this).find(".fa").toggleClass("fa-indent");
        		var query = $(this).parents(".side-left");
        		query.toggleClass("bar-flex");
        		var p = null;
        		if($(".fully").css("display") == "none"){
        			p = 0;
        		}else{
        			p = 25;
        		}
        		if(query.attr("class").indexOf("bar-flex")!=-1){
        			query.animate({"left":-side+50},250,function(){
        				$(".side-text").hide();
        				$(".side-pills  li  a").css("text-align","right");
        			});
        			if($(".btn-flex").attr("class").indexOf("on")!=-1){
        				$(".box").animate({"padding-left":50+p},250);
        			}else if($(".fully").css("display") == "block"){
        				$(".box").animate({"padding-left":fully+50},250);
        			}else if($(".fully").css("display") == "none"){
        			    $(".box").animate({"padding-left":50},250);
        			}
        		}else{
        			$(".side-text").show();
        			$(".side-pills  li  a").css("text-align","left");
        			query.animate({"left":"0"},250);
        			if($(".btn-flex").attr("class").indexOf("on")!=-1){
        				$(".box").animate({"padding-left":side+p},250);
        			}else if($(".fully").css("display") == "block"){
        				$(".box").animate({"padding-left":side+fully},250);
        			}else if($(".fully").css("display") == "none"){
        			    $(".box").animate({"padding-left":side},250);
        			}
        		}
        	}).appendTo(ul);
            
            var ul2=$(" <ul class=\"side-pills\"></ul>");
            $.each(items, function (index, item) {
                menuHead = $("<a href=\"javascript:;\"></a>");
                menuHead.bind("click",function(){
					$(this).parent().toggleClass("active").siblings(".active").removeClass("active");
					$(this).parent().siblings("li").find(".side-menu").slideUp();
					$(this).find(".fa-angle-right").toggleClass("side-rotate").parents("li").siblings().find(".fa-angle-right").removeClass("side-rotate");
					$(this).next(".side-menu").slideToggle();
					$(".side-menu").css({
			            "overflowY":"scroll",
			            "overflowX":"hidden"
			        });
                });
                if (item) {
                    var img = $("<div class=\"nav-icon\"></div>");
                    img.append($("<span></span>").addClass("fa fa-angle-right"));
                    menuHead.append(img);
                }
                var span = $("<span class=\"side-text\"></span>");
                span.append(item.menuname);
                
                 
                menuHead.append(span);
                //主菜单
                var li= $("<li class=\"active\"></li>");
               li.append(
                     menuHead
                  ).appendTo(ul2);
                //呈现子菜单项
                self._renderItem(li, item,index);
            });
            ul2.appendTo(ul);
        },

        _renderItem: function (ul, item,index) {
            var self = this;
            var aLink = "";
            //第一层Div
            var firstDiv = $(" <ul class=\"side-menu\" style=\"display: block;\"><ul>");
            if(index!=0){
            	firstDiv.hide();
            }
            firstDiv.css({
    			"width":190+17,
    			"maxHeight":$(".side-bar").height()-30-40,
    			"overflowY":"scroll",
    			"overflowX":"hidden"
    		});
            //第二层Div
            var secondDiv = $(" <ul class=\"sj-menu\">");

            //循环子菜单项
            $.each(item.Items, function (index, childItem) {
                aLink = $("<a href=\"javascript:;\"></a>");
            	aLink.attr("href",self.options.rootUrl+childItem.funcaction);
                aLink.click(function(e){
           		e.preventDefault();
           		var side = $(".side-bar").width();
           		var fully = $(".fully").width();
        	    $(".bread .bread-ej").html($(this).parents(".side-menu").prev().find(".side-text").html());
        	    $(".bread .active").html($(this).find(".side-text").html());
        		$("#apply").css("height",$(".area").height()-40);
        		$(this).parents(".side-menu").parent().siblings().find(".side-menu > .active").removeClass("active");
        		$(this).parent().addClass("active").siblings().removeClass("active");
        		
        		//if($(this).data("fully"))
        		if(childItem.Items && childItem.Items.length)
        		{
        			$(this).next(".sj-menu").slideToggle();
        		}else{
        			var url=$(this).attr("href");
        			$("#apply").attr("src",url).ready();
        			$(".fully").hide();
        			if($(".side-bar .side-text").css("display") == "none"){
        				$(".box").css("padding-left",50);
        			}else{
        				$(".box").css("padding-left",side);
        			}
        		}
        		 
        	});
                if (childItem) {
                	 var img = $("<div class=\"nav-icon\"></div>");
                	 img.mouseenter(function(){
                			if($(".side-bar .side-text").css("display") == "none"){
                				var offset = $(this).offset().top;
                				$(".tooltip .tooltip-inner").html($(this).next().html());
                				$(".tooltip").css({
                					top:offset+20-$(".tooltip").height()/2,
                					left:$(this).width()
                				}).addClass("right");
                				$(".tooltip").show();
                			}
                		});
                	 img.mouseleave(function(){
                			$(".tooltip").hide();
                		});
                		if(childItem.Items && childItem.Items.length>0)
                		{
                			 img.append($("<span></span>").addClass("fa fa-angle-right"));
                		}else{
                			 img.append($("<span></span>").addClass("fa fa-info-circle"));
                		}
                     aLink.append(img);
                }
                var span = $("<span class=\"side-text side-text-second\"></span>");
                span.append(childItem.menuname);
                if(childItem.numurl) {
                	span.append("<span class='statistics icon-wait' id='statistics_" + childItem.menuid + "'></span>");
    				$.ajax({
    					url: childItem.numurl,
    					success: function(data, textStatus) {
    						self.setStatisticsText(childItem.menuid, data.num);
    					}
    				});
    			}
                aLink.append(span);
                var itemli = $("<li></li>");
                if (childItem.Items && childItem.Items.length>0) {
                    var thirdDiv = self._renderThirdItem(childItem);
                    itemli.append(aLink).append(thirdDiv).appendTo(firstDiv);
                } else {
                itemli.append(aLink).appendTo(firstDiv);
                }

            });
            return firstDiv.append(secondDiv).appendTo(ul);
        },

        _renderThirdItem: function (item) {
            var self = this;
            var aLink = "";
            var secondDiv = $(" <ul class=\"sj-menu\" style=\"display: block;\"></ul>");

            //循环子菜单项
            $.each(item.Items, function (index, childItem) {
                aLink = $("<a></a>");
                aLink.bind("click",function(e){
    				e.preventDefault();
    				//$(this).parent().addClass("active").siblings().removeClass("active");
    				var url=$(this).attr("href");
    				$("#apply").attr("src",url).ready();
                });
                aLink.attr("href",self.options.rootUrl+childItem.funcaction);
               // <li><a href="<%=request.getContextPath()%>/coframe/taskcenter/followList.jsp"><span class="middot">&middot;</span>三级栏目</a></li>
              var span=  $("<span></span>").addClass("middot").append("&middot;");
              aLink.append(span);
              aLink.append(childItem.menuname);
              if(childItem.numurl) {
              	span.append("<span class='statistics icon-wait' id='statistics_" + childItem.menuid + "'></span>");
  				$.ajax({
  					url: childItem.numurl,
  					success: function(data, textStatus) {
  						self.setStatisticsText(childItem.menuid, data.num);
  					}
  				});
  			}
              var itemli = $("<li></li>");
              itemli.append(aLink).appendTo(secondDiv);
            });
            return secondDiv;
        },

        _resetSelectedItemCss: function () {
            $(".ui-menu-second-select").each(function () {
                $(this).attr("class", "ui-menu-second");
            });
            $(".ui-menu-third-select").each(function () {
                $(this).attr("class", "ui-menu-third");
            });
        },
        setStatisticsText: function(node, text) {
        	//alert(text);
			//var tree = this._getOwnerTree(node);
			//node._statistics_result = text;
			$("#statistics_"+node).removeClass("icon-wait").text(text);
		},
        //绑定导航
        _navigation: function (self, aLink, childItem) {
            if (childItem.url != undefined && typeof self.options.click === "function") {
                aLink.attr("href", "javascript:void(0);");
                aLink.bind("click", childItem, self.options.click);
            }
            else {
                if (childItem.target != undefined) {
                    aLink.attr("target", childItem.target);
                }
                if (childItem.url != undefined) {
                    aLink.attr("href", childItem.url);
                }
            }
        },
        refresh: function () {
            $(this.element).accordion("refresh");
        },
        widget: function () {
            return this.menu.element;
        }
    });
} (jQuery));


window.onscroll = function(){
			var x = document.body.scrollTop;
			$("#apply .fully").css("marginTop",x+"px");
};

window.onload = function () {
		$("#apply").css("height",$(".area").height()-40);
			var height  = $(".side-bar").height() - $(".side-pills").height() - $(".side-toggle").height();
		$(".side-menu").css({
			"width":190+17,
			"maxHeight":$(".side-bar").height()-30-40,
			"overflowY":"scroll",
			"overflowX":"hidden"
		});
};



function getContextPath(){
	var pathName = document.location.pathname;
	var index = pathName.substr(1).indexOf("/");
	var result = pathName.substr(0,index+1);
	
	return result;
}


function isIe(){
	var browser = navigator.appName;
	if(browser=="Microsoft Internet Explorer" && navigator.userAgent.match(/Trident/) &&  navigator.userAgent.match(/MSIE 8.0/i)){
		return true;
	}else{
		return false;
	}
}
