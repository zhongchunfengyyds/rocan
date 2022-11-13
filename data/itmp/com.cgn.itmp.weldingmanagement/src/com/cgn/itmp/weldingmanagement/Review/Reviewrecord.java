/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.weldingmanagement.Review;

import com.eos.data.sdo.IObjectFactory;

import commonj.sdo.DataObject;
import commonj.sdo.Type;
import commonj.sdo.helper.DataFactory;
import commonj.sdo.helper.TypeHelper;

import java.util.List;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Test</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Review.Reviewrecord#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Review.Reviewrecord#getRecord_name <em>Record_name</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Review.Reviewrecord#getRecord_person <em>Record_person</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Review.Reviewrecord#getRecord_time <em>Record_time</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Review.Reviewrecord#getReview_person <em>Review_person</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Review.Reviewrecord#getReview_time <em>Review_time</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Review.Reviewrecord#getQw <em>Qw</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Review.Reviewrecord#getRecords <em>Records</em>}</li>
 * </ul>
 * </p>
 *
 * @extends DataObject;
 */
public interface Reviewrecord extends DataObject {

	public static final String QNAME = "com.cgn.itmp.weldingmanagement.Review.Reviewrecord";

	public static final Type TYPE = TypeHelper.INSTANCE.getType("com.cgn.itmp.weldingmanagement.Review", "Reviewrecord");

	public static final IObjectFactory<Reviewrecord> FACTORY = new IObjectFactory<Reviewrecord>() {
		public Reviewrecord create() {
			return (Reviewrecord) DataFactory.INSTANCE.create(TYPE);
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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Review.Reviewrecord#getUuid <em>Uuid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Uuid</em>' attribute.
	 * @see #getUuid()
	 */
	public void setUuid(String uuid);

	/**
	 * Returns the value of the '<em><b>Record_name</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Record_name</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Record_name</em>' attribute.
	 * @see #setRecord_name(java.lang.String)
	 */
	public String getRecord_name();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Review.Reviewrecord#getRecord_name <em>Record_name</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Record_name</em>' attribute.
	 * @see #getRecord_name()
	 */
	public void setRecord_name(String record_name);

	/**
	 * Returns the value of the '<em><b>Record_person</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Record_person</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Record_person</em>' attribute.
	 * @see #setRecord_person(java.lang.String)
	 */
	public String getRecord_person();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Review.Reviewrecord#getRecord_person <em>Record_person</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Record_person</em>' attribute.
	 * @see #getRecord_person()
	 */
	public void setRecord_person(String record_person);

	/**
	 * Returns the value of the '<em><b>Record_time</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Record_time</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Record_time</em>' attribute.
	 * @see #setRecord_time(java.lang.String)
	 */
	public String getRecord_time();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Review.Reviewrecord#getRecord_time <em>Record_time</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Record_time</em>' attribute.
	 * @see #getRecord_time()
	 */
	public void setRecord_time(String record_time);

	/**
	 * Returns the value of the '<em><b>Review_person</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Review_person</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Review_person</em>' attribute.
	 * @see #setReview_person(java.lang.String)
	 */
	public String getReview_person();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Review.Reviewrecord#getReview_person <em>Review_person</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Review_person</em>' attribute.
	 * @see #getReview_person()
	 */
	public void setReview_person(String review_person);

	/**
	 * Returns the value of the '<em><b>Review_time</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Review_time</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Review_time</em>' attribute.
	 * @see #setReview_time(java.lang.String)
	 */
	public String getReview_time();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Review.Reviewrecord#getReview_time <em>Review_time</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Review_time</em>' attribute.
	 * @see #getReview_time()
	 */
	public void setReview_time(String review_time);

	/**
	 * Returns the value of the '<em><b>Qw</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Qw</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Qw</em>' attribute.
	 * @see #setQw(java.lang.String)
	 */
	public String getQw();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Review.Reviewrecord#getQw <em>Qw</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Qw</em>' attribute.
	 * @see #getQw()
	 */
	public void setQw(String qw);

	/**
	 * Returns the value of the '<em><b>Records</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Records</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Records</em>' attribute.
	 * @see #setRecords(com.cgn.itmp.weldingmanagement.Review.Record)
	 */
	public List<Record> getRecords();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Review.Reviewrecord#getRecords <em>Records</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Records</em>' attribute.
	 * @see #getRecords()
	 */
	public void setRecords(List<Record> records);


}