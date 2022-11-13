/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation;

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
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getJd <em>Jd</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getJz <em>Jz</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getDevicename <em>Devicename</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getPosition <em>Position</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getDevicetype <em>Devicetype</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getRccmlevel <em>Rccmlevel</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getRccplevel <em>Rccplevel</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getRsemlevel <em>Rsemlevel</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getDesignpressure <em>Designpressure</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getOperatingpressure <em>Operatingpressure</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getDesigntemperature <em>Designtemperature</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getOperationtemperature <em>Operationtemperature</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getEommfile <em>Eommfile</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getSdmfile <em>Sdmfile</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getEuqipmentgraph <em>Euqipmentgraph</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getEquiaxedgraph <em>Equiaxedgraph</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getEomrfile <em>Eomrfile</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getManufacturer <em>Manufacturer</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getEquipment_manufacturing_number <em>Equipment_manufacturing_number</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getMaterialbrand <em>Materialbrand</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getDeleteperson <em>Deleteperson</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getDeletetime <em>Deletetime</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getIsdel <em>Isdel</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getOrderindex <em>Orderindex</em>}</li>
 * </ul>
 * </p>
 *
 * @extends DataObject;
 */
public interface Equipmentbaseinformation extends DataObject {

	public static final String QNAME = "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation";

	public static final Type TYPE = TypeHelper.INSTANCE.getType("com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation", "Equipmentbaseinformation");

	public static final IObjectFactory<Equipmentbaseinformation> FACTORY = new IObjectFactory<Equipmentbaseinformation>() {
		public Equipmentbaseinformation create() {
			return (Equipmentbaseinformation) DataFactory.INSTANCE.create(TYPE);
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getUuid <em>Uuid</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getJd <em>Jd</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getJz <em>Jz</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Jz</em>' attribute.
	 * @see #getJz()
	 */
	public void setJz(String jz);

	/**
	 * Returns the value of the '<em><b>Devicename</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Devicename</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Devicename</em>' attribute.
	 * @see #setDevicename(java.lang.String)
	 */
	public String getDevicename();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getDevicename <em>Devicename</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Devicename</em>' attribute.
	 * @see #getDevicename()
	 */
	public void setDevicename(String devicename);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getPosition <em>Position</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Position</em>' attribute.
	 * @see #getPosition()
	 */
	public void setPosition(String position);

	/**
	 * Returns the value of the '<em><b>Devicetype</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Devicetype</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Devicetype</em>' attribute.
	 * @see #setDevicetype(java.lang.String)
	 */
	public String getDevicetype();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getDevicetype <em>Devicetype</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Devicetype</em>' attribute.
	 * @see #getDevicetype()
	 */
	public void setDevicetype(String devicetype);

	/**
	 * Returns the value of the '<em><b>Rccmlevel</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Rccmlevel</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Rccmlevel</em>' attribute.
	 * @see #setRccmlevel(java.lang.String)
	 */
	public String getRccmlevel();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getRccmlevel <em>Rccmlevel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Rccmlevel</em>' attribute.
	 * @see #getRccmlevel()
	 */
	public void setRccmlevel(String rccmlevel);

	/**
	 * Returns the value of the '<em><b>Rccplevel</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Rccplevel</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Rccplevel</em>' attribute.
	 * @see #setRccplevel(java.lang.String)
	 */
	public String getRccplevel();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getRccplevel <em>Rccplevel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Rccplevel</em>' attribute.
	 * @see #getRccplevel()
	 */
	public void setRccplevel(String rccplevel);

	/**
	 * Returns the value of the '<em><b>Rsemlevel</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Rsemlevel</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Rsemlevel</em>' attribute.
	 * @see #setRsemlevel(java.lang.String)
	 */
	public String getRsemlevel();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getRsemlevel <em>Rsemlevel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Rsemlevel</em>' attribute.
	 * @see #getRsemlevel()
	 */
	public void setRsemlevel(String rsemlevel);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getDesignpressure <em>Designpressure</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Designpressure</em>' attribute.
	 * @see #getDesignpressure()
	 */
	public void setDesignpressure(String designpressure);

	/**
	 * Returns the value of the '<em><b>Operatingpressure</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Operatingpressure</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Operatingpressure</em>' attribute.
	 * @see #setOperatingpressure(java.lang.String)
	 */
	public String getOperatingpressure();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getOperatingpressure <em>Operatingpressure</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Operatingpressure</em>' attribute.
	 * @see #getOperatingpressure()
	 */
	public void setOperatingpressure(String operatingpressure);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getDesigntemperature <em>Designtemperature</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Designtemperature</em>' attribute.
	 * @see #getDesigntemperature()
	 */
	public void setDesigntemperature(String designtemperature);

	/**
	 * Returns the value of the '<em><b>Operationtemperature</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Operationtemperature</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Operationtemperature</em>' attribute.
	 * @see #setOperationtemperature(java.lang.String)
	 */
	public String getOperationtemperature();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getOperationtemperature <em>Operationtemperature</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Operationtemperature</em>' attribute.
	 * @see #getOperationtemperature()
	 */
	public void setOperationtemperature(String operationtemperature);

	/**
	 * Returns the value of the '<em><b>Eommfile</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Eommfile</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Eommfile</em>' attribute.
	 * @see #setEommfile(java.lang.String)
	 */
	public String getEommfile();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getEommfile <em>Eommfile</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Eommfile</em>' attribute.
	 * @see #getEommfile()
	 */
	public void setEommfile(String eommfile);

	/**
	 * Returns the value of the '<em><b>Sdmfile</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Sdmfile</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Sdmfile</em>' attribute.
	 * @see #setSdmfile(java.lang.String)
	 */
	public String getSdmfile();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getSdmfile <em>Sdmfile</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Sdmfile</em>' attribute.
	 * @see #getSdmfile()
	 */
	public void setSdmfile(String sdmfile);

	/**
	 * Returns the value of the '<em><b>Euqipmentgraph</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Euqipmentgraph</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Euqipmentgraph</em>' attribute.
	 * @see #setEuqipmentgraph(java.lang.String)
	 */
	public String getEuqipmentgraph();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getEuqipmentgraph <em>Euqipmentgraph</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Euqipmentgraph</em>' attribute.
	 * @see #getEuqipmentgraph()
	 */
	public void setEuqipmentgraph(String euqipmentgraph);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getEquiaxedgraph <em>Equiaxedgraph</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equiaxedgraph</em>' attribute.
	 * @see #getEquiaxedgraph()
	 */
	public void setEquiaxedgraph(String equiaxedgraph);

	/**
	 * Returns the value of the '<em><b>Eomrfile</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Eomrfile</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Eomrfile</em>' attribute.
	 * @see #setEomrfile(java.lang.String)
	 */
	public String getEomrfile();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getEomrfile <em>Eomrfile</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Eomrfile</em>' attribute.
	 * @see #getEomrfile()
	 */
	public void setEomrfile(String eomrfile);

	/**
	 * Returns the value of the '<em><b>Manufacturer</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Manufacturer</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Manufacturer</em>' attribute.
	 * @see #setManufacturer(java.lang.String)
	 */
	public String getManufacturer();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getManufacturer <em>Manufacturer</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Manufacturer</em>' attribute.
	 * @see #getManufacturer()
	 */
	public void setManufacturer(String manufacturer);

	/**
	 * Returns the value of the '<em><b>Equipment_manufacturing_number</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Equipment_manufacturing_number</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Equipment_manufacturing_number</em>' attribute.
	 * @see #setEquipment_manufacturing_number(java.lang.String)
	 */
	public String getEquipment_manufacturing_number();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getEquipment_manufacturing_number <em>Equipment_manufacturing_number</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Equipment_manufacturing_number</em>' attribute.
	 * @see #getEquipment_manufacturing_number()
	 */
	public void setEquipment_manufacturing_number(String equipment_manufacturing_number);

	/**
	 * Returns the value of the '<em><b>Materialbrand</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Materialbrand</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Materialbrand</em>' attribute.
	 * @see #setMaterialbrand(java.lang.String)
	 */
	public String getMaterialbrand();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getMaterialbrand <em>Materialbrand</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Materialbrand</em>' attribute.
	 * @see #getMaterialbrand()
	 */
	public void setMaterialbrand(String materialbrand);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getDeleteperson <em>Deleteperson</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getDeletetime <em>Deletetime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Deletetime</em>' attribute.
	 * @see #getDeletetime()
	 */
	public void setDeletetime(String deletetime);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getIsdel <em>Isdel</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation#getOrderindex <em>Orderindex</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Orderindex</em>' attribute.
	 * @see #getOrderindex()
	 */
	public void setOrderindex(int orderindex);


}