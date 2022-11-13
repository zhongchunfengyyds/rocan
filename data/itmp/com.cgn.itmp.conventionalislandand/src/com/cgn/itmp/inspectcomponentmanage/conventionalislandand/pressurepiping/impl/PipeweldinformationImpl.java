/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl;

import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pipeweldinformation;
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
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PipeweldinformationImpl#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PipeweldinformationImpl#getPipenumber <em>Pipenumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PipeweldinformationImpl#getWeldnumber <em>Weldnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PipeweldinformationImpl#getCharacteristicparameter <em>Characteristicparameter</em>}</li>
 * </ul>
 * </p>
 *
 * @extends ExtendedDataObjectImpl;
 *
 * @implements Pipeweldinformation;
 */

public class PipeweldinformationImpl extends ExtendedDataObjectImpl implements Pipeweldinformation {
	/**
	 * Comment for <code>serialVersionUID</code>
	 */
	private static final long serialVersionUID = 1L;
	public final static int INDEX_UUID = 0;
	public final static int INDEX_PIPENUMBER = 1;
	public final static int INDEX_WELDNUMBER = 2;
	public final static int INDEX_CHARACTERISTICPARAMETER = 3;
	public static final int SDO_PROPERTY_COUNT = 4;

	public static final int EXTENDED_PROPERTY_COUNT = -1;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public PipeweldinformationImpl() {
		this(TYPE);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public PipeweldinformationImpl(Type type) {
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
	 * Returns the value of the '<em><b>Weldnumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Weldnumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Weldnumber</em>' attribute.
	 * @see #setWeldnumber(java.lang.String)
	 */
	public String getWeldnumber() {
		return DataUtil.toString(super.getByIndex(INDEX_WELDNUMBER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getWeldnumber <em>Weldnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Weldnumber</em>' attribute.
	 * @see #getWeldnumber()
	 */
	public void setWeldnumber(String weldnumber) {
		super.setByIndex(INDEX_WELDNUMBER, weldnumber);
	}

	/**
	 * Returns the value of the '<em><b>Characteristicparameter</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Characteristicparameter</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Characteristicparameter</em>' attribute.
	 * @see #setCharacteristicparameter(java.lang.String)
	 */
	public String getCharacteristicparameter() {
		return DataUtil.toString(super.getByIndex(INDEX_CHARACTERISTICPARAMETER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getCharacteristicparameter <em>Characteristicparameter</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Characteristicparameter</em>' attribute.
	 * @see #getCharacteristicparameter()
	 */
	public void setCharacteristicparameter(String characteristicparameter) {
		super.setByIndex(INDEX_CHARACTERISTICPARAMETER, characteristicparameter);
	}


}