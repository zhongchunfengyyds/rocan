/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.inspectcomponentmanage.insplanmg.impl;

import com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg_modif;
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
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.impl.Insplanmg_modifImpl#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.impl.Insplanmg_modifImpl#getChangeReasons <em>ChangeReasons</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.impl.Insplanmg_modifImpl#getChangeinfo <em>Changeinfo</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.impl.Insplanmg_modifImpl#getChangetime <em>Changetime</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.impl.Insplanmg_modifImpl#getChangeuser <em>Changeuser</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.impl.Insplanmg_modifImpl#getInsplanflu <em>Insplanflu</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.impl.Insplanmg_modifImpl#getInsscope <em>Insscope</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.impl.Insplanmg_modifImpl#getRemake <em>Remake</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.impl.Insplanmg_modifImpl#getOverhaulsq <em>Overhaulsq</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.impl.Insplanmg_modifImpl#getInsphase <em>Insphase</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.impl.Insplanmg_modifImpl#getIsdel <em>Isdel</em>}</li>
 * </ul>
 * </p>
 *
 * @extends ExtendedDataObjectImpl;
 *
 * @implements Insplanmg_modif;
 */

public class Insplanmg_modifImpl extends ExtendedDataObjectImpl implements Insplanmg_modif {
	/**
	 * Comment for <code>serialVersionUID</code>
	 */
	private static final long serialVersionUID = 1L;
	public final static int INDEX_UUID = 0;
	public final static int INDEX_CHANGEREASONS = 1;
	public final static int INDEX_CHANGEINFO = 2;
	public final static int INDEX_CHANGETIME = 3;
	public final static int INDEX_CHANGEUSER = 4;
	public final static int INDEX_INSPLANFLU = 5;
	public final static int INDEX_INSSCOPE = 6;
	public final static int INDEX_REMAKE = 7;
	public final static int INDEX_OVERHAULSQ = 8;
	public final static int INDEX_INSPHASE = 9;
	public final static int INDEX_ISDEL = 10;
	public static final int SDO_PROPERTY_COUNT = 11;

	public static final int EXTENDED_PROPERTY_COUNT = -1;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public Insplanmg_modifImpl() {
		this(TYPE);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public Insplanmg_modifImpl(Type type) {
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
	 * Returns the value of the '<em><b>ChangeReasons</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>ChangeReasons</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>ChangeReasons</em>' attribute.
	 * @see #setChangeReasons(java.lang.String)
	 */
	public String getChangeReasons() {
		return DataUtil.toString(super.getByIndex(INDEX_CHANGEREASONS, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getChangeReasons <em>ChangeReasons</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>ChangeReasons</em>' attribute.
	 * @see #getChangeReasons()
	 */
	public void setChangeReasons(String changeReasons) {
		super.setByIndex(INDEX_CHANGEREASONS, changeReasons);
	}

	/**
	 * Returns the value of the '<em><b>Changeinfo</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Changeinfo</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Changeinfo</em>' attribute.
	 * @see #setChangeinfo(java.lang.String)
	 */
	public String getChangeinfo() {
		return DataUtil.toString(super.getByIndex(INDEX_CHANGEINFO, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getChangeinfo <em>Changeinfo</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Changeinfo</em>' attribute.
	 * @see #getChangeinfo()
	 */
	public void setChangeinfo(String changeinfo) {
		super.setByIndex(INDEX_CHANGEINFO, changeinfo);
	}

	/**
	 * Returns the value of the '<em><b>Changetime</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Changetime</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Changetime</em>' attribute.
	 * @see #setChangetime(java.util.Date)
	 */
	public Date getChangetime() {
		return DataUtil.toDate(super.getByIndex(INDEX_CHANGETIME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getChangetime <em>Changetime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Changetime</em>' attribute.
	 * @see #getChangetime()
	 */
	public void setChangetime(Date changetime) {
		super.setByIndex(INDEX_CHANGETIME, changetime);
	}

	/**
	 * Returns the value of the '<em><b>Changeuser</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Changeuser</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Changeuser</em>' attribute.
	 * @see #setChangeuser(java.lang.String)
	 */
	public String getChangeuser() {
		return DataUtil.toString(super.getByIndex(INDEX_CHANGEUSER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getChangeuser <em>Changeuser</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Changeuser</em>' attribute.
	 * @see #getChangeuser()
	 */
	public void setChangeuser(String changeuser) {
		super.setByIndex(INDEX_CHANGEUSER, changeuser);
	}

	/**
	 * Returns the value of the '<em><b>Insplanflu</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Insplanflu</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Insplanflu</em>' attribute.
	 * @see #setInsplanflu(java.lang.String)
	 */
	public String getInsplanflu() {
		return DataUtil.toString(super.getByIndex(INDEX_INSPLANFLU, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getInsplanflu <em>Insplanflu</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Insplanflu</em>' attribute.
	 * @see #getInsplanflu()
	 */
	public void setInsplanflu(String insplanflu) {
		super.setByIndex(INDEX_INSPLANFLU, insplanflu);
	}

	/**
	 * Returns the value of the '<em><b>Insscope</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Insscope</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Insscope</em>' attribute.
	 * @see #setInsscope(java.lang.String)
	 */
	public String getInsscope() {
		return DataUtil.toString(super.getByIndex(INDEX_INSSCOPE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getInsscope <em>Insscope</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Insscope</em>' attribute.
	 * @see #getInsscope()
	 */
	public void setInsscope(String insscope) {
		super.setByIndex(INDEX_INSSCOPE, insscope);
	}

	/**
	 * Returns the value of the '<em><b>Remake</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Remake</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Remake</em>' attribute.
	 * @see #setRemake(java.lang.String)
	 */
	public String getRemake() {
		return DataUtil.toString(super.getByIndex(INDEX_REMAKE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getRemake <em>Remake</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Remake</em>' attribute.
	 * @see #getRemake()
	 */
	public void setRemake(String remake) {
		super.setByIndex(INDEX_REMAKE, remake);
	}

	/**
	 * Returns the value of the '<em><b>Overhaulsq</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Overhaulsq</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Overhaulsq</em>' attribute.
	 * @see #setOverhaulsq(java.lang.String)
	 */
	public String getOverhaulsq() {
		return DataUtil.toString(super.getByIndex(INDEX_OVERHAULSQ, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getOverhaulsq <em>Overhaulsq</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Overhaulsq</em>' attribute.
	 * @see #getOverhaulsq()
	 */
	public void setOverhaulsq(String overhaulsq) {
		super.setByIndex(INDEX_OVERHAULSQ, overhaulsq);
	}

	/**
	 * Returns the value of the '<em><b>Insphase</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Insphase</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Insphase</em>' attribute.
	 * @see #setInsphase(java.lang.String)
	 */
	public String getInsphase() {
		return DataUtil.toString(super.getByIndex(INDEX_INSPHASE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getInsphase <em>Insphase</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Insphase</em>' attribute.
	 * @see #getInsphase()
	 */
	public void setInsphase(String insphase) {
		super.setByIndex(INDEX_INSPHASE, insphase);
	}

	/**
	 * Returns the value of the '<em><b>Isdel</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Isdel</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Isdel</em>' attribute.
	 * @see #setIsdel(java.lang.String)
	 */
	public String getIsdel() {
		return DataUtil.toString(super.getByIndex(INDEX_ISDEL, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getIsdel <em>Isdel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Isdel</em>' attribute.
	 * @see #getIsdel()
	 */
	public void setIsdel(String isdel) {
		super.setByIndex(INDEX_ISDEL, isdel);
	}


}