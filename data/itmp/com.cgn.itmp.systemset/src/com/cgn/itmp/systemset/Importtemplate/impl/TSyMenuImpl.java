/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.systemset.Importtemplate.impl;

import com.cgn.itmp.systemset.Importtemplate.TSyMenu;
import com.primeton.ext.data.sdo.DataUtil;
import com.primeton.ext.data.sdo.ExtendedDataObjectImpl;

import commonj.sdo.Type;

import java.util.Date;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Test</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link com.cgn.itmp.systemset.Importtemplate.impl.TSyMenuImpl#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.systemset.Importtemplate.impl.TSyMenuImpl#getFirstmenu <em>Firstmenu</em>}</li>
 *   <li>{@link com.cgn.itmp.systemset.Importtemplate.impl.TSyMenuImpl#getTwolevelmenu <em>Twolevelmenu</em>}</li>
 *   <li>{@link com.cgn.itmp.systemset.Importtemplate.impl.TSyMenuImpl#getMenuname <em>Menuname</em>}</li>
 *   <li>{@link com.cgn.itmp.systemset.Importtemplate.impl.TSyMenuImpl#getMenupath <em>Menupath</em>}</li>
 *   <li>{@link com.cgn.itmp.systemset.Importtemplate.impl.TSyMenuImpl#getUpdateperson <em>Updateperson</em>}</li>
 *   <li>{@link com.cgn.itmp.systemset.Importtemplate.impl.TSyMenuImpl#getUpdatetime <em>Updatetime</em>}</li>
 *   <li>{@link com.cgn.itmp.systemset.Importtemplate.impl.TSyMenuImpl#getIsdelete <em>Isdelete</em>}</li>
 *   <li>{@link com.cgn.itmp.systemset.Importtemplate.impl.TSyMenuImpl#getOrderno <em>Orderno</em>}</li>
 * </ul>
 * </p>
 *
 * @extends ExtendedDataObjectImpl;
 *
 * @implements TSyMenu;
 */

public class TSyMenuImpl extends ExtendedDataObjectImpl implements TSyMenu {
	/**
	 * Comment for <code>serialVersionUID</code>
	 */
	private static final long serialVersionUID = 1L;
	public final static int INDEX_UUID = 0;
	public final static int INDEX_FIRSTMENU = 1;
	public final static int INDEX_TWOLEVELMENU = 2;
	public final static int INDEX_MENUNAME = 3;
	public final static int INDEX_MENUPATH = 4;
	public final static int INDEX_UPDATEPERSON = 5;
	public final static int INDEX_UPDATETIME = 6;
	public final static int INDEX_ISDELETE = 7;
	public final static int INDEX_ORDERNO = 8;
	public static final int SDO_PROPERTY_COUNT = 9;

	public static final int EXTENDED_PROPERTY_COUNT = -1;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public TSyMenuImpl() {
		this(TYPE);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public TSyMenuImpl(Type type) {
		super(type);
	}

	protected void validate() {
		validateType(TYPE);
	}

	/**
	 * Returns the value of the '<em><b>Uuid</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Uuid</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Uuid</em>' attribute.
	 * @see #setUuid(java.lang.String)
	 */
	public String getUuid() {
		return DataUtil.toString(super.getByIndex(INDEX_UUID, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getUuid <em>Uuid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Uuid</em>' attribute.
	 * @see #getUuid()
	 */
	public void setUuid(String uuid) {
		super.setByIndex(INDEX_UUID, uuid);
	}

	/**
	 * Returns the value of the '<em><b>Firstmenu</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Firstmenu</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Firstmenu</em>' attribute.
	 * @see #setFirstmenu(java.lang.String)
	 */
	public String getFirstmenu() {
		return DataUtil.toString(super.getByIndex(INDEX_FIRSTMENU, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getFirstmenu <em>Firstmenu</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Firstmenu</em>' attribute.
	 * @see #getFirstmenu()
	 */
	public void setFirstmenu(String firstmenu) {
		super.setByIndex(INDEX_FIRSTMENU, firstmenu);
	}

	/**
	 * Returns the value of the '<em><b>Twolevelmenu</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Twolevelmenu</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Twolevelmenu</em>' attribute.
	 * @see #setTwolevelmenu(java.lang.String)
	 */
	public String getTwolevelmenu() {
		return DataUtil.toString(super.getByIndex(INDEX_TWOLEVELMENU, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getTwolevelmenu <em>Twolevelmenu</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Twolevelmenu</em>' attribute.
	 * @see #getTwolevelmenu()
	 */
	public void setTwolevelmenu(String twolevelmenu) {
		super.setByIndex(INDEX_TWOLEVELMENU, twolevelmenu);
	}

	/**
	 * Returns the value of the '<em><b>Menuname</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Menuname</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Menuname</em>' attribute.
	 * @see #setMenuname(java.lang.String)
	 */
	public String getMenuname() {
		return DataUtil.toString(super.getByIndex(INDEX_MENUNAME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getMenuname <em>Menuname</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Menuname</em>' attribute.
	 * @see #getMenuname()
	 */
	public void setMenuname(String menuname) {
		super.setByIndex(INDEX_MENUNAME, menuname);
	}

	/**
	 * Returns the value of the '<em><b>Menupath</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Menupath</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Menupath</em>' attribute.
	 * @see #setMenupath(java.lang.String)
	 */
	public String getMenupath() {
		return DataUtil.toString(super.getByIndex(INDEX_MENUPATH, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getMenupath <em>Menupath</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Menupath</em>' attribute.
	 * @see #getMenupath()
	 */
	public void setMenupath(String menupath) {
		super.setByIndex(INDEX_MENUPATH, menupath);
	}

	/**
	 * Returns the value of the '<em><b>Updateperson</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Updateperson</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Updateperson</em>' attribute.
	 * @see #setUpdateperson(java.lang.String)
	 */
	public String getUpdateperson() {
		return DataUtil.toString(super.getByIndex(INDEX_UPDATEPERSON, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getUpdateperson <em>Updateperson</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Updateperson</em>' attribute.
	 * @see #getUpdateperson()
	 */
	public void setUpdateperson(String updateperson) {
		super.setByIndex(INDEX_UPDATEPERSON, updateperson);
	}

	/**
	 * Returns the value of the '<em><b>Updatetime</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Updatetime</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Updatetime</em>' attribute.
	 * @see #setUpdatetime(java.util.Date)
	 */
	public Date getUpdatetime() {
		return DataUtil.toDate(super.getByIndex(INDEX_UPDATETIME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getUpdatetime <em>Updatetime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Updatetime</em>' attribute.
	 * @see #getUpdatetime()
	 */
	public void setUpdatetime(Date updatetime) {
		super.setByIndex(INDEX_UPDATETIME, updatetime);
	}

	/**
	 * Returns the value of the '<em><b>Isdelete</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Isdelete</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Isdelete</em>' attribute.
	 * @see #setIsdelete(java.lang.String)
	 */
	public String getIsdelete() {
		return DataUtil.toString(super.getByIndex(INDEX_ISDELETE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getIsdelete <em>Isdelete</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Isdelete</em>' attribute.
	 * @see #getIsdelete()
	 */
	public void setIsdelete(String isdelete) {
		super.setByIndex(INDEX_ISDELETE, isdelete);
	}

	/**
	 * Returns the value of the '<em><b>Orderno</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Orderno</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Orderno</em>' attribute.
	 * @see #setOrderno(int)
	 */
	public int getOrderno() {
		return DataUtil.toInt(super.getByIndex(INDEX_ORDERNO, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getOrderno <em>Orderno</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Orderno</em>' attribute.
	 * @see #getOrderno()
	 */
	public void setOrderno(int orderno) {
		super.setByIndex(INDEX_ORDERNO, orderno);
	}


}