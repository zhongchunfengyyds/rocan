/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree;

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
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage#getBase <em>Base</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage#getMachinegroup <em>Machinegroup</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage#getSteamGeneratorModel <em>SteamGeneratorModel</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage#getSteamGeneratorNo <em>SteamGeneratorNo</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage#getFunlocation <em>Funlocation</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage#getNo_r <em>No_r</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage#getNo_c <em>No_c</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage#getDefectTypes <em>DefectTypes</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage#getDefectSize <em>DefectSize</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage#getLocation <em>Location</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage#getPluggingReason <em>PluggingReason</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage#getPluggingTime <em>PluggingTime</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage#getEnclosure <em>Enclosure</em>}</li>
 * </ul>
 * </p>
 *
 * @extends DataObject;
 */
public interface Pipeblockage extends DataObject {

	public static final String QNAME = "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage";

	public static final Type TYPE = TypeHelper.INSTANCE.getType("com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree", "Pipeblockage");

	public static final IObjectFactory<Pipeblockage> FACTORY = new IObjectFactory<Pipeblockage>() {
		public Pipeblockage create() {
			return (Pipeblockage) DataFactory.INSTANCE.create(TYPE);
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage#getUuid <em>Uuid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Uuid</em>' attribute.
	 * @see #getUuid()
	 */
	public void setUuid(String uuid);

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
	public String getBase();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage#getBase <em>Base</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Base</em>' attribute.
	 * @see #getBase()
	 */
	public void setBase(String base);

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
	public String getMachinegroup();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage#getMachinegroup <em>Machinegroup</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Machinegroup</em>' attribute.
	 * @see #getMachinegroup()
	 */
	public void setMachinegroup(String machinegroup);

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
	public String getSteamGeneratorModel();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage#getSteamGeneratorModel <em>SteamGeneratorModel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>SteamGeneratorModel</em>' attribute.
	 * @see #getSteamGeneratorModel()
	 */
	public void setSteamGeneratorModel(String steamGeneratorModel);

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
	public String getSteamGeneratorNo();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage#getSteamGeneratorNo <em>SteamGeneratorNo</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>SteamGeneratorNo</em>' attribute.
	 * @see #getSteamGeneratorNo()
	 */
	public void setSteamGeneratorNo(String steamGeneratorNo);

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
	public String getFunlocation();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage#getFunlocation <em>Funlocation</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Funlocation</em>' attribute.
	 * @see #getFunlocation()
	 */
	public void setFunlocation(String funlocation);

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
	public String getNo_r();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage#getNo_r <em>No_r</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>No_r</em>' attribute.
	 * @see #getNo_r()
	 */
	public void setNo_r(String no_r);

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
	public String getNo_c();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage#getNo_c <em>No_c</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>No_c</em>' attribute.
	 * @see #getNo_c()
	 */
	public void setNo_c(String no_c);

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
	public String getDefectTypes();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage#getDefectTypes <em>DefectTypes</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>DefectTypes</em>' attribute.
	 * @see #getDefectTypes()
	 */
	public void setDefectTypes(String defectTypes);

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
	public String getDefectSize();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage#getDefectSize <em>DefectSize</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>DefectSize</em>' attribute.
	 * @see #getDefectSize()
	 */
	public void setDefectSize(String defectSize);

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
	public String getLocation();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage#getLocation <em>Location</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Location</em>' attribute.
	 * @see #getLocation()
	 */
	public void setLocation(String location);

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
	public String getPluggingReason();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage#getPluggingReason <em>PluggingReason</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>PluggingReason</em>' attribute.
	 * @see #getPluggingReason()
	 */
	public void setPluggingReason(String pluggingReason);

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
	public String getPluggingTime();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage#getPluggingTime <em>PluggingTime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>PluggingTime</em>' attribute.
	 * @see #getPluggingTime()
	 */
	public void setPluggingTime(String pluggingTime);

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
	public String getEnclosure();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage#getEnclosure <em>Enclosure</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Enclosure</em>' attribute.
	 * @see #getEnclosure()
	 */
	public void setEnclosure(String enclosure);


}