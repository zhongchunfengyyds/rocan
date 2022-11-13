/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.inspectcomponentmanage.screwplanmg.impl;

import com.cgn.itmp.inspectcomponentmanage.screwplanmg.Screwplanmg;
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
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.screwplanmg.impl.ScrewplanmgImpl#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.screwplanmg.impl.ScrewplanmgImpl#getJd <em>Jd</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.screwplanmg.impl.ScrewplanmgImpl#getJz <em>Jz</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.screwplanmg.impl.ScrewplanmgImpl#getCheckposition <em>Checkposition</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.screwplanmg.impl.ScrewplanmgImpl#getCheckmethod <em>Checkmethod</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.screwplanmg.impl.ScrewplanmgImpl#getCheckplan <em>Checkplan</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.screwplanmg.impl.ScrewplanmgImpl#getRemake <em>Remake</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.screwplanmg.impl.ScrewplanmgImpl#getIsdel <em>Isdel</em>}</li>
 * </ul>
 * </p>
 *
 * @extends ExtendedDataObjectImpl;
 *
 * @implements Screwplanmg;
 */

public class ScrewplanmgImpl extends ExtendedDataObjectImpl implements Screwplanmg {
	/**
	 * Comment for <code>serialVersionUID</code>
	 */
	private static final long serialVersionUID = 1L;
	public final static int INDEX_UUID = 0;
	public final static int INDEX_JD = 1;
	public final static int INDEX_JZ = 2;
	public final static int INDEX_CHECKPOSITION = 3;
	public final static int INDEX_CHECKMETHOD = 4;
	public final static int INDEX_CHECKPLAN = 5;
	public final static int INDEX_REMAKE = 6;
	public final static int INDEX_ISDEL = 7;
	public static final int SDO_PROPERTY_COUNT = 8;

	public static final int EXTENDED_PROPERTY_COUNT = -1;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public ScrewplanmgImpl() {
		this(TYPE);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public ScrewplanmgImpl(Type type) {
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

	/**
	 * Returns the value of the '<em><b>Checkposition</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Checkposition</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Checkposition</em>' attribute.
	 * @see #setCheckposition(java.lang.String)
	 */
	public String getCheckposition() {
		return DataUtil.toString(super.getByIndex(INDEX_CHECKPOSITION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getCheckposition <em>Checkposition</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Checkposition</em>' attribute.
	 * @see #getCheckposition()
	 */
	public void setCheckposition(String checkposition) {
		super.setByIndex(INDEX_CHECKPOSITION, checkposition);
	}

	/**
	 * Returns the value of the '<em><b>Checkmethod</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Checkmethod</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Checkmethod</em>' attribute.
	 * @see #setCheckmethod(java.lang.String)
	 */
	public String getCheckmethod() {
		return DataUtil.toString(super.getByIndex(INDEX_CHECKMETHOD, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getCheckmethod <em>Checkmethod</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Checkmethod</em>' attribute.
	 * @see #getCheckmethod()
	 */
	public void setCheckmethod(String checkmethod) {
		super.setByIndex(INDEX_CHECKMETHOD, checkmethod);
	}

	/**
	 * Returns the value of the '<em><b>Checkplan</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Checkplan</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Checkplan</em>' attribute.
	 * @see #setCheckplan(java.lang.String)
	 */
	public String getCheckplan() {
		return DataUtil.toString(super.getByIndex(INDEX_CHECKPLAN, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getCheckplan <em>Checkplan</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Checkplan</em>' attribute.
	 * @see #getCheckplan()
	 */
	public void setCheckplan(String checkplan) {
		super.setByIndex(INDEX_CHECKPLAN, checkplan);
	}

	/**
	 * Returns the value of the '<em><b>Remake</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Remake</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Remake</em>' attribute.
	 * @see #setRemake(java.lang.String)
	 */
	public String getRemake() {
		return DataUtil.toString(super.getByIndex(INDEX_REMAKE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getRemake <em>Remake</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Remake</em>' attribute.
	 * @see #getRemake()
	 */
	public void setRemake(String remake) {
		super.setByIndex(INDEX_REMAKE, remake);
	}

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
	public String getIsdel() {
		return DataUtil.toString(super.getByIndex(INDEX_ISDEL, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getIsdel <em>Isdel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Isdel</em>' attribute.
	 * @see #getIsdel()
	 */
	public void setIsdel(String isdel) {
		super.setByIndex(INDEX_ISDEL, isdel);
	}


}