/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl;

import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Safetyvalve;
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
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SafetyvalveImpl#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SafetyvalveImpl#getEquipmentnumber <em>Equipmentnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SafetyvalveImpl#getSvnumber <em>Svnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SafetyvalveImpl#getSvmodel <em>Svmodel</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SafetyvalveImpl#getSvinstallationlocation <em>Svinstallationlocation</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SafetyvalveImpl#getSvsettingpressure <em>Svsettingpressure</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SafetyvalveImpl#getSvnominalpressure <em>Svnominalpressure</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SafetyvalveImpl#getSvopeningpressure <em>Svopeningpressure</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SafetyvalveImpl#getSvsealingpressure <em>Svsealingpressure</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SafetyvalveImpl#getSvnominaldiameter <em>Svnominaldiameter</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SafetyvalveImpl#getSvquantity <em>Svquantity</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.SafetyvalveImpl#getSvmanufacturer <em>Svmanufacturer</em>}</li>
 * </ul>
 * </p>
 *
 * @extends ExtendedDataObjectImpl;
 *
 * @implements Safetyvalve;
 */

public class SafetyvalveImpl extends ExtendedDataObjectImpl implements Safetyvalve {
	/**
	 * Comment for <code>serialVersionUID</code>
	 */
	private static final long serialVersionUID = 1L;
	public final static int INDEX_UUID = 0;
	public final static int INDEX_EQUIPMENTNUMBER = 1;
	public final static int INDEX_SVNUMBER = 2;
	public final static int INDEX_SVMODEL = 3;
	public final static int INDEX_SVINSTALLATIONLOCATION = 4;
	public final static int INDEX_SVSETTINGPRESSURE = 5;
	public final static int INDEX_SVNOMINALPRESSURE = 6;
	public final static int INDEX_SVOPENINGPRESSURE = 7;
	public final static int INDEX_SVSEALINGPRESSURE = 8;
	public final static int INDEX_SVNOMINALDIAMETER = 9;
	public final static int INDEX_SVQUANTITY = 10;
	public final static int INDEX_SVMANUFACTURER = 11;
	public static final int SDO_PROPERTY_COUNT = 12;

	public static final int EXTENDED_PROPERTY_COUNT = -1;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public SafetyvalveImpl() {
		this(TYPE);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public SafetyvalveImpl(Type type) {
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
	 * Returns the value of the '<em><b>Svnumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Svnumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Svnumber</em>' attribute.
	 * @see #setSvnumber(java.lang.String)
	 */
	public String getSvnumber() {
		return DataUtil.toString(super.getByIndex(INDEX_SVNUMBER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getSvnumber <em>Svnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Svnumber</em>' attribute.
	 * @see #getSvnumber()
	 */
	public void setSvnumber(String svnumber) {
		super.setByIndex(INDEX_SVNUMBER, svnumber);
	}

	/**
	 * Returns the value of the '<em><b>Svmodel</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Svmodel</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Svmodel</em>' attribute.
	 * @see #setSvmodel(java.lang.String)
	 */
	public String getSvmodel() {
		return DataUtil.toString(super.getByIndex(INDEX_SVMODEL, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getSvmodel <em>Svmodel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Svmodel</em>' attribute.
	 * @see #getSvmodel()
	 */
	public void setSvmodel(String svmodel) {
		super.setByIndex(INDEX_SVMODEL, svmodel);
	}

	/**
	 * Returns the value of the '<em><b>Svinstallationlocation</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Svinstallationlocation</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Svinstallationlocation</em>' attribute.
	 * @see #setSvinstallationlocation(java.lang.String)
	 */
	public String getSvinstallationlocation() {
		return DataUtil.toString(super.getByIndex(INDEX_SVINSTALLATIONLOCATION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getSvinstallationlocation <em>Svinstallationlocation</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Svinstallationlocation</em>' attribute.
	 * @see #getSvinstallationlocation()
	 */
	public void setSvinstallationlocation(String svinstallationlocation) {
		super.setByIndex(INDEX_SVINSTALLATIONLOCATION, svinstallationlocation);
	}

	/**
	 * Returns the value of the '<em><b>Svsettingpressure</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Svsettingpressure</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Svsettingpressure</em>' attribute.
	 * @see #setSvsettingpressure(java.lang.String)
	 */
	public String getSvsettingpressure() {
		return DataUtil.toString(super.getByIndex(INDEX_SVSETTINGPRESSURE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getSvsettingpressure <em>Svsettingpressure</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Svsettingpressure</em>' attribute.
	 * @see #getSvsettingpressure()
	 */
	public void setSvsettingpressure(String svsettingpressure) {
		super.setByIndex(INDEX_SVSETTINGPRESSURE, svsettingpressure);
	}

	/**
	 * Returns the value of the '<em><b>Svnominalpressure</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Svnominalpressure</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Svnominalpressure</em>' attribute.
	 * @see #setSvnominalpressure(java.lang.String)
	 */
	public String getSvnominalpressure() {
		return DataUtil.toString(super.getByIndex(INDEX_SVNOMINALPRESSURE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getSvnominalpressure <em>Svnominalpressure</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Svnominalpressure</em>' attribute.
	 * @see #getSvnominalpressure()
	 */
	public void setSvnominalpressure(String svnominalpressure) {
		super.setByIndex(INDEX_SVNOMINALPRESSURE, svnominalpressure);
	}

	/**
	 * Returns the value of the '<em><b>Svopeningpressure</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Svopeningpressure</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Svopeningpressure</em>' attribute.
	 * @see #setSvopeningpressure(java.lang.String)
	 */
	public String getSvopeningpressure() {
		return DataUtil.toString(super.getByIndex(INDEX_SVOPENINGPRESSURE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getSvopeningpressure <em>Svopeningpressure</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Svopeningpressure</em>' attribute.
	 * @see #getSvopeningpressure()
	 */
	public void setSvopeningpressure(String svopeningpressure) {
		super.setByIndex(INDEX_SVOPENINGPRESSURE, svopeningpressure);
	}

	/**
	 * Returns the value of the '<em><b>Svsealingpressure</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Svsealingpressure</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Svsealingpressure</em>' attribute.
	 * @see #setSvsealingpressure(java.lang.String)
	 */
	public String getSvsealingpressure() {
		return DataUtil.toString(super.getByIndex(INDEX_SVSEALINGPRESSURE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getSvsealingpressure <em>Svsealingpressure</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Svsealingpressure</em>' attribute.
	 * @see #getSvsealingpressure()
	 */
	public void setSvsealingpressure(String svsealingpressure) {
		super.setByIndex(INDEX_SVSEALINGPRESSURE, svsealingpressure);
	}

	/**
	 * Returns the value of the '<em><b>Svnominaldiameter</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Svnominaldiameter</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Svnominaldiameter</em>' attribute.
	 * @see #setSvnominaldiameter(java.lang.String)
	 */
	public String getSvnominaldiameter() {
		return DataUtil.toString(super.getByIndex(INDEX_SVNOMINALDIAMETER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getSvnominaldiameter <em>Svnominaldiameter</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Svnominaldiameter</em>' attribute.
	 * @see #getSvnominaldiameter()
	 */
	public void setSvnominaldiameter(String svnominaldiameter) {
		super.setByIndex(INDEX_SVNOMINALDIAMETER, svnominaldiameter);
	}

	/**
	 * Returns the value of the '<em><b>Svquantity</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Svquantity</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Svquantity</em>' attribute.
	 * @see #setSvquantity(java.lang.String)
	 */
	public String getSvquantity() {
		return DataUtil.toString(super.getByIndex(INDEX_SVQUANTITY, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getSvquantity <em>Svquantity</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Svquantity</em>' attribute.
	 * @see #getSvquantity()
	 */
	public void setSvquantity(String svquantity) {
		super.setByIndex(INDEX_SVQUANTITY, svquantity);
	}

	/**
	 * Returns the value of the '<em><b>Svmanufacturer</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Svmanufacturer</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Svmanufacturer</em>' attribute.
	 * @see #setSvmanufacturer(java.lang.String)
	 */
	public String getSvmanufacturer() {
		return DataUtil.toString(super.getByIndex(INDEX_SVMANUFACTURER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getSvmanufacturer <em>Svmanufacturer</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Svmanufacturer</em>' attribute.
	 * @see #getSvmanufacturer()
	 */
	public void setSvmanufacturer(String svmanufacturer) {
		super.setByIndex(INDEX_SVMANUFACTURER, svmanufacturer);
	}


}