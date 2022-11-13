/*  
 * @弹出提示层 ( 加载动画(load), 提示动画(tip), 成功(success), 错误(error), )  
 * @method  tipBox  
 * @description 默认配置参数   
 * @time    2017-10-16   
 * @param {Number} width -宽度  
 * @param {Number} height -高度         
 * @param {String} str -默认文字  
 * @param {Object} windowDom -载入窗口 默认当前窗口  
 * @param {Number} setTime -定时消失(毫秒) 默认为0 不消失  
 * @param {Boolean} hasMask -是否显示遮罩  
 * @param {Boolean} hasMaskWhite -显示白色遮罩   
 * @param {Boolean} clickDomCancel -点击空白取消  
 * @param {Function} callBack -回调函数 (只在开启定时消失时才生效)  
 * @param {Function} hasBtn -显示按钮  
 * @param {String} type -动画类型 (加载,成功,失败,提示)  
 * @example   
 * new TipBox();   
 * new TipBox({type:'load',setTime:1000,callBack:function(){ alert(..) }});   
*/ 
function TipBox(cfg){  
    this.config = {   
        width          : 250,      
        height         : 170,                 
        str            : '正在处理',       
        windowDom      : window,   
        setTime        : 0,     
        hasMask        : true,    
        hasMaskWhite   : false,   
        clickDomCancel : false,    
        callBack       : null, 
        hasBtn         : false, 
        type           : 'success'  
    };  
    $.extend(this.config,cfg);    
      
    //存在就retrun  
    if(TipBox.prototype.boundingBox) return;  
      
    //初始化  
    this.render(this.config.type); 
    return this;   
};
function LoadingBox(cfg){
	this.config = {
		str:"",
		left:"40%",
		top:"15%",
		hasMask:false,
		windowDom: window
	};
	$.extend(this.config,cfg);
	if(LoadingBox.prototype.boundingBox) return;
	this.renderLoading();
	return this;
}
LoadingBox.prototype.boundingBox = null;

LoadingBox.prototype.renderLoading = function(){
	this.renderUI();
	this.bindUI();
};
LoadingBox.prototype.renderUI = function(){
	
	LoadingBox.prototype.boundingBox = $("<div style='z-index:9999;position: fixed;left: "+ this.config.left +";top: "+ this.config.top +";'>"+ this.config.str +"</div>");  
    LoadingBox.prototype.boundingBox.appendTo(this.config.windowDom.document.body);
	
	//是否显示遮罩  
    if(this.config.hasMask){  
        this._mask = $("<div class='mask'></div>");  
        this._mask.appendTo(this.config.windowDom.document.body);  
    }
};
LoadingBox.prototype.bindUI = function(){
	_this = this;
};
//销毁  
LoadingBox.prototype.destroy = function(){  
    this._mask && this._mask.remove();  
    LoadingBox.prototype.boundingBox && LoadingBox.prototype.boundingBox.remove();   
    LoadingBox.prototype.boundingBox = null;
};





function MakeSureBox(cfg){
	this.config = {
		title      : '模态框 标题',
		str        : '一个精美的主体',
		channel    : '关闭',
		edit       : '保存更改',
		hasMask    : true,
		windowDom  : window,
		ok   :null
	};
	$.extend(this.config, cfg);
	if(MakeSureBox.prototype.boundingBox) return;
	this.renderMakeSure();
	return this;
};

MakeSureBox.prototype.boundingBox = null;

MakeSureBox.prototype.renderMakeSure = function(){
	this.renderUI();
	
	this.bindUI();
};
MakeSureBox.prototype.renderUI = function(){
	
	MakeSureBox.prototype.boundingBox = $("<div class='form-box' style='z-index:1001;position: fixed;left: 28%;top: 15%;'></div>");  
    var tip  ="<div class='form-demo-nei'>";
        tip +="		<div class='modal' style='display:block;position:static;'>";
        tip +="			<div class='modal-dialog'>";
        tip +="				<div class='modal-content'>";
        tip +="					<div class='modal-header'>";
        tip +="						<button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&nbsp;&times;</button>";
    	tip +="							<button type='button' class='close'></button>";
        tip +="							<h4 class='modal-title'>"+ this.config.title + "</h4>";
        tip +="					</div>";
        tip +="					<div class='modal-body'>";
        tip +="						<p>"+ this.config.str + "</p>";
        tip +="					</div>";
        tip +="					<div class='modal-footer'>";
        tip +="						<button type='button' class='btn btn-second' data-dismiss='modal'>"+ this.config.channel + "</button>";
        tip +="						<button type='button' class='btn btn-default'>"+ this.config.edit + "</button>";
        tip +="					</div>";
    	tip +="				</div>";
        tip +="			</div>";
        tip +="		</div>";
        tip +="</div>";
    MakeSureBox.prototype.boundingBox.append(tip);
	MakeSureBox.prototype.boundingBox.appendTo(this.config.windowDom.document.body);
	
	//是否显示遮罩  
    if(this.config.hasMask){  
        this._mask = $("<div class='mask'></div>");  
        this._mask.appendTo(this.config.windowDom.document.body);  
    }
    
};
MakeSureBox.prototype.bindUI = function(){
	_this = this;
	/*var flag = null;
	var countDown = _this.config.setTime/1000;
    flag = setInterval(function(){
    	if(countDown < 1){
			_this.ok();
			window.clearInterval(flag);
		}
    	countDown = countDown - 1;
		$(".form-box .countDown").html(countDown);
    },1000);*/
    
	$(".form-box .btn-second").click(function(){
		_this.close();
	});
	$(".form-box .close").click(function(){
		_this.close();
	});
	$(".form-box .btn-default").click(function(){
		_this.ok();
	});
	
};

MakeSureBox.prototype.close = function(){
	this._mask && this._mask.remove();
	MakeSureBox.prototype.boundingBox && MakeSureBox.prototype.boundingBox.remove();   
    MakeSureBox.prototype.boundingBox = null;
};

MakeSureBox.prototype.ok = function(){
	/*this._mask && this._mask.remove();*/
	typeof this.config.ok === "function" && this.config.ok();
	this.close();
};
//****************************************************************分割线*********************************************************************
function ConfirmBox(cfg){
	this.config = {
		title      : '模态框 标题',
		channel    : '关闭',
		edit       : '保存更改',
		hasMask    : true,
		windowDom  : window,
		ok   :null
	}
	
	$.extend(this.config, cfg);
	if(ConfirmBox.prototype.boundingBox) return;
	this.renderMakeSure();
	return this;
};

ConfirmBox.prototype.boundingBox = null;

ConfirmBox.prototype.renderMakeSure = function(){
	this.renderUI();
	
	this.bindUI();
};
ConfirmBox.prototype.renderUI = function(){
	
	ConfirmBox.prototype.boundingBox = $("<div class='modal ' style='display:block;position: fixed;left: 0%;top: 15%;'></div>");  
    var tip  ="<div class='modal-dialog' style='width:300px;'>";
        tip +="		<div class='modal-content'>";
        tip +="			<div class='modal-header'>";
        tip +="				<h6 class='modal-title modal-header-center'>"+ this.config.title +"</h6>";
        tip +="			</div>";
        tip +="			<div class='modal-footer' style='text-align:center;'>";
    	tip +="				<button type='button' class='btn btn-second' data-dismiss='modal'>"+ this.config.channel +"</button>";
        tip +="				<button type='button' class='btn btn-default'>"+ this.config.edit +"</button>";
        tip +="			</div>";
        tip +="		</div>";
        tip +="</div>";
        ConfirmBox.prototype.boundingBox.append(tip);
        ConfirmBox.prototype.boundingBox.appendTo(this.config.windowDom.document.body);
	
	//是否显示遮罩  
    if(this.config.hasMask){  
        this._mask = $("<div class='mask'></div>");  
        this._mask.appendTo(this.config.windowDom.document.body);  
    } 
};
ConfirmBox.prototype.bindUI = function(){
	_this = this;
	
	/*var flag = null;
	var countDown = _this.config.setTime/1000;
    flag = setInterval(function(){
    	if(countDown < 1){
			_this.ok();
			window.clearInterval(flag);
		}
    	countDown = countDown - 1;
		$(".modal .countDown").html(countDown);
    },1000);*/
    $(".modal .btn-second").click(function(){
		_this.close();
	});
	$(".modal .btn-default").click(function(){
		_this.ok();
	});
};

ConfirmBox.prototype.close = function(){
	this._mask && this._mask.remove();
	ConfirmBox.prototype.boundingBox && ConfirmBox.prototype.boundingBox.remove();   
	ConfirmBox.prototype.boundingBox = null;
};

ConfirmBox.prototype.ok = function(){
	this._mask && this._mask.remove();
	typeof this.config.ok === "function" && this.config.ok();
	this.close();
};

//外层box  
TipBox.prototype.boundingBox = null;  

//渲染  
TipBox.prototype.render = function(tipType,container){
	
    this.renderUI(tipType);   
      
    //绑定事件  
    this.bindUI();   
      
    //初始化UI  
    this.syncUI();   
    $(container || this.config.windowDom.document.body).append(TipBox.prototype.boundingBox);     
};  

//渲染UI  
TipBox.prototype.renderUI = function(tipType){   
    TipBox.prototype.boundingBox = $("<div id='animationTipBox'></div>");         
    tipType == 'load'    && this.loadRenderUI();  
    tipType == 'success' && this.successRenderUI();   
    tipType == 'error'   && this.errorRenderUI();  
    tipType == 'tip'     && this.tipRenderUI();  
    TipBox.prototype.boundingBox.appendTo(this.config.windowDom.document.body);  
                  
    //是否显示遮罩  
    if(this.config.hasMask){  
        this.config.hasMaskWhite ? this._mask = $("<div class='mask_white'></div>") : this._mask = $("<div class='mask'></div>");  
        this._mask.appendTo(this.config.windowDom.document.body);  
    }     
    // 是否显示按钮
    if(this.config.hasBtn){
        this.config.height = 206;
        $('#animationTipBox').css("margin-top","103px");
        switch(this.config.type){
            case 'success':$(".success").after("<button class='okoButton'>ok</button>");
                break;
            case 'error':$(".lose").after("<button class='okoButton redOkoButton'>ok</button>");
                break;
            case 'tip':$(".tip").after("<button class='okoButton'>ok</button>");
                break;
            default: break;
        }
        $('button.okoButton').on('click',function(){_this.close();});
    }
    //定时消失  
    _this = this;  
    !this.config.setTime && typeof this.config.callBack === "function" && (this.config.setTime = 1);      
    this.config.setTime && setTimeout( function(){ _this.close(); }, _this.config.setTime );
    
};
  
TipBox.prototype.bindUI = function(){  
    _this = this;             
      
    //点击空白立即取消  
    this.config.clickDomCancel && this._mask && this._mask.click(function(){_this.close();});                        
};  
TipBox.prototype.syncUI = function(){             
    TipBox.prototype.boundingBox.css({  
        width       : this.config.width+'px',  
        height      : this.config.height+'px',  
        marginLeft  : "-"+(this.config.width/2)+'px',  
        marginTop   : "-"+(this.config.height/2)+'px'  
    });   
};  
  
//提示效果UI  
TipBox.prototype.tipRenderUI = function(){  
    var tip = "<div class='tip'>";
        tip +="     <div class='icon'><img src='"+ _CONTEXT_PATH + "/css/themes/default/images/sub/tip.png' style='width:100px;height:90px;'/></div>";  
        tip +="     <div class='dec_txt'>"+this.config.str+ "<br/>" + this.config.setTime/1000 + " 秒后跳转..." +"</div>";  
        tip += "</div>";  
    TipBox.prototype.boundingBox.append(tip);
    var countDown = this.config.setTime/1000;
    var str = this.config.str;
    var flag = setInterval(function(){
    	countDown = countDown - 1;
		$("#animationTipBox .dec_txt").html(str + "<br/>" + countDown + " 秒后跳转...");
		if(countDown <= 1){
			window.clearInterval(flag);
		}
    },1000);
};  http://127.0.0.1:8080/default/coframe/demo/css/themes/default/images/sub/sub-succ-26.png 404 (Not Found)
  
//成功效果UI  
TipBox.prototype.successRenderUI = function(){
    var suc = "<div class='success'>";
        suc +=" <div class='icon'><img src='"+ _CONTEXT_PATH + "/css/themes/default/images/sub/success.png' style='width:100px;height:90px;'/></div>";  
        suc +=" <div class='dec_txt'>"+this.config.str+ "<br/>" + this.config.setTime/1000 + " 秒后跳转..." +"</div>";  
        suc += "</div>";  
        TipBox.prototype.boundingBox.append(suc);
    var countDown = this.config.setTime/1000;
    var str = this.config.str;
    var flag = setInterval(function(){
    	countDown = countDown - 1;
		$("#animationTipBox .dec_txt").html(str + "<br/>" + countDown + " 秒后跳转...");
		if(countDown <= 1){
			window.clearInterval(flag);
		}
    },1000);
};  
  
//错误效果UI  
TipBox.prototype.errorRenderUI = function(){  
    var err  = "<div class='lose'>";  
        err +=  "   <div class='icon'><img src='"+ _CONTEXT_PATH + "/css/themes/default/images/sub/error.png' style='width:100px;height:90px;'/></div>";  
        err +=  "<div class='dec_txt'>"+this.config.str+ "<br/>" + this.config.setTime/1000 + " 秒后跳转..." +"</div>";  
        err +=  "</div>";  
    TipBox.prototype.boundingBox.append(err);
    var countDown = this.config.setTime/1000;
    var str = this.config.str;
    var flag = setInterval(function(){
    	countDown = countDown - 1;
		$("#animationTipBox .dec_txt").html(str + "<br/>" + countDown + " 秒后跳转...");
		if(countDown <= 1){
			window.clearInterval(flag);
		}
    },1000);
};  
  
//加载动画load UI  
TipBox.prototype.loadRenderUI = function(){  
    var load = "<div class='load'>";  
        load += "<div class='icon'><img src='"+ _CONTEXT_PATH + "/css/themes/default/images/sub/loading.png' style='width:100px;height:90px;'/></div>";  
    load += "</div>";  
    load += "<div class='dec_txt'>"+this.config.str+ "<br/>" + this.config.setTime/1000 + " 秒后跳转..." +"</div>";
    TipBox.prototype.boundingBox.append(load);
    var countDown = this.config.setTime/1000;
    var str = this.config.str;
    var flag = setInterval(function(){
    	countDown = countDown - 1;
		$("#animationTipBox .dec_txt").html(str + "<br/>" + countDown + " 秒后跳转...");
		if(countDown <= 1){
			window.clearInterval(flag);
		}
    },1000);
};  
  
//关闭  
TipBox.prototype.close = function(){      
    TipBox.prototype.destroy();  
    this.destroy();  
    this.config.setTime && typeof this.config.callBack === "function" && this.config.callBack();                  
};  
  
//销毁  
TipBox.prototype.destroy = function(){  
    this._mask && this._mask.remove();  
    TipBox.prototype.boundingBox && TipBox.prototype.boundingBox.remove();   
    TipBox.prototype.boundingBox = null;  
};  