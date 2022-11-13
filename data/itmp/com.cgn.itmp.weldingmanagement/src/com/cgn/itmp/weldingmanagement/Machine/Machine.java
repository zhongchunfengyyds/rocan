/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.weldingmanagement.Machine;

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
 *   <li>{@link com.cgn.itmp.weldingmanagement.Machine.Machine#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Machine.Machine#getNumber <em>Number</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Machine.Machine#getName <em>Name</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Machine.Machine#getEquipmenttype <em>Equipmenttype</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Machine.Machine#getInput <em>Input</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Machine.Machine#getCurrentrange <em>Currentrange</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Machine.Machine#getManufacturer <em>Manufacturer</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Machine.Machine#getCertificate <em>Certificate</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Machine.Machine#getVerification <em>Verification</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Machine.Machine#getState <em>State</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Machine.Machine#getLocation <em>Location</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Machine.Machine#getIsdel <em>Isdel</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Machine.Machine#getBorrowperson <em>Borrowperson</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Machine.Machine#getBorrowunit <em>Borrowunit</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Machine.Machine#getBorrowtime <em>Borrowtime</em>}</li>
 * </ul>
 * </p>
 *
 * @extends DataObject;
 */
public interface Machine extends DataObject {

	public static final String QNAME = "com.cgn.itmp.weldingmanagement.Machine.Machine";

	public static final Type TYPE = TypeHelper.INSTANCE.getType("com.cgn.itmp.weldingmanagement.Machine", "Machine");

	public static final IObjectFactory<Machine> FACTORY = new IObjectFactory<Machine>() {
		public Machine create() {
			return (Machine) DataFactory.INSTANCE.create(TYPE);
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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Machine.Machine#getUuid <em>Uuid</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Machine.Machine#getNumber <em>Number</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Machine.Machine#getName <em>Name</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Machine.Machine#getEquipmenttype <em>Equipmenttype</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Machine.Machine#getInput <em>Input</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Machine.Machine#getCurrentrange <em>Currentrange</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Machine.Machine#getManufacturer <em>Manufacturer</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Machine.Machine#getCertificate <em>Certificate</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Machine.Machine#getVerification <em>Verification</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Machine.Machine#getState <em>State</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>State</em>' attribute.
	 * @see #getState()
	 */
	public void setState(String state);

	/**
	 * Returns the value of the '<em><b>Location</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Location</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Location</em>' attribute.
	 * @see #setLocation(java.lang.String)
	 */
	public String getLocation();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Machine.Machine#getLocation <em>Location</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Location</em>' attribute.
	 * @see #getLocation()
	 */
	public void setLocation(String location);

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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Machine.Machine#getIsdel <em>Isdel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Isdel</em>' attribute.
	 * @see #getIsdel()
	 */
	public void setIsdel(String isdel);

	/**
	 * Returns the value of the '<em><b>Borrowperson</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Borrowperson</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Borrowperson</em>' attribute.
	 * @see #setBorrowperson(java.lang.String)
	 */
	public String getBorrowperson();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Machine.Machine#getBorrowperson <em>Borrowperson</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Borrowperson</em>' attribute.
	 * @see #getBorrowperson()
	 */
	public void setBorrowperson(String borrowperson);

	/**
	 * Returns the value of the '<em><b>Borrowunit</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Borrowunit</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Borrowunit</em>' attribute.
	 * @see #setBorrowunit(java.lang.String)
	 */
	public String getBorrowunit();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Machine.Machine#getBorrowunit <em>Borrowunit</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Borrowunit</em>' attribute.
	 * @see #getBorrowunit()
	 */
	public void setBorrowunit(String borrowunit);

	/**
	 * Returns the value of the '<em><b>Borrowtime</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Borrowtime</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Borrowtime</em>' attribute.
	 * @see #setBorrowtime(java.lang.String)
	 */
	public String getBorrowtime();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Machine.Machine#getBorrowtime <em>Borrowtime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Borrowtime</em>' attribute.
	 * @see #getBorrowtime()
	 */
	public void setBorrowtime(String borrowtime);


}