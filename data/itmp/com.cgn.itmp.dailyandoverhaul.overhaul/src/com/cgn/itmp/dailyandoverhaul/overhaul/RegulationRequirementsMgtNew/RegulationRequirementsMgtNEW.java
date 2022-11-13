/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew;

import com.eos.data.sdo.IObjectFactory;

import commonj.sdo.DataObject;
import commonj.sdo.Type;
import commonj.sdo.helper.DataFactory;
import commonj.sdo.helper.TypeHelper;

import java.util.Date;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Test</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW#getJd <em>Jd</em>}</li>
 *   <li>{@link com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW#getInswindow <em>Inswindow</em>}</li>
 *   <li>{@link com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW#getApplyjz <em>Applyjz</em>}</li>
 *   <li>{@link com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW#getFilecode <em>Filecode</em>}</li>
 *   <li>{@link com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW#getProblempage <em>Problempage</em>}</li>
 *   <li>{@link com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW#getProbleminfo <em>Probleminfo</em>}</li>
 *   <li>{@link com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW#getReply <em>Reply</em>}</li>
 *   <li>{@link com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW#getIsafteraction <em>Isafteraction</em>}</li>
 *   <li>{@link com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW#getAfteractionperson <em>Afteractionperson</em>}</li>
 *   <li>{@link com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW#getChecktime <em>Checktime</em>}</li>
 *   <li>{@link com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW#getSingtime <em>Singtime</em>}</li>
 *   <li>{@link com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW#getFj <em>Fj</em>}</li>
 *   <li>{@link com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW#getFileid <em>Fileid</em>}</li>
 *   <li>{@link com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW#getCreatetime <em>Createtime</em>}</li>
 *   <li>{@link com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW#getIsdel <em>Isdel</em>}</li>
 * </ul>
 * </p>
 *
 * @extends DataObject;
 */
public interface RegulationRequirementsMgtNEW extends DataObject {

	public static final String QNAME = "com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW";

	public static final Type TYPE = TypeHelper.INSTANCE.getType("com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew", "RegulationRequirementsMgtNEW");

	public static final IObjectFactory<RegulationRequirementsMgtNEW> FACTORY = new IObjectFactory<RegulationRequirementsMgtNEW>() {
		public RegulationRequirementsMgtNEW create() {
			return (RegulationRequirementsMgtNEW) DataFactory.INSTANCE.create(TYPE);
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
	 * Sets the value of the '{@link com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW#getUuid <em>Uuid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Uuid</em>' attribute.
	 * @see #getUuid()
	 */
	public void setUuid(String uuid);

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
	 * Sets the value of the '{@link com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW#getJd <em>Jd</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Jd</em>' attribute.
	 * @see #getJd()
	 */
	public void setJd(String jd);

	/**
	 * Returns the value of the '<em><b>Inswindow</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Inswindow</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Inswindow</em>' attribute.
	 * @see #setInswindow(java.lang.String)
	 */
	public String getInswindow();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW#getInswindow <em>Inswindow</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Inswindow</em>' attribute.
	 * @see #getInswindow()
	 */
	public void setInswindow(String inswindow);

	/**
	 * Returns the value of the '<em><b>Applyjz</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Applyjz</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Applyjz</em>' attribute.
	 * @see #setApplyjz(java.lang.String)
	 */
	public String getApplyjz();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW#getApplyjz <em>Applyjz</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Applyjz</em>' attribute.
	 * @see #getApplyjz()
	 */
	public void setApplyjz(String applyjz);

	/**
	 * Returns the value of the '<em><b>Filecode</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Filecode</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Filecode</em>' attribute.
	 * @see #setFilecode(java.lang.String)
	 */
	public String getFilecode();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW#getFilecode <em>Filecode</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Filecode</em>' attribute.
	 * @see #getFilecode()
	 */
	public void setFilecode(String filecode);

	/**
	 * Returns the value of the '<em><b>Problempage</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Problempage</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Problempage</em>' attribute.
	 * @see #setProblempage(java.lang.String)
	 */
	public String getProblempage();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW#getProblempage <em>Problempage</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Problempage</em>' attribute.
	 * @see #getProblempage()
	 */
	public void setProblempage(String problempage);

	/**
	 * Returns the value of the '<em><b>Probleminfo</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Probleminfo</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Probleminfo</em>' attribute.
	 * @see #setProbleminfo(java.lang.String)
	 */
	public String getProbleminfo();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW#getProbleminfo <em>Probleminfo</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Probleminfo</em>' attribute.
	 * @see #getProbleminfo()
	 */
	public void setProbleminfo(String probleminfo);

	/**
	 * Returns the value of the '<em><b>Reply</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Reply</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Reply</em>' attribute.
	 * @see #setReply(java.lang.String)
	 */
	public String getReply();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW#getReply <em>Reply</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Reply</em>' attribute.
	 * @see #getReply()
	 */
	public void setReply(String reply);

	/**
	 * Returns the value of the '<em><b>Isafteraction</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Isafteraction</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Isafteraction</em>' attribute.
	 * @see #setIsafteraction(java.lang.String)
	 */
	public String getIsafteraction();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW#getIsafteraction <em>Isafteraction</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Isafteraction</em>' attribute.
	 * @see #getIsafteraction()
	 */
	public void setIsafteraction(String isafteraction);

	/**
	 * Returns the value of the '<em><b>Afteractionperson</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Afteractionperson</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Afteractionperson</em>' attribute.
	 * @see #setAfteractionperson(java.lang.String)
	 */
	public String getAfteractionperson();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW#getAfteractionperson <em>Afteractionperson</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Afteractionperson</em>' attribute.
	 * @see #getAfteractionperson()
	 */
	public void setAfteractionperson(String afteractionperson);

	/**
	 * Returns the value of the '<em><b>Checktime</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Checktime</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Checktime</em>' attribute.
	 * @see #setChecktime(java.util.Date)
	 */
	public Date getChecktime();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW#getChecktime <em>Checktime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Checktime</em>' attribute.
	 * @see #getChecktime()
	 */
	public void setChecktime(Date checktime);

	/**
	 * Returns the value of the '<em><b>Singtime</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Singtime</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Singtime</em>' attribute.
	 * @see #setSingtime(java.util.Date)
	 */
	public Date getSingtime();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW#getSingtime <em>Singtime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Singtime</em>' attribute.
	 * @see #getSingtime()
	 */
	public void setSingtime(Date singtime);

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
	public String getFj();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW#getFj <em>Fj</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Fj</em>' attribute.
	 * @see #getFj()
	 */
	public void setFj(String fj);

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
	public String getFileid();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW#getFileid <em>Fileid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Fileid</em>' attribute.
	 * @see #getFileid()
	 */
	public void setFileid(String fileid);

	/**
	 * Returns the value of the '<em><b>Createtime</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Createtime</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Createtime</em>' attribute.
	 * @see #setCreatetime(java.lang.String)
	 */
	public String getCreatetime();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW#getCreatetime <em>Createtime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Createtime</em>' attribute.
	 * @see #getCreatetime()
	 */
	public void setCreatetime(String createtime);

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
	 * Sets the value of the '{@link com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW#getIsdel <em>Isdel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Isdel</em>' attribute.
	 * @see #getIsdel()
	 */
	public void setIsdel(String isdel);


}