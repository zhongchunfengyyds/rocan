/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.knowledgebase.Regulation.impl;

import com.cgn.itmp.knowledgebase.Regulation.TInInternaldocuments;
import com.primeton.ext.data.sdo.DataUtil;
import com.primeton.ext.data.sdo.ExtendedDataObjectImpl;

import commonj.sdo.Type;

import java.util.Date;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Test</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link com.cgn.itmp.knowledgebase.Regulation.impl.TInInternaldocumentsImpl#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.Regulation.impl.TInInternaldocumentsImpl#getJd <em>Jd</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.Regulation.impl.TInInternaldocumentsImpl#getFilenumber <em>Filenumber</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.Regulation.impl.TInInternaldocumentsImpl#getPapersname <em>Papersname</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.Regulation.impl.TInInternaldocumentsImpl#getProfessionalfield <em>Professionalfield</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.Regulation.impl.TInInternaldocumentsImpl#getCentralizeddepartment <em>Centralizeddepartment</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.Regulation.impl.TInInternaldocumentsImpl#getEdition <em>Edition</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.Regulation.impl.TInInternaldocumentsImpl#getEnclosure <em>Enclosure</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.Regulation.impl.TInInternaldocumentsImpl#getAddtime <em>Addtime</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.Regulation.impl.TInInternaldocumentsImpl#getAddperson <em>Addperson</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.Regulation.impl.TInInternaldocumentsImpl#getIsdel <em>Isdel</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.Regulation.impl.TInInternaldocumentsImpl#getDelperson <em>Delperson</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.Regulation.impl.TInInternaldocumentsImpl#getDeltime <em>Deltime</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.Regulation.impl.TInInternaldocumentsImpl#getFlieid <em>Flieid</em>}</li>
 * </ul>
 * </p>
 *
 * @extends ExtendedDataObjectImpl;
 *
 * @implements TInInternaldocuments;
 */

public class TInInternaldocumentsImpl extends ExtendedDataObjectImpl implements TInInternaldocuments {
	/**
	 * Comment for <code>serialVersionUID</code>
	 */
	private static final long serialVersionUID = 1L;
	public final static int INDEX_UUID = 0;
	public final static int INDEX_JD = 1;
	public final static int INDEX_FILENUMBER = 2;
	public final static int INDEX_PAPERSNAME = 3;
	public final static int INDEX_PROFESSIONALFIELD = 4;
	public final static int INDEX_CENTRALIZEDDEPARTMENT = 5;
	public final static int INDEX_EDITION = 6;
	public final static int INDEX_ENCLOSURE = 7;
	public final static int INDEX_ADDTIME = 8;
	public final static int INDEX_ADDPERSON = 9;
	public final static int INDEX_ISDEL = 10;
	public final static int INDEX_DELPERSON = 11;
	public final static int INDEX_DELTIME = 12;
	public final static int INDEX_FLIEID = 13;
	public static final int SDO_PROPERTY_COUNT = 14;

	public static final int EXTENDED_PROPERTY_COUNT = -1;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public TInInternaldocumentsImpl() {
		this(TYPE);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public TInInternaldocumentsImpl(Type type) {
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
	 * Returns the value of the '<em><b>Filenumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Filenumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Filenumber</em>' attribute.
	 * @see #setFilenumber(java.lang.String)
	 */
	public String getFilenumber() {
		return DataUtil.toString(super.getByIndex(INDEX_FILENUMBER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getFilenumber <em>Filenumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Filenumber</em>' attribute.
	 * @see #getFilenumber()
	 */
	public void setFilenumber(String filenumber) {
		super.setByIndex(INDEX_FILENUMBER, filenumber);
	}

	/**
	 * Returns the value of the '<em><b>Papersname</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Papersname</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Papersname</em>' attribute.
	 * @see #setPapersname(java.lang.String)
	 */
	public String getPapersname() {
		return DataUtil.toString(super.getByIndex(INDEX_PAPERSNAME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getPapersname <em>Papersname</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Papersname</em>' attribute.
	 * @see #getPapersname()
	 */
	public void setPapersname(String papersname) {
		super.setByIndex(INDEX_PAPERSNAME, papersname);
	}

	/**
	 * Returns the value of the '<em><b>Professionalfield</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Professionalfield</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Professionalfield</em>' attribute.
	 * @see #setProfessionalfield(java.lang.String)
	 */
	public String getProfessionalfield() {
		return DataUtil.toString(super.getByIndex(INDEX_PROFESSIONALFIELD, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getProfessionalfield <em>Professionalfield</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Professionalfield</em>' attribute.
	 * @see #getProfessionalfield()
	 */
	public void setProfessionalfield(String professionalfield) {
		super.setByIndex(INDEX_PROFESSIONALFIELD, professionalfield);
	}

	/**
	 * Returns the value of the '<em><b>Centralizeddepartment</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Centralizeddepartment</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Centralizeddepartment</em>' attribute.
	 * @see #setCentralizeddepartment(java.lang.String)
	 */
	public String getCentralizeddepartment() {
		return DataUtil.toString(super.getByIndex(INDEX_CENTRALIZEDDEPARTMENT, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getCentralizeddepartment <em>Centralizeddepartment</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Centralizeddepartment</em>' attribute.
	 * @see #getCentralizeddepartment()
	 */
	public void setCentralizeddepartment(String centralizeddepartment) {
		super.setByIndex(INDEX_CENTRALIZEDDEPARTMENT, centralizeddepartment);
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
	 * Returns the value of the '<em><b>Enclosure</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Enclosure</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Enclosure</em>' attribute.
	 * @see #setEnclosure(java.lang.String)
	 */
	public String getEnclosure() {
		return DataUtil.toString(super.getByIndex(INDEX_ENCLOSURE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getEnclosure <em>Enclosure</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Enclosure</em>' attribute.
	 * @see #getEnclosure()
	 */
	public void setEnclosure(String enclosure) {
		super.setByIndex(INDEX_ENCLOSURE, enclosure);
	}

	/**
	 * Returns the value of the '<em><b>Addtime</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Addtime</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Addtime</em>' attribute.
	 * @see #setAddtime(java.util.Date)
	 */
	public Date getAddtime() {
		return DataUtil.toDate(super.getByIndex(INDEX_ADDTIME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getAddtime <em>Addtime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Addtime</em>' attribute.
	 * @see #getAddtime()
	 */
	public void setAddtime(Date addtime) {
		super.setByIndex(INDEX_ADDTIME, addtime);
	}

	/**
	 * Returns the value of the '<em><b>Addperson</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Addperson</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Addperson</em>' attribute.
	 * @see #setAddperson(java.lang.String)
	 */
	public String getAddperson() {
		return DataUtil.toString(super.getByIndex(INDEX_ADDPERSON, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getAddperson <em>Addperson</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Addperson</em>' attribute.
	 * @see #getAddperson()
	 */
	public void setAddperson(String addperson) {
		super.setByIndex(INDEX_ADDPERSON, addperson);
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

	/**
	 * Returns the value of the '<em><b>Delperson</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Delperson</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Delperson</em>' attribute.
	 * @see #setDelperson(java.lang.String)
	 */
	public String getDelperson() {
		return DataUtil.toString(super.getByIndex(INDEX_DELPERSON, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getDelperson <em>Delperson</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Delperson</em>' attribute.
	 * @see #getDelperson()
	 */
	public void setDelperson(String delperson) {
		super.setByIndex(INDEX_DELPERSON, delperson);
	}

	/**
	 * Returns the value of the '<em><b>Deltime</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Deltime</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Deltime</em>' attribute.
	 * @see #setDeltime(java.util.Date)
	 */
	public Date getDeltime() {
		return DataUtil.toDate(super.getByIndex(INDEX_DELTIME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getDeltime <em>Deltime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Deltime</em>' attribute.
	 * @see #getDeltime()
	 */
	public void setDeltime(Date deltime) {
		super.setByIndex(INDEX_DELTIME, deltime);
	}

	/**
	 * Returns the value of the '<em><b>Flieid</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Flieid</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Flieid</em>' attribute.
	 * @see #setFlieid(java.lang.String)
	 */
	public String getFlieid() {
		return DataUtil.toString(super.getByIndex(INDEX_FLIEID, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getFlieid <em>Flieid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Flieid</em>' attribute.
	 * @see #getFlieid()
	 */
	public void setFlieid(String flieid) {
		super.setByIndex(INDEX_FLIEID, flieid);
	}


}