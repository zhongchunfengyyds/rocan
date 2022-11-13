/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl;

import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Supplementaryinfo;
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
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getEquipmentnumber <em>Equipmentnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getRegistrationauthority <em>Registrationauthority</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getRegistrationdate <em>Registrationdate</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getDeviceregistrationcode <em>Deviceregistrationcode</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getRegistrant <em>Registrant</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getUseunit <em>Useunit</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getUseorganizationcode <em>Useorganizationcode</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getUseunitaddress <em>Useunitaddress</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getPostalcode <em>Postalcode</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getSafetymanagementdepartment <em>Safetymanagementdepartment</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getSecuritymanager <em>Securitymanager</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getContactnumber <em>Contactnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getUseregistrationnumber <em>Useregistrationnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getSerialnumber <em>Serialnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getUpdatedateday <em>Updatedateday</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getPropertyunitandcode <em>Propertyunitandcode</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getManufacturecountry <em>Manufacturecountry</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getManufacturedate <em>Manufacturedate</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getDesignunitandcode <em>Designunitandcode</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getDesigndate <em>Designdate</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getDesignspecification <em>Designspecification</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getManufacturingunitandcode <em>Manufacturingunitandcode</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getUndertakingorganizationcode <em>Undertakingorganizationcode</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getManufacturingspecification <em>Manufacturingspecification</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getInstallationunitandcode <em>Installationunitandcode</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getInstallationdate <em>Installationdate</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getUsedate <em>Usedate</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getSupervisoryunitandcode <em>Supervisoryunitandcode</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getInspectionentity <em>Inspectionentity</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getInspectionunitcode <em>Inspectionunitcode</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getInspectiondate <em>Inspectiondate</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getIdentifycategory <em>Identifycategory</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getMainproblem <em>Mainproblem</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getTestresults <em>Testresults</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getReportnumber <em>Reportnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getNextinspectiondate <em>Nextinspectiondate</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getAccidentcategory <em>Accidentcategory</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getAccidentdate <em>Accidentdate</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getAccidenthandling <em>Accidenthandling</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getDevicechangemethod <em>Devicechangemethod</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getEquipmentchangeproject <em>Equipmentchangeproject</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getEquipmentchangedate <em>Equipmentchangedate</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SupplementaryinfoImpl#getChangecommitmentunit <em>Changecommitmentunit</em>}</li>
 * </ul>
 * </p>
 *
 * @extends ExtendedDataObjectImpl;
 *
 * @implements Supplementaryinfo;
 */

public class SupplementaryinfoImpl extends ExtendedDataObjectImpl implements Supplementaryinfo {
	/**
	 * Comment for <code>serialVersionUID</code>
	 */
	private static final long serialVersionUID = 1L;
	public final static int INDEX_UUID = 0;
	public final static int INDEX_EQUIPMENTNUMBER = 1;
	public final static int INDEX_REGISTRATIONAUTHORITY = 2;
	public final static int INDEX_REGISTRATIONDATE = 3;
	public final static int INDEX_DEVICEREGISTRATIONCODE = 4;
	public final static int INDEX_REGISTRANT = 5;
	public final static int INDEX_USEUNIT = 6;
	public final static int INDEX_USEORGANIZATIONCODE = 7;
	public final static int INDEX_USEUNITADDRESS = 8;
	public final static int INDEX_POSTALCODE = 9;
	public final static int INDEX_SAFETYMANAGEMENTDEPARTMENT = 10;
	public final static int INDEX_SECURITYMANAGER = 11;
	public final static int INDEX_CONTACTNUMBER = 12;
	public final static int INDEX_USEREGISTRATIONNUMBER = 13;
	public final static int INDEX_SERIALNUMBER = 14;
	public final static int INDEX_UPDATEDATEDAY = 15;
	public final static int INDEX_PROPERTYUNITANDCODE = 16;
	public final static int INDEX_MANUFACTURECOUNTRY = 17;
	public final static int INDEX_MANUFACTUREDATE = 18;
	public final static int INDEX_DESIGNUNITANDCODE = 19;
	public final static int INDEX_DESIGNDATE = 20;
	public final static int INDEX_DESIGNSPECIFICATION = 21;
	public final static int INDEX_MANUFACTURINGUNITANDCODE = 22;
	public final static int INDEX_UNDERTAKINGORGANIZATIONCODE = 23;
	public final static int INDEX_MANUFACTURINGSPECIFICATION = 24;
	public final static int INDEX_INSTALLATIONUNITANDCODE = 25;
	public final static int INDEX_INSTALLATIONDATE = 26;
	public final static int INDEX_USEDATE = 27;
	public final static int INDEX_SUPERVISORYUNITANDCODE = 28;
	public final static int INDEX_INSPECTIONENTITY = 29;
	public final static int INDEX_INSPECTIONUNITCODE = 30;
	public final static int INDEX_INSPECTIONDATE = 31;
	public final static int INDEX_IDENTIFYCATEGORY = 32;
	public final static int INDEX_MAINPROBLEM = 33;
	public final static int INDEX_TESTRESULTS = 34;
	public final static int INDEX_REPORTNUMBER = 35;
	public final static int INDEX_NEXTINSPECTIONDATE = 36;
	public final static int INDEX_ACCIDENTCATEGORY = 37;
	public final static int INDEX_ACCIDENTDATE = 38;
	public final static int INDEX_ACCIDENTHANDLING = 39;
	public final static int INDEX_DEVICECHANGEMETHOD = 40;
	public final static int INDEX_EQUIPMENTCHANGEPROJECT = 41;
	public final static int INDEX_EQUIPMENTCHANGEDATE = 42;
	public final static int INDEX_CHANGECOMMITMENTUNIT = 43;
	public static final int SDO_PROPERTY_COUNT = 44;

	public static final int EXTENDED_PROPERTY_COUNT = -1;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public SupplementaryinfoImpl() {
		this(TYPE);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public SupplementaryinfoImpl(Type type) {
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
	 * Returns the value of the '<em><b>Equipmentnumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Equipmentnumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Equipmentnumber</em>' attribute.
	 * @see #setEquipmentnumber(java.lang.String)
	 */
	public String getEquipmentnumber() {
		return DataUtil.toString(super.getByIndex(INDEX_EQUIPMENTNUMBER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getEquipmentnumber <em>Equipmentnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equipmentnumber</em>' attribute.
	 * @see #getEquipmentnumber()
	 */
	public void setEquipmentnumber(String equipmentnumber) {
		super.setByIndex(INDEX_EQUIPMENTNUMBER, equipmentnumber);
	}

	/**
	 * Returns the value of the '<em><b>Registrationauthority</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Registrationauthority</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Registrationauthority</em>' attribute.
	 * @see #setRegistrationauthority(java.lang.String)
	 */
	public String getRegistrationauthority() {
		return DataUtil.toString(super.getByIndex(INDEX_REGISTRATIONAUTHORITY, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getRegistrationauthority <em>Registrationauthority</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Registrationauthority</em>' attribute.
	 * @see #getRegistrationauthority()
	 */
	public void setRegistrationauthority(String registrationauthority) {
		super.setByIndex(INDEX_REGISTRATIONAUTHORITY, registrationauthority);
	}

	/**
	 * Returns the value of the '<em><b>Registrationdate</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Registrationdate</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Registrationdate</em>' attribute.
	 * @see #setRegistrationdate(java.lang.String)
	 */
	public String getRegistrationdate() {
		return DataUtil.toString(super.getByIndex(INDEX_REGISTRATIONDATE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getRegistrationdate <em>Registrationdate</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Registrationdate</em>' attribute.
	 * @see #getRegistrationdate()
	 */
	public void setRegistrationdate(String registrationdate) {
		super.setByIndex(INDEX_REGISTRATIONDATE, registrationdate);
	}

	/**
	 * Returns the value of the '<em><b>Deviceregistrationcode</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Deviceregistrationcode</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Deviceregistrationcode</em>' attribute.
	 * @see #setDeviceregistrationcode(java.lang.String)
	 */
	public String getDeviceregistrationcode() {
		return DataUtil.toString(super.getByIndex(INDEX_DEVICEREGISTRATIONCODE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getDeviceregistrationcode <em>Deviceregistrationcode</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Deviceregistrationcode</em>' attribute.
	 * @see #getDeviceregistrationcode()
	 */
	public void setDeviceregistrationcode(String deviceregistrationcode) {
		super.setByIndex(INDEX_DEVICEREGISTRATIONCODE, deviceregistrationcode);
	}

	/**
	 * Returns the value of the '<em><b>Registrant</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Registrant</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Registrant</em>' attribute.
	 * @see #setRegistrant(java.lang.String)
	 */
	public String getRegistrant() {
		return DataUtil.toString(super.getByIndex(INDEX_REGISTRANT, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getRegistrant <em>Registrant</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Registrant</em>' attribute.
	 * @see #getRegistrant()
	 */
	public void setRegistrant(String registrant) {
		super.setByIndex(INDEX_REGISTRANT, registrant);
	}

	/**
	 * Returns the value of the '<em><b>Useunit</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Useunit</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Useunit</em>' attribute.
	 * @see #setUseunit(java.lang.String)
	 */
	public String getUseunit() {
		return DataUtil.toString(super.getByIndex(INDEX_USEUNIT, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getUseunit <em>Useunit</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Useunit</em>' attribute.
	 * @see #getUseunit()
	 */
	public void setUseunit(String useunit) {
		super.setByIndex(INDEX_USEUNIT, useunit);
	}

	/**
	 * Returns the value of the '<em><b>Useorganizationcode</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Useorganizationcode</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Useorganizationcode</em>' attribute.
	 * @see #setUseorganizationcode(java.lang.String)
	 */
	public String getUseorganizationcode() {
		return DataUtil.toString(super.getByIndex(INDEX_USEORGANIZATIONCODE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getUseorganizationcode <em>Useorganizationcode</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Useorganizationcode</em>' attribute.
	 * @see #getUseorganizationcode()
	 */
	public void setUseorganizationcode(String useorganizationcode) {
		super.setByIndex(INDEX_USEORGANIZATIONCODE, useorganizationcode);
	}

	/**
	 * Returns the value of the '<em><b>Useunitaddress</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Useunitaddress</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Useunitaddress</em>' attribute.
	 * @see #setUseunitaddress(java.lang.String)
	 */
	public String getUseunitaddress() {
		return DataUtil.toString(super.getByIndex(INDEX_USEUNITADDRESS, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getUseunitaddress <em>Useunitaddress</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Useunitaddress</em>' attribute.
	 * @see #getUseunitaddress()
	 */
	public void setUseunitaddress(String useunitaddress) {
		super.setByIndex(INDEX_USEUNITADDRESS, useunitaddress);
	}

	/**
	 * Returns the value of the '<em><b>Postalcode</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Postalcode</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Postalcode</em>' attribute.
	 * @see #setPostalcode(java.lang.String)
	 */
	public String getPostalcode() {
		return DataUtil.toString(super.getByIndex(INDEX_POSTALCODE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getPostalcode <em>Postalcode</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Postalcode</em>' attribute.
	 * @see #getPostalcode()
	 */
	public void setPostalcode(String postalcode) {
		super.setByIndex(INDEX_POSTALCODE, postalcode);
	}

	/**
	 * Returns the value of the '<em><b>Safetymanagementdepartment</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Safetymanagementdepartment</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Safetymanagementdepartment</em>' attribute.
	 * @see #setSafetymanagementdepartment(java.lang.String)
	 */
	public String getSafetymanagementdepartment() {
		return DataUtil.toString(super.getByIndex(INDEX_SAFETYMANAGEMENTDEPARTMENT, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getSafetymanagementdepartment <em>Safetymanagementdepartment</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Safetymanagementdepartment</em>' attribute.
	 * @see #getSafetymanagementdepartment()
	 */
	public void setSafetymanagementdepartment(String safetymanagementdepartment) {
		super.setByIndex(INDEX_SAFETYMANAGEMENTDEPARTMENT, safetymanagementdepartment);
	}

	/**
	 * Returns the value of the '<em><b>Securitymanager</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Securitymanager</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Securitymanager</em>' attribute.
	 * @see #setSecuritymanager(java.lang.String)
	 */
	public String getSecuritymanager() {
		return DataUtil.toString(super.getByIndex(INDEX_SECURITYMANAGER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getSecuritymanager <em>Securitymanager</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Securitymanager</em>' attribute.
	 * @see #getSecuritymanager()
	 */
	public void setSecuritymanager(String securitymanager) {
		super.setByIndex(INDEX_SECURITYMANAGER, securitymanager);
	}

	/**
	 * Returns the value of the '<em><b>Contactnumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Contactnumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Contactnumber</em>' attribute.
	 * @see #setContactnumber(java.lang.String)
	 */
	public String getContactnumber() {
		return DataUtil.toString(super.getByIndex(INDEX_CONTACTNUMBER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getContactnumber <em>Contactnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Contactnumber</em>' attribute.
	 * @see #getContactnumber()
	 */
	public void setContactnumber(String contactnumber) {
		super.setByIndex(INDEX_CONTACTNUMBER, contactnumber);
	}

	/**
	 * Returns the value of the '<em><b>Useregistrationnumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Useregistrationnumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Useregistrationnumber</em>' attribute.
	 * @see #setUseregistrationnumber(java.lang.String)
	 */
	public String getUseregistrationnumber() {
		return DataUtil.toString(super.getByIndex(INDEX_USEREGISTRATIONNUMBER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getUseregistrationnumber <em>Useregistrationnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Useregistrationnumber</em>' attribute.
	 * @see #getUseregistrationnumber()
	 */
	public void setUseregistrationnumber(String useregistrationnumber) {
		super.setByIndex(INDEX_USEREGISTRATIONNUMBER, useregistrationnumber);
	}

	/**
	 * Returns the value of the '<em><b>Serialnumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Serialnumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Serialnumber</em>' attribute.
	 * @see #setSerialnumber(java.lang.String)
	 */
	public String getSerialnumber() {
		return DataUtil.toString(super.getByIndex(INDEX_SERIALNUMBER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getSerialnumber <em>Serialnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Serialnumber</em>' attribute.
	 * @see #getSerialnumber()
	 */
	public void setSerialnumber(String serialnumber) {
		super.setByIndex(INDEX_SERIALNUMBER, serialnumber);
	}

	/**
	 * Returns the value of the '<em><b>Updatedateday</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Updatedateday</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Updatedateday</em>' attribute.
	 * @see #setUpdatedateday(java.lang.String)
	 */
	public String getUpdatedateday() {
		return DataUtil.toString(super.getByIndex(INDEX_UPDATEDATEDAY, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getUpdatedateday <em>Updatedateday</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Updatedateday</em>' attribute.
	 * @see #getUpdatedateday()
	 */
	public void setUpdatedateday(String updatedateday) {
		super.setByIndex(INDEX_UPDATEDATEDAY, updatedateday);
	}

	/**
	 * Returns the value of the '<em><b>Propertyunitandcode</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Propertyunitandcode</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Propertyunitandcode</em>' attribute.
	 * @see #setPropertyunitandcode(java.lang.String)
	 */
	public String getPropertyunitandcode() {
		return DataUtil.toString(super.getByIndex(INDEX_PROPERTYUNITANDCODE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getPropertyunitandcode <em>Propertyunitandcode</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Propertyunitandcode</em>' attribute.
	 * @see #getPropertyunitandcode()
	 */
	public void setPropertyunitandcode(String propertyunitandcode) {
		super.setByIndex(INDEX_PROPERTYUNITANDCODE, propertyunitandcode);
	}

	/**
	 * Returns the value of the '<em><b>Manufacturecountry</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Manufacturecountry</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Manufacturecountry</em>' attribute.
	 * @see #setManufacturecountry(java.lang.String)
	 */
	public String getManufacturecountry() {
		return DataUtil.toString(super.getByIndex(INDEX_MANUFACTURECOUNTRY, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getManufacturecountry <em>Manufacturecountry</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Manufacturecountry</em>' attribute.
	 * @see #getManufacturecountry()
	 */
	public void setManufacturecountry(String manufacturecountry) {
		super.setByIndex(INDEX_MANUFACTURECOUNTRY, manufacturecountry);
	}

	/**
	 * Returns the value of the '<em><b>Manufacturedate</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Manufacturedate</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Manufacturedate</em>' attribute.
	 * @see #setManufacturedate(java.lang.String)
	 */
	public String getManufacturedate() {
		return DataUtil.toString(super.getByIndex(INDEX_MANUFACTUREDATE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getManufacturedate <em>Manufacturedate</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Manufacturedate</em>' attribute.
	 * @see #getManufacturedate()
	 */
	public void setManufacturedate(String manufacturedate) {
		super.setByIndex(INDEX_MANUFACTUREDATE, manufacturedate);
	}

	/**
	 * Returns the value of the '<em><b>Designunitandcode</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Designunitandcode</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Designunitandcode</em>' attribute.
	 * @see #setDesignunitandcode(java.lang.String)
	 */
	public String getDesignunitandcode() {
		return DataUtil.toString(super.getByIndex(INDEX_DESIGNUNITANDCODE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getDesignunitandcode <em>Designunitandcode</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Designunitandcode</em>' attribute.
	 * @see #getDesignunitandcode()
	 */
	public void setDesignunitandcode(String designunitandcode) {
		super.setByIndex(INDEX_DESIGNUNITANDCODE, designunitandcode);
	}

	/**
	 * Returns the value of the '<em><b>Designdate</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Designdate</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Designdate</em>' attribute.
	 * @see #setDesigndate(java.lang.String)
	 */
	public String getDesigndate() {
		return DataUtil.toString(super.getByIndex(INDEX_DESIGNDATE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getDesigndate <em>Designdate</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Designdate</em>' attribute.
	 * @see #getDesigndate()
	 */
	public void setDesigndate(String designdate) {
		super.setByIndex(INDEX_DESIGNDATE, designdate);
	}

	/**
	 * Returns the value of the '<em><b>Designspecification</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Designspecification</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Designspecification</em>' attribute.
	 * @see #setDesignspecification(java.lang.String)
	 */
	public String getDesignspecification() {
		return DataUtil.toString(super.getByIndex(INDEX_DESIGNSPECIFICATION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getDesignspecification <em>Designspecification</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Designspecification</em>' attribute.
	 * @see #getDesignspecification()
	 */
	public void setDesignspecification(String designspecification) {
		super.setByIndex(INDEX_DESIGNSPECIFICATION, designspecification);
	}

	/**
	 * Returns the value of the '<em><b>Manufacturingunitandcode</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Manufacturingunitandcode</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Manufacturingunitandcode</em>' attribute.
	 * @see #setManufacturingunitandcode(java.lang.String)
	 */
	public String getManufacturingunitandcode() {
		return DataUtil.toString(super.getByIndex(INDEX_MANUFACTURINGUNITANDCODE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getManufacturingunitandcode <em>Manufacturingunitandcode</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Manufacturingunitandcode</em>' attribute.
	 * @see #getManufacturingunitandcode()
	 */
	public void setManufacturingunitandcode(String manufacturingunitandcode) {
		super.setByIndex(INDEX_MANUFACTURINGUNITANDCODE, manufacturingunitandcode);
	}

	/**
	 * Returns the value of the '<em><b>Undertakingorganizationcode</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Undertakingorganizationcode</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Undertakingorganizationcode</em>' attribute.
	 * @see #setUndertakingorganizationcode(java.lang.String)
	 */
	public String getUndertakingorganizationcode() {
		return DataUtil.toString(super.getByIndex(INDEX_UNDERTAKINGORGANIZATIONCODE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getUndertakingorganizationcode <em>Undertakingorganizationcode</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Undertakingorganizationcode</em>' attribute.
	 * @see #getUndertakingorganizationcode()
	 */
	public void setUndertakingorganizationcode(String undertakingorganizationcode) {
		super.setByIndex(INDEX_UNDERTAKINGORGANIZATIONCODE, undertakingorganizationcode);
	}

	/**
	 * Returns the value of the '<em><b>Manufacturingspecification</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Manufacturingspecification</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Manufacturingspecification</em>' attribute.
	 * @see #setManufacturingspecification(java.lang.String)
	 */
	public String getManufacturingspecification() {
		return DataUtil.toString(super.getByIndex(INDEX_MANUFACTURINGSPECIFICATION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getManufacturingspecification <em>Manufacturingspecification</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Manufacturingspecification</em>' attribute.
	 * @see #getManufacturingspecification()
	 */
	public void setManufacturingspecification(String manufacturingspecification) {
		super.setByIndex(INDEX_MANUFACTURINGSPECIFICATION, manufacturingspecification);
	}

	/**
	 * Returns the value of the '<em><b>Installationunitandcode</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Installationunitandcode</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Installationunitandcode</em>' attribute.
	 * @see #setInstallationunitandcode(java.lang.String)
	 */
	public String getInstallationunitandcode() {
		return DataUtil.toString(super.getByIndex(INDEX_INSTALLATIONUNITANDCODE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getInstallationunitandcode <em>Installationunitandcode</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Installationunitandcode</em>' attribute.
	 * @see #getInstallationunitandcode()
	 */
	public void setInstallationunitandcode(String installationunitandcode) {
		super.setByIndex(INDEX_INSTALLATIONUNITANDCODE, installationunitandcode);
	}

	/**
	 * Returns the value of the '<em><b>Installationdate</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Installationdate</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Installationdate</em>' attribute.
	 * @see #setInstallationdate(java.lang.String)
	 */
	public String getInstallationdate() {
		return DataUtil.toString(super.getByIndex(INDEX_INSTALLATIONDATE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getInstallationdate <em>Installationdate</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Installationdate</em>' attribute.
	 * @see #getInstallationdate()
	 */
	public void setInstallationdate(String installationdate) {
		super.setByIndex(INDEX_INSTALLATIONDATE, installationdate);
	}

	/**
	 * Returns the value of the '<em><b>Usedate</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Usedate</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Usedate</em>' attribute.
	 * @see #setUsedate(java.lang.String)
	 */
	public String getUsedate() {
		return DataUtil.toString(super.getByIndex(INDEX_USEDATE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getUsedate <em>Usedate</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Usedate</em>' attribute.
	 * @see #getUsedate()
	 */
	public void setUsedate(String usedate) {
		super.setByIndex(INDEX_USEDATE, usedate);
	}

	/**
	 * Returns the value of the '<em><b>Supervisoryunitandcode</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Supervisoryunitandcode</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Supervisoryunitandcode</em>' attribute.
	 * @see #setSupervisoryunitandcode(java.lang.String)
	 */
	public String getSupervisoryunitandcode() {
		return DataUtil.toString(super.getByIndex(INDEX_SUPERVISORYUNITANDCODE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getSupervisoryunitandcode <em>Supervisoryunitandcode</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Supervisoryunitandcode</em>' attribute.
	 * @see #getSupervisoryunitandcode()
	 */
	public void setSupervisoryunitandcode(String supervisoryunitandcode) {
		super.setByIndex(INDEX_SUPERVISORYUNITANDCODE, supervisoryunitandcode);
	}

	/**
	 * Returns the value of the '<em><b>Inspectionentity</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Inspectionentity</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Inspectionentity</em>' attribute.
	 * @see #setInspectionentity(java.lang.String)
	 */
	public String getInspectionentity() {
		return DataUtil.toString(super.getByIndex(INDEX_INSPECTIONENTITY, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getInspectionentity <em>Inspectionentity</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Inspectionentity</em>' attribute.
	 * @see #getInspectionentity()
	 */
	public void setInspectionentity(String inspectionentity) {
		super.setByIndex(INDEX_INSPECTIONENTITY, inspectionentity);
	}

	/**
	 * Returns the value of the '<em><b>Inspectionunitcode</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Inspectionunitcode</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Inspectionunitcode</em>' attribute.
	 * @see #setInspectionunitcode(java.lang.String)
	 */
	public String getInspectionunitcode() {
		return DataUtil.toString(super.getByIndex(INDEX_INSPECTIONUNITCODE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getInspectionunitcode <em>Inspectionunitcode</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Inspectionunitcode</em>' attribute.
	 * @see #getInspectionunitcode()
	 */
	public void setInspectionunitcode(String inspectionunitcode) {
		super.setByIndex(INDEX_INSPECTIONUNITCODE, inspectionunitcode);
	}

	/**
	 * Returns the value of the '<em><b>Inspectiondate</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Inspectiondate</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Inspectiondate</em>' attribute.
	 * @see #setInspectiondate(java.lang.String)
	 */
	public String getInspectiondate() {
		return DataUtil.toString(super.getByIndex(INDEX_INSPECTIONDATE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getInspectiondate <em>Inspectiondate</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Inspectiondate</em>' attribute.
	 * @see #getInspectiondate()
	 */
	public void setInspectiondate(String inspectiondate) {
		super.setByIndex(INDEX_INSPECTIONDATE, inspectiondate);
	}

	/**
	 * Returns the value of the '<em><b>Identifycategory</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Identifycategory</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Identifycategory</em>' attribute.
	 * @see #setIdentifycategory(java.lang.String)
	 */
	public String getIdentifycategory() {
		return DataUtil.toString(super.getByIndex(INDEX_IDENTIFYCATEGORY, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getIdentifycategory <em>Identifycategory</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Identifycategory</em>' attribute.
	 * @see #getIdentifycategory()
	 */
	public void setIdentifycategory(String identifycategory) {
		super.setByIndex(INDEX_IDENTIFYCATEGORY, identifycategory);
	}

	/**
	 * Returns the value of the '<em><b>Mainproblem</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Mainproblem</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Mainproblem</em>' attribute.
	 * @see #setMainproblem(java.lang.String)
	 */
	public String getMainproblem() {
		return DataUtil.toString(super.getByIndex(INDEX_MAINPROBLEM, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getMainproblem <em>Mainproblem</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Mainproblem</em>' attribute.
	 * @see #getMainproblem()
	 */
	public void setMainproblem(String mainproblem) {
		super.setByIndex(INDEX_MAINPROBLEM, mainproblem);
	}

	/**
	 * Returns the value of the '<em><b>Testresults</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Testresults</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Testresults</em>' attribute.
	 * @see #setTestresults(java.lang.String)
	 */
	public String getTestresults() {
		return DataUtil.toString(super.getByIndex(INDEX_TESTRESULTS, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getTestresults <em>Testresults</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Testresults</em>' attribute.
	 * @see #getTestresults()
	 */
	public void setTestresults(String testresults) {
		super.setByIndex(INDEX_TESTRESULTS, testresults);
	}

	/**
	 * Returns the value of the '<em><b>Reportnumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Reportnumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Reportnumber</em>' attribute.
	 * @see #setReportnumber(java.lang.String)
	 */
	public String getReportnumber() {
		return DataUtil.toString(super.getByIndex(INDEX_REPORTNUMBER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getReportnumber <em>Reportnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Reportnumber</em>' attribute.
	 * @see #getReportnumber()
	 */
	public void setReportnumber(String reportnumber) {
		super.setByIndex(INDEX_REPORTNUMBER, reportnumber);
	}

	/**
	 * Returns the value of the '<em><b>Nextinspectiondate</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Nextinspectiondate</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Nextinspectiondate</em>' attribute.
	 * @see #setNextinspectiondate(java.lang.String)
	 */
	public String getNextinspectiondate() {
		return DataUtil.toString(super.getByIndex(INDEX_NEXTINSPECTIONDATE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getNextinspectiondate <em>Nextinspectiondate</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Nextinspectiondate</em>' attribute.
	 * @see #getNextinspectiondate()
	 */
	public void setNextinspectiondate(String nextinspectiondate) {
		super.setByIndex(INDEX_NEXTINSPECTIONDATE, nextinspectiondate);
	}

	/**
	 * Returns the value of the '<em><b>Accidentcategory</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Accidentcategory</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Accidentcategory</em>' attribute.
	 * @see #setAccidentcategory(java.lang.String)
	 */
	public String getAccidentcategory() {
		return DataUtil.toString(super.getByIndex(INDEX_ACCIDENTCATEGORY, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getAccidentcategory <em>Accidentcategory</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Accidentcategory</em>' attribute.
	 * @see #getAccidentcategory()
	 */
	public void setAccidentcategory(String accidentcategory) {
		super.setByIndex(INDEX_ACCIDENTCATEGORY, accidentcategory);
	}

	/**
	 * Returns the value of the '<em><b>Accidentdate</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Accidentdate</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Accidentdate</em>' attribute.
	 * @see #setAccidentdate(java.lang.String)
	 */
	public String getAccidentdate() {
		return DataUtil.toString(super.getByIndex(INDEX_ACCIDENTDATE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getAccidentdate <em>Accidentdate</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Accidentdate</em>' attribute.
	 * @see #getAccidentdate()
	 */
	public void setAccidentdate(String accidentdate) {
		super.setByIndex(INDEX_ACCIDENTDATE, accidentdate);
	}

	/**
	 * Returns the value of the '<em><b>Accidenthandling</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Accidenthandling</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Accidenthandling</em>' attribute.
	 * @see #setAccidenthandling(java.lang.String)
	 */
	public String getAccidenthandling() {
		return DataUtil.toString(super.getByIndex(INDEX_ACCIDENTHANDLING, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getAccidenthandling <em>Accidenthandling</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Accidenthandling</em>' attribute.
	 * @see #getAccidenthandling()
	 */
	public void setAccidenthandling(String accidenthandling) {
		super.setByIndex(INDEX_ACCIDENTHANDLING, accidenthandling);
	}

	/**
	 * Returns the value of the '<em><b>Devicechangemethod</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Devicechangemethod</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Devicechangemethod</em>' attribute.
	 * @see #setDevicechangemethod(java.lang.String)
	 */
	public String getDevicechangemethod() {
		return DataUtil.toString(super.getByIndex(INDEX_DEVICECHANGEMETHOD, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getDevicechangemethod <em>Devicechangemethod</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Devicechangemethod</em>' attribute.
	 * @see #getDevicechangemethod()
	 */
	public void setDevicechangemethod(String devicechangemethod) {
		super.setByIndex(INDEX_DEVICECHANGEMETHOD, devicechangemethod);
	}

	/**
	 * Returns the value of the '<em><b>Equipmentchangeproject</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Equipmentchangeproject</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Equipmentchangeproject</em>' attribute.
	 * @see #setEquipmentchangeproject(java.lang.String)
	 */
	public String getEquipmentchangeproject() {
		return DataUtil.toString(super.getByIndex(INDEX_EQUIPMENTCHANGEPROJECT, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getEquipmentchangeproject <em>Equipmentchangeproject</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equipmentchangeproject</em>' attribute.
	 * @see #getEquipmentchangeproject()
	 */
	public void setEquipmentchangeproject(String equipmentchangeproject) {
		super.setByIndex(INDEX_EQUIPMENTCHANGEPROJECT, equipmentchangeproject);
	}

	/**
	 * Returns the value of the '<em><b>Equipmentchangedate</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Equipmentchangedate</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Equipmentchangedate</em>' attribute.
	 * @see #setEquipmentchangedate(java.lang.String)
	 */
	public String getEquipmentchangedate() {
		return DataUtil.toString(super.getByIndex(INDEX_EQUIPMENTCHANGEDATE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getEquipmentchangedate <em>Equipmentchangedate</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equipmentchangedate</em>' attribute.
	 * @see #getEquipmentchangedate()
	 */
	public void setEquipmentchangedate(String equipmentchangedate) {
		super.setByIndex(INDEX_EQUIPMENTCHANGEDATE, equipmentchangedate);
	}

	/**
	 * Returns the value of the '<em><b>Changecommitmentunit</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Changecommitmentunit</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Changecommitmentunit</em>' attribute.
	 * @see #setChangecommitmentunit(java.lang.String)
	 */
	public String getChangecommitmentunit() {
		return DataUtil.toString(super.getByIndex(INDEX_CHANGECOMMITMENTUNIT, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getChangecommitmentunit <em>Changecommitmentunit</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Changecommitmentunit</em>' attribute.
	 * @see #getChangecommitmentunit()
	 */
	public void setChangecommitmentunit(String changecommitmentunit) {
		super.setByIndex(INDEX_CHANGECOMMITMENTUNIT, changecommitmentunit);
	}


}