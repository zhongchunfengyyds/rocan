/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl;

import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Equipmenthistoryinfo;
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
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.EquipmenthistoryinfoImpl#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.EquipmenthistoryinfoImpl#getPipenumber <em>Pipenumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.EquipmenthistoryinfoImpl#getDeviceversion <em>Deviceversion</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.EquipmenthistoryinfoImpl#getCommissiontime <em>Commissiontime</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.EquipmenthistoryinfoImpl#getFreezereplacetime <em>Freezereplacetime</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.EquipmenthistoryinfoImpl#getFreezereplacereason <em>Freezereplacereason</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.EquipmenthistoryinfoImpl#getEnteringperson <em>Enteringperson</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.EquipmenthistoryinfoImpl#getEnteringtime <em>Enteringtime</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.EquipmenthistoryinfoImpl#getFj <em>Fj</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.EquipmenthistoryinfoImpl#getOperating <em>Operating</em>}</li>
 * </ul>
 * </p>
 *
 * @extends ExtendedDataObjectImpl;
 *
 * @implements Equipmenthistoryinfo;
 */

public class EquipmenthistoryinfoImpl extends ExtendedDataObjectImpl implements Equipmenthistoryinfo {
	/**
	 * Comment for <code>serialVersionUID</code>
	 */
	private static final long serialVersionUID = 1L;
	public final static int INDEX_UUID = 0;
	public final static int INDEX_PIPENUMBER = 1;
	public final static int INDEX_DEVICEVERSION = 2;
	public final static int INDEX_COMMISSIONTIME = 3;
	public final static int INDEX_FREEZEREPLACETIME = 4;
	public final static int INDEX_FREEZEREPLACEREASON = 5;
	public final static int INDEX_ENTERINGPERSON = 6;
	public final static int INDEX_ENTERINGTIME = 7;
	public final static int INDEX_FJ = 8;
	public final static int INDEX_OPERATING = 9;
	public static final int SDO_PROPERTY_COUNT = 10;

	public static final int EXTENDED_PROPERTY_COUNT = -1;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public EquipmenthistoryinfoImpl() {
		this(TYPE);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public EquipmenthistoryinfoImpl(Type type) {
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
	 * Returns the value of the '<em><b>Pipenumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Pipenumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Pipenumber</em>' attribute.
	 * @see #setPipenumber(java.lang.String)
	 */
	public String getPipenumber() {
		return DataUtil.toString(super.getByIndex(INDEX_PIPENUMBER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getPipenumber <em>Pipenumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Pipenumber</em>' attribute.
	 * @see #getPipenumber()
	 */
	public void setPipenumber(String pipenumber) {
		super.setByIndex(INDEX_PIPENUMBER, pipenumber);
	}

	/**
	 * Returns the value of the '<em><b>Deviceversion</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Deviceversion</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Deviceversion</em>' attribute.
	 * @see #setDeviceversion(java.lang.String)
	 */
	public String getDeviceversion() {
		return DataUtil.toString(super.getByIndex(INDEX_DEVICEVERSION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getDeviceversion <em>Deviceversion</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Deviceversion</em>' attribute.
	 * @see #getDeviceversion()
	 */
	public void setDeviceversion(String deviceversion) {
		super.setByIndex(INDEX_DEVICEVERSION, deviceversion);
	}

	/**
	 * Returns the value of the '<em><b>Commissiontime</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Commissiontime</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Commissiontime</em>' attribute.
	 * @see #setCommissiontime(java.lang.String)
	 */
	public String getCommissiontime() {
		return DataUtil.toString(super.getByIndex(INDEX_COMMISSIONTIME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getCommissiontime <em>Commissiontime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Commissiontime</em>' attribute.
	 * @see #getCommissiontime()
	 */
	public void setCommissiontime(String commissiontime) {
		super.setByIndex(INDEX_COMMISSIONTIME, commissiontime);
	}

	/**
	 * Returns the value of the '<em><b>Freezereplacetime</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Freezereplacetime</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Freezereplacetime</em>' attribute.
	 * @see #setFreezereplacetime(java.lang.String)
	 */
	public String getFreezereplacetime() {
		return DataUtil.toString(super.getByIndex(INDEX_FREEZEREPLACETIME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getFreezereplacetime <em>Freezereplacetime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Freezereplacetime</em>' attribute.
	 * @see #getFreezereplacetime()
	 */
	public void setFreezereplacetime(String freezereplacetime) {
		super.setByIndex(INDEX_FREEZEREPLACETIME, freezereplacetime);
	}

	/**
	 * Returns the value of the '<em><b>Freezereplacereason</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Freezereplacereason</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Freezereplacereason</em>' attribute.
	 * @see #setFreezereplacereason(java.lang.String)
	 */
	public String getFreezereplacereason() {
		return DataUtil.toString(super.getByIndex(INDEX_FREEZEREPLACEREASON, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getFreezereplacereason <em>Freezereplacereason</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Freezereplacereason</em>' attribute.
	 * @see #getFreezereplacereason()
	 */
	public void setFreezereplacereason(String freezereplacereason) {
		super.setByIndex(INDEX_FREEZEREPLACEREASON, freezereplacereason);
	}

	/**
	 * Returns the value of the '<em><b>Enteringperson</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Enteringperson</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Enteringperson</em>' attribute.
	 * @see #setEnteringperson(java.lang.String)
	 */
	public String getEnteringperson() {
		return DataUtil.toString(super.getByIndex(INDEX_ENTERINGPERSON, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getEnteringperson <em>Enteringperson</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Enteringperson</em>' attribute.
	 * @see #getEnteringperson()
	 */
	public void setEnteringperson(String enteringperson) {
		super.setByIndex(INDEX_ENTERINGPERSON, enteringperson);
	}

	/**
	 * Returns the value of the '<em><b>Enteringtime</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Enteringtime</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Enteringtime</em>' attribute.
	 * @see #setEnteringtime(java.lang.String)
	 */
	public String getEnteringtime() {
		return DataUtil.toString(super.getByIndex(INDEX_ENTERINGTIME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getEnteringtime <em>Enteringtime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Enteringtime</em>' attribute.
	 * @see #getEnteringtime()
	 */
	public void setEnteringtime(String enteringtime) {
		super.setByIndex(INDEX_ENTERINGTIME, enteringtime);
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
	 * Returns the value of the '<em><b>Operating</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Operating</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Operating</em>' attribute.
	 * @see #setOperating(java.lang.String)
	 */
	public String getOperating() {
		return DataUtil.toString(super.getByIndex(INDEX_OPERATING, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getOperating <em>Operating</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Operating</em>' attribute.
	 * @see #getOperating()
	 */
	public void setOperating(String operating) {
		super.setByIndex(INDEX_OPERATING, operating);
	}


}