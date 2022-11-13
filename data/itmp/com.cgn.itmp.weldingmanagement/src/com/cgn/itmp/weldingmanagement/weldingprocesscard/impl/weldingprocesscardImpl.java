/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.weldingmanagement.weldingprocesscard.impl;

import com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard;
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
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.impl.weldingprocesscardImpl#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.impl.weldingprocesscardImpl#getCard_number <em>Card_number</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.impl.weldingprocesscardImpl#getEdition <em>Edition</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.impl.weldingprocesscardImpl#getJoint_form <em>Joint_form</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.impl.weldingprocesscardImpl#getWelding_method <em>Welding_method</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.impl.weldingprocesscardImpl#getFilling_material <em>Filling_material</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.impl.weldingprocesscardImpl#getPosition <em>Position</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.impl.weldingprocesscardImpl#getAssessment_thickness <em>Assessment_thickness</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.impl.weldingprocesscardImpl#getAssessment_diameter <em>Assessment_diameter</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.impl.weldingprocesscardImpl#getRCCM_level <em>RCCM_level</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.impl.weldingprocesscardImpl#getBasematerial_material_one <em>Basematerial_material_one</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.impl.weldingprocesscardImpl#getBasematerial_material_two <em>Basematerial_material_two</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.impl.weldingprocesscardImpl#getBase_metal_thickness_one <em>Base_metal_thickness_one</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.impl.weldingprocesscardImpl#getBase_metal_thickness_two <em>Base_metal_thickness_two</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.impl.weldingprocesscardImpl#getBase_metal_diameter_one <em>Base_metal_diameter_one</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.impl.weldingprocesscardImpl#getBase_metal_diameter_two <em>Base_metal_diameter_two</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.impl.weldingprocesscardImpl#getProcess_assessment_report <em>Process_assessment_report</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.impl.weldingprocesscardImpl#getEnclosure <em>Enclosure</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.impl.weldingprocesscardImpl#getRemarks <em>Remarks</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.weldingprocesscard.impl.weldingprocesscardImpl#getIsdel <em>Isdel</em>}</li>
 * </ul>
 * </p>
 *
 * @extends ExtendedDataObjectImpl;
 *
 * @implements weldingprocesscard;
 */

public class weldingprocesscardImpl extends ExtendedDataObjectImpl implements weldingprocesscard {
	/**
	 * Comment for <code>serialVersionUID</code>
	 */
	private static final long serialVersionUID = 1L;
	public final static int INDEX_UUID = 0;
	public final static int INDEX_CARD_NUMBER = 1;
	public final static int INDEX_EDITION = 2;
	public final static int INDEX_JOINT_FORM = 3;
	public final static int INDEX_WELDING_METHOD = 4;
	public final static int INDEX_FILLING_MATERIAL = 5;
	public final static int INDEX_POSITION = 6;
	public final static int INDEX_ASSESSMENT_THICKNESS = 7;
	public final static int INDEX_ASSESSMENT_DIAMETER = 8;
	public final static int INDEX_RCCM_LEVEL = 9;
	public final static int INDEX_BASEMATERIAL_MATERIAL_ONE = 10;
	public final static int INDEX_BASEMATERIAL_MATERIAL_TWO = 11;
	public final static int INDEX_BASE_METAL_THICKNESS_ONE = 12;
	public final static int INDEX_BASE_METAL_THICKNESS_TWO = 13;
	public final static int INDEX_BASE_METAL_DIAMETER_ONE = 14;
	public final static int INDEX_BASE_METAL_DIAMETER_TWO = 15;
	public final static int INDEX_PROCESS_ASSESSMENT_REPORT = 16;
	public final static int INDEX_ENCLOSURE = 17;
	public final static int INDEX_REMARKS = 18;
	public final static int INDEX_ISDEL = 19;
	public static final int SDO_PROPERTY_COUNT = 20;

	public static final int EXTENDED_PROPERTY_COUNT = -1;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public weldingprocesscardImpl() {
		this(TYPE);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public weldingprocesscardImpl(Type type) {
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
	public String getCard_number() {
		return DataUtil.toString(super.getByIndex(INDEX_CARD_NUMBER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getCard_number <em>Card_number</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Card_number</em>' attribute.
	 * @see #getCard_number()
	 */
	public void setCard_number(String card_number) {
		super.setByIndex(INDEX_CARD_NUMBER, card_number);
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
	public String getJoint_form() {
		return DataUtil.toString(super.getByIndex(INDEX_JOINT_FORM, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getJoint_form <em>Joint_form</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Joint_form</em>' attribute.
	 * @see #getJoint_form()
	 */
	public void setJoint_form(String joint_form) {
		super.setByIndex(INDEX_JOINT_FORM, joint_form);
	}

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
	public String getWelding_method() {
		return DataUtil.toString(super.getByIndex(INDEX_WELDING_METHOD, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getWelding_method <em>Welding_method</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Welding_method</em>' attribute.
	 * @see #getWelding_method()
	 */
	public void setWelding_method(String welding_method) {
		super.setByIndex(INDEX_WELDING_METHOD, welding_method);
	}

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
	public String getFilling_material() {
		return DataUtil.toString(super.getByIndex(INDEX_FILLING_MATERIAL, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getFilling_material <em>Filling_material</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Filling_material</em>' attribute.
	 * @see #getFilling_material()
	 */
	public void setFilling_material(String filling_material) {
		super.setByIndex(INDEX_FILLING_MATERIAL, filling_material);
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
	public String getAssessment_thickness() {
		return DataUtil.toString(super.getByIndex(INDEX_ASSESSMENT_THICKNESS, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getAssessment_thickness <em>Assessment_thickness</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Assessment_thickness</em>' attribute.
	 * @see #getAssessment_thickness()
	 */
	public void setAssessment_thickness(String assessment_thickness) {
		super.setByIndex(INDEX_ASSESSMENT_THICKNESS, assessment_thickness);
	}

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
	public String getAssessment_diameter() {
		return DataUtil.toString(super.getByIndex(INDEX_ASSESSMENT_DIAMETER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getAssessment_diameter <em>Assessment_diameter</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Assessment_diameter</em>' attribute.
	 * @see #getAssessment_diameter()
	 */
	public void setAssessment_diameter(String assessment_diameter) {
		super.setByIndex(INDEX_ASSESSMENT_DIAMETER, assessment_diameter);
	}

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
	public String getRCCM_level() {
		return DataUtil.toString(super.getByIndex(INDEX_RCCM_LEVEL, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getRCCM_level <em>RCCM_level</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>RCCM_level</em>' attribute.
	 * @see #getRCCM_level()
	 */
	public void setRCCM_level(String RCCM_level) {
		super.setByIndex(INDEX_RCCM_LEVEL, RCCM_level);
	}

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
	public String getBasematerial_material_one() {
		return DataUtil.toString(super.getByIndex(INDEX_BASEMATERIAL_MATERIAL_ONE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getBasematerial_material_one <em>Basematerial_material_one</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Basematerial_material_one</em>' attribute.
	 * @see #getBasematerial_material_one()
	 */
	public void setBasematerial_material_one(String basematerial_material_one) {
		super.setByIndex(INDEX_BASEMATERIAL_MATERIAL_ONE, basematerial_material_one);
	}

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
	public String getBasematerial_material_two() {
		return DataUtil.toString(super.getByIndex(INDEX_BASEMATERIAL_MATERIAL_TWO, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getBasematerial_material_two <em>Basematerial_material_two</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Basematerial_material_two</em>' attribute.
	 * @see #getBasematerial_material_two()
	 */
	public void setBasematerial_material_two(String basematerial_material_two) {
		super.setByIndex(INDEX_BASEMATERIAL_MATERIAL_TWO, basematerial_material_two);
	}

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
	public String getBase_metal_thickness_one() {
		return DataUtil.toString(super.getByIndex(INDEX_BASE_METAL_THICKNESS_ONE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getBase_metal_thickness_one <em>Base_metal_thickness_one</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Base_metal_thickness_one</em>' attribute.
	 * @see #getBase_metal_thickness_one()
	 */
	public void setBase_metal_thickness_one(String base_metal_thickness_one) {
		super.setByIndex(INDEX_BASE_METAL_THICKNESS_ONE, base_metal_thickness_one);
	}

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
	public String getBase_metal_thickness_two() {
		return DataUtil.toString(super.getByIndex(INDEX_BASE_METAL_THICKNESS_TWO, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getBase_metal_thickness_two <em>Base_metal_thickness_two</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Base_metal_thickness_two</em>' attribute.
	 * @see #getBase_metal_thickness_two()
	 */
	public void setBase_metal_thickness_two(String base_metal_thickness_two) {
		super.setByIndex(INDEX_BASE_METAL_THICKNESS_TWO, base_metal_thickness_two);
	}

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
	public String getBase_metal_diameter_one() {
		return DataUtil.toString(super.getByIndex(INDEX_BASE_METAL_DIAMETER_ONE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getBase_metal_diameter_one <em>Base_metal_diameter_one</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Base_metal_diameter_one</em>' attribute.
	 * @see #getBase_metal_diameter_one()
	 */
	public void setBase_metal_diameter_one(String base_metal_diameter_one) {
		super.setByIndex(INDEX_BASE_METAL_DIAMETER_ONE, base_metal_diameter_one);
	}

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
	public String getBase_metal_diameter_two() {
		return DataUtil.toString(super.getByIndex(INDEX_BASE_METAL_DIAMETER_TWO, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getBase_metal_diameter_two <em>Base_metal_diameter_two</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Base_metal_diameter_two</em>' attribute.
	 * @see #getBase_metal_diameter_two()
	 */
	public void setBase_metal_diameter_two(String base_metal_diameter_two) {
		super.setByIndex(INDEX_BASE_METAL_DIAMETER_TWO, base_metal_diameter_two);
	}

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
	public String getProcess_assessment_report() {
		return DataUtil.toString(super.getByIndex(INDEX_PROCESS_ASSESSMENT_REPORT, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getProcess_assessment_report <em>Process_assessment_report</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Process_assessment_report</em>' attribute.
	 * @see #getProcess_assessment_report()
	 */
	public void setProcess_assessment_report(String process_assessment_report) {
		super.setByIndex(INDEX_PROCESS_ASSESSMENT_REPORT, process_assessment_report);
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
	public String getRemarks() {
		return DataUtil.toString(super.getByIndex(INDEX_REMARKS, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getRemarks <em>Remarks</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Remarks</em>' attribute.
	 * @see #getRemarks()
	 */
	public void setRemarks(String remarks) {
		super.setByIndex(INDEX_REMARKS, remarks);
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