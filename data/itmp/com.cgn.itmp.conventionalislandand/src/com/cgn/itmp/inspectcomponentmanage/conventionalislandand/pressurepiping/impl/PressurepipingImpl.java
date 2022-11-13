/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl;

import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Equipmenthistoryinfo;
import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pipelinechemicalinfo;
import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pipeweldinformation;
import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping;
import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Waterpipefittinginfo;
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
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getJd <em>Jd</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getJz <em>Jz</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getSystem <em>System</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getTubetype <em>Tubetype</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getFlowchart <em>Flowchart</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getFlowchartno <em>Flowchartno</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getFlowchartversion <em>Flowchartversion</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getPipenumber <em>Pipenumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getPipename <em>Pipename</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getFaclevel <em>Faclevel</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getPipegclevel <em>Pipegclevel</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getNominaldiameter <em>Nominaldiameter</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getExternaldiameter <em>Externaldiameter</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getWallthickness <em>Wallthickness</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getVersionnumber <em>Versionnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getPipelinestartingpoint <em>Pipelinestartingpoint</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getPipelineendingpoint <em>Pipelineendingpoint</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getDesignpressure <em>Designpressure</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getWorkpressure <em>Workpressure</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getDesigntemperature <em>Designtemperature</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getWorktemperature <em>Worktemperature</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getConveyingmedium <em>Conveyingmedium</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getPipematerial <em>Pipematerial</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getPipematerialcode <em>Pipematerialcode</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getPipemainequipment <em>Pipemainequipment</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getPipefunction <em>Pipefunction</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getFlowspeed <em>Flowspeed</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getMaterialscontainingcr <em>Materialscontainingcr</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getChemicalph <em>Chemicalph</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getWeldingjointsnumber <em>Weldingjointsnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getThreewayquantity <em>Threewayquantity</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getEquiaxialgraph <em>Equiaxialgraph</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getEquiaxialgraphno <em>Equiaxialgraphno</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getEquiaxialgraphversion <em>Equiaxialgraphversion</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getBigandsmallheadsnumber <em>Bigandsmallheadsnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getElbownumber <em>Elbownumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getPipelinelength <em>Pipelinelength</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getHeatpreservation <em>Heatpreservation</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getValvecondition <em>Valvecondition</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getOrificecondition <em>Orificecondition</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getRcmcontent <em>Rcmcontent</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getRcmrecommendedperiod <em>Rcmrecommendedperiod</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getSafetylevel <em>Safetylevel</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getDesignunit <em>Designunit</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getInstallationunit <em>Installationunit</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getInstallationcompletiondate <em>Installationcompletiondate</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getInspectioninstitution <em>Inspectioninstitution</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getInspectiondate <em>Inspectiondate</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getCommissioningdate <em>Commissioningdate</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getRunningtime <em>Runningtime</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getUseunit <em>Useunit</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getMainproblems <em>Mainproblems</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getImportantpipeline <em>Importantpipeline</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getPipelinelayingmethod <em>Pipelinelayingmethod</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getTestconclusion <em>Testconclusion</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getRemarks <em>Remarks</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getIsdel <em>Isdel</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getOrderindex <em>Orderindex</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getDeleteperson <em>Deleteperson</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getDeletetime <em>Deletetime</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getWaterpipefittinginfos <em>Waterpipefittinginfos</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getPipeweldinformations <em>Pipeweldinformations</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getPipelinechemicalinfos <em>Pipelinechemicalinfos</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.PressurepipingImpl#getEquipmenthistoryinfos <em>Equipmenthistoryinfos</em>}</li>
 * </ul>
 * </p>
 *
 * @extends ExtendedDataObjectImpl;
 *
 * @implements Pressurepiping;
 */

public class PressurepipingImpl extends ExtendedDataObjectImpl implements Pressurepiping {
	/**
	 * Comment for <code>serialVersionUID</code>
	 */
	private static final long serialVersionUID = 1L;
	public final static int INDEX_JD = 0;
	public final static int INDEX_JZ = 1;
	public final static int INDEX_SYSTEM = 2;
	public final static int INDEX_TUBETYPE = 3;
	public final static int INDEX_FLOWCHART = 4;
	public final static int INDEX_FLOWCHARTNO = 5;
	public final static int INDEX_FLOWCHARTVERSION = 6;
	public final static int INDEX_PIPENUMBER = 7;
	public final static int INDEX_PIPENAME = 8;
	public final static int INDEX_FACLEVEL = 9;
	public final static int INDEX_PIPEGCLEVEL = 10;
	public final static int INDEX_NOMINALDIAMETER = 11;
	public final static int INDEX_EXTERNALDIAMETER = 12;
	public final static int INDEX_WALLTHICKNESS = 13;
	public final static int INDEX_VERSIONNUMBER = 14;
	public final static int INDEX_PIPELINESTARTINGPOINT = 15;
	public final static int INDEX_PIPELINEENDINGPOINT = 16;
	public final static int INDEX_DESIGNPRESSURE = 17;
	public final static int INDEX_WORKPRESSURE = 18;
	public final static int INDEX_DESIGNTEMPERATURE = 19;
	public final static int INDEX_WORKTEMPERATURE = 20;
	public final static int INDEX_CONVEYINGMEDIUM = 21;
	public final static int INDEX_PIPEMATERIAL = 22;
	public final static int INDEX_PIPEMATERIALCODE = 23;
	public final static int INDEX_PIPEMAINEQUIPMENT = 24;
	public final static int INDEX_PIPEFUNCTION = 25;
	public final static int INDEX_FLOWSPEED = 26;
	public final static int INDEX_MATERIALSCONTAININGCR = 27;
	public final static int INDEX_CHEMICALPH = 28;
	public final static int INDEX_WELDINGJOINTSNUMBER = 29;
	public final static int INDEX_THREEWAYQUANTITY = 30;
	public final static int INDEX_EQUIAXIALGRAPH = 31;
	public final static int INDEX_EQUIAXIALGRAPHNO = 32;
	public final static int INDEX_EQUIAXIALGRAPHVERSION = 33;
	public final static int INDEX_BIGANDSMALLHEADSNUMBER = 34;
	public final static int INDEX_ELBOWNUMBER = 35;
	public final static int INDEX_PIPELINELENGTH = 36;
	public final static int INDEX_HEATPRESERVATION = 37;
	public final static int INDEX_VALVECONDITION = 38;
	public final static int INDEX_ORIFICECONDITION = 39;
	public final static int INDEX_RCMCONTENT = 40;
	public final static int INDEX_RCMRECOMMENDEDPERIOD = 41;
	public final static int INDEX_SAFETYLEVEL = 42;
	public final static int INDEX_DESIGNUNIT = 43;
	public final static int INDEX_INSTALLATIONUNIT = 44;
	public final static int INDEX_INSTALLATIONCOMPLETIONDATE = 45;
	public final static int INDEX_INSPECTIONINSTITUTION = 46;
	public final static int INDEX_INSPECTIONDATE = 47;
	public final static int INDEX_COMMISSIONINGDATE = 48;
	public final static int INDEX_RUNNINGTIME = 49;
	public final static int INDEX_USEUNIT = 50;
	public final static int INDEX_MAINPROBLEMS = 51;
	public final static int INDEX_IMPORTANTPIPELINE = 52;
	public final static int INDEX_PIPELINELAYINGMETHOD = 53;
	public final static int INDEX_TESTCONCLUSION = 54;
	public final static int INDEX_REMARKS = 55;
	public final static int INDEX_ISDEL = 56;
	public final static int INDEX_ORDERINDEX = 57;
	public final static int INDEX_DELETEPERSON = 58;
	public final static int INDEX_DELETETIME = 59;
	public final static int INDEX_WATERPIPEFITTINGINFOS = 60;
	public final static int INDEX_PIPEWELDINFORMATIONS = 61;
	public final static int INDEX_PIPELINECHEMICALINFOS = 62;
	public final static int INDEX_EQUIPMENTHISTORYINFOS = 63;
	public static final int SDO_PROPERTY_COUNT = 64;

	public static final int EXTENDED_PROPERTY_COUNT = -1;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public PressurepipingImpl() {
		this(TYPE);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public PressurepipingImpl(Type type) {
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
	 * Returns the value of the '<em><b>Tubetype</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Tubetype</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Tubetype</em>' attribute.
	 * @see #setTubetype(java.lang.String)
	 */
	public String getTubetype() {
		return DataUtil.toString(super.getByIndex(INDEX_TUBETYPE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getTubetype <em>Tubetype</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Tubetype</em>' attribute.
	 * @see #getTubetype()
	 */
	public void setTubetype(String tubetype) {
		super.setByIndex(INDEX_TUBETYPE, tubetype);
	}

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
	public String getFlowchart() {
		return DataUtil.toString(super.getByIndex(INDEX_FLOWCHART, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getFlowchart <em>Flowchart</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Flowchart</em>' attribute.
	 * @see #getFlowchart()
	 */
	public void setFlowchart(String flowchart) {
		super.setByIndex(INDEX_FLOWCHART, flowchart);
	}

	/**
	 * Returns the value of the '<em><b>Flowchartno</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Flowchartno</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Flowchartno</em>' attribute.
	 * @see #setFlowchartno(java.lang.String)
	 */
	public String getFlowchartno() {
		return DataUtil.toString(super.getByIndex(INDEX_FLOWCHARTNO, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getFlowchartno <em>Flowchartno</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Flowchartno</em>' attribute.
	 * @see #getFlowchartno()
	 */
	public void setFlowchartno(String flowchartno) {
		super.setByIndex(INDEX_FLOWCHARTNO, flowchartno);
	}

	/**
	 * Returns the value of the '<em><b>Flowchartversion</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Flowchartversion</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Flowchartversion</em>' attribute.
	 * @see #setFlowchartversion(java.lang.String)
	 */
	public String getFlowchartversion() {
		return DataUtil.toString(super.getByIndex(INDEX_FLOWCHARTVERSION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getFlowchartversion <em>Flowchartversion</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Flowchartversion</em>' attribute.
	 * @see #getFlowchartversion()
	 */
	public void setFlowchartversion(String flowchartversion) {
		super.setByIndex(INDEX_FLOWCHARTVERSION, flowchartversion);
	}

	/**
	 * Returns the value of the '<em><b>Pipenumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Pipenumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Pipenumber</em>' attribute.
	 * @see #setPipenumber(java.lang.String)
	 */
	public String getPipenumber() {
		return DataUtil.toString(super.getByIndex(INDEX_PIPENUMBER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getPipenumber <em>Pipenumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Pipenumber</em>' attribute.
	 * @see #getPipenumber()
	 */
	public void setPipenumber(String pipenumber) {
		super.setByIndex(INDEX_PIPENUMBER, pipenumber);
	}

	/**
	 * Returns the value of the '<em><b>Pipename</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Pipename</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Pipename</em>' attribute.
	 * @see #setPipename(java.lang.String)
	 */
	public String getPipename() {
		return DataUtil.toString(super.getByIndex(INDEX_PIPENAME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getPipename <em>Pipename</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Pipename</em>' attribute.
	 * @see #getPipename()
	 */
	public void setPipename(String pipename) {
		super.setByIndex(INDEX_PIPENAME, pipename);
	}

	/**
	 * Returns the value of the '<em><b>Faclevel</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Faclevel</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Faclevel</em>' attribute.
	 * @see #setFaclevel(java.lang.String)
	 */
	public String getFaclevel() {
		return DataUtil.toString(super.getByIndex(INDEX_FACLEVEL, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getFaclevel <em>Faclevel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Faclevel</em>' attribute.
	 * @see #getFaclevel()
	 */
	public void setFaclevel(String faclevel) {
		super.setByIndex(INDEX_FACLEVEL, faclevel);
	}

	/**
	 * Returns the value of the '<em><b>Pipegclevel</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Pipegclevel</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Pipegclevel</em>' attribute.
	 * @see #setPipegclevel(java.lang.String)
	 */
	public String getPipegclevel() {
		return DataUtil.toString(super.getByIndex(INDEX_PIPEGCLEVEL, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getPipegclevel <em>Pipegclevel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Pipegclevel</em>' attribute.
	 * @see #getPipegclevel()
	 */
	public void setPipegclevel(String pipegclevel) {
		super.setByIndex(INDEX_PIPEGCLEVEL, pipegclevel);
	}

	/**
	 * Returns the value of the '<em><b>Nominaldiameter</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Nominaldiameter</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Nominaldiameter</em>' attribute.
	 * @see #setNominaldiameter(java.lang.String)
	 */
	public String getNominaldiameter() {
		return DataUtil.toString(super.getByIndex(INDEX_NOMINALDIAMETER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getNominaldiameter <em>Nominaldiameter</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Nominaldiameter</em>' attribute.
	 * @see #getNominaldiameter()
	 */
	public void setNominaldiameter(String nominaldiameter) {
		super.setByIndex(INDEX_NOMINALDIAMETER, nominaldiameter);
	}

	/**
	 * Returns the value of the '<em><b>Externaldiameter</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Externaldiameter</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Externaldiameter</em>' attribute.
	 * @see #setExternaldiameter(java.lang.String)
	 */
	public String getExternaldiameter() {
		return DataUtil.toString(super.getByIndex(INDEX_EXTERNALDIAMETER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getExternaldiameter <em>Externaldiameter</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Externaldiameter</em>' attribute.
	 * @see #getExternaldiameter()
	 */
	public void setExternaldiameter(String externaldiameter) {
		super.setByIndex(INDEX_EXTERNALDIAMETER, externaldiameter);
	}

	/**
	 * Returns the value of the '<em><b>Wallthickness</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Wallthickness</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Wallthickness</em>' attribute.
	 * @see #setWallthickness(java.lang.String)
	 */
	public String getWallthickness() {
		return DataUtil.toString(super.getByIndex(INDEX_WALLTHICKNESS, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getWallthickness <em>Wallthickness</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Wallthickness</em>' attribute.
	 * @see #getWallthickness()
	 */
	public void setWallthickness(String wallthickness) {
		super.setByIndex(INDEX_WALLTHICKNESS, wallthickness);
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
	 * Returns the value of the '<em><b>Pipelinestartingpoint</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Pipelinestartingpoint</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Pipelinestartingpoint</em>' attribute.
	 * @see #setPipelinestartingpoint(java.lang.String)
	 */
	public String getPipelinestartingpoint() {
		return DataUtil.toString(super.getByIndex(INDEX_PIPELINESTARTINGPOINT, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getPipelinestartingpoint <em>Pipelinestartingpoint</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Pipelinestartingpoint</em>' attribute.
	 * @see #getPipelinestartingpoint()
	 */
	public void setPipelinestartingpoint(String pipelinestartingpoint) {
		super.setByIndex(INDEX_PIPELINESTARTINGPOINT, pipelinestartingpoint);
	}

	/**
	 * Returns the value of the '<em><b>Pipelineendingpoint</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Pipelineendingpoint</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Pipelineendingpoint</em>' attribute.
	 * @see #setPipelineendingpoint(java.lang.String)
	 */
	public String getPipelineendingpoint() {
		return DataUtil.toString(super.getByIndex(INDEX_PIPELINEENDINGPOINT, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getPipelineendingpoint <em>Pipelineendingpoint</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Pipelineendingpoint</em>' attribute.
	 * @see #getPipelineendingpoint()
	 */
	public void setPipelineendingpoint(String pipelineendingpoint) {
		super.setByIndex(INDEX_PIPELINEENDINGPOINT, pipelineendingpoint);
	}

	/**
	 * Returns the value of the '<em><b>Designpressure</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Designpressure</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Designpressure</em>' attribute.
	 * @see #setDesignpressure(java.lang.String)
	 */
	public String getDesignpressure() {
		return DataUtil.toString(super.getByIndex(INDEX_DESIGNPRESSURE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getDesignpressure <em>Designpressure</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Designpressure</em>' attribute.
	 * @see #getDesignpressure()
	 */
	public void setDesignpressure(String designpressure) {
		super.setByIndex(INDEX_DESIGNPRESSURE, designpressure);
	}

	/**
	 * Returns the value of the '<em><b>Workpressure</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Workpressure</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Workpressure</em>' attribute.
	 * @see #setWorkpressure(java.lang.String)
	 */
	public String getWorkpressure() {
		return DataUtil.toString(super.getByIndex(INDEX_WORKPRESSURE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getWorkpressure <em>Workpressure</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Workpressure</em>' attribute.
	 * @see #getWorkpressure()
	 */
	public void setWorkpressure(String workpressure) {
		super.setByIndex(INDEX_WORKPRESSURE, workpressure);
	}

	/**
	 * Returns the value of the '<em><b>Designtemperature</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Designtemperature</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Designtemperature</em>' attribute.
	 * @see #setDesigntemperature(java.lang.String)
	 */
	public String getDesigntemperature() {
		return DataUtil.toString(super.getByIndex(INDEX_DESIGNTEMPERATURE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getDesigntemperature <em>Designtemperature</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Designtemperature</em>' attribute.
	 * @see #getDesigntemperature()
	 */
	public void setDesigntemperature(String designtemperature) {
		super.setByIndex(INDEX_DESIGNTEMPERATURE, designtemperature);
	}

	/**
	 * Returns the value of the '<em><b>Worktemperature</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Worktemperature</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Worktemperature</em>' attribute.
	 * @see #setWorktemperature(java.lang.String)
	 */
	public String getWorktemperature() {
		return DataUtil.toString(super.getByIndex(INDEX_WORKTEMPERATURE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getWorktemperature <em>Worktemperature</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Worktemperature</em>' attribute.
	 * @see #getWorktemperature()
	 */
	public void setWorktemperature(String worktemperature) {
		super.setByIndex(INDEX_WORKTEMPERATURE, worktemperature);
	}

	/**
	 * Returns the value of the '<em><b>Conveyingmedium</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Conveyingmedium</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Conveyingmedium</em>' attribute.
	 * @see #setConveyingmedium(java.lang.String)
	 */
	public String getConveyingmedium() {
		return DataUtil.toString(super.getByIndex(INDEX_CONVEYINGMEDIUM, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getConveyingmedium <em>Conveyingmedium</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Conveyingmedium</em>' attribute.
	 * @see #getConveyingmedium()
	 */
	public void setConveyingmedium(String conveyingmedium) {
		super.setByIndex(INDEX_CONVEYINGMEDIUM, conveyingmedium);
	}

	/**
	 * Returns the value of the '<em><b>Pipematerial</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Pipematerial</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Pipematerial</em>' attribute.
	 * @see #setPipematerial(java.lang.String)
	 */
	public String getPipematerial() {
		return DataUtil.toString(super.getByIndex(INDEX_PIPEMATERIAL, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getPipematerial <em>Pipematerial</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Pipematerial</em>' attribute.
	 * @see #getPipematerial()
	 */
	public void setPipematerial(String pipematerial) {
		super.setByIndex(INDEX_PIPEMATERIAL, pipematerial);
	}

	/**
	 * Returns the value of the '<em><b>Pipematerialcode</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Pipematerialcode</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Pipematerialcode</em>' attribute.
	 * @see #setPipematerialcode(java.lang.String)
	 */
	public String getPipematerialcode() {
		return DataUtil.toString(super.getByIndex(INDEX_PIPEMATERIALCODE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getPipematerialcode <em>Pipematerialcode</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Pipematerialcode</em>' attribute.
	 * @see #getPipematerialcode()
	 */
	public void setPipematerialcode(String pipematerialcode) {
		super.setByIndex(INDEX_PIPEMATERIALCODE, pipematerialcode);
	}

	/**
	 * Returns the value of the '<em><b>Pipemainequipment</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Pipemainequipment</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Pipemainequipment</em>' attribute.
	 * @see #setPipemainequipment(java.lang.String)
	 */
	public String getPipemainequipment() {
		return DataUtil.toString(super.getByIndex(INDEX_PIPEMAINEQUIPMENT, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getPipemainequipment <em>Pipemainequipment</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Pipemainequipment</em>' attribute.
	 * @see #getPipemainequipment()
	 */
	public void setPipemainequipment(String pipemainequipment) {
		super.setByIndex(INDEX_PIPEMAINEQUIPMENT, pipemainequipment);
	}

	/**
	 * Returns the value of the '<em><b>Pipefunction</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Pipefunction</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Pipefunction</em>' attribute.
	 * @see #setPipefunction(java.lang.String)
	 */
	public String getPipefunction() {
		return DataUtil.toString(super.getByIndex(INDEX_PIPEFUNCTION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getPipefunction <em>Pipefunction</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Pipefunction</em>' attribute.
	 * @see #getPipefunction()
	 */
	public void setPipefunction(String pipefunction) {
		super.setByIndex(INDEX_PIPEFUNCTION, pipefunction);
	}

	/**
	 * Returns the value of the '<em><b>Flowspeed</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Flowspeed</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Flowspeed</em>' attribute.
	 * @see #setFlowspeed(java.lang.String)
	 */
	public String getFlowspeed() {
		return DataUtil.toString(super.getByIndex(INDEX_FLOWSPEED, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getFlowspeed <em>Flowspeed</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Flowspeed</em>' attribute.
	 * @see #getFlowspeed()
	 */
	public void setFlowspeed(String flowspeed) {
		super.setByIndex(INDEX_FLOWSPEED, flowspeed);
	}

	/**
	 * Returns the value of the '<em><b>Materialscontainingcr</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Materialscontainingcr</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Materialscontainingcr</em>' attribute.
	 * @see #setMaterialscontainingcr(java.lang.String)
	 */
	public String getMaterialscontainingcr() {
		return DataUtil.toString(super.getByIndex(INDEX_MATERIALSCONTAININGCR, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getMaterialscontainingcr <em>Materialscontainingcr</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Materialscontainingcr</em>' attribute.
	 * @see #getMaterialscontainingcr()
	 */
	public void setMaterialscontainingcr(String materialscontainingcr) {
		super.setByIndex(INDEX_MATERIALSCONTAININGCR, materialscontainingcr);
	}

	/**
	 * Returns the value of the '<em><b>Chemicalph</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Chemicalph</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Chemicalph</em>' attribute.
	 * @see #setChemicalph(java.lang.String)
	 */
	public String getChemicalph() {
		return DataUtil.toString(super.getByIndex(INDEX_CHEMICALPH, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getChemicalph <em>Chemicalph</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Chemicalph</em>' attribute.
	 * @see #getChemicalph()
	 */
	public void setChemicalph(String chemicalph) {
		super.setByIndex(INDEX_CHEMICALPH, chemicalph);
	}

	/**
	 * Returns the value of the '<em><b>Weldingjointsnumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Weldingjointsnumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Weldingjointsnumber</em>' attribute.
	 * @see #setWeldingjointsnumber(java.lang.String)
	 */
	public String getWeldingjointsnumber() {
		return DataUtil.toString(super.getByIndex(INDEX_WELDINGJOINTSNUMBER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getWeldingjointsnumber <em>Weldingjointsnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Weldingjointsnumber</em>' attribute.
	 * @see #getWeldingjointsnumber()
	 */
	public void setWeldingjointsnumber(String weldingjointsnumber) {
		super.setByIndex(INDEX_WELDINGJOINTSNUMBER, weldingjointsnumber);
	}

	/**
	 * Returns the value of the '<em><b>Threewayquantity</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Threewayquantity</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Threewayquantity</em>' attribute.
	 * @see #setThreewayquantity(java.lang.String)
	 */
	public String getThreewayquantity() {
		return DataUtil.toString(super.getByIndex(INDEX_THREEWAYQUANTITY, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getThreewayquantity <em>Threewayquantity</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Threewayquantity</em>' attribute.
	 * @see #getThreewayquantity()
	 */
	public void setThreewayquantity(String threewayquantity) {
		super.setByIndex(INDEX_THREEWAYQUANTITY, threewayquantity);
	}

	/**
	 * Returns the value of the '<em><b>Equiaxialgraph</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Equiaxialgraph</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Equiaxialgraph</em>' attribute.
	 * @see #setEquiaxialgraph(java.lang.String)
	 */
	public String getEquiaxialgraph() {
		return DataUtil.toString(super.getByIndex(INDEX_EQUIAXIALGRAPH, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getEquiaxialgraph <em>Equiaxialgraph</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equiaxialgraph</em>' attribute.
	 * @see #getEquiaxialgraph()
	 */
	public void setEquiaxialgraph(String equiaxialgraph) {
		super.setByIndex(INDEX_EQUIAXIALGRAPH, equiaxialgraph);
	}

	/**
	 * Returns the value of the '<em><b>Equiaxialgraphno</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Equiaxialgraphno</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Equiaxialgraphno</em>' attribute.
	 * @see #setEquiaxialgraphno(java.lang.String)
	 */
	public String getEquiaxialgraphno() {
		return DataUtil.toString(super.getByIndex(INDEX_EQUIAXIALGRAPHNO, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getEquiaxialgraphno <em>Equiaxialgraphno</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equiaxialgraphno</em>' attribute.
	 * @see #getEquiaxialgraphno()
	 */
	public void setEquiaxialgraphno(String equiaxialgraphno) {
		super.setByIndex(INDEX_EQUIAXIALGRAPHNO, equiaxialgraphno);
	}

	/**
	 * Returns the value of the '<em><b>Equiaxialgraphversion</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Equiaxialgraphversion</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Equiaxialgraphversion</em>' attribute.
	 * @see #setEquiaxialgraphversion(java.lang.String)
	 */
	public String getEquiaxialgraphversion() {
		return DataUtil.toString(super.getByIndex(INDEX_EQUIAXIALGRAPHVERSION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getEquiaxialgraphversion <em>Equiaxialgraphversion</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equiaxialgraphversion</em>' attribute.
	 * @see #getEquiaxialgraphversion()
	 */
	public void setEquiaxialgraphversion(String equiaxialgraphversion) {
		super.setByIndex(INDEX_EQUIAXIALGRAPHVERSION, equiaxialgraphversion);
	}

	/**
	 * Returns the value of the '<em><b>Bigandsmallheadsnumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Bigandsmallheadsnumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Bigandsmallheadsnumber</em>' attribute.
	 * @see #setBigandsmallheadsnumber(java.lang.String)
	 */
	public String getBigandsmallheadsnumber() {
		return DataUtil.toString(super.getByIndex(INDEX_BIGANDSMALLHEADSNUMBER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getBigandsmallheadsnumber <em>Bigandsmallheadsnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Bigandsmallheadsnumber</em>' attribute.
	 * @see #getBigandsmallheadsnumber()
	 */
	public void setBigandsmallheadsnumber(String bigandsmallheadsnumber) {
		super.setByIndex(INDEX_BIGANDSMALLHEADSNUMBER, bigandsmallheadsnumber);
	}

	/**
	 * Returns the value of the '<em><b>Elbownumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Elbownumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Elbownumber</em>' attribute.
	 * @see #setElbownumber(java.lang.String)
	 */
	public String getElbownumber() {
		return DataUtil.toString(super.getByIndex(INDEX_ELBOWNUMBER, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getElbownumber <em>Elbownumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Elbownumber</em>' attribute.
	 * @see #getElbownumber()
	 */
	public void setElbownumber(String elbownumber) {
		super.setByIndex(INDEX_ELBOWNUMBER, elbownumber);
	}

	/**
	 * Returns the value of the '<em><b>Pipelinelength</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Pipelinelength</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Pipelinelength</em>' attribute.
	 * @see #setPipelinelength(java.lang.String)
	 */
	public String getPipelinelength() {
		return DataUtil.toString(super.getByIndex(INDEX_PIPELINELENGTH, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getPipelinelength <em>Pipelinelength</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Pipelinelength</em>' attribute.
	 * @see #getPipelinelength()
	 */
	public void setPipelinelength(String pipelinelength) {
		super.setByIndex(INDEX_PIPELINELENGTH, pipelinelength);
	}

	/**
	 * Returns the value of the '<em><b>Heatpreservation</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Heatpreservation</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Heatpreservation</em>' attribute.
	 * @see #setHeatpreservation(java.lang.String)
	 */
	public String getHeatpreservation() {
		return DataUtil.toString(super.getByIndex(INDEX_HEATPRESERVATION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getHeatpreservation <em>Heatpreservation</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Heatpreservation</em>' attribute.
	 * @see #getHeatpreservation()
	 */
	public void setHeatpreservation(String heatpreservation) {
		super.setByIndex(INDEX_HEATPRESERVATION, heatpreservation);
	}

	/**
	 * Returns the value of the '<em><b>Valvecondition</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Valvecondition</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Valvecondition</em>' attribute.
	 * @see #setValvecondition(java.lang.String)
	 */
	public String getValvecondition() {
		return DataUtil.toString(super.getByIndex(INDEX_VALVECONDITION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getValvecondition <em>Valvecondition</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Valvecondition</em>' attribute.
	 * @see #getValvecondition()
	 */
	public void setValvecondition(String valvecondition) {
		super.setByIndex(INDEX_VALVECONDITION, valvecondition);
	}

	/**
	 * Returns the value of the '<em><b>Orificecondition</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Orificecondition</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Orificecondition</em>' attribute.
	 * @see #setOrificecondition(java.lang.String)
	 */
	public String getOrificecondition() {
		return DataUtil.toString(super.getByIndex(INDEX_ORIFICECONDITION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getOrificecondition <em>Orificecondition</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Orificecondition</em>' attribute.
	 * @see #getOrificecondition()
	 */
	public void setOrificecondition(String orificecondition) {
		super.setByIndex(INDEX_ORIFICECONDITION, orificecondition);
	}

	/**
	 * Returns the value of the '<em><b>Rcmcontent</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Rcmcontent</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Rcmcontent</em>' attribute.
	 * @see #setRcmcontent(java.lang.String)
	 */
	public String getRcmcontent() {
		return DataUtil.toString(super.getByIndex(INDEX_RCMCONTENT, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getRcmcontent <em>Rcmcontent</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Rcmcontent</em>' attribute.
	 * @see #getRcmcontent()
	 */
	public void setRcmcontent(String rcmcontent) {
		super.setByIndex(INDEX_RCMCONTENT, rcmcontent);
	}

	/**
	 * Returns the value of the '<em><b>Rcmrecommendedperiod</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Rcmrecommendedperiod</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Rcmrecommendedperiod</em>' attribute.
	 * @see #setRcmrecommendedperiod(java.lang.String)
	 */
	public String getRcmrecommendedperiod() {
		return DataUtil.toString(super.getByIndex(INDEX_RCMRECOMMENDEDPERIOD, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getRcmrecommendedperiod <em>Rcmrecommendedperiod</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Rcmrecommendedperiod</em>' attribute.
	 * @see #getRcmrecommendedperiod()
	 */
	public void setRcmrecommendedperiod(String rcmrecommendedperiod) {
		super.setByIndex(INDEX_RCMRECOMMENDEDPERIOD, rcmrecommendedperiod);
	}

	/**
	 * Returns the value of the '<em><b>Safetylevel</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Safetylevel</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Safetylevel</em>' attribute.
	 * @see #setSafetylevel(java.lang.String)
	 */
	public String getSafetylevel() {
		return DataUtil.toString(super.getByIndex(INDEX_SAFETYLEVEL, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getSafetylevel <em>Safetylevel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Safetylevel</em>' attribute.
	 * @see #getSafetylevel()
	 */
	public void setSafetylevel(String safetylevel) {
		super.setByIndex(INDEX_SAFETYLEVEL, safetylevel);
	}

	/**
	 * Returns the value of the '<em><b>Designunit</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Designunit</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Designunit</em>' attribute.
	 * @see #setDesignunit(java.lang.String)
	 */
	public String getDesignunit() {
		return DataUtil.toString(super.getByIndex(INDEX_DESIGNUNIT, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getDesignunit <em>Designunit</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Designunit</em>' attribute.
	 * @see #getDesignunit()
	 */
	public void setDesignunit(String designunit) {
		super.setByIndex(INDEX_DESIGNUNIT, designunit);
	}

	/**
	 * Returns the value of the '<em><b>Installationunit</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Installationunit</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Installationunit</em>' attribute.
	 * @see #setInstallationunit(java.lang.String)
	 */
	public String getInstallationunit() {
		return DataUtil.toString(super.getByIndex(INDEX_INSTALLATIONUNIT, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getInstallationunit <em>Installationunit</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Installationunit</em>' attribute.
	 * @see #getInstallationunit()
	 */
	public void setInstallationunit(String installationunit) {
		super.setByIndex(INDEX_INSTALLATIONUNIT, installationunit);
	}

	/**
	 * Returns the value of the '<em><b>Installationcompletiondate</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Installationcompletiondate</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Installationcompletiondate</em>' attribute.
	 * @see #setInstallationcompletiondate(java.lang.String)
	 */
	public String getInstallationcompletiondate() {
		return DataUtil.toString(super.getByIndex(INDEX_INSTALLATIONCOMPLETIONDATE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getInstallationcompletiondate <em>Installationcompletiondate</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Installationcompletiondate</em>' attribute.
	 * @see #getInstallationcompletiondate()
	 */
	public void setInstallationcompletiondate(String installationcompletiondate) {
		super.setByIndex(INDEX_INSTALLATIONCOMPLETIONDATE, installationcompletiondate);
	}

	/**
	 * Returns the value of the '<em><b>Inspectioninstitution</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Inspectioninstitution</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Inspectioninstitution</em>' attribute.
	 * @see #setInspectioninstitution(java.lang.String)
	 */
	public String getInspectioninstitution() {
		return DataUtil.toString(super.getByIndex(INDEX_INSPECTIONINSTITUTION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getInspectioninstitution <em>Inspectioninstitution</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Inspectioninstitution</em>' attribute.
	 * @see #getInspectioninstitution()
	 */
	public void setInspectioninstitution(String inspectioninstitution) {
		super.setByIndex(INDEX_INSPECTIONINSTITUTION, inspectioninstitution);
	}

	/**
	 * Returns the value of the '<em><b>Inspectiondate</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Inspectiondate</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Inspectiondate</em>' attribute.
	 * @see #setInspectiondate(java.lang.String)
	 */
	public String getInspectiondate() {
		return DataUtil.toString(super.getByIndex(INDEX_INSPECTIONDATE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getInspectiondate <em>Inspectiondate</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Inspectiondate</em>' attribute.
	 * @see #getInspectiondate()
	 */
	public void setInspectiondate(String inspectiondate) {
		super.setByIndex(INDEX_INSPECTIONDATE, inspectiondate);
	}

	/**
	 * Returns the value of the '<em><b>Commissioningdate</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Commissioningdate</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Commissioningdate</em>' attribute.
	 * @see #setCommissioningdate(java.lang.String)
	 */
	public String getCommissioningdate() {
		return DataUtil.toString(super.getByIndex(INDEX_COMMISSIONINGDATE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getCommissioningdate <em>Commissioningdate</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Commissioningdate</em>' attribute.
	 * @see #getCommissioningdate()
	 */
	public void setCommissioningdate(String commissioningdate) {
		super.setByIndex(INDEX_COMMISSIONINGDATE, commissioningdate);
	}

	/**
	 * Returns the value of the '<em><b>Runningtime</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Runningtime</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Runningtime</em>' attribute.
	 * @see #setRunningtime(java.lang.String)
	 */
	public String getRunningtime() {
		return DataUtil.toString(super.getByIndex(INDEX_RUNNINGTIME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getRunningtime <em>Runningtime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Runningtime</em>' attribute.
	 * @see #getRunningtime()
	 */
	public void setRunningtime(String runningtime) {
		super.setByIndex(INDEX_RUNNINGTIME, runningtime);
	}

	/**
	 * Returns the value of the '<em><b>Useunit</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Useunit</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Useunit</em>' attribute.
	 * @see #setUseunit(java.lang.String)
	 */
	public String getUseunit() {
		return DataUtil.toString(super.getByIndex(INDEX_USEUNIT, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getUseunit <em>Useunit</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Useunit</em>' attribute.
	 * @see #getUseunit()
	 */
	public void setUseunit(String useunit) {
		super.setByIndex(INDEX_USEUNIT, useunit);
	}

	/**
	 * Returns the value of the '<em><b>Mainproblems</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Mainproblems</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Mainproblems</em>' attribute.
	 * @see #setMainproblems(java.lang.String)
	 */
	public String getMainproblems() {
		return DataUtil.toString(super.getByIndex(INDEX_MAINPROBLEMS, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getMainproblems <em>Mainproblems</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Mainproblems</em>' attribute.
	 * @see #getMainproblems()
	 */
	public void setMainproblems(String mainproblems) {
		super.setByIndex(INDEX_MAINPROBLEMS, mainproblems);
	}

	/**
	 * Returns the value of the '<em><b>Importantpipeline</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Importantpipeline</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Importantpipeline</em>' attribute.
	 * @see #setImportantpipeline(java.lang.String)
	 */
	public String getImportantpipeline() {
		return DataUtil.toString(super.getByIndex(INDEX_IMPORTANTPIPELINE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getImportantpipeline <em>Importantpipeline</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Importantpipeline</em>' attribute.
	 * @see #getImportantpipeline()
	 */
	public void setImportantpipeline(String importantpipeline) {
		super.setByIndex(INDEX_IMPORTANTPIPELINE, importantpipeline);
	}

	/**
	 * Returns the value of the '<em><b>Pipelinelayingmethod</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Pipelinelayingmethod</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Pipelinelayingmethod</em>' attribute.
	 * @see #setPipelinelayingmethod(java.lang.String)
	 */
	public String getPipelinelayingmethod() {
		return DataUtil.toString(super.getByIndex(INDEX_PIPELINELAYINGMETHOD, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getPipelinelayingmethod <em>Pipelinelayingmethod</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Pipelinelayingmethod</em>' attribute.
	 * @see #getPipelinelayingmethod()
	 */
	public void setPipelinelayingmethod(String pipelinelayingmethod) {
		super.setByIndex(INDEX_PIPELINELAYINGMETHOD, pipelinelayingmethod);
	}

	/**
	 * Returns the value of the '<em><b>Testconclusion</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Testconclusion</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Testconclusion</em>' attribute.
	 * @see #setTestconclusion(java.lang.String)
	 */
	public String getTestconclusion() {
		return DataUtil.toString(super.getByIndex(INDEX_TESTCONCLUSION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getTestconclusion <em>Testconclusion</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Testconclusion</em>' attribute.
	 * @see #getTestconclusion()
	 */
	public void setTestconclusion(String testconclusion) {
		super.setByIndex(INDEX_TESTCONCLUSION, testconclusion);
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
	 * @see #setIsdel(int)
	 */
	public int getIsdel() {
		return DataUtil.toInt(super.getByIndex(INDEX_ISDEL, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getIsdel <em>Isdel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Isdel</em>' attribute.
	 * @see #getIsdel()
	 */
	public void setIsdel(int isdel) {
		super.setByIndex(INDEX_ISDEL, isdel);
	}

	/**
	 * Returns the value of the '<em><b>Orderindex</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Orderindex</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Orderindex</em>' attribute.
	 * @see #setOrderindex(java.lang.String)
	 */
	public String getOrderindex() {
		return DataUtil.toString(super.getByIndex(INDEX_ORDERINDEX, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getOrderindex <em>Orderindex</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Orderindex</em>' attribute.
	 * @see #getOrderindex()
	 */
	public void setOrderindex(String orderindex) {
		super.setByIndex(INDEX_ORDERINDEX, orderindex);
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
	 * Returns the value of the '<em><b>Waterpipefittinginfos</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Waterpipefittinginfos</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Waterpipefittinginfos</em>' attribute.
	 * @see #setWaterpipefittinginfos(com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Waterpipefittinginfo)
	 */
	public List<Waterpipefittinginfo> getWaterpipefittinginfos() {
		return (List<Waterpipefittinginfo>) getList(INDEX_WATERPIPEFITTINGINFOS, true);
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getWaterpipefittinginfos <em>Waterpipefittinginfos</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Waterpipefittinginfos</em>' attribute.
	 * @see #getWaterpipefittinginfos()
	 */
	public void setWaterpipefittinginfos(List<Waterpipefittinginfo> waterpipefittinginfos) {
		super.setByIndex(INDEX_WATERPIPEFITTINGINFOS, waterpipefittinginfos);
	}

	/**
	 * Returns the value of the '<em><b>Pipeweldinformations</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Pipeweldinformations</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Pipeweldinformations</em>' attribute.
	 * @see #setPipeweldinformations(com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pipeweldinformation)
	 */
	public List<Pipeweldinformation> getPipeweldinformations() {
		return (List<Pipeweldinformation>) getList(INDEX_PIPEWELDINFORMATIONS, true);
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getPipeweldinformations <em>Pipeweldinformations</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Pipeweldinformations</em>' attribute.
	 * @see #getPipeweldinformations()
	 */
	public void setPipeweldinformations(List<Pipeweldinformation> pipeweldinformations) {
		super.setByIndex(INDEX_PIPEWELDINFORMATIONS, pipeweldinformations);
	}

	/**
	 * Returns the value of the '<em><b>Pipelinechemicalinfos</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Pipelinechemicalinfos</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Pipelinechemicalinfos</em>' attribute.
	 * @see #setPipelinechemicalinfos(com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pipelinechemicalinfo)
	 */
	public List<Pipelinechemicalinfo> getPipelinechemicalinfos() {
		return (List<Pipelinechemicalinfo>) getList(INDEX_PIPELINECHEMICALINFOS, true);
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getPipelinechemicalinfos <em>Pipelinechemicalinfos</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Pipelinechemicalinfos</em>' attribute.
	 * @see #getPipelinechemicalinfos()
	 */
	public void setPipelinechemicalinfos(List<Pipelinechemicalinfo> pipelinechemicalinfos) {
		super.setByIndex(INDEX_PIPELINECHEMICALINFOS, pipelinechemicalinfos);
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
	 * @see #setEquipmenthistoryinfos(com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Equipmenthistoryinfo)
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


}