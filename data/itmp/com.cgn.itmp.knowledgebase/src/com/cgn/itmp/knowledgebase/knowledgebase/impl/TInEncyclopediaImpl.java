/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.knowledgebase.knowledgebase.impl;

import com.cgn.itmp.knowledgebase.knowledgebase.TInEncyclopedia;
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
 *   <li>{@link com.cgn.itmp.knowledgebase.knowledgebase.impl.TInEncyclopediaImpl#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.knowledgebase.impl.TInEncyclopediaImpl#getCategory <em>Category</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.knowledgebase.impl.TInEncyclopediaImpl#getName <em>Name</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.knowledgebase.impl.TInEncyclopediaImpl#getZhaiyao <em>Zhaiyao</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.knowledgebase.impl.TInEncyclopediaImpl#getRcommend <em>Rcommend</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.knowledgebase.impl.TInEncyclopediaImpl#getEnclosure <em>Enclosure</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.knowledgebase.impl.TInEncyclopediaImpl#getUplodingperson <em>Uplodingperson</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.knowledgebase.impl.TInEncyclopediaImpl#getUplodingtime <em>Uplodingtime</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.knowledgebase.impl.TInEncyclopediaImpl#getIsdel <em>Isdel</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.knowledgebase.impl.TInEncyclopediaImpl#getDelperson <em>Delperson</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.knowledgebase.impl.TInEncyclopediaImpl#getDeltime <em>Deltime</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.knowledgebase.impl.TInEncyclopediaImpl#getFildid <em>Fildid</em>}</li>
 * </ul>
 * </p>
 *
 * @extends ExtendedDataObjectImpl;
 *
 * @implements TInEncyclopedia;
 */

public class TInEncyclopediaImpl extends ExtendedDataObjectImpl implements TInEncyclopedia {
	/**
	 * Comment for <code>serialVersionUID</code>
	 */
	private static final long serialVersionUID = 1L;
	public final static int INDEX_UUID = 0;
	public final static int INDEX_CATEGORY = 1;
	public final static int INDEX_NAME = 2;
	public final static int INDEX_ZHAIYAO = 3;
	public final static int INDEX_RCOMMEND = 4;
	public final static int INDEX_ENCLOSURE = 5;
	public final static int INDEX_UPLODINGPERSON = 6;
	public final static int INDEX_UPLODINGTIME = 7;
	public final static int INDEX_ISDEL = 8;
	public final static int INDEX_DELPERSON = 9;
	public final static int INDEX_DELTIME = 10;
	public final static int INDEX_FILDID = 11;
	public static final int SDO_PROPERTY_COUNT = 12;

	public static final int EXTENDED_PROPERTY_COUNT = -1;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public TInEncyclopediaImpl() {
		this(TYPE);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public TInEncyclopediaImpl(Type type) {
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
	 * Returns the value of the '<em><b>Category</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Category</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Category</em>' attribute.
	 * @see #setCategory(java.lang.String)
	 */
	public String getCategory() {
		return DataUtil.toString(super.getByIndex(INDEX_CATEGORY, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getCategory <em>Category</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Category</em>' attribute.
	 * @see #getCategory()
	 */
	public void setCategory(String category) {
		super.setByIndex(INDEX_CATEGORY, category);
	}

	/**
	 * Returns the value of the '<em><b>Name</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Name</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Name</em>' attribute.
	 * @see #setName(java.lang.String)
	 */
	public String getName() {
		return DataUtil.toString(super.getByIndex(INDEX_NAME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getName <em>Name</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Name</em>' attribute.
	 * @see #getName()
	 */
	public void setName(String name) {
		super.setByIndex(INDEX_NAME, name);
	}

	/**
	 * Returns the value of the '<em><b>Zhaiyao</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Zhaiyao</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Zhaiyao</em>' attribute.
	 * @see #setZhaiyao(java.lang.String)
	 */
	public String getZhaiyao() {
		return DataUtil.toString(super.getByIndex(INDEX_ZHAIYAO, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getZhaiyao <em>Zhaiyao</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Zhaiyao</em>' attribute.
	 * @see #getZhaiyao()
	 */
	public void setZhaiyao(String zhaiyao) {
		super.setByIndex(INDEX_ZHAIYAO, zhaiyao);
	}

	/**
	 * Returns the value of the '<em><b>Rcommend</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Rcommend</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Rcommend</em>' attribute.
	 * @see #setRcommend(java.lang.String)
	 */
	public String getRcommend() {
		return DataUtil.toString(super.getByIndex(INDEX_RCOMMEND, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getRcommend <em>Rcommend</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Rcommend</em>' attribute.
	 * @see #getRcommend()
	 */
	public void setRcommend(String rcommend) {
		super.setByIndex(INDEX_RCOMMEND, rcommend);
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
	 * Returns the value of the '<em><b>Uplodingperson</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Uplodingperson</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Uplodingperson</em>' attribute.
	 * @see #setUplodingperson(java.lang.String)
	 */
	public String getUplodingperson() {
		return DataUtil.toString(super.getByIndex(INDEX_UPLODINGPERSON, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getUplodingperson <em>Uplodingperson</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Uplodingperson</em>' attribute.
	 * @see #getUplodingperson()
	 */
	public void setUplodingperson(String uplodingperson) {
		super.setByIndex(INDEX_UPLODINGPERSON, uplodingperson);
	}

	/**
	 * Returns the value of the '<em><b>Uplodingtime</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Uplodingtime</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Uplodingtime</em>' attribute.
	 * @see #setUplodingtime(java.util.Date)
	 */
	public Date getUplodingtime() {
		return DataUtil.toDate(super.getByIndex(INDEX_UPLODINGTIME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getUplodingtime <em>Uplodingtime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Uplodingtime</em>' attribute.
	 * @see #getUplodingtime()
	 */
	public void setUplodingtime(Date uplodingtime) {
		super.setByIndex(INDEX_UPLODINGTIME, uplodingtime);
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
	 * Returns the value of the '<em><b>Fildid</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Fildid</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Fildid</em>' attribute.
	 * @see #setFildid(java.lang.String)
	 */
	public String getFildid() {
		return DataUtil.toString(super.getByIndex(INDEX_FILDID, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getFildid <em>Fildid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Fildid</em>' attribute.
	 * @see #getFildid()
	 */
	public void setFildid(String fildid) {
		super.setByIndex(INDEX_FILDID, fildid);
	}


}