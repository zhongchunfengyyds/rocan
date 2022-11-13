/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.inspectcomponentmanage.pipelayout.impl;

import com.cgn.itmp.inspectcomponentmanage.pipelayout.Pipelayout;
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
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.pipelayout.impl.PipelayoutImpl#getModel <em>Model</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.pipelayout.impl.PipelayoutImpl#getStatisticstype <em>Statisticstype</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.pipelayout.impl.PipelayoutImpl#getLinenum <em>Linenum</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.pipelayout.impl.PipelayoutImpl#getStartpoint <em>Startpoint</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.pipelayout.impl.PipelayoutImpl#getEndpoint <em>Endpoint</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.pipelayout.impl.PipelayoutImpl#getY <em>Y</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.pipelayout.impl.PipelayoutImpl#getX <em>X</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.pipelayout.impl.PipelayoutImpl#getJd <em>Jd</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.pipelayout.impl.PipelayoutImpl#getJz <em>Jz</em>}</li>
 * </ul>
 * </p>
 *
 * @extends ExtendedDataObjectImpl;
 *
 * @implements Pipelayout;
 */

public class PipelayoutImpl extends ExtendedDataObjectImpl implements Pipelayout {
	/**
	 * Comment for <code>serialVersionUID</code>
	 */
	private static final long serialVersionUID = 1L;
	public final static int INDEX_MODEL = 0;
	public final static int INDEX_STATISTICSTYPE = 1;
	public final static int INDEX_LINENUM = 2;
	public final static int INDEX_STARTPOINT = 3;
	public final static int INDEX_ENDPOINT = 4;
	public final static int INDEX_Y = 5;
	public final static int INDEX_X = 6;
	public final static int INDEX_JD = 7;
	public final static int INDEX_JZ = 8;
	public static final int SDO_PROPERTY_COUNT = 9;

	public static final int EXTENDED_PROPERTY_COUNT = -1;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public PipelayoutImpl() {
		this(TYPE);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public PipelayoutImpl(Type type) {
		super(type);
	}

	protected void validate() {
		validateType(TYPE);
	}

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
	public String getModel() {
		return DataUtil.toString(super.getByIndex(INDEX_MODEL, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getModel <em>Model</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Model</em>' attribute.
	 * @see #getModel()
	 */
	public void setModel(String model) {
		super.setByIndex(INDEX_MODEL, model);
	}

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
	public String getStatisticstype() {
		return DataUtil.toString(super.getByIndex(INDEX_STATISTICSTYPE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getStatisticstype <em>Statisticstype</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Statisticstype</em>' attribute.
	 * @see #getStatisticstype()
	 */
	public void setStatisticstype(String statisticstype) {
		super.setByIndex(INDEX_STATISTICSTYPE, statisticstype);
	}

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
	public String getLinenum() {
		return DataUtil.toString(super.getByIndex(INDEX_LINENUM, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getLinenum <em>Linenum</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Linenum</em>' attribute.
	 * @see #getLinenum()
	 */
	public void setLinenum(String linenum) {
		super.setByIndex(INDEX_LINENUM, linenum);
	}

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
	public String getStartpoint() {
		return DataUtil.toString(super.getByIndex(INDEX_STARTPOINT, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getStartpoint <em>Startpoint</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Startpoint</em>' attribute.
	 * @see #getStartpoint()
	 */
	public void setStartpoint(String startpoint) {
		super.setByIndex(INDEX_STARTPOINT, startpoint);
	}

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
	public String getEndpoint() {
		return DataUtil.toString(super.getByIndex(INDEX_ENDPOINT, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getEndpoint <em>Endpoint</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Endpoint</em>' attribute.
	 * @see #getEndpoint()
	 */
	public void setEndpoint(String endpoint) {
		super.setByIndex(INDEX_ENDPOINT, endpoint);
	}

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
	public String getY() {
		return DataUtil.toString(super.getByIndex(INDEX_Y, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getY <em>Y</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Y</em>' attribute.
	 * @see #getY()
	 */
	public void setY(String y) {
		super.setByIndex(INDEX_Y, y);
	}

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
	public String getX() {
		return DataUtil.toString(super.getByIndex(INDEX_X, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getX <em>X</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>X</em>' attribute.
	 * @see #getX()
	 */
	public void setX(String x) {
		super.setByIndex(INDEX_X, x);
	}

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
	public String getJd() {
		return DataUtil.toString(super.getByIndex(INDEX_JD, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getJd <em>Jd</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Jd</em>' attribute.
	 * @see #getJd()
	 */
	public void setJd(String jd) {
		super.setByIndex(INDEX_JD, jd);
	}

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
	public String getJz() {
		return DataUtil.toString(super.getByIndex(INDEX_JZ, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getJz <em>Jz</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Jz</em>' attribute.
	 * @see #getJz()
	 */
	public void setJz(String jz) {
		super.setByIndex(INDEX_JZ, jz);
	}


}