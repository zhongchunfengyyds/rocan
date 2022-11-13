/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel;

import com.eos.data.sdo.IObjectFactory;

import commonj.sdo.DataObject;
import commonj.sdo.Type;
import commonj.sdo.helper.DataFactory;
import commonj.sdo.helper.TypeHelper;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Test</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Shellgirthweld#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Shellgirthweld#getEquipmentnumber <em>Equipmentnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Shellgirthweld#getSgweldnumber <em>Sgweldnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Shellgirthweld#getSrweldparameters <em>Srweldparameters</em>}</li>
 * </ul>
 * </p>
 *
 * @extends DataObject;
 */
public interface Shellgirthweld extends DataObject {

	public static final String QNAME = "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Shellgirthweld";

	public static final Type TYPE = TypeHelper.INSTANCE.getType("com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel", "Shellgirthweld");

	public static final IObjectFactory<Shellgirthweld> FACTORY = new IObjectFactory<Shellgirthweld>() {
		public Shellgirthweld create() {
			return (Shellgirthweld) DataFactory.INSTANCE.create(TYPE);
		}
	};

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
	public String getUuid();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Shellgirthweld#getUuid <em>Uuid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Uuid</em>' attribute.
	 * @see #getUuid()
	 */
	public void setUuid(String uuid);

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
	public String getEquipmentnumber();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Shellgirthweld#getEquipmentnumber <em>Equipmentnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equipmentnumber</em>' attribute.
	 * @see #getEquipmentnumber()
	 */
	public void setEquipmentnumber(String equipmentnumber);

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
	public String getSgweldnumber();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Shellgirthweld#getSgweldnumber <em>Sgweldnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Sgweldnumber</em>' attribute.
	 * @see #getSgweldnumber()
	 */
	public void setSgweldnumber(String sgweldnumber);

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
	public String getSrweldparameters();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Shellgirthweld#getSrweldparameters <em>Srweldparameters</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Srweldparameters</em>' attribute.
	 * @see #getSrweldparameters()
	 */
	public void setSrweldparameters(String srweldparameters);


}