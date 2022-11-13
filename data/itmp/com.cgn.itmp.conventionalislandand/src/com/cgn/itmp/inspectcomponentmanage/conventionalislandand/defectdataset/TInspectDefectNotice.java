/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset;

import com.eos.data.sdo.IObjectFactory;

import commonj.sdo.DataObject;
import commonj.sdo.Type;
import commonj.sdo.helper.DataFactory;
import commonj.sdo.helper.TypeHelper;

import java.util.Date;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Test</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getJd <em>Jd</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getJz <em>Jz</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getJzstate <em>Jzstate</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getOverhaulrounds <em>Overhaulrounds</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getEquipmenttype <em>Equipmenttype</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getWorkticketnumber <em>Workticketnumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getWorkcontent <em>Workcontent</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getWorkchargeperson <em>Workchargeperson</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getInspectionmethod <em>Inspectionmethod</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getNoticenumber <em>Noticenumber</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getTitle <em>Title</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getDescribe <em>Describe</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getFunctionallocation <em>Functionallocation</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getCreatedate <em>Createdate</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getCurrentstatus <em>Currentstatus</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getResponsibledepartment <em>Responsibledepartment</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getProcess <em>Process</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getProcessresult <em>Processresult</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getStrategyadjustment <em>Strategyadjustment</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getNondestructive <em>Nondestructive</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getResponsibleperson <em>Responsibleperson</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getFj <em>Fj</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getFildid <em>Fildid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getFildpath <em>Fildpath</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getDeletetime <em>Deletetime</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getDeleteperson <em>Deleteperson</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getIsdel <em>Isdel</em>}</li>
 * </ul>
 * </p>
 *
 * @extends DataObject;
 */
public interface TInspectDefectNotice extends DataObject {

	public static final String QNAME = "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice";

	public static final Type TYPE = TypeHelper.INSTANCE.getType("com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset", "TInspectDefectNotice");

	public static final IObjectFactory<TInspectDefectNotice> FACTORY = new IObjectFactory<TInspectDefectNotice>() {
		public TInspectDefectNotice create() {
			return (TInspectDefectNotice) DataFactory.INSTANCE.create(TYPE);
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getUuid <em>Uuid</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getJd <em>Jd</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getJz <em>Jz</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Jz</em>' attribute.
	 * @see #getJz()
	 */
	public void setJz(String jz);

	/**
	 * Returns the value of the '<em><b>Jzstate</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Jzstate</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Jzstate</em>' attribute.
	 * @see #setJzstate(java.lang.String)
	 */
	public String getJzstate();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getJzstate <em>Jzstate</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Jzstate</em>' attribute.
	 * @see #getJzstate()
	 */
	public void setJzstate(String jzstate);

	/**
	 * Returns the value of the '<em><b>Overhaulrounds</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Overhaulrounds</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Overhaulrounds</em>' attribute.
	 * @see #setOverhaulrounds(java.lang.String)
	 */
	public String getOverhaulrounds();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getOverhaulrounds <em>Overhaulrounds</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Overhaulrounds</em>' attribute.
	 * @see #getOverhaulrounds()
	 */
	public void setOverhaulrounds(String overhaulrounds);

	/**
	 * Returns the value of the '<em><b>Equipmenttype</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Equipmenttype</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Equipmenttype</em>' attribute.
	 * @see #setEquipmenttype(java.lang.String)
	 */
	public String getEquipmenttype();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getEquipmenttype <em>Equipmenttype</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equipmenttype</em>' attribute.
	 * @see #getEquipmenttype()
	 */
	public void setEquipmenttype(String equipmenttype);

	/**
	 * Returns the value of the '<em><b>Workticketnumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Workticketnumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Workticketnumber</em>' attribute.
	 * @see #setWorkticketnumber(java.lang.String)
	 */
	public String getWorkticketnumber();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getWorkticketnumber <em>Workticketnumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Workticketnumber</em>' attribute.
	 * @see #getWorkticketnumber()
	 */
	public void setWorkticketnumber(String workticketnumber);

	/**
	 * Returns the value of the '<em><b>Workcontent</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Workcontent</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Workcontent</em>' attribute.
	 * @see #setWorkcontent(java.lang.String)
	 */
	public String getWorkcontent();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getWorkcontent <em>Workcontent</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Workcontent</em>' attribute.
	 * @see #getWorkcontent()
	 */
	public void setWorkcontent(String workcontent);

	/**
	 * Returns the value of the '<em><b>Workchargeperson</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Workchargeperson</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Workchargeperson</em>' attribute.
	 * @see #setWorkchargeperson(java.lang.String)
	 */
	public String getWorkchargeperson();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getWorkchargeperson <em>Workchargeperson</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Workchargeperson</em>' attribute.
	 * @see #getWorkchargeperson()
	 */
	public void setWorkchargeperson(String workchargeperson);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getInspectionmethod <em>Inspectionmethod</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Inspectionmethod</em>' attribute.
	 * @see #getInspectionmethod()
	 */
	public void setInspectionmethod(String inspectionmethod);

	/**
	 * Returns the value of the '<em><b>Noticenumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Noticenumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Noticenumber</em>' attribute.
	 * @see #setNoticenumber(java.lang.String)
	 */
	public String getNoticenumber();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getNoticenumber <em>Noticenumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Noticenumber</em>' attribute.
	 * @see #getNoticenumber()
	 */
	public void setNoticenumber(String noticenumber);

	/**
	 * Returns the value of the '<em><b>Title</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Title</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Title</em>' attribute.
	 * @see #setTitle(java.lang.String)
	 */
	public String getTitle();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getTitle <em>Title</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Title</em>' attribute.
	 * @see #getTitle()
	 */
	public void setTitle(String title);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getDescribe <em>Describe</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Describe</em>' attribute.
	 * @see #getDescribe()
	 */
	public void setDescribe(String describe);

	/**
	 * Returns the value of the '<em><b>Functionallocation</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Functionallocation</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Functionallocation</em>' attribute.
	 * @see #setFunctionallocation(java.lang.String)
	 */
	public String getFunctionallocation();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getFunctionallocation <em>Functionallocation</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Functionallocation</em>' attribute.
	 * @see #getFunctionallocation()
	 */
	public void setFunctionallocation(String functionallocation);

	/**
	 * Returns the value of the '<em><b>Createdate</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Createdate</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Createdate</em>' attribute.
	 * @see #setCreatedate(java.lang.String)
	 */
	public String getCreatedate();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getCreatedate <em>Createdate</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Createdate</em>' attribute.
	 * @see #getCreatedate()
	 */
	public void setCreatedate(String createdate);

	/**
	 * Returns the value of the '<em><b>Currentstatus</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Currentstatus</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Currentstatus</em>' attribute.
	 * @see #setCurrentstatus(java.lang.String)
	 */
	public String getCurrentstatus();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getCurrentstatus <em>Currentstatus</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Currentstatus</em>' attribute.
	 * @see #getCurrentstatus()
	 */
	public void setCurrentstatus(String currentstatus);

	/**
	 * Returns the value of the '<em><b>Responsibledepartment</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Responsibledepartment</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Responsibledepartment</em>' attribute.
	 * @see #setResponsibledepartment(java.lang.String)
	 */
	public String getResponsibledepartment();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getResponsibledepartment <em>Responsibledepartment</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Responsibledepartment</em>' attribute.
	 * @see #getResponsibledepartment()
	 */
	public void setResponsibledepartment(String responsibledepartment);

	/**
	 * Returns the value of the '<em><b>Process</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Process</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Process</em>' attribute.
	 * @see #setProcess(java.lang.String)
	 */
	public String getProcess();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getProcess <em>Process</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Process</em>' attribute.
	 * @see #getProcess()
	 */
	public void setProcess(String process);

	/**
	 * Returns the value of the '<em><b>Processresult</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Processresult</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Processresult</em>' attribute.
	 * @see #setProcessresult(java.lang.String)
	 */
	public String getProcessresult();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getProcessresult <em>Processresult</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Processresult</em>' attribute.
	 * @see #getProcessresult()
	 */
	public void setProcessresult(String processresult);

	/**
	 * Returns the value of the '<em><b>Strategyadjustment</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Strategyadjustment</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Strategyadjustment</em>' attribute.
	 * @see #setStrategyadjustment(java.util.Date)
	 */
	public Date getStrategyadjustment();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getStrategyadjustment <em>Strategyadjustment</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Strategyadjustment</em>' attribute.
	 * @see #getStrategyadjustment()
	 */
	public void setStrategyadjustment(Date strategyadjustment);

	/**
	 * Returns the value of the '<em><b>Nondestructive</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Nondestructive</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Nondestructive</em>' attribute.
	 * @see #setNondestructive(java.lang.String)
	 */
	public String getNondestructive();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getNondestructive <em>Nondestructive</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Nondestructive</em>' attribute.
	 * @see #getNondestructive()
	 */
	public void setNondestructive(String nondestructive);

	/**
	 * Returns the value of the '<em><b>Responsibleperson</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Responsibleperson</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Responsibleperson</em>' attribute.
	 * @see #setResponsibleperson(java.lang.String)
	 */
	public String getResponsibleperson();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getResponsibleperson <em>Responsibleperson</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Responsibleperson</em>' attribute.
	 * @see #getResponsibleperson()
	 */
	public void setResponsibleperson(String responsibleperson);

	/**
	 * Returns the value of the '<em><b>Fj</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Fj</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Fj</em>' attribute.
	 * @see #setFj(java.lang.String)
	 */
	public String getFj();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getFj <em>Fj</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Fj</em>' attribute.
	 * @see #getFj()
	 */
	public void setFj(String fj);

	/**
	 * Returns the value of the '<em><b>Fildid</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Fildid</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Fildid</em>' attribute.
	 * @see #setFildid(java.lang.String)
	 */
	public String getFildid();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getFildid <em>Fildid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Fildid</em>' attribute.
	 * @see #getFildid()
	 */
	public void setFildid(String fildid);

	/**
	 * Returns the value of the '<em><b>Fildpath</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Fildpath</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Fildpath</em>' attribute.
	 * @see #setFildpath(java.lang.String)
	 */
	public String getFildpath();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getFildpath <em>Fildpath</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Fildpath</em>' attribute.
	 * @see #getFildpath()
	 */
	public void setFildpath(String fildpath);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getDeletetime <em>Deletetime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Deletetime</em>' attribute.
	 * @see #getDeletetime()
	 */
	public void setDeletetime(String deletetime);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getDeleteperson <em>Deleteperson</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Deleteperson</em>' attribute.
	 * @see #getDeleteperson()
	 */
	public void setDeleteperson(String deleteperson);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice#getIsdel <em>Isdel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Isdel</em>' attribute.
	 * @see #getIsdel()
	 */
	public void setIsdel(String isdel);


}