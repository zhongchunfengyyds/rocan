/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree;

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
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Inspecomponentmenutree#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Inspecomponentmenutree#getComponenttype <em>Componenttype</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Inspecomponentmenutree#getDevicename <em>Devicename</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Inspecomponentmenutree#getPartname <em>Partname</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Inspecomponentmenutree#getDetectedsite <em>Detectedsite</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Inspecomponentmenutree#getInspectionmethod <em>Inspectionmethod</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Inspecomponentmenutree#getIsdel <em>Isdel</em>}</li>
 * </ul>
 * </p>
 *
 * @extends DataObject;
 */
public interface Inspecomponentmenutree extends DataObject {

	public static final String QNAME = "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Inspecomponentmenutree";

	public static final Type TYPE = TypeHelper.INSTANCE.getType("com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree", "Inspecomponentmenutree");

	public static final IObjectFactory<Inspecomponentmenutree> FACTORY = new IObjectFactory<Inspecomponentmenutree>() {
		public Inspecomponentmenutree create() {
			return (Inspecomponentmenutree) DataFactory.INSTANCE.create(TYPE);
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Inspecomponentmenutree#getUuid <em>Uuid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Uuid</em>' attribute.
	 * @see #getUuid()
	 */
	public void setUuid(String uuid);

	/**
	 * Returns the value of the '<em><b>Componenttype</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Componenttype</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Componenttype</em>' attribute.
	 * @see #setComponenttype(java.lang.String)
	 */
	public String getComponenttype();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Inspecomponentmenutree#getComponenttype <em>Componenttype</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Componenttype</em>' attribute.
	 * @see #getComponenttype()
	 */
	public void setComponenttype(String componenttype);

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
	public String getDevicename();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Inspecomponentmenutree#getDevicename <em>Devicename</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Devicename</em>' attribute.
	 * @see #getDevicename()
	 */
	public void setDevicename(String devicename);

	/**
	 * Returns the value of the '<em><b>Partname</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Partname</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Partname</em>' attribute.
	 * @see #setPartname(java.lang.String)
	 */
	public String getPartname();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Inspecomponentmenutree#getPartname <em>Partname</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Partname</em>' attribute.
	 * @see #getPartname()
	 */
	public void setPartname(String partname);

	/**
	 * Returns the value of the '<em><b>Detectedsite</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Detectedsite</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Detectedsite</em>' attribute.
	 * @see #setDetectedsite(java.lang.String)
	 */
	public String getDetectedsite();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Inspecomponentmenutree#getDetectedsite <em>Detectedsite</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Detectedsite</em>' attribute.
	 * @see #getDetectedsite()
	 */
	public void setDetectedsite(String detectedsite);

	/**
	 * Returns the value of the '<em><b>Inspectionmethod</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Inspectionmethod</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Inspectionmethod</em>' attribute.
	 * @see #setInspectionmethod(java.lang.String)
	 */
	public String getInspectionmethod();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Inspecomponentmenutree#getInspectionmethod <em>Inspectionmethod</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Inspectionmethod</em>' attribute.
	 * @see #getInspectionmethod()
	 */
	public void setInspectionmethod(String inspectionmethod);

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
	public int getIsdel();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Inspecomponentmenutree#getIsdel <em>Isdel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Isdel</em>' attribute.
	 * @see #getIsdel()
	 */
	public void setIsdel(int isdel);


}