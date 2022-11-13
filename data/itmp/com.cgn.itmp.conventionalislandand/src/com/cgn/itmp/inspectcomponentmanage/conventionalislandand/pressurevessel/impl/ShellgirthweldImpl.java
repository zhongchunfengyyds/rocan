/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl;

import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Shellgirthweld;
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
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.ShellgirthweldImpl#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.ShellgirthweldImpl#getEquipmentnumber <em>Equipmentnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.ShellgirthweldImpl#getSgweldnumber <em>Sgweldnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.ShellgirthweldImpl#getSrweldparameters <em>Srweldparameters</em>}</li>
 * </ul>
 * </p>
 *
 * @extends ExtendedDataObjectImpl;
 *
 * @implements Shellgirthweld;
 */

public class ShellgirthweldImpl extends ExtendedDataObjectImpl implements Shellgirthweld {
	/**
	 * Comment for <code>serialVersionUID</code>
	 */
	private static final long serialVersionUID = 1L;
	public final static int INDEX_UUID = 0;
	public final static int INDEX_EQUIPMENTNUMBER = 1;
	public final static int INDEX_SGWELDNUMBER = 2;
	public final static int INDEX_SRWELDPARAMETERS = 3;
	public static final int SDO_PROPERTY_COUNT = 4;

	public static final int EXTENDED_PROPERTY_COUNT = -1;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public ShellgirthweldImpl() {
		this(TYPE);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public ShellgirthweldImpl(Type type) {
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
	 * Returns the value of the '<em><b>Sgweldnumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Sgweldnumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Sgweldnumber</em>' attribute.
	 * @see #setSgweldnumber(java.lang.String)
	 */
	public String getSgweldnumber() {
		return DataUtil.toString(super.getByIndex(INDEX_SGWELDNUMBER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getSgweldnumber <em>Sgweldnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Sgweldnumber</em>' attribute.
	 * @see #getSgweldnumber()
	 */
	public void setSgweldnumber(String sgweldnumber) {
		super.setByIndex(INDEX_SGWELDNUMBER, sgweldnumber);
	}

	/**
	 * Returns the value of the '<em><b>Srweldparameters</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Srweldparameters</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Srweldparameters</em>' attribute.
	 * @see #setSrweldparameters(java.lang.String)
	 */
	public String getSrweldparameters() {
		return DataUtil.toString(super.getByIndex(INDEX_SRWELDPARAMETERS, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getSrweldparameters <em>Srweldparameters</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Srweldparameters</em>' attribute.
	 * @see #getSrweldparameters()
	 */
	public void setSrweldparameters(String srweldparameters) {
		super.setByIndex(INDEX_SRWELDPARAMETERS, srweldparameters);
	}


}