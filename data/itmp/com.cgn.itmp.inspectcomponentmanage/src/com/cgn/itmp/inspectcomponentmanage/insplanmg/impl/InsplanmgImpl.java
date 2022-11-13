/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.inspectcomponentmanage.insplanmg.impl;

import com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg;
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
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.impl.InsplanmgImpl#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.impl.InsplanmgImpl#getJd <em>Jd</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.impl.InsplanmgImpl#getJz <em>Jz</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.impl.InsplanmgImpl#getOverhaulsq <em>Overhaulsq</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.impl.InsplanmgImpl#getInsphase <em>Insphase</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.impl.InsplanmgImpl#getInsscope <em>Insscope</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.impl.InsplanmgImpl#getInsplanflu <em>Insplanflu</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.impl.InsplanmgImpl#getRemake <em>Remake</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.impl.InsplanmgImpl#getFileid <em>Fileid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.impl.InsplanmgImpl#getFilepath <em>Filepath</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.impl.InsplanmgImpl#getIsdel <em>Isdel</em>}</li>
 * </ul>
 * </p>
 *
 * @extends ExtendedDataObjectImpl;
 *
 * @implements Insplanmg;
 */

public class InsplanmgImpl extends ExtendedDataObjectImpl implements Insplanmg {
	/**
	 * Comment for <code>serialVersionUID</code>
	 */
	private static final long serialVersionUID = 1L;
	public final static int INDEX_UUID = 0;
	public final static int INDEX_JD = 1;
	public final static int INDEX_JZ = 2;
	public final static int INDEX_OVERHAULSQ = 3;
	public final static int INDEX_INSPHASE = 4;
	public final static int INDEX_INSSCOPE = 5;
	public final static int INDEX_INSPLANFLU = 6;
	public final static int INDEX_REMAKE = 7;
	public final static int INDEX_FILEID = 8;
	public final static int INDEX_FILEPATH = 9;
	public final static int INDEX_ISDEL = 10;
	public static final int SDO_PROPERTY_COUNT = 11;

	public static final int EXTENDED_PROPERTY_COUNT = -1;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public InsplanmgImpl() {
		this(TYPE);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public InsplanmgImpl(Type type) {
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
	 * Returns the value of the '<em><b>Overhaulsq</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Overhaulsq</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Overhaulsq</em>' attribute.
	 * @see #setOverhaulsq(java.lang.String)
	 */
	public String getOverhaulsq() {
		return DataUtil.toString(super.getByIndex(INDEX_OVERHAULSQ, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getOverhaulsq <em>Overhaulsq</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Overhaulsq</em>' attribute.
	 * @see #getOverhaulsq()
	 */
	public void setOverhaulsq(String overhaulsq) {
		super.setByIndex(INDEX_OVERHAULSQ, overhaulsq);
	}

	/**
	 * Returns the value of the '<em><b>Insphase</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Insphase</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Insphase</em>' attribute.
	 * @see #setInsphase(java.lang.String)
	 */
	public String getInsphase() {
		return DataUtil.toString(super.getByIndex(INDEX_INSPHASE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getInsphase <em>Insphase</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Insphase</em>' attribute.
	 * @see #getInsphase()
	 */
	public void setInsphase(String insphase) {
		super.setByIndex(INDEX_INSPHASE, insphase);
	}

	/**
	 * Returns the value of the '<em><b>Insscope</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Insscope</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Insscope</em>' attribute.
	 * @see #setInsscope(java.lang.String)
	 */
	public String getInsscope() {
		return DataUtil.toString(super.getByIndex(INDEX_INSSCOPE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getInsscope <em>Insscope</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Insscope</em>' attribute.
	 * @see #getInsscope()
	 */
	public void setInsscope(String insscope) {
		super.setByIndex(INDEX_INSSCOPE, insscope);
	}

	/**
	 * Returns the value of the '<em><b>Insplanflu</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Insplanflu</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Insplanflu</em>' attribute.
	 * @see #setInsplanflu(java.lang.String)
	 */
	public String getInsplanflu() {
		return DataUtil.toString(super.getByIndex(INDEX_INSPLANFLU, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getInsplanflu <em>Insplanflu</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Insplanflu</em>' attribute.
	 * @see #getInsplanflu()
	 */
	public void setInsplanflu(String insplanflu) {
		super.setByIndex(INDEX_INSPLANFLU, insplanflu);
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

	/**
	 * Returns the value of the '<em><b>Filepath</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Filepath</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Filepath</em>' attribute.
	 * @see #setFilepath(java.lang.String)
	 */
	public String getFilepath() {
		return DataUtil.toString(super.getByIndex(INDEX_FILEPATH, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getFilepath <em>Filepath</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Filepath</em>' attribute.
	 * @see #getFilepath()
	 */
	public void setFilepath(String filepath) {
		super.setByIndex(INDEX_FILEPATH, filepath);
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