/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.weldingmanagement.Machine.impl;

import com.cgn.itmp.weldingmanagement.Machine.Machine;
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
 *   <li>{@link com.cgn.itmp.weldingmanagement.Machine.impl.MachineImpl#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Machine.impl.MachineImpl#getNumber <em>Number</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Machine.impl.MachineImpl#getName <em>Name</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Machine.impl.MachineImpl#getEquipmenttype <em>Equipmenttype</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Machine.impl.MachineImpl#getInput <em>Input</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Machine.impl.MachineImpl#getCurrentrange <em>Currentrange</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Machine.impl.MachineImpl#getManufacturer <em>Manufacturer</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Machine.impl.MachineImpl#getCertificate <em>Certificate</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Machine.impl.MachineImpl#getVerification <em>Verification</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Machine.impl.MachineImpl#getState <em>State</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Machine.impl.MachineImpl#getLocation <em>Location</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Machine.impl.MachineImpl#getIsdel <em>Isdel</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Machine.impl.MachineImpl#getBorrowperson <em>Borrowperson</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Machine.impl.MachineImpl#getBorrowunit <em>Borrowunit</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Machine.impl.MachineImpl#getBorrowtime <em>Borrowtime</em>}</li>
 * </ul>
 * </p>
 *
 * @extends ExtendedDataObjectImpl;
 *
 * @implements Machine;
 */

public class MachineImpl extends ExtendedDataObjectImpl implements Machine {
	/**
	 * Comment for <code>serialVersionUID</code>
	 */
	private static final long serialVersionUID = 1L;
	public final static int INDEX_UUID = 0;
	public final static int INDEX_NUMBER = 1;
	public final static int INDEX_NAME = 2;
	public final static int INDEX_EQUIPMENTTYPE = 3;
	public final static int INDEX_INPUT = 4;
	public final static int INDEX_CURRENTRANGE = 5;
	public final static int INDEX_MANUFACTURER = 6;
	public final static int INDEX_CERTIFICATE = 7;
	public final static int INDEX_VERIFICATION = 8;
	public final static int INDEX_STATE = 9;
	public final static int INDEX_LOCATION = 10;
	public final static int INDEX_ISDEL = 11;
	public final static int INDEX_BORROWPERSON = 12;
	public final static int INDEX_BORROWUNIT = 13;
	public final static int INDEX_BORROWTIME = 14;
	public static final int SDO_PROPERTY_COUNT = 15;

	public static final int EXTENDED_PROPERTY_COUNT = -1;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public MachineImpl() {
		this(TYPE);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public MachineImpl(Type type) {
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
	public String getNumber() {
		return DataUtil.toString(super.getByIndex(INDEX_NUMBER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getNumber <em>Number</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Number</em>' attribute.
	 * @see #getNumber()
	 */
	public void setNumber(String number) {
		super.setByIndex(INDEX_NUMBER, number);
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
	public String getInput() {
		return DataUtil.toString(super.getByIndex(INDEX_INPUT, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getInput <em>Input</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Input</em>' attribute.
	 * @see #getInput()
	 */
	public void setInput(String input) {
		super.setByIndex(INDEX_INPUT, input);
	}

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
	public String getCurrentrange() {
		return DataUtil.toString(super.getByIndex(INDEX_CURRENTRANGE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getCurrentrange <em>Currentrange</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Currentrange</em>' attribute.
	 * @see #getCurrentrange()
	 */
	public void setCurrentrange(String currentrange) {
		super.setByIndex(INDEX_CURRENTRANGE, currentrange);
	}

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
	public String getManufacturer() {
		return DataUtil.toString(super.getByIndex(INDEX_MANUFACTURER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getManufacturer <em>Manufacturer</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Manufacturer</em>' attribute.
	 * @see #getManufacturer()
	 */
	public void setManufacturer(String manufacturer) {
		super.setByIndex(INDEX_MANUFACTURER, manufacturer);
	}

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
	public String getCertificate() {
		return DataUtil.toString(super.getByIndex(INDEX_CERTIFICATE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getCertificate <em>Certificate</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Certificate</em>' attribute.
	 * @see #getCertificate()
	 */
	public void setCertificate(String certificate) {
		super.setByIndex(INDEX_CERTIFICATE, certificate);
	}

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
	public String getVerification() {
		return DataUtil.toString(super.getByIndex(INDEX_VERIFICATION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getVerification <em>Verification</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Verification</em>' attribute.
	 * @see #getVerification()
	 */
	public void setVerification(String verification) {
		super.setByIndex(INDEX_VERIFICATION, verification);
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
	public String getLocation() {
		return DataUtil.toString(super.getByIndex(INDEX_LOCATION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getLocation <em>Location</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Location</em>' attribute.
	 * @see #getLocation()
	 */
	public void setLocation(String location) {
		super.setByIndex(INDEX_LOCATION, location);
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
	public String getBorrowperson() {
		return DataUtil.toString(super.getByIndex(INDEX_BORROWPERSON, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getBorrowperson <em>Borrowperson</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Borrowperson</em>' attribute.
	 * @see #getBorrowperson()
	 */
	public void setBorrowperson(String borrowperson) {
		super.setByIndex(INDEX_BORROWPERSON, borrowperson);
	}

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
	public String getBorrowunit() {
		return DataUtil.toString(super.getByIndex(INDEX_BORROWUNIT, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getBorrowunit <em>Borrowunit</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Borrowunit</em>' attribute.
	 * @see #getBorrowunit()
	 */
	public void setBorrowunit(String borrowunit) {
		super.setByIndex(INDEX_BORROWUNIT, borrowunit);
	}

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
	public String getBorrowtime() {
		return DataUtil.toString(super.getByIndex(INDEX_BORROWTIME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getBorrowtime <em>Borrowtime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Borrowtime</em>' attribute.
	 * @see #getBorrowtime()
	 */
	public void setBorrowtime(String borrowtime) {
		super.setByIndex(INDEX_BORROWTIME, borrowtime);
	}


}