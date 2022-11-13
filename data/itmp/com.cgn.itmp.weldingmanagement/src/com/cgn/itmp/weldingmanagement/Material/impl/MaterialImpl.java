/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.weldingmanagement.Material.impl;

import com.cgn.itmp.weldingmanagement.Material.Material;
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
 *   <li>{@link com.cgn.itmp.weldingmanagement.Material.impl.MaterialImpl#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Material.impl.MaterialImpl#getName <em>Name</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Material.impl.MaterialImpl#getStandard <em>Standard</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Material.impl.MaterialImpl#getBrand <em>Brand</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Material.impl.MaterialImpl#getSpecifications <em>Specifications</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Material.impl.MaterialImpl#getBatchnumber <em>Batchnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Material.impl.MaterialImpl#getPacking <em>Packing</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Material.impl.MaterialImpl#getInventory <em>Inventory</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Material.impl.MaterialImpl#getMeasurement <em>Measurement</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Material.impl.MaterialImpl#getValiduntil <em>Validuntil</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Material.impl.MaterialImpl#getAttribution <em>Attribution</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Material.impl.MaterialImpl#getMinimum <em>Minimum</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Material.impl.MaterialImpl#getRemarks <em>Remarks</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Material.impl.MaterialImpl#getIsdel <em>Isdel</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Material.impl.MaterialImpl#getJD <em>JD</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Material.impl.MaterialImpl#getModel <em>Model</em>}</li>
 * </ul>
 * </p>
 *
 * @extends ExtendedDataObjectImpl;
 *
 * @implements Material;
 */

public class MaterialImpl extends ExtendedDataObjectImpl implements Material {
	/**
	 * Comment for <code>serialVersionUID</code>
	 */
	private static final long serialVersionUID = 1L;
	public final static int INDEX_UUID = 0;
	public final static int INDEX_NAME = 1;
	public final static int INDEX_STANDARD = 2;
	public final static int INDEX_BRAND = 3;
	public final static int INDEX_SPECIFICATIONS = 4;
	public final static int INDEX_BATCHNUMBER = 5;
	public final static int INDEX_PACKING = 6;
	public final static int INDEX_INVENTORY = 7;
	public final static int INDEX_MEASUREMENT = 8;
	public final static int INDEX_VALIDUNTIL = 9;
	public final static int INDEX_ATTRIBUTION = 10;
	public final static int INDEX_MINIMUM = 11;
	public final static int INDEX_REMARKS = 12;
	public final static int INDEX_ISDEL = 13;
	public final static int INDEX_JD = 14;
	public final static int INDEX_MODEL = 15;
	public static final int SDO_PROPERTY_COUNT = 16;

	public static final int EXTENDED_PROPERTY_COUNT = -1;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public MaterialImpl() {
		this(TYPE);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public MaterialImpl(Type type) {
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
	 * Returns the value of the '<em><b>Standard</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Standard</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Standard</em>' attribute.
	 * @see #setStandard(java.lang.String)
	 */
	public String getStandard() {
		return DataUtil.toString(super.getByIndex(INDEX_STANDARD, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getStandard <em>Standard</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Standard</em>' attribute.
	 * @see #getStandard()
	 */
	public void setStandard(String standard) {
		super.setByIndex(INDEX_STANDARD, standard);
	}

	/**
	 * Returns the value of the '<em><b>Brand</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Brand</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Brand</em>' attribute.
	 * @see #setBrand(java.lang.String)
	 */
	public String getBrand() {
		return DataUtil.toString(super.getByIndex(INDEX_BRAND, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getBrand <em>Brand</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Brand</em>' attribute.
	 * @see #getBrand()
	 */
	public void setBrand(String brand) {
		super.setByIndex(INDEX_BRAND, brand);
	}

	/**
	 * Returns the value of the '<em><b>Specifications</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Specifications</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Specifications</em>' attribute.
	 * @see #setSpecifications(java.lang.String)
	 */
	public String getSpecifications() {
		return DataUtil.toString(super.getByIndex(INDEX_SPECIFICATIONS, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getSpecifications <em>Specifications</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Specifications</em>' attribute.
	 * @see #getSpecifications()
	 */
	public void setSpecifications(String specifications) {
		super.setByIndex(INDEX_SPECIFICATIONS, specifications);
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
	 * Returns the value of the '<em><b>Packing</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Packing</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Packing</em>' attribute.
	 * @see #setPacking(java.lang.String)
	 */
	public String getPacking() {
		return DataUtil.toString(super.getByIndex(INDEX_PACKING, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getPacking <em>Packing</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Packing</em>' attribute.
	 * @see #getPacking()
	 */
	public void setPacking(String packing) {
		super.setByIndex(INDEX_PACKING, packing);
	}

	/**
	 * Returns the value of the '<em><b>Inventory</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Inventory</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Inventory</em>' attribute.
	 * @see #setInventory(java.lang.String)
	 */
	public String getInventory() {
		return DataUtil.toString(super.getByIndex(INDEX_INVENTORY, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getInventory <em>Inventory</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Inventory</em>' attribute.
	 * @see #getInventory()
	 */
	public void setInventory(String inventory) {
		super.setByIndex(INDEX_INVENTORY, inventory);
	}

	/**
	 * Returns the value of the '<em><b>Measurement</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Measurement</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Measurement</em>' attribute.
	 * @see #setMeasurement(java.lang.String)
	 */
	public String getMeasurement() {
		return DataUtil.toString(super.getByIndex(INDEX_MEASUREMENT, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getMeasurement <em>Measurement</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Measurement</em>' attribute.
	 * @see #getMeasurement()
	 */
	public void setMeasurement(String measurement) {
		super.setByIndex(INDEX_MEASUREMENT, measurement);
	}

	/**
	 * Returns the value of the '<em><b>Validuntil</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Validuntil</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Validuntil</em>' attribute.
	 * @see #setValiduntil(java.lang.String)
	 */
	public String getValiduntil() {
		return DataUtil.toString(super.getByIndex(INDEX_VALIDUNTIL, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getValiduntil <em>Validuntil</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Validuntil</em>' attribute.
	 * @see #getValiduntil()
	 */
	public void setValiduntil(String validuntil) {
		super.setByIndex(INDEX_VALIDUNTIL, validuntil);
	}

	/**
	 * Returns the value of the '<em><b>Attribution</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Attribution</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Attribution</em>' attribute.
	 * @see #setAttribution(java.lang.String)
	 */
	public String getAttribution() {
		return DataUtil.toString(super.getByIndex(INDEX_ATTRIBUTION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getAttribution <em>Attribution</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Attribution</em>' attribute.
	 * @see #getAttribution()
	 */
	public void setAttribution(String attribution) {
		super.setByIndex(INDEX_ATTRIBUTION, attribution);
	}

	/**
	 * Returns the value of the '<em><b>Minimum</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Minimum</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Minimum</em>' attribute.
	 * @see #setMinimum(java.lang.String)
	 */
	public String getMinimum() {
		return DataUtil.toString(super.getByIndex(INDEX_MINIMUM, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getMinimum <em>Minimum</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Minimum</em>' attribute.
	 * @see #getMinimum()
	 */
	public void setMinimum(String minimum) {
		super.setByIndex(INDEX_MINIMUM, minimum);
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
	 * Returns the value of the '<em><b>JD</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>JD</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>JD</em>' attribute.
	 * @see #setJD(java.lang.String)
	 */
	public String getJD() {
		return DataUtil.toString(super.getByIndex(INDEX_JD, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getJD <em>JD</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>JD</em>' attribute.
	 * @see #getJD()
	 */
	public void setJD(String JD) {
		super.setByIndex(INDEX_JD, JD);
	}

	/**
	 * Returns the value of the '<em><b>Model</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Model</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Model</em>' attribute.
	 * @see #setModel(java.lang.String)
	 */
	public String getModel() {
		return DataUtil.toString(super.getByIndex(INDEX_MODEL, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getModel <em>Model</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Model</em>' attribute.
	 * @see #getModel()
	 */
	public void setModel(String model) {
		super.setByIndex(INDEX_MODEL, model);
	}


}