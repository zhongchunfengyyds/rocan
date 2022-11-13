/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.inspectcomponentmanage.trainsmg.impl;

import com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf;
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
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.impl.Trainsmg_mfImpl#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.impl.Trainsmg_mfImpl#getJd <em>Jd</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.impl.Trainsmg_mfImpl#getJz <em>Jz</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.impl.Trainsmg_mfImpl#getCheckpostion <em>Checkpostion</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.impl.Trainsmg_mfImpl#getCheckmethond <em>Checkmethond</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.impl.Trainsmg_mfImpl#getScrewiden <em>Screwiden</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.impl.Trainsmg_mfImpl#getShoupostion <em>Shoupostion</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.impl.Trainsmg_mfImpl#getOverhaulsq <em>Overhaulsq</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.impl.Trainsmg_mfImpl#getPlanone <em>Planone</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.impl.Trainsmg_mfImpl#getPlantwo <em>Plantwo</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.impl.Trainsmg_mfImpl#getPlanthree <em>Planthree</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.impl.Trainsmg_mfImpl#getRemake <em>Remake</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.impl.Trainsmg_mfImpl#getIsdel <em>Isdel</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.impl.Trainsmg_mfImpl#getChangeuser <em>Changeuser</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.impl.Trainsmg_mfImpl#getChangeDate <em>ChangeDate</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.impl.Trainsmg_mfImpl#getChangeinfo <em>Changeinfo</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.impl.Trainsmg_mfImpl#getChangeReason <em>ChangeReason</em>}</li>
 * </ul>
 * </p>
 *
 * @extends ExtendedDataObjectImpl;
 *
 * @implements Trainsmg_mf;
 */

public class Trainsmg_mfImpl extends ExtendedDataObjectImpl implements Trainsmg_mf {
	/**
	 * Comment for <code>serialVersionUID</code>
	 */
	private static final long serialVersionUID = 1L;
	public final static int INDEX_UUID = 0;
	public final static int INDEX_JD = 1;
	public final static int INDEX_JZ = 2;
	public final static int INDEX_CHECKPOSTION = 3;
	public final static int INDEX_CHECKMETHOND = 4;
	public final static int INDEX_SCREWIDEN = 5;
	public final static int INDEX_SHOUPOSTION = 6;
	public final static int INDEX_OVERHAULSQ = 7;
	public final static int INDEX_PLANONE = 8;
	public final static int INDEX_PLANTWO = 9;
	public final static int INDEX_PLANTHREE = 10;
	public final static int INDEX_REMAKE = 11;
	public final static int INDEX_ISDEL = 12;
	public final static int INDEX_CHANGEUSER = 13;
	public final static int INDEX_CHANGEDATE = 14;
	public final static int INDEX_CHANGEINFO = 15;
	public final static int INDEX_CHANGEREASON = 16;
	public static final int SDO_PROPERTY_COUNT = 17;

	public static final int EXTENDED_PROPERTY_COUNT = -1;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public Trainsmg_mfImpl() {
		this(TYPE);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public Trainsmg_mfImpl(Type type) {
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
	 * Returns the value of the '<em><b>Jd</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Jd</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Jd</em>' attribute.
	 * @see #setJd(java.lang.String)
	 */
	public String getJd() {
		return DataUtil.toString(super.getByIndex(INDEX_JD, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getJd <em>Jd</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Jd</em>' attribute.
	 * @see #getJd()
	 */
	public void setJd(String jd) {
		super.setByIndex(INDEX_JD, jd);
	}

	/**
	 * Returns the value of the '<em><b>Jz</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Jz</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Jz</em>' attribute.
	 * @see #setJz(java.lang.String)
	 */
	public String getJz() {
		return DataUtil.toString(super.getByIndex(INDEX_JZ, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getJz <em>Jz</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Jz</em>' attribute.
	 * @see #getJz()
	 */
	public void setJz(String jz) {
		super.setByIndex(INDEX_JZ, jz);
	}

	/**
	 * Returns the value of the '<em><b>Checkpostion</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Checkpostion</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Checkpostion</em>' attribute.
	 * @see #setCheckpostion(java.lang.String)
	 */
	public String getCheckpostion() {
		return DataUtil.toString(super.getByIndex(INDEX_CHECKPOSTION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getCheckpostion <em>Checkpostion</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Checkpostion</em>' attribute.
	 * @see #getCheckpostion()
	 */
	public void setCheckpostion(String checkpostion) {
		super.setByIndex(INDEX_CHECKPOSTION, checkpostion);
	}

	/**
	 * Returns the value of the '<em><b>Checkmethond</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Checkmethond</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Checkmethond</em>' attribute.
	 * @see #setCheckmethond(java.lang.String)
	 */
	public String getCheckmethond() {
		return DataUtil.toString(super.getByIndex(INDEX_CHECKMETHOND, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getCheckmethond <em>Checkmethond</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Checkmethond</em>' attribute.
	 * @see #getCheckmethond()
	 */
	public void setCheckmethond(String checkmethond) {
		super.setByIndex(INDEX_CHECKMETHOND, checkmethond);
	}

	/**
	 * Returns the value of the '<em><b>Screwiden</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Screwiden</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Screwiden</em>' attribute.
	 * @see #setScrewiden(java.lang.String)
	 */
	public String getScrewiden() {
		return DataUtil.toString(super.getByIndex(INDEX_SCREWIDEN, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getScrewiden <em>Screwiden</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Screwiden</em>' attribute.
	 * @see #getScrewiden()
	 */
	public void setScrewiden(String screwiden) {
		super.setByIndex(INDEX_SCREWIDEN, screwiden);
	}

	/**
	 * Returns the value of the '<em><b>Shoupostion</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Shoupostion</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Shoupostion</em>' attribute.
	 * @see #setShoupostion(java.lang.String)
	 */
	public String getShoupostion() {
		return DataUtil.toString(super.getByIndex(INDEX_SHOUPOSTION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getShoupostion <em>Shoupostion</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Shoupostion</em>' attribute.
	 * @see #getShoupostion()
	 */
	public void setShoupostion(String shoupostion) {
		super.setByIndex(INDEX_SHOUPOSTION, shoupostion);
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
	 * Returns the value of the '<em><b>Planone</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Planone</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Planone</em>' attribute.
	 * @see #setPlanone(java.lang.String)
	 */
	public String getPlanone() {
		return DataUtil.toString(super.getByIndex(INDEX_PLANONE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getPlanone <em>Planone</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Planone</em>' attribute.
	 * @see #getPlanone()
	 */
	public void setPlanone(String planone) {
		super.setByIndex(INDEX_PLANONE, planone);
	}

	/**
	 * Returns the value of the '<em><b>Plantwo</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Plantwo</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Plantwo</em>' attribute.
	 * @see #setPlantwo(java.lang.String)
	 */
	public String getPlantwo() {
		return DataUtil.toString(super.getByIndex(INDEX_PLANTWO, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getPlantwo <em>Plantwo</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Plantwo</em>' attribute.
	 * @see #getPlantwo()
	 */
	public void setPlantwo(String plantwo) {
		super.setByIndex(INDEX_PLANTWO, plantwo);
	}

	/**
	 * Returns the value of the '<em><b>Planthree</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Planthree</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Planthree</em>' attribute.
	 * @see #setPlanthree(java.lang.String)
	 */
	public String getPlanthree() {
		return DataUtil.toString(super.getByIndex(INDEX_PLANTHREE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getPlanthree <em>Planthree</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Planthree</em>' attribute.
	 * @see #getPlanthree()
	 */
	public void setPlanthree(String planthree) {
		super.setByIndex(INDEX_PLANTHREE, planthree);
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
	 * Returns the value of the '<em><b>ChangeDate</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>ChangeDate</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>ChangeDate</em>' attribute.
	 * @see #setChangeDate(java.util.Date)
	 */
	public Date getChangeDate() {
		return DataUtil.toDate(super.getByIndex(INDEX_CHANGEDATE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getChangeDate <em>ChangeDate</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>ChangeDate</em>' attribute.
	 * @see #getChangeDate()
	 */
	public void setChangeDate(Date changeDate) {
		super.setByIndex(INDEX_CHANGEDATE, changeDate);
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
	 * Returns the value of the '<em><b>ChangeReason</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>ChangeReason</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>ChangeReason</em>' attribute.
	 * @see #setChangeReason(java.lang.String)
	 */
	public String getChangeReason() {
		return DataUtil.toString(super.getByIndex(INDEX_CHANGEREASON, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getChangeReason <em>ChangeReason</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>ChangeReason</em>' attribute.
	 * @see #getChangeReason()
	 */
	public void setChangeReason(String changeReason) {
		super.setByIndex(INDEX_CHANGEREASON, changeReason);
	}


}