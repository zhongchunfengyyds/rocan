/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.impl;

import com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation;
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
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.impl.EquipmentbaseinformationImpl#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.impl.EquipmentbaseinformationImpl#getJd <em>Jd</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.impl.EquipmentbaseinformationImpl#getJz <em>Jz</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.impl.EquipmentbaseinformationImpl#getDevicename <em>Devicename</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.impl.EquipmentbaseinformationImpl#getPosition <em>Position</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.impl.EquipmentbaseinformationImpl#getDevicetype <em>Devicetype</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.impl.EquipmentbaseinformationImpl#getRccmlevel <em>Rccmlevel</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.impl.EquipmentbaseinformationImpl#getRccplevel <em>Rccplevel</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.impl.EquipmentbaseinformationImpl#getRsemlevel <em>Rsemlevel</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.impl.EquipmentbaseinformationImpl#getDesignpressure <em>Designpressure</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.impl.EquipmentbaseinformationImpl#getOperatingpressure <em>Operatingpressure</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.impl.EquipmentbaseinformationImpl#getDesigntemperature <em>Designtemperature</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.impl.EquipmentbaseinformationImpl#getOperationtemperature <em>Operationtemperature</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.impl.EquipmentbaseinformationImpl#getEommfile <em>Eommfile</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.impl.EquipmentbaseinformationImpl#getSdmfile <em>Sdmfile</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.impl.EquipmentbaseinformationImpl#getEuqipmentgraph <em>Euqipmentgraph</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.impl.EquipmentbaseinformationImpl#getEquiaxedgraph <em>Equiaxedgraph</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.impl.EquipmentbaseinformationImpl#getEomrfile <em>Eomrfile</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.impl.EquipmentbaseinformationImpl#getManufacturer <em>Manufacturer</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.impl.EquipmentbaseinformationImpl#getEquipment_manufacturing_number <em>Equipment_manufacturing_number</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.impl.EquipmentbaseinformationImpl#getMaterialbrand <em>Materialbrand</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.impl.EquipmentbaseinformationImpl#getDeleteperson <em>Deleteperson</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.impl.EquipmentbaseinformationImpl#getDeletetime <em>Deletetime</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.impl.EquipmentbaseinformationImpl#getIsdel <em>Isdel</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.impl.EquipmentbaseinformationImpl#getOrderindex <em>Orderindex</em>}</li>
 * </ul>
 * </p>
 *
 * @extends ExtendedDataObjectImpl;
 *
 * @implements Equipmentbaseinformation;
 */

public class EquipmentbaseinformationImpl extends ExtendedDataObjectImpl implements Equipmentbaseinformation {
	/**
	 * Comment for <code>serialVersionUID</code>
	 */
	private static final long serialVersionUID = 1L;
	public final static int INDEX_UUID = 0;
	public final static int INDEX_JD = 1;
	public final static int INDEX_JZ = 2;
	public final static int INDEX_DEVICENAME = 3;
	public final static int INDEX_POSITION = 4;
	public final static int INDEX_DEVICETYPE = 5;
	public final static int INDEX_RCCMLEVEL = 6;
	public final static int INDEX_RCCPLEVEL = 7;
	public final static int INDEX_RSEMLEVEL = 8;
	public final static int INDEX_DESIGNPRESSURE = 9;
	public final static int INDEX_OPERATINGPRESSURE = 10;
	public final static int INDEX_DESIGNTEMPERATURE = 11;
	public final static int INDEX_OPERATIONTEMPERATURE = 12;
	public final static int INDEX_EOMMFILE = 13;
	public final static int INDEX_SDMFILE = 14;
	public final static int INDEX_EUQIPMENTGRAPH = 15;
	public final static int INDEX_EQUIAXEDGRAPH = 16;
	public final static int INDEX_EOMRFILE = 17;
	public final static int INDEX_MANUFACTURER = 18;
	public final static int INDEX_EQUIPMENT_MANUFACTURING_NUMBER = 19;
	public final static int INDEX_MATERIALBRAND = 20;
	public final static int INDEX_DELETEPERSON = 21;
	public final static int INDEX_DELETETIME = 22;
	public final static int INDEX_ISDEL = 23;
	public final static int INDEX_ORDERINDEX = 24;
	public static final int SDO_PROPERTY_COUNT = 25;

	public static final int EXTENDED_PROPERTY_COUNT = -1;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public EquipmentbaseinformationImpl() {
		this(TYPE);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public EquipmentbaseinformationImpl(Type type) {
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
	 * Returns the value of the '<em><b>Devicename</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Devicename</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Devicename</em>' attribute.
	 * @see #setDevicename(java.lang.String)
	 */
	public String getDevicename() {
		return DataUtil.toString(super.getByIndex(INDEX_DEVICENAME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getDevicename <em>Devicename</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Devicename</em>' attribute.
	 * @see #getDevicename()
	 */
	public void setDevicename(String devicename) {
		super.setByIndex(INDEX_DEVICENAME, devicename);
	}

	/**
	 * Returns the value of the '<em><b>Position</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Position</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Position</em>' attribute.
	 * @see #setPosition(java.lang.String)
	 */
	public String getPosition() {
		return DataUtil.toString(super.getByIndex(INDEX_POSITION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getPosition <em>Position</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Position</em>' attribute.
	 * @see #getPosition()
	 */
	public void setPosition(String position) {
		super.setByIndex(INDEX_POSITION, position);
	}

	/**
	 * Returns the value of the '<em><b>Devicetype</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Devicetype</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Devicetype</em>' attribute.
	 * @see #setDevicetype(java.lang.String)
	 */
	public String getDevicetype() {
		return DataUtil.toString(super.getByIndex(INDEX_DEVICETYPE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getDevicetype <em>Devicetype</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Devicetype</em>' attribute.
	 * @see #getDevicetype()
	 */
	public void setDevicetype(String devicetype) {
		super.setByIndex(INDEX_DEVICETYPE, devicetype);
	}

	/**
	 * Returns the value of the '<em><b>Rccmlevel</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Rccmlevel</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Rccmlevel</em>' attribute.
	 * @see #setRccmlevel(java.lang.String)
	 */
	public String getRccmlevel() {
		return DataUtil.toString(super.getByIndex(INDEX_RCCMLEVEL, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getRccmlevel <em>Rccmlevel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Rccmlevel</em>' attribute.
	 * @see #getRccmlevel()
	 */
	public void setRccmlevel(String rccmlevel) {
		super.setByIndex(INDEX_RCCMLEVEL, rccmlevel);
	}

	/**
	 * Returns the value of the '<em><b>Rccplevel</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Rccplevel</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Rccplevel</em>' attribute.
	 * @see #setRccplevel(java.lang.String)
	 */
	public String getRccplevel() {
		return DataUtil.toString(super.getByIndex(INDEX_RCCPLEVEL, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getRccplevel <em>Rccplevel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Rccplevel</em>' attribute.
	 * @see #getRccplevel()
	 */
	public void setRccplevel(String rccplevel) {
		super.setByIndex(INDEX_RCCPLEVEL, rccplevel);
	}

	/**
	 * Returns the value of the '<em><b>Rsemlevel</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Rsemlevel</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Rsemlevel</em>' attribute.
	 * @see #setRsemlevel(java.lang.String)
	 */
	public String getRsemlevel() {
		return DataUtil.toString(super.getByIndex(INDEX_RSEMLEVEL, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getRsemlevel <em>Rsemlevel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Rsemlevel</em>' attribute.
	 * @see #getRsemlevel()
	 */
	public void setRsemlevel(String rsemlevel) {
		super.setByIndex(INDEX_RSEMLEVEL, rsemlevel);
	}

	/**
	 * Returns the value of the '<em><b>Designpressure</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Designpressure</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Designpressure</em>' attribute.
	 * @see #setDesignpressure(java.lang.String)
	 */
	public String getDesignpressure() {
		return DataUtil.toString(super.getByIndex(INDEX_DESIGNPRESSURE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getDesignpressure <em>Designpressure</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Designpressure</em>' attribute.
	 * @see #getDesignpressure()
	 */
	public void setDesignpressure(String designpressure) {
		super.setByIndex(INDEX_DESIGNPRESSURE, designpressure);
	}

	/**
	 * Returns the value of the '<em><b>Operatingpressure</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Operatingpressure</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Operatingpressure</em>' attribute.
	 * @see #setOperatingpressure(java.lang.String)
	 */
	public String getOperatingpressure() {
		return DataUtil.toString(super.getByIndex(INDEX_OPERATINGPRESSURE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getOperatingpressure <em>Operatingpressure</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Operatingpressure</em>' attribute.
	 * @see #getOperatingpressure()
	 */
	public void setOperatingpressure(String operatingpressure) {
		super.setByIndex(INDEX_OPERATINGPRESSURE, operatingpressure);
	}

	/**
	 * Returns the value of the '<em><b>Designtemperature</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Designtemperature</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Designtemperature</em>' attribute.
	 * @see #setDesigntemperature(java.lang.String)
	 */
	public String getDesigntemperature() {
		return DataUtil.toString(super.getByIndex(INDEX_DESIGNTEMPERATURE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getDesigntemperature <em>Designtemperature</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Designtemperature</em>' attribute.
	 * @see #getDesigntemperature()
	 */
	public void setDesigntemperature(String designtemperature) {
		super.setByIndex(INDEX_DESIGNTEMPERATURE, designtemperature);
	}

	/**
	 * Returns the value of the '<em><b>Operationtemperature</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Operationtemperature</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Operationtemperature</em>' attribute.
	 * @see #setOperationtemperature(java.lang.String)
	 */
	public String getOperationtemperature() {
		return DataUtil.toString(super.getByIndex(INDEX_OPERATIONTEMPERATURE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getOperationtemperature <em>Operationtemperature</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Operationtemperature</em>' attribute.
	 * @see #getOperationtemperature()
	 */
	public void setOperationtemperature(String operationtemperature) {
		super.setByIndex(INDEX_OPERATIONTEMPERATURE, operationtemperature);
	}

	/**
	 * Returns the value of the '<em><b>Eommfile</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Eommfile</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Eommfile</em>' attribute.
	 * @see #setEommfile(java.lang.String)
	 */
	public String getEommfile() {
		return DataUtil.toString(super.getByIndex(INDEX_EOMMFILE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getEommfile <em>Eommfile</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Eommfile</em>' attribute.
	 * @see #getEommfile()
	 */
	public void setEommfile(String eommfile) {
		super.setByIndex(INDEX_EOMMFILE, eommfile);
	}

	/**
	 * Returns the value of the '<em><b>Sdmfile</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Sdmfile</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Sdmfile</em>' attribute.
	 * @see #setSdmfile(java.lang.String)
	 */
	public String getSdmfile() {
		return DataUtil.toString(super.getByIndex(INDEX_SDMFILE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getSdmfile <em>Sdmfile</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Sdmfile</em>' attribute.
	 * @see #getSdmfile()
	 */
	public void setSdmfile(String sdmfile) {
		super.setByIndex(INDEX_SDMFILE, sdmfile);
	}

	/**
	 * Returns the value of the '<em><b>Euqipmentgraph</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Euqipmentgraph</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Euqipmentgraph</em>' attribute.
	 * @see #setEuqipmentgraph(java.lang.String)
	 */
	public String getEuqipmentgraph() {
		return DataUtil.toString(super.getByIndex(INDEX_EUQIPMENTGRAPH, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getEuqipmentgraph <em>Euqipmentgraph</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Euqipmentgraph</em>' attribute.
	 * @see #getEuqipmentgraph()
	 */
	public void setEuqipmentgraph(String euqipmentgraph) {
		super.setByIndex(INDEX_EUQIPMENTGRAPH, euqipmentgraph);
	}

	/**
	 * Returns the value of the '<em><b>Equiaxedgraph</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Equiaxedgraph</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Equiaxedgraph</em>' attribute.
	 * @see #setEquiaxedgraph(java.lang.String)
	 */
	public String getEquiaxedgraph() {
		return DataUtil.toString(super.getByIndex(INDEX_EQUIAXEDGRAPH, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getEquiaxedgraph <em>Equiaxedgraph</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equiaxedgraph</em>' attribute.
	 * @see #getEquiaxedgraph()
	 */
	public void setEquiaxedgraph(String equiaxedgraph) {
		super.setByIndex(INDEX_EQUIAXEDGRAPH, equiaxedgraph);
	}

	/**
	 * Returns the value of the '<em><b>Eomrfile</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Eomrfile</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Eomrfile</em>' attribute.
	 * @see #setEomrfile(java.lang.String)
	 */
	public String getEomrfile() {
		return DataUtil.toString(super.getByIndex(INDEX_EOMRFILE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getEomrfile <em>Eomrfile</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Eomrfile</em>' attribute.
	 * @see #getEomrfile()
	 */
	public void setEomrfile(String eomrfile) {
		super.setByIndex(INDEX_EOMRFILE, eomrfile);
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
	 * Returns the value of the '<em><b>Equipment_manufacturing_number</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Equipment_manufacturing_number</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Equipment_manufacturing_number</em>' attribute.
	 * @see #setEquipment_manufacturing_number(java.lang.String)
	 */
	public String getEquipment_manufacturing_number() {
		return DataUtil.toString(super.getByIndex(INDEX_EQUIPMENT_MANUFACTURING_NUMBER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getEquipment_manufacturing_number <em>Equipment_manufacturing_number</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equipment_manufacturing_number</em>' attribute.
	 * @see #getEquipment_manufacturing_number()
	 */
	public void setEquipment_manufacturing_number(String equipment_manufacturing_number) {
		super.setByIndex(INDEX_EQUIPMENT_MANUFACTURING_NUMBER, equipment_manufacturing_number);
	}

	/**
	 * Returns the value of the '<em><b>Materialbrand</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Materialbrand</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Materialbrand</em>' attribute.
	 * @see #setMaterialbrand(java.lang.String)
	 */
	public String getMaterialbrand() {
		return DataUtil.toString(super.getByIndex(INDEX_MATERIALBRAND, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getMaterialbrand <em>Materialbrand</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Materialbrand</em>' attribute.
	 * @see #getMaterialbrand()
	 */
	public void setMaterialbrand(String materialbrand) {
		super.setByIndex(INDEX_MATERIALBRAND, materialbrand);
	}

	/**
	 * Returns the value of the '<em><b>Deleteperson</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Deleteperson</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Deleteperson</em>' attribute.
	 * @see #setDeleteperson(java.lang.String)
	 */
	public String getDeleteperson() {
		return DataUtil.toString(super.getByIndex(INDEX_DELETEPERSON, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getDeleteperson <em>Deleteperson</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Deleteperson</em>' attribute.
	 * @see #getDeleteperson()
	 */
	public void setDeleteperson(String deleteperson) {
		super.setByIndex(INDEX_DELETEPERSON, deleteperson);
	}

	/**
	 * Returns the value of the '<em><b>Deletetime</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Deletetime</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Deletetime</em>' attribute.
	 * @see #setDeletetime(java.lang.String)
	 */
	public String getDeletetime() {
		return DataUtil.toString(super.getByIndex(INDEX_DELETETIME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getDeletetime <em>Deletetime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Deletetime</em>' attribute.
	 * @see #getDeletetime()
	 */
	public void setDeletetime(String deletetime) {
		super.setByIndex(INDEX_DELETETIME, deletetime);
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
	 * @see #setIsdel(int)
	 */
	public int getIsdel() {
		return DataUtil.toInt(super.getByIndex(INDEX_ISDEL, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getIsdel <em>Isdel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Isdel</em>' attribute.
	 * @see #getIsdel()
	 */
	public void setIsdel(int isdel) {
		super.setByIndex(INDEX_ISDEL, isdel);
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
	 * @see #setOrderindex(int)
	 */
	public int getOrderindex() {
		return DataUtil.toInt(super.getByIndex(INDEX_ORDERINDEX, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getOrderindex <em>Orderindex</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Orderindex</em>' attribute.
	 * @see #getOrderindex()
	 */
	public void setOrderindex(int orderindex) {
		super.setByIndex(INDEX_ORDERINDEX, orderindex);
	}


}