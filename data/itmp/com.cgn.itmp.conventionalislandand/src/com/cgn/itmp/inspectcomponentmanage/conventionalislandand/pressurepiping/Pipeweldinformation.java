/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping;

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
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pipeweldinformation#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pipeweldinformation#getPipenumber <em>Pipenumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pipeweldinformation#getWeldnumber <em>Weldnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pipeweldinformation#getCharacteristicparameter <em>Characteristicparameter</em>}</li>
 * </ul>
 * </p>
 *
 * @extends DataObject;
 */
public interface Pipeweldinformation extends DataObject {

	public static final String QNAME = "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pipeweldinformation";

	public static final Type TYPE = TypeHelper.INSTANCE.getType("com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping", "Pipeweldinformation");

	public static final IObjectFactory<Pipeweldinformation> FACTORY = new IObjectFactory<Pipeweldinformation>() {
		public Pipeweldinformation create() {
			return (Pipeweldinformation) DataFactory.INSTANCE.create(TYPE);
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pipeweldinformation#getUuid <em>Uuid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Uuid</em>' attribute.
	 * @see #getUuid()
	 */
	public void setUuid(String uuid);

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
	public String getPipenumber();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pipeweldinformation#getPipenumber <em>Pipenumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Pipenumber</em>' attribute.
	 * @see #getPipenumber()
	 */
	public void setPipenumber(String pipenumber);

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
	public String getWeldnumber();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pipeweldinformation#getWeldnumber <em>Weldnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Weldnumber</em>' attribute.
	 * @see #getWeldnumber()
	 */
	public void setWeldnumber(String weldnumber);

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
	public String getCharacteristicparameter();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pipeweldinformation#getCharacteristicparameter <em>Characteristicparameter</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Characteristicparameter</em>' attribute.
	 * @see #getCharacteristicparameter()
	 */
	public void setCharacteristicparameter(String characteristicparameter);


}