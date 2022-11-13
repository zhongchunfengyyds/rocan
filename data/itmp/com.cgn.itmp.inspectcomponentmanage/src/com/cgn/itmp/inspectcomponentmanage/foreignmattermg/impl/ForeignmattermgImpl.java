/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.inspectcomponentmanage.foreignmattermg.impl;

import com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg;
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
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.impl.ForeignmattermgImpl#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.impl.ForeignmattermgImpl#getJd <em>Jd</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.impl.ForeignmattermgImpl#getJz <em>Jz</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.impl.ForeignmattermgImpl#getOverhaulsq <em>Overhaulsq</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.impl.ForeignmattermgImpl#getFunposition <em>Funposition</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.impl.ForeignmattermgImpl#getFocde <em>Focde</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.impl.ForeignmattermgImpl#getCheckstage <em>Checkstage</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.impl.ForeignmattermgImpl#getIstakeout <em>Istakeout</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.impl.ForeignmattermgImpl#getFoposition <em>Foposition</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.impl.ForeignmattermgImpl#getFosize <em>Fosize</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.impl.ForeignmattermgImpl#getFokg <em>Fokg</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.impl.ForeignmattermgImpl#getFoattribute <em>Foattribute</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.impl.ForeignmattermgImpl#getFodisimg <em>Fodisimg</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.impl.ForeignmattermgImpl#getRelevantimg <em>Relevantimg</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.impl.ForeignmattermgImpl#getRemake <em>Remake</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.impl.ForeignmattermgImpl#getIsdel <em>Isdel</em>}</li>
 * </ul>
 * </p>
 *
 * @extends ExtendedDataObjectImpl;
 *
 * @implements Foreignmattermg;
 */

public class ForeignmattermgImpl extends ExtendedDataObjectImpl implements Foreignmattermg {
	/**
	 * Comment for <code>serialVersionUID</code>
	 */
	private static final long serialVersionUID = 1L;
	public final static int INDEX_UUID = 0;
	public final static int INDEX_JD = 1;
	public final static int INDEX_JZ = 2;
	public final static int INDEX_OVERHAULSQ = 3;
	public final static int INDEX_FUNPOSITION = 4;
	public final static int INDEX_FOCDE = 5;
	public final static int INDEX_CHECKSTAGE = 6;
	public final static int INDEX_ISTAKEOUT = 7;
	public final static int INDEX_FOPOSITION = 8;
	public final static int INDEX_FOSIZE = 9;
	public final static int INDEX_FOKG = 10;
	public final static int INDEX_FOATTRIBUTE = 11;
	public final static int INDEX_FODISIMG = 12;
	public final static int INDEX_RELEVANTIMG = 13;
	public final static int INDEX_REMAKE = 14;
	public final static int INDEX_ISDEL = 15;
	public static final int SDO_PROPERTY_COUNT = 16;

	public static final int EXTENDED_PROPERTY_COUNT = -1;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public ForeignmattermgImpl() {
		this(TYPE);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public ForeignmattermgImpl(Type type) {
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
	public String getFunposition() {
		return DataUtil.toString(super.getByIndex(INDEX_FUNPOSITION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getFunposition <em>Funposition</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Funposition</em>' attribute.
	 * @see #getFunposition()
	 */
	public void setFunposition(String funposition) {
		super.setByIndex(INDEX_FUNPOSITION, funposition);
	}

	/**
	 * Returns the value of the '<em><b>Focde</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Focde</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Focde</em>' attribute.
	 * @see #setFocde(java.lang.String)
	 */
	public String getFocde() {
		return DataUtil.toString(super.getByIndex(INDEX_FOCDE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getFocde <em>Focde</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Focde</em>' attribute.
	 * @see #getFocde()
	 */
	public void setFocde(String focde) {
		super.setByIndex(INDEX_FOCDE, focde);
	}

	/**
	 * Returns the value of the '<em><b>Checkstage</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Checkstage</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Checkstage</em>' attribute.
	 * @see #setCheckstage(java.lang.String)
	 */
	public String getCheckstage() {
		return DataUtil.toString(super.getByIndex(INDEX_CHECKSTAGE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getCheckstage <em>Checkstage</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Checkstage</em>' attribute.
	 * @see #getCheckstage()
	 */
	public void setCheckstage(String checkstage) {
		super.setByIndex(INDEX_CHECKSTAGE, checkstage);
	}

	/**
	 * Returns the value of the '<em><b>Istakeout</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Istakeout</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Istakeout</em>' attribute.
	 * @see #setIstakeout(java.lang.String)
	 */
	public String getIstakeout() {
		return DataUtil.toString(super.getByIndex(INDEX_ISTAKEOUT, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getIstakeout <em>Istakeout</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Istakeout</em>' attribute.
	 * @see #getIstakeout()
	 */
	public void setIstakeout(String istakeout) {
		super.setByIndex(INDEX_ISTAKEOUT, istakeout);
	}

	/**
	 * Returns the value of the '<em><b>Foposition</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Foposition</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Foposition</em>' attribute.
	 * @see #setFoposition(java.lang.String)
	 */
	public String getFoposition() {
		return DataUtil.toString(super.getByIndex(INDEX_FOPOSITION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getFoposition <em>Foposition</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Foposition</em>' attribute.
	 * @see #getFoposition()
	 */
	public void setFoposition(String foposition) {
		super.setByIndex(INDEX_FOPOSITION, foposition);
	}

	/**
	 * Returns the value of the '<em><b>Fosize</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Fosize</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Fosize</em>' attribute.
	 * @see #setFosize(java.lang.String)
	 */
	public String getFosize() {
		return DataUtil.toString(super.getByIndex(INDEX_FOSIZE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getFosize <em>Fosize</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Fosize</em>' attribute.
	 * @see #getFosize()
	 */
	public void setFosize(String fosize) {
		super.setByIndex(INDEX_FOSIZE, fosize);
	}

	/**
	 * Returns the value of the '<em><b>Fokg</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Fokg</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Fokg</em>' attribute.
	 * @see #setFokg(int)
	 */
	public int getFokg() {
		return DataUtil.toInt(super.getByIndex(INDEX_FOKG, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getFokg <em>Fokg</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Fokg</em>' attribute.
	 * @see #getFokg()
	 */
	public void setFokg(int fokg) {
		super.setByIndex(INDEX_FOKG, fokg);
	}

	/**
	 * Returns the value of the '<em><b>Foattribute</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Foattribute</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Foattribute</em>' attribute.
	 * @see #setFoattribute(java.lang.String)
	 */
	public String getFoattribute() {
		return DataUtil.toString(super.getByIndex(INDEX_FOATTRIBUTE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getFoattribute <em>Foattribute</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Foattribute</em>' attribute.
	 * @see #getFoattribute()
	 */
	public void setFoattribute(String foattribute) {
		super.setByIndex(INDEX_FOATTRIBUTE, foattribute);
	}

	/**
	 * Returns the value of the '<em><b>Fodisimg</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Fodisimg</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Fodisimg</em>' attribute.
	 * @see #setFodisimg(java.lang.String)
	 */
	public String getFodisimg() {
		return DataUtil.toString(super.getByIndex(INDEX_FODISIMG, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getFodisimg <em>Fodisimg</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Fodisimg</em>' attribute.
	 * @see #getFodisimg()
	 */
	public void setFodisimg(String fodisimg) {
		super.setByIndex(INDEX_FODISIMG, fodisimg);
	}

	/**
	 * Returns the value of the '<em><b>Relevantimg</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Relevantimg</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Relevantimg</em>' attribute.
	 * @see #setRelevantimg(java.lang.String)
	 */
	public String getRelevantimg() {
		return DataUtil.toString(super.getByIndex(INDEX_RELEVANTIMG, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getRelevantimg <em>Relevantimg</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Relevantimg</em>' attribute.
	 * @see #getRelevantimg()
	 */
	public void setRelevantimg(String relevantimg) {
		super.setByIndex(INDEX_RELEVANTIMG, relevantimg);
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