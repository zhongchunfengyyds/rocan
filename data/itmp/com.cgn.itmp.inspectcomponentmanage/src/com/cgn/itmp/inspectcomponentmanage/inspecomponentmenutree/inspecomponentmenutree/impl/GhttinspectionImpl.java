/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.impl;

import com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Ghttinspection;
import com.primeton.ext.data.sdo.DataUtil;
import com.primeton.ext.data.sdo.ExtendedDataObjectImpl;

import commonj.sdo.Type;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Test</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.impl.GhttinspectionImpl#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.impl.GhttinspectionImpl#getOverhaulRotation <em>OverhaulRotation</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.impl.GhttinspectionImpl#getSteamGeneratorNo <em>SteamGeneratorNo</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.impl.GhttinspectionImpl#getFuncPosition <em>FuncPosition</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.impl.GhttinspectionImpl#getCheckRange <em>CheckRange</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.impl.GhttinspectionImpl#getCheckType <em>CheckType</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.impl.GhttinspectionImpl#getCheckPlan <em>CheckPlan</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.impl.GhttinspectionImpl#getOneEighthDisplace <em>OneEighthDisplace</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.impl.GhttinspectionImpl#getEnclosure <em>Enclosure</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.impl.GhttinspectionImpl#getRemarks <em>Remarks</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.impl.GhttinspectionImpl#getJd <em>Jd</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.impl.GhttinspectionImpl#getJz <em>Jz</em>}</li>
 * </ul>
 * </p>
 *
 * @extends ExtendedDataObjectImpl;
 *
 * @implements Ghttinspection;
 */

public class GhttinspectionImpl extends ExtendedDataObjectImpl implements Ghttinspection {
	/**
	 * Comment for <code>serialVersionUID</code>
	 */
	private static final long serialVersionUID = 1L;
	public final static int INDEX_UUID = 0;
	public final static int INDEX_OVERHAULROTATION = 1;
	public final static int INDEX_STEAMGENERATORNO = 2;
	public final static int INDEX_FUNCPOSITION = 3;
	public final static int INDEX_CHECKRANGE = 4;
	public final static int INDEX_CHECKTYPE = 5;
	public final static int INDEX_CHECKPLAN = 6;
	public final static int INDEX_ONEEIGHTHDISPLACE = 7;
	public final static int INDEX_ENCLOSURE = 8;
	public final static int INDEX_REMARKS = 9;
	public final static int INDEX_JD = 10;
	public final static int INDEX_JZ = 11;
	public static final int SDO_PROPERTY_COUNT = 12;

	public static final int EXTENDED_PROPERTY_COUNT = -1;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public GhttinspectionImpl() {
		this(TYPE);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public GhttinspectionImpl(Type type) {
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
	 * Returns the value of the '<em><b>OverhaulRotation</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>OverhaulRotation</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>OverhaulRotation</em>' attribute.
	 * @see #setOverhaulRotation(java.lang.String)
	 */
	public String getOverhaulRotation() {
		return DataUtil.toString(super.getByIndex(INDEX_OVERHAULROTATION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getOverhaulRotation <em>OverhaulRotation</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>OverhaulRotation</em>' attribute.
	 * @see #getOverhaulRotation()
	 */
	public void setOverhaulRotation(String overhaulRotation) {
		super.setByIndex(INDEX_OVERHAULROTATION, overhaulRotation);
	}

	/**
	 * Returns the value of the '<em><b>SteamGeneratorNo</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>SteamGeneratorNo</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>SteamGeneratorNo</em>' attribute.
	 * @see #setSteamGeneratorNo(java.lang.String)
	 */
	public String getSteamGeneratorNo() {
		return DataUtil.toString(super.getByIndex(INDEX_STEAMGENERATORNO, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getSteamGeneratorNo <em>SteamGeneratorNo</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>SteamGeneratorNo</em>' attribute.
	 * @see #getSteamGeneratorNo()
	 */
	public void setSteamGeneratorNo(String steamGeneratorNo) {
		super.setByIndex(INDEX_STEAMGENERATORNO, steamGeneratorNo);
	}

	/**
	 * Returns the value of the '<em><b>FuncPosition</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>FuncPosition</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>FuncPosition</em>' attribute.
	 * @see #setFuncPosition(java.lang.String)
	 */
	public String getFuncPosition() {
		return DataUtil.toString(super.getByIndex(INDEX_FUNCPOSITION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getFuncPosition <em>FuncPosition</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>FuncPosition</em>' attribute.
	 * @see #getFuncPosition()
	 */
	public void setFuncPosition(String funcPosition) {
		super.setByIndex(INDEX_FUNCPOSITION, funcPosition);
	}

	/**
	 * Returns the value of the '<em><b>CheckRange</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>CheckRange</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>CheckRange</em>' attribute.
	 * @see #setCheckRange(java.lang.String)
	 */
	public String getCheckRange() {
		return DataUtil.toString(super.getByIndex(INDEX_CHECKRANGE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getCheckRange <em>CheckRange</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>CheckRange</em>' attribute.
	 * @see #getCheckRange()
	 */
	public void setCheckRange(String checkRange) {
		super.setByIndex(INDEX_CHECKRANGE, checkRange);
	}

	/**
	 * Returns the value of the '<em><b>CheckType</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>CheckType</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>CheckType</em>' attribute.
	 * @see #setCheckType(java.lang.String)
	 */
	public String getCheckType() {
		return DataUtil.toString(super.getByIndex(INDEX_CHECKTYPE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getCheckType <em>CheckType</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>CheckType</em>' attribute.
	 * @see #getCheckType()
	 */
	public void setCheckType(String checkType) {
		super.setByIndex(INDEX_CHECKTYPE, checkType);
	}

	/**
	 * Returns the value of the '<em><b>CheckPlan</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>CheckPlan</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>CheckPlan</em>' attribute.
	 * @see #setCheckPlan(java.lang.String)
	 */
	public String getCheckPlan() {
		return DataUtil.toString(super.getByIndex(INDEX_CHECKPLAN, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getCheckPlan <em>CheckPlan</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>CheckPlan</em>' attribute.
	 * @see #getCheckPlan()
	 */
	public void setCheckPlan(String checkPlan) {
		super.setByIndex(INDEX_CHECKPLAN, checkPlan);
	}

	/**
	 * Returns the value of the '<em><b>OneEighthDisplace</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>OneEighthDisplace</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>OneEighthDisplace</em>' attribute.
	 * @see #setOneEighthDisplace(java.lang.String)
	 */
	public String getOneEighthDisplace() {
		return DataUtil.toString(super.getByIndex(INDEX_ONEEIGHTHDISPLACE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getOneEighthDisplace <em>OneEighthDisplace</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>OneEighthDisplace</em>' attribute.
	 * @see #getOneEighthDisplace()
	 */
	public void setOneEighthDisplace(String oneEighthDisplace) {
		super.setByIndex(INDEX_ONEEIGHTHDISPLACE, oneEighthDisplace);
	}

	/**
	 * Returns the value of the '<em><b>Enclosure</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Enclosure</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Enclosure</em>' attribute.
	 * @see #setEnclosure(java.lang.String)
	 */
	public String getEnclosure() {
		return DataUtil.toString(super.getByIndex(INDEX_ENCLOSURE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getEnclosure <em>Enclosure</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Enclosure</em>' attribute.
	 * @see #getEnclosure()
	 */
	public void setEnclosure(String enclosure) {
		super.setByIndex(INDEX_ENCLOSURE, enclosure);
	}

	/**
	 * Returns the value of the '<em><b>Remarks</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Remarks</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Remarks</em>' attribute.
	 * @see #setRemarks(java.lang.String)
	 */
	public String getRemarks() {
		return DataUtil.toString(super.getByIndex(INDEX_REMARKS, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getRemarks <em>Remarks</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Remarks</em>' attribute.
	 * @see #getRemarks()
	 */
	public void setRemarks(String remarks) {
		super.setByIndex(INDEX_REMARKS, remarks);
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


}