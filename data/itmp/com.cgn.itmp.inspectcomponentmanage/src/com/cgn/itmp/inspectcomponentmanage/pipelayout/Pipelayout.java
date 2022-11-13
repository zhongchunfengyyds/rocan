/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.inspectcomponentmanage.pipelayout;

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
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.pipelayout.Pipelayout#getModel <em>Model</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.pipelayout.Pipelayout#getStatisticstype <em>Statisticstype</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.pipelayout.Pipelayout#getLinenum <em>Linenum</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.pipelayout.Pipelayout#getStartpoint <em>Startpoint</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.pipelayout.Pipelayout#getEndpoint <em>Endpoint</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.pipelayout.Pipelayout#getY <em>Y</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.pipelayout.Pipelayout#getX <em>X</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.pipelayout.Pipelayout#getJd <em>Jd</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.pipelayout.Pipelayout#getJz <em>Jz</em>}</li>
 * </ul>
 * </p>
 *
 * @extends DataObject;
 */
public interface Pipelayout extends DataObject {

	public static final String QNAME = "com.cgn.itmp.inspectcomponentmanage.pipelayout.Pipelayout";

	public static final Type TYPE = TypeHelper.INSTANCE.getType("com.cgn.itmp.inspectcomponentmanage.pipelayout", "Pipelayout");

	public static final IObjectFactory<Pipelayout> FACTORY = new IObjectFactory<Pipelayout>() {
		public Pipelayout create() {
			return (Pipelayout) DataFactory.INSTANCE.create(TYPE);
		}
	};

	/**
	 * Returns the value of the '<em><b>Model</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Model</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Model</em>' attribute.
	 * @see #setModel(java.lang.String)
	 */
	public String getModel();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.pipelayout.Pipelayout#getModel <em>Model</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Model</em>' attribute.
	 * @see #getModel()
	 */
	public void setModel(String model);

	/**
	 * Returns the value of the '<em><b>Statisticstype</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Statisticstype</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Statisticstype</em>' attribute.
	 * @see #setStatisticstype(java.lang.String)
	 */
	public String getStatisticstype();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.pipelayout.Pipelayout#getStatisticstype <em>Statisticstype</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Statisticstype</em>' attribute.
	 * @see #getStatisticstype()
	 */
	public void setStatisticstype(String statisticstype);

	/**
	 * Returns the value of the '<em><b>Linenum</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Linenum</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Linenum</em>' attribute.
	 * @see #setLinenum(java.lang.String)
	 */
	public String getLinenum();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.pipelayout.Pipelayout#getLinenum <em>Linenum</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Linenum</em>' attribute.
	 * @see #getLinenum()
	 */
	public void setLinenum(String linenum);

	/**
	 * Returns the value of the '<em><b>Startpoint</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Startpoint</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Startpoint</em>' attribute.
	 * @see #setStartpoint(java.lang.String)
	 */
	public String getStartpoint();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.pipelayout.Pipelayout#getStartpoint <em>Startpoint</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Startpoint</em>' attribute.
	 * @see #getStartpoint()
	 */
	public void setStartpoint(String startpoint);

	/**
	 * Returns the value of the '<em><b>Endpoint</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Endpoint</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Endpoint</em>' attribute.
	 * @see #setEndpoint(java.lang.String)
	 */
	public String getEndpoint();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.pipelayout.Pipelayout#getEndpoint <em>Endpoint</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Endpoint</em>' attribute.
	 * @see #getEndpoint()
	 */
	public void setEndpoint(String endpoint);

	/**
	 * Returns the value of the '<em><b>Y</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Y</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Y</em>' attribute.
	 * @see #setY(java.lang.String)
	 */
	public String getY();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.pipelayout.Pipelayout#getY <em>Y</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Y</em>' attribute.
	 * @see #getY()
	 */
	public void setY(String y);

	/**
	 * Returns the value of the '<em><b>X</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>X</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>X</em>' attribute.
	 * @see #setX(java.lang.String)
	 */
	public String getX();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.pipelayout.Pipelayout#getX <em>X</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>X</em>' attribute.
	 * @see #getX()
	 */
	public void setX(String x);

	/**
	 * Returns the value of the '<em><b>Jd</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Jd</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Jd</em>' attribute.
	 * @see #setJd(java.lang.String)
	 */
	public String getJd();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.pipelayout.Pipelayout#getJd <em>Jd</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Jd</em>' attribute.
	 * @see #getJd()
	 */
	public void setJd(String jd);

	/**
	 * Returns the value of the '<em><b>Jz</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Jz</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Jz</em>' attribute.
	 * @see #setJz(java.lang.String)
	 */
	public String getJz();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.pipelayout.Pipelayout#getJz <em>Jz</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Jz</em>' attribute.
	 * @see #getJz()
	 */
	public void setJz(String jz);


}