/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.impl;

import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.Boiler;
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
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.impl.BoilerImpl#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.impl.BoilerImpl#getJd <em>Jd</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.impl.BoilerImpl#getJz <em>Jz</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.impl.BoilerImpl#getEquipmenttype <em>Equipmenttype</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.impl.BoilerImpl#getEquipmentname <em>Equipmentname</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.impl.BoilerImpl#getSystem <em>System</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.impl.BoilerImpl#getEquipmentnumber <em>Equipmentnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.impl.BoilerImpl#getEquipmentmodel <em>Equipmentmodel</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.impl.BoilerImpl#getBoilerregistrationcard <em>Boilerregistrationcard</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.impl.BoilerImpl#getManufacturingunit <em>Manufacturingunit</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.impl.BoilerImpl#getEquipmentdiagram <em>Equipmentdiagram</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.impl.BoilerImpl#getMainmaterial <em>Mainmaterial</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.impl.BoilerImpl#getMainbodythickness <em>Mainbodythickness</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.impl.BoilerImpl#getInstallationunit <em>Installationunit</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.impl.BoilerImpl#getThicknessmeasurementpointlayout <em>Thicknessmeasurementpointlayout</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.impl.BoilerImpl#getPropertyunit <em>Propertyunit</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.impl.BoilerImpl#getUseunit <em>Useunit</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.impl.BoilerImpl#getOrganizationcode <em>Organizationcode</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.impl.BoilerImpl#getPostalcode <em>Postalcode</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.impl.BoilerImpl#getRatedoutput <em>Ratedoutput</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.impl.BoilerImpl#getRatedpressure <em>Ratedpressure</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.impl.BoilerImpl#getRatedtemperature <em>Ratedtemperature</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.impl.BoilerImpl#getWorkingpressure <em>Workingpressure</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.impl.BoilerImpl#getOutlettemperature <em>Outlettemperature</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.impl.BoilerImpl#getRefluxtemperature <em>Refluxtemperature</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.impl.BoilerImpl#getRemarks <em>Remarks</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.impl.BoilerImpl#getOrderindex <em>Orderindex</em>}</li>
 * </ul>
 * </p>
 *
 * @extends ExtendedDataObjectImpl;
 *
 * @implements Boiler;
 */

public class BoilerImpl extends ExtendedDataObjectImpl implements Boiler {
	/**
	 * Comment for <code>serialVersionUID</code>
	 */
	private static final long serialVersionUID = 1L;
	public final static int INDEX_UUID = 0;
	public final static int INDEX_JD = 1;
	public final static int INDEX_JZ = 2;
	public final static int INDEX_EQUIPMENTTYPE = 3;
	public final static int INDEX_EQUIPMENTNAME = 4;
	public final static int INDEX_SYSTEM = 5;
	public final static int INDEX_EQUIPMENTNUMBER = 6;
	public final static int INDEX_EQUIPMENTMODEL = 7;
	public final static int INDEX_BOILERREGISTRATIONCARD = 8;
	public final static int INDEX_MANUFACTURINGUNIT = 9;
	public final static int INDEX_EQUIPMENTDIAGRAM = 10;
	public final static int INDEX_MAINMATERIAL = 11;
	public final static int INDEX_MAINBODYTHICKNESS = 12;
	public final static int INDEX_INSTALLATIONUNIT = 13;
	public final static int INDEX_THICKNESSMEASUREMENTPOINTLAYOUT = 14;
	public final static int INDEX_PROPERTYUNIT = 15;
	public final static int INDEX_USEUNIT = 16;
	public final static int INDEX_ORGANIZATIONCODE = 17;
	public final static int INDEX_POSTALCODE = 18;
	public final static int INDEX_RATEDOUTPUT = 19;
	public final static int INDEX_RATEDPRESSURE = 20;
	public final static int INDEX_RATEDTEMPERATURE = 21;
	public final static int INDEX_WORKINGPRESSURE = 22;
	public final static int INDEX_OUTLETTEMPERATURE = 23;
	public final static int INDEX_REFLUXTEMPERATURE = 24;
	public final static int INDEX_REMARKS = 25;
	public final static int INDEX_ORDERINDEX = 26;
	public static final int SDO_PROPERTY_COUNT = 27;

	public static final int EXTENDED_PROPERTY_COUNT = -1;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public BoilerImpl() {
		this(TYPE);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public BoilerImpl(Type type) {
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
	 * Returns the value of the '<em><b>Equipmentname</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Equipmentname</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Equipmentname</em>' attribute.
	 * @see #setEquipmentname(java.lang.String)
	 */
	public String getEquipmentname() {
		return DataUtil.toString(super.getByIndex(INDEX_EQUIPMENTNAME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getEquipmentname <em>Equipmentname</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equipmentname</em>' attribute.
	 * @see #getEquipmentname()
	 */
	public void setEquipmentname(String equipmentname) {
		super.setByIndex(INDEX_EQUIPMENTNAME, equipmentname);
	}

	/**
	 * Returns the value of the '<em><b>System</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>System</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>System</em>' attribute.
	 * @see #setSystem(java.lang.String)
	 */
	public String getSystem() {
		return DataUtil.toString(super.getByIndex(INDEX_SYSTEM, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getSystem <em>System</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>System</em>' attribute.
	 * @see #getSystem()
	 */
	public void setSystem(String system) {
		super.setByIndex(INDEX_SYSTEM, system);
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
	 * Returns the value of the '<em><b>Equipmentmodel</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Equipmentmodel</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Equipmentmodel</em>' attribute.
	 * @see #setEquipmentmodel(java.lang.String)
	 */
	public String getEquipmentmodel() {
		return DataUtil.toString(super.getByIndex(INDEX_EQUIPMENTMODEL, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getEquipmentmodel <em>Equipmentmodel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equipmentmodel</em>' attribute.
	 * @see #getEquipmentmodel()
	 */
	public void setEquipmentmodel(String equipmentmodel) {
		super.setByIndex(INDEX_EQUIPMENTMODEL, equipmentmodel);
	}

	/**
	 * Returns the value of the '<em><b>Boilerregistrationcard</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Boilerregistrationcard</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Boilerregistrationcard</em>' attribute.
	 * @see #setBoilerregistrationcard(java.lang.String)
	 */
	public String getBoilerregistrationcard() {
		return DataUtil.toString(super.getByIndex(INDEX_BOILERREGISTRATIONCARD, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getBoilerregistrationcard <em>Boilerregistrationcard</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Boilerregistrationcard</em>' attribute.
	 * @see #getBoilerregistrationcard()
	 */
	public void setBoilerregistrationcard(String boilerregistrationcard) {
		super.setByIndex(INDEX_BOILERREGISTRATIONCARD, boilerregistrationcard);
	}

	/**
	 * Returns the value of the '<em><b>Manufacturingunit</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Manufacturingunit</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Manufacturingunit</em>' attribute.
	 * @see #setManufacturingunit(java.lang.String)
	 */
	public String getManufacturingunit() {
		return DataUtil.toString(super.getByIndex(INDEX_MANUFACTURINGUNIT, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getManufacturingunit <em>Manufacturingunit</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Manufacturingunit</em>' attribute.
	 * @see #getManufacturingunit()
	 */
	public void setManufacturingunit(String manufacturingunit) {
		super.setByIndex(INDEX_MANUFACTURINGUNIT, manufacturingunit);
	}

	/**
	 * Returns the value of the '<em><b>Equipmentdiagram</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Equipmentdiagram</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Equipmentdiagram</em>' attribute.
	 * @see #setEquipmentdiagram(java.lang.String)
	 */
	public String getEquipmentdiagram() {
		return DataUtil.toString(super.getByIndex(INDEX_EQUIPMENTDIAGRAM, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getEquipmentdiagram <em>Equipmentdiagram</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equipmentdiagram</em>' attribute.
	 * @see #getEquipmentdiagram()
	 */
	public void setEquipmentdiagram(String equipmentdiagram) {
		super.setByIndex(INDEX_EQUIPMENTDIAGRAM, equipmentdiagram);
	}

	/**
	 * Returns the value of the '<em><b>Mainmaterial</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Mainmaterial</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Mainmaterial</em>' attribute.
	 * @see #setMainmaterial(java.lang.String)
	 */
	public String getMainmaterial() {
		return DataUtil.toString(super.getByIndex(INDEX_MAINMATERIAL, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getMainmaterial <em>Mainmaterial</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Mainmaterial</em>' attribute.
	 * @see #getMainmaterial()
	 */
	public void setMainmaterial(String mainmaterial) {
		super.setByIndex(INDEX_MAINMATERIAL, mainmaterial);
	}

	/**
	 * Returns the value of the '<em><b>Mainbodythickness</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Mainbodythickness</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Mainbodythickness</em>' attribute.
	 * @see #setMainbodythickness(java.lang.String)
	 */
	public String getMainbodythickness() {
		return DataUtil.toString(super.getByIndex(INDEX_MAINBODYTHICKNESS, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getMainbodythickness <em>Mainbodythickness</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Mainbodythickness</em>' attribute.
	 * @see #getMainbodythickness()
	 */
	public void setMainbodythickness(String mainbodythickness) {
		super.setByIndex(INDEX_MAINBODYTHICKNESS, mainbodythickness);
	}

	/**
	 * Returns the value of the '<em><b>Installationunit</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Installationunit</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Installationunit</em>' attribute.
	 * @see #setInstallationunit(java.lang.String)
	 */
	public String getInstallationunit() {
		return DataUtil.toString(super.getByIndex(INDEX_INSTALLATIONUNIT, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getInstallationunit <em>Installationunit</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Installationunit</em>' attribute.
	 * @see #getInstallationunit()
	 */
	public void setInstallationunit(String installationunit) {
		super.setByIndex(INDEX_INSTALLATIONUNIT, installationunit);
	}

	/**
	 * Returns the value of the '<em><b>Thicknessmeasurementpointlayout</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Thicknessmeasurementpointlayout</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Thicknessmeasurementpointlayout</em>' attribute.
	 * @see #setThicknessmeasurementpointlayout(java.lang.String)
	 */
	public String getThicknessmeasurementpointlayout() {
		return DataUtil.toString(super.getByIndex(INDEX_THICKNESSMEASUREMENTPOINTLAYOUT, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getThicknessmeasurementpointlayout <em>Thicknessmeasurementpointlayout</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Thicknessmeasurementpointlayout</em>' attribute.
	 * @see #getThicknessmeasurementpointlayout()
	 */
	public void setThicknessmeasurementpointlayout(String thicknessmeasurementpointlayout) {
		super.setByIndex(INDEX_THICKNESSMEASUREMENTPOINTLAYOUT, thicknessmeasurementpointlayout);
	}

	/**
	 * Returns the value of the '<em><b>Propertyunit</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Propertyunit</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Propertyunit</em>' attribute.
	 * @see #setPropertyunit(java.lang.String)
	 */
	public String getPropertyunit() {
		return DataUtil.toString(super.getByIndex(INDEX_PROPERTYUNIT, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getPropertyunit <em>Propertyunit</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Propertyunit</em>' attribute.
	 * @see #getPropertyunit()
	 */
	public void setPropertyunit(String propertyunit) {
		super.setByIndex(INDEX_PROPERTYUNIT, propertyunit);
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
	 * Returns the value of the '<em><b>Organizationcode</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Organizationcode</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Organizationcode</em>' attribute.
	 * @see #setOrganizationcode(java.lang.String)
	 */
	public String getOrganizationcode() {
		return DataUtil.toString(super.getByIndex(INDEX_ORGANIZATIONCODE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getOrganizationcode <em>Organizationcode</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Organizationcode</em>' attribute.
	 * @see #getOrganizationcode()
	 */
	public void setOrganizationcode(String organizationcode) {
		super.setByIndex(INDEX_ORGANIZATIONCODE, organizationcode);
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
	 * Returns the value of the '<em><b>Ratedoutput</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Ratedoutput</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Ratedoutput</em>' attribute.
	 * @see #setRatedoutput(java.lang.String)
	 */
	public String getRatedoutput() {
		return DataUtil.toString(super.getByIndex(INDEX_RATEDOUTPUT, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getRatedoutput <em>Ratedoutput</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Ratedoutput</em>' attribute.
	 * @see #getRatedoutput()
	 */
	public void setRatedoutput(String ratedoutput) {
		super.setByIndex(INDEX_RATEDOUTPUT, ratedoutput);
	}

	/**
	 * Returns the value of the '<em><b>Ratedpressure</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Ratedpressure</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Ratedpressure</em>' attribute.
	 * @see #setRatedpressure(java.lang.String)
	 */
	public String getRatedpressure() {
		return DataUtil.toString(super.getByIndex(INDEX_RATEDPRESSURE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getRatedpressure <em>Ratedpressure</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Ratedpressure</em>' attribute.
	 * @see #getRatedpressure()
	 */
	public void setRatedpressure(String ratedpressure) {
		super.setByIndex(INDEX_RATEDPRESSURE, ratedpressure);
	}

	/**
	 * Returns the value of the '<em><b>Ratedtemperature</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Ratedtemperature</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Ratedtemperature</em>' attribute.
	 * @see #setRatedtemperature(java.lang.String)
	 */
	public String getRatedtemperature() {
		return DataUtil.toString(super.getByIndex(INDEX_RATEDTEMPERATURE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getRatedtemperature <em>Ratedtemperature</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Ratedtemperature</em>' attribute.
	 * @see #getRatedtemperature()
	 */
	public void setRatedtemperature(String ratedtemperature) {
		super.setByIndex(INDEX_RATEDTEMPERATURE, ratedtemperature);
	}

	/**
	 * Returns the value of the '<em><b>Workingpressure</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Workingpressure</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Workingpressure</em>' attribute.
	 * @see #setWorkingpressure(java.lang.String)
	 */
	public String getWorkingpressure() {
		return DataUtil.toString(super.getByIndex(INDEX_WORKINGPRESSURE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getWorkingpressure <em>Workingpressure</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Workingpressure</em>' attribute.
	 * @see #getWorkingpressure()
	 */
	public void setWorkingpressure(String workingpressure) {
		super.setByIndex(INDEX_WORKINGPRESSURE, workingpressure);
	}

	/**
	 * Returns the value of the '<em><b>Outlettemperature</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Outlettemperature</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Outlettemperature</em>' attribute.
	 * @see #setOutlettemperature(java.lang.String)
	 */
	public String getOutlettemperature() {
		return DataUtil.toString(super.getByIndex(INDEX_OUTLETTEMPERATURE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getOutlettemperature <em>Outlettemperature</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Outlettemperature</em>' attribute.
	 * @see #getOutlettemperature()
	 */
	public void setOutlettemperature(String outlettemperature) {
		super.setByIndex(INDEX_OUTLETTEMPERATURE, outlettemperature);
	}

	/**
	 * Returns the value of the '<em><b>Refluxtemperature</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Refluxtemperature</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Refluxtemperature</em>' attribute.
	 * @see #setRefluxtemperature(java.lang.String)
	 */
	public String getRefluxtemperature() {
		return DataUtil.toString(super.getByIndex(INDEX_REFLUXTEMPERATURE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getRefluxtemperature <em>Refluxtemperature</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Refluxtemperature</em>' attribute.
	 * @see #getRefluxtemperature()
	 */
	public void setRefluxtemperature(String refluxtemperature) {
		super.setByIndex(INDEX_REFLUXTEMPERATURE, refluxtemperature);
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
	 * Returns the value of the '<em><b>Orderindex</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Orderindex</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Orderindex</em>' attribute.
	 * @see #setOrderindex(java.lang.String)
	 */
	public String getOrderindex() {
		return DataUtil.toString(super.getByIndex(INDEX_ORDERINDEX, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getOrderindex <em>Orderindex</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Orderindex</em>' attribute.
	 * @see #getOrderindex()
	 */
	public void setOrderindex(String orderindex) {
		super.setByIndex(INDEX_ORDERINDEX, orderindex);
	}


}