/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.impl;

import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice;
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
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.impl.TInspectDefectNoticeImpl#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.impl.TInspectDefectNoticeImpl#getJd <em>Jd</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.impl.TInspectDefectNoticeImpl#getJz <em>Jz</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.impl.TInspectDefectNoticeImpl#getJzstate <em>Jzstate</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.impl.TInspectDefectNoticeImpl#getOverhaulrounds <em>Overhaulrounds</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.impl.TInspectDefectNoticeImpl#getEquipmenttype <em>Equipmenttype</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.impl.TInspectDefectNoticeImpl#getWorkticketnumber <em>Workticketnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.impl.TInspectDefectNoticeImpl#getWorkcontent <em>Workcontent</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.impl.TInspectDefectNoticeImpl#getWorkchargeperson <em>Workchargeperson</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.impl.TInspectDefectNoticeImpl#getInspectionmethod <em>Inspectionmethod</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.impl.TInspectDefectNoticeImpl#getNoticenumber <em>Noticenumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.impl.TInspectDefectNoticeImpl#getTitle <em>Title</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.impl.TInspectDefectNoticeImpl#getDescribe <em>Describe</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.impl.TInspectDefectNoticeImpl#getFunctionallocation <em>Functionallocation</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.impl.TInspectDefectNoticeImpl#getCreatedate <em>Createdate</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.impl.TInspectDefectNoticeImpl#getCurrentstatus <em>Currentstatus</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.impl.TInspectDefectNoticeImpl#getResponsibledepartment <em>Responsibledepartment</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.impl.TInspectDefectNoticeImpl#getProcess <em>Process</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.impl.TInspectDefectNoticeImpl#getProcessresult <em>Processresult</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.impl.TInspectDefectNoticeImpl#getStrategyadjustment <em>Strategyadjustment</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.impl.TInspectDefectNoticeImpl#getNondestructive <em>Nondestructive</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.impl.TInspectDefectNoticeImpl#getResponsibleperson <em>Responsibleperson</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.impl.TInspectDefectNoticeImpl#getFj <em>Fj</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.impl.TInspectDefectNoticeImpl#getFildid <em>Fildid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.impl.TInspectDefectNoticeImpl#getFildpath <em>Fildpath</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.impl.TInspectDefectNoticeImpl#getDeletetime <em>Deletetime</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.impl.TInspectDefectNoticeImpl#getDeleteperson <em>Deleteperson</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.impl.TInspectDefectNoticeImpl#getIsdel <em>Isdel</em>}</li>
 * </ul>
 * </p>
 *
 * @extends ExtendedDataObjectImpl;
 *
 * @implements TInspectDefectNotice;
 */

public class TInspectDefectNoticeImpl extends ExtendedDataObjectImpl implements TInspectDefectNotice {
	/**
	 * Comment for <code>serialVersionUID</code>
	 */
	private static final long serialVersionUID = 1L;
	public final static int INDEX_UUID = 0;
	public final static int INDEX_JD = 1;
	public final static int INDEX_JZ = 2;
	public final static int INDEX_JZSTATE = 3;
	public final static int INDEX_OVERHAULROUNDS = 4;
	public final static int INDEX_EQUIPMENTTYPE = 5;
	public final static int INDEX_WORKTICKETNUMBER = 6;
	public final static int INDEX_WORKCONTENT = 7;
	public final static int INDEX_WORKCHARGEPERSON = 8;
	public final static int INDEX_INSPECTIONMETHOD = 9;
	public final static int INDEX_NOTICENUMBER = 10;
	public final static int INDEX_TITLE = 11;
	public final static int INDEX_DESCRIBE = 12;
	public final static int INDEX_FUNCTIONALLOCATION = 13;
	public final static int INDEX_CREATEDATE = 14;
	public final static int INDEX_CURRENTSTATUS = 15;
	public final static int INDEX_RESPONSIBLEDEPARTMENT = 16;
	public final static int INDEX_PROCESS = 17;
	public final static int INDEX_PROCESSRESULT = 18;
	public final static int INDEX_STRATEGYADJUSTMENT = 19;
	public final static int INDEX_NONDESTRUCTIVE = 20;
	public final static int INDEX_RESPONSIBLEPERSON = 21;
	public final static int INDEX_FJ = 22;
	public final static int INDEX_FILDID = 23;
	public final static int INDEX_FILDPATH = 24;
	public final static int INDEX_DELETETIME = 25;
	public final static int INDEX_DELETEPERSON = 26;
	public final static int INDEX_ISDEL = 27;
	public static final int SDO_PROPERTY_COUNT = 28;

	public static final int EXTENDED_PROPERTY_COUNT = -1;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public TInspectDefectNoticeImpl() {
		this(TYPE);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public TInspectDefectNoticeImpl(Type type) {
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
	 * Returns the value of the '<em><b>Jzstate</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Jzstate</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Jzstate</em>' attribute.
	 * @see #setJzstate(java.lang.String)
	 */
	public String getJzstate() {
		return DataUtil.toString(super.getByIndex(INDEX_JZSTATE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getJzstate <em>Jzstate</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Jzstate</em>' attribute.
	 * @see #getJzstate()
	 */
	public void setJzstate(String jzstate) {
		super.setByIndex(INDEX_JZSTATE, jzstate);
	}

	/**
	 * Returns the value of the '<em><b>Overhaulrounds</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Overhaulrounds</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Overhaulrounds</em>' attribute.
	 * @see #setOverhaulrounds(java.lang.String)
	 */
	public String getOverhaulrounds() {
		return DataUtil.toString(super.getByIndex(INDEX_OVERHAULROUNDS, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getOverhaulrounds <em>Overhaulrounds</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Overhaulrounds</em>' attribute.
	 * @see #getOverhaulrounds()
	 */
	public void setOverhaulrounds(String overhaulrounds) {
		super.setByIndex(INDEX_OVERHAULROUNDS, overhaulrounds);
	}

	/**
	 * Returns the value of the '<em><b>Equipmenttype</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Equipmenttype</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Equipmenttype</em>' attribute.
	 * @see #setEquipmenttype(java.lang.String)
	 */
	public String getEquipmenttype() {
		return DataUtil.toString(super.getByIndex(INDEX_EQUIPMENTTYPE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getEquipmenttype <em>Equipmenttype</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equipmenttype</em>' attribute.
	 * @see #getEquipmenttype()
	 */
	public void setEquipmenttype(String equipmenttype) {
		super.setByIndex(INDEX_EQUIPMENTTYPE, equipmenttype);
	}

	/**
	 * Returns the value of the '<em><b>Workticketnumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Workticketnumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Workticketnumber</em>' attribute.
	 * @see #setWorkticketnumber(java.lang.String)
	 */
	public String getWorkticketnumber() {
		return DataUtil.toString(super.getByIndex(INDEX_WORKTICKETNUMBER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getWorkticketnumber <em>Workticketnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Workticketnumber</em>' attribute.
	 * @see #getWorkticketnumber()
	 */
	public void setWorkticketnumber(String workticketnumber) {
		super.setByIndex(INDEX_WORKTICKETNUMBER, workticketnumber);
	}

	/**
	 * Returns the value of the '<em><b>Workcontent</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Workcontent</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Workcontent</em>' attribute.
	 * @see #setWorkcontent(java.lang.String)
	 */
	public String getWorkcontent() {
		return DataUtil.toString(super.getByIndex(INDEX_WORKCONTENT, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getWorkcontent <em>Workcontent</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Workcontent</em>' attribute.
	 * @see #getWorkcontent()
	 */
	public void setWorkcontent(String workcontent) {
		super.setByIndex(INDEX_WORKCONTENT, workcontent);
	}

	/**
	 * Returns the value of the '<em><b>Workchargeperson</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Workchargeperson</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Workchargeperson</em>' attribute.
	 * @see #setWorkchargeperson(java.lang.String)
	 */
	public String getWorkchargeperson() {
		return DataUtil.toString(super.getByIndex(INDEX_WORKCHARGEPERSON, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getWorkchargeperson <em>Workchargeperson</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Workchargeperson</em>' attribute.
	 * @see #getWorkchargeperson()
	 */
	public void setWorkchargeperson(String workchargeperson) {
		super.setByIndex(INDEX_WORKCHARGEPERSON, workchargeperson);
	}

	/**
	 * Returns the value of the '<em><b>Inspectionmethod</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Inspectionmethod</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Inspectionmethod</em>' attribute.
	 * @see #setInspectionmethod(java.lang.String)
	 */
	public String getInspectionmethod() {
		return DataUtil.toString(super.getByIndex(INDEX_INSPECTIONMETHOD, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getInspectionmethod <em>Inspectionmethod</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Inspectionmethod</em>' attribute.
	 * @see #getInspectionmethod()
	 */
	public void setInspectionmethod(String inspectionmethod) {
		super.setByIndex(INDEX_INSPECTIONMETHOD, inspectionmethod);
	}

	/**
	 * Returns the value of the '<em><b>Noticenumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Noticenumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Noticenumber</em>' attribute.
	 * @see #setNoticenumber(java.lang.String)
	 */
	public String getNoticenumber() {
		return DataUtil.toString(super.getByIndex(INDEX_NOTICENUMBER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getNoticenumber <em>Noticenumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Noticenumber</em>' attribute.
	 * @see #getNoticenumber()
	 */
	public void setNoticenumber(String noticenumber) {
		super.setByIndex(INDEX_NOTICENUMBER, noticenumber);
	}

	/**
	 * Returns the value of the '<em><b>Title</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Title</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Title</em>' attribute.
	 * @see #setTitle(java.lang.String)
	 */
	public String getTitle() {
		return DataUtil.toString(super.getByIndex(INDEX_TITLE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getTitle <em>Title</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Title</em>' attribute.
	 * @see #getTitle()
	 */
	public void setTitle(String title) {
		super.setByIndex(INDEX_TITLE, title);
	}

	/**
	 * Returns the value of the '<em><b>Describe</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Describe</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Describe</em>' attribute.
	 * @see #setDescribe(java.lang.String)
	 */
	public String getDescribe() {
		return DataUtil.toString(super.getByIndex(INDEX_DESCRIBE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getDescribe <em>Describe</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Describe</em>' attribute.
	 * @see #getDescribe()
	 */
	public void setDescribe(String describe) {
		super.setByIndex(INDEX_DESCRIBE, describe);
	}

	/**
	 * Returns the value of the '<em><b>Functionallocation</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Functionallocation</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Functionallocation</em>' attribute.
	 * @see #setFunctionallocation(java.lang.String)
	 */
	public String getFunctionallocation() {
		return DataUtil.toString(super.getByIndex(INDEX_FUNCTIONALLOCATION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getFunctionallocation <em>Functionallocation</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Functionallocation</em>' attribute.
	 * @see #getFunctionallocation()
	 */
	public void setFunctionallocation(String functionallocation) {
		super.setByIndex(INDEX_FUNCTIONALLOCATION, functionallocation);
	}

	/**
	 * Returns the value of the '<em><b>Createdate</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Createdate</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Createdate</em>' attribute.
	 * @see #setCreatedate(java.lang.String)
	 */
	public String getCreatedate() {
		return DataUtil.toString(super.getByIndex(INDEX_CREATEDATE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getCreatedate <em>Createdate</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Createdate</em>' attribute.
	 * @see #getCreatedate()
	 */
	public void setCreatedate(String createdate) {
		super.setByIndex(INDEX_CREATEDATE, createdate);
	}

	/**
	 * Returns the value of the '<em><b>Currentstatus</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Currentstatus</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Currentstatus</em>' attribute.
	 * @see #setCurrentstatus(java.lang.String)
	 */
	public String getCurrentstatus() {
		return DataUtil.toString(super.getByIndex(INDEX_CURRENTSTATUS, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getCurrentstatus <em>Currentstatus</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Currentstatus</em>' attribute.
	 * @see #getCurrentstatus()
	 */
	public void setCurrentstatus(String currentstatus) {
		super.setByIndex(INDEX_CURRENTSTATUS, currentstatus);
	}

	/**
	 * Returns the value of the '<em><b>Responsibledepartment</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Responsibledepartment</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Responsibledepartment</em>' attribute.
	 * @see #setResponsibledepartment(java.lang.String)
	 */
	public String getResponsibledepartment() {
		return DataUtil.toString(super.getByIndex(INDEX_RESPONSIBLEDEPARTMENT, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getResponsibledepartment <em>Responsibledepartment</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Responsibledepartment</em>' attribute.
	 * @see #getResponsibledepartment()
	 */
	public void setResponsibledepartment(String responsibledepartment) {
		super.setByIndex(INDEX_RESPONSIBLEDEPARTMENT, responsibledepartment);
	}

	/**
	 * Returns the value of the '<em><b>Process</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Process</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Process</em>' attribute.
	 * @see #setProcess(java.lang.String)
	 */
	public String getProcess() {
		return DataUtil.toString(super.getByIndex(INDEX_PROCESS, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getProcess <em>Process</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Process</em>' attribute.
	 * @see #getProcess()
	 */
	public void setProcess(String process) {
		super.setByIndex(INDEX_PROCESS, process);
	}

	/**
	 * Returns the value of the '<em><b>Processresult</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Processresult</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Processresult</em>' attribute.
	 * @see #setProcessresult(java.lang.String)
	 */
	public String getProcessresult() {
		return DataUtil.toString(super.getByIndex(INDEX_PROCESSRESULT, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getProcessresult <em>Processresult</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Processresult</em>' attribute.
	 * @see #getProcessresult()
	 */
	public void setProcessresult(String processresult) {
		super.setByIndex(INDEX_PROCESSRESULT, processresult);
	}

	/**
	 * Returns the value of the '<em><b>Strategyadjustment</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Strategyadjustment</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Strategyadjustment</em>' attribute.
	 * @see #setStrategyadjustment(java.util.Date)
	 */
	public Date getStrategyadjustment() {
		return DataUtil.toDate(super.getByIndex(INDEX_STRATEGYADJUSTMENT, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getStrategyadjustment <em>Strategyadjustment</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Strategyadjustment</em>' attribute.
	 * @see #getStrategyadjustment()
	 */
	public void setStrategyadjustment(Date strategyadjustment) {
		super.setByIndex(INDEX_STRATEGYADJUSTMENT, strategyadjustment);
	}

	/**
	 * Returns the value of the '<em><b>Nondestructive</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Nondestructive</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Nondestructive</em>' attribute.
	 * @see #setNondestructive(java.lang.String)
	 */
	public String getNondestructive() {
		return DataUtil.toString(super.getByIndex(INDEX_NONDESTRUCTIVE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getNondestructive <em>Nondestructive</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Nondestructive</em>' attribute.
	 * @see #getNondestructive()
	 */
	public void setNondestructive(String nondestructive) {
		super.setByIndex(INDEX_NONDESTRUCTIVE, nondestructive);
	}

	/**
	 * Returns the value of the '<em><b>Responsibleperson</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Responsibleperson</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Responsibleperson</em>' attribute.
	 * @see #setResponsibleperson(java.lang.String)
	 */
	public String getResponsibleperson() {
		return DataUtil.toString(super.getByIndex(INDEX_RESPONSIBLEPERSON, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getResponsibleperson <em>Responsibleperson</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Responsibleperson</em>' attribute.
	 * @see #getResponsibleperson()
	 */
	public void setResponsibleperson(String responsibleperson) {
		super.setByIndex(INDEX_RESPONSIBLEPERSON, responsibleperson);
	}

	/**
	 * Returns the value of the '<em><b>Fj</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Fj</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Fj</em>' attribute.
	 * @see #setFj(java.lang.String)
	 */
	public String getFj() {
		return DataUtil.toString(super.getByIndex(INDEX_FJ, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getFj <em>Fj</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Fj</em>' attribute.
	 * @see #getFj()
	 */
	public void setFj(String fj) {
		super.setByIndex(INDEX_FJ, fj);
	}

	/**
	 * Returns the value of the '<em><b>Fildid</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Fildid</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Fildid</em>' attribute.
	 * @see #setFildid(java.lang.String)
	 */
	public String getFildid() {
		return DataUtil.toString(super.getByIndex(INDEX_FILDID, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getFildid <em>Fildid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Fildid</em>' attribute.
	 * @see #getFildid()
	 */
	public void setFildid(String fildid) {
		super.setByIndex(INDEX_FILDID, fildid);
	}

	/**
	 * Returns the value of the '<em><b>Fildpath</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Fildpath</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Fildpath</em>' attribute.
	 * @see #setFildpath(java.lang.String)
	 */
	public String getFildpath() {
		return DataUtil.toString(super.getByIndex(INDEX_FILDPATH, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getFildpath <em>Fildpath</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Fildpath</em>' attribute.
	 * @see #getFildpath()
	 */
	public void setFildpath(String fildpath) {
		super.setByIndex(INDEX_FILDPATH, fildpath);
	}

	/**
	 * Returns the value of the '<em><b>Deletetime</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Deletetime</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Deletetime</em>' attribute.
	 * @see #setDeletetime(java.lang.String)
	 */
	public String getDeletetime() {
		return DataUtil.toString(super.getByIndex(INDEX_DELETETIME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getDeletetime <em>Deletetime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Deletetime</em>' attribute.
	 * @see #getDeletetime()
	 */
	public void setDeletetime(String deletetime) {
		super.setByIndex(INDEX_DELETETIME, deletetime);
	}

	/**
	 * Returns the value of the '<em><b>Deleteperson</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Deleteperson</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Deleteperson</em>' attribute.
	 * @see #setDeleteperson(java.lang.String)
	 */
	public String getDeleteperson() {
		return DataUtil.toString(super.getByIndex(INDEX_DELETEPERSON, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getDeleteperson <em>Deleteperson</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Deleteperson</em>' attribute.
	 * @see #getDeleteperson()
	 */
	public void setDeleteperson(String deleteperson) {
		super.setByIndex(INDEX_DELETEPERSON, deleteperson);
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