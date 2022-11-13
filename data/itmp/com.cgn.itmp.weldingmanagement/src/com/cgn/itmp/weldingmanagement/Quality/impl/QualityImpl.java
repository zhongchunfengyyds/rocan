/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.weldingmanagement.Quality.impl;

import com.cgn.itmp.weldingmanagement.Quality.Quality;
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
 *   <li>{@link com.cgn.itmp.weldingmanagement.Quality.impl.QualityImpl#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Quality.impl.QualityImpl#getRounds <em>Rounds</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Quality.impl.QualityImpl#getQualitynumber <em>Qualitynumber</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Quality.impl.QualityImpl#getEdition <em>Edition</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Quality.impl.QualityImpl#getApplyno <em>Applyno</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Quality.impl.QualityImpl#getTicketnumber <em>Ticketnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Quality.impl.QualityImpl#getDescribe <em>Describe</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Quality.impl.QualityImpl#getPosition <em>Position</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Quality.impl.QualityImpl#getAssigned <em>Assigned</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Quality.impl.QualityImpl#getFj <em>Fj</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Quality.impl.QualityImpl#getState <em>State</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Quality.impl.QualityImpl#getIsdel <em>Isdel</em>}</li>
 * </ul>
 * </p>
 *
 * @extends ExtendedDataObjectImpl;
 *
 * @implements Quality;
 */

public class QualityImpl extends ExtendedDataObjectImpl implements Quality {
	/**
	 * Comment for <code>serialVersionUID</code>
	 */
	private static final long serialVersionUID = 1L;
	public final static int INDEX_UUID = 0;
	public final static int INDEX_ROUNDS = 1;
	public final static int INDEX_QUALITYNUMBER = 2;
	public final static int INDEX_EDITION = 3;
	public final static int INDEX_APPLYNO = 4;
	public final static int INDEX_TICKETNUMBER = 5;
	public final static int INDEX_DESCRIBE = 6;
	public final static int INDEX_POSITION = 7;
	public final static int INDEX_ASSIGNED = 8;
	public final static int INDEX_FJ = 9;
	public final static int INDEX_STATE = 10;
	public final static int INDEX_ISDEL = 11;
	public static final int SDO_PROPERTY_COUNT = 12;

	public static final int EXTENDED_PROPERTY_COUNT = -1;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public QualityImpl() {
		this(TYPE);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public QualityImpl(Type type) {
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
	 * Returns the value of the '<em><b>Rounds</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Rounds</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Rounds</em>' attribute.
	 * @see #setRounds(java.lang.String)
	 */
	public String getRounds() {
		return DataUtil.toString(super.getByIndex(INDEX_ROUNDS, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getRounds <em>Rounds</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Rounds</em>' attribute.
	 * @see #getRounds()
	 */
	public void setRounds(String rounds) {
		super.setByIndex(INDEX_ROUNDS, rounds);
	}

	/**
	 * Returns the value of the '<em><b>Qualitynumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Qualitynumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Qualitynumber</em>' attribute.
	 * @see #setQualitynumber(java.lang.String)
	 */
	public String getQualitynumber() {
		return DataUtil.toString(super.getByIndex(INDEX_QUALITYNUMBER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getQualitynumber <em>Qualitynumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Qualitynumber</em>' attribute.
	 * @see #getQualitynumber()
	 */
	public void setQualitynumber(String qualitynumber) {
		super.setByIndex(INDEX_QUALITYNUMBER, qualitynumber);
	}

	/**
	 * Returns the value of the '<em><b>Edition</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Edition</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Edition</em>' attribute.
	 * @see #setEdition(java.lang.String)
	 */
	public String getEdition() {
		return DataUtil.toString(super.getByIndex(INDEX_EDITION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getEdition <em>Edition</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Edition</em>' attribute.
	 * @see #getEdition()
	 */
	public void setEdition(String edition) {
		super.setByIndex(INDEX_EDITION, edition);
	}

	/**
	 * Returns the value of the '<em><b>Applyno</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Applyno</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Applyno</em>' attribute.
	 * @see #setApplyno(java.lang.String)
	 */
	public String getApplyno() {
		return DataUtil.toString(super.getByIndex(INDEX_APPLYNO, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getApplyno <em>Applyno</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Applyno</em>' attribute.
	 * @see #getApplyno()
	 */
	public void setApplyno(String applyno) {
		super.setByIndex(INDEX_APPLYNO, applyno);
	}

	/**
	 * Returns the value of the '<em><b>Ticketnumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Ticketnumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Ticketnumber</em>' attribute.
	 * @see #setTicketnumber(java.lang.String)
	 */
	public String getTicketnumber() {
		return DataUtil.toString(super.getByIndex(INDEX_TICKETNUMBER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getTicketnumber <em>Ticketnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Ticketnumber</em>' attribute.
	 * @see #getTicketnumber()
	 */
	public void setTicketnumber(String ticketnumber) {
		super.setByIndex(INDEX_TICKETNUMBER, ticketnumber);
	}

	/**
	 * Returns the value of the '<em><b>Describe</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Describe</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Describe</em>' attribute.
	 * @see #setDescribe(java.lang.String)
	 */
	public String getDescribe() {
		return DataUtil.toString(super.getByIndex(INDEX_DESCRIBE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getDescribe <em>Describe</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Describe</em>' attribute.
	 * @see #getDescribe()
	 */
	public void setDescribe(String describe) {
		super.setByIndex(INDEX_DESCRIBE, describe);
	}

	/**
	 * Returns the value of the '<em><b>Position</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Position</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Position</em>' attribute.
	 * @see #setPosition(java.lang.String)
	 */
	public String getPosition() {
		return DataUtil.toString(super.getByIndex(INDEX_POSITION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getPosition <em>Position</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Position</em>' attribute.
	 * @see #getPosition()
	 */
	public void setPosition(String position) {
		super.setByIndex(INDEX_POSITION, position);
	}

	/**
	 * Returns the value of the '<em><b>Assigned</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Assigned</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Assigned</em>' attribute.
	 * @see #setAssigned(java.lang.String)
	 */
	public String getAssigned() {
		return DataUtil.toString(super.getByIndex(INDEX_ASSIGNED, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getAssigned <em>Assigned</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Assigned</em>' attribute.
	 * @see #getAssigned()
	 */
	public void setAssigned(String assigned) {
		super.setByIndex(INDEX_ASSIGNED, assigned);
	}

	/**
	 * Returns the value of the '<em><b>Fj</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Fj</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Fj</em>' attribute.
	 * @see #setFj(java.lang.String)
	 */
	public String getFj() {
		return DataUtil.toString(super.getByIndex(INDEX_FJ, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getFj <em>Fj</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Fj</em>' attribute.
	 * @see #getFj()
	 */
	public void setFj(String fj) {
		super.setByIndex(INDEX_FJ, fj);
	}

	/**
	 * Returns the value of the '<em><b>State</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>State</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>State</em>' attribute.
	 * @see #setState(java.lang.String)
	 */
	public String getState() {
		return DataUtil.toString(super.getByIndex(INDEX_STATE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getState <em>State</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>State</em>' attribute.
	 * @see #getState()
	 */
	public void setState(String state) {
		super.setByIndex(INDEX_STATE, state);
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