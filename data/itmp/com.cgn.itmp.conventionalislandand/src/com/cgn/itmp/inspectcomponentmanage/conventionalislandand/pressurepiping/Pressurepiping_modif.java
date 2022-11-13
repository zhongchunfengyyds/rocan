/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping;

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
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getJd <em>Jd</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getJz <em>Jz</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getSystem <em>System</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getTubetype <em>Tubetype</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getFlowchart <em>Flowchart</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getFlowchartno <em>Flowchartno</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getFlowchartversion <em>Flowchartversion</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getPipenumber <em>Pipenumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getPipename <em>Pipename</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getFaclevel <em>Faclevel</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getPipegclevel <em>Pipegclevel</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getNominaldiameter <em>Nominaldiameter</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getExternaldiameter <em>Externaldiameter</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getWallthickness <em>Wallthickness</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getVersionnumber <em>Versionnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getPipelinestartingpoint <em>Pipelinestartingpoint</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getPipelineendingpoint <em>Pipelineendingpoint</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getDesignpressure <em>Designpressure</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getWorkpressure <em>Workpressure</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getDesigntemperature <em>Designtemperature</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getWorktemperature <em>Worktemperature</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getConveyingmedium <em>Conveyingmedium</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getPipematerial <em>Pipematerial</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getPipematerialcode <em>Pipematerialcode</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getPipemainequipment <em>Pipemainequipment</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getPipefunction <em>Pipefunction</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getFlowspeed <em>Flowspeed</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getMaterialscontainingcr <em>Materialscontainingcr</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getChemicalph <em>Chemicalph</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getWeldingjointsnumber <em>Weldingjointsnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getThreewayquantity <em>Threewayquantity</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getEquiaxialgraph <em>Equiaxialgraph</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getEquiaxialgraphno <em>Equiaxialgraphno</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getEquiaxialgraphversion <em>Equiaxialgraphversion</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getBigandsmallheadsnumber <em>Bigandsmallheadsnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getElbownumber <em>Elbownumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getPipelinelength <em>Pipelinelength</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getHeatpreservation <em>Heatpreservation</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getValvecondition <em>Valvecondition</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getOrificecondition <em>Orificecondition</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getRcmcontent <em>Rcmcontent</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getRcmrecommendedperiod <em>Rcmrecommendedperiod</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getSafetylevel <em>Safetylevel</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getDesignunit <em>Designunit</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getInstallationunit <em>Installationunit</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getInstallationcompletiondate <em>Installationcompletiondate</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getInspectioninstitution <em>Inspectioninstitution</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getInspectiondate <em>Inspectiondate</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getCommissioningdate <em>Commissioningdate</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getRunningtime <em>Runningtime</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getUseunit <em>Useunit</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getMainproblems <em>Mainproblems</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getImportantpipeline <em>Importantpipeline</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getPipelinelayingmethod <em>Pipelinelayingmethod</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getTestconclusion <em>Testconclusion</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getRemarks <em>Remarks</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getIsdel <em>Isdel</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getOrderindex <em>Orderindex</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getDeleteperson <em>Deleteperson</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getDeletetime <em>Deletetime</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getFlowchartfileid <em>Flowchartfileid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getFlowchartfilepath <em>Flowchartfilepath</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getEquiaxialgraphfileid <em>Equiaxialgraphfileid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getEquiaxialgraphfilepath <em>Equiaxialgraphfilepath</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getProcessInstId <em>ProcessInstId</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getJhry <em>Jhry</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getCcry <em>Ccry</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getChangeReasons <em>ChangeReasons</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getChangeuser <em>Changeuser</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getChangetime <em>Changetime</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getChangeinfo <em>Changeinfo</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getWaterpipefittinginfos <em>Waterpipefittinginfos</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getPipeweldinformations <em>Pipeweldinformations</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getPipelinechemicalinfos <em>Pipelinechemicalinfos</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getEquipmenthistoryinfos <em>Equipmenthistoryinfos</em>}</li>
 * </ul>
 * </p>
 *
 * @extends DataObject;
 */
public interface Pressurepiping_modif extends DataObject {

	public static final String QNAME = "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif";

	public static final Type TYPE = TypeHelper.INSTANCE.getType("com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping", "Pressurepiping_modif");

	public static final IObjectFactory<Pressurepiping_modif> FACTORY = new IObjectFactory<Pressurepiping_modif>() {
		public Pressurepiping_modif create() {
			return (Pressurepiping_modif) DataFactory.INSTANCE.create(TYPE);
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getJd <em>Jd</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getJz <em>Jz</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Jz</em>' attribute.
	 * @see #getJz()
	 */
	public void setJz(String jz);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getSystem <em>System</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>System</em>' attribute.
	 * @see #getSystem()
	 */
	public void setSystem(String system);

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
	public String getTubetype();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getTubetype <em>Tubetype</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Tubetype</em>' attribute.
	 * @see #getTubetype()
	 */
	public void setTubetype(String tubetype);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getFlowchart <em>Flowchart</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Flowchart</em>' attribute.
	 * @see #getFlowchart()
	 */
	public void setFlowchart(String flowchart);

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
	public String getFlowchartno();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getFlowchartno <em>Flowchartno</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Flowchartno</em>' attribute.
	 * @see #getFlowchartno()
	 */
	public void setFlowchartno(String flowchartno);

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
	public String getFlowchartversion();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getFlowchartversion <em>Flowchartversion</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Flowchartversion</em>' attribute.
	 * @see #getFlowchartversion()
	 */
	public void setFlowchartversion(String flowchartversion);

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
	public String getPipenumber();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getPipenumber <em>Pipenumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Pipenumber</em>' attribute.
	 * @see #getPipenumber()
	 */
	public void setPipenumber(String pipenumber);

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
	public String getPipename();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getPipename <em>Pipename</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Pipename</em>' attribute.
	 * @see #getPipename()
	 */
	public void setPipename(String pipename);

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
	public String getFaclevel();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getFaclevel <em>Faclevel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Faclevel</em>' attribute.
	 * @see #getFaclevel()
	 */
	public void setFaclevel(String faclevel);

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
	public String getPipegclevel();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getPipegclevel <em>Pipegclevel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Pipegclevel</em>' attribute.
	 * @see #getPipegclevel()
	 */
	public void setPipegclevel(String pipegclevel);

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
	public String getNominaldiameter();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getNominaldiameter <em>Nominaldiameter</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Nominaldiameter</em>' attribute.
	 * @see #getNominaldiameter()
	 */
	public void setNominaldiameter(String nominaldiameter);

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
	public String getExternaldiameter();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getExternaldiameter <em>Externaldiameter</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Externaldiameter</em>' attribute.
	 * @see #getExternaldiameter()
	 */
	public void setExternaldiameter(String externaldiameter);

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
	public String getWallthickness();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getWallthickness <em>Wallthickness</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Wallthickness</em>' attribute.
	 * @see #getWallthickness()
	 */
	public void setWallthickness(String wallthickness);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getVersionnumber <em>Versionnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Versionnumber</em>' attribute.
	 * @see #getVersionnumber()
	 */
	public void setVersionnumber(String versionnumber);

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
	public String getPipelinestartingpoint();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getPipelinestartingpoint <em>Pipelinestartingpoint</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Pipelinestartingpoint</em>' attribute.
	 * @see #getPipelinestartingpoint()
	 */
	public void setPipelinestartingpoint(String pipelinestartingpoint);

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
	public String getPipelineendingpoint();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getPipelineendingpoint <em>Pipelineendingpoint</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Pipelineendingpoint</em>' attribute.
	 * @see #getPipelineendingpoint()
	 */
	public void setPipelineendingpoint(String pipelineendingpoint);

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
	public String getDesignpressure();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getDesignpressure <em>Designpressure</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Designpressure</em>' attribute.
	 * @see #getDesignpressure()
	 */
	public void setDesignpressure(String designpressure);

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
	public String getWorkpressure();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getWorkpressure <em>Workpressure</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Workpressure</em>' attribute.
	 * @see #getWorkpressure()
	 */
	public void setWorkpressure(String workpressure);

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
	public String getDesigntemperature();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getDesigntemperature <em>Designtemperature</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Designtemperature</em>' attribute.
	 * @see #getDesigntemperature()
	 */
	public void setDesigntemperature(String designtemperature);

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
	public String getWorktemperature();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getWorktemperature <em>Worktemperature</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Worktemperature</em>' attribute.
	 * @see #getWorktemperature()
	 */
	public void setWorktemperature(String worktemperature);

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
	public String getConveyingmedium();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getConveyingmedium <em>Conveyingmedium</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Conveyingmedium</em>' attribute.
	 * @see #getConveyingmedium()
	 */
	public void setConveyingmedium(String conveyingmedium);

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
	public String getPipematerial();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getPipematerial <em>Pipematerial</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Pipematerial</em>' attribute.
	 * @see #getPipematerial()
	 */
	public void setPipematerial(String pipematerial);

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
	public String getPipematerialcode();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getPipematerialcode <em>Pipematerialcode</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Pipematerialcode</em>' attribute.
	 * @see #getPipematerialcode()
	 */
	public void setPipematerialcode(String pipematerialcode);

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
	public String getPipemainequipment();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getPipemainequipment <em>Pipemainequipment</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Pipemainequipment</em>' attribute.
	 * @see #getPipemainequipment()
	 */
	public void setPipemainequipment(String pipemainequipment);

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
	public String getPipefunction();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getPipefunction <em>Pipefunction</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Pipefunction</em>' attribute.
	 * @see #getPipefunction()
	 */
	public void setPipefunction(String pipefunction);

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
	public String getFlowspeed();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getFlowspeed <em>Flowspeed</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Flowspeed</em>' attribute.
	 * @see #getFlowspeed()
	 */
	public void setFlowspeed(String flowspeed);

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
	public String getMaterialscontainingcr();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getMaterialscontainingcr <em>Materialscontainingcr</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Materialscontainingcr</em>' attribute.
	 * @see #getMaterialscontainingcr()
	 */
	public void setMaterialscontainingcr(String materialscontainingcr);

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
	public String getChemicalph();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getChemicalph <em>Chemicalph</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Chemicalph</em>' attribute.
	 * @see #getChemicalph()
	 */
	public void setChemicalph(String chemicalph);

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
	public String getWeldingjointsnumber();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getWeldingjointsnumber <em>Weldingjointsnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Weldingjointsnumber</em>' attribute.
	 * @see #getWeldingjointsnumber()
	 */
	public void setWeldingjointsnumber(String weldingjointsnumber);

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
	public String getThreewayquantity();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getThreewayquantity <em>Threewayquantity</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Threewayquantity</em>' attribute.
	 * @see #getThreewayquantity()
	 */
	public void setThreewayquantity(String threewayquantity);

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
	public String getEquiaxialgraph();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getEquiaxialgraph <em>Equiaxialgraph</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equiaxialgraph</em>' attribute.
	 * @see #getEquiaxialgraph()
	 */
	public void setEquiaxialgraph(String equiaxialgraph);

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
	public String getEquiaxialgraphno();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getEquiaxialgraphno <em>Equiaxialgraphno</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equiaxialgraphno</em>' attribute.
	 * @see #getEquiaxialgraphno()
	 */
	public void setEquiaxialgraphno(String equiaxialgraphno);

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
	public String getEquiaxialgraphversion();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getEquiaxialgraphversion <em>Equiaxialgraphversion</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equiaxialgraphversion</em>' attribute.
	 * @see #getEquiaxialgraphversion()
	 */
	public void setEquiaxialgraphversion(String equiaxialgraphversion);

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
	public String getBigandsmallheadsnumber();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getBigandsmallheadsnumber <em>Bigandsmallheadsnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Bigandsmallheadsnumber</em>' attribute.
	 * @see #getBigandsmallheadsnumber()
	 */
	public void setBigandsmallheadsnumber(String bigandsmallheadsnumber);

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
	public String getElbownumber();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getElbownumber <em>Elbownumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Elbownumber</em>' attribute.
	 * @see #getElbownumber()
	 */
	public void setElbownumber(String elbownumber);

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
	public String getPipelinelength();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getPipelinelength <em>Pipelinelength</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Pipelinelength</em>' attribute.
	 * @see #getPipelinelength()
	 */
	public void setPipelinelength(String pipelinelength);

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
	public String getHeatpreservation();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getHeatpreservation <em>Heatpreservation</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Heatpreservation</em>' attribute.
	 * @see #getHeatpreservation()
	 */
	public void setHeatpreservation(String heatpreservation);

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
	public String getValvecondition();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getValvecondition <em>Valvecondition</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Valvecondition</em>' attribute.
	 * @see #getValvecondition()
	 */
	public void setValvecondition(String valvecondition);

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
	public String getOrificecondition();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getOrificecondition <em>Orificecondition</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Orificecondition</em>' attribute.
	 * @see #getOrificecondition()
	 */
	public void setOrificecondition(String orificecondition);

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
	public String getRcmcontent();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getRcmcontent <em>Rcmcontent</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Rcmcontent</em>' attribute.
	 * @see #getRcmcontent()
	 */
	public void setRcmcontent(String rcmcontent);

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
	public String getRcmrecommendedperiod();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getRcmrecommendedperiod <em>Rcmrecommendedperiod</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Rcmrecommendedperiod</em>' attribute.
	 * @see #getRcmrecommendedperiod()
	 */
	public void setRcmrecommendedperiod(String rcmrecommendedperiod);

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
	public String getSafetylevel();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getSafetylevel <em>Safetylevel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Safetylevel</em>' attribute.
	 * @see #getSafetylevel()
	 */
	public void setSafetylevel(String safetylevel);

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
	public String getDesignunit();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getDesignunit <em>Designunit</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Designunit</em>' attribute.
	 * @see #getDesignunit()
	 */
	public void setDesignunit(String designunit);

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
	public String getInstallationunit();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getInstallationunit <em>Installationunit</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Installationunit</em>' attribute.
	 * @see #getInstallationunit()
	 */
	public void setInstallationunit(String installationunit);

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
	public String getInstallationcompletiondate();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getInstallationcompletiondate <em>Installationcompletiondate</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Installationcompletiondate</em>' attribute.
	 * @see #getInstallationcompletiondate()
	 */
	public void setInstallationcompletiondate(String installationcompletiondate);

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
	public String getInspectioninstitution();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getInspectioninstitution <em>Inspectioninstitution</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Inspectioninstitution</em>' attribute.
	 * @see #getInspectioninstitution()
	 */
	public void setInspectioninstitution(String inspectioninstitution);

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
	public String getInspectiondate();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getInspectiondate <em>Inspectiondate</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Inspectiondate</em>' attribute.
	 * @see #getInspectiondate()
	 */
	public void setInspectiondate(String inspectiondate);

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
	public String getCommissioningdate();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getCommissioningdate <em>Commissioningdate</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Commissioningdate</em>' attribute.
	 * @see #getCommissioningdate()
	 */
	public void setCommissioningdate(String commissioningdate);

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
	public String getRunningtime();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getRunningtime <em>Runningtime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Runningtime</em>' attribute.
	 * @see #getRunningtime()
	 */
	public void setRunningtime(String runningtime);

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
	public String getUseunit();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getUseunit <em>Useunit</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Useunit</em>' attribute.
	 * @see #getUseunit()
	 */
	public void setUseunit(String useunit);

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
	public String getMainproblems();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getMainproblems <em>Mainproblems</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Mainproblems</em>' attribute.
	 * @see #getMainproblems()
	 */
	public void setMainproblems(String mainproblems);

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
	public String getImportantpipeline();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getImportantpipeline <em>Importantpipeline</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Importantpipeline</em>' attribute.
	 * @see #getImportantpipeline()
	 */
	public void setImportantpipeline(String importantpipeline);

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
	public String getPipelinelayingmethod();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getPipelinelayingmethod <em>Pipelinelayingmethod</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Pipelinelayingmethod</em>' attribute.
	 * @see #getPipelinelayingmethod()
	 */
	public void setPipelinelayingmethod(String pipelinelayingmethod);

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
	public String getTestconclusion();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getTestconclusion <em>Testconclusion</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Testconclusion</em>' attribute.
	 * @see #getTestconclusion()
	 */
	public void setTestconclusion(String testconclusion);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getRemarks <em>Remarks</em>}' attribute.
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
	 * @see #setIsdel(int)
	 */
	public int getIsdel();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getIsdel <em>Isdel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Isdel</em>' attribute.
	 * @see #getIsdel()
	 */
	public void setIsdel(int isdel);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getOrderindex <em>Orderindex</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Orderindex</em>' attribute.
	 * @see #getOrderindex()
	 */
	public void setOrderindex(int orderindex);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getDeleteperson <em>Deleteperson</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getDeletetime <em>Deletetime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Deletetime</em>' attribute.
	 * @see #getDeletetime()
	 */
	public void setDeletetime(String deletetime);

	/**
	 * Returns the value of the '<em><b>Flowchartfileid</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Flowchartfileid</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Flowchartfileid</em>' attribute.
	 * @see #setFlowchartfileid(java.lang.String)
	 */
	public String getFlowchartfileid();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getFlowchartfileid <em>Flowchartfileid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Flowchartfileid</em>' attribute.
	 * @see #getFlowchartfileid()
	 */
	public void setFlowchartfileid(String flowchartfileid);

	/**
	 * Returns the value of the '<em><b>Flowchartfilepath</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Flowchartfilepath</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Flowchartfilepath</em>' attribute.
	 * @see #setFlowchartfilepath(java.lang.String)
	 */
	public String getFlowchartfilepath();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getFlowchartfilepath <em>Flowchartfilepath</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Flowchartfilepath</em>' attribute.
	 * @see #getFlowchartfilepath()
	 */
	public void setFlowchartfilepath(String flowchartfilepath);

	/**
	 * Returns the value of the '<em><b>Equiaxialgraphfileid</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Equiaxialgraphfileid</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Equiaxialgraphfileid</em>' attribute.
	 * @see #setEquiaxialgraphfileid(java.lang.String)
	 */
	public String getEquiaxialgraphfileid();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getEquiaxialgraphfileid <em>Equiaxialgraphfileid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equiaxialgraphfileid</em>' attribute.
	 * @see #getEquiaxialgraphfileid()
	 */
	public void setEquiaxialgraphfileid(String equiaxialgraphfileid);

	/**
	 * Returns the value of the '<em><b>Equiaxialgraphfilepath</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Equiaxialgraphfilepath</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Equiaxialgraphfilepath</em>' attribute.
	 * @see #setEquiaxialgraphfilepath(java.lang.String)
	 */
	public String getEquiaxialgraphfilepath();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getEquiaxialgraphfilepath <em>Equiaxialgraphfilepath</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equiaxialgraphfilepath</em>' attribute.
	 * @see #getEquiaxialgraphfilepath()
	 */
	public void setEquiaxialgraphfilepath(String equiaxialgraphfilepath);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getProcessInstId <em>ProcessInstId</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getJhry <em>Jhry</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getCcry <em>Ccry</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getChangeReasons <em>ChangeReasons</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>ChangeReasons</em>' attribute.
	 * @see #getChangeReasons()
	 */
	public void setChangeReasons(String changeReasons);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getUuid <em>Uuid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Uuid</em>' attribute.
	 * @see #getUuid()
	 */
	public void setUuid(String uuid);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getChangeuser <em>Changeuser</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getChangetime <em>Changetime</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getChangeinfo <em>Changeinfo</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Changeinfo</em>' attribute.
	 * @see #getChangeinfo()
	 */
	public void setChangeinfo(String changeinfo);

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
	public List<Waterpipefittinginfo> getWaterpipefittinginfos();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getWaterpipefittinginfos <em>Waterpipefittinginfos</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Waterpipefittinginfos</em>' attribute.
	 * @see #getWaterpipefittinginfos()
	 */
	public void setWaterpipefittinginfos(List<Waterpipefittinginfo> waterpipefittinginfos);

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
	public List<Pipeweldinformation> getPipeweldinformations();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getPipeweldinformations <em>Pipeweldinformations</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Pipeweldinformations</em>' attribute.
	 * @see #getPipeweldinformations()
	 */
	public void setPipeweldinformations(List<Pipeweldinformation> pipeweldinformations);

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
	public List<Pipelinechemicalinfo> getPipelinechemicalinfos();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getPipelinechemicalinfos <em>Pipelinechemicalinfos</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Pipelinechemicalinfos</em>' attribute.
	 * @see #getPipelinechemicalinfos()
	 */
	public void setPipelinechemicalinfos(List<Pipelinechemicalinfo> pipelinechemicalinfos);

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
	public List<Equipmenthistoryinfo> getEquipmenthistoryinfos();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif#getEquipmenthistoryinfos <em>Equipmenthistoryinfos</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equipmenthistoryinfos</em>' attribute.
	 * @see #getEquipmenthistoryinfos()
	 */
	public void setEquipmenthistoryinfos(List<Equipmenthistoryinfo> equipmenthistoryinfos);


}