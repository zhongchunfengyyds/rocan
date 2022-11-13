/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl;

import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Connectingpipe;
import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Equipmenthistoryinfo;
import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Levelgauge;
import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Longitudinalweld;
import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressuregauge;
import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif;
import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Rupturedisc;
import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Safetyvalve;
import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Shellgirthweld;
import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Supplementaryinfo;
import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Temperatureinstrument;
import com.primeton.ext.data.sdo.DataUtil;
import com.primeton.ext.data.sdo.ExtendedDataObjectImpl;

import commonj.sdo.Type;

import java.util.List;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Test</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getJd <em>Jd</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getJz <em>Jz</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getIsdel <em>Isdel</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getDeleteperson <em>Deleteperson</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getDeletetime <em>Deletetime</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getSystem <em>System</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getEquipmentdrawnumber <em>Equipmentdrawnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getDrawingnumber <em>Drawingnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getEquipmentdrawversion <em>Equipmentdrawversion</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getEquipmentnumber <em>Equipmentnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getEquipmentname <em>Equipmentname</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getVersionnumber <em>Versionnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getContainercategories <em>Containercategories</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getContainervariety <em>Containervariety</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getWorkshopbranch <em>Workshopbranch</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getContainerinnerdiameter <em>Containerinnerdiameter</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getContainervolume <em>Containervolume</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getContainerheight <em>Containerheight</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getStructuretype <em>Structuretype</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getHeadtype <em>Headtype</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getSupportform <em>Supportform</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getShellweight <em>Shellweight</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getInnerweight <em>Innerweight</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getFillingweight <em>Fillingweight</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getWhetherthermalinsulation <em>Whetherthermalinsulation</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getFinishedworkingpressure <em>Finishedworkingpressure</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getTubeprocessworkingpressure <em>Tubeprocessworkingpressure</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getOxygenmeasurementmethod <em>Oxygenmeasurementmethod</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getTanknumber <em>Tanknumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getTankerstructure <em>Tankerstructure</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getTankcarchassisnumber <em>Tankcarchassisnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getBodymaterialcylinder <em>Bodymaterialcylinder</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getBodymaterialhead <em>Bodymaterialhead</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getBodymateriallining <em>Bodymateriallining</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getBodymaterialjacket <em>Bodymaterialjacket</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getBodythicknesscylinder <em>Bodythicknesscylinder</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getBodythicknesshead <em>Bodythicknesshead</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getBodythicknesslining <em>Bodythicknesslining</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getBodythicknessjacket <em>Bodythicknessjacket</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getWorkingmediumshell <em>Workingmediumshell</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getWorkingmediumtube <em>Workingmediumtube</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getWorkingmediumjacket <em>Workingmediumjacket</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getDesignpressureshellside <em>Designpressureshellside</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getDesignpressuretube <em>Designpressuretube</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getDesignpressurejacket <em>Designpressurejacket</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getDesigntemperatureshellside <em>Designtemperatureshellside</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getDesigntemperaturetube <em>Designtemperaturetube</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getDesigntemperaturejacket <em>Designtemperaturejacket</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getWorktemperatureshellside <em>Worktemperatureshellside</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getWorktemperaturetube <em>Worktemperaturetube</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getWorktemperaturejacket <em>Worktemperaturejacket</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getCorrosionmargincylinder <em>Corrosionmargincylinder</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getCorrosionmarginhead <em>Corrosionmarginhead</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getCreatetime <em>Createtime</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getEquipmentdrawnumberfileid <em>Equipmentdrawnumberfileid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getEquipmentdrawnumberfilepath <em>Equipmentdrawnumberfilepath</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getProcessInstId <em>ProcessInstId</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getJhry <em>Jhry</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getCcry <em>Ccry</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getChangeReasons <em>ChangeReasons</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getProcessStatus <em>ProcessStatus</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getApplicant <em>Applicant</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getApplicanttime <em>Applicanttime</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getRelationid <em>Relationid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getChangeuser <em>Changeuser</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getChangetime <em>Changetime</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getChangeinfo <em>Changeinfo</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getLongitudinalwelds <em>Longitudinalwelds</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getConnectingpipes <em>Connectingpipes</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getSafetyvalves <em>Safetyvalves</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getPressuregauges <em>Pressuregauges</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getLevelgauges <em>Levelgauges</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getTemperatureinstruments <em>Temperatureinstruments</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getSupplementaryinfos <em>Supplementaryinfos</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getEquipmenthistoryinfos <em>Equipmenthistoryinfos</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getRupturediscs <em>Rupturediscs</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.Pressurevessel_modifImpl#getShellgirthwelds <em>Shellgirthwelds</em>}</li>
 * </ul>
 * </p>
 *
 * @extends ExtendedDataObjectImpl;
 *
 * @implements Pressurevessel_modif;
 */

public class Pressurevessel_modifImpl extends ExtendedDataObjectImpl implements Pressurevessel_modif {
	/**
	 * Comment for <code>serialVersionUID</code>
	 */
	private static final long serialVersionUID = 1L;
	public final static int INDEX_JD = 0;
	public final static int INDEX_JZ = 1;
	public final static int INDEX_ISDEL = 2;
	public final static int INDEX_DELETEPERSON = 3;
	public final static int INDEX_DELETETIME = 4;
	public final static int INDEX_SYSTEM = 5;
	public final static int INDEX_EQUIPMENTDRAWNUMBER = 6;
	public final static int INDEX_DRAWINGNUMBER = 7;
	public final static int INDEX_EQUIPMENTDRAWVERSION = 8;
	public final static int INDEX_EQUIPMENTNUMBER = 9;
	public final static int INDEX_EQUIPMENTNAME = 10;
	public final static int INDEX_VERSIONNUMBER = 11;
	public final static int INDEX_CONTAINERCATEGORIES = 12;
	public final static int INDEX_CONTAINERVARIETY = 13;
	public final static int INDEX_WORKSHOPBRANCH = 14;
	public final static int INDEX_CONTAINERINNERDIAMETER = 15;
	public final static int INDEX_CONTAINERVOLUME = 16;
	public final static int INDEX_CONTAINERHEIGHT = 17;
	public final static int INDEX_STRUCTURETYPE = 18;
	public final static int INDEX_HEADTYPE = 19;
	public final static int INDEX_SUPPORTFORM = 20;
	public final static int INDEX_SHELLWEIGHT = 21;
	public final static int INDEX_INNERWEIGHT = 22;
	public final static int INDEX_FILLINGWEIGHT = 23;
	public final static int INDEX_WHETHERTHERMALINSULATION = 24;
	public final static int INDEX_FINISHEDWORKINGPRESSURE = 25;
	public final static int INDEX_TUBEPROCESSWORKINGPRESSURE = 26;
	public final static int INDEX_OXYGENMEASUREMENTMETHOD = 27;
	public final static int INDEX_TANKNUMBER = 28;
	public final static int INDEX_TANKERSTRUCTURE = 29;
	public final static int INDEX_TANKCARCHASSISNUMBER = 30;
	public final static int INDEX_BODYMATERIALCYLINDER = 31;
	public final static int INDEX_BODYMATERIALHEAD = 32;
	public final static int INDEX_BODYMATERIALLINING = 33;
	public final static int INDEX_BODYMATERIALJACKET = 34;
	public final static int INDEX_BODYTHICKNESSCYLINDER = 35;
	public final static int INDEX_BODYTHICKNESSHEAD = 36;
	public final static int INDEX_BODYTHICKNESSLINING = 37;
	public final static int INDEX_BODYTHICKNESSJACKET = 38;
	public final static int INDEX_WORKINGMEDIUMSHELL = 39;
	public final static int INDEX_WORKINGMEDIUMTUBE = 40;
	public final static int INDEX_WORKINGMEDIUMJACKET = 41;
	public final static int INDEX_DESIGNPRESSURESHELLSIDE = 42;
	public final static int INDEX_DESIGNPRESSURETUBE = 43;
	public final static int INDEX_DESIGNPRESSUREJACKET = 44;
	public final static int INDEX_DESIGNTEMPERATURESHELLSIDE = 45;
	public final static int INDEX_DESIGNTEMPERATURETUBE = 46;
	public final static int INDEX_DESIGNTEMPERATUREJACKET = 47;
	public final static int INDEX_WORKTEMPERATURESHELLSIDE = 48;
	public final static int INDEX_WORKTEMPERATURETUBE = 49;
	public final static int INDEX_WORKTEMPERATUREJACKET = 50;
	public final static int INDEX_CORROSIONMARGINCYLINDER = 51;
	public final static int INDEX_CORROSIONMARGINHEAD = 52;
	public final static int INDEX_CREATETIME = 53;
	public final static int INDEX_EQUIPMENTDRAWNUMBERFILEID = 54;
	public final static int INDEX_EQUIPMENTDRAWNUMBERFILEPATH = 55;
	public final static int INDEX_PROCESSINSTID = 56;
	public final static int INDEX_JHRY = 57;
	public final static int INDEX_CCRY = 58;
	public final static int INDEX_CHANGEREASONS = 59;
	public final static int INDEX_PROCESSSTATUS = 60;
	public final static int INDEX_APPLICANT = 61;
	public final static int INDEX_APPLICANTTIME = 62;
	public final static int INDEX_UUID = 63;
	public final static int INDEX_RELATIONID = 64;
	public final static int INDEX_CHANGEUSER = 65;
	public final static int INDEX_CHANGETIME = 66;
	public final static int INDEX_CHANGEINFO = 67;
	public final static int INDEX_LONGITUDINALWELDS = 68;
	public final static int INDEX_CONNECTINGPIPES = 69;
	public final static int INDEX_SAFETYVALVES = 70;
	public final static int INDEX_PRESSUREGAUGES = 71;
	public final static int INDEX_LEVELGAUGES = 72;
	public final static int INDEX_TEMPERATUREINSTRUMENTS = 73;
	public final static int INDEX_SUPPLEMENTARYINFOS = 74;
	public final static int INDEX_EQUIPMENTHISTORYINFOS = 75;
	public final static int INDEX_RUPTUREDISCS = 76;
	public final static int INDEX_SHELLGIRTHWELDS = 77;
	public static final int SDO_PROPERTY_COUNT = 78;

	public static final int EXTENDED_PROPERTY_COUNT = -1;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public Pressurevessel_modifImpl() {
		this(TYPE);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public Pressurevessel_modifImpl(Type type) {
		super(type);
	}

	protected void validate() {
		validateType(TYPE);
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
	public String getDeleteperson() {
		return DataUtil.toString(super.getByIndex(INDEX_DELETEPERSON, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getDeleteperson <em>Deleteperson</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Deleteperson</em>' attribute.
	 * @see #getDeleteperson()
	 */
	public void setDeleteperson(String deleteperson) {
		super.setByIndex(INDEX_DELETEPERSON, deleteperson);
	}

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
	public String getDeletetime() {
		return DataUtil.toString(super.getByIndex(INDEX_DELETETIME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getDeletetime <em>Deletetime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Deletetime</em>' attribute.
	 * @see #getDeletetime()
	 */
	public void setDeletetime(String deletetime) {
		super.setByIndex(INDEX_DELETETIME, deletetime);
	}

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
	public String getSystem() {
		return DataUtil.toString(super.getByIndex(INDEX_SYSTEM, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getSystem <em>System</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>System</em>' attribute.
	 * @see #getSystem()
	 */
	public void setSystem(String system) {
		super.setByIndex(INDEX_SYSTEM, system);
	}

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
	public String getEquipmentdrawnumber() {
		return DataUtil.toString(super.getByIndex(INDEX_EQUIPMENTDRAWNUMBER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getEquipmentdrawnumber <em>Equipmentdrawnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equipmentdrawnumber</em>' attribute.
	 * @see #getEquipmentdrawnumber()
	 */
	public void setEquipmentdrawnumber(String equipmentdrawnumber) {
		super.setByIndex(INDEX_EQUIPMENTDRAWNUMBER, equipmentdrawnumber);
	}

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
	public String getDrawingnumber() {
		return DataUtil.toString(super.getByIndex(INDEX_DRAWINGNUMBER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getDrawingnumber <em>Drawingnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Drawingnumber</em>' attribute.
	 * @see #getDrawingnumber()
	 */
	public void setDrawingnumber(String drawingnumber) {
		super.setByIndex(INDEX_DRAWINGNUMBER, drawingnumber);
	}

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
	public String getEquipmentdrawversion() {
		return DataUtil.toString(super.getByIndex(INDEX_EQUIPMENTDRAWVERSION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getEquipmentdrawversion <em>Equipmentdrawversion</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equipmentdrawversion</em>' attribute.
	 * @see #getEquipmentdrawversion()
	 */
	public void setEquipmentdrawversion(String equipmentdrawversion) {
		super.setByIndex(INDEX_EQUIPMENTDRAWVERSION, equipmentdrawversion);
	}

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
	public String getEquipmentnumber() {
		return DataUtil.toString(super.getByIndex(INDEX_EQUIPMENTNUMBER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getEquipmentnumber <em>Equipmentnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equipmentnumber</em>' attribute.
	 * @see #getEquipmentnumber()
	 */
	public void setEquipmentnumber(String equipmentnumber) {
		super.setByIndex(INDEX_EQUIPMENTNUMBER, equipmentnumber);
	}

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
	public String getEquipmentname() {
		return DataUtil.toString(super.getByIndex(INDEX_EQUIPMENTNAME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getEquipmentname <em>Equipmentname</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equipmentname</em>' attribute.
	 * @see #getEquipmentname()
	 */
	public void setEquipmentname(String equipmentname) {
		super.setByIndex(INDEX_EQUIPMENTNAME, equipmentname);
	}

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
	public String getVersionnumber() {
		return DataUtil.toString(super.getByIndex(INDEX_VERSIONNUMBER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getVersionnumber <em>Versionnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Versionnumber</em>' attribute.
	 * @see #getVersionnumber()
	 */
	public void setVersionnumber(String versionnumber) {
		super.setByIndex(INDEX_VERSIONNUMBER, versionnumber);
	}

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
	public String getContainercategories() {
		return DataUtil.toString(super.getByIndex(INDEX_CONTAINERCATEGORIES, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getContainercategories <em>Containercategories</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Containercategories</em>' attribute.
	 * @see #getContainercategories()
	 */
	public void setContainercategories(String containercategories) {
		super.setByIndex(INDEX_CONTAINERCATEGORIES, containercategories);
	}

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
	public String getContainervariety() {
		return DataUtil.toString(super.getByIndex(INDEX_CONTAINERVARIETY, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getContainervariety <em>Containervariety</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Containervariety</em>' attribute.
	 * @see #getContainervariety()
	 */
	public void setContainervariety(String containervariety) {
		super.setByIndex(INDEX_CONTAINERVARIETY, containervariety);
	}

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
	public String getWorkshopbranch() {
		return DataUtil.toString(super.getByIndex(INDEX_WORKSHOPBRANCH, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getWorkshopbranch <em>Workshopbranch</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Workshopbranch</em>' attribute.
	 * @see #getWorkshopbranch()
	 */
	public void setWorkshopbranch(String workshopbranch) {
		super.setByIndex(INDEX_WORKSHOPBRANCH, workshopbranch);
	}

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
	public String getContainerinnerdiameter() {
		return DataUtil.toString(super.getByIndex(INDEX_CONTAINERINNERDIAMETER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getContainerinnerdiameter <em>Containerinnerdiameter</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Containerinnerdiameter</em>' attribute.
	 * @see #getContainerinnerdiameter()
	 */
	public void setContainerinnerdiameter(String containerinnerdiameter) {
		super.setByIndex(INDEX_CONTAINERINNERDIAMETER, containerinnerdiameter);
	}

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
	public String getContainervolume() {
		return DataUtil.toString(super.getByIndex(INDEX_CONTAINERVOLUME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getContainervolume <em>Containervolume</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Containervolume</em>' attribute.
	 * @see #getContainervolume()
	 */
	public void setContainervolume(String containervolume) {
		super.setByIndex(INDEX_CONTAINERVOLUME, containervolume);
	}

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
	public String getContainerheight() {
		return DataUtil.toString(super.getByIndex(INDEX_CONTAINERHEIGHT, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getContainerheight <em>Containerheight</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Containerheight</em>' attribute.
	 * @see #getContainerheight()
	 */
	public void setContainerheight(String containerheight) {
		super.setByIndex(INDEX_CONTAINERHEIGHT, containerheight);
	}

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
	public String getStructuretype() {
		return DataUtil.toString(super.getByIndex(INDEX_STRUCTURETYPE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getStructuretype <em>Structuretype</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Structuretype</em>' attribute.
	 * @see #getStructuretype()
	 */
	public void setStructuretype(String structuretype) {
		super.setByIndex(INDEX_STRUCTURETYPE, structuretype);
	}

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
	public String getHeadtype() {
		return DataUtil.toString(super.getByIndex(INDEX_HEADTYPE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getHeadtype <em>Headtype</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Headtype</em>' attribute.
	 * @see #getHeadtype()
	 */
	public void setHeadtype(String headtype) {
		super.setByIndex(INDEX_HEADTYPE, headtype);
	}

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
	public String getSupportform() {
		return DataUtil.toString(super.getByIndex(INDEX_SUPPORTFORM, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getSupportform <em>Supportform</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Supportform</em>' attribute.
	 * @see #getSupportform()
	 */
	public void setSupportform(String supportform) {
		super.setByIndex(INDEX_SUPPORTFORM, supportform);
	}

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
	public String getShellweight() {
		return DataUtil.toString(super.getByIndex(INDEX_SHELLWEIGHT, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getShellweight <em>Shellweight</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Shellweight</em>' attribute.
	 * @see #getShellweight()
	 */
	public void setShellweight(String shellweight) {
		super.setByIndex(INDEX_SHELLWEIGHT, shellweight);
	}

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
	public String getInnerweight() {
		return DataUtil.toString(super.getByIndex(INDEX_INNERWEIGHT, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getInnerweight <em>Innerweight</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Innerweight</em>' attribute.
	 * @see #getInnerweight()
	 */
	public void setInnerweight(String innerweight) {
		super.setByIndex(INDEX_INNERWEIGHT, innerweight);
	}

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
	public String getFillingweight() {
		return DataUtil.toString(super.getByIndex(INDEX_FILLINGWEIGHT, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getFillingweight <em>Fillingweight</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Fillingweight</em>' attribute.
	 * @see #getFillingweight()
	 */
	public void setFillingweight(String fillingweight) {
		super.setByIndex(INDEX_FILLINGWEIGHT, fillingweight);
	}

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
	public String getWhetherthermalinsulation() {
		return DataUtil.toString(super.getByIndex(INDEX_WHETHERTHERMALINSULATION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getWhetherthermalinsulation <em>Whetherthermalinsulation</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Whetherthermalinsulation</em>' attribute.
	 * @see #getWhetherthermalinsulation()
	 */
	public void setWhetherthermalinsulation(String whetherthermalinsulation) {
		super.setByIndex(INDEX_WHETHERTHERMALINSULATION, whetherthermalinsulation);
	}

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
	public String getFinishedworkingpressure() {
		return DataUtil.toString(super.getByIndex(INDEX_FINISHEDWORKINGPRESSURE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getFinishedworkingpressure <em>Finishedworkingpressure</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Finishedworkingpressure</em>' attribute.
	 * @see #getFinishedworkingpressure()
	 */
	public void setFinishedworkingpressure(String finishedworkingpressure) {
		super.setByIndex(INDEX_FINISHEDWORKINGPRESSURE, finishedworkingpressure);
	}

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
	public String getTubeprocessworkingpressure() {
		return DataUtil.toString(super.getByIndex(INDEX_TUBEPROCESSWORKINGPRESSURE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getTubeprocessworkingpressure <em>Tubeprocessworkingpressure</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Tubeprocessworkingpressure</em>' attribute.
	 * @see #getTubeprocessworkingpressure()
	 */
	public void setTubeprocessworkingpressure(String tubeprocessworkingpressure) {
		super.setByIndex(INDEX_TUBEPROCESSWORKINGPRESSURE, tubeprocessworkingpressure);
	}

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
	public String getOxygenmeasurementmethod() {
		return DataUtil.toString(super.getByIndex(INDEX_OXYGENMEASUREMENTMETHOD, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getOxygenmeasurementmethod <em>Oxygenmeasurementmethod</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Oxygenmeasurementmethod</em>' attribute.
	 * @see #getOxygenmeasurementmethod()
	 */
	public void setOxygenmeasurementmethod(String oxygenmeasurementmethod) {
		super.setByIndex(INDEX_OXYGENMEASUREMENTMETHOD, oxygenmeasurementmethod);
	}

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
	public String getTanknumber() {
		return DataUtil.toString(super.getByIndex(INDEX_TANKNUMBER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getTanknumber <em>Tanknumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Tanknumber</em>' attribute.
	 * @see #getTanknumber()
	 */
	public void setTanknumber(String tanknumber) {
		super.setByIndex(INDEX_TANKNUMBER, tanknumber);
	}

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
	public String getTankerstructure() {
		return DataUtil.toString(super.getByIndex(INDEX_TANKERSTRUCTURE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getTankerstructure <em>Tankerstructure</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Tankerstructure</em>' attribute.
	 * @see #getTankerstructure()
	 */
	public void setTankerstructure(String tankerstructure) {
		super.setByIndex(INDEX_TANKERSTRUCTURE, tankerstructure);
	}

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
	public String getTankcarchassisnumber() {
		return DataUtil.toString(super.getByIndex(INDEX_TANKCARCHASSISNUMBER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getTankcarchassisnumber <em>Tankcarchassisnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Tankcarchassisnumber</em>' attribute.
	 * @see #getTankcarchassisnumber()
	 */
	public void setTankcarchassisnumber(String tankcarchassisnumber) {
		super.setByIndex(INDEX_TANKCARCHASSISNUMBER, tankcarchassisnumber);
	}

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
	public String getBodymaterialcylinder() {
		return DataUtil.toString(super.getByIndex(INDEX_BODYMATERIALCYLINDER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getBodymaterialcylinder <em>Bodymaterialcylinder</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Bodymaterialcylinder</em>' attribute.
	 * @see #getBodymaterialcylinder()
	 */
	public void setBodymaterialcylinder(String bodymaterialcylinder) {
		super.setByIndex(INDEX_BODYMATERIALCYLINDER, bodymaterialcylinder);
	}

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
	public String getBodymaterialhead() {
		return DataUtil.toString(super.getByIndex(INDEX_BODYMATERIALHEAD, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getBodymaterialhead <em>Bodymaterialhead</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Bodymaterialhead</em>' attribute.
	 * @see #getBodymaterialhead()
	 */
	public void setBodymaterialhead(String bodymaterialhead) {
		super.setByIndex(INDEX_BODYMATERIALHEAD, bodymaterialhead);
	}

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
	public String getBodymateriallining() {
		return DataUtil.toString(super.getByIndex(INDEX_BODYMATERIALLINING, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getBodymateriallining <em>Bodymateriallining</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Bodymateriallining</em>' attribute.
	 * @see #getBodymateriallining()
	 */
	public void setBodymateriallining(String bodymateriallining) {
		super.setByIndex(INDEX_BODYMATERIALLINING, bodymateriallining);
	}

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
	public String getBodymaterialjacket() {
		return DataUtil.toString(super.getByIndex(INDEX_BODYMATERIALJACKET, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getBodymaterialjacket <em>Bodymaterialjacket</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Bodymaterialjacket</em>' attribute.
	 * @see #getBodymaterialjacket()
	 */
	public void setBodymaterialjacket(String bodymaterialjacket) {
		super.setByIndex(INDEX_BODYMATERIALJACKET, bodymaterialjacket);
	}

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
	public String getBodythicknesscylinder() {
		return DataUtil.toString(super.getByIndex(INDEX_BODYTHICKNESSCYLINDER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getBodythicknesscylinder <em>Bodythicknesscylinder</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Bodythicknesscylinder</em>' attribute.
	 * @see #getBodythicknesscylinder()
	 */
	public void setBodythicknesscylinder(String bodythicknesscylinder) {
		super.setByIndex(INDEX_BODYTHICKNESSCYLINDER, bodythicknesscylinder);
	}

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
	public String getBodythicknesshead() {
		return DataUtil.toString(super.getByIndex(INDEX_BODYTHICKNESSHEAD, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getBodythicknesshead <em>Bodythicknesshead</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Bodythicknesshead</em>' attribute.
	 * @see #getBodythicknesshead()
	 */
	public void setBodythicknesshead(String bodythicknesshead) {
		super.setByIndex(INDEX_BODYTHICKNESSHEAD, bodythicknesshead);
	}

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
	public String getBodythicknesslining() {
		return DataUtil.toString(super.getByIndex(INDEX_BODYTHICKNESSLINING, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getBodythicknesslining <em>Bodythicknesslining</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Bodythicknesslining</em>' attribute.
	 * @see #getBodythicknesslining()
	 */
	public void setBodythicknesslining(String bodythicknesslining) {
		super.setByIndex(INDEX_BODYTHICKNESSLINING, bodythicknesslining);
	}

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
	public String getBodythicknessjacket() {
		return DataUtil.toString(super.getByIndex(INDEX_BODYTHICKNESSJACKET, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getBodythicknessjacket <em>Bodythicknessjacket</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Bodythicknessjacket</em>' attribute.
	 * @see #getBodythicknessjacket()
	 */
	public void setBodythicknessjacket(String bodythicknessjacket) {
		super.setByIndex(INDEX_BODYTHICKNESSJACKET, bodythicknessjacket);
	}

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
	public String getWorkingmediumshell() {
		return DataUtil.toString(super.getByIndex(INDEX_WORKINGMEDIUMSHELL, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getWorkingmediumshell <em>Workingmediumshell</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Workingmediumshell</em>' attribute.
	 * @see #getWorkingmediumshell()
	 */
	public void setWorkingmediumshell(String workingmediumshell) {
		super.setByIndex(INDEX_WORKINGMEDIUMSHELL, workingmediumshell);
	}

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
	public String getWorkingmediumtube() {
		return DataUtil.toString(super.getByIndex(INDEX_WORKINGMEDIUMTUBE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getWorkingmediumtube <em>Workingmediumtube</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Workingmediumtube</em>' attribute.
	 * @see #getWorkingmediumtube()
	 */
	public void setWorkingmediumtube(String workingmediumtube) {
		super.setByIndex(INDEX_WORKINGMEDIUMTUBE, workingmediumtube);
	}

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
	public String getWorkingmediumjacket() {
		return DataUtil.toString(super.getByIndex(INDEX_WORKINGMEDIUMJACKET, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getWorkingmediumjacket <em>Workingmediumjacket</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Workingmediumjacket</em>' attribute.
	 * @see #getWorkingmediumjacket()
	 */
	public void setWorkingmediumjacket(String workingmediumjacket) {
		super.setByIndex(INDEX_WORKINGMEDIUMJACKET, workingmediumjacket);
	}

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
	public String getDesignpressureshellside() {
		return DataUtil.toString(super.getByIndex(INDEX_DESIGNPRESSURESHELLSIDE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getDesignpressureshellside <em>Designpressureshellside</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Designpressureshellside</em>' attribute.
	 * @see #getDesignpressureshellside()
	 */
	public void setDesignpressureshellside(String designpressureshellside) {
		super.setByIndex(INDEX_DESIGNPRESSURESHELLSIDE, designpressureshellside);
	}

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
	public String getDesignpressuretube() {
		return DataUtil.toString(super.getByIndex(INDEX_DESIGNPRESSURETUBE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getDesignpressuretube <em>Designpressuretube</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Designpressuretube</em>' attribute.
	 * @see #getDesignpressuretube()
	 */
	public void setDesignpressuretube(String designpressuretube) {
		super.setByIndex(INDEX_DESIGNPRESSURETUBE, designpressuretube);
	}

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
	public String getDesignpressurejacket() {
		return DataUtil.toString(super.getByIndex(INDEX_DESIGNPRESSUREJACKET, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getDesignpressurejacket <em>Designpressurejacket</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Designpressurejacket</em>' attribute.
	 * @see #getDesignpressurejacket()
	 */
	public void setDesignpressurejacket(String designpressurejacket) {
		super.setByIndex(INDEX_DESIGNPRESSUREJACKET, designpressurejacket);
	}

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
	public String getDesigntemperatureshellside() {
		return DataUtil.toString(super.getByIndex(INDEX_DESIGNTEMPERATURESHELLSIDE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getDesigntemperatureshellside <em>Designtemperatureshellside</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Designtemperatureshellside</em>' attribute.
	 * @see #getDesigntemperatureshellside()
	 */
	public void setDesigntemperatureshellside(String designtemperatureshellside) {
		super.setByIndex(INDEX_DESIGNTEMPERATURESHELLSIDE, designtemperatureshellside);
	}

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
	public String getDesigntemperaturetube() {
		return DataUtil.toString(super.getByIndex(INDEX_DESIGNTEMPERATURETUBE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getDesigntemperaturetube <em>Designtemperaturetube</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Designtemperaturetube</em>' attribute.
	 * @see #getDesigntemperaturetube()
	 */
	public void setDesigntemperaturetube(String designtemperaturetube) {
		super.setByIndex(INDEX_DESIGNTEMPERATURETUBE, designtemperaturetube);
	}

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
	public String getDesigntemperaturejacket() {
		return DataUtil.toString(super.getByIndex(INDEX_DESIGNTEMPERATUREJACKET, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getDesigntemperaturejacket <em>Designtemperaturejacket</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Designtemperaturejacket</em>' attribute.
	 * @see #getDesigntemperaturejacket()
	 */
	public void setDesigntemperaturejacket(String designtemperaturejacket) {
		super.setByIndex(INDEX_DESIGNTEMPERATUREJACKET, designtemperaturejacket);
	}

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
	public String getWorktemperatureshellside() {
		return DataUtil.toString(super.getByIndex(INDEX_WORKTEMPERATURESHELLSIDE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getWorktemperatureshellside <em>Worktemperatureshellside</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Worktemperatureshellside</em>' attribute.
	 * @see #getWorktemperatureshellside()
	 */
	public void setWorktemperatureshellside(String worktemperatureshellside) {
		super.setByIndex(INDEX_WORKTEMPERATURESHELLSIDE, worktemperatureshellside);
	}

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
	public String getWorktemperaturetube() {
		return DataUtil.toString(super.getByIndex(INDEX_WORKTEMPERATURETUBE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getWorktemperaturetube <em>Worktemperaturetube</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Worktemperaturetube</em>' attribute.
	 * @see #getWorktemperaturetube()
	 */
	public void setWorktemperaturetube(String worktemperaturetube) {
		super.setByIndex(INDEX_WORKTEMPERATURETUBE, worktemperaturetube);
	}

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
	public String getWorktemperaturejacket() {
		return DataUtil.toString(super.getByIndex(INDEX_WORKTEMPERATUREJACKET, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getWorktemperaturejacket <em>Worktemperaturejacket</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Worktemperaturejacket</em>' attribute.
	 * @see #getWorktemperaturejacket()
	 */
	public void setWorktemperaturejacket(String worktemperaturejacket) {
		super.setByIndex(INDEX_WORKTEMPERATUREJACKET, worktemperaturejacket);
	}

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
	public String getCorrosionmargincylinder() {
		return DataUtil.toString(super.getByIndex(INDEX_CORROSIONMARGINCYLINDER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getCorrosionmargincylinder <em>Corrosionmargincylinder</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Corrosionmargincylinder</em>' attribute.
	 * @see #getCorrosionmargincylinder()
	 */
	public void setCorrosionmargincylinder(String corrosionmargincylinder) {
		super.setByIndex(INDEX_CORROSIONMARGINCYLINDER, corrosionmargincylinder);
	}

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
	public String getCorrosionmarginhead() {
		return DataUtil.toString(super.getByIndex(INDEX_CORROSIONMARGINHEAD, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getCorrosionmarginhead <em>Corrosionmarginhead</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Corrosionmarginhead</em>' attribute.
	 * @see #getCorrosionmarginhead()
	 */
	public void setCorrosionmarginhead(String corrosionmarginhead) {
		super.setByIndex(INDEX_CORROSIONMARGINHEAD, corrosionmarginhead);
	}

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
	public String getCreatetime() {
		return DataUtil.toString(super.getByIndex(INDEX_CREATETIME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getCreatetime <em>Createtime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Createtime</em>' attribute.
	 * @see #getCreatetime()
	 */
	public void setCreatetime(String createtime) {
		super.setByIndex(INDEX_CREATETIME, createtime);
	}

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
	public String getEquipmentdrawnumberfileid() {
		return DataUtil.toString(super.getByIndex(INDEX_EQUIPMENTDRAWNUMBERFILEID, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getEquipmentdrawnumberfileid <em>Equipmentdrawnumberfileid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equipmentdrawnumberfileid</em>' attribute.
	 * @see #getEquipmentdrawnumberfileid()
	 */
	public void setEquipmentdrawnumberfileid(String equipmentdrawnumberfileid) {
		super.setByIndex(INDEX_EQUIPMENTDRAWNUMBERFILEID, equipmentdrawnumberfileid);
	}

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
	public String getEquipmentdrawnumberfilepath() {
		return DataUtil.toString(super.getByIndex(INDEX_EQUIPMENTDRAWNUMBERFILEPATH, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getEquipmentdrawnumberfilepath <em>Equipmentdrawnumberfilepath</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equipmentdrawnumberfilepath</em>' attribute.
	 * @see #getEquipmentdrawnumberfilepath()
	 */
	public void setEquipmentdrawnumberfilepath(String equipmentdrawnumberfilepath) {
		super.setByIndex(INDEX_EQUIPMENTDRAWNUMBERFILEPATH, equipmentdrawnumberfilepath);
	}

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
	public String getProcessInstId() {
		return DataUtil.toString(super.getByIndex(INDEX_PROCESSINSTID, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getProcessInstId <em>ProcessInstId</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>ProcessInstId</em>' attribute.
	 * @see #getProcessInstId()
	 */
	public void setProcessInstId(String processInstId) {
		super.setByIndex(INDEX_PROCESSINSTID, processInstId);
	}

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
	public String getJhry() {
		return DataUtil.toString(super.getByIndex(INDEX_JHRY, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getJhry <em>Jhry</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Jhry</em>' attribute.
	 * @see #getJhry()
	 */
	public void setJhry(String jhry) {
		super.setByIndex(INDEX_JHRY, jhry);
	}

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
	public String getCcry() {
		return DataUtil.toString(super.getByIndex(INDEX_CCRY, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getCcry <em>Ccry</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Ccry</em>' attribute.
	 * @see #getCcry()
	 */
	public void setCcry(String ccry) {
		super.setByIndex(INDEX_CCRY, ccry);
	}

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
	public String getChangeReasons() {
		return DataUtil.toString(super.getByIndex(INDEX_CHANGEREASONS, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getChangeReasons <em>ChangeReasons</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>ChangeReasons</em>' attribute.
	 * @see #getChangeReasons()
	 */
	public void setChangeReasons(String changeReasons) {
		super.setByIndex(INDEX_CHANGEREASONS, changeReasons);
	}

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
	public String getProcessStatus() {
		return DataUtil.toString(super.getByIndex(INDEX_PROCESSSTATUS, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getProcessStatus <em>ProcessStatus</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>ProcessStatus</em>' attribute.
	 * @see #getProcessStatus()
	 */
	public void setProcessStatus(String processStatus) {
		super.setByIndex(INDEX_PROCESSSTATUS, processStatus);
	}

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
	public String getApplicant() {
		return DataUtil.toString(super.getByIndex(INDEX_APPLICANT, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getApplicant <em>Applicant</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Applicant</em>' attribute.
	 * @see #getApplicant()
	 */
	public void setApplicant(String applicant) {
		super.setByIndex(INDEX_APPLICANT, applicant);
	}

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
	public String getApplicanttime() {
		return DataUtil.toString(super.getByIndex(INDEX_APPLICANTTIME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getApplicanttime <em>Applicanttime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Applicanttime</em>' attribute.
	 * @see #getApplicanttime()
	 */
	public void setApplicanttime(String applicanttime) {
		super.setByIndex(INDEX_APPLICANTTIME, applicanttime);
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
	public String getRelationid() {
		return DataUtil.toString(super.getByIndex(INDEX_RELATIONID, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getRelationid <em>Relationid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Relationid</em>' attribute.
	 * @see #getRelationid()
	 */
	public void setRelationid(String relationid) {
		super.setByIndex(INDEX_RELATIONID, relationid);
	}

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
	public String getChangeuser() {
		return DataUtil.toString(super.getByIndex(INDEX_CHANGEUSER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getChangeuser <em>Changeuser</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Changeuser</em>' attribute.
	 * @see #getChangeuser()
	 */
	public void setChangeuser(String changeuser) {
		super.setByIndex(INDEX_CHANGEUSER, changeuser);
	}

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
	public String getChangetime() {
		return DataUtil.toString(super.getByIndex(INDEX_CHANGETIME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getChangetime <em>Changetime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Changetime</em>' attribute.
	 * @see #getChangetime()
	 */
	public void setChangetime(String changetime) {
		super.setByIndex(INDEX_CHANGETIME, changetime);
	}

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
	public String getChangeinfo() {
		return DataUtil.toString(super.getByIndex(INDEX_CHANGEINFO, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getChangeinfo <em>Changeinfo</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Changeinfo</em>' attribute.
	 * @see #getChangeinfo()
	 */
	public void setChangeinfo(String changeinfo) {
		super.setByIndex(INDEX_CHANGEINFO, changeinfo);
	}

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
	public List<Longitudinalweld> getLongitudinalwelds() {
		return (List<Longitudinalweld>) getList(INDEX_LONGITUDINALWELDS, true);
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getLongitudinalwelds <em>Longitudinalwelds</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Longitudinalwelds</em>' attribute.
	 * @see #getLongitudinalwelds()
	 */
	public void setLongitudinalwelds(List<Longitudinalweld> longitudinalwelds) {
		super.setByIndex(INDEX_LONGITUDINALWELDS, longitudinalwelds);
	}

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
	public List<Connectingpipe> getConnectingpipes() {
		return (List<Connectingpipe>) getList(INDEX_CONNECTINGPIPES, true);
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getConnectingpipes <em>Connectingpipes</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Connectingpipes</em>' attribute.
	 * @see #getConnectingpipes()
	 */
	public void setConnectingpipes(List<Connectingpipe> connectingpipes) {
		super.setByIndex(INDEX_CONNECTINGPIPES, connectingpipes);
	}

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
	public List<Safetyvalve> getSafetyvalves() {
		return (List<Safetyvalve>) getList(INDEX_SAFETYVALVES, true);
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getSafetyvalves <em>Safetyvalves</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Safetyvalves</em>' attribute.
	 * @see #getSafetyvalves()
	 */
	public void setSafetyvalves(List<Safetyvalve> safetyvalves) {
		super.setByIndex(INDEX_SAFETYVALVES, safetyvalves);
	}

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
	public List<Pressuregauge> getPressuregauges() {
		return (List<Pressuregauge>) getList(INDEX_PRESSUREGAUGES, true);
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getPressuregauges <em>Pressuregauges</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Pressuregauges</em>' attribute.
	 * @see #getPressuregauges()
	 */
	public void setPressuregauges(List<Pressuregauge> pressuregauges) {
		super.setByIndex(INDEX_PRESSUREGAUGES, pressuregauges);
	}

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
	public List<Levelgauge> getLevelgauges() {
		return (List<Levelgauge>) getList(INDEX_LEVELGAUGES, true);
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getLevelgauges <em>Levelgauges</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Levelgauges</em>' attribute.
	 * @see #getLevelgauges()
	 */
	public void setLevelgauges(List<Levelgauge> levelgauges) {
		super.setByIndex(INDEX_LEVELGAUGES, levelgauges);
	}

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
	public List<Temperatureinstrument> getTemperatureinstruments() {
		return (List<Temperatureinstrument>) getList(INDEX_TEMPERATUREINSTRUMENTS, true);
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getTemperatureinstruments <em>Temperatureinstruments</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Temperatureinstruments</em>' attribute.
	 * @see #getTemperatureinstruments()
	 */
	public void setTemperatureinstruments(List<Temperatureinstrument> temperatureinstruments) {
		super.setByIndex(INDEX_TEMPERATUREINSTRUMENTS, temperatureinstruments);
	}

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
	public List<Supplementaryinfo> getSupplementaryinfos() {
		return (List<Supplementaryinfo>) getList(INDEX_SUPPLEMENTARYINFOS, true);
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getSupplementaryinfos <em>Supplementaryinfos</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Supplementaryinfos</em>' attribute.
	 * @see #getSupplementaryinfos()
	 */
	public void setSupplementaryinfos(List<Supplementaryinfo> supplementaryinfos) {
		super.setByIndex(INDEX_SUPPLEMENTARYINFOS, supplementaryinfos);
	}

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
	public List<Equipmenthistoryinfo> getEquipmenthistoryinfos() {
		return (List<Equipmenthistoryinfo>) getList(INDEX_EQUIPMENTHISTORYINFOS, true);
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getEquipmenthistoryinfos <em>Equipmenthistoryinfos</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equipmenthistoryinfos</em>' attribute.
	 * @see #getEquipmenthistoryinfos()
	 */
	public void setEquipmenthistoryinfos(List<Equipmenthistoryinfo> equipmenthistoryinfos) {
		super.setByIndex(INDEX_EQUIPMENTHISTORYINFOS, equipmenthistoryinfos);
	}

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
	public List<Rupturedisc> getRupturediscs() {
		return (List<Rupturedisc>) getList(INDEX_RUPTUREDISCS, true);
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getRupturediscs <em>Rupturediscs</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Rupturediscs</em>' attribute.
	 * @see #getRupturediscs()
	 */
	public void setRupturediscs(List<Rupturedisc> rupturediscs) {
		super.setByIndex(INDEX_RUPTUREDISCS, rupturediscs);
	}

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
	public List<Shellgirthweld> getShellgirthwelds() {
		return (List<Shellgirthweld>) getList(INDEX_SHELLGIRTHWELDS, true);
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getShellgirthwelds <em>Shellgirthwelds</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Shellgirthwelds</em>' attribute.
	 * @see #getShellgirthwelds()
	 */
	public void setShellgirthwelds(List<Shellgirthweld> shellgirthwelds) {
		super.setByIndex(INDEX_SHELLGIRTHWELDS, shellgirthwelds);
	}


}