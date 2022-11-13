/**
 * 
 */
package com.cgn.itmp.dailyandoverhaul.groupplant;

import com.eos.spring.DASDaoSupport;
import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 组织机构树
 * Description: 程序功能的描述
 * </pre>
 * @author Administrator
 * @version 1.00.00
 * 
 */
/*
 * 修改历史
 * $log$
 */
public class ZzjgTreeServiceImpl extends DASDaoSupport implements
		ZzjgTreeService {

	/**
	 * 
	 */
	public ZzjgTreeServiceImpl() {
		// TODO 自动生成的构造函数存根
	}

	/* （非 Javadoc）
	 */
	public  DataObject[] getZzjgTreeNode() {
		// TODO 自动生成的方法存根
		String sql="com.cgn.itmp.dailyandoverhaul.groupplant.groupplant.qureyTreesInfo";
		return getDASTemplate().queryByNamedSql(DataObject.class, sql, null);
	}

}
