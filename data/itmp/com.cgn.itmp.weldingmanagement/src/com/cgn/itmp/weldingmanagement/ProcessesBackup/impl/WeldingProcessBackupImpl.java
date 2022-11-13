/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.weldingmanagement.ProcessesBackup.impl;

import com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup;
import com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessStepsBackup;
import com.primeton.ext.data.sdo.DataUtil;
import com.primeton.ext.data.sdo.ExtendedDataObjectImpl;

import commonj.sdo.Type;

import java.util.Date;
import java.util.List;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Test</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.impl.WeldingProcessBackupImpl#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.impl.WeldingProcessBackupImpl#getProcessnam <em>Processnam</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.impl.WeldingProcessBackupImpl#getTemplatenumber <em>Templatenumber</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.impl.WeldingProcessBackupImpl#getNote <em>Note</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.impl.WeldingProcessBackupImpl#getFounder <em>Founder</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.impl.WeldingProcessBackupImpl#getCreatetime <em>Createtime</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.impl.WeldingProcessBackupImpl#getState <em>State</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.impl.WeldingProcessBackupImpl#getIsdel <em>Isdel</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.impl.WeldingProcessBackupImpl#getScope <em>Scope</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.impl.WeldingProcessBackupImpl#getJd <em>Jd</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.impl.WeldingProcessBackupImpl#getProcessinstid <em>Processinstid</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.impl.WeldingProcessBackupImpl#getScry <em>Scry</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.impl.WeldingProcessBackupImpl#getScsj <em>Scsj</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.impl.WeldingProcessBackupImpl#getShry <em>Shry</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.impl.WeldingProcessBackupImpl#getShsj <em>Shsj</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.impl.WeldingProcessBackupImpl#getFhry <em>Fhry</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.impl.WeldingProcessBackupImpl#getFhsj <em>Fhsj</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.impl.WeldingProcessBackupImpl#getCcry <em>Ccry</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.impl.WeldingProcessBackupImpl#getEditor <em>Editor</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.impl.WeldingProcessBackupImpl#getEdittime <em>Edittime</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.impl.WeldingProcessBackupImpl#getRelationid <em>Relationid</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.impl.WeldingProcessBackupImpl#getWeldingProcessStepsBackups <em>WeldingProcessStepsBackups</em>}</li>
 * </ul>
 * </p>
 *
 * @extends ExtendedDataObjectImpl;
 *
 * @implements WeldingProcessBackup;
 */

public class WeldingProcessBackupImpl extends ExtendedDataObjectImpl implements WeldingProcessBackup {
	/**
	 * Comment for <code>serialVersionUID</code>
	 */
	private static final long serialVersionUID = 1L;
	public final static int INDEX_UUID = 0;
	public final static int INDEX_PROCESSNAM = 1;
	public final static int INDEX_TEMPLATENUMBER = 2;
	public final static int INDEX_NOTE = 3;
	public final static int INDEX_FOUNDER = 4;
	public final static int INDEX_CREATETIME = 5;
	public final static int INDEX_STATE = 6;
	public final static int INDEX_ISDEL = 7;
	public final static int INDEX_SCOPE = 8;
	public final static int INDEX_JD = 9;
	public final static int INDEX_PROCESSINSTID = 10;
	public final static int INDEX_SCRY = 11;
	public final static int INDEX_SCSJ = 12;
	public final static int INDEX_SHRY = 13;
	public final static int INDEX_SHSJ = 14;
	public final static int INDEX_FHRY = 15;
	public final static int INDEX_FHSJ = 16;
	public final static int INDEX_CCRY = 17;
	public final static int INDEX_EDITOR = 18;
	public final static int INDEX_EDITTIME = 19;
	public final static int INDEX_RELATIONID = 20;
	public final static int INDEX_WELDINGPROCESSSTEPSBACKUPS = 21;
	public static final int SDO_PROPERTY_COUNT = 22;

	public static final int EXTENDED_PROPERTY_COUNT = -1;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public WeldingProcessBackupImpl() {
		this(TYPE);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public WeldingProcessBackupImpl(Type type) {
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
	 * Returns the value of the '<em><b>Processnam</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Processnam</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Processnam</em>' attribute.
	 * @see #setProcessnam(java.lang.String)
	 */
	public String getProcessnam() {
		return DataUtil.toString(super.getByIndex(INDEX_PROCESSNAM, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getProcessnam <em>Processnam</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Processnam</em>' attribute.
	 * @see #getProcessnam()
	 */
	public void setProcessnam(String processnam) {
		super.setByIndex(INDEX_PROCESSNAM, processnam);
	}

	/**
	 * Returns the value of the '<em><b>Templatenumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Templatenumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Templatenumber</em>' attribute.
	 * @see #setTemplatenumber(java.lang.String)
	 */
	public String getTemplatenumber() {
		return DataUtil.toString(super.getByIndex(INDEX_TEMPLATENUMBER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getTemplatenumber <em>Templatenumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Templatenumber</em>' attribute.
	 * @see #getTemplatenumber()
	 */
	public void setTemplatenumber(String templatenumber) {
		super.setByIndex(INDEX_TEMPLATENUMBER, templatenumber);
	}

	/**
	 * Returns the value of the '<em><b>Note</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Note</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Note</em>' attribute.
	 * @see #setNote(java.lang.String)
	 */
	public String getNote() {
		return DataUtil.toString(super.getByIndex(INDEX_NOTE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getNote <em>Note</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Note</em>' attribute.
	 * @see #getNote()
	 */
	public void setNote(String note) {
		super.setByIndex(INDEX_NOTE, note);
	}

	/**
	 * Returns the value of the '<em><b>Founder</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Founder</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Founder</em>' attribute.
	 * @see #setFounder(java.lang.String)
	 */
	public String getFounder() {
		return DataUtil.toString(super.getByIndex(INDEX_FOUNDER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getFounder <em>Founder</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Founder</em>' attribute.
	 * @see #getFounder()
	 */
	public void setFounder(String founder) {
		super.setByIndex(INDEX_FOUNDER, founder);
	}

	/**
	 * Returns the value of the '<em><b>Createtime</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Createtime</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Createtime</em>' attribute.
	 * @see #setCreatetime(java.lang.String)
	 */
	public String getCreatetime() {
		return DataUtil.toString(super.getByIndex(INDEX_CREATETIME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getCreatetime <em>Createtime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Createtime</em>' attribute.
	 * @see #getCreatetime()
	 */
	public void setCreatetime(String createtime) {
		super.setByIndex(INDEX_CREATETIME, createtime);
	}

	/**
	 * Returns the value of the '<em><b>State</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>State</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>State</em>' attribute.
	 * @see #setState(java.lang.String)
	 */
	public String getState() {
		return DataUtil.toString(super.getByIndex(INDEX_STATE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getState <em>State</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>State</em>' attribute.
	 * @see #getState()
	 */
	public void setState(String state) {
		super.setByIndex(INDEX_STATE, state);
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
	 * Returns the value of the '<em><b>Scope</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Scope</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Scope</em>' attribute.
	 * @see #setScope(java.lang.String)
	 */
	public String getScope() {
		return DataUtil.toString(super.getByIndex(INDEX_SCOPE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getScope <em>Scope</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Scope</em>' attribute.
	 * @see #getScope()
	 */
	public void setScope(String scope) {
		super.setByIndex(INDEX_SCOPE, scope);
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
	 * Returns the value of the '<em><b>Processinstid</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Processinstid</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Processinstid</em>' attribute.
	 * @see #setProcessinstid(java.lang.String)
	 */
	public String getProcessinstid() {
		return DataUtil.toString(super.getByIndex(INDEX_PROCESSINSTID, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getProcessinstid <em>Processinstid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Processinstid</em>' attribute.
	 * @see #getProcessinstid()
	 */
	public void setProcessinstid(String processinstid) {
		super.setByIndex(INDEX_PROCESSINSTID, processinstid);
	}

	/**
	 * Returns the value of the '<em><b>Scry</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Scry</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Scry</em>' attribute.
	 * @see #setScry(java.lang.String)
	 */
	public String getScry() {
		return DataUtil.toString(super.getByIndex(INDEX_SCRY, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getScry <em>Scry</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Scry</em>' attribute.
	 * @see #getScry()
	 */
	public void setScry(String scry) {
		super.setByIndex(INDEX_SCRY, scry);
	}

	/**
	 * Returns the value of the '<em><b>Scsj</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Scsj</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Scsj</em>' attribute.
	 * @see #setScsj(java.util.Date)
	 */
	public Date getScsj() {
		return DataUtil.toDate(super.getByIndex(INDEX_SCSJ, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getScsj <em>Scsj</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Scsj</em>' attribute.
	 * @see #getScsj()
	 */
	public void setScsj(Date scsj) {
		super.setByIndex(INDEX_SCSJ, scsj);
	}

	/**
	 * Returns the value of the '<em><b>Shry</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Shry</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Shry</em>' attribute.
	 * @see #setShry(java.lang.String)
	 */
	public String getShry() {
		return DataUtil.toString(super.getByIndex(INDEX_SHRY, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getShry <em>Shry</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Shry</em>' attribute.
	 * @see #getShry()
	 */
	public void setShry(String shry) {
		super.setByIndex(INDEX_SHRY, shry);
	}

	/**
	 * Returns the value of the '<em><b>Shsj</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Shsj</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Shsj</em>' attribute.
	 * @see #setShsj(java.util.Date)
	 */
	public Date getShsj() {
		return DataUtil.toDate(super.getByIndex(INDEX_SHSJ, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getShsj <em>Shsj</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Shsj</em>' attribute.
	 * @see #getShsj()
	 */
	public void setShsj(Date shsj) {
		super.setByIndex(INDEX_SHSJ, shsj);
	}

	/**
	 * Returns the value of the '<em><b>Fhry</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Fhry</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Fhry</em>' attribute.
	 * @see #setFhry(java.lang.String)
	 */
	public String getFhry() {
		return DataUtil.toString(super.getByIndex(INDEX_FHRY, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getFhry <em>Fhry</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Fhry</em>' attribute.
	 * @see #getFhry()
	 */
	public void setFhry(String fhry) {
		super.setByIndex(INDEX_FHRY, fhry);
	}

	/**
	 * Returns the value of the '<em><b>Fhsj</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Fhsj</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Fhsj</em>' attribute.
	 * @see #setFhsj(java.util.Date)
	 */
	public Date getFhsj() {
		return DataUtil.toDate(super.getByIndex(INDEX_FHSJ, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getFhsj <em>Fhsj</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Fhsj</em>' attribute.
	 * @see #getFhsj()
	 */
	public void setFhsj(Date fhsj) {
		super.setByIndex(INDEX_FHSJ, fhsj);
	}

	/**
	 * Returns the value of the '<em><b>Ccry</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Ccry</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Ccry</em>' attribute.
	 * @see #setCcry(java.lang.String)
	 */
	public String getCcry() {
		return DataUtil.toString(super.getByIndex(INDEX_CCRY, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getCcry <em>Ccry</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Ccry</em>' attribute.
	 * @see #getCcry()
	 */
	public void setCcry(String ccry) {
		super.setByIndex(INDEX_CCRY, ccry);
	}

	/**
	 * Returns the value of the '<em><b>Editor</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Editor</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Editor</em>' attribute.
	 * @see #setEditor(java.lang.String)
	 */
	public String getEditor() {
		return DataUtil.toString(super.getByIndex(INDEX_EDITOR, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getEditor <em>Editor</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Editor</em>' attribute.
	 * @see #getEditor()
	 */
	public void setEditor(String editor) {
		super.setByIndex(INDEX_EDITOR, editor);
	}

	/**
	 * Returns the value of the '<em><b>Edittime</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Edittime</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Edittime</em>' attribute.
	 * @see #setEdittime(java.util.Date)
	 */
	public Date getEdittime() {
		return DataUtil.toDate(super.getByIndex(INDEX_EDITTIME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getEdittime <em>Edittime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Edittime</em>' attribute.
	 * @see #getEdittime()
	 */
	public void setEdittime(Date edittime) {
		super.setByIndex(INDEX_EDITTIME, edittime);
	}

	/**
	 * Returns the value of the '<em><b>Relationid</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Relationid</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Relationid</em>' attribute.
	 * @see #setRelationid(java.lang.String)
	 */
	public String getRelationid() {
		return DataUtil.toString(super.getByIndex(INDEX_RELATIONID, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getRelationid <em>Relationid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Relationid</em>' attribute.
	 * @see #getRelationid()
	 */
	public void setRelationid(String relationid) {
		super.setByIndex(INDEX_RELATIONID, relationid);
	}

	/**
	 * Returns the value of the '<em><b>WeldingProcessStepsBackups</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>WeldingProcessStepsBackups</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>WeldingProcessStepsBackups</em>' attribute.
	 * @see #setWeldingProcessStepsBackups(com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessStepsBackup)
	 */
	public List<WeldingProcessStepsBackup> getWeldingProcessStepsBackups() {
		return (List<WeldingProcessStepsBackup>) getList(INDEX_WELDINGPROCESSSTEPSBACKUPS, true);
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getWeldingProcessStepsBackups <em>WeldingProcessStepsBackups</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>WeldingProcessStepsBackups</em>' attribute.
	 * @see #getWeldingProcessStepsBackups()
	 */
	public void setWeldingProcessStepsBackups(List<WeldingProcessStepsBackup> weldingProcessStepsBackups) {
		super.setByIndex(INDEX_WELDINGPROCESSSTEPSBACKUPS, weldingProcessStepsBackups);
	}


}