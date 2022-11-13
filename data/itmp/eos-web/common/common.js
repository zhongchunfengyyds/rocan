/**
 * 公共方法js文件
 * 
 * @author 肖斌
 * @date 2015-04-23 - 下午15:11:31
 */

/**
 * 是否为空验证
 * 
 * @author 肖斌
 * @argument e：事件对象
 * @argument tiptext：提示内容
 * <pre>
 * 	<code>
 * 		<input class="nui-textbox" name="test" onvalidation="onCheckEmpty(e,'xxx不能为空')"/>
 * 	</code>
 * </pre>
 */
function onCheckEmpty(e, tiptext) {
	if (e.isValid) {
		if (e.value == "") {
			e.errorText = tiptext;
			e.isValid = false;
		}
	}
}
/**
 * 字符长度验证
 * 
 * @author 肖斌
 * @argument e：事件对象
 * @argument len：允许的字符长度
 * @argument tiptext：提示内容
 * <pre>
 * 	<code>
 * 		<input class="nui-textbox" name="test" onvalidation="onCheckCharLength(e,64,'只能输入64个字符或者32个汉字')"/>
 * 	</code>
 * </pre>
 */
function onCheckCharLength(e, len, tiptext) {
	if (e.isValid) {
		if (getCharLength(e.value) > len) {
			e.errorText = tiptext;
			e.isValid = false;
		}
	}
}
/**
 * 字符长度和是否为空联合验证
 * 
 * @author 肖斌
 * @argument e：事件对象
 * @argument len：允许的字符长度
 * @argument tiptext1：长度限制提示内容
 * @argument tiptext2：空提示内容
 * <pre>
 * 	<code>
 * 		<input class="nui-textbox" name="test" onvalidation="onCheckCharLengthAndIsEmpty(e,64,'只能输入64个字符或者32个汉字','xxx不能为空')"/>
 * 	</code>
 * </pre>
 */
function onCheckCharLengthAndIsEmpty(e, len, tiptext1, tiptext2) {
	if (e.isValid) {
		if (getCharLength(e.value) > len) {
			e.errorText = tiptext1;
			e.isValid = false;
		}
		if (e.value == "") {
			e.errorText = tiptext2;
			e.isValid = false;
		}
	}
}
/**
 * 计算字符串长度（中文占两个字符）
 * 
 * @author 肖斌
 * @argument str：待计算的字符串
 * <pre>
 * 	<code>
 * 		getCharLength("aaa123中文")
 * 	</code>
 * </pre>
 */
function getCharLength(str) {
	var realLength = 0, len = str.length, charCode = -1;
	for (var i = 0; i < len; i++) {
		charCode = str.charCodeAt(i);
		if (charCode > 0 && charCode <= 128)
			realLength += 1;
		else
			realLength += 2;
	}
	return realLength;
}
/**
 * 时间段选择验证
 * 
 * @author 肖斌
 * @argument e：事件对象
 * @argument datename：开始时间的时间控件名称
 * <pre>
 * 	<code>
 * 		<input class="nui-datepicker" name="date1" allowInput="false"/> 
 * 	    至
 * 	    <input class="nui-datepicker" name="date2" allowInput="false" ondrawdate="onDrawDate(e,'date1')"/> 
 * 	</code>
 * </pre>
 */
function onDrawDate(e, datename) {
	var date = e.date;
	var date1 = nui.getbyName(datename).getValue();
	var d = new Date(Date.parse(date1.replace(/-/g, "/")));

	if (date.getTime() < d.getTime() || date1 == '') {
		e.allowSelect = false;
	}
}

/**
 * 在表格中将业务字典dictid翻译成dictname显示
 * 
 * @author 肖斌
 * @argument e：事件对象
 * <pre>
 * 	<code>
 * 		<div field="test" headerAlign="center" allowSort="true" renderer="renderDict" name="业务字典的dicttypeid" >
 * 	    	xxx
 * 	    </div>
 * 	</code>
 * </pre>
 */
function renderDict(e) {
	return nui.getDictText(e.column.name, eval('e.row.' + e.column.field));
}

/**
 * 判断当前对象是否是数组对象
 * 
 * @author 肖斌
 * @argument o：待判断的对象
 * <pre>
 * 	<code>
 * 		isArray(['1','2','3'])
 * 	</code>
 * </pre>
 */
function isArray(o) {
	return (typeof o == 'object') && o.constructor == Array;
}

/**
 * 判断当前对象是否是字符串对象
 * 
 * @author 肖斌
 * @argument o：待判断的对象
 * <pre>
 * 	<code>
 * 		isString('abc')
 * 	</code>
 * </pre>
 */
function isString(o) {
	return (typeof o == 'string') && o.constructor == String;
}

/**
 * 加载业务字典数据
 * 
 * @author 肖斌
 * @argument dicttypeid：待加载的业务字典dicttypeid
 * @argument fieldName：用于显示业务字典的下拉框名称
 * <pre>
 * 	<code>
 * 		 <input name="test" class="nui-combobox" 
 *        	  		textField="dictname" valueField="dictid" 
 * 				    onclick="onLoadData('xxx','xxx')"
 * 				    onvaluechanged="onChangedSubValue('xxx','xxx','xxx')" />
 * 	</code>
 * </pre>
 */
function onLoadData(dicttypeid, fieldName) {
	var url = "com.safety.pub.dict.dictbiz.queryDictByDicttypeid.biz.ext?entity/dicttypeid="
			+ dicttypeid;
	nui.getbyName(fieldName).setUrl(url);
}

/**
 * 当业务字典项改变时调用的事件
 * 
 * @author 肖斌
 * @argument dicttypeid：父节点的业务字典dicttypeid
 * @argument fieldName：父节点业务字典下拉框名称
 * @argument subfieldName：待显示业务字典数据的子节点下拉框名称
 * @argument refFieldName：需要置空的下拉框名称（可以是字符串或者数组）
 * <pre>
 * 	<code>
 * 		 <input name="test" class="nui-combobox" 
 *        	  		textField="dictname" valueField="dictid" 
 * 				    onvaluechanged="onChangedSubValue('xxx','xxx','xxx','xxx')" />
 * 	</code>
 * </pre>
 */
function onChangedSubValue(dicttypeid, fieldName, subfieldName, refFieldName) {
	var dictid = nui.getbyName(fieldName).getValue();
	var url = "com.safety.pub.dict.dictbiz.queryDictByParentid.biz.ext?entity/parentid="
			+ dicttypeid + dictid;
	clearDictData(refFieldName);
	nui.getbyName(subfieldName).setUrl(url);
}

/**
 * 清空业务字典下拉框
 * 
 * @author 肖斌
 * @argument refFieldName：需要置空的下拉框名称（可以是字符串或者数组）
 * <pre>
 * 	<code>
 * 		 clearDictData(['fieldName1','fieldName2','fieldName3']) 或者 clearDictData('fieldName')
 * 	</code>
 * </pre>
 */
function clearDictData(refFieldName) {
	if (isString(refFieldName)) {
		nui.getbyName(refFieldName).setValue("");
	} else if (isArray(refFieldName)) {
		for (var i = 0, j = refFieldName.length; i < j; i++) {
			nui.getbyName(refFieldName[i]).setValue("");
		}
	}
}

/**
 * 业务字典数据绑定
 * 
 * @author 肖斌
 * @argument jsonArray：需要进行绑定数据的业务字典json数组
 * <pre>
 * 	<code>
 *      // jsonArray 的第一行数据对象用于 onLoadData() 方法调用时的参数，第二行数据对象用于 onChangedSubValue() 方法调用时的参数（当多于两级联通时，第二行的数据可多行）
 *      // 方法 onLoadData() 和 方法 onChangedSubValue() 详见对应方法说明
 * 		var jsonArray = [{dicttypeid:"xxx",fieldName:"xxx"},
 *				  		 {dicttypeid:"xxx",fieldName:"xxx",subfieldName:"xxx"},
 *						 ...];
 *		dictDataBinding(jsonArray);
 * 	</code>
 * </pre>
 */
function dictDataBinding(jsonArray) {
	var tempArr = [];
	// 获得所有需要数据绑定业务字典的dictid
	for (var i = 0, j = jsonArray.length; i < j; i++) {
		if (i == 0) {
			tempArr.push(nui.getbyName(jsonArray[i].fieldName).getValue());
		} else {
			tempArr.push(nui.getbyName(jsonArray[i].subfieldName).getValue());
		}
	}
	for (var i = 0, j = jsonArray.length; i < j; i++) {
		if (i == 0) {
			onLoadData(jsonArray[i].dicttypeid, jsonArray[i].fieldName);
			nui.getbyName(jsonArray[i].fieldName).setValue(tempArr[i]);
		} else {
			onChangedSubValue(jsonArray[i].dicttypeid, jsonArray[i].fieldName, jsonArray[i].subfieldName);
			nui.getbyName(jsonArray[i].subfieldName).setValue(tempArr[i]);
		}
	}
}

/**
 * 验证是否英文
 * @author chy
 * @argument e：事件对象
 * @argument tiptext：提示信息：例如 电话号码不符合规范
 * <pre>
 * 	<code>
 *      <input class="nui-textbox"  name="test" onvalidation="onEnglishValidation(e,'xx必须是英文')"/>
 * 	</code>
 * </pre>
 */
function onEnglishValidation(e,tiptext){
	if (e.isValid) {
		if (e.value != "") {
			var  re = /^[A-Za-z][A-Za-z\s]*[A-Za-z]$/;
			if(!re.test(e.value)){
				e.errorText = tiptext;
				e.isValid = false;
			}
		}
	}
}

/**
 * 验证电话号码
 * 验证规则：区号+号码， 区号以0开头，3位或4位 号码由7位或8位数字组成
 * 
 * @author 江骥
 * @argument e：事件对象
 * @argument tiptext：提示信息：例如 电话号码不符合规范
 * <pre>
 * 	<code>
 *      <input class="nui-textbox"  name="test" onvalidation="onCheckPhone(e,'联系方式必须是电话号码的格式，例如：021-11001100')"/>
 * 	</code>
 * </pre>
 */
function onCheckPhone(e,tiptext){
	if (e.isValid) {
		var  re = /^0\d{2,3}-?\d{7,8}$/;
		if(!re.test(e.value)){
			e.errorText = tiptext;
			e.isValid = false;
		}
	}
}

/**
 * 验证手机号码
 * 验证规则：11位数字，以1开头
 * 
 * @author 江骥
 * @argument e：事件对象
 * @argument tiptext：提示信息：例如 手机号码不符合规范
 * <pre>
 * 	<code>
 *      <input class="nui-textbox"  name="test" onvalidation="onCheckMobile(e,'手机号码必须是手机号码的格式，例如：13512345678')"/>
 * 	</code>
 * </pre>
 */
function onCheckMobile(e,tiptext){
	if (e.isValid) {
 		var  re = /^1\d{10}$/;
		if(!re.test(e.value)){
			e.errorText = tiptext;
	    	e.isValid = false;
		}
	}
}

//验证是否数字类型
function numberRange(v) {
	var re = new RegExp("^(([1-9]+)|([0-9]+\.[0-9]{1,2}))$");
    if (re.test(v)) return true;
    return false;
}

/**
 * 验证手机号码
 * 验证规则：英文数字转中文数字
 * 
 * @author 江骥
 * @argument num:英文数字串
 * <pre>
 * 	<code>
 *      var chinese = convertToChinese(number);
 *      alert(chinese);
 * 	</code>
 * </pre>
 */
function convertToChinese(num){
	var N = [
	         "零", "一", "二", "三", "四", "五", "六", "七", "八", "九"
	     ];
    var str = num.toString();
    var len = num.toString().length;
    var C_Num = [];
    for(var i = 0; i < len; i++){
        C_Num.push(N[str.charAt(i)]);
    }
    return C_Num.join('');
}

/**
 * 增加遮罩效果
 * 
 * @author 肖斌
 * @argument text:遮罩层显示提示信息
 * <pre>
 * 	<code>
 *      mask("加载中...");
 * 	</code>
 * </pre>
 */
function mask(text) {
    mini.mask({
        el: document.body,
        cls: 'mini-mask-loading',
        html: text
    });
}

/**
 * 隐藏遮罩效果
 * 
 * @author 肖斌
 * <pre>
 * 	<code>
 *      unmask();
 * 	</code>
 * </pre>
 */
function unmask(){
	mini.unmask(document.body);
}

/**
 * 自定义tip提示
 * 
 * @author 肖斌
 * @argument x:left, center, right
 * @argument y:top, center, bottom
 * @argument state:default, success, info, warning, danger
 * @argument content:tip显示的文本内容
 * @argument timeout:tip显示的时长
 * <pre>
 * 	<code>
 *      showTips("center", "center", "success", "<b>成功</b> <br/>数据保存成功", 3000);
 * 	</code>
 * </pre>
 */
function showTips(x, y, state, content, timeout) {
    mini.showTips({
        content: content,
        state: (state == "default") ? "" : state,
        x: x,
        y: y,
        timeout: (timeout == null || timeout == "") ? 3000 : timeout
    });
}

/**
 * 获得消息图标样式
 * 
 * @author 肖斌
 * @argument style:info, warning, question, error, download
 * <pre>
 * 	<code>
 *      getMsgboxIconCls("warning");
 * 	</code>
 * </pre>
 */
function getMsgboxIconCls(style){
	var s = "";
	if(style == null || style == ""){
		s = "mini-messagebox-warning";
	} else if(style == "info"){
		s = "mini-messagebox-info";
	} else if(style == "warning"){
		s = "mini-messagebox-warning";
	} else if(style == "question"){
		s = "mini-messagebox-question";
	} else if(style == "error"){
		s = "mini-messagebox-error";
	} else if(style == "download"){
		s = "download";
	}
	return s;
}

/**
 * 自定义消息提示
 * 
 * @author 肖斌
 * @argument x:left, center, right
 * @argument y:top, middle, bottom
 * @argument width:自定义消息提示的宽度
 * @argument title:自定义消息提示的title
 * @argument iconCls:自定义消息提示的图标样式
 * @argument message:自定义消息提示的消息内容
 * @argument timeout:自定义消息提示的显示时长
 * <pre>
 * 	<code>
 *      notify("center", "bottom", 250, "提示", "warning", "记录已删除", 3000);
 * 	</code>
 * </pre>
 */
function notify(x, y, width, title, iconCls, message, timeout) {
    mini.showMessageBox({
        showModal: false,
        width: (width == null || width == "") ? 250 : width,
        title: (title == null || title == "") ? "提示" : title,
        iconCls: getMsgboxIconCls(iconCls),
        message: message,
        timeout: (timeout == null || timeout == "") ? 3000 : timeout,
        x: x,
        y: y
    });
}

/**
 * 
 * 
 * @author 江骥 
 * @argument obj 格式化对象，将对象中日期属性转成字符串属性。可以使数据在传到后台的时候不会出错
 * <pre>
 * 	<code>
 *      formatDate4Obj(obj);
 * 	</code>
 * </pre>
 */
function formatDate4Obj(obj){
	for(var item in obj){
	   if(obj[item] instanceof Date){
	   	  obj[item] =nui.formatDate ( obj[item] , "yyyy-MM-dd H:mm:ss" );
	   }
	 }
}
/**
 * 校验错误提示
 * @param e
 */
function updateError(e) {
    var id = e.sender.name + "_error";
    var el = document.getElementById(id);
    if (el) {
        el.innerHTML = e.errorText;
    }
}

/**
 * 组装关键字查询的内容
 * @param e
 */
function getKeyWordQuery(data){
	
	var matchFied = data.matchFied;
	var matchFiedEQ = data.matchFiedEQ;
	var matchFiedNUMBER = data.matchFiedNUMBER;
	var matchFiedFM = data.matchFiedFM;
	var matchFiedFY=data.matchFiedFY;
	var matchFiedFZ=data.matchFiedFZ;
	var wordVal = data.wordVal;
	var entity  = data.entity;
	var entityName = data.entityName;
	var sfdel = data.sfdel;
	var sdel = data.sdel;
	var jdInfo = data.jdInfo;
	var jzInfo = data.jzInfo;
	var dicFied = data.dicFied;
	var fiedLength = 0;
	var andLength  = 0;
	entityJ = "'" + entityName+"/_entity" +  "':'"+entity+"'";
	
	var queryJ = "";
	
	if(sdel){
		fiedLength++;
		andLength++;
		queryJ = queryJ + ",'" + entityName+"/_and[" +  andLength +"]/_expr[" + fiedLength + "]/isdel':'0'";
		queryJ = queryJ + ",'" + entityName+"/_and[" +  andLength +"]/_expr[" + fiedLength + "]/_op':'like'";
		queryJ = queryJ + ",'" + entityName+"/_and[" +  andLength +"]/_expr[" + fiedLength + "]/_likeRule':'end'";
	}
	
	if(sfdel){
		fiedLength++;
		andLength++;
		queryJ = queryJ + ",'" + entityName+"/_and[" +  andLength +"]/_expr[" + fiedLength + "]/isdelete':'0'";
		queryJ = queryJ + ",'" + entityName+"/_and[" +  andLength +"]/_expr[" + fiedLength + "]/_op':'like'";
		queryJ = queryJ + ",'" + entityName+"/_and[" +  andLength +"]/_expr[" + fiedLength + "]/_likeRule':'end'";
		
	}
	
	if(jdInfo != null){
		fiedLength++;
		andLength++;
		var jd = jdInfo.split("@");
		queryJ = queryJ + ",'" + entityName+"/_and[" +  andLength +"]/_expr[" + fiedLength + "]/" + jd[0] + "':'" + jd[1] +  "'";
		queryJ = queryJ + ",'" + entityName+"/_and[" +  andLength +"]/_expr[" + fiedLength + "]/_op':'in'";
		
	}
	
	if(jzInfo != null){
		fiedLength++;
		andLength++;
		var jz = jzInfo.split("@");
		queryJ = queryJ + ",'" + entityName+"/_and[" +  andLength +"]/_expr[" + fiedLength + "]/" + jz[0] + "':'" + jz[1] +  "'";
		queryJ = queryJ + ",'" + entityName+"/_and[" +  andLength +"]/_expr[" + fiedLength + "]/_op':'in'";
		
	}

	//定义的附加条件
	if(matchFiedFM != null){
		fiedLength++;
		andLength++;
		var fieds = matchFiedFM.split(",");
		queryJ = queryJ + ",'" + entityName+"/_and[" +  andLength +"]/_expr[" + fiedLength + "]/" + fieds[0] + "':'" + fieds[1] +  "'";
		queryJ = queryJ + ",'" + entityName+"/_and[" +  andLength +"]/_expr[" + fiedLength + "]/_op':'in'";
	}
	//定义的附加条件
	if(matchFiedFY != null){
		fiedLength++;
		andLength++;
		var fieds = matchFiedFY.split(",");
		queryJ = queryJ + ",'" + entityName+"/_and[" +  andLength +"]/_expr[" + fiedLength + "]/" + fieds[0] + "':'" + fieds[1] +  "'";
		queryJ = queryJ + ",'" + entityName+"/_and[" +  andLength +"]/_expr[" + fiedLength + "]/_op':'in'";
	}
	//定义的附加条件
	if(matchFiedFZ != null){
		fiedLength++;
		andLength++;
		var fieds = matchFiedFZ.split(",");
		queryJ = queryJ + ",'" + entityName+"/_and[" +  andLength +"]/_expr[" + fiedLength + "]/" + fieds[0] + "':'" + fieds[1] +  "'";
		queryJ = queryJ + ",'" + entityName+"/_and[" +  andLength +"]/_expr[" + fiedLength + "]/_op':'in'";
	}

	andLength +=1;
	fiedLength = 0;
	// like 拼接的关键字
	if(matchFied != null){
		var fieds = matchFied.split(",");
		for(var i = 0 ; i < fieds.length ; i++){
			queryJ = queryJ + ",'" + entityName+"/_and[" +  andLength +"]/_or[0]/_expr["+ (fiedLength+1) +"]/"+ fieds[i] +  "':'"+wordVal+"'";
			queryJ = queryJ + ",'" + entityName+"/_and[" +  andLength +"]/_or[0]/_expr["+ (fiedLength+1) +"]/_op':'like'";
			queryJ = queryJ + ",'" + entityName+"/_and[" +  andLength +"]/_or[0]/_expr["+ (fiedLength+1) +"]/_likeRule':'all'";
			fiedLength++;
		}
		
	}
	
	// == 拼接的关键字Int
	if(matchFiedNUMBER != null && wordVal != null && wordVal != "" && !isNaN(wordVal)){
		var fieds = matchFiedNUMBER.split(",");
		for(var i = 0 ; i < fieds.length ; i++){
			queryJ = queryJ + ",'" + entityName+"/_and[" +  andLength +"]/_or[0]/_expr["+ (fiedLength+1) +"]/"+ fieds[i] +  "':'"+wordVal+"'";
			queryJ = queryJ + ",'" + entityName+"/_and[" +  andLength +"]/_or[0]/_expr["+ (fiedLength+1) +"]/_op':'='";
			fiedLength++;
		}
	}
	
	 
	// == 拼接的关键字
	if(matchFiedEQ != null){
		var fieds = matchFiedEQ.split(",");
		for(var i = 0 ; i < fieds.length ; i++){
			queryJ = queryJ + ",'" + entityName+"/_and[" +  andLength +"]/_or[0]/_expr["+ (fiedLength+1) +"]/"+ fieds[i] +  "':'"+wordVal+"'";
			queryJ = queryJ + ",'" + entityName+"/_and[" +  andLength +"]/_or[0]/_expr["+ (fiedLength+1) +"]/_op':'='";
			fiedLength++;
		}
	}
	
	
	//数据字典字段
	if(dicFied != null){
		var fieds = dicFied.split(",");
		for(var i = 0 ; i < fieds.length ; i++){
			
			var dicF = fieds[i].split("@")[0];
			var dicval = "";
			var json = "{TypeId:'"+fieds[i].split("@")[1]+"',keyWordVal:'" + wordVal + "'}";
			  
			nui.ajax({
                url: "com.cgn.itmp.basecommon.DictionaryOperation.fuzzyMatchingDictionary.biz.ext",
                type: 'POST',
                async: false,
                data:json,
                success: function (data) {
                	
                	 dicval  = data.dicId;
                }
            });	
			
			queryJ = queryJ + ",'" + entityName+"/_and[" +  andLength +"]/_or[0]/_expr["+ (fiedLength+1) +"]/"+ dicF +  "':'"+dicval+"'";
			queryJ = queryJ + ",'" + entityName+"/_and[" +  andLength +"]/_or[0]/_expr["+ (fiedLength+1) +"]/_op':'in'";
			fiedLength++;
		}
		
	}
	
	return "{"+entityJ+queryJ+"}";
}
//获取全局的cookie信息
function getCookie(sName) {
    var aCookie = document.cookie.split("; ");
    var lastMatch = null;
    for (var i = 0; i < aCookie.length; i++) {
        var aCrumb = aCookie[i].split("=");
        if (sName == aCrumb[0]) {
            lastMatch = aCrumb;
        }
    }
    if (lastMatch) {
        var v = lastMatch[1];
        if (v === undefined) return v;
        return unescape(v);
    }
    return null;
}
//人员下拉框格式拼接
function onchangePerson(e){
    var personList = e.selecteds;
    var value = "";
    for(var i=0;i<personList.length;i++){
       if(value == ""){
       	value += "[" + personList[i].empid +"]"+personList[i].empname;
       }else{
       	value += ",[" + personList[i].empid +"]"+personList[i].empname;
       }
    }
    e.sender.setValue(value);
	e.sender.setText(value);
	
}
//轮次下拉框的清空数据事件
function onCloseClick(e) {
    var obj = e.sender;
    obj.setText("");
    obj.setValue("");
}

/**
 * 权限控制按钮显示
 * roleCodeList 用户角色代码列表用,分割
 * modelFlag  模块编码 0.常用链接 1 大纲模块 2 资质与授权管理 3 大修管理 4容器水压试验管理 5群厂技术管理
 * 					   6.年度计划详情超链接弹窗
 */
function accessControlButton(roleCodeList,modelFlag) {
	 roleCodeList = ","+roleCodeList+",";
	 $("div[name='ITMP_btn']").hide();
	 
	 if(roleCodeList.length > 2) { //是ITMP系统的使用者，非游客
		 if (roleCodeList.indexOf(",ITMP_CJGLY") >= 0) {
			 $("div[name='ITMP_btn']").show();
		 } else {
			 if (modelFlag == 0) {
				 if (roleCodeList.indexOf(",ITMP_JDGLY") >= 0 || roleCodeList.indexOf(",ITMP_SYZXGLY,") >= 0 || roleCodeList.indexOf(",ITMP_PGZXGLY,") >= 0) {//是基地管理员，水压专项管理员，PG专项管理员
					 $("div[name='ITMP_btn']").show();
					 if (nui.getbyName("ITMP_btnRec") != undefined) {
						 nui.getbyName("ITMP_btnRec").hide();
					 }
					 if (nui.getbyName("ITMP_btnDel") != undefined) {
						 nui.getbyName("ITMP_btnDel").hide();
					 }
				 }
			 } else if (modelFlag == 1) {
				 $("div[name='ITMP_btn']").show();
				 //不能批量新增、与批量导入附件
				 if (nui.getbyName("ITMP_btnAddBatch") != undefined) {
					 nui.getbyName("ITMP_btnAddBatch").hide();
				 }
				 if (nui.getbyName("ITMP_btnAddAttachBatch") != undefined) {
					 nui.getbyName("ITMP_btnAddAttachBatch").hide();
				 }
				 if (nui.getbyName("ITMP_btnRec") != undefined) {
					 nui.getbyName("ITMP_btnRec").hide();
				 }
				 if (roleCodeList.indexOf(",ITMP_JDGLY") < 0) {//普通人员
					 $("#addallbut").hide();
					 $("#effect").hide();
					 if (nui.getbyName("ITMP_btnAdd") != undefined) {
						 nui.getbyName("ITMP_btnAdd").hide();
					 }
					 if (nui.getbyName("ITMP_btnAddOne") != undefined) {
						 nui.getbyName("ITMP_btnAddOne").hide();
					 }
					 if (nui.getbyName("ITMP_btnEdit") != undefined) {
						 nui.getbyName("ITMP_btnEdit").hide();
					 }
					 if (nui.getbyName("ITMP_btnExp") != undefined) {
						 nui.getbyName("ITMP_btnExp").hide();
					 }
					 if (nui.getbyName("ITMP_btnCancel") != undefined) {
						 nui.getbyName("ITMP_btnCancel").hide();
					 }
					 if (nui.getbyName("ITMP_btnRest") != undefined) {
						 nui.getbyName("ITMP_btnRest").hide();
					 }
					 if (nui.getbyName("ITMP_btnDel") != undefined) {
						 nui.getbyName("ITMP_btnDel").hide();
					 }
					 if (nui.getbyName("ITMP_btnPlan") != undefined) {
						 nui.getbyName("ITMP_btnPlan").hide();
					 }
					 if (nui.getbyName("ITMP_btnSync") != undefined) {
						 nui.getbyName("ITMP_btnSync").hide();
					 }
					 if (nui.getbyName("ITMP_btnUp") != undefined) {
						 nui.getbyName("ITMP_btnUp").hide();
					 }
					 if (nui.getbyName("TIMP_btnMakePlan") != undefined) {
						 nui.getbyName("TIMP_btnMakePlan").hide();
					 }


				 } 
			 } else if (modelFlag == 2 || modelFlag == 3) {
				 $("div[name='ITMP_btn']").show();
				 //不能批量新增、与批量导入附件
				 if (nui.getbyName("ITMP_btnAddBatch") != undefined) {
					 nui.getbyName("ITMP_btnAddBatch").hide();
				 }
				 if (nui.getbyName("ITMP_btnAddAttachBatch") != undefined) {
					 nui.getbyName("ITMP_btnAddAttachBatch").hide();
				 }
				 if (roleCodeList.indexOf(",ITMP_JDGLY") < 0 && roleCodeList.indexOf(",ITMP_OVERHAULMGT") < 0) {//普通人员
					 $("#addallbut").hide();
					 if (nui.getbyName("ITMP_btnAdd") != undefined) {
						 nui.getbyName("ITMP_btnAdd").hide();
					 }
					 if (nui.getbyName("ITMP_btnEdit") != undefined) {
						 nui.getbyName("ITMP_btnEdit").hide();
					 }
					 if (nui.getbyName("ITMP_btnExp") != undefined) {
						 nui.getbyName("ITMP_btnExp").hide();
					 }
					 if (nui.getbyName("ITMP_btnCancel") != undefined) {
						 nui.getbyName("ITMP_btnCancel").hide();
					 }
					 if (nui.getbyName("ITMP_btnRest") != undefined) {
						 nui.getbyName("ITMP_btnRest").hide();
					 }
					 if (nui.getbyName("ITMP_btnDel") != undefined) {
						 nui.getbyName("ITMP_btnDel").hide();
					 }
					 if (nui.getbyName("ITMP_btnRec") != undefined) {
						 nui.getbyName("ITMP_btnRec").hide();
					 }
					 if (nui.getbyName("ITMP_btnApplyMore") != undefined) {
						 nui.getbyName("ITMP_btnApplyMore").hide();
					 }

				 }

			 } else if (modelFlag == 4) {
				 if (roleCodeList.indexOf(",ITMP_SYZXGLY,") >= 0) {//水压试验管理员有全部权限 
					 $("div[name='ITMP_btn']").show();
					 $("#addallbut").show();
				 }else if (roleCodeList.indexOf(",ITMP_JDGLY") >= 0) {//基地管理员
					 $("div[name='ITMP_btn']").hide();
					 $("#addallbut").hide();
				 }
			 } else if (modelFlag == 5) {
				 if (roleCodeList.indexOf(",ITMP_PGZXGLY,") >= 0) {//PG专项管理员有全部权限
					 $("div[name='ITMP_btn']").show();
					 $("#addallbut").hide();
					 if (nui.getbyName("ITMP_btnAddBatch") != undefined) {
						 nui.getbyName("ITMP_btnAddBatch").hide();
					 }

					 if (nui.getbyName("ITMP_btnDel") != undefined) {
						 nui.getbyName("ITMP_btnDel").hide();
					 }

					 if (nui.getbyName("ITMP_btnRec") != undefined) {
						 nui.getbyName("ITMP_btnRec").hide();
					 }
				 }
			 } else if (modelFlag == 6) {
				 if (roleCodeList.indexOf(",ITMP_JDGLY") < 0) {//普通人员
					 if (nui.getbyName("ITMP_btnAddBatch") != undefined) {
						 nui.getbyName("ITMP_btnAddBatch").hide();
					 }
					 if (nui.getbyName("ITMP_btnExp") != undefined) {
						 nui.getbyName("ITMP_btnExp").hide();
					 }
				 }
			 } else if(modelFlag == 7){//常规岛
				 if (roleCodeList.indexOf(",ITMP_JDGLY") < 0) {//普通人员
					 $("#addallbut").hide();
					 $("#editbtn").hide();
					 $("#delebtn").hide();
					 $("#output").hide();
					 $("#batchin").hide();
				 }
			 }else if(modelFlag == 8){
				 if (roleCodeList.indexOf(",ITMP_JDGLY") < 0) {//普通人员
					 $("#addallbut").hide();
					 $("#editbtn").hide();
					 $("#delebtn").hide();
					 $("#output").hide();
				 }
			 }else if(modelFlag == 9){
				 if (roleCodeList.indexOf(",ITMP_JDGLY") < 0) {//普通人员
					 $("#addallbut").hide();
					 $("#editbtn").hide();
					 $("#delebtn").hide();
					 $("#output").hide();
				 }
			 }else if(modelFlag == 10){
				 if (roleCodeList.indexOf(",ITMP_JDGLY") < 0) {//普通人员
					 $("#addallbut").hide();
					 $("#editbtn").hide();
					 $("#delebtn").hide();
					 $("#doUpload").hide();
					 $("#recycle").hide();
					 $("#output").hide();
				 }
				//焊接申请    WeldingapplyList.jsp
			 }else if(modelFlag == 11){
				 $(".btn-default").hide();
				 if (roleCodeList.indexOf(",ITMP_JDGLY") < 0) {//普通人员
					 $("#menuButton").hide();
				 }
				 if(roleCodeList.indexOf(",ITMP_WELDAPPLY") > 0){//焊接申请员_XX基地
					 $("#addbtn").show();
					 $("#editbtn").show();
					 $("#pcancel").show();
					 $("#output").show();
					 $("#menuButton").hide();
				 }else if(roleCodeList.indexOf(",ITMP_WELDREADY") > 0){//焊接准备工程师_XX基地   具有“焊接申请”子模块的所有权限
//					 $(".btn-default").show();
				 }else if(roleCodeList.indexOf(",ITMP_WELDQC1") > 0){//焊接QC1_XX基地
					 $("#addbtn").hide();
					 $("#editbtn").hide();
					 $("#pcancel").hide();
					 $("#output").hide();
					 $("#menuButton").hide();
				 }else if(roleCodeList.indexOf(",ITMP_WELDOTS") > 0||roleCodeList.indexOf(",ITMP_JDGLY") > 0){//OTS焊接工程师_XX基地  基地管理员_XX基地  具有所有子模块的所有权限（【删除】、【回收站】功能除外）
					 $(".btn-default").show();
					 $("#delebtn").hide();
					 $("#recycle").hide();
				 }else if(roleCodeList.indexOf(",ITMP_CJGLY") > 0){//基地超级管理员_XX基地
					 $(".btn-default").show();
				 }else if(roleCodeList.indexOf(",ITMP_WELDQC2") > 0){
					 $(".btn-default").show();
					 $("#delebtn").hide();
					 $("#recycle").hide();
				 }
				 //焊工管理	WelderList.jsp
			 }else if(modelFlag == 12){
				 $(".btn-default").hide();
				 if(roleCodeList.indexOf(",ITMP_WELDAPPLY") > 0){//焊接申请员_XX基地 
					 
				 }else if(roleCodeList.indexOf(",ITMP_WELDREADY") > 0){//焊接准备工程师_XX基地
				 
				 }else if(roleCodeList.indexOf(",ITMP_WELDQC1") > 0){//焊接QC1_XX基地
				 
				 }else if(roleCodeList.indexOf(",ITMP_WELDOTS") > 0||roleCodeList.indexOf(",ITMP_JDGLY") > 0){//OTS焊接工程师_XX基地  基地管理员_XX基地  具有所有子模块的所有权限（【删除】、【回收站】功能除外）
					 $(".btn-default").show();
					 $("#delebtn").hide();
					 $("#recycle").hide();
				 }else if(roleCodeList.indexOf(",ITMP_CJGLY") > 0){//基地超级管理员_XX基地
					 $(".btn-default").show();
				 }else if(roleCodeList.indexOf(",ITMP_WELDQC2") > 0){
					 $(".btn-default").show();
					 $("#delebtn").hide();
					 $("#recycle").hide();
				 }
				 //焊接工艺卡管理	weldingprocesscardList.jsp
			 }else if(modelFlag == 13){
				 $(".btn-default").hide();
				 if(roleCodeList.indexOf(",ITMP_WELDAPPLY") > 0){//焊接申请员_XX基地
					 
				 }else if(roleCodeList.indexOf(",ITMP_WELDREADY") > 0){//焊接准备工程师_XX基地
				 }else if(roleCodeList.indexOf(",ITMP_WELDQC1") > 0){//焊接QC1_XX基地
				 }else if(roleCodeList.indexOf(",ITMP_WELDOTS") > 0||roleCodeList.indexOf(",ITMP_JDGLY") > 0){//OTS焊接工程师_XX基地  基地管理员_XX基地  具有所有子模块的所有权限（【删除】、【回收站】功能除外）
					 $(".btn-default").show();
					 $("#delebtn").hide();
					 $("#recycle").hide();
				 }else if(roleCodeList.indexOf(",ITMP_CJGLY") > 0){//基地超级管理员_XX基地
					 $(".btn-default").show();
				 }else if(roleCodeList.indexOf(",ITMP_WELDQC2") > 0){
					 $(".btn-default").show();
					 $("#delebtn").hide();
					 $("#recycle").hide();
				 }
				 //焊接工艺评定报告管理	WeldingAssessmentList.jsp
			 }else if(modelFlag == 14){
				 $(".btn-default").hide();
				 if(roleCodeList.indexOf(",ITMP_WELDAPPLY") > 0){//焊接申请员_XX基地
					 
				 }else if(roleCodeList.indexOf(",ITMP_WELDREADY") > 0){//焊接准备工程师_XX基地
				 }else if(roleCodeList.indexOf(",ITMP_WELDQC1") > 0){//焊接QC1_XX基地
				 }else if(roleCodeList.indexOf(",ITMP_WELDOTS") > 0||roleCodeList.indexOf(",ITMP_JDGLY") > 0){//OTS焊接工程师_XX基地  基地管理员_XX基地  具有所有子模块的所有权限（【删除】、【回收站】功能除外）
					 $(".btn-default").show();
					 $("#delebtn").hide();
					 $("#recycle").hide();
				 }else if(roleCodeList.indexOf(",ITMP_CJGLY") > 0){//基地超级管理员_XX基地
					 $(".btn-default").show();
				 }else if(roleCodeList.indexOf(",ITMP_WELDQC2") > 0){
					 $(".btn-default").show();
					 $("#delebtn").hide();
					 $("#recycle").hide();
				 }
				 //焊机管理	MachineList.jsp
			 }else if(modelFlag == 15){
				 $(".btn-default").hide();
				 if(roleCodeList.indexOf(",ITMP_WELDAPPLY") > 0){//焊接申请员_XX基地
					 
				 }else if(roleCodeList.indexOf(",ITMP_WELDREADY") > 0){//焊接准备工程师_XX基地
				 }else if(roleCodeList.indexOf(",ITMP_WELDQC1") > 0){//焊接QC1_XX基地
				 }else if(roleCodeList.indexOf(",ITMP_WELDOTS") > 0||roleCodeList.indexOf(",ITMP_JDGLY") > 0){//OTS焊接工程师_XX基地  基地管理员_XX基地  具有所有子模块的所有权限（【删除】、【回收站】功能除外）
					 $(".btn-default").show();
					 $("#delebtn").hide();
					 $("#recycle").hide();
				 }else if(roleCodeList.indexOf(",ITMP_CJGLY") > 0){//基地超级管理员_XX基地
					 $(".btn-default").show();
				 }else if(roleCodeList.indexOf(",ITMP_WELDQC2") > 0){
					 $(".btn-default").show();
					 $("#delebtn").hide();
					 $("#recycle").hide();
				 }
				 //焊材管理	MaterialList.jsp
			 }else if(modelFlag == 16){
				 $(".btn-default").hide();
				 if(roleCodeList.indexOf(",ITMP_WELDAPPLY") > 0){//焊接申请员_XX基地
					 
				 }else if(roleCodeList.indexOf(",ITMP_WELDREADY") > 0){//焊接准备工程师_XX基地
				 }else if(roleCodeList.indexOf(",ITMP_WELDQC1") > 0){//焊接QC1_XX基地
				 }else if(roleCodeList.indexOf(",ITMP_WELDOTS") > 0||roleCodeList.indexOf(",ITMP_JDGLY") > 0){//OTS焊接工程师_XX基地  基地管理员_XX基地  具有所有子模块的所有权限（【删除】、【回收站】功能除外）
					 $(".btn-default").show();
					 $("#recycle").hide();
					 $("#delebtn").hide();
				 }else if(roleCodeList.indexOf(",ITMP_CJGLY") > 0){//基地超级管理员_XX基地
					 $(".btn-default").show();
				 }else if(roleCodeList.indexOf(",ITMP_WELDQC2") > 0){
					 $(".btn-default").show();
					 $("#delebtn").hide();
					 $("#recycle").hide();
				 }
				 //焊接质量计划管理     	QualityList.jsp
			 }else if(modelFlag == 17){
				 $(".btn-default").hide();
				 if(roleCodeList.indexOf(",ITMP_WELDAPPLY") > 0){//焊接申请员_XX基地
					 
				 }else if(roleCodeList.indexOf(",ITMP_WELDREADY") > 0){//焊接准备工程师_XX基地
					 $("#addbtn").show();
					 $("#editbtn").show();
					 $("#template").show();
					 $("#lversion").show();
					 $("#printWQP").show();
				 }else if(roleCodeList.indexOf(",ITMP_WELDQC1") > 0){//焊接QC1_XX基地
					 $("#addbtn").hide();
					 $("#editbtn").hide();
					 $("#template").hide();
					 $("#lversion").hide();
					 $("#printWQP").show();
					 $("#probtn").show();
					 $("#probtn1").show();
					 $("#probtn2").show();
					 
				 }else if(roleCodeList.indexOf(",ITMP_WELDOTS") > 0||roleCodeList.indexOf(",ITMP_JDGLY") > 0){//OTS焊接工程师_XX基地  基地管理员_XX基地  具有所有子模块的所有权限（【删除】、【回收站】功能除外）
					 $(".btn-default").show();
					 $("#delebtn").hide();
					 $("#recycle").hide();
				 }else if(roleCodeList.indexOf(",ITMP_CJGLY") > 0){//基地超级管理员_XX基地
					 $(".btn-default").show();
				 }else if(roleCodeList.indexOf(",ITMP_WELDQC2") > 0){
					 $(".btn-default").show();
					 $("#delebtn").hide();
					 $("#recycle").hide();
				 }
			 }
			 $("#reset").show();
			 $("#allQuery").hide();
			 $("#fuzzyQuery").show();
		 }
	 }
}

//人员树选择
function onButtonSelectPerson(e) {
  var empData;
      var btnEdit = this;
      var tpl,content= $("#result");     
      nui.open({
          url:"/itmp/coframe/tools/employeewidget.jsp",
          showMaxButton: true,//设置隐藏最大化窗口按钮
          title: "选择人员",//窗口标题
          width: 740,//窗口宽度
          height: 540,//窗口高度
          allowResize:true,//允许调整窗口大小
          onload:function(){
          	var iframe = this.getIFrameEl();
          	if(empData){
          		//调用弹出页面方法进行初始化
          		iframe.contentWindow.SetData(empData);
          	}
          },
          ondestroy: function (action) {
              if (action == "ok") {
              	$("#result").html("");
                  var iframe = this.getIFrameEl();
                  var data = iframe.contentWindow.GetData();
                  data = nui.clone(data);
                  empData = data;
                  if (data) {
                	  	paras = document.getElementsByClassName('mini-errorIcon');
						for(i=0;i<paras.length;i++){
						     //删除元素 元素.parentNode.removeChild(元素);
					    	if (paras[i] != null&&paras[i].title=="请选择校核人员") {
					          	paras[i].parentNode.removeChild( paras[i]); 
					    	}
						}
                      var empNames = "";
                      for(var i=0;i<data.length;i++){
//                       	tpl = $($("#template").html()).appendTo(content); 
                      	if(empNames == ""){
                      	empNames = empNames + data[i].empName;
                      	}else{
                      	empNames = empNames + ",";
                      	empNames = empNames + data[i].empName;
                      	}
                      }
                      btnEdit.setValue(empNames);	
                      btnEdit.setText(empNames);
                  }
              }
          }
      });            
	}


//禁止后退键 作用于IE、Chrome 
document.onkeydown=banBackSpace;             
function banBackSpace(e){ 
	var ev = e || window.event;//获取event对象
	var obj = ev.target || ev.srcElement;//获取事件源 
	
	var t = obj.type || obj.getAttribute('type');//获取事件源类型 
	
	//获取作为判断条件的事件类型 
	var vReadOnly = obj.getAttribute('readonly'); 
	var vEnabled = obj.getAttribute('enabled'); 
	//处理null值情况 
	vReadOnly = (vReadOnly == null) ? false : vReadOnly; 
	vEnabled = (vEnabled == null) ? true : vEnabled; 
		
	//当敲Backspace键时，事件源类型非密码或单行、多行文本的，则退格键失效 
	var flag=(ev.keyCode == 8 && t != "password" && t != "text" && t != "textarea") ?true:false; 
	
	//判断 
	if(flag){ 
		return false; 
	} 
}

//移除grid列表选择项
function removeSelecteds(grid){
	var selecteds = grid.getSelecteds();
	for(var i = 0 ; i < selecteds.length;i++){
		grid.setSelected();
	}
}

//获取字符串长度（汉字算两个字符，字母数字算一个）
function getByteLen(val) {
  var len = 0;
  for (var i = 0; i < val.length; i++) {
    var a = val.charAt(i);
    if (a.match(/[^\x00-\xff]/ig) != null) {
      len += 2;
    }
    else {
      len += 1;
    }
  }
  return len;
}

/**
 *共通--输入的字符校验
 *maxLength --最大长度
 *required--是否必填项
 *checked--是否需要校验最大长度 
 */
function hasIllegalChar(e,maxLength,required,checked) {
		 var valLength = getByteLen(e.value);
		 if(e.value=="" && required){//必填项
			 if (e.isValid) {
				 e.errorText ="有必填项未填写";	
				 e.isValid = false;
			 }
		 }else  if(checked &&valLength > maxLength){//最大长度校验
			 if (e.isValid) {
				 e.errorText ="输入的字符数不能超过"+maxLength+"个,请重新输入";	
				 e.isValid = false;
			 }
		 } else{
			 var res = new RegExp("\\b(document|onload|eval|script|img|svg|onerror|javascript|alert|confirm|open)\\b").test(e.value.toLowerCase());
			    if(res){
			    	 if (e.isValid) {
						 e.errorText ="输入的内容含有非法字符,请检查输入的内容";
						 e.isValid = false;
			    	 }
			    }
			 
		 }

}

function hasIllegalCharNew(v) {
	return new RegExp("\\b(document|onload|eval|script|img|svg|onerror|javascript|alert|confirm|open)\\b").test(v.toLowerCase());
}


function cleanData(data,column,id){
	var ln = data.length;
	for(var i = 0; i < ln ;i++){
		if(data[i]["_id"] == id){
			data[i][column] = "";
			break;
		}
	}
return data;
}

//身份证号码合法校验
function onIDCardsValidation(e) {
        if (e.isValid) {
            var pattern = /\d*/;
            if (e.value.length < 15 || e.value.length > 18 || pattern.test(e.value) == false) {
                e.errorText = "必须输入15~18位数字";
                e.isValid = false;
            }
        }
    }


