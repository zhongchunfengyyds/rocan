/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.knowledgebase.Regulation.impl;

import com.cgn.itmp.knowledgebase.Regulation.TInTerm;
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
 *   <li>{@link com.cgn.itmp.knowledgebase.Regulation.impl.TInTermImpl#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.Regulation.impl.TInTermImpl#getJd <em>Jd</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.Regulation.impl.TInTermImpl#getNumber <em>Number</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.Regulation.impl.TInTermImpl#getTerritory <em>Territory</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.Regulation.impl.TInTermImpl#getEnglishabbreviation <em>Englishabbreviation</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.Regulation.impl.TInTermImpl#getEnglishtermname <em>Englishtermname</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.Regulation.impl.TInTermImpl#getChinesstermname <em>Chinesstermname</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.Regulation.impl.TInTermImpl#getDefinition <em>Definition</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.Regulation.impl.TInTermImpl#getSynonym <em>Synonym</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.Regulation.impl.TInTermImpl#getReferencedocumentname <em>Referencedocumentname</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.Regulation.impl.TInTermImpl#getEnclosure <em>Enclosure</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.Regulation.impl.TInTermImpl#getIsdel <em>Isdel</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.Regulation.impl.TInTermImpl#getDelperson <em>Delperson</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.Regulation.impl.TInTermImpl#getDeltime <em>Deltime</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.Regulation.impl.TInTermImpl#getAddperson <em>Addperson</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.Regulation.impl.TInTermImpl#getAddtime <em>Addtime</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.Regulation.impl.TInTermImpl#getFileid <em>Fileid</em>}</li>
 * </ul>
 * </p>
 *
 * @extends ExtendedDataObjectImpl;
 *
 * @implements TInTerm;
 */

public class TInTermImpl extends ExtendedDataObjectImpl implements TInTerm {
	/**
	 * Comment for <code>serialVersionUID</code>
	 */
	private static final long serialVersionUID = 1L;
	public final static int INDEX_UUID = 0;
	public final static int INDEX_JD = 1;
	public final static int INDEX_NUMBER = 2;
	public final static int INDEX_TERRITORY = 3;
	public final static int INDEX_ENGLISHABBREVIATION = 4;
	public final static int INDEX_ENGLISHTERMNAME = 5;
	public final static int INDEX_CHINESSTERMNAME = 6;
	public final static int INDEX_DEFINITION = 7;
	public final static int INDEX_SYNONYM = 8;
	public final static int INDEX_REFERENCEDOCUMENTNAME = 9;
	public final static int INDEX_ENCLOSURE = 10;
	public final static int INDEX_ISDEL = 11;
	public final static int INDEX_DELPERSON = 12;
	public final static int INDEX_DELTIME = 13;
	public final static int INDEX_ADDPERSON = 14;
	public final static int INDEX_ADDTIME = 15;
	public final static int INDEX_FILEID = 16;
	public static final int SDO_PROPERTY_COUNT = 17;

	public static final int EXTENDED_PROPERTY_COUNT = -1;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public TInTermImpl() {
		this(TYPE);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public TInTermImpl(Type type) {
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
	 * Returns the value of the '<em><b>Number</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Number</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Number</em>' attribute.
	 * @see #setNumber(java.lang.String)
	 */
	public String getNumber() {
		return DataUtil.toString(super.getByIndex(INDEX_NUMBER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getNumber <em>Number</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Number</em>' attribute.
	 * @see #getNumber()
	 */
	public void setNumber(String number) {
		super.setByIndex(INDEX_NUMBER, number);
	}

	/**
	 * Returns the value of the '<em><b>Territory</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Territory</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Territory</em>' attribute.
	 * @see #setTerritory(java.lang.String)
	 */
	public String getTerritory() {
		return DataUtil.toString(super.getByIndex(INDEX_TERRITORY, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getTerritory <em>Territory</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Territory</em>' attribute.
	 * @see #getTerritory()
	 */
	public void setTerritory(String territory) {
		super.setByIndex(INDEX_TERRITORY, territory);
	}

	/**
	 * Returns the value of the '<em><b>Englishabbreviation</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Englishabbreviation</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Englishabbreviation</em>' attribute.
	 * @see #setEnglishabbreviation(java.lang.String)
	 */
	public String getEnglishabbreviation() {
		return DataUtil.toString(super.getByIndex(INDEX_ENGLISHABBREVIATION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getEnglishabbreviation <em>Englishabbreviation</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Englishabbreviation</em>' attribute.
	 * @see #getEnglishabbreviation()
	 */
	public void setEnglishabbreviation(String englishabbreviation) {
		super.setByIndex(INDEX_ENGLISHABBREVIATION, englishabbreviation);
	}

	/**
	 * Returns the value of the '<em><b>Englishtermname</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Englishtermname</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Englishtermname</em>' attribute.
	 * @see #setEnglishtermname(java.lang.String)
	 */
	public String getEnglishtermname() {
		return DataUtil.toString(super.getByIndex(INDEX_ENGLISHTERMNAME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getEnglishtermname <em>Englishtermname</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Englishtermname</em>' attribute.
	 * @see #getEnglishtermname()
	 */
	public void setEnglishtermname(String englishtermname) {
		super.setByIndex(INDEX_ENGLISHTERMNAME, englishtermname);
	}

	/**
	 * Returns the value of the '<em><b>Chinesstermname</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Chinesstermname</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Chinesstermname</em>' attribute.
	 * @see #setChinesstermname(java.lang.String)
	 */
	public String getChinesstermname() {
		return DataUtil.toString(super.getByIndex(INDEX_CHINESSTERMNAME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getChinesstermname <em>Chinesstermname</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Chinesstermname</em>' attribute.
	 * @see #getChinesstermname()
	 */
	public void setChinesstermname(String chinesstermname) {
		super.setByIndex(INDEX_CHINESSTERMNAME, chinesstermname);
	}

	/**
	 * Returns the value of the '<em><b>Definition</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Definition</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Definition</em>' attribute.
	 * @see #setDefinition(java.lang.String)
	 */
	public String getDefinition() {
		return DataUtil.toString(super.getByIndex(INDEX_DEFINITION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getDefinition <em>Definition</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Definition</em>' attribute.
	 * @see #getDefinition()
	 */
	public void setDefinition(String definition) {
		super.setByIndex(INDEX_DEFINITION, definition);
	}

	/**
	 * Returns the value of the '<em><b>Synonym</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Synonym</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Synonym</em>' attribute.
	 * @see #setSynonym(java.lang.String)
	 */
	public String getSynonym() {
		return DataUtil.toString(super.getByIndex(INDEX_SYNONYM, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getSynonym <em>Synonym</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Synonym</em>' attribute.
	 * @see #getSynonym()
	 */
	public void setSynonym(String synonym) {
		super.setByIndex(INDEX_SYNONYM, synonym);
	}

	/**
	 * Returns the value of the '<em><b>Referencedocumentname</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Referencedocumentname</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Referencedocumentname</em>' attribute.
	 * @see #setReferencedocumentname(java.lang.String)
	 */
	public String getReferencedocumentname() {
		return DataUtil.toString(super.getByIndex(INDEX_REFERENCEDOCUMENTNAME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getReferencedocumentname <em>Referencedocumentname</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Referencedocumentname</em>' attribute.
	 * @see #getReferencedocumentname()
	 */
	public void setReferencedocumentname(String referencedocumentname) {
		super.setByIndex(INDEX_REFERENCEDOCUMENTNAME, referencedocumentname);
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
	 * Returns the value of the '<em><b>Fileid</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Fileid</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Fileid</em>' attribute.
	 * @see #setFileid(java.lang.String)
	 */
	public String getFileid() {
		return DataUtil.toString(super.getByIndex(INDEX_FILEID, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getFileid <em>Fileid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Fileid</em>' attribute.
	 * @see #getFileid()
	 */
	public void setFileid(String fileid) {
		super.setByIndex(INDEX_FILEID, fileid);
	}


}