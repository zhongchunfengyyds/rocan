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
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Temperatureinstrument#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Temperatureinstrument#getEquipmentnumber <em>Equipmentnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Temperatureinstrument#getTinumber <em>Tinumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Temperatureinstrument#getTimodel <em>Timodel</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Temperatureinstrument#getTigerange <em>Tigerange</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Temperatureinstrument#getTiinstallationlocation <em>Tiinstallationlocation</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Temperatureinstrument#getTiaccuracy <em>Tiaccuracy</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Temperatureinstrument#getTiquantity <em>Tiquantity</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Temperatureinstrument#getTimanufacturer <em>Timanufacturer</em>}</li>
 * </ul>
 * </p>
 *
 * @extends DataObject;
 */
public interface Temperatureinstrument extends DataObject {

	public static final String QNAME = "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Temperatureinstrument";

	public static final Type TYPE = TypeHelper.INSTANCE.getType("com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel", "Temperatureinstrument");

	public static final IObjectFactory<Temperatureinstrument> FACTORY = new IObjectFactory<Temperatureinstrument>() {
		public Temperatureinstrument create() {
			return (Temperatureinstrument) DataFactory.INSTANCE.create(TYPE);
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Temperatureinstrument#getUuid <em>Uuid</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Temperatureinstrument#getEquipmentnumber <em>Equipmentnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equipmentnumber</em>' attribute.
	 * @see #getEquipmentnumber()
	 */
	public void setEquipmentnumber(String equipmentnumber);

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
	public String getTinumber();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Temperatureinstrument#getTinumber <em>Tinumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Tinumber</em>' attribute.
	 * @see #getTinumber()
	 */
	public void setTinumber(String tinumber);

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
	public String getTimodel();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Temperatureinstrument#getTimodel <em>Timodel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Timodel</em>' attribute.
	 * @see #getTimodel()
	 */
	public void setTimodel(String timodel);

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
	public String getTigerange();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Temperatureinstrument#getTigerange <em>Tigerange</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Tigerange</em>' attribute.
	 * @see #getTigerange()
	 */
	public void setTigerange(String tigerange);

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
	public String getTiinstallationlocation();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Temperatureinstrument#getTiinstallationlocation <em>Tiinstallationlocation</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Tiinstallationlocation</em>' attribute.
	 * @see #getTiinstallationlocation()
	 */
	public void setTiinstallationlocation(String tiinstallationlocation);

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
	public String getTiaccuracy();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Temperatureinstrument#getTiaccuracy <em>Tiaccuracy</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Tiaccuracy</em>' attribute.
	 * @see #getTiaccuracy()
	 */
	public void setTiaccuracy(String tiaccuracy);

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
	public String getTiquantity();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Temperatureinstrument#getTiquantity <em>Tiquantity</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Tiquantity</em>' attribute.
	 * @see #getTiquantity()
	 */
	public void setTiquantity(String tiquantity);

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
	public String getTimanufacturer();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Temperatureinstrument#getTimanufacturer <em>Timanufacturer</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Timanufacturer</em>' attribute.
	 * @see #getTimanufacturer()
	 */
	public void setTimanufacturer(String timanufacturer);


}