/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.weldingmanagement.weldingprocesscard;

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
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getCard_number <em>Card_number</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getEdition <em>Edition</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getJoint_form <em>Joint_form</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getWelding_method <em>Welding_method</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getFilling_material <em>Filling_material</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getPosition <em>Position</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getAssessment_thickness <em>Assessment_thickness</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getAssessment_diameter <em>Assessment_diameter</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getRCCM_level <em>RCCM_level</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getBasematerial_material_one <em>Basematerial_material_one</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getBasematerial_material_two <em>Basematerial_material_two</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getBase_metal_thickness_one <em>Base_metal_thickness_one</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getBase_metal_thickness_two <em>Base_metal_thickness_two</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getBase_metal_diameter_one <em>Base_metal_diameter_one</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getBase_metal_diameter_two <em>Base_metal_diameter_two</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getProcess_assessment_report <em>Process_assessment_report</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getEnclosure <em>Enclosure</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getRemarks <em>Remarks</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getIsdel <em>Isdel</em>}</li>
 * </ul>
 * </p>
 *
 * @extends DataObject;
 */
public interface weldingprocesscard extends DataObject {

	public static final String QNAME = "com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard";

	public static final Type TYPE = TypeHelper.INSTANCE.getType("com.cgn.itmp.weldingmanagement.weldingprocesscard", "weldingprocesscard");

	public static final IObjectFactory<weldingprocesscard> FACTORY = new IObjectFactory<weldingprocesscard>() {
		public weldingprocesscard create() {
			return (weldingprocesscard) DataFactory.INSTANCE.create(TYPE);
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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getUuid <em>Uuid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Uuid</em>' attribute.
	 * @see #getUuid()
	 */
	public void setUuid(String uuid);

	/**
	 * Returns the value of the '<em><b>Card_number</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Card_number</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Card_number</em>' attribute.
	 * @see #setCard_number(java.lang.String)
	 */
	public String getCard_number();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getCard_number <em>Card_number</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Card_number</em>' attribute.
	 * @see #getCard_number()
	 */
	public void setCard_number(String card_number);

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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getEdition <em>Edition</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Edition</em>' attribute.
	 * @see #getEdition()
	 */
	public void setEdition(String edition);

	/**
	 * Returns the value of the '<em><b>Joint_form</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Joint_form</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Joint_form</em>' attribute.
	 * @see #setJoint_form(java.lang.String)
	 */
	public String getJoint_form();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getJoint_form <em>Joint_form</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Joint_form</em>' attribute.
	 * @see #getJoint_form()
	 */
	public void setJoint_form(String joint_form);

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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getWelding_method <em>Welding_method</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Welding_method</em>' attribute.
	 * @see #getWelding_method()
	 */
	public void setWelding_method(String welding_method);

	/**
	 * Returns the value of the '<em><b>Filling_material</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Filling_material</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Filling_material</em>' attribute.
	 * @see #setFilling_material(java.lang.String)
	 */
	public String getFilling_material();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getFilling_material <em>Filling_material</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Filling_material</em>' attribute.
	 * @see #getFilling_material()
	 */
	public void setFilling_material(String filling_material);

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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getPosition <em>Position</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Position</em>' attribute.
	 * @see #getPosition()
	 */
	public void setPosition(String position);

	/**
	 * Returns the value of the '<em><b>Assessment_thickness</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Assessment_thickness</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Assessment_thickness</em>' attribute.
	 * @see #setAssessment_thickness(java.lang.String)
	 */
	public String getAssessment_thickness();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getAssessment_thickness <em>Assessment_thickness</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Assessment_thickness</em>' attribute.
	 * @see #getAssessment_thickness()
	 */
	public void setAssessment_thickness(String assessment_thickness);

	/**
	 * Returns the value of the '<em><b>Assessment_diameter</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Assessment_diameter</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Assessment_diameter</em>' attribute.
	 * @see #setAssessment_diameter(java.lang.String)
	 */
	public String getAssessment_diameter();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getAssessment_diameter <em>Assessment_diameter</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Assessment_diameter</em>' attribute.
	 * @see #getAssessment_diameter()
	 */
	public void setAssessment_diameter(String assessment_diameter);

	/**
	 * Returns the value of the '<em><b>RCCM_level</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>RCCM_level</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>RCCM_level</em>' attribute.
	 * @see #setRCCM_level(java.lang.String)
	 */
	public String getRCCM_level();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getRCCM_level <em>RCCM_level</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>RCCM_level</em>' attribute.
	 * @see #getRCCM_level()
	 */
	public void setRCCM_level(String RCCM_level);

	/**
	 * Returns the value of the '<em><b>Basematerial_material_one</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Basematerial_material_one</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Basematerial_material_one</em>' attribute.
	 * @see #setBasematerial_material_one(java.lang.String)
	 */
	public String getBasematerial_material_one();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getBasematerial_material_one <em>Basematerial_material_one</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Basematerial_material_one</em>' attribute.
	 * @see #getBasematerial_material_one()
	 */
	public void setBasematerial_material_one(String basematerial_material_one);

	/**
	 * Returns the value of the '<em><b>Basematerial_material_two</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Basematerial_material_two</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Basematerial_material_two</em>' attribute.
	 * @see #setBasematerial_material_two(java.lang.String)
	 */
	public String getBasematerial_material_two();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getBasematerial_material_two <em>Basematerial_material_two</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Basematerial_material_two</em>' attribute.
	 * @see #getBasematerial_material_two()
	 */
	public void setBasematerial_material_two(String basematerial_material_two);

	/**
	 * Returns the value of the '<em><b>Base_metal_thickness_one</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Base_metal_thickness_one</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Base_metal_thickness_one</em>' attribute.
	 * @see #setBase_metal_thickness_one(java.lang.String)
	 */
	public String getBase_metal_thickness_one();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getBase_metal_thickness_one <em>Base_metal_thickness_one</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Base_metal_thickness_one</em>' attribute.
	 * @see #getBase_metal_thickness_one()
	 */
	public void setBase_metal_thickness_one(String base_metal_thickness_one);

	/**
	 * Returns the value of the '<em><b>Base_metal_thickness_two</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Base_metal_thickness_two</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Base_metal_thickness_two</em>' attribute.
	 * @see #setBase_metal_thickness_two(java.lang.String)
	 */
	public String getBase_metal_thickness_two();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getBase_metal_thickness_two <em>Base_metal_thickness_two</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Base_metal_thickness_two</em>' attribute.
	 * @see #getBase_metal_thickness_two()
	 */
	public void setBase_metal_thickness_two(String base_metal_thickness_two);

	/**
	 * Returns the value of the '<em><b>Base_metal_diameter_one</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Base_metal_diameter_one</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Base_metal_diameter_one</em>' attribute.
	 * @see #setBase_metal_diameter_one(java.lang.String)
	 */
	public String getBase_metal_diameter_one();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getBase_metal_diameter_one <em>Base_metal_diameter_one</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Base_metal_diameter_one</em>' attribute.
	 * @see #getBase_metal_diameter_one()
	 */
	public void setBase_metal_diameter_one(String base_metal_diameter_one);

	/**
	 * Returns the value of the '<em><b>Base_metal_diameter_two</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Base_metal_diameter_two</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Base_metal_diameter_two</em>' attribute.
	 * @see #setBase_metal_diameter_two(java.lang.String)
	 */
	public String getBase_metal_diameter_two();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getBase_metal_diameter_two <em>Base_metal_diameter_two</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Base_metal_diameter_two</em>' attribute.
	 * @see #getBase_metal_diameter_two()
	 */
	public void setBase_metal_diameter_two(String base_metal_diameter_two);

	/**
	 * Returns the value of the '<em><b>Process_assessment_report</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Process_assessment_report</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Process_assessment_report</em>' attribute.
	 * @see #setProcess_assessment_report(java.lang.String)
	 */
	public String getProcess_assessment_report();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getProcess_assessment_report <em>Process_assessment_report</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Process_assessment_report</em>' attribute.
	 * @see #getProcess_assessment_report()
	 */
	public void setProcess_assessment_report(String process_assessment_report);

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
	public String getEnclosure();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getEnclosure <em>Enclosure</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Enclosure</em>' attribute.
	 * @see #getEnclosure()
	 */
	public void setEnclosure(String enclosure);

	/**
	 * Returns the value of the '<em><b>Remarks</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Remarks</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Remarks</em>' attribute.
	 * @see #setRemarks(java.lang.String)
	 */
	public String getRemarks();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getRemarks <em>Remarks</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Remarks</em>' attribute.
	 * @see #getRemarks()
	 */
	public void setRemarks(String remarks);

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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard#getIsdel <em>Isdel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Isdel</em>' attribute.
	 * @see #getIsdel()
	 */
	public void setIsdel(String isdel);


}