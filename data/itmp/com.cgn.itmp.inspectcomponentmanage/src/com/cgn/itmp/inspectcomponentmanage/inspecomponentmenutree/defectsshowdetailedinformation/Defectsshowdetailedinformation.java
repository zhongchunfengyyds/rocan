/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation;

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
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getJd <em>Jd</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getJz <em>Jz</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getOverhaulsequence <em>Overhaulsequence</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getEquipmentname <em>Equipmentname</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getComponentname <em>Componentname</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getChecklocation <em>Checklocation</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getInspectioncontent <em>Inspectioncontent</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getInspectionmethod <em>Inspectionmethod</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getStencilplate <em>Stencilplate</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getDefectdisplaynumber <em>Defectdisplaynumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getBoltsnutsnumber <em>Boltsnutsnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getDisplayposition <em>Displayposition</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getDisplaysignalmagnitude <em>Displaysignalmagnitude</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getSignalamplitude_n1 <em>Signalamplitude_n1</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getSignalamplitude_n2 <em>Signalamplitude_n2</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getSignalamplitude_n3 <em>Signalamplitude_n3</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getInfluence <em>Influence</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getStrategyadjustment <em>Strategyadjustment</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getIsdel <em>Isdel</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getDeleteperson <em>Deleteperson</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getDeletetime <em>Deletetime</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getOrderindex <em>Orderindex</em>}</li>
 * </ul>
 * </p>
 *
 * @extends DataObject;
 */
public interface Defectsshowdetailedinformation extends DataObject {

	public static final String QNAME = "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation";

	public static final Type TYPE = TypeHelper.INSTANCE.getType("com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation", "Defectsshowdetailedinformation");

	public static final IObjectFactory<Defectsshowdetailedinformation> FACTORY = new IObjectFactory<Defectsshowdetailedinformation>() {
		public Defectsshowdetailedinformation create() {
			return (Defectsshowdetailedinformation) DataFactory.INSTANCE.create(TYPE);
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getUuid <em>Uuid</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getJd <em>Jd</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getJz <em>Jz</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Jz</em>' attribute.
	 * @see #getJz()
	 */
	public void setJz(String jz);

	/**
	 * Returns the value of the '<em><b>Overhaulsequence</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Overhaulsequence</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Overhaulsequence</em>' attribute.
	 * @see #setOverhaulsequence(java.lang.String)
	 */
	public String getOverhaulsequence();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getOverhaulsequence <em>Overhaulsequence</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Overhaulsequence</em>' attribute.
	 * @see #getOverhaulsequence()
	 */
	public void setOverhaulsequence(String overhaulsequence);

	/**
	 * Returns the value of the '<em><b>Equipmentname</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Equipmentname</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Equipmentname</em>' attribute.
	 * @see #setEquipmentname(java.lang.String)
	 */
	public String getEquipmentname();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getEquipmentname <em>Equipmentname</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equipmentname</em>' attribute.
	 * @see #getEquipmentname()
	 */
	public void setEquipmentname(String equipmentname);

	/**
	 * Returns the value of the '<em><b>Componentname</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Componentname</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Componentname</em>' attribute.
	 * @see #setComponentname(java.lang.String)
	 */
	public String getComponentname();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getComponentname <em>Componentname</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Componentname</em>' attribute.
	 * @see #getComponentname()
	 */
	public void setComponentname(String componentname);

	/**
	 * Returns the value of the '<em><b>Checklocation</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Checklocation</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Checklocation</em>' attribute.
	 * @see #setChecklocation(java.lang.String)
	 */
	public String getChecklocation();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getChecklocation <em>Checklocation</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Checklocation</em>' attribute.
	 * @see #getChecklocation()
	 */
	public void setChecklocation(String checklocation);

	/**
	 * Returns the value of the '<em><b>Inspectioncontent</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Inspectioncontent</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Inspectioncontent</em>' attribute.
	 * @see #setInspectioncontent(java.lang.String)
	 */
	public String getInspectioncontent();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getInspectioncontent <em>Inspectioncontent</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Inspectioncontent</em>' attribute.
	 * @see #getInspectioncontent()
	 */
	public void setInspectioncontent(String inspectioncontent);

	/**
	 * Returns the value of the '<em><b>Inspectionmethod</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Inspectionmethod</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Inspectionmethod</em>' attribute.
	 * @see #setInspectionmethod(java.lang.String)
	 */
	public String getInspectionmethod();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getInspectionmethod <em>Inspectionmethod</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Inspectionmethod</em>' attribute.
	 * @see #getInspectionmethod()
	 */
	public void setInspectionmethod(String inspectionmethod);

	/**
	 * Returns the value of the '<em><b>Stencilplate</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Stencilplate</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Stencilplate</em>' attribute.
	 * @see #setStencilplate(java.lang.String)
	 */
	public String getStencilplate();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getStencilplate <em>Stencilplate</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Stencilplate</em>' attribute.
	 * @see #getStencilplate()
	 */
	public void setStencilplate(String stencilplate);

	/**
	 * Returns the value of the '<em><b>Defectdisplaynumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Defectdisplaynumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Defectdisplaynumber</em>' attribute.
	 * @see #setDefectdisplaynumber(java.lang.String)
	 */
	public String getDefectdisplaynumber();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getDefectdisplaynumber <em>Defectdisplaynumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Defectdisplaynumber</em>' attribute.
	 * @see #getDefectdisplaynumber()
	 */
	public void setDefectdisplaynumber(String defectdisplaynumber);

	/**
	 * Returns the value of the '<em><b>Boltsnutsnumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Boltsnutsnumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Boltsnutsnumber</em>' attribute.
	 * @see #setBoltsnutsnumber(java.lang.String)
	 */
	public String getBoltsnutsnumber();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getBoltsnutsnumber <em>Boltsnutsnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Boltsnutsnumber</em>' attribute.
	 * @see #getBoltsnutsnumber()
	 */
	public void setBoltsnutsnumber(String boltsnutsnumber);

	/**
	 * Returns the value of the '<em><b>Displayposition</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Displayposition</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Displayposition</em>' attribute.
	 * @see #setDisplayposition(java.lang.String)
	 */
	public String getDisplayposition();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getDisplayposition <em>Displayposition</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Displayposition</em>' attribute.
	 * @see #getDisplayposition()
	 */
	public void setDisplayposition(String displayposition);

	/**
	 * Returns the value of the '<em><b>Displaysignalmagnitude</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Displaysignalmagnitude</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Displaysignalmagnitude</em>' attribute.
	 * @see #setDisplaysignalmagnitude(java.lang.String)
	 */
	public String getDisplaysignalmagnitude();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getDisplaysignalmagnitude <em>Displaysignalmagnitude</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Displaysignalmagnitude</em>' attribute.
	 * @see #getDisplaysignalmagnitude()
	 */
	public void setDisplaysignalmagnitude(String displaysignalmagnitude);

	/**
	 * Returns the value of the '<em><b>Signalamplitude_n1</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Signalamplitude_n1</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Signalamplitude_n1</em>' attribute.
	 * @see #setSignalamplitude_n1(java.lang.String)
	 */
	public String getSignalamplitude_n1();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getSignalamplitude_n1 <em>Signalamplitude_n1</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Signalamplitude_n1</em>' attribute.
	 * @see #getSignalamplitude_n1()
	 */
	public void setSignalamplitude_n1(String signalamplitude_n1);

	/**
	 * Returns the value of the '<em><b>Signalamplitude_n2</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Signalamplitude_n2</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Signalamplitude_n2</em>' attribute.
	 * @see #setSignalamplitude_n2(java.lang.String)
	 */
	public String getSignalamplitude_n2();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getSignalamplitude_n2 <em>Signalamplitude_n2</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Signalamplitude_n2</em>' attribute.
	 * @see #getSignalamplitude_n2()
	 */
	public void setSignalamplitude_n2(String signalamplitude_n2);

	/**
	 * Returns the value of the '<em><b>Signalamplitude_n3</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Signalamplitude_n3</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Signalamplitude_n3</em>' attribute.
	 * @see #setSignalamplitude_n3(java.lang.String)
	 */
	public String getSignalamplitude_n3();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getSignalamplitude_n3 <em>Signalamplitude_n3</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Signalamplitude_n3</em>' attribute.
	 * @see #getSignalamplitude_n3()
	 */
	public void setSignalamplitude_n3(String signalamplitude_n3);

	/**
	 * Returns the value of the '<em><b>Influence</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Influence</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Influence</em>' attribute.
	 * @see #setInfluence(java.lang.String)
	 */
	public String getInfluence();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getInfluence <em>Influence</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Influence</em>' attribute.
	 * @see #getInfluence()
	 */
	public void setInfluence(String influence);

	/**
	 * Returns the value of the '<em><b>Strategyadjustment</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Strategyadjustment</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Strategyadjustment</em>' attribute.
	 * @see #setStrategyadjustment(java.lang.String)
	 */
	public String getStrategyadjustment();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getStrategyadjustment <em>Strategyadjustment</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Strategyadjustment</em>' attribute.
	 * @see #getStrategyadjustment()
	 */
	public void setStrategyadjustment(String strategyadjustment);

	/**
	 * Returns the value of the '<em><b>Isdel</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Isdel</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Isdel</em>' attribute.
	 * @see #setIsdel(int)
	 */
	public int getIsdel();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getIsdel <em>Isdel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Isdel</em>' attribute.
	 * @see #getIsdel()
	 */
	public void setIsdel(int isdel);

	/**
	 * Returns the value of the '<em><b>Deleteperson</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Deleteperson</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Deleteperson</em>' attribute.
	 * @see #setDeleteperson(java.lang.String)
	 */
	public String getDeleteperson();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getDeleteperson <em>Deleteperson</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Deleteperson</em>' attribute.
	 * @see #getDeleteperson()
	 */
	public void setDeleteperson(String deleteperson);

	/**
	 * Returns the value of the '<em><b>Deletetime</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Deletetime</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Deletetime</em>' attribute.
	 * @see #setDeletetime(java.lang.String)
	 */
	public String getDeletetime();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getDeletetime <em>Deletetime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Deletetime</em>' attribute.
	 * @see #getDeletetime()
	 */
	public void setDeletetime(String deletetime);

	/**
	 * Returns the value of the '<em><b>Orderindex</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Orderindex</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Orderindex</em>' attribute.
	 * @see #setOrderindex(int)
	 */
	public int getOrderindex();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation#getOrderindex <em>Orderindex</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Orderindex</em>' attribute.
	 * @see #getOrderindex()
	 */
	public void setOrderindex(int orderindex);


}