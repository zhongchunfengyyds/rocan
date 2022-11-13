/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.weldingmanagement.Review.impl;

import com.cgn.itmp.weldingmanagement.Review.Record;
import com.cgn.itmp.weldingmanagement.Review.Reviewrecord_mf;
import com.primeton.ext.data.sdo.DataUtil;
import com.primeton.ext.data.sdo.ExtendedDataObjectImpl;

import commonj.sdo.Type;

import java.util.List;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Test</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Review.impl.Reviewrecord_mfImpl#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Review.impl.Reviewrecord_mfImpl#getRecord_name <em>Record_name</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Review.impl.Reviewrecord_mfImpl#getRecord_person <em>Record_person</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Review.impl.Reviewrecord_mfImpl#getRecord_time <em>Record_time</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Review.impl.Reviewrecord_mfImpl#getReview_person <em>Review_person</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Review.impl.Reviewrecord_mfImpl#getReview_time <em>Review_time</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Review.impl.Reviewrecord_mfImpl#getQw <em>Qw</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Review.impl.Reviewrecord_mfImpl#getJd <em>Jd</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Review.impl.Reviewrecord_mfImpl#getJz <em>Jz</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Review.impl.Reviewrecord_mfImpl#getIsdel <em>Isdel</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Review.impl.Reviewrecord_mfImpl#getCopyperson <em>Copyperson</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Review.impl.Reviewrecord_mfImpl#getTcomany <em>Tcomany</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Review.impl.Reviewrecord_mfImpl#getOverhaul <em>Overhaul</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Review.impl.Reviewrecord_mfImpl#getProcessInstId <em>ProcessInstId</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Review.impl.Reviewrecord_mfImpl#getJhry <em>Jhry</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Review.impl.Reviewrecord_mfImpl#getCcry <em>Ccry</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Review.impl.Reviewrecord_mfImpl#getApplicant <em>Applicant</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Review.impl.Reviewrecord_mfImpl#getApplicanttime <em>Applicanttime</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Review.impl.Reviewrecord_mfImpl#getProcessStatus <em>ProcessStatus</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Review.impl.Reviewrecord_mfImpl#getRelationid <em>Relationid</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Review.impl.Reviewrecord_mfImpl#getRecords <em>Records</em>}</li>
 * </ul>
 * </p>
 *
 * @extends ExtendedDataObjectImpl;
 *
 * @implements Reviewrecord_mf;
 */

public class Reviewrecord_mfImpl extends ExtendedDataObjectImpl implements Reviewrecord_mf {
	/**
	 * Comment for <code>serialVersionUID</code>
	 */
	private static final long serialVersionUID = 1L;
	public final static int INDEX_UUID = 0;
	public final static int INDEX_RECORD_NAME = 1;
	public final static int INDEX_RECORD_PERSON = 2;
	public final static int INDEX_RECORD_TIME = 3;
	public final static int INDEX_REVIEW_PERSON = 4;
	public final static int INDEX_REVIEW_TIME = 5;
	public final static int INDEX_QW = 6;
	public final static int INDEX_JD = 7;
	public final static int INDEX_JZ = 8;
	public final static int INDEX_ISDEL = 9;
	public final static int INDEX_COPYPERSON = 10;
	public final static int INDEX_TCOMANY = 11;
	public final static int INDEX_OVERHAUL = 12;
	public final static int INDEX_PROCESSINSTID = 13;
	public final static int INDEX_JHRY = 14;
	public final static int INDEX_CCRY = 15;
	public final static int INDEX_APPLICANT = 16;
	public final static int INDEX_APPLICANTTIME = 17;
	public final static int INDEX_PROCESSSTATUS = 18;
	public final static int INDEX_RELATIONID = 19;
	public final static int INDEX_RECORDS = 20;
	public static final int SDO_PROPERTY_COUNT = 21;

	public static final int EXTENDED_PROPERTY_COUNT = -1;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public Reviewrecord_mfImpl() {
		this(TYPE);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public Reviewrecord_mfImpl(Type type) {
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
	 * Returns the value of the '<em><b>Record_name</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Record_name</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Record_name</em>' attribute.
	 * @see #setRecord_name(java.lang.String)
	 */
	public String getRecord_name() {
		return DataUtil.toString(super.getByIndex(INDEX_RECORD_NAME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getRecord_name <em>Record_name</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Record_name</em>' attribute.
	 * @see #getRecord_name()
	 */
	public void setRecord_name(String record_name) {
		super.setByIndex(INDEX_RECORD_NAME, record_name);
	}

	/**
	 * Returns the value of the '<em><b>Record_person</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Record_person</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Record_person</em>' attribute.
	 * @see #setRecord_person(java.lang.String)
	 */
	public String getRecord_person() {
		return DataUtil.toString(super.getByIndex(INDEX_RECORD_PERSON, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getRecord_person <em>Record_person</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Record_person</em>' attribute.
	 * @see #getRecord_person()
	 */
	public void setRecord_person(String record_person) {
		super.setByIndex(INDEX_RECORD_PERSON, record_person);
	}

	/**
	 * Returns the value of the '<em><b>Record_time</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Record_time</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Record_time</em>' attribute.
	 * @see #setRecord_time(java.lang.String)
	 */
	public String getRecord_time() {
		return DataUtil.toString(super.getByIndex(INDEX_RECORD_TIME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getRecord_time <em>Record_time</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Record_time</em>' attribute.
	 * @see #getRecord_time()
	 */
	public void setRecord_time(String record_time) {
		super.setByIndex(INDEX_RECORD_TIME, record_time);
	}

	/**
	 * Returns the value of the '<em><b>Review_person</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Review_person</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Review_person</em>' attribute.
	 * @see #setReview_person(java.lang.String)
	 */
	public String getReview_person() {
		return DataUtil.toString(super.getByIndex(INDEX_REVIEW_PERSON, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getReview_person <em>Review_person</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Review_person</em>' attribute.
	 * @see #getReview_person()
	 */
	public void setReview_person(String review_person) {
		super.setByIndex(INDEX_REVIEW_PERSON, review_person);
	}

	/**
	 * Returns the value of the '<em><b>Review_time</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Review_time</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Review_time</em>' attribute.
	 * @see #setReview_time(java.lang.String)
	 */
	public String getReview_time() {
		return DataUtil.toString(super.getByIndex(INDEX_REVIEW_TIME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getReview_time <em>Review_time</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Review_time</em>' attribute.
	 * @see #getReview_time()
	 */
	public void setReview_time(String review_time) {
		super.setByIndex(INDEX_REVIEW_TIME, review_time);
	}

	/**
	 * Returns the value of the '<em><b>Qw</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Qw</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Qw</em>' attribute.
	 * @see #setQw(java.lang.String)
	 */
	public String getQw() {
		return DataUtil.toString(super.getByIndex(INDEX_QW, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getQw <em>Qw</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Qw</em>' attribute.
	 * @see #getQw()
	 */
	public void setQw(String qw) {
		super.setByIndex(INDEX_QW, qw);
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
	 * Returns the value of the '<em><b>Copyperson</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Copyperson</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Copyperson</em>' attribute.
	 * @see #setCopyperson(java.lang.String)
	 */
	public String getCopyperson() {
		return DataUtil.toString(super.getByIndex(INDEX_COPYPERSON, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getCopyperson <em>Copyperson</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Copyperson</em>' attribute.
	 * @see #getCopyperson()
	 */
	public void setCopyperson(String copyperson) {
		super.setByIndex(INDEX_COPYPERSON, copyperson);
	}

	/**
	 * Returns the value of the '<em><b>Tcomany</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Tcomany</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Tcomany</em>' attribute.
	 * @see #setTcomany(java.lang.String)
	 */
	public String getTcomany() {
		return DataUtil.toString(super.getByIndex(INDEX_TCOMANY, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getTcomany <em>Tcomany</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Tcomany</em>' attribute.
	 * @see #getTcomany()
	 */
	public void setTcomany(String tcomany) {
		super.setByIndex(INDEX_TCOMANY, tcomany);
	}

	/**
	 * Returns the value of the '<em><b>Overhaul</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Overhaul</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Overhaul</em>' attribute.
	 * @see #setOverhaul(java.lang.String)
	 */
	public String getOverhaul() {
		return DataUtil.toString(super.getByIndex(INDEX_OVERHAUL, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getOverhaul <em>Overhaul</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Overhaul</em>' attribute.
	 * @see #getOverhaul()
	 */
	public void setOverhaul(String overhaul) {
		super.setByIndex(INDEX_OVERHAUL, overhaul);
	}

	/**
	 * Returns the value of the '<em><b>ProcessInstId</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>ProcessInstId</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>ProcessInstId</em>' attribute.
	 * @see #setProcessInstId(java.lang.String)
	 */
	public String getProcessInstId() {
		return DataUtil.toString(super.getByIndex(INDEX_PROCESSINSTID, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getProcessInstId <em>ProcessInstId</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>ProcessInstId</em>' attribute.
	 * @see #getProcessInstId()
	 */
	public void setProcessInstId(String processInstId) {
		super.setByIndex(INDEX_PROCESSINSTID, processInstId);
	}

	/**
	 * Returns the value of the '<em><b>Jhry</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Jhry</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Jhry</em>' attribute.
	 * @see #setJhry(java.lang.String)
	 */
	public String getJhry() {
		return DataUtil.toString(super.getByIndex(INDEX_JHRY, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getJhry <em>Jhry</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Jhry</em>' attribute.
	 * @see #getJhry()
	 */
	public void setJhry(String jhry) {
		super.setByIndex(INDEX_JHRY, jhry);
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
	 * Returns the value of the '<em><b>Applicanttime</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Applicanttime</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Applicanttime</em>' attribute.
	 * @see #setApplicanttime(java.lang.String)
	 */
	public String getApplicanttime() {
		return DataUtil.toString(super.getByIndex(INDEX_APPLICANTTIME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getApplicanttime <em>Applicanttime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Applicanttime</em>' attribute.
	 * @see #getApplicanttime()
	 */
	public void setApplicanttime(String applicanttime) {
		super.setByIndex(INDEX_APPLICANTTIME, applicanttime);
	}

	/**
	 * Returns the value of the '<em><b>ProcessStatus</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>ProcessStatus</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>ProcessStatus</em>' attribute.
	 * @see #setProcessStatus(java.lang.String)
	 */
	public String getProcessStatus() {
		return DataUtil.toString(super.getByIndex(INDEX_PROCESSSTATUS, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getProcessStatus <em>ProcessStatus</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>ProcessStatus</em>' attribute.
	 * @see #getProcessStatus()
	 */
	public void setProcessStatus(String processStatus) {
		super.setByIndex(INDEX_PROCESSSTATUS, processStatus);
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
	 * Returns the value of the '<em><b>Records</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Records</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Records</em>' attribute.
	 * @see #setRecords(com.cgn.itmp.weldingmanagement.Review.Record)
	 */
	public List<Record> getRecords() {
		return (List<Record>) getList(INDEX_RECORDS, true);
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getRecords <em>Records</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Records</em>' attribute.
	 * @see #getRecords()
	 */
	public void setRecords(List<Record> records) {
		super.setByIndex(INDEX_RECORDS, records);
	}


}