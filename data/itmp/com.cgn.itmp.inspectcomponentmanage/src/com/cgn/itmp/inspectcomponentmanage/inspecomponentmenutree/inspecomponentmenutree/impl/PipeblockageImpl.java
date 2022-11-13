/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.impl;

import com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage;
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
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.impl.PipeblockageImpl#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.impl.PipeblockageImpl#getBase <em>Base</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.impl.PipeblockageImpl#getMachinegroup <em>Machinegroup</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.impl.PipeblockageImpl#getSteamGeneratorModel <em>SteamGeneratorModel</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.impl.PipeblockageImpl#getSteamGeneratorNo <em>SteamGeneratorNo</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.impl.PipeblockageImpl#getFunlocation <em>Funlocation</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.impl.PipeblockageImpl#getNo_r <em>No_r</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.impl.PipeblockageImpl#getNo_c <em>No_c</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.impl.PipeblockageImpl#getDefectTypes <em>DefectTypes</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.impl.PipeblockageImpl#getDefectSize <em>DefectSize</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.impl.PipeblockageImpl#getLocation <em>Location</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.impl.PipeblockageImpl#getPluggingReason <em>PluggingReason</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.impl.PipeblockageImpl#getPluggingTime <em>PluggingTime</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.impl.PipeblockageImpl#getEnclosure <em>Enclosure</em>}</li>
 * </ul>
 * </p>
 *
 * @extends ExtendedDataObjectImpl;
 *
 * @implements Pipeblockage;
 */

public class PipeblockageImpl extends ExtendedDataObjectImpl implements Pipeblockage {
	/**
	 * Comment for <code>serialVersionUID</code>
	 */
	private static final long serialVersionUID = 1L;
	public final static int INDEX_UUID = 0;
	public final static int INDEX_BASE = 1;
	public final static int INDEX_MACHINEGROUP = 2;
	public final static int INDEX_STEAMGENERATORMODEL = 3;
	public final static int INDEX_STEAMGENERATORNO = 4;
	public final static int INDEX_FUNLOCATION = 5;
	public final static int INDEX_NO_R = 6;
	public final static int INDEX_NO_C = 7;
	public final static int INDEX_DEFECTTYPES = 8;
	public final static int INDEX_DEFECTSIZE = 9;
	public final static int INDEX_LOCATION = 10;
	public final static int INDEX_PLUGGINGREASON = 11;
	public final static int INDEX_PLUGGINGTIME = 12;
	public final static int INDEX_ENCLOSURE = 13;
	public static final int SDO_PROPERTY_COUNT = 14;

	public static final int EXTENDED_PROPERTY_COUNT = -1;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public PipeblockageImpl() {
		this(TYPE);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 */
	public PipeblockageImpl(Type type) {
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
	 * Returns the value of the '<em><b>Base</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Base</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Base</em>' attribute.
	 * @see #setBase(java.lang.String)
	 */
	public String getBase() {
		return DataUtil.toString(super.getByIndex(INDEX_BASE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getBase <em>Base</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Base</em>' attribute.
	 * @see #getBase()
	 */
	public void setBase(String base) {
		super.setByIndex(INDEX_BASE, base);
	}

	/**
	 * Returns the value of the '<em><b>Machinegroup</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Machinegroup</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Machinegroup</em>' attribute.
	 * @see #setMachinegroup(java.lang.String)
	 */
	public String getMachinegroup() {
		return DataUtil.toString(super.getByIndex(INDEX_MACHINEGROUP, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getMachinegroup <em>Machinegroup</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Machinegroup</em>' attribute.
	 * @see #getMachinegroup()
	 */
	public void setMachinegroup(String machinegroup) {
		super.setByIndex(INDEX_MACHINEGROUP, machinegroup);
	}

	/**
	 * Returns the value of the '<em><b>SteamGeneratorModel</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>SteamGeneratorModel</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>SteamGeneratorModel</em>' attribute.
	 * @see #setSteamGeneratorModel(java.lang.String)
	 */
	public String getSteamGeneratorModel() {
		return DataUtil.toString(super.getByIndex(INDEX_STEAMGENERATORMODEL, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getSteamGeneratorModel <em>SteamGeneratorModel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>SteamGeneratorModel</em>' attribute.
	 * @see #getSteamGeneratorModel()
	 */
	public void setSteamGeneratorModel(String steamGeneratorModel) {
		super.setByIndex(INDEX_STEAMGENERATORMODEL, steamGeneratorModel);
	}

	/**
	 * Returns the value of the '<em><b>SteamGeneratorNo</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>SteamGeneratorNo</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>SteamGeneratorNo</em>' attribute.
	 * @see #setSteamGeneratorNo(java.lang.String)
	 */
	public String getSteamGeneratorNo() {
		return DataUtil.toString(super.getByIndex(INDEX_STEAMGENERATORNO, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getSteamGeneratorNo <em>SteamGeneratorNo</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>SteamGeneratorNo</em>' attribute.
	 * @see #getSteamGeneratorNo()
	 */
	public void setSteamGeneratorNo(String steamGeneratorNo) {
		super.setByIndex(INDEX_STEAMGENERATORNO, steamGeneratorNo);
	}

	/**
	 * Returns the value of the '<em><b>Funlocation</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Funlocation</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Funlocation</em>' attribute.
	 * @see #setFunlocation(java.lang.String)
	 */
	public String getFunlocation() {
		return DataUtil.toString(super.getByIndex(INDEX_FUNLOCATION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getFunlocation <em>Funlocation</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Funlocation</em>' attribute.
	 * @see #getFunlocation()
	 */
	public void setFunlocation(String funlocation) {
		super.setByIndex(INDEX_FUNLOCATION, funlocation);
	}

	/**
	 * Returns the value of the '<em><b>No_r</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>No_r</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>No_r</em>' attribute.
	 * @see #setNo_r(java.lang.String)
	 */
	public String getNo_r() {
		return DataUtil.toString(super.getByIndex(INDEX_NO_R, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getNo_r <em>No_r</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>No_r</em>' attribute.
	 * @see #getNo_r()
	 */
	public void setNo_r(String no_r) {
		super.setByIndex(INDEX_NO_R, no_r);
	}

	/**
	 * Returns the value of the '<em><b>No_c</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>No_c</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>No_c</em>' attribute.
	 * @see #setNo_c(java.lang.String)
	 */
	public String getNo_c() {
		return DataUtil.toString(super.getByIndex(INDEX_NO_C, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getNo_c <em>No_c</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>No_c</em>' attribute.
	 * @see #getNo_c()
	 */
	public void setNo_c(String no_c) {
		super.setByIndex(INDEX_NO_C, no_c);
	}

	/**
	 * Returns the value of the '<em><b>DefectTypes</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>DefectTypes</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>DefectTypes</em>' attribute.
	 * @see #setDefectTypes(java.lang.String)
	 */
	public String getDefectTypes() {
		return DataUtil.toString(super.getByIndex(INDEX_DEFECTTYPES, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getDefectTypes <em>DefectTypes</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>DefectTypes</em>' attribute.
	 * @see #getDefectTypes()
	 */
	public void setDefectTypes(String defectTypes) {
		super.setByIndex(INDEX_DEFECTTYPES, defectTypes);
	}

	/**
	 * Returns the value of the '<em><b>DefectSize</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>DefectSize</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>DefectSize</em>' attribute.
	 * @see #setDefectSize(java.lang.String)
	 */
	public String getDefectSize() {
		return DataUtil.toString(super.getByIndex(INDEX_DEFECTSIZE, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getDefectSize <em>DefectSize</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>DefectSize</em>' attribute.
	 * @see #getDefectSize()
	 */
	public void setDefectSize(String defectSize) {
		super.setByIndex(INDEX_DEFECTSIZE, defectSize);
	}

	/**
	 * Returns the value of the '<em><b>Location</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Location</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Location</em>' attribute.
	 * @see #setLocation(java.lang.String)
	 */
	public String getLocation() {
		return DataUtil.toString(super.getByIndex(INDEX_LOCATION, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getLocation <em>Location</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Location</em>' attribute.
	 * @see #getLocation()
	 */
	public void setLocation(String location) {
		super.setByIndex(INDEX_LOCATION, location);
	}

	/**
	 * Returns the value of the '<em><b>PluggingReason</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>PluggingReason</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>PluggingReason</em>' attribute.
	 * @see #setPluggingReason(java.lang.String)
	 */
	public String getPluggingReason() {
		return DataUtil.toString(super.getByIndex(INDEX_PLUGGINGREASON, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getPluggingReason <em>PluggingReason</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>PluggingReason</em>' attribute.
	 * @see #getPluggingReason()
	 */
	public void setPluggingReason(String pluggingReason) {
		super.setByIndex(INDEX_PLUGGINGREASON, pluggingReason);
	}

	/**
	 * Returns the value of the '<em><b>PluggingTime</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>PluggingTime</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>PluggingTime</em>' attribute.
	 * @see #setPluggingTime(java.lang.String)
	 */
	public String getPluggingTime() {
		return DataUtil.toString(super.getByIndex(INDEX_PLUGGINGTIME, true));
	}

	/**
	 * Sets the value of the '{@link com.primeton.eos.Test#getPluggingTime <em>PluggingTime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>PluggingTime</em>' attribute.
	 * @see #getPluggingTime()
	 */
	public void setPluggingTime(String pluggingTime) {
		super.setByIndex(INDEX_PLUGGINGTIME, pluggingTime);
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


}