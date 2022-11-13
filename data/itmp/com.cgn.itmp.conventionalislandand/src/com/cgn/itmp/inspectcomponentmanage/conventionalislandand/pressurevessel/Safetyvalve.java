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
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Safetyvalve#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Safetyvalve#getEquipmentnumber <em>Equipmentnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Safetyvalve#getSvnumber <em>Svnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Safetyvalve#getSvmodel <em>Svmodel</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Safetyvalve#getSvinstallationlocation <em>Svinstallationlocation</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Safetyvalve#getSvsettingpressure <em>Svsettingpressure</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Safetyvalve#getSvnominalpressure <em>Svnominalpressure</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Safetyvalve#getSvopeningpressure <em>Svopeningpressure</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Safetyvalve#getSvsealingpressure <em>Svsealingpressure</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Safetyvalve#getSvnominaldiameter <em>Svnominaldiameter</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Safetyvalve#getSvquantity <em>Svquantity</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Safetyvalve#getSvmanufacturer <em>Svmanufacturer</em>}</li>
 * </ul>
 * </p>
 *
 * @extends DataObject;
 */
public interface Safetyvalve extends DataObject {

	public static final String QNAME = "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Safetyvalve";

	public static final Type TYPE = TypeHelper.INSTANCE.getType("com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel", "Safetyvalve");

	public static final IObjectFactory<Safetyvalve> FACTORY = new IObjectFactory<Safetyvalve>() {
		public Safetyvalve create() {
			return (Safetyvalve) DataFactory.INSTANCE.create(TYPE);
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Safetyvalve#getUuid <em>Uuid</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Safetyvalve#getEquipmentnumber <em>Equipmentnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equipmentnumber</em>' attribute.
	 * @see #getEquipmentnumber()
	 */
	public void setEquipmentnumber(String equipmentnumber);

	/**
	 * Returns the value of the '<em><b>Svnumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Svnumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Svnumber</em>' attribute.
	 * @see #setSvnumber(java.lang.String)
	 */
	public String getSvnumber();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Safetyvalve#getSvnumber <em>Svnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Svnumber</em>' attribute.
	 * @see #getSvnumber()
	 */
	public void setSvnumber(String svnumber);

	/**
	 * Returns the value of the '<em><b>Svmodel</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Svmodel</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Svmodel</em>' attribute.
	 * @see #setSvmodel(java.lang.String)
	 */
	public String getSvmodel();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Safetyvalve#getSvmodel <em>Svmodel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Svmodel</em>' attribute.
	 * @see #getSvmodel()
	 */
	public void setSvmodel(String svmodel);

	/**
	 * Returns the value of the '<em><b>Svinstallationlocation</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Svinstallationlocation</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Svinstallationlocation</em>' attribute.
	 * @see #setSvinstallationlocation(java.lang.String)
	 */
	public String getSvinstallationlocation();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Safetyvalve#getSvinstallationlocation <em>Svinstallationlocation</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Svinstallationlocation</em>' attribute.
	 * @see #getSvinstallationlocation()
	 */
	public void setSvinstallationlocation(String svinstallationlocation);

	/**
	 * Returns the value of the '<em><b>Svsettingpressure</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Svsettingpressure</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Svsettingpressure</em>' attribute.
	 * @see #setSvsettingpressure(java.lang.String)
	 */
	public String getSvsettingpressure();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Safetyvalve#getSvsettingpressure <em>Svsettingpressure</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Svsettingpressure</em>' attribute.
	 * @see #getSvsettingpressure()
	 */
	public void setSvsettingpressure(String svsettingpressure);

	/**
	 * Returns the value of the '<em><b>Svnominalpressure</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Svnominalpressure</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Svnominalpressure</em>' attribute.
	 * @see #setSvnominalpressure(java.lang.String)
	 */
	public String getSvnominalpressure();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Safetyvalve#getSvnominalpressure <em>Svnominalpressure</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Svnominalpressure</em>' attribute.
	 * @see #getSvnominalpressure()
	 */
	public void setSvnominalpressure(String svnominalpressure);

	/**
	 * Returns the value of the '<em><b>Svopeningpressure</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Svopeningpressure</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Svopeningpressure</em>' attribute.
	 * @see #setSvopeningpressure(java.lang.String)
	 */
	public String getSvopeningpressure();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Safetyvalve#getSvopeningpressure <em>Svopeningpressure</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Svopeningpressure</em>' attribute.
	 * @see #getSvopeningpressure()
	 */
	public void setSvopeningpressure(String svopeningpressure);

	/**
	 * Returns the value of the '<em><b>Svsealingpressure</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Svsealingpressure</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Svsealingpressure</em>' attribute.
	 * @see #setSvsealingpressure(java.lang.String)
	 */
	public String getSvsealingpressure();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Safetyvalve#getSvsealingpressure <em>Svsealingpressure</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Svsealingpressure</em>' attribute.
	 * @see #getSvsealingpressure()
	 */
	public void setSvsealingpressure(String svsealingpressure);

	/**
	 * Returns the value of the '<em><b>Svnominaldiameter</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Svnominaldiameter</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Svnominaldiameter</em>' attribute.
	 * @see #setSvnominaldiameter(java.lang.String)
	 */
	public String getSvnominaldiameter();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Safetyvalve#getSvnominaldiameter <em>Svnominaldiameter</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Svnominaldiameter</em>' attribute.
	 * @see #getSvnominaldiameter()
	 */
	public void setSvnominaldiameter(String svnominaldiameter);

	/**
	 * Returns the value of the '<em><b>Svquantity</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Svquantity</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Svquantity</em>' attribute.
	 * @see #setSvquantity(java.lang.String)
	 */
	public String getSvquantity();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Safetyvalve#getSvquantity <em>Svquantity</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Svquantity</em>' attribute.
	 * @see #getSvquantity()
	 */
	public void setSvquantity(String svquantity);

	/**
	 * Returns the value of the '<em><b>Svmanufacturer</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Svmanufacturer</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Svmanufacturer</em>' attribute.
	 * @see #setSvmanufacturer(java.lang.String)
	 */
	public String getSvmanufacturer();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Safetyvalve#getSvmanufacturer <em>Svmanufacturer</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Svmanufacturer</em>' attribute.
	 * @see #getSvmanufacturer()
	 */
	public void setSvmanufacturer(String svmanufacturer);


}