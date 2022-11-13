/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel;

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
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getJd <em>Jd</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getJz <em>Jz</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getIsdel <em>Isdel</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getDeleteperson <em>Deleteperson</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getDeletetime <em>Deletetime</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getSystem <em>System</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getEquipmentdrawnumber <em>Equipmentdrawnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getDrawingnumber <em>Drawingnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getEquipmentdrawversion <em>Equipmentdrawversion</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getEquipmentnumber <em>Equipmentnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getEquipmentname <em>Equipmentname</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getVersionnumber <em>Versionnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getContainercategories <em>Containercategories</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getContainervariety <em>Containervariety</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getWorkshopbranch <em>Workshopbranch</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getContainerinnerdiameter <em>Containerinnerdiameter</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getContainervolume <em>Containervolume</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getContainerheight <em>Containerheight</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getStructuretype <em>Structuretype</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getHeadtype <em>Headtype</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getSupportform <em>Supportform</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getShellweight <em>Shellweight</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getInnerweight <em>Innerweight</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getFillingweight <em>Fillingweight</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getWhetherthermalinsulation <em>Whetherthermalinsulation</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getFinishedworkingpressure <em>Finishedworkingpressure</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getTubeprocessworkingpressure <em>Tubeprocessworkingpressure</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getOxygenmeasurementmethod <em>Oxygenmeasurementmethod</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getTanknumber <em>Tanknumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getTankerstructure <em>Tankerstructure</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getTankcarchassisnumber <em>Tankcarchassisnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getBodymaterialcylinder <em>Bodymaterialcylinder</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getBodymaterialhead <em>Bodymaterialhead</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getBodymateriallining <em>Bodymateriallining</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getBodymaterialjacket <em>Bodymaterialjacket</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getBodythicknesscylinder <em>Bodythicknesscylinder</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getBodythicknesshead <em>Bodythicknesshead</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getBodythicknesslining <em>Bodythicknesslining</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getBodythicknessjacket <em>Bodythicknessjacket</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getWorkingmediumshell <em>Workingmediumshell</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getWorkingmediumtube <em>Workingmediumtube</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getWorkingmediumjacket <em>Workingmediumjacket</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getDesignpressureshellside <em>Designpressureshellside</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getDesignpressuretube <em>Designpressuretube</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getDesignpressurejacket <em>Designpressurejacket</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getDesigntemperatureshellside <em>Designtemperatureshellside</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getDesigntemperaturetube <em>Designtemperaturetube</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getDesigntemperaturejacket <em>Designtemperaturejacket</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getWorktemperatureshellside <em>Worktemperatureshellside</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getWorktemperaturetube <em>Worktemperaturetube</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getWorktemperaturejacket <em>Worktemperaturejacket</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getCorrosionmargincylinder <em>Corrosionmargincylinder</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getCorrosionmarginhead <em>Corrosionmarginhead</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getCreatetime <em>Createtime</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getEquipmentdrawnumberfileid <em>Equipmentdrawnumberfileid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getEquipmentdrawnumberfilepath <em>Equipmentdrawnumberfilepath</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getProcessInstId <em>ProcessInstId</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getJhry <em>Jhry</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getCcry <em>Ccry</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getChangeReasons <em>ChangeReasons</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getProcessStatus <em>ProcessStatus</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getApplicant <em>Applicant</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getApplicanttime <em>Applicanttime</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getRelationid <em>Relationid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getChangeuser <em>Changeuser</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getChangetime <em>Changetime</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getChangeinfo <em>Changeinfo</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getLongitudinalwelds <em>Longitudinalwelds</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getConnectingpipes <em>Connectingpipes</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getSafetyvalves <em>Safetyvalves</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getPressuregauges <em>Pressuregauges</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getLevelgauges <em>Levelgauges</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getTemperatureinstruments <em>Temperatureinstruments</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getSupplementaryinfos <em>Supplementaryinfos</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getEquipmenthistoryinfos <em>Equipmenthistoryinfos</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getRupturediscs <em>Rupturediscs</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getShellgirthwelds <em>Shellgirthwelds</em>}</li>
 * </ul>
 * </p>
 *
 * @extends DataObject;
 */
public interface Pressurevessel_modif extends DataObject {

	public static final String QNAME = "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif";

	public static final Type TYPE = TypeHelper.INSTANCE.getType("com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel", "Pressurevessel_modif");

	public static final IObjectFactory<Pressurevessel_modif> FACTORY = new IObjectFactory<Pressurevessel_modif>() {
		public Pressurevessel_modif create() {
			return (Pressurevessel_modif) DataFactory.INSTANCE.create(TYPE);
		}
	};

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getJd <em>Jd</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getJz <em>Jz</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Jz</em>' attribute.
	 * @see #getJz()
	 */
	public void setJz(String jz);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getIsdel <em>Isdel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Isdel</em>' attribute.
	 * @see #getIsdel()
	 */
	public void setIsdel(String isdel);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getDeleteperson <em>Deleteperson</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getDeletetime <em>Deletetime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Deletetime</em>' attribute.
	 * @see #getDeletetime()
	 */
	public void setDeletetime(String deletetime);

	/**
	 * Returns the value of the '<em><b>System</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>System</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>System</em>' attribute.
	 * @see #setSystem(java.lang.String)
	 */
	public String getSystem();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getSystem <em>System</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>System</em>' attribute.
	 * @see #getSystem()
	 */
	public void setSystem(String system);

	/**
	 * Returns the value of the '<em><b>Equipmentdrawnumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Equipmentdrawnumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Equipmentdrawnumber</em>' attribute.
	 * @see #setEquipmentdrawnumber(java.lang.String)
	 */
	public String getEquipmentdrawnumber();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getEquipmentdrawnumber <em>Equipmentdrawnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equipmentdrawnumber</em>' attribute.
	 * @see #getEquipmentdrawnumber()
	 */
	public void setEquipmentdrawnumber(String equipmentdrawnumber);

	/**
	 * Returns the value of the '<em><b>Drawingnumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Drawingnumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Drawingnumber</em>' attribute.
	 * @see #setDrawingnumber(java.lang.String)
	 */
	public String getDrawingnumber();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getDrawingnumber <em>Drawingnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Drawingnumber</em>' attribute.
	 * @see #getDrawingnumber()
	 */
	public void setDrawingnumber(String drawingnumber);

	/**
	 * Returns the value of the '<em><b>Equipmentdrawversion</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Equipmentdrawversion</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Equipmentdrawversion</em>' attribute.
	 * @see #setEquipmentdrawversion(java.lang.String)
	 */
	public String getEquipmentdrawversion();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getEquipmentdrawversion <em>Equipmentdrawversion</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equipmentdrawversion</em>' attribute.
	 * @see #getEquipmentdrawversion()
	 */
	public void setEquipmentdrawversion(String equipmentdrawversion);

	/**
	 * Returns the value of the '<em><b>Equipmentnumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Equipmentnumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Equipmentnumber</em>' attribute.
	 * @see #setEquipmentnumber(java.lang.String)
	 */
	public String getEquipmentnumber();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getEquipmentnumber <em>Equipmentnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equipmentnumber</em>' attribute.
	 * @see #getEquipmentnumber()
	 */
	public void setEquipmentnumber(String equipmentnumber);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getEquipmentname <em>Equipmentname</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equipmentname</em>' attribute.
	 * @see #getEquipmentname()
	 */
	public void setEquipmentname(String equipmentname);

	/**
	 * Returns the value of the '<em><b>Versionnumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Versionnumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Versionnumber</em>' attribute.
	 * @see #setVersionnumber(java.lang.String)
	 */
	public String getVersionnumber();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getVersionnumber <em>Versionnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Versionnumber</em>' attribute.
	 * @see #getVersionnumber()
	 */
	public void setVersionnumber(String versionnumber);

	/**
	 * Returns the value of the '<em><b>Containercategories</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Containercategories</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Containercategories</em>' attribute.
	 * @see #setContainercategories(java.lang.String)
	 */
	public String getContainercategories();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getContainercategories <em>Containercategories</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Containercategories</em>' attribute.
	 * @see #getContainercategories()
	 */
	public void setContainercategories(String containercategories);

	/**
	 * Returns the value of the '<em><b>Containervariety</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Containervariety</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Containervariety</em>' attribute.
	 * @see #setContainervariety(java.lang.String)
	 */
	public String getContainervariety();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getContainervariety <em>Containervariety</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Containervariety</em>' attribute.
	 * @see #getContainervariety()
	 */
	public void setContainervariety(String containervariety);

	/**
	 * Returns the value of the '<em><b>Workshopbranch</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Workshopbranch</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Workshopbranch</em>' attribute.
	 * @see #setWorkshopbranch(java.lang.String)
	 */
	public String getWorkshopbranch();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getWorkshopbranch <em>Workshopbranch</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Workshopbranch</em>' attribute.
	 * @see #getWorkshopbranch()
	 */
	public void setWorkshopbranch(String workshopbranch);

	/**
	 * Returns the value of the '<em><b>Containerinnerdiameter</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Containerinnerdiameter</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Containerinnerdiameter</em>' attribute.
	 * @see #setContainerinnerdiameter(java.lang.String)
	 */
	public String getContainerinnerdiameter();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getContainerinnerdiameter <em>Containerinnerdiameter</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Containerinnerdiameter</em>' attribute.
	 * @see #getContainerinnerdiameter()
	 */
	public void setContainerinnerdiameter(String containerinnerdiameter);

	/**
	 * Returns the value of the '<em><b>Containervolume</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Containervolume</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Containervolume</em>' attribute.
	 * @see #setContainervolume(java.lang.String)
	 */
	public String getContainervolume();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getContainervolume <em>Containervolume</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Containervolume</em>' attribute.
	 * @see #getContainervolume()
	 */
	public void setContainervolume(String containervolume);

	/**
	 * Returns the value of the '<em><b>Containerheight</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Containerheight</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Containerheight</em>' attribute.
	 * @see #setContainerheight(java.lang.String)
	 */
	public String getContainerheight();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getContainerheight <em>Containerheight</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Containerheight</em>' attribute.
	 * @see #getContainerheight()
	 */
	public void setContainerheight(String containerheight);

	/**
	 * Returns the value of the '<em><b>Structuretype</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Structuretype</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Structuretype</em>' attribute.
	 * @see #setStructuretype(java.lang.String)
	 */
	public String getStructuretype();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getStructuretype <em>Structuretype</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Structuretype</em>' attribute.
	 * @see #getStructuretype()
	 */
	public void setStructuretype(String structuretype);

	/**
	 * Returns the value of the '<em><b>Headtype</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Headtype</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Headtype</em>' attribute.
	 * @see #setHeadtype(java.lang.String)
	 */
	public String getHeadtype();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getHeadtype <em>Headtype</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Headtype</em>' attribute.
	 * @see #getHeadtype()
	 */
	public void setHeadtype(String headtype);

	/**
	 * Returns the value of the '<em><b>Supportform</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Supportform</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Supportform</em>' attribute.
	 * @see #setSupportform(java.lang.String)
	 */
	public String getSupportform();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getSupportform <em>Supportform</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Supportform</em>' attribute.
	 * @see #getSupportform()
	 */
	public void setSupportform(String supportform);

	/**
	 * Returns the value of the '<em><b>Shellweight</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Shellweight</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Shellweight</em>' attribute.
	 * @see #setShellweight(java.lang.String)
	 */
	public String getShellweight();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getShellweight <em>Shellweight</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Shellweight</em>' attribute.
	 * @see #getShellweight()
	 */
	public void setShellweight(String shellweight);

	/**
	 * Returns the value of the '<em><b>Innerweight</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Innerweight</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Innerweight</em>' attribute.
	 * @see #setInnerweight(java.lang.String)
	 */
	public String getInnerweight();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getInnerweight <em>Innerweight</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Innerweight</em>' attribute.
	 * @see #getInnerweight()
	 */
	public void setInnerweight(String innerweight);

	/**
	 * Returns the value of the '<em><b>Fillingweight</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Fillingweight</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Fillingweight</em>' attribute.
	 * @see #setFillingweight(java.lang.String)
	 */
	public String getFillingweight();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getFillingweight <em>Fillingweight</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Fillingweight</em>' attribute.
	 * @see #getFillingweight()
	 */
	public void setFillingweight(String fillingweight);

	/**
	 * Returns the value of the '<em><b>Whetherthermalinsulation</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Whetherthermalinsulation</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Whetherthermalinsulation</em>' attribute.
	 * @see #setWhetherthermalinsulation(java.lang.String)
	 */
	public String getWhetherthermalinsulation();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getWhetherthermalinsulation <em>Whetherthermalinsulation</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Whetherthermalinsulation</em>' attribute.
	 * @see #getWhetherthermalinsulation()
	 */
	public void setWhetherthermalinsulation(String whetherthermalinsulation);

	/**
	 * Returns the value of the '<em><b>Finishedworkingpressure</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Finishedworkingpressure</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Finishedworkingpressure</em>' attribute.
	 * @see #setFinishedworkingpressure(java.lang.String)
	 */
	public String getFinishedworkingpressure();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getFinishedworkingpressure <em>Finishedworkingpressure</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Finishedworkingpressure</em>' attribute.
	 * @see #getFinishedworkingpressure()
	 */
	public void setFinishedworkingpressure(String finishedworkingpressure);

	/**
	 * Returns the value of the '<em><b>Tubeprocessworkingpressure</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Tubeprocessworkingpressure</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Tubeprocessworkingpressure</em>' attribute.
	 * @see #setTubeprocessworkingpressure(java.lang.String)
	 */
	public String getTubeprocessworkingpressure();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getTubeprocessworkingpressure <em>Tubeprocessworkingpressure</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Tubeprocessworkingpressure</em>' attribute.
	 * @see #getTubeprocessworkingpressure()
	 */
	public void setTubeprocessworkingpressure(String tubeprocessworkingpressure);

	/**
	 * Returns the value of the '<em><b>Oxygenmeasurementmethod</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Oxygenmeasurementmethod</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Oxygenmeasurementmethod</em>' attribute.
	 * @see #setOxygenmeasurementmethod(java.lang.String)
	 */
	public String getOxygenmeasurementmethod();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getOxygenmeasurementmethod <em>Oxygenmeasurementmethod</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Oxygenmeasurementmethod</em>' attribute.
	 * @see #getOxygenmeasurementmethod()
	 */
	public void setOxygenmeasurementmethod(String oxygenmeasurementmethod);

	/**
	 * Returns the value of the '<em><b>Tanknumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Tanknumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Tanknumber</em>' attribute.
	 * @see #setTanknumber(java.lang.String)
	 */
	public String getTanknumber();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getTanknumber <em>Tanknumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Tanknumber</em>' attribute.
	 * @see #getTanknumber()
	 */
	public void setTanknumber(String tanknumber);

	/**
	 * Returns the value of the '<em><b>Tankerstructure</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Tankerstructure</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Tankerstructure</em>' attribute.
	 * @see #setTankerstructure(java.lang.String)
	 */
	public String getTankerstructure();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getTankerstructure <em>Tankerstructure</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Tankerstructure</em>' attribute.
	 * @see #getTankerstructure()
	 */
	public void setTankerstructure(String tankerstructure);

	/**
	 * Returns the value of the '<em><b>Tankcarchassisnumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Tankcarchassisnumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Tankcarchassisnumber</em>' attribute.
	 * @see #setTankcarchassisnumber(java.lang.String)
	 */
	public String getTankcarchassisnumber();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getTankcarchassisnumber <em>Tankcarchassisnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Tankcarchassisnumber</em>' attribute.
	 * @see #getTankcarchassisnumber()
	 */
	public void setTankcarchassisnumber(String tankcarchassisnumber);

	/**
	 * Returns the value of the '<em><b>Bodymaterialcylinder</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Bodymaterialcylinder</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Bodymaterialcylinder</em>' attribute.
	 * @see #setBodymaterialcylinder(java.lang.String)
	 */
	public String getBodymaterialcylinder();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getBodymaterialcylinder <em>Bodymaterialcylinder</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Bodymaterialcylinder</em>' attribute.
	 * @see #getBodymaterialcylinder()
	 */
	public void setBodymaterialcylinder(String bodymaterialcylinder);

	/**
	 * Returns the value of the '<em><b>Bodymaterialhead</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Bodymaterialhead</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Bodymaterialhead</em>' attribute.
	 * @see #setBodymaterialhead(java.lang.String)
	 */
	public String getBodymaterialhead();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getBodymaterialhead <em>Bodymaterialhead</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Bodymaterialhead</em>' attribute.
	 * @see #getBodymaterialhead()
	 */
	public void setBodymaterialhead(String bodymaterialhead);

	/**
	 * Returns the value of the '<em><b>Bodymateriallining</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Bodymateriallining</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Bodymateriallining</em>' attribute.
	 * @see #setBodymateriallining(java.lang.String)
	 */
	public String getBodymateriallining();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getBodymateriallining <em>Bodymateriallining</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Bodymateriallining</em>' attribute.
	 * @see #getBodymateriallining()
	 */
	public void setBodymateriallining(String bodymateriallining);

	/**
	 * Returns the value of the '<em><b>Bodymaterialjacket</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Bodymaterialjacket</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Bodymaterialjacket</em>' attribute.
	 * @see #setBodymaterialjacket(java.lang.String)
	 */
	public String getBodymaterialjacket();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getBodymaterialjacket <em>Bodymaterialjacket</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Bodymaterialjacket</em>' attribute.
	 * @see #getBodymaterialjacket()
	 */
	public void setBodymaterialjacket(String bodymaterialjacket);

	/**
	 * Returns the value of the '<em><b>Bodythicknesscylinder</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Bodythicknesscylinder</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Bodythicknesscylinder</em>' attribute.
	 * @see #setBodythicknesscylinder(java.lang.String)
	 */
	public String getBodythicknesscylinder();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getBodythicknesscylinder <em>Bodythicknesscylinder</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Bodythicknesscylinder</em>' attribute.
	 * @see #getBodythicknesscylinder()
	 */
	public void setBodythicknesscylinder(String bodythicknesscylinder);

	/**
	 * Returns the value of the '<em><b>Bodythicknesshead</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Bodythicknesshead</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Bodythicknesshead</em>' attribute.
	 * @see #setBodythicknesshead(java.lang.String)
	 */
	public String getBodythicknesshead();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getBodythicknesshead <em>Bodythicknesshead</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Bodythicknesshead</em>' attribute.
	 * @see #getBodythicknesshead()
	 */
	public void setBodythicknesshead(String bodythicknesshead);

	/**
	 * Returns the value of the '<em><b>Bodythicknesslining</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Bodythicknesslining</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Bodythicknesslining</em>' attribute.
	 * @see #setBodythicknesslining(java.lang.String)
	 */
	public String getBodythicknesslining();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getBodythicknesslining <em>Bodythicknesslining</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Bodythicknesslining</em>' attribute.
	 * @see #getBodythicknesslining()
	 */
	public void setBodythicknesslining(String bodythicknesslining);

	/**
	 * Returns the value of the '<em><b>Bodythicknessjacket</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Bodythicknessjacket</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Bodythicknessjacket</em>' attribute.
	 * @see #setBodythicknessjacket(java.lang.String)
	 */
	public String getBodythicknessjacket();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getBodythicknessjacket <em>Bodythicknessjacket</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Bodythicknessjacket</em>' attribute.
	 * @see #getBodythicknessjacket()
	 */
	public void setBodythicknessjacket(String bodythicknessjacket);

	/**
	 * Returns the value of the '<em><b>Workingmediumshell</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Workingmediumshell</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Workingmediumshell</em>' attribute.
	 * @see #setWorkingmediumshell(java.lang.String)
	 */
	public String getWorkingmediumshell();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getWorkingmediumshell <em>Workingmediumshell</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Workingmediumshell</em>' attribute.
	 * @see #getWorkingmediumshell()
	 */
	public void setWorkingmediumshell(String workingmediumshell);

	/**
	 * Returns the value of the '<em><b>Workingmediumtube</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Workingmediumtube</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Workingmediumtube</em>' attribute.
	 * @see #setWorkingmediumtube(java.lang.String)
	 */
	public String getWorkingmediumtube();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getWorkingmediumtube <em>Workingmediumtube</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Workingmediumtube</em>' attribute.
	 * @see #getWorkingmediumtube()
	 */
	public void setWorkingmediumtube(String workingmediumtube);

	/**
	 * Returns the value of the '<em><b>Workingmediumjacket</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Workingmediumjacket</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Workingmediumjacket</em>' attribute.
	 * @see #setWorkingmediumjacket(java.lang.String)
	 */
	public String getWorkingmediumjacket();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getWorkingmediumjacket <em>Workingmediumjacket</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Workingmediumjacket</em>' attribute.
	 * @see #getWorkingmediumjacket()
	 */
	public void setWorkingmediumjacket(String workingmediumjacket);

	/**
	 * Returns the value of the '<em><b>Designpressureshellside</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Designpressureshellside</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Designpressureshellside</em>' attribute.
	 * @see #setDesignpressureshellside(java.lang.String)
	 */
	public String getDesignpressureshellside();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getDesignpressureshellside <em>Designpressureshellside</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Designpressureshellside</em>' attribute.
	 * @see #getDesignpressureshellside()
	 */
	public void setDesignpressureshellside(String designpressureshellside);

	/**
	 * Returns the value of the '<em><b>Designpressuretube</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Designpressuretube</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Designpressuretube</em>' attribute.
	 * @see #setDesignpressuretube(java.lang.String)
	 */
	public String getDesignpressuretube();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getDesignpressuretube <em>Designpressuretube</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Designpressuretube</em>' attribute.
	 * @see #getDesignpressuretube()
	 */
	public void setDesignpressuretube(String designpressuretube);

	/**
	 * Returns the value of the '<em><b>Designpressurejacket</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Designpressurejacket</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Designpressurejacket</em>' attribute.
	 * @see #setDesignpressurejacket(java.lang.String)
	 */
	public String getDesignpressurejacket();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getDesignpressurejacket <em>Designpressurejacket</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Designpressurejacket</em>' attribute.
	 * @see #getDesignpressurejacket()
	 */
	public void setDesignpressurejacket(String designpressurejacket);

	/**
	 * Returns the value of the '<em><b>Designtemperatureshellside</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Designtemperatureshellside</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Designtemperatureshellside</em>' attribute.
	 * @see #setDesigntemperatureshellside(java.lang.String)
	 */
	public String getDesigntemperatureshellside();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getDesigntemperatureshellside <em>Designtemperatureshellside</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Designtemperatureshellside</em>' attribute.
	 * @see #getDesigntemperatureshellside()
	 */
	public void setDesigntemperatureshellside(String designtemperatureshellside);

	/**
	 * Returns the value of the '<em><b>Designtemperaturetube</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Designtemperaturetube</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Designtemperaturetube</em>' attribute.
	 * @see #setDesigntemperaturetube(java.lang.String)
	 */
	public String getDesigntemperaturetube();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getDesigntemperaturetube <em>Designtemperaturetube</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Designtemperaturetube</em>' attribute.
	 * @see #getDesigntemperaturetube()
	 */
	public void setDesigntemperaturetube(String designtemperaturetube);

	/**
	 * Returns the value of the '<em><b>Designtemperaturejacket</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Designtemperaturejacket</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Designtemperaturejacket</em>' attribute.
	 * @see #setDesigntemperaturejacket(java.lang.String)
	 */
	public String getDesigntemperaturejacket();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getDesigntemperaturejacket <em>Designtemperaturejacket</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Designtemperaturejacket</em>' attribute.
	 * @see #getDesigntemperaturejacket()
	 */
	public void setDesigntemperaturejacket(String designtemperaturejacket);

	/**
	 * Returns the value of the '<em><b>Worktemperatureshellside</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Worktemperatureshellside</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Worktemperatureshellside</em>' attribute.
	 * @see #setWorktemperatureshellside(java.lang.String)
	 */
	public String getWorktemperatureshellside();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getWorktemperatureshellside <em>Worktemperatureshellside</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Worktemperatureshellside</em>' attribute.
	 * @see #getWorktemperatureshellside()
	 */
	public void setWorktemperatureshellside(String worktemperatureshellside);

	/**
	 * Returns the value of the '<em><b>Worktemperaturetube</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Worktemperaturetube</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Worktemperaturetube</em>' attribute.
	 * @see #setWorktemperaturetube(java.lang.String)
	 */
	public String getWorktemperaturetube();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getWorktemperaturetube <em>Worktemperaturetube</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Worktemperaturetube</em>' attribute.
	 * @see #getWorktemperaturetube()
	 */
	public void setWorktemperaturetube(String worktemperaturetube);

	/**
	 * Returns the value of the '<em><b>Worktemperaturejacket</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Worktemperaturejacket</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Worktemperaturejacket</em>' attribute.
	 * @see #setWorktemperaturejacket(java.lang.String)
	 */
	public String getWorktemperaturejacket();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getWorktemperaturejacket <em>Worktemperaturejacket</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Worktemperaturejacket</em>' attribute.
	 * @see #getWorktemperaturejacket()
	 */
	public void setWorktemperaturejacket(String worktemperaturejacket);

	/**
	 * Returns the value of the '<em><b>Corrosionmargincylinder</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Corrosionmargincylinder</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Corrosionmargincylinder</em>' attribute.
	 * @see #setCorrosionmargincylinder(java.lang.String)
	 */
	public String getCorrosionmargincylinder();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getCorrosionmargincylinder <em>Corrosionmargincylinder</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Corrosionmargincylinder</em>' attribute.
	 * @see #getCorrosionmargincylinder()
	 */
	public void setCorrosionmargincylinder(String corrosionmargincylinder);

	/**
	 * Returns the value of the '<em><b>Corrosionmarginhead</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Corrosionmarginhead</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Corrosionmarginhead</em>' attribute.
	 * @see #setCorrosionmarginhead(java.lang.String)
	 */
	public String getCorrosionmarginhead();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getCorrosionmarginhead <em>Corrosionmarginhead</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Corrosionmarginhead</em>' attribute.
	 * @see #getCorrosionmarginhead()
	 */
	public void setCorrosionmarginhead(String corrosionmarginhead);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getCreatetime <em>Createtime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Createtime</em>' attribute.
	 * @see #getCreatetime()
	 */
	public void setCreatetime(String createtime);

	/**
	 * Returns the value of the '<em><b>Equipmentdrawnumberfileid</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Equipmentdrawnumberfileid</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Equipmentdrawnumberfileid</em>' attribute.
	 * @see #setEquipmentdrawnumberfileid(java.lang.String)
	 */
	public String getEquipmentdrawnumberfileid();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getEquipmentdrawnumberfileid <em>Equipmentdrawnumberfileid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equipmentdrawnumberfileid</em>' attribute.
	 * @see #getEquipmentdrawnumberfileid()
	 */
	public void setEquipmentdrawnumberfileid(String equipmentdrawnumberfileid);

	/**
	 * Returns the value of the '<em><b>Equipmentdrawnumberfilepath</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Equipmentdrawnumberfilepath</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Equipmentdrawnumberfilepath</em>' attribute.
	 * @see #setEquipmentdrawnumberfilepath(java.lang.String)
	 */
	public String getEquipmentdrawnumberfilepath();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getEquipmentdrawnumberfilepath <em>Equipmentdrawnumberfilepath</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equipmentdrawnumberfilepath</em>' attribute.
	 * @see #getEquipmentdrawnumberfilepath()
	 */
	public void setEquipmentdrawnumberfilepath(String equipmentdrawnumberfilepath);

	/**
	 * Returns the value of the '<em><b>ProcessInstId</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>ProcessInstId</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>ProcessInstId</em>' attribute.
	 * @see #setProcessInstId(java.lang.String)
	 */
	public String getProcessInstId();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getProcessInstId <em>ProcessInstId</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>ProcessInstId</em>' attribute.
	 * @see #getProcessInstId()
	 */
	public void setProcessInstId(String processInstId);

	/**
	 * Returns the value of the '<em><b>Jhry</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Jhry</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Jhry</em>' attribute.
	 * @see #setJhry(java.lang.String)
	 */
	public String getJhry();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getJhry <em>Jhry</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Jhry</em>' attribute.
	 * @see #getJhry()
	 */
	public void setJhry(String jhry);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getCcry <em>Ccry</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Ccry</em>' attribute.
	 * @see #getCcry()
	 */
	public void setCcry(String ccry);

	/**
	 * Returns the value of the '<em><b>ChangeReasons</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>ChangeReasons</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>ChangeReasons</em>' attribute.
	 * @see #setChangeReasons(java.lang.String)
	 */
	public String getChangeReasons();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getChangeReasons <em>ChangeReasons</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>ChangeReasons</em>' attribute.
	 * @see #getChangeReasons()
	 */
	public void setChangeReasons(String changeReasons);

	/**
	 * Returns the value of the '<em><b>ProcessStatus</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>ProcessStatus</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>ProcessStatus</em>' attribute.
	 * @see #setProcessStatus(java.lang.String)
	 */
	public String getProcessStatus();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getProcessStatus <em>ProcessStatus</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>ProcessStatus</em>' attribute.
	 * @see #getProcessStatus()
	 */
	public void setProcessStatus(String processStatus);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getApplicant <em>Applicant</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Applicant</em>' attribute.
	 * @see #getApplicant()
	 */
	public void setApplicant(String applicant);

	/**
	 * Returns the value of the '<em><b>Applicanttime</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Applicanttime</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Applicanttime</em>' attribute.
	 * @see #setApplicanttime(java.lang.String)
	 */
	public String getApplicanttime();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getApplicanttime <em>Applicanttime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Applicanttime</em>' attribute.
	 * @see #getApplicanttime()
	 */
	public void setApplicanttime(String applicanttime);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getUuid <em>Uuid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Uuid</em>' attribute.
	 * @see #getUuid()
	 */
	public void setUuid(String uuid);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getRelationid <em>Relationid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Relationid</em>' attribute.
	 * @see #getRelationid()
	 */
	public void setRelationid(String relationid);

	/**
	 * Returns the value of the '<em><b>Changeuser</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Changeuser</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Changeuser</em>' attribute.
	 * @see #setChangeuser(java.lang.String)
	 */
	public String getChangeuser();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getChangeuser <em>Changeuser</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Changeuser</em>' attribute.
	 * @see #getChangeuser()
	 */
	public void setChangeuser(String changeuser);

	/**
	 * Returns the value of the '<em><b>Changetime</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Changetime</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Changetime</em>' attribute.
	 * @see #setChangetime(java.lang.String)
	 */
	public String getChangetime();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getChangetime <em>Changetime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Changetime</em>' attribute.
	 * @see #getChangetime()
	 */
	public void setChangetime(String changetime);

	/**
	 * Returns the value of the '<em><b>Changeinfo</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Changeinfo</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Changeinfo</em>' attribute.
	 * @see #setChangeinfo(java.lang.String)
	 */
	public String getChangeinfo();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getChangeinfo <em>Changeinfo</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Changeinfo</em>' attribute.
	 * @see #getChangeinfo()
	 */
	public void setChangeinfo(String changeinfo);

	/**
	 * Returns the value of the '<em><b>Longitudinalwelds</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Longitudinalwelds</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Longitudinalwelds</em>' attribute.
	 * @see #setLongitudinalwelds(com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Longitudinalweld)
	 */
	public List<Longitudinalweld> getLongitudinalwelds();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getLongitudinalwelds <em>Longitudinalwelds</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Longitudinalwelds</em>' attribute.
	 * @see #getLongitudinalwelds()
	 */
	public void setLongitudinalwelds(List<Longitudinalweld> longitudinalwelds);

	/**
	 * Returns the value of the '<em><b>Connectingpipes</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Connectingpipes</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Connectingpipes</em>' attribute.
	 * @see #setConnectingpipes(com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Connectingpipe)
	 */
	public List<Connectingpipe> getConnectingpipes();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getConnectingpipes <em>Connectingpipes</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Connectingpipes</em>' attribute.
	 * @see #getConnectingpipes()
	 */
	public void setConnectingpipes(List<Connectingpipe> connectingpipes);

	/**
	 * Returns the value of the '<em><b>Safetyvalves</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Safetyvalves</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Safetyvalves</em>' attribute.
	 * @see #setSafetyvalves(com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Safetyvalve)
	 */
	public List<Safetyvalve> getSafetyvalves();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getSafetyvalves <em>Safetyvalves</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Safetyvalves</em>' attribute.
	 * @see #getSafetyvalves()
	 */
	public void setSafetyvalves(List<Safetyvalve> safetyvalves);

	/**
	 * Returns the value of the '<em><b>Pressuregauges</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Pressuregauges</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Pressuregauges</em>' attribute.
	 * @see #setPressuregauges(com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressuregauge)
	 */
	public List<Pressuregauge> getPressuregauges();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getPressuregauges <em>Pressuregauges</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Pressuregauges</em>' attribute.
	 * @see #getPressuregauges()
	 */
	public void setPressuregauges(List<Pressuregauge> pressuregauges);

	/**
	 * Returns the value of the '<em><b>Levelgauges</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Levelgauges</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Levelgauges</em>' attribute.
	 * @see #setLevelgauges(com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Levelgauge)
	 */
	public List<Levelgauge> getLevelgauges();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getLevelgauges <em>Levelgauges</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Levelgauges</em>' attribute.
	 * @see #getLevelgauges()
	 */
	public void setLevelgauges(List<Levelgauge> levelgauges);

	/**
	 * Returns the value of the '<em><b>Temperatureinstruments</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Temperatureinstruments</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Temperatureinstruments</em>' attribute.
	 * @see #setTemperatureinstruments(com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Temperatureinstrument)
	 */
	public List<Temperatureinstrument> getTemperatureinstruments();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getTemperatureinstruments <em>Temperatureinstruments</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Temperatureinstruments</em>' attribute.
	 * @see #getTemperatureinstruments()
	 */
	public void setTemperatureinstruments(List<Temperatureinstrument> temperatureinstruments);

	/**
	 * Returns the value of the '<em><b>Supplementaryinfos</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Supplementaryinfos</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Supplementaryinfos</em>' attribute.
	 * @see #setSupplementaryinfos(com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Supplementaryinfo)
	 */
	public List<Supplementaryinfo> getSupplementaryinfos();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getSupplementaryinfos <em>Supplementaryinfos</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Supplementaryinfos</em>' attribute.
	 * @see #getSupplementaryinfos()
	 */
	public void setSupplementaryinfos(List<Supplementaryinfo> supplementaryinfos);

	/**
	 * Returns the value of the '<em><b>Equipmenthistoryinfos</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Equipmenthistoryinfos</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Equipmenthistoryinfos</em>' attribute.
	 * @see #setEquipmenthistoryinfos(com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Equipmenthistoryinfo)
	 */
	public List<Equipmenthistoryinfo> getEquipmenthistoryinfos();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getEquipmenthistoryinfos <em>Equipmenthistoryinfos</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equipmenthistoryinfos</em>' attribute.
	 * @see #getEquipmenthistoryinfos()
	 */
	public void setEquipmenthistoryinfos(List<Equipmenthistoryinfo> equipmenthistoryinfos);

	/**
	 * Returns the value of the '<em><b>Rupturediscs</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Rupturediscs</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Rupturediscs</em>' attribute.
	 * @see #setRupturediscs(com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Rupturedisc)
	 */
	public List<Rupturedisc> getRupturediscs();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getRupturediscs <em>Rupturediscs</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Rupturediscs</em>' attribute.
	 * @see #getRupturediscs()
	 */
	public void setRupturediscs(List<Rupturedisc> rupturediscs);

	/**
	 * Returns the value of the '<em><b>Shellgirthwelds</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Shellgirthwelds</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Shellgirthwelds</em>' attribute.
	 * @see #setShellgirthwelds(com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Shellgirthweld)
	 */
	public List<Shellgirthweld> getShellgirthwelds();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif#getShellgirthwelds <em>Shellgirthwelds</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Shellgirthwelds</em>' attribute.
	 * @see #getShellgirthwelds()
	 */
	public void setShellgirthwelds(List<Shellgirthweld> shellgirthwelds);


}