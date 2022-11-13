/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.weldingmanagement.Welder.impl;

import java.util.Date;
import java.util.List;

import com.cgn.itmp.weldingmanagement.Welder.Certificate;
import com.cgn.itmp.weldingmanagement.Welder.Welder;
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
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welder.impl.WelderImpl#getName <em>Name</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welder.impl.WelderImpl#getCompany <em>Company</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welder.impl.WelderImpl#getEmployeenumber <em>Employeenumber</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welder.impl.WelderImpl#getCode <em>Code</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welder.impl.WelderImpl#getSpecial <em>Special</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welder.impl.WelderImpl#getJob <em>Job</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welder.impl.WelderImpl#getAuthority <em>Authority</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welder.impl.WelderImpl#getItems <em>Items</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welder.impl.WelderImpl#getOperatingnumber <em>Operatingnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welder.impl.WelderImpl#getValidity <em>Validity</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welder.impl.WelderImpl#getReview <em>Review</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welder.impl.WelderImpl#getInitial <em>Initial</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welder.impl.WelderImpl#getStatus <em>Status</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welder.impl.WelderImpl#getFj <em>Fj</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welder.impl.WelderImpl#getRemarks <em>Remarks</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welder.impl.WelderImpl#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welder.impl.WelderImpl#getIsdel <em>Isdel</em>}</li>
 * </ul>
 * </p>
 *
 * @extends ExtendedDataObjectImpl;
 *
 * @implements Welder;
 */

public class WelderImpl extends ExtendedDataObjectImpl implements Welder {
	/**
	 * Comment for <code>serialVersionUID</code>
	 */
	private static final long serialVersionUID = 1L;
	public final static int INDEX_NAME = 0;
	public final static int INDEX_COMPANY = 1;
	public final static int INDEX_EMPLOYEENUMBER = 2;
	public final static int INDEX_CODE = 3;
	public final static int INDEX_SPECIAL = 4;
	public final static int INDEX_JOB = 5;
	public final static int INDEX_AUTHORITY = 6;
	public final static int INDEX_ITEMS = 7;
	public final static int INDEX_OPERATINGNUMBER = 8;
	public final static int INDEX_VALIDITY = 9;
	public final static int INDEX_REVIEW = 10;
	public final static int INDEX_INITIAL = 11;
	public final static int INDEX_STATUS = 12;
	public final static int INDEX_FJ = 13;
	public final static int INDEX_REMARKS = 14;
	public final static int INDEX_UUID = 15;
	public final static int INDEX_ISDEL = 16;
	
	public static final int SDO_PROPERTY_COUNT = 17;
	public final static int INDEX_CERTIFICATES = 18;
	public final static int INDEX_CREATETIME = 19;
	public static final int EXTENDED_PROPERTY_COUNT = -1;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public WelderImpl() {
		this(TYPE);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public WelderImpl(Type type) {
		super(type);
	}

	protected void validate() {
		validateType(TYPE);
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
	 * Returns the value of the '<em><b>Company</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Company</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Company</em>' attribute.
	 * @see #setCompany(java.lang.String)
	 */
	public String getCompany() {
		return DataUtil.toString(super.getByIndex(INDEX_COMPANY, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getCompany <em>Company</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Company</em>' attribute.
	 * @see #getCompany()
	 */
	public void setCompany(String company) {
		super.setByIndex(INDEX_COMPANY, company);
	}

	/**
	 * Returns the value of the '<em><b>Employeenumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Employeenumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Employeenumber</em>' attribute.
	 * @see #setEmployeenumber(java.lang.String)
	 */
	public String getEmployeenumber() {
		return DataUtil.toString(super.getByIndex(INDEX_EMPLOYEENUMBER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getEmployeenumber <em>Employeenumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Employeenumber</em>' attribute.
	 * @see #getEmployeenumber()
	 */
	public void setEmployeenumber(String employeenumber) {
		super.setByIndex(INDEX_EMPLOYEENUMBER, employeenumber);
	}

	/**
	 * Returns the value of the '<em><b>Code</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Code</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Code</em>' attribute.
	 * @see #setCode(java.lang.String)
	 */
	public String getCode() {
		return DataUtil.toString(super.getByIndex(INDEX_CODE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getCode <em>Code</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Code</em>' attribute.
	 * @see #getCode()
	 */
	public void setCode(String code) {
		super.setByIndex(INDEX_CODE, code);
	}

	/**
	 * Returns the value of the '<em><b>Special</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Special</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Special</em>' attribute.
	 * @see #setSpecial(java.lang.String)
	 */
	public String getSpecial() {
		return DataUtil.toString(super.getByIndex(INDEX_SPECIAL, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getSpecial <em>Special</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Special</em>' attribute.
	 * @see #getSpecial()
	 */
	public void setSpecial(String special) {
		super.setByIndex(INDEX_SPECIAL, special);
	}

	/**
	 * Returns the value of the '<em><b>Job</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Job</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Job</em>' attribute.
	 * @see #setJob(java.lang.String)
	 */
	public String getJob() {
		return DataUtil.toString(super.getByIndex(INDEX_JOB, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getJob <em>Job</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Job</em>' attribute.
	 * @see #getJob()
	 */
	public void setJob(String job) {
		super.setByIndex(INDEX_JOB, job);
	}

	/**
	 * Returns the value of the '<em><b>Authority</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Authority</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Authority</em>' attribute.
	 * @see #setAuthority(java.lang.String)
	 */
	public String getAuthority() {
		return DataUtil.toString(super.getByIndex(INDEX_AUTHORITY, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getAuthority <em>Authority</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Authority</em>' attribute.
	 * @see #getAuthority()
	 */
	public void setAuthority(String authority) {
		super.setByIndex(INDEX_AUTHORITY, authority);
	}

	/**
	 * Returns the value of the '<em><b>Items</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Items</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Items</em>' attribute.
	 * @see #setItems(java.lang.String)
	 */
	public String getItems() {
		return DataUtil.toString(super.getByIndex(INDEX_ITEMS, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getItems <em>Items</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Items</em>' attribute.
	 * @see #getItems()
	 */
	public void setItems(String items) {
		super.setByIndex(INDEX_ITEMS, items);
	}

	/**
	 * Returns the value of the '<em><b>Operatingnumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Operatingnumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Operatingnumber</em>' attribute.
	 * @see #setOperatingnumber(java.lang.String)
	 */
	public String getOperatingnumber() {
		return DataUtil.toString(super.getByIndex(INDEX_OPERATINGNUMBER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getOperatingnumber <em>Operatingnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Operatingnumber</em>' attribute.
	 * @see #getOperatingnumber()
	 */
	public void setOperatingnumber(String operatingnumber) {
		super.setByIndex(INDEX_OPERATINGNUMBER, operatingnumber);
	}

	/**
	 * Returns the value of the '<em><b>Validity</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Validity</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Validity</em>' attribute.
	 * @see #setValidity(java.lang.String)
	 */
	public String getValidity() {
		return DataUtil.toString(super.getByIndex(INDEX_VALIDITY, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getValidity <em>Validity</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Validity</em>' attribute.
	 * @see #getValidity()
	 */
	public void setValidity(String validity) {
		super.setByIndex(INDEX_VALIDITY, validity);
	}

	/**
	 * Returns the value of the '<em><b>Review</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Review</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Review</em>' attribute.
	 * @see #setReview(java.lang.String)
	 */
	public String getReview() {
		return DataUtil.toString(super.getByIndex(INDEX_REVIEW, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getReview <em>Review</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Review</em>' attribute.
	 * @see #getReview()
	 */
	public void setReview(String review) {
		super.setByIndex(INDEX_REVIEW, review);
	}

	/**
	 * Returns the value of the '<em><b>Initial</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Initial</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Initial</em>' attribute.
	 * @see #setInitial(java.lang.String)
	 */
	public String getInitial() {
		return DataUtil.toString(super.getByIndex(INDEX_INITIAL, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getInitial <em>Initial</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Initial</em>' attribute.
	 * @see #getInitial()
	 */
	public void setInitial(String initial) {
		super.setByIndex(INDEX_INITIAL, initial);
	}

	/**
	 * Returns the value of the '<em><b>Status</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Status</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Status</em>' attribute.
	 * @see #setStatus(java.lang.String)
	 */
	public String getStatus() {
		return DataUtil.toString(super.getByIndex(INDEX_STATUS, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getStatus <em>Status</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Status</em>' attribute.
	 * @see #getStatus()
	 */
	public void setStatus(String status) {
		super.setByIndex(INDEX_STATUS, status);
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

	@SuppressWarnings("unchecked")
	public List<Certificate> getCertificates() {
		
		return (List<Certificate>) getList(INDEX_CERTIFICATES, true);
	}

	public void setCertificate(List<Certificate> certificates) {
		super.setByIndex(INDEX_CERTIFICATES, certificates);
		
	}

	public void setCreateTime(Date data) {
		super.setByIndex(INDEX_CREATETIME, data);
		
	}

	public Date getCreateTime() {
		// TODO 自动生成的方法存根
		return DataUtil.toDate(super.getByIndex(INDEX_CREATETIME,true));
	}


}