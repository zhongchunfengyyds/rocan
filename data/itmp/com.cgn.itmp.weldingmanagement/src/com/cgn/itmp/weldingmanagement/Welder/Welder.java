/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.weldingmanagement.Welder;

import com.eos.data.sdo.IObjectFactory;

import commonj.sdo.DataObject;
import commonj.sdo.Type;
import commonj.sdo.helper.DataFactory;
import commonj.sdo.helper.TypeHelper;

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
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welder.Welder#getName <em>Name</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welder.Welder#getCompany <em>Company</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welder.Welder#getEmployeenumber <em>Employeenumber</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welder.Welder#getCode <em>Code</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welder.Welder#getSpecial <em>Special</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welder.Welder#getJob <em>Job</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welder.Welder#getAuthority <em>Authority</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welder.Welder#getItems <em>Items</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welder.Welder#getOperatingnumber <em>Operatingnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welder.Welder#getValidity <em>Validity</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welder.Welder#getReview <em>Review</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welder.Welder#getInitial <em>Initial</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welder.Welder#getStatus <em>Status</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welder.Welder#getFj <em>Fj</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welder.Welder#getRemarks <em>Remarks</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welder.Welder#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welder.Welder#getIsdel <em>Isdel</em>}</li>
 * </ul>
 * </p>
 *
 * @extends DataObject;
 */
public interface Welder extends DataObject {

	public static final String QNAME = "com.cgn.itmp.weldingmanagement.Welder.Welder";

	public static final Type TYPE = TypeHelper.INSTANCE.getType("com.cgn.itmp.weldingmanagement.Welder", "Welder");

	public static final IObjectFactory<Welder> FACTORY = new IObjectFactory<Welder>() {
		public Welder create() {
			return (Welder) DataFactory.INSTANCE.create(TYPE);
		}
	};

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
	public String getName();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Welder.Welder#getName <em>Name</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Name</em>' attribute.
	 * @see #getName()
	 */
	public void setName(String name);

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
	public String getCompany();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Welder.Welder#getCompany <em>Company</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Company</em>' attribute.
	 * @see #getCompany()
	 */
	public void setCompany(String company);

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
	public String getEmployeenumber();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Welder.Welder#getEmployeenumber <em>Employeenumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Employeenumber</em>' attribute.
	 * @see #getEmployeenumber()
	 */
	public void setEmployeenumber(String employeenumber);

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
	public String getCode();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Welder.Welder#getCode <em>Code</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Code</em>' attribute.
	 * @see #getCode()
	 */
	public void setCode(String code);

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
	public String getSpecial();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Welder.Welder#getSpecial <em>Special</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Special</em>' attribute.
	 * @see #getSpecial()
	 */
	public void setSpecial(String special);

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
	public String getJob();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Welder.Welder#getJob <em>Job</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Job</em>' attribute.
	 * @see #getJob()
	 */
	public void setJob(String job);

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
	public String getAuthority();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Welder.Welder#getAuthority <em>Authority</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Authority</em>' attribute.
	 * @see #getAuthority()
	 */
	public void setAuthority(String authority);

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
	public String getItems();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Welder.Welder#getItems <em>Items</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Items</em>' attribute.
	 * @see #getItems()
	 */
	public void setItems(String items);

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
	public String getOperatingnumber();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Welder.Welder#getOperatingnumber <em>Operatingnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Operatingnumber</em>' attribute.
	 * @see #getOperatingnumber()
	 */
	public void setOperatingnumber(String operatingnumber);

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
	public String getValidity();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Welder.Welder#getValidity <em>Validity</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Validity</em>' attribute.
	 * @see #getValidity()
	 */
	public void setValidity(String validity);

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
	public String getReview();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Welder.Welder#getReview <em>Review</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Review</em>' attribute.
	 * @see #getReview()
	 */
	public void setReview(String review);

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
	public String getInitial();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Welder.Welder#getInitial <em>Initial</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Initial</em>' attribute.
	 * @see #getInitial()
	 */
	public void setInitial(String initial);

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
	public String getStatus();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Welder.Welder#getStatus <em>Status</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Status</em>' attribute.
	 * @see #getStatus()
	 */
	public void setStatus(String status);

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
	public String getFj();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Welder.Welder#getFj <em>Fj</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Fj</em>' attribute.
	 * @see #getFj()
	 */
	public void setFj(String fj);

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
	public String getRemarks();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Welder.Welder#getRemarks <em>Remarks</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Remarks</em>' attribute.
	 * @see #getRemarks()
	 */
	public void setRemarks(String remarks);

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
	public String getUuid();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Welder.Welder#getUuid <em>Uuid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Uuid</em>' attribute.
	 * @see #getUuid()
	 */
	public void setCreateTime(Date data);
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
	public Date getCreateTime();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Welder.Welder#getUuid <em>Uuid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Uuid</em>' attribute.
	 * @see #getUuid()
	 */
	public void setUuid(String uuid);

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
	public String getIsdel();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Welder.Welder#getIsdel <em>Isdel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Isdel</em>' attribute.
	 * @see #getIsdel()
	 */
	public void setIsdel(String isdel);
	
	public List<Certificate> getCertificates();

	
	public void setCertificate(List<Certificate> certificates);


}