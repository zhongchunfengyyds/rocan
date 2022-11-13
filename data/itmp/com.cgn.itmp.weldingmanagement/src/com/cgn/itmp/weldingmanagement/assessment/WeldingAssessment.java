/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.weldingmanagement.assessment;

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
 *   <li>{@link com.cgn.itmp.weldingmanagement.assessment.WeldingAssessment#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.assessment.WeldingAssessment#getAssessmentunit <em>Assessmentunit</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.assessment.WeldingAssessment#getJoint <em>Joint</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.assessment.WeldingAssessment#getMethod <em>Method</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.assessment.WeldingAssessment#getMaterial <em>Material</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.assessment.WeldingAssessment#getPosition <em>Position</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.assessment.WeldingAssessment#getThickness <em>Thickness</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.assessment.WeldingAssessment#getDiameter <em>Diameter</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.assessment.WeldingAssessment#getBase1 <em>Base1</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.assessment.WeldingAssessment#getBase2 <em>Base2</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.assessment.WeldingAssessment#getAssessmentid <em>Assessmentid</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.assessment.WeldingAssessment#getAssessmentname <em>Assessmentname</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.assessment.WeldingAssessment#getLevel <em>Level</em>}</li>
 * </ul>
 * </p>
 *
 * @extends DataObject;
 */
public interface WeldingAssessment extends DataObject {

	public static final String QNAME = "com.cgn.itmp.weldingmanagement.assessment.WeldingAssessment";

	public static final Type TYPE = TypeHelper.INSTANCE.getType("com.cgn.itmp.weldingmanagement.assessment", "WeldingAssessment");

	public static final IObjectFactory<WeldingAssessment> FACTORY = new IObjectFactory<WeldingAssessment>() {
		public WeldingAssessment create() {
			return (WeldingAssessment) DataFactory.INSTANCE.create(TYPE);
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
	 * @see #setUuid(int)
	 */
	public int getUuid();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.assessment.WeldingAssessment#getUuid <em>Uuid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Uuid</em>' attribute.
	 * @see #getUuid()
	 */
	public void setUuid(int uuid);

	/**
	 * Returns the value of the '<em><b>Assessmentunit</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Assessmentunit</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Assessmentunit</em>' attribute.
	 * @see #setAssessmentunit(java.lang.String)
	 */
	public String getAssessmentunit();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.assessment.WeldingAssessment#getAssessmentunit <em>Assessmentunit</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Assessmentunit</em>' attribute.
	 * @see #getAssessmentunit()
	 */
	public void setAssessmentunit(String assessmentunit);

	/**
	 * Returns the value of the '<em><b>Joint</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Joint</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Joint</em>' attribute.
	 * @see #setJoint(java.lang.String)
	 */
	public String getJoint();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.assessment.WeldingAssessment#getJoint <em>Joint</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Joint</em>' attribute.
	 * @see #getJoint()
	 */
	public void setJoint(String joint);

	/**
	 * Returns the value of the '<em><b>Method</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Method</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Method</em>' attribute.
	 * @see #setMethod(java.lang.String)
	 */
	public String getMethod();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.assessment.WeldingAssessment#getMethod <em>Method</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Method</em>' attribute.
	 * @see #getMethod()
	 */
	public void setMethod(String method);

	/**
	 * Returns the value of the '<em><b>Material</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Material</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Material</em>' attribute.
	 * @see #setMaterial(java.lang.String)
	 */
	public String getMaterial();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.assessment.WeldingAssessment#getMaterial <em>Material</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Material</em>' attribute.
	 * @see #getMaterial()
	 */
	public void setMaterial(String material);

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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.assessment.WeldingAssessment#getPosition <em>Position</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Position</em>' attribute.
	 * @see #getPosition()
	 */
	public void setPosition(String position);

	/**
	 * Returns the value of the '<em><b>Thickness</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Thickness</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Thickness</em>' attribute.
	 * @see #setThickness(java.lang.String)
	 */
	public String getThickness();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.assessment.WeldingAssessment#getThickness <em>Thickness</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Thickness</em>' attribute.
	 * @see #getThickness()
	 */
	public void setThickness(String thickness);

	/**
	 * Returns the value of the '<em><b>Diameter</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Diameter</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Diameter</em>' attribute.
	 * @see #setDiameter(java.lang.String)
	 */
	public String getDiameter();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.assessment.WeldingAssessment#getDiameter <em>Diameter</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Diameter</em>' attribute.
	 * @see #getDiameter()
	 */
	public void setDiameter(String diameter);

	/**
	 * Returns the value of the '<em><b>Base1</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Base1</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Base1</em>' attribute.
	 * @see #setBase1(java.lang.String)
	 */
	public String getBase1();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.assessment.WeldingAssessment#getBase1 <em>Base1</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Base1</em>' attribute.
	 * @see #getBase1()
	 */
	public void setBase1(String base1);

	/**
	 * Returns the value of the '<em><b>Base2</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Base2</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Base2</em>' attribute.
	 * @see #setBase2(java.lang.String)
	 */
	public String getBase2();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.assessment.WeldingAssessment#getBase2 <em>Base2</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Base2</em>' attribute.
	 * @see #getBase2()
	 */
	public void setBase2(String base2);

	/**
	 * Returns the value of the '<em><b>Assessmentid</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Assessmentid</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Assessmentid</em>' attribute.
	 * @see #setAssessmentid(java.lang.String)
	 */
	public String getAssessmentid();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.assessment.WeldingAssessment#getAssessmentid <em>Assessmentid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Assessmentid</em>' attribute.
	 * @see #getAssessmentid()
	 */
	public void setAssessmentid(String assessmentid);

	/**
	 * Returns the value of the '<em><b>Assessmentname</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Assessmentname</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Assessmentname</em>' attribute.
	 * @see #setAssessmentname(java.lang.String)
	 */
	public String getAssessmentname();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.assessment.WeldingAssessment#getAssessmentname <em>Assessmentname</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Assessmentname</em>' attribute.
	 * @see #getAssessmentname()
	 */
	public void setAssessmentname(String assessmentname);

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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.assessment.WeldingAssessment#getLevel <em>Level</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Level</em>' attribute.
	 * @see #getLevel()
	 */
	public void setLevel(String level);


}