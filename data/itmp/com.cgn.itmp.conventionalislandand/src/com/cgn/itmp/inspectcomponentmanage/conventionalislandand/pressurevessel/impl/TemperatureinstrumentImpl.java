/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl;

import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Temperatureinstrument;
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
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.TemperatureinstrumentImpl#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.TemperatureinstrumentImpl#getEquipmentnumber <em>Equipmentnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.TemperatureinstrumentImpl#getTinumber <em>Tinumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.TemperatureinstrumentImpl#getTimodel <em>Timodel</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.TemperatureinstrumentImpl#getTigerange <em>Tigerange</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.TemperatureinstrumentImpl#getTiinstallationlocation <em>Tiinstallationlocation</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.TemperatureinstrumentImpl#getTiaccuracy <em>Tiaccuracy</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.TemperatureinstrumentImpl#getTiquantity <em>Tiquantity</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.TemperatureinstrumentImpl#getTimanufacturer <em>Timanufacturer</em>}</li>
 * </ul>
 * </p>
 *
 * @extends ExtendedDataObjectImpl;
 *
 * @implements Temperatureinstrument;
 */

public class TemperatureinstrumentImpl extends ExtendedDataObjectImpl implements Temperatureinstrument {
	/**
	 * Comment for <code>serialVersionUID</code>
	 */
	private static final long serialVersionUID = 1L;
	public final static int INDEX_UUID = 0;
	public final static int INDEX_EQUIPMENTNUMBER = 1;
	public final static int INDEX_TINUMBER = 2;
	public final static int INDEX_TIMODEL = 3;
	public final static int INDEX_TIGERANGE = 4;
	public final static int INDEX_TIINSTALLATIONLOCATION = 5;
	public final static int INDEX_TIACCURACY = 6;
	public final static int INDEX_TIQUANTITY = 7;
	public final static int INDEX_TIMANUFACTURER = 8;
	public static final int SDO_PROPERTY_COUNT = 9;

	public static final int EXTENDED_PROPERTY_COUNT = -1;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public TemperatureinstrumentImpl() {
		this(TYPE);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public TemperatureinstrumentImpl(Type type) {
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
	 * Returns the value of the '<em><b>Tinumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Tinumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Tinumber</em>' attribute.
	 * @see #setTinumber(java.lang.String)
	 */
	public String getTinumber() {
		return DataUtil.toString(super.getByIndex(INDEX_TINUMBER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getTinumber <em>Tinumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Tinumber</em>' attribute.
	 * @see #getTinumber()
	 */
	public void setTinumber(String tinumber) {
		super.setByIndex(INDEX_TINUMBER, tinumber);
	}

	/**
	 * Returns the value of the '<em><b>Timodel</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Timodel</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Timodel</em>' attribute.
	 * @see #setTimodel(java.lang.String)
	 */
	public String getTimodel() {
		return DataUtil.toString(super.getByIndex(INDEX_TIMODEL, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getTimodel <em>Timodel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Timodel</em>' attribute.
	 * @see #getTimodel()
	 */
	public void setTimodel(String timodel) {
		super.setByIndex(INDEX_TIMODEL, timodel);
	}

	/**
	 * Returns the value of the '<em><b>Tigerange</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Tigerange</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Tigerange</em>' attribute.
	 * @see #setTigerange(java.lang.String)
	 */
	public String getTigerange() {
		return DataUtil.toString(super.getByIndex(INDEX_TIGERANGE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getTigerange <em>Tigerange</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Tigerange</em>' attribute.
	 * @see #getTigerange()
	 */
	public void setTigerange(String tigerange) {
		super.setByIndex(INDEX_TIGERANGE, tigerange);
	}

	/**
	 * Returns the value of the '<em><b>Tiinstallationlocation</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Tiinstallationlocation</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Tiinstallationlocation</em>' attribute.
	 * @see #setTiinstallationlocation(java.lang.String)
	 */
	public String getTiinstallationlocation() {
		return DataUtil.toString(super.getByIndex(INDEX_TIINSTALLATIONLOCATION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getTiinstallationlocation <em>Tiinstallationlocation</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Tiinstallationlocation</em>' attribute.
	 * @see #getTiinstallationlocation()
	 */
	public void setTiinstallationlocation(String tiinstallationlocation) {
		super.setByIndex(INDEX_TIINSTALLATIONLOCATION, tiinstallationlocation);
	}

	/**
	 * Returns the value of the '<em><b>Tiaccuracy</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Tiaccuracy</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Tiaccuracy</em>' attribute.
	 * @see #setTiaccuracy(java.lang.String)
	 */
	public String getTiaccuracy() {
		return DataUtil.toString(super.getByIndex(INDEX_TIACCURACY, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getTiaccuracy <em>Tiaccuracy</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Tiaccuracy</em>' attribute.
	 * @see #getTiaccuracy()
	 */
	public void setTiaccuracy(String tiaccuracy) {
		super.setByIndex(INDEX_TIACCURACY, tiaccuracy);
	}

	/**
	 * Returns the value of the '<em><b>Tiquantity</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Tiquantity</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Tiquantity</em>' attribute.
	 * @see #setTiquantity(java.lang.String)
	 */
	public String getTiquantity() {
		return DataUtil.toString(super.getByIndex(INDEX_TIQUANTITY, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getTiquantity <em>Tiquantity</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Tiquantity</em>' attribute.
	 * @see #getTiquantity()
	 */
	public void setTiquantity(String tiquantity) {
		super.setByIndex(INDEX_TIQUANTITY, tiquantity);
	}

	/**
	 * Returns the value of the '<em><b>Timanufacturer</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Timanufacturer</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Timanufacturer</em>' attribute.
	 * @see #setTimanufacturer(java.lang.String)
	 */
	public String getTimanufacturer() {
		return DataUtil.toString(super.getByIndex(INDEX_TIMANUFACTURER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getTimanufacturer <em>Timanufacturer</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Timanufacturer</em>' attribute.
	 * @see #getTimanufacturer()
	 */
	public void setTimanufacturer(String timanufacturer) {
		super.setByIndex(INDEX_TIMANUFACTURER, timanufacturer);
	}


}