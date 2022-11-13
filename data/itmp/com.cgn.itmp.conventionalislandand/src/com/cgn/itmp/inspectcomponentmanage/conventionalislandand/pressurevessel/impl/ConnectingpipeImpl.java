/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl;

import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Connectingpipe;
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
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.ConnectingpipeImpl#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.ConnectingpipeImpl#getEquipmentnumber <em>Equipmentnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.ConnectingpipeImpl#getConnectpipenumber <em>Connectpipenumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.ConnectingpipeImpl#getConnectpipeparameter <em>Connectpipeparameter</em>}</li>
 * </ul>
 * </p>
 *
 * @extends ExtendedDataObjectImpl;
 *
 * @implements Connectingpipe;
 */

public class ConnectingpipeImpl extends ExtendedDataObjectImpl implements Connectingpipe {
	/**
	 * Comment for <code>serialVersionUID</code>
	 */
	private static final long serialVersionUID = 1L;
	public final static int INDEX_UUID = 0;
	public final static int INDEX_EQUIPMENTNUMBER = 1;
	public final static int INDEX_CONNECTPIPENUMBER = 2;
	public final static int INDEX_CONNECTPIPEPARAMETER = 3;
	public static final int SDO_PROPERTY_COUNT = 4;

	public static final int EXTENDED_PROPERTY_COUNT = -1;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public ConnectingpipeImpl() {
		this(TYPE);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public ConnectingpipeImpl(Type type) {
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
	 * Returns the value of the '<em><b>Connectpipenumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Connectpipenumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Connectpipenumber</em>' attribute.
	 * @see #setConnectpipenumber(java.lang.String)
	 */
	public String getConnectpipenumber() {
		return DataUtil.toString(super.getByIndex(INDEX_CONNECTPIPENUMBER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getConnectpipenumber <em>Connectpipenumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Connectpipenumber</em>' attribute.
	 * @see #getConnectpipenumber()
	 */
	public void setConnectpipenumber(String connectpipenumber) {
		super.setByIndex(INDEX_CONNECTPIPENUMBER, connectpipenumber);
	}

	/**
	 * Returns the value of the '<em><b>Connectpipeparameter</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Connectpipeparameter</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Connectpipeparameter</em>' attribute.
	 * @see #setConnectpipeparameter(java.lang.String)
	 */
	public String getConnectpipeparameter() {
		return DataUtil.toString(super.getByIndex(INDEX_CONNECTPIPEPARAMETER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getConnectpipeparameter <em>Connectpipeparameter</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Connectpipeparameter</em>' attribute.
	 * @see #getConnectpipeparameter()
	 */
	public void setConnectpipeparameter(String connectpipeparameter) {
		super.setByIndex(INDEX_CONNECTPIPEPARAMETER, connectpipeparameter);
	}


}