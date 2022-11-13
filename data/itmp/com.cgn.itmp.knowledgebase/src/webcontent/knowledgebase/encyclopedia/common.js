function labelModel(form) {
    var fields = form.getFields();                
    for (var i = 0, l = fields.length; i < l; i++) {
        var c = fields[i];
        if (c.setReadOnly) c.setReadOnly(true);     //只读
        if (c.setIsValid) c.setIsValid(true);      //去除错误提示
        if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
        if (c.emptyText) c.setEmptyText("");		//去除空文本提示
    }
}