/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.weldingmanagement.QualityBackup.impl;

import com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup;
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
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getRounds <em>Rounds</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getQualitynumber <em>Qualitynumber</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getEdition <em>Edition</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getApplyno <em>Applyno</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getTicketnumber <em>Ticketnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getDescribe <em>Describe</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getPosition <em>Position</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getAssigned <em>Assigned</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getFj <em>Fj</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getState <em>State</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getIsdel <em>Isdel</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getJd <em>Jd</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getJz <em>Jz</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getWqp_statu <em>Wqp_statu</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getLevel <em>Level</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getForm <em>Form</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getMajor <em>Major</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getNdtmethod_proportions <em>Ndtmethod_proportions</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getPrewelder <em>Prewelder</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getSolidwelder <em>Solidwelder</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getChargeperson <em>Chargeperson</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getFilepath <em>Filepath</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getFilename <em>Filename</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getCreatetime <em>Createtime</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getName <em>Name</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getEquiaxedgraph <em>Equiaxedgraph</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getWeldnumber <em>Weldnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getCardnumber_edtion <em>Cardnumber_edtion</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getWelding_method <em>Welding_method</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getGeographicalposition <em>Geographicalposition</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getModel_specifications <em>Model_specifications</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getBatchnumber <em>Batchnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getUppername <em>Uppername</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getDownname <em>Downname</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getComponent1interfacesize <em>Component1interfacesize</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getComponent2interfacesize <em>Component2interfacesize</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getComponent1interfacethickness <em>Component1interfacethickness</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getComponent2interfacethickness <em>Component2interfacethickness</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getComponent1material <em>Component1material</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getComponent2material <em>Component2material</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getWorkingprocedure <em>Workingprocedure</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getProcesssteps <em>Processsteps</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getWeldertype <em>Weldertype</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getDynamicgeneration <em>Dynamicgeneration</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getName1 <em>Name1</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getName2 <em>Name2</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getName3 <em>Name3</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getName4 <em>Name4</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getValue1 <em>Value1</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getValue2 <em>Value2</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getValue3 <em>Value3</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getValue4 <em>Value4</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getApplicant <em>Applicant</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getApplytime <em>Applytime</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getExaminant <em>Examinant</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getAuditor <em>Auditor</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getReviewer <em>Reviewer</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getCcry <em>Ccry</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getProcessinstid <em>Processinstid</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getFildid <em>Fildid</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getScsj <em>Scsj</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getFhsj <em>Fhsj</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getShsj <em>Shsj</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.impl.WeldingQualityBackupImpl#getRelationid <em>Relationid</em>}</li>
 * </ul>
 * </p>
 *
 * @extends ExtendedDataObjectImpl;
 *
 * @implements WeldingQualityBackup;
 */

public class WeldingQualityBackupImpl extends ExtendedDataObjectImpl implements WeldingQualityBackup {
	/**
	 * Comment for <code>serialVersionUID</code>
	 */
	private static final long serialVersionUID = 1L;
	public final static int INDEX_UUID = 0;
	public final static int INDEX_ROUNDS = 1;
	public final static int INDEX_QUALITYNUMBER = 2;
	public final static int INDEX_EDITION = 3;
	public final static int INDEX_APPLYNO = 4;
	public final static int INDEX_TICKETNUMBER = 5;
	public final static int INDEX_DESCRIBE = 6;
	public final static int INDEX_POSITION = 7;
	public final static int INDEX_ASSIGNED = 8;
	public final static int INDEX_FJ = 9;
	public final static int INDEX_STATE = 10;
	public final static int INDEX_ISDEL = 11;
	public final static int INDEX_JD = 12;
	public final static int INDEX_JZ = 13;
	public final static int INDEX_WQP_STATU = 14;
	public final static int INDEX_LEVEL = 15;
	public final static int INDEX_FORM = 16;
	public final static int INDEX_MAJOR = 17;
	public final static int INDEX_NDTMETHOD_PROPORTIONS = 18;
	public final static int INDEX_PREWELDER = 19;
	public final static int INDEX_SOLIDWELDER = 20;
	public final static int INDEX_CHARGEPERSON = 21;
	public final static int INDEX_FILEPATH = 22;
	public final static int INDEX_FILENAME = 23;
	public final static int INDEX_CREATETIME = 24;
	public final static int INDEX_NAME = 25;
	public final static int INDEX_EQUIAXEDGRAPH = 26;
	public final static int INDEX_WELDNUMBER = 27;
	public final static int INDEX_CARDNUMBER_EDTION = 28;
	public final static int INDEX_WELDING_METHOD = 29;
	public final static int INDEX_GEOGRAPHICALPOSITION = 30;
	public final static int INDEX_MODEL_SPECIFICATIONS = 31;
	public final static int INDEX_BATCHNUMBER = 32;
	public final static int INDEX_UPPERNAME = 33;
	public final static int INDEX_DOWNNAME = 34;
	public final static int INDEX_COMPONENT1INTERFACESIZE = 35;
	public final static int INDEX_COMPONENT2INTERFACESIZE = 36;
	public final static int INDEX_COMPONENT1INTERFACETHICKNESS = 37;
	public final static int INDEX_COMPONENT2INTERFACETHICKNESS = 38;
	public final static int INDEX_COMPONENT1MATERIAL = 39;
	public final static int INDEX_COMPONENT2MATERIAL = 40;
	public final static int INDEX_WORKINGPROCEDURE = 41;
	public final static int INDEX_PROCESSSTEPS = 42;
	public final static int INDEX_WELDERTYPE = 43;
	public final static int INDEX_DYNAMICGENERATION = 44;
	public final static int INDEX_NAME1 = 45;
	public final static int INDEX_NAME2 = 46;
	public final static int INDEX_NAME3 = 47;
	public final static int INDEX_NAME4 = 48;
	public final static int INDEX_VALUE1 = 49;
	public final static int INDEX_VALUE2 = 50;
	public final static int INDEX_VALUE3 = 51;
	public final static int INDEX_VALUE4 = 52;
	public final static int INDEX_APPLICANT = 53;
	public final static int INDEX_APPLYTIME = 54;
	public final static int INDEX_EXAMINANT = 55;
	public final static int INDEX_AUDITOR = 56;
	public final static int INDEX_REVIEWER = 57;
	public final static int INDEX_CCRY = 58;
	public final static int INDEX_PROCESSINSTID = 59;
	public final static int INDEX_FILDID = 60;
	public final static int INDEX_SCSJ = 61;
	public final static int INDEX_FHSJ = 62;
	public final static int INDEX_SHSJ = 63;
	public final static int INDEX_RELATIONID = 64;
	public static final int SDO_PROPERTY_COUNT = 65;

	public static final int EXTENDED_PROPERTY_COUNT = -1;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public WeldingQualityBackupImpl() {
		this(TYPE);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public WeldingQualityBackupImpl(Type type) {
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
	 * Returns the value of the '<em><b>Rounds</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Rounds</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Rounds</em>' attribute.
	 * @see #setRounds(java.lang.String)
	 */
	public String getRounds() {
		return DataUtil.toString(super.getByIndex(INDEX_ROUNDS, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getRounds <em>Rounds</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Rounds</em>' attribute.
	 * @see #getRounds()
	 */
	public void setRounds(String rounds) {
		super.setByIndex(INDEX_ROUNDS, rounds);
	}

	/**
	 * Returns the value of the '<em><b>Qualitynumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Qualitynumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Qualitynumber</em>' attribute.
	 * @see #setQualitynumber(java.lang.String)
	 */
	public String getQualitynumber() {
		return DataUtil.toString(super.getByIndex(INDEX_QUALITYNUMBER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getQualitynumber <em>Qualitynumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Qualitynumber</em>' attribute.
	 * @see #getQualitynumber()
	 */
	public void setQualitynumber(String qualitynumber) {
		super.setByIndex(INDEX_QUALITYNUMBER, qualitynumber);
	}

	/**
	 * Returns the value of the '<em><b>Edition</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Edition</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Edition</em>' attribute.
	 * @see #setEdition(java.lang.String)
	 */
	public String getEdition() {
		return DataUtil.toString(super.getByIndex(INDEX_EDITION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getEdition <em>Edition</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Edition</em>' attribute.
	 * @see #getEdition()
	 */
	public void setEdition(String edition) {
		super.setByIndex(INDEX_EDITION, edition);
	}

	/**
	 * Returns the value of the '<em><b>Applyno</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Applyno</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Applyno</em>' attribute.
	 * @see #setApplyno(java.lang.String)
	 */
	public String getApplyno() {
		return DataUtil.toString(super.getByIndex(INDEX_APPLYNO, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getApplyno <em>Applyno</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Applyno</em>' attribute.
	 * @see #getApplyno()
	 */
	public void setApplyno(String applyno) {
		super.setByIndex(INDEX_APPLYNO, applyno);
	}

	/**
	 * Returns the value of the '<em><b>Ticketnumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Ticketnumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Ticketnumber</em>' attribute.
	 * @see #setTicketnumber(java.lang.String)
	 */
	public String getTicketnumber() {
		return DataUtil.toString(super.getByIndex(INDEX_TICKETNUMBER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getTicketnumber <em>Ticketnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Ticketnumber</em>' attribute.
	 * @see #getTicketnumber()
	 */
	public void setTicketnumber(String ticketnumber) {
		super.setByIndex(INDEX_TICKETNUMBER, ticketnumber);
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
	 * Returns the value of the '<em><b>Position</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Position</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Position</em>' attribute.
	 * @see #setPosition(java.lang.String)
	 */
	public String getPosition() {
		return DataUtil.toString(super.getByIndex(INDEX_POSITION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getPosition <em>Position</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Position</em>' attribute.
	 * @see #getPosition()
	 */
	public void setPosition(String position) {
		super.setByIndex(INDEX_POSITION, position);
	}

	/**
	 * Returns the value of the '<em><b>Assigned</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Assigned</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Assigned</em>' attribute.
	 * @see #setAssigned(java.lang.String)
	 */
	public String getAssigned() {
		return DataUtil.toString(super.getByIndex(INDEX_ASSIGNED, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getAssigned <em>Assigned</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Assigned</em>' attribute.
	 * @see #getAssigned()
	 */
	public void setAssigned(String assigned) {
		super.setByIndex(INDEX_ASSIGNED, assigned);
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
	 * Returns the value of the '<em><b>Wqp_statu</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Wqp_statu</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Wqp_statu</em>' attribute.
	 * @see #setWqp_statu(java.lang.String)
	 */
	public String getWqp_statu() {
		return DataUtil.toString(super.getByIndex(INDEX_WQP_STATU, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getWqp_statu <em>Wqp_statu</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Wqp_statu</em>' attribute.
	 * @see #getWqp_statu()
	 */
	public void setWqp_statu(String wqp_statu) {
		super.setByIndex(INDEX_WQP_STATU, wqp_statu);
	}

	/**
	 * Returns the value of the '<em><b>Level</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Level</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Level</em>' attribute.
	 * @see #setLevel(java.lang.String)
	 */
	public String getLevel() {
		return DataUtil.toString(super.getByIndex(INDEX_LEVEL, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getLevel <em>Level</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Level</em>' attribute.
	 * @see #getLevel()
	 */
	public void setLevel(String level) {
		super.setByIndex(INDEX_LEVEL, level);
	}

	/**
	 * Returns the value of the '<em><b>Form</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Form</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Form</em>' attribute.
	 * @see #setForm(java.lang.String)
	 */
	public String getForm() {
		return DataUtil.toString(super.getByIndex(INDEX_FORM, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getForm <em>Form</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Form</em>' attribute.
	 * @see #getForm()
	 */
	public void setForm(String form) {
		super.setByIndex(INDEX_FORM, form);
	}

	/**
	 * Returns the value of the '<em><b>Major</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Major</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Major</em>' attribute.
	 * @see #setMajor(java.lang.String)
	 */
	public String getMajor() {
		return DataUtil.toString(super.getByIndex(INDEX_MAJOR, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getMajor <em>Major</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Major</em>' attribute.
	 * @see #getMajor()
	 */
	public void setMajor(String major) {
		super.setByIndex(INDEX_MAJOR, major);
	}

	/**
	 * Returns the value of the '<em><b>Ndtmethod_proportions</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Ndtmethod_proportions</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Ndtmethod_proportions</em>' attribute.
	 * @see #setNdtmethod_proportions(java.lang.String)
	 */
	public String getNdtmethod_proportions() {
		return DataUtil.toString(super.getByIndex(INDEX_NDTMETHOD_PROPORTIONS, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getNdtmethod_proportions <em>Ndtmethod_proportions</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Ndtmethod_proportions</em>' attribute.
	 * @see #getNdtmethod_proportions()
	 */
	public void setNdtmethod_proportions(String ndtmethod_proportions) {
		super.setByIndex(INDEX_NDTMETHOD_PROPORTIONS, ndtmethod_proportions);
	}

	/**
	 * Returns the value of the '<em><b>Prewelder</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Prewelder</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Prewelder</em>' attribute.
	 * @see #setPrewelder(java.lang.String)
	 */
	public String getPrewelder() {
		return DataUtil.toString(super.getByIndex(INDEX_PREWELDER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getPrewelder <em>Prewelder</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Prewelder</em>' attribute.
	 * @see #getPrewelder()
	 */
	public void setPrewelder(String prewelder) {
		super.setByIndex(INDEX_PREWELDER, prewelder);
	}

	/**
	 * Returns the value of the '<em><b>Solidwelder</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Solidwelder</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Solidwelder</em>' attribute.
	 * @see #setSolidwelder(java.lang.String)
	 */
	public String getSolidwelder() {
		return DataUtil.toString(super.getByIndex(INDEX_SOLIDWELDER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getSolidwelder <em>Solidwelder</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Solidwelder</em>' attribute.
	 * @see #getSolidwelder()
	 */
	public void setSolidwelder(String solidwelder) {
		super.setByIndex(INDEX_SOLIDWELDER, solidwelder);
	}

	/**
	 * Returns the value of the '<em><b>Chargeperson</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Chargeperson</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Chargeperson</em>' attribute.
	 * @see #setChargeperson(java.lang.String)
	 */
	public String getChargeperson() {
		return DataUtil.toString(super.getByIndex(INDEX_CHARGEPERSON, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getChargeperson <em>Chargeperson</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Chargeperson</em>' attribute.
	 * @see #getChargeperson()
	 */
	public void setChargeperson(String chargeperson) {
		super.setByIndex(INDEX_CHARGEPERSON, chargeperson);
	}

	/**
	 * Returns the value of the '<em><b>Filepath</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Filepath</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Filepath</em>' attribute.
	 * @see #setFilepath(java.lang.String)
	 */
	public String getFilepath() {
		return DataUtil.toString(super.getByIndex(INDEX_FILEPATH, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getFilepath <em>Filepath</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Filepath</em>' attribute.
	 * @see #getFilepath()
	 */
	public void setFilepath(String filepath) {
		super.setByIndex(INDEX_FILEPATH, filepath);
	}

	/**
	 * Returns the value of the '<em><b>Filename</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Filename</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Filename</em>' attribute.
	 * @see #setFilename(java.lang.String)
	 */
	public String getFilename() {
		return DataUtil.toString(super.getByIndex(INDEX_FILENAME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getFilename <em>Filename</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Filename</em>' attribute.
	 * @see #getFilename()
	 */
	public void setFilename(String filename) {
		super.setByIndex(INDEX_FILENAME, filename);
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
	 * Returns the value of the '<em><b>Name</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Name</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Name</em>' attribute.
	 * @see #setName(java.lang.String)
	 */
	public String getName() {
		return DataUtil.toString(super.getByIndex(INDEX_NAME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getName <em>Name</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Name</em>' attribute.
	 * @see #getName()
	 */
	public void setName(String name) {
		super.setByIndex(INDEX_NAME, name);
	}

	/**
	 * Returns the value of the '<em><b>Equiaxedgraph</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Equiaxedgraph</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Equiaxedgraph</em>' attribute.
	 * @see #setEquiaxedgraph(java.lang.String)
	 */
	public String getEquiaxedgraph() {
		return DataUtil.toString(super.getByIndex(INDEX_EQUIAXEDGRAPH, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getEquiaxedgraph <em>Equiaxedgraph</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equiaxedgraph</em>' attribute.
	 * @see #getEquiaxedgraph()
	 */
	public void setEquiaxedgraph(String equiaxedgraph) {
		super.setByIndex(INDEX_EQUIAXEDGRAPH, equiaxedgraph);
	}

	/**
	 * Returns the value of the '<em><b>Weldnumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Weldnumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Weldnumber</em>' attribute.
	 * @see #setWeldnumber(java.lang.String)
	 */
	public String getWeldnumber() {
		return DataUtil.toString(super.getByIndex(INDEX_WELDNUMBER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getWeldnumber <em>Weldnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Weldnumber</em>' attribute.
	 * @see #getWeldnumber()
	 */
	public void setWeldnumber(String weldnumber) {
		super.setByIndex(INDEX_WELDNUMBER, weldnumber);
	}

	/**
	 * Returns the value of the '<em><b>Cardnumber_edtion</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Cardnumber_edtion</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Cardnumber_edtion</em>' attribute.
	 * @see #setCardnumber_edtion(java.lang.String)
	 */
	public String getCardnumber_edtion() {
		return DataUtil.toString(super.getByIndex(INDEX_CARDNUMBER_EDTION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getCardnumber_edtion <em>Cardnumber_edtion</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Cardnumber_edtion</em>' attribute.
	 * @see #getCardnumber_edtion()
	 */
	public void setCardnumber_edtion(String cardnumber_edtion) {
		super.setByIndex(INDEX_CARDNUMBER_EDTION, cardnumber_edtion);
	}

	/**
	 * Returns the value of the '<em><b>Welding_method</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Welding_method</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Welding_method</em>' attribute.
	 * @see #setWelding_method(java.lang.String)
	 */
	public String getWelding_method() {
		return DataUtil.toString(super.getByIndex(INDEX_WELDING_METHOD, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getWelding_method <em>Welding_method</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Welding_method</em>' attribute.
	 * @see #getWelding_method()
	 */
	public void setWelding_method(String welding_method) {
		super.setByIndex(INDEX_WELDING_METHOD, welding_method);
	}

	/**
	 * Returns the value of the '<em><b>Geographicalposition</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Geographicalposition</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Geographicalposition</em>' attribute.
	 * @see #setGeographicalposition(java.lang.String)
	 */
	public String getGeographicalposition() {
		return DataUtil.toString(super.getByIndex(INDEX_GEOGRAPHICALPOSITION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getGeographicalposition <em>Geographicalposition</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Geographicalposition</em>' attribute.
	 * @see #getGeographicalposition()
	 */
	public void setGeographicalposition(String geographicalposition) {
		super.setByIndex(INDEX_GEOGRAPHICALPOSITION, geographicalposition);
	}

	/**
	 * Returns the value of the '<em><b>Model_specifications</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Model_specifications</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Model_specifications</em>' attribute.
	 * @see #setModel_specifications(java.lang.String)
	 */
	public String getModel_specifications() {
		return DataUtil.toString(super.getByIndex(INDEX_MODEL_SPECIFICATIONS, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getModel_specifications <em>Model_specifications</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Model_specifications</em>' attribute.
	 * @see #getModel_specifications()
	 */
	public void setModel_specifications(String model_specifications) {
		super.setByIndex(INDEX_MODEL_SPECIFICATIONS, model_specifications);
	}

	/**
	 * Returns the value of the '<em><b>Batchnumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Batchnumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Batchnumber</em>' attribute.
	 * @see #setBatchnumber(java.lang.String)
	 */
	public String getBatchnumber() {
		return DataUtil.toString(super.getByIndex(INDEX_BATCHNUMBER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getBatchnumber <em>Batchnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Batchnumber</em>' attribute.
	 * @see #getBatchnumber()
	 */
	public void setBatchnumber(String batchnumber) {
		super.setByIndex(INDEX_BATCHNUMBER, batchnumber);
	}

	/**
	 * Returns the value of the '<em><b>Uppername</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Uppername</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Uppername</em>' attribute.
	 * @see #setUppername(java.lang.String)
	 */
	public String getUppername() {
		return DataUtil.toString(super.getByIndex(INDEX_UPPERNAME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getUppername <em>Uppername</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Uppername</em>' attribute.
	 * @see #getUppername()
	 */
	public void setUppername(String uppername) {
		super.setByIndex(INDEX_UPPERNAME, uppername);
	}

	/**
	 * Returns the value of the '<em><b>Downname</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Downname</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Downname</em>' attribute.
	 * @see #setDownname(java.lang.String)
	 */
	public String getDownname() {
		return DataUtil.toString(super.getByIndex(INDEX_DOWNNAME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getDownname <em>Downname</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Downname</em>' attribute.
	 * @see #getDownname()
	 */
	public void setDownname(String downname) {
		super.setByIndex(INDEX_DOWNNAME, downname);
	}

	/**
	 * Returns the value of the '<em><b>Component1interfacesize</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Component1interfacesize</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Component1interfacesize</em>' attribute.
	 * @see #setComponent1interfacesize(java.lang.String)
	 */
	public String getComponent1interfacesize() {
		return DataUtil.toString(super.getByIndex(INDEX_COMPONENT1INTERFACESIZE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getComponent1interfacesize <em>Component1interfacesize</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Component1interfacesize</em>' attribute.
	 * @see #getComponent1interfacesize()
	 */
	public void setComponent1interfacesize(String component1interfacesize) {
		super.setByIndex(INDEX_COMPONENT1INTERFACESIZE, component1interfacesize);
	}

	/**
	 * Returns the value of the '<em><b>Component2interfacesize</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Component2interfacesize</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Component2interfacesize</em>' attribute.
	 * @see #setComponent2interfacesize(java.lang.String)
	 */
	public String getComponent2interfacesize() {
		return DataUtil.toString(super.getByIndex(INDEX_COMPONENT2INTERFACESIZE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getComponent2interfacesize <em>Component2interfacesize</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Component2interfacesize</em>' attribute.
	 * @see #getComponent2interfacesize()
	 */
	public void setComponent2interfacesize(String component2interfacesize) {
		super.setByIndex(INDEX_COMPONENT2INTERFACESIZE, component2interfacesize);
	}

	/**
	 * Returns the value of the '<em><b>Component1interfacethickness</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Component1interfacethickness</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Component1interfacethickness</em>' attribute.
	 * @see #setComponent1interfacethickness(java.lang.String)
	 */
	public String getComponent1interfacethickness() {
		return DataUtil.toString(super.getByIndex(INDEX_COMPONENT1INTERFACETHICKNESS, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getComponent1interfacethickness <em>Component1interfacethickness</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Component1interfacethickness</em>' attribute.
	 * @see #getComponent1interfacethickness()
	 */
	public void setComponent1interfacethickness(String component1interfacethickness) {
		super.setByIndex(INDEX_COMPONENT1INTERFACETHICKNESS, component1interfacethickness);
	}

	/**
	 * Returns the value of the '<em><b>Component2interfacethickness</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Component2interfacethickness</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Component2interfacethickness</em>' attribute.
	 * @see #setComponent2interfacethickness(java.lang.String)
	 */
	public String getComponent2interfacethickness() {
		return DataUtil.toString(super.getByIndex(INDEX_COMPONENT2INTERFACETHICKNESS, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getComponent2interfacethickness <em>Component2interfacethickness</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Component2interfacethickness</em>' attribute.
	 * @see #getComponent2interfacethickness()
	 */
	public void setComponent2interfacethickness(String component2interfacethickness) {
		super.setByIndex(INDEX_COMPONENT2INTERFACETHICKNESS, component2interfacethickness);
	}

	/**
	 * Returns the value of the '<em><b>Component1material</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Component1material</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Component1material</em>' attribute.
	 * @see #setComponent1material(java.lang.String)
	 */
	public String getComponent1material() {
		return DataUtil.toString(super.getByIndex(INDEX_COMPONENT1MATERIAL, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getComponent1material <em>Component1material</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Component1material</em>' attribute.
	 * @see #getComponent1material()
	 */
	public void setComponent1material(String component1material) {
		super.setByIndex(INDEX_COMPONENT1MATERIAL, component1material);
	}

	/**
	 * Returns the value of the '<em><b>Component2material</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Component2material</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Component2material</em>' attribute.
	 * @see #setComponent2material(java.lang.String)
	 */
	public String getComponent2material() {
		return DataUtil.toString(super.getByIndex(INDEX_COMPONENT2MATERIAL, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getComponent2material <em>Component2material</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Component2material</em>' attribute.
	 * @see #getComponent2material()
	 */
	public void setComponent2material(String component2material) {
		super.setByIndex(INDEX_COMPONENT2MATERIAL, component2material);
	}

	/**
	 * Returns the value of the '<em><b>Workingprocedure</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Workingprocedure</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Workingprocedure</em>' attribute.
	 * @see #setWorkingprocedure(java.lang.String)
	 */
	public String getWorkingprocedure() {
		return DataUtil.toString(super.getByIndex(INDEX_WORKINGPROCEDURE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getWorkingprocedure <em>Workingprocedure</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Workingprocedure</em>' attribute.
	 * @see #getWorkingprocedure()
	 */
	public void setWorkingprocedure(String workingprocedure) {
		super.setByIndex(INDEX_WORKINGPROCEDURE, workingprocedure);
	}

	/**
	 * Returns the value of the '<em><b>Processsteps</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Processsteps</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Processsteps</em>' attribute.
	 * @see #setProcesssteps(java.lang.String)
	 */
	public String getProcesssteps() {
		return DataUtil.toString(super.getByIndex(INDEX_PROCESSSTEPS, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getProcesssteps <em>Processsteps</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Processsteps</em>' attribute.
	 * @see #getProcesssteps()
	 */
	public void setProcesssteps(String processsteps) {
		super.setByIndex(INDEX_PROCESSSTEPS, processsteps);
	}

	/**
	 * Returns the value of the '<em><b>Weldertype</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Weldertype</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Weldertype</em>' attribute.
	 * @see #setWeldertype(java.lang.String)
	 */
	public String getWeldertype() {
		return DataUtil.toString(super.getByIndex(INDEX_WELDERTYPE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getWeldertype <em>Weldertype</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Weldertype</em>' attribute.
	 * @see #getWeldertype()
	 */
	public void setWeldertype(String weldertype) {
		super.setByIndex(INDEX_WELDERTYPE, weldertype);
	}

	/**
	 * Returns the value of the '<em><b>Dynamicgeneration</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Dynamicgeneration</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Dynamicgeneration</em>' attribute.
	 * @see #setDynamicgeneration(java.lang.String)
	 */
	public String getDynamicgeneration() {
		return DataUtil.toString(super.getByIndex(INDEX_DYNAMICGENERATION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getDynamicgeneration <em>Dynamicgeneration</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Dynamicgeneration</em>' attribute.
	 * @see #getDynamicgeneration()
	 */
	public void setDynamicgeneration(String dynamicgeneration) {
		super.setByIndex(INDEX_DYNAMICGENERATION, dynamicgeneration);
	}

	/**
	 * Returns the value of the '<em><b>Name1</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Name1</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Name1</em>' attribute.
	 * @see #setName1(java.lang.String)
	 */
	public String getName1() {
		return DataUtil.toString(super.getByIndex(INDEX_NAME1, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getName1 <em>Name1</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Name1</em>' attribute.
	 * @see #getName1()
	 */
	public void setName1(String name1) {
		super.setByIndex(INDEX_NAME1, name1);
	}

	/**
	 * Returns the value of the '<em><b>Name2</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Name2</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Name2</em>' attribute.
	 * @see #setName2(java.lang.String)
	 */
	public String getName2() {
		return DataUtil.toString(super.getByIndex(INDEX_NAME2, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getName2 <em>Name2</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Name2</em>' attribute.
	 * @see #getName2()
	 */
	public void setName2(String name2) {
		super.setByIndex(INDEX_NAME2, name2);
	}

	/**
	 * Returns the value of the '<em><b>Name3</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Name3</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Name3</em>' attribute.
	 * @see #setName3(java.lang.String)
	 */
	public String getName3() {
		return DataUtil.toString(super.getByIndex(INDEX_NAME3, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getName3 <em>Name3</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Name3</em>' attribute.
	 * @see #getName3()
	 */
	public void setName3(String name3) {
		super.setByIndex(INDEX_NAME3, name3);
	}

	/**
	 * Returns the value of the '<em><b>Name4</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Name4</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Name4</em>' attribute.
	 * @see #setName4(java.lang.String)
	 */
	public String getName4() {
		return DataUtil.toString(super.getByIndex(INDEX_NAME4, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getName4 <em>Name4</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Name4</em>' attribute.
	 * @see #getName4()
	 */
	public void setName4(String name4) {
		super.setByIndex(INDEX_NAME4, name4);
	}

	/**
	 * Returns the value of the '<em><b>Value1</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Value1</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Value1</em>' attribute.
	 * @see #setValue1(java.lang.String)
	 */
	public String getValue1() {
		return DataUtil.toString(super.getByIndex(INDEX_VALUE1, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getValue1 <em>Value1</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Value1</em>' attribute.
	 * @see #getValue1()
	 */
	public void setValue1(String value1) {
		super.setByIndex(INDEX_VALUE1, value1);
	}

	/**
	 * Returns the value of the '<em><b>Value2</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Value2</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Value2</em>' attribute.
	 * @see #setValue2(java.lang.String)
	 */
	public String getValue2() {
		return DataUtil.toString(super.getByIndex(INDEX_VALUE2, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getValue2 <em>Value2</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Value2</em>' attribute.
	 * @see #getValue2()
	 */
	public void setValue2(String value2) {
		super.setByIndex(INDEX_VALUE2, value2);
	}

	/**
	 * Returns the value of the '<em><b>Value3</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Value3</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Value3</em>' attribute.
	 * @see #setValue3(java.lang.String)
	 */
	public String getValue3() {
		return DataUtil.toString(super.getByIndex(INDEX_VALUE3, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getValue3 <em>Value3</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Value3</em>' attribute.
	 * @see #getValue3()
	 */
	public void setValue3(String value3) {
		super.setByIndex(INDEX_VALUE3, value3);
	}

	/**
	 * Returns the value of the '<em><b>Value4</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Value4</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Value4</em>' attribute.
	 * @see #setValue4(java.lang.String)
	 */
	public String getValue4() {
		return DataUtil.toString(super.getByIndex(INDEX_VALUE4, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getValue4 <em>Value4</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Value4</em>' attribute.
	 * @see #getValue4()
	 */
	public void setValue4(String value4) {
		super.setByIndex(INDEX_VALUE4, value4);
	}

	/**
	 * Returns the value of the '<em><b>Applicant</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Applicant</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Applicant</em>' attribute.
	 * @see #setApplicant(java.lang.String)
	 */
	public String getApplicant() {
		return DataUtil.toString(super.getByIndex(INDEX_APPLICANT, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getApplicant <em>Applicant</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Applicant</em>' attribute.
	 * @see #getApplicant()
	 */
	public void setApplicant(String applicant) {
		super.setByIndex(INDEX_APPLICANT, applicant);
	}

	/**
	 * Returns the value of the '<em><b>Applytime</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Applytime</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Applytime</em>' attribute.
	 * @see #setApplytime(java.lang.String)
	 */
	public String getApplytime() {
		return DataUtil.toString(super.getByIndex(INDEX_APPLYTIME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getApplytime <em>Applytime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Applytime</em>' attribute.
	 * @see #getApplytime()
	 */
	public void setApplytime(String applytime) {
		super.setByIndex(INDEX_APPLYTIME, applytime);
	}

	/**
	 * Returns the value of the '<em><b>Examinant</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Examinant</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Examinant</em>' attribute.
	 * @see #setExaminant(java.lang.String)
	 */
	public String getExaminant() {
		return DataUtil.toString(super.getByIndex(INDEX_EXAMINANT, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getExaminant <em>Examinant</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Examinant</em>' attribute.
	 * @see #getExaminant()
	 */
	public void setExaminant(String examinant) {
		super.setByIndex(INDEX_EXAMINANT, examinant);
	}

	/**
	 * Returns the value of the '<em><b>Auditor</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Auditor</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Auditor</em>' attribute.
	 * @see #setAuditor(java.lang.String)
	 */
	public String getAuditor() {
		return DataUtil.toString(super.getByIndex(INDEX_AUDITOR, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getAuditor <em>Auditor</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Auditor</em>' attribute.
	 * @see #getAuditor()
	 */
	public void setAuditor(String auditor) {
		super.setByIndex(INDEX_AUDITOR, auditor);
	}

	/**
	 * Returns the value of the '<em><b>Reviewer</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Reviewer</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Reviewer</em>' attribute.
	 * @see #setReviewer(java.lang.String)
	 */
	public String getReviewer() {
		return DataUtil.toString(super.getByIndex(INDEX_REVIEWER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getReviewer <em>Reviewer</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Reviewer</em>' attribute.
	 * @see #getReviewer()
	 */
	public void setReviewer(String reviewer) {
		super.setByIndex(INDEX_REVIEWER, reviewer);
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
	 * Returns the value of the '<em><b>Scsj</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Scsj</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Scsj</em>' attribute.
	 * @see #setScsj(java.lang.String)
	 */
	public String getScsj() {
		return DataUtil.toString(super.getByIndex(INDEX_SCSJ, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getScsj <em>Scsj</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Scsj</em>' attribute.
	 * @see #getScsj()
	 */
	public void setScsj(String scsj) {
		super.setByIndex(INDEX_SCSJ, scsj);
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
	 * @see #setFhsj(java.lang.String)
	 */
	public String getFhsj() {
		return DataUtil.toString(super.getByIndex(INDEX_FHSJ, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getFhsj <em>Fhsj</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Fhsj</em>' attribute.
	 * @see #getFhsj()
	 */
	public void setFhsj(String fhsj) {
		super.setByIndex(INDEX_FHSJ, fhsj);
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
	 * @see #setShsj(java.lang.String)
	 */
	public String getShsj() {
		return DataUtil.toString(super.getByIndex(INDEX_SHSJ, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getShsj <em>Shsj</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Shsj</em>' attribute.
	 * @see #getShsj()
	 */
	public void setShsj(String shsj) {
		super.setByIndex(INDEX_SHSJ, shsj);
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


}