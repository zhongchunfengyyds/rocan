/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.weldingmanagement.Welderuserrecord;

import com.eos.data.sdo.IObjectFactory;

import commonj.sdo.DataObject;
import commonj.sdo.Type;
import commonj.sdo.helper.DataFactory;
import commonj.sdo.helper.TypeHelper;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Test</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welderuserrecord.Welderuserrecord#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welderuserrecord.Welderuserrecord#getNumber <em>Number</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welderuserrecord.Welderuserrecord#getName <em>Name</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welderuserrecord.Welderuserrecord#getEquipmenttype <em>Equipmenttype</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welderuserrecord.Welderuserrecord#getInput <em>Input</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welderuserrecord.Welderuserrecord#getCurrentrange <em>Currentrange</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welderuserrecord.Welderuserrecord#getManufacturer <em>Manufacturer</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welderuserrecord.Welderuserrecord#getCertificate <em>Certificate</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welderuserrecord.Welderuserrecord#getVerification <em>Verification</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welderuserrecord.Welderuserrecord#getState <em>State</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welderuserrecord.Welderuserrecord#getUnit <em>Unit</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welderuserrecord.Welderuserrecord#getOperateperson <em>Operateperson</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Welderuserrecord.Welderuserrecord#getOperatetime <em>Operatetime</em>}</li>
 * </ul>
 * </p>
 *
 * @extends DataObject;
 */
public interface Welderuserrecord extends DataObject {

	public static final String QNAME = "com.cgn.itmp.weldingmanagement.Welderuserrecord.Welderuserrecord";

	public static final Type TYPE = TypeHelper.INSTANCE.getType("com.cgn.itmp.weldingmanagement.Welderuserrecord", "Welderuserrecord");

	public static final IObjectFactory<Welderuserrecord> FACTORY = new IObjectFactory<Welderuserrecord>() {
		public Welderuserrecord create() {
			return (Welderuserrecord) DataFactory.INSTANCE.create(TYPE);
		}
	};

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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Welderuserrecord.Welderuserrecord#getUuid <em>Uuid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Uuid</em>' attribute.
	 * @see #getUuid()
	 */
	public void setUuid(String uuid);

	/**
	 * Returns the value of the '<em><b>Number</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Number</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Number</em>' attribute.
	 * @see #setNumber(java.lang.String)
	 */
	public String getNumber();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Welderuserrecord.Welderuserrecord#getNumber <em>Number</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Number</em>' attribute.
	 * @see #getNumber()
	 */
	public void setNumber(String number);

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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Welderuserrecord.Welderuserrecord#getName <em>Name</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Name</em>' attribute.
	 * @see #getName()
	 */
	public void setName(String name);

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
	public String getEquipmenttype();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Welderuserrecord.Welderuserrecord#getEquipmenttype <em>Equipmenttype</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equipmenttype</em>' attribute.
	 * @see #getEquipmenttype()
	 */
	public void setEquipmenttype(String equipmenttype);

	/**
	 * Returns the value of the '<em><b>Input</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Input</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Input</em>' attribute.
	 * @see #setInput(java.lang.String)
	 */
	public String getInput();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Welderuserrecord.Welderuserrecord#getInput <em>Input</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Input</em>' attribute.
	 * @see #getInput()
	 */
	public void setInput(String input);

	/**
	 * Returns the value of the '<em><b>Currentrange</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Currentrange</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Currentrange</em>' attribute.
	 * @see #setCurrentrange(java.lang.String)
	 */
	public String getCurrentrange();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Welderuserrecord.Welderuserrecord#getCurrentrange <em>Currentrange</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Currentrange</em>' attribute.
	 * @see #getCurrentrange()
	 */
	public void setCurrentrange(String currentrange);

	/**
	 * Returns the value of the '<em><b>Manufacturer</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Manufacturer</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Manufacturer</em>' attribute.
	 * @see #setManufacturer(java.lang.String)
	 */
	public String getManufacturer();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Welderuserrecord.Welderuserrecord#getManufacturer <em>Manufacturer</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Manufacturer</em>' attribute.
	 * @see #getManufacturer()
	 */
	public void setManufacturer(String manufacturer);

	/**
	 * Returns the value of the '<em><b>Certificate</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Certificate</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Certificate</em>' attribute.
	 * @see #setCertificate(java.lang.String)
	 */
	public String getCertificate();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Welderuserrecord.Welderuserrecord#getCertificate <em>Certificate</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Certificate</em>' attribute.
	 * @see #getCertificate()
	 */
	public void setCertificate(String certificate);

	/**
	 * Returns the value of the '<em><b>Verification</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Verification</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Verification</em>' attribute.
	 * @see #setVerification(java.lang.String)
	 */
	public String getVerification();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Welderuserrecord.Welderuserrecord#getVerification <em>Verification</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Verification</em>' attribute.
	 * @see #getVerification()
	 */
	public void setVerification(String verification);

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
	public String getState();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Welderuserrecord.Welderuserrecord#getState <em>State</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>State</em>' attribute.
	 * @see #getState()
	 */
	public void setState(String state);

	/**
	 * Returns the value of the '<em><b>Unit</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Unit</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Unit</em>' attribute.
	 * @see #setUnit(java.lang.String)
	 */
	public String getUnit();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Welderuserrecord.Welderuserrecord#getUnit <em>Unit</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Unit</em>' attribute.
	 * @see #getUnit()
	 */
	public void setUnit(String unit);

	/**
	 * Returns the value of the '<em><b>Operateperson</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Operateperson</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Operateperson</em>' attribute.
	 * @see #setOperateperson(java.lang.String)
	 */
	public String getOperateperson();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Welderuserrecord.Welderuserrecord#getOperateperson <em>Operateperson</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Operateperson</em>' attribute.
	 * @see #getOperateperson()
	 */
	public void setOperateperson(String operateperson);

	/**
	 * Returns the value of the '<em><b>Operatetime</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Operatetime</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Operatetime</em>' attribute.
	 * @see #setOperatetime(java.lang.String)
	 */
	public String getOperatetime();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Welderuserrecord.Welderuserrecord#getOperatetime <em>Operatetime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Operatetime</em>' attribute.
	 * @see #getOperatetime()
	 */
	public void setOperatetime(String operatetime);


}