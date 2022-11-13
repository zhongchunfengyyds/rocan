/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.weldingmanagement.QualityBackup;

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
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getRounds <em>Rounds</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getQualitynumber <em>Qualitynumber</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getEdition <em>Edition</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getApplyno <em>Applyno</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getTicketnumber <em>Ticketnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getDescribe <em>Describe</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getPosition <em>Position</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getAssigned <em>Assigned</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getFj <em>Fj</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getState <em>State</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getIsdel <em>Isdel</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getJd <em>Jd</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getJz <em>Jz</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getWqp_statu <em>Wqp_statu</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getLevel <em>Level</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getForm <em>Form</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getMajor <em>Major</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getNdtmethod_proportions <em>Ndtmethod_proportions</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getPrewelder <em>Prewelder</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getSolidwelder <em>Solidwelder</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getChargeperson <em>Chargeperson</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getFilepath <em>Filepath</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getFilename <em>Filename</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getCreatetime <em>Createtime</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getName <em>Name</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getEquiaxedgraph <em>Equiaxedgraph</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getWeldnumber <em>Weldnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getCardnumber_edtion <em>Cardnumber_edtion</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getWelding_method <em>Welding_method</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getGeographicalposition <em>Geographicalposition</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getModel_specifications <em>Model_specifications</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getBatchnumber <em>Batchnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getUppername <em>Uppername</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getDownname <em>Downname</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getComponent1interfacesize <em>Component1interfacesize</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getComponent2interfacesize <em>Component2interfacesize</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getComponent1interfacethickness <em>Component1interfacethickness</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getComponent2interfacethickness <em>Component2interfacethickness</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getComponent1material <em>Component1material</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getComponent2material <em>Component2material</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getWorkingprocedure <em>Workingprocedure</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getProcesssteps <em>Processsteps</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getWeldertype <em>Weldertype</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getDynamicgeneration <em>Dynamicgeneration</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getName1 <em>Name1</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getName2 <em>Name2</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getName3 <em>Name3</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getName4 <em>Name4</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getValue1 <em>Value1</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getValue2 <em>Value2</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getValue3 <em>Value3</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getValue4 <em>Value4</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getApplicant <em>Applicant</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getApplytime <em>Applytime</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getExaminant <em>Examinant</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getAuditor <em>Auditor</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getReviewer <em>Reviewer</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getCcry <em>Ccry</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getProcessinstid <em>Processinstid</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getFildid <em>Fildid</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getScsj <em>Scsj</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getFhsj <em>Fhsj</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getShsj <em>Shsj</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getRelationid <em>Relationid</em>}</li>
 * </ul>
 * </p>
 *
 * @extends DataObject;
 */
public interface WeldingQualityBackup extends DataObject {

	public static final String QNAME = "com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup";

	public static final Type TYPE = TypeHelper.INSTANCE.getType("com.cgn.itmp.weldingmanagement.QualityBackup", "WeldingQualityBackup");

	public static final IObjectFactory<WeldingQualityBackup> FACTORY = new IObjectFactory<WeldingQualityBackup>() {
		public WeldingQualityBackup create() {
			return (WeldingQualityBackup) DataFactory.INSTANCE.create(TYPE);
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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getUuid <em>Uuid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Uuid</em>' attribute.
	 * @see #getUuid()
	 */
	public void setUuid(String uuid);

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
	public String getRounds();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getRounds <em>Rounds</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Rounds</em>' attribute.
	 * @see #getRounds()
	 */
	public void setRounds(String rounds);

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
	public String getQualitynumber();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getQualitynumber <em>Qualitynumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Qualitynumber</em>' attribute.
	 * @see #getQualitynumber()
	 */
	public void setQualitynumber(String qualitynumber);

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
	public String getEdition();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getEdition <em>Edition</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Edition</em>' attribute.
	 * @see #getEdition()
	 */
	public void setEdition(String edition);

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
	public String getApplyno();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getApplyno <em>Applyno</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Applyno</em>' attribute.
	 * @see #getApplyno()
	 */
	public void setApplyno(String applyno);

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
	public String getTicketnumber();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getTicketnumber <em>Ticketnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Ticketnumber</em>' attribute.
	 * @see #getTicketnumber()
	 */
	public void setTicketnumber(String ticketnumber);

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
	public String getDescribe();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getDescribe <em>Describe</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Describe</em>' attribute.
	 * @see #getDescribe()
	 */
	public void setDescribe(String describe);

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
	public String getPosition();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getPosition <em>Position</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Position</em>' attribute.
	 * @see #getPosition()
	 */
	public void setPosition(String position);

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
	public String getAssigned();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getAssigned <em>Assigned</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Assigned</em>' attribute.
	 * @see #getAssigned()
	 */
	public void setAssigned(String assigned);

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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getFj <em>Fj</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Fj</em>' attribute.
	 * @see #getFj()
	 */
	public void setFj(String fj);

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
	public String getState();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getState <em>State</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>State</em>' attribute.
	 * @see #getState()
	 */
	public void setState(String state);

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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getIsdel <em>Isdel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Isdel</em>' attribute.
	 * @see #getIsdel()
	 */
	public void setIsdel(String isdel);

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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getJd <em>Jd</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getJz <em>Jz</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Jz</em>' attribute.
	 * @see #getJz()
	 */
	public void setJz(String jz);

	/**
	 * Returns the value of the '<em><b>Wqp_statu</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Wqp_statu</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Wqp_statu</em>' attribute.
	 * @see #setWqp_statu(java.lang.String)
	 */
	public String getWqp_statu();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getWqp_statu <em>Wqp_statu</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Wqp_statu</em>' attribute.
	 * @see #getWqp_statu()
	 */
	public void setWqp_statu(String wqp_statu);

	/**
	 * Returns the value of the '<em><b>Level</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Level</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Level</em>' attribute.
	 * @see #setLevel(java.lang.String)
	 */
	public String getLevel();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getLevel <em>Level</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Level</em>' attribute.
	 * @see #getLevel()
	 */
	public void setLevel(String level);

	/**
	 * Returns the value of the '<em><b>Form</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Form</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Form</em>' attribute.
	 * @see #setForm(java.lang.String)
	 */
	public String getForm();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getForm <em>Form</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Form</em>' attribute.
	 * @see #getForm()
	 */
	public void setForm(String form);

	/**
	 * Returns the value of the '<em><b>Major</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Major</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Major</em>' attribute.
	 * @see #setMajor(java.lang.String)
	 */
	public String getMajor();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getMajor <em>Major</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Major</em>' attribute.
	 * @see #getMajor()
	 */
	public void setMajor(String major);

	/**
	 * Returns the value of the '<em><b>Ndtmethod_proportions</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Ndtmethod_proportions</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Ndtmethod_proportions</em>' attribute.
	 * @see #setNdtmethod_proportions(java.lang.String)
	 */
	public String getNdtmethod_proportions();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getNdtmethod_proportions <em>Ndtmethod_proportions</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Ndtmethod_proportions</em>' attribute.
	 * @see #getNdtmethod_proportions()
	 */
	public void setNdtmethod_proportions(String ndtmethod_proportions);

	/**
	 * Returns the value of the '<em><b>Prewelder</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Prewelder</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Prewelder</em>' attribute.
	 * @see #setPrewelder(java.lang.String)
	 */
	public String getPrewelder();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getPrewelder <em>Prewelder</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Prewelder</em>' attribute.
	 * @see #getPrewelder()
	 */
	public void setPrewelder(String prewelder);

	/**
	 * Returns the value of the '<em><b>Solidwelder</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Solidwelder</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Solidwelder</em>' attribute.
	 * @see #setSolidwelder(java.lang.String)
	 */
	public String getSolidwelder();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getSolidwelder <em>Solidwelder</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Solidwelder</em>' attribute.
	 * @see #getSolidwelder()
	 */
	public void setSolidwelder(String solidwelder);

	/**
	 * Returns the value of the '<em><b>Chargeperson</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Chargeperson</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Chargeperson</em>' attribute.
	 * @see #setChargeperson(java.lang.String)
	 */
	public String getChargeperson();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getChargeperson <em>Chargeperson</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Chargeperson</em>' attribute.
	 * @see #getChargeperson()
	 */
	public void setChargeperson(String chargeperson);

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
	public String getFilepath();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getFilepath <em>Filepath</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Filepath</em>' attribute.
	 * @see #getFilepath()
	 */
	public void setFilepath(String filepath);

	/**
	 * Returns the value of the '<em><b>Filename</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Filename</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Filename</em>' attribute.
	 * @see #setFilename(java.lang.String)
	 */
	public String getFilename();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getFilename <em>Filename</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Filename</em>' attribute.
	 * @see #getFilename()
	 */
	public void setFilename(String filename);

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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getCreatetime <em>Createtime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Createtime</em>' attribute.
	 * @see #getCreatetime()
	 */
	public void setCreatetime(String createtime);

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
	public String getName();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getName <em>Name</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Name</em>' attribute.
	 * @see #getName()
	 */
	public void setName(String name);

	/**
	 * Returns the value of the '<em><b>Equiaxedgraph</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Equiaxedgraph</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Equiaxedgraph</em>' attribute.
	 * @see #setEquiaxedgraph(java.lang.String)
	 */
	public String getEquiaxedgraph();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getEquiaxedgraph <em>Equiaxedgraph</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equiaxedgraph</em>' attribute.
	 * @see #getEquiaxedgraph()
	 */
	public void setEquiaxedgraph(String equiaxedgraph);

	/**
	 * Returns the value of the '<em><b>Weldnumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Weldnumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Weldnumber</em>' attribute.
	 * @see #setWeldnumber(java.lang.String)
	 */
	public String getWeldnumber();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getWeldnumber <em>Weldnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Weldnumber</em>' attribute.
	 * @see #getWeldnumber()
	 */
	public void setWeldnumber(String weldnumber);

	/**
	 * Returns the value of the '<em><b>Cardnumber_edtion</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Cardnumber_edtion</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Cardnumber_edtion</em>' attribute.
	 * @see #setCardnumber_edtion(java.lang.String)
	 */
	public String getCardnumber_edtion();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getCardnumber_edtion <em>Cardnumber_edtion</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Cardnumber_edtion</em>' attribute.
	 * @see #getCardnumber_edtion()
	 */
	public void setCardnumber_edtion(String cardnumber_edtion);

	/**
	 * Returns the value of the '<em><b>Welding_method</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Welding_method</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Welding_method</em>' attribute.
	 * @see #setWelding_method(java.lang.String)
	 */
	public String getWelding_method();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getWelding_method <em>Welding_method</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Welding_method</em>' attribute.
	 * @see #getWelding_method()
	 */
	public void setWelding_method(String welding_method);

	/**
	 * Returns the value of the '<em><b>Geographicalposition</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Geographicalposition</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Geographicalposition</em>' attribute.
	 * @see #setGeographicalposition(java.lang.String)
	 */
	public String getGeographicalposition();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getGeographicalposition <em>Geographicalposition</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Geographicalposition</em>' attribute.
	 * @see #getGeographicalposition()
	 */
	public void setGeographicalposition(String geographicalposition);

	/**
	 * Returns the value of the '<em><b>Model_specifications</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Model_specifications</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Model_specifications</em>' attribute.
	 * @see #setModel_specifications(java.lang.String)
	 */
	public String getModel_specifications();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getModel_specifications <em>Model_specifications</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Model_specifications</em>' attribute.
	 * @see #getModel_specifications()
	 */
	public void setModel_specifications(String model_specifications);

	/**
	 * Returns the value of the '<em><b>Batchnumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Batchnumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Batchnumber</em>' attribute.
	 * @see #setBatchnumber(java.lang.String)
	 */
	public String getBatchnumber();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getBatchnumber <em>Batchnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Batchnumber</em>' attribute.
	 * @see #getBatchnumber()
	 */
	public void setBatchnumber(String batchnumber);

	/**
	 * Returns the value of the '<em><b>Uppername</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Uppername</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Uppername</em>' attribute.
	 * @see #setUppername(java.lang.String)
	 */
	public String getUppername();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getUppername <em>Uppername</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Uppername</em>' attribute.
	 * @see #getUppername()
	 */
	public void setUppername(String uppername);

	/**
	 * Returns the value of the '<em><b>Downname</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Downname</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Downname</em>' attribute.
	 * @see #setDownname(java.lang.String)
	 */
	public String getDownname();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getDownname <em>Downname</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Downname</em>' attribute.
	 * @see #getDownname()
	 */
	public void setDownname(String downname);

	/**
	 * Returns the value of the '<em><b>Component1interfacesize</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Component1interfacesize</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Component1interfacesize</em>' attribute.
	 * @see #setComponent1interfacesize(java.lang.String)
	 */
	public String getComponent1interfacesize();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getComponent1interfacesize <em>Component1interfacesize</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Component1interfacesize</em>' attribute.
	 * @see #getComponent1interfacesize()
	 */
	public void setComponent1interfacesize(String component1interfacesize);

	/**
	 * Returns the value of the '<em><b>Component2interfacesize</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Component2interfacesize</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Component2interfacesize</em>' attribute.
	 * @see #setComponent2interfacesize(java.lang.String)
	 */
	public String getComponent2interfacesize();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getComponent2interfacesize <em>Component2interfacesize</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Component2interfacesize</em>' attribute.
	 * @see #getComponent2interfacesize()
	 */
	public void setComponent2interfacesize(String component2interfacesize);

	/**
	 * Returns the value of the '<em><b>Component1interfacethickness</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Component1interfacethickness</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Component1interfacethickness</em>' attribute.
	 * @see #setComponent1interfacethickness(java.lang.String)
	 */
	public String getComponent1interfacethickness();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getComponent1interfacethickness <em>Component1interfacethickness</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Component1interfacethickness</em>' attribute.
	 * @see #getComponent1interfacethickness()
	 */
	public void setComponent1interfacethickness(String component1interfacethickness);

	/**
	 * Returns the value of the '<em><b>Component2interfacethickness</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Component2interfacethickness</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Component2interfacethickness</em>' attribute.
	 * @see #setComponent2interfacethickness(java.lang.String)
	 */
	public String getComponent2interfacethickness();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getComponent2interfacethickness <em>Component2interfacethickness</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Component2interfacethickness</em>' attribute.
	 * @see #getComponent2interfacethickness()
	 */
	public void setComponent2interfacethickness(String component2interfacethickness);

	/**
	 * Returns the value of the '<em><b>Component1material</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Component1material</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Component1material</em>' attribute.
	 * @see #setComponent1material(java.lang.String)
	 */
	public String getComponent1material();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getComponent1material <em>Component1material</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Component1material</em>' attribute.
	 * @see #getComponent1material()
	 */
	public void setComponent1material(String component1material);

	/**
	 * Returns the value of the '<em><b>Component2material</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Component2material</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Component2material</em>' attribute.
	 * @see #setComponent2material(java.lang.String)
	 */
	public String getComponent2material();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getComponent2material <em>Component2material</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Component2material</em>' attribute.
	 * @see #getComponent2material()
	 */
	public void setComponent2material(String component2material);

	/**
	 * Returns the value of the '<em><b>Workingprocedure</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Workingprocedure</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Workingprocedure</em>' attribute.
	 * @see #setWorkingprocedure(java.lang.String)
	 */
	public String getWorkingprocedure();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getWorkingprocedure <em>Workingprocedure</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Workingprocedure</em>' attribute.
	 * @see #getWorkingprocedure()
	 */
	public void setWorkingprocedure(String workingprocedure);

	/**
	 * Returns the value of the '<em><b>Processsteps</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Processsteps</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Processsteps</em>' attribute.
	 * @see #setProcesssteps(java.lang.String)
	 */
	public String getProcesssteps();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getProcesssteps <em>Processsteps</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Processsteps</em>' attribute.
	 * @see #getProcesssteps()
	 */
	public void setProcesssteps(String processsteps);

	/**
	 * Returns the value of the '<em><b>Weldertype</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Weldertype</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Weldertype</em>' attribute.
	 * @see #setWeldertype(java.lang.String)
	 */
	public String getWeldertype();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getWeldertype <em>Weldertype</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Weldertype</em>' attribute.
	 * @see #getWeldertype()
	 */
	public void setWeldertype(String weldertype);

	/**
	 * Returns the value of the '<em><b>Dynamicgeneration</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Dynamicgeneration</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Dynamicgeneration</em>' attribute.
	 * @see #setDynamicgeneration(java.lang.String)
	 */
	public String getDynamicgeneration();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getDynamicgeneration <em>Dynamicgeneration</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Dynamicgeneration</em>' attribute.
	 * @see #getDynamicgeneration()
	 */
	public void setDynamicgeneration(String dynamicgeneration);

	/**
	 * Returns the value of the '<em><b>Name1</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Name1</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Name1</em>' attribute.
	 * @see #setName1(java.lang.String)
	 */
	public String getName1();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getName1 <em>Name1</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Name1</em>' attribute.
	 * @see #getName1()
	 */
	public void setName1(String name1);

	/**
	 * Returns the value of the '<em><b>Name2</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Name2</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Name2</em>' attribute.
	 * @see #setName2(java.lang.String)
	 */
	public String getName2();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getName2 <em>Name2</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Name2</em>' attribute.
	 * @see #getName2()
	 */
	public void setName2(String name2);

	/**
	 * Returns the value of the '<em><b>Name3</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Name3</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Name3</em>' attribute.
	 * @see #setName3(java.lang.String)
	 */
	public String getName3();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getName3 <em>Name3</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Name3</em>' attribute.
	 * @see #getName3()
	 */
	public void setName3(String name3);

	/**
	 * Returns the value of the '<em><b>Name4</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Name4</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Name4</em>' attribute.
	 * @see #setName4(java.lang.String)
	 */
	public String getName4();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getName4 <em>Name4</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Name4</em>' attribute.
	 * @see #getName4()
	 */
	public void setName4(String name4);

	/**
	 * Returns the value of the '<em><b>Value1</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Value1</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Value1</em>' attribute.
	 * @see #setValue1(java.lang.String)
	 */
	public String getValue1();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getValue1 <em>Value1</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Value1</em>' attribute.
	 * @see #getValue1()
	 */
	public void setValue1(String value1);

	/**
	 * Returns the value of the '<em><b>Value2</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Value2</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Value2</em>' attribute.
	 * @see #setValue2(java.lang.String)
	 */
	public String getValue2();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getValue2 <em>Value2</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Value2</em>' attribute.
	 * @see #getValue2()
	 */
	public void setValue2(String value2);

	/**
	 * Returns the value of the '<em><b>Value3</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Value3</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Value3</em>' attribute.
	 * @see #setValue3(java.lang.String)
	 */
	public String getValue3();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getValue3 <em>Value3</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Value3</em>' attribute.
	 * @see #getValue3()
	 */
	public void setValue3(String value3);

	/**
	 * Returns the value of the '<em><b>Value4</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Value4</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Value4</em>' attribute.
	 * @see #setValue4(java.lang.String)
	 */
	public String getValue4();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getValue4 <em>Value4</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Value4</em>' attribute.
	 * @see #getValue4()
	 */
	public void setValue4(String value4);

	/**
	 * Returns the value of the '<em><b>Applicant</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Applicant</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Applicant</em>' attribute.
	 * @see #setApplicant(java.lang.String)
	 */
	public String getApplicant();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getApplicant <em>Applicant</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Applicant</em>' attribute.
	 * @see #getApplicant()
	 */
	public void setApplicant(String applicant);

	/**
	 * Returns the value of the '<em><b>Applytime</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Applytime</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Applytime</em>' attribute.
	 * @see #setApplytime(java.lang.String)
	 */
	public String getApplytime();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getApplytime <em>Applytime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Applytime</em>' attribute.
	 * @see #getApplytime()
	 */
	public void setApplytime(String applytime);

	/**
	 * Returns the value of the '<em><b>Examinant</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Examinant</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Examinant</em>' attribute.
	 * @see #setExaminant(java.lang.String)
	 */
	public String getExaminant();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getExaminant <em>Examinant</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Examinant</em>' attribute.
	 * @see #getExaminant()
	 */
	public void setExaminant(String examinant);

	/**
	 * Returns the value of the '<em><b>Auditor</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Auditor</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Auditor</em>' attribute.
	 * @see #setAuditor(java.lang.String)
	 */
	public String getAuditor();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getAuditor <em>Auditor</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Auditor</em>' attribute.
	 * @see #getAuditor()
	 */
	public void setAuditor(String auditor);

	/**
	 * Returns the value of the '<em><b>Reviewer</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Reviewer</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Reviewer</em>' attribute.
	 * @see #setReviewer(java.lang.String)
	 */
	public String getReviewer();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getReviewer <em>Reviewer</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Reviewer</em>' attribute.
	 * @see #getReviewer()
	 */
	public void setReviewer(String reviewer);

	/**
	 * Returns the value of the '<em><b>Ccry</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Ccry</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Ccry</em>' attribute.
	 * @see #setCcry(java.lang.String)
	 */
	public String getCcry();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getCcry <em>Ccry</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Ccry</em>' attribute.
	 * @see #getCcry()
	 */
	public void setCcry(String ccry);

	/**
	 * Returns the value of the '<em><b>Processinstid</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Processinstid</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Processinstid</em>' attribute.
	 * @see #setProcessinstid(java.lang.String)
	 */
	public String getProcessinstid();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getProcessinstid <em>Processinstid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Processinstid</em>' attribute.
	 * @see #getProcessinstid()
	 */
	public void setProcessinstid(String processinstid);

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
	public String getFildid();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getFildid <em>Fildid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Fildid</em>' attribute.
	 * @see #getFildid()
	 */
	public void setFildid(String fildid);

	/**
	 * Returns the value of the '<em><b>Scsj</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Scsj</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Scsj</em>' attribute.
	 * @see #setScsj(java.lang.String)
	 */
	public String getScsj();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getScsj <em>Scsj</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Scsj</em>' attribute.
	 * @see #getScsj()
	 */
	public void setScsj(String scsj);

	/**
	 * Returns the value of the '<em><b>Fhsj</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Fhsj</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Fhsj</em>' attribute.
	 * @see #setFhsj(java.lang.String)
	 */
	public String getFhsj();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getFhsj <em>Fhsj</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Fhsj</em>' attribute.
	 * @see #getFhsj()
	 */
	public void setFhsj(String fhsj);

	/**
	 * Returns the value of the '<em><b>Shsj</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Shsj</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Shsj</em>' attribute.
	 * @see #setShsj(java.lang.String)
	 */
	public String getShsj();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getShsj <em>Shsj</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Shsj</em>' attribute.
	 * @see #getShsj()
	 */
	public void setShsj(String shsj);

	/**
	 * Returns the value of the '<em><b>Relationid</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Relationid</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Relationid</em>' attribute.
	 * @see #setRelationid(java.lang.String)
	 */
	public String getRelationid();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup#getRelationid <em>Relationid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Relationid</em>' attribute.
	 * @see #getRelationid()
	 */
	public void setRelationid(String relationid);


}