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
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Trackingtubeins#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Trackingtubeins#getBase <em>Base</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Trackingtubeins#getMachinegroup <em>Machinegroup</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Trackingtubeins#getSgmodel <em>Sgmodel</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Trackingtubeins#getSgnumber <em>Sgnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Trackingtubeins#getFunposition <em>Funposition</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Trackingtubeins#getNo_r <em>No_r</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Trackingtubeins#getNo_c <em>No_c</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Trackingtubeins#getInspectiontype <em>Inspectiontype</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Trackingtubeins#getIscancelcheck <em>Iscancelcheck</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Trackingtubeins#getRemarks <em>Remarks</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Trackingtubeins#getIsdel <em>Isdel</em>}</li>
 * </ul>
 * </p>
 *
 * @extends DataObject;
 */
public interface Trackingtubeins extends DataObject {

	public static final String QNAME = "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Trackingtubeins";

	public static final Type TYPE = TypeHelper.INSTANCE.getType("com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree", "Trackingtubeins");

	public static final IObjectFactory<Trackingtubeins> FACTORY = new IObjectFactory<Trackingtubeins>() {
		public Trackingtubeins create() {
			return (Trackingtubeins) DataFactory.INSTANCE.create(TYPE);
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Trackingtubeins#getUuid <em>Uuid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Uuid</em>' attribute.
	 * @see #getUuid()
	 */
	public void setUuid(String uuid);

	/**
	 * Returns the value of the '<em><b>Base</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Base</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Base</em>' attribute.
	 * @see #setBase(java.lang.String)
	 */
	public String getBase();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Trackingtubeins#getBase <em>Base</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Base</em>' attribute.
	 * @see #getBase()
	 */
	public void setBase(String base);

	/**
	 * Returns the value of the '<em><b>Machinegroup</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Machinegroup</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Machinegroup</em>' attribute.
	 * @see #setMachinegroup(java.lang.String)
	 */
	public String getMachinegroup();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Trackingtubeins#getMachinegroup <em>Machinegroup</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Machinegroup</em>' attribute.
	 * @see #getMachinegroup()
	 */
	public void setMachinegroup(String machinegroup);

	/**
	 * Returns the value of the '<em><b>Sgmodel</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Sgmodel</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Sgmodel</em>' attribute.
	 * @see #setSgmodel(java.lang.String)
	 */
	public String getSgmodel();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Trackingtubeins#getSgmodel <em>Sgmodel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Sgmodel</em>' attribute.
	 * @see #getSgmodel()
	 */
	public void setSgmodel(String sgmodel);

	/**
	 * Returns the value of the '<em><b>Sgnumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Sgnumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Sgnumber</em>' attribute.
	 * @see #setSgnumber(java.lang.String)
	 */
	public String getSgnumber();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Trackingtubeins#getSgnumber <em>Sgnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Sgnumber</em>' attribute.
	 * @see #getSgnumber()
	 */
	public void setSgnumber(String sgnumber);

	/**
	 * Returns the value of the '<em><b>Funposition</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Funposition</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Funposition</em>' attribute.
	 * @see #setFunposition(java.lang.String)
	 */
	public String getFunposition();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Trackingtubeins#getFunposition <em>Funposition</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Funposition</em>' attribute.
	 * @see #getFunposition()
	 */
	public void setFunposition(String funposition);

	/**
	 * Returns the value of the '<em><b>No_r</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>No_r</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>No_r</em>' attribute.
	 * @see #setNo_r(java.lang.String)
	 */
	public String getNo_r();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Trackingtubeins#getNo_r <em>No_r</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>No_r</em>' attribute.
	 * @see #getNo_r()
	 */
	public void setNo_r(String no_r);

	/**
	 * Returns the value of the '<em><b>No_c</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>No_c</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>No_c</em>' attribute.
	 * @see #setNo_c(java.lang.String)
	 */
	public String getNo_c();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Trackingtubeins#getNo_c <em>No_c</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>No_c</em>' attribute.
	 * @see #getNo_c()
	 */
	public void setNo_c(String no_c);

	/**
	 * Returns the value of the '<em><b>Inspectiontype</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Inspectiontype</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Inspectiontype</em>' attribute.
	 * @see #setInspectiontype(java.lang.String)
	 */
	public String getInspectiontype();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Trackingtubeins#getInspectiontype <em>Inspectiontype</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Inspectiontype</em>' attribute.
	 * @see #getInspectiontype()
	 */
	public void setInspectiontype(String inspectiontype);

	/**
	 * Returns the value of the '<em><b>Iscancelcheck</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Iscancelcheck</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Iscancelcheck</em>' attribute.
	 * @see #setIscancelcheck(java.lang.String)
	 */
	public String getIscancelcheck();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Trackingtubeins#getIscancelcheck <em>Iscancelcheck</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Iscancelcheck</em>' attribute.
	 * @see #getIscancelcheck()
	 */
	public void setIscancelcheck(String iscancelcheck);

	/**
	 * Returns the value of the '<em><b>Remarks</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Remarks</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Remarks</em>' attribute.
	 * @see #setRemarks(java.lang.String)
	 */
	public String getRemarks();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Trackingtubeins#getRemarks <em>Remarks</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Remarks</em>' attribute.
	 * @see #getRemarks()
	 */
	public void setRemarks(String remarks);

	/**
	 * Returns the value of the '<em><b>Isdel</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Isdel</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Isdel</em>' attribute.
	 * @see #setIsdel(java.lang.String)
	 */
	public String getIsdel();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Trackingtubeins#getIsdel <em>Isdel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Isdel</em>' attribute.
	 * @see #getIsdel()
	 */
	public void setIsdel(String isdel);


}