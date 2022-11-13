/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.weldingmanagement.Weldingapply;

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
 *   <li>{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getRounds <em>Rounds</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getApplyno <em>Applyno</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getTicketnumber <em>Ticketnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getDescribe <em>Describe</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getPosition <em>Position</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getEquiaxedgraph <em>Equiaxedgraph</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getFlowchart <em>Flowchart</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getUpper <em>Upper</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getDown <em>Down</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getLevel <em>Level</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getWeldnumber <em>Weldnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getNumberwelds <em>Numberwelds</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getForm <em>Form</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getTemperature <em>Temperature</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getWhetherccm <em>Whetherccm</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getGeographical <em>Geographical</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getContact <em>Contact</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getStatus <em>Status</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getJD <em>JD</em>}</li>
 * </ul>
 * </p>
 *
 * @extends DataObject;
 */
public interface Weldingapply extends DataObject {

	public static final String QNAME = "com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply";

	public static final Type TYPE = TypeHelper.INSTANCE.getType("com.cgn.itmp.weldingmanagement.Weldingapply", "Weldingapply");

	public static final IObjectFactory<Weldingapply> FACTORY = new IObjectFactory<Weldingapply>() {
		public Weldingapply create() {
			return (Weldingapply) DataFactory.INSTANCE.create(TYPE);
		}
	};

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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getRounds <em>Rounds</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Rounds</em>' attribute.
	 * @see #getRounds()
	 */
	public void setRounds(String rounds);

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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getApplyno <em>Applyno</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getTicketnumber <em>Ticketnumber</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getDescribe <em>Describe</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getPosition <em>Position</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Position</em>' attribute.
	 * @see #getPosition()
	 */
	public void setPosition(String position);

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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getEquiaxedgraph <em>Equiaxedgraph</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equiaxedgraph</em>' attribute.
	 * @see #getEquiaxedgraph()
	 */
	public void setEquiaxedgraph(String equiaxedgraph);

	/**
	 * Returns the value of the '<em><b>Flowchart</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Flowchart</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Flowchart</em>' attribute.
	 * @see #setFlowchart(java.lang.String)
	 */
	public String getFlowchart();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getFlowchart <em>Flowchart</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Flowchart</em>' attribute.
	 * @see #getFlowchart()
	 */
	public void setFlowchart(String flowchart);

	/**
	 * Returns the value of the '<em><b>Upper</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Upper</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Upper</em>' attribute.
	 * @see #setUpper(java.lang.String)
	 */
	public String getUpper();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getUpper <em>Upper</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Upper</em>' attribute.
	 * @see #getUpper()
	 */
	public void setUpper(String upper);

	/**
	 * Returns the value of the '<em><b>Down</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Down</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Down</em>' attribute.
	 * @see #setDown(java.lang.String)
	 */
	public String getDown();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getDown <em>Down</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Down</em>' attribute.
	 * @see #getDown()
	 */
	public void setDown(String down);

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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getLevel <em>Level</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Level</em>' attribute.
	 * @see #getLevel()
	 */
	public void setLevel(String level);

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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getWeldnumber <em>Weldnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Weldnumber</em>' attribute.
	 * @see #getWeldnumber()
	 */
	public void setWeldnumber(String weldnumber);

	/**
	 * Returns the value of the '<em><b>Numberwelds</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Numberwelds</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Numberwelds</em>' attribute.
	 * @see #setNumberwelds(java.lang.String)
	 */
	public String getNumberwelds();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getNumberwelds <em>Numberwelds</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Numberwelds</em>' attribute.
	 * @see #getNumberwelds()
	 */
	public void setNumberwelds(String numberwelds);

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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getForm <em>Form</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Form</em>' attribute.
	 * @see #getForm()
	 */
	public void setForm(String form);

	/**
	 * Returns the value of the '<em><b>Temperature</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Temperature</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Temperature</em>' attribute.
	 * @see #setTemperature(java.lang.String)
	 */
	public String getTemperature();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getTemperature <em>Temperature</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Temperature</em>' attribute.
	 * @see #getTemperature()
	 */
	public void setTemperature(String temperature);

	/**
	 * Returns the value of the '<em><b>Whetherccm</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Whetherccm</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Whetherccm</em>' attribute.
	 * @see #setWhetherccm(java.lang.String)
	 */
	public String getWhetherccm();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getWhetherccm <em>Whetherccm</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Whetherccm</em>' attribute.
	 * @see #getWhetherccm()
	 */
	public void setWhetherccm(String whetherccm);

	/**
	 * Returns the value of the '<em><b>Geographical</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Geographical</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Geographical</em>' attribute.
	 * @see #setGeographical(java.lang.String)
	 */
	public String getGeographical();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getGeographical <em>Geographical</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Geographical</em>' attribute.
	 * @see #getGeographical()
	 */
	public void setGeographical(String geographical);

	/**
	 * Returns the value of the '<em><b>Contact</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Contact</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Contact</em>' attribute.
	 * @see #setContact(java.lang.String)
	 */
	public String getContact();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getContact <em>Contact</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Contact</em>' attribute.
	 * @see #getContact()
	 */
	public void setContact(String contact);

	/**
	 * Returns the value of the '<em><b>Status</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Status</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Status</em>' attribute.
	 * @see #setStatus(java.lang.String)
	 */
	public String getStatus();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getStatus <em>Status</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Status</em>' attribute.
	 * @see #getStatus()
	 */
	public void setStatus(String status);

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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getUuid <em>Uuid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Uuid</em>' attribute.
	 * @see #getUuid()
	 */
	public void setUuid(String uuid);

	/**
	 * Returns the value of the '<em><b>JD</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>JD</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>JD</em>' attribute.
	 * @see #setJD(java.lang.String)
	 */
	public String getJD();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply#getJD <em>JD</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>JD</em>' attribute.
	 * @see #getJD()
	 */
	public void setJD(String JD);
	
	
	public String getISDEL();
	
	
	public void setISDEL(String isdel);
}