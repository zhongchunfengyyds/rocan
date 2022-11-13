/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.inspectcomponentmanage.screwplanmg;

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
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.screwplanmg.Screwplanmg#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.screwplanmg.Screwplanmg#getJd <em>Jd</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.screwplanmg.Screwplanmg#getJz <em>Jz</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.screwplanmg.Screwplanmg#getCheckposition <em>Checkposition</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.screwplanmg.Screwplanmg#getCheckmethod <em>Checkmethod</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.screwplanmg.Screwplanmg#getCheckplan <em>Checkplan</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.screwplanmg.Screwplanmg#getRemake <em>Remake</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.screwplanmg.Screwplanmg#getIsdel <em>Isdel</em>}</li>
 * </ul>
 * </p>
 *
 * @extends DataObject;
 */
public interface Screwplanmg extends DataObject {

	public static final String QNAME = "com.cgn.itmp.inspectcomponentmanage.screwplanmg.Screwplanmg";

	public static final Type TYPE = TypeHelper.INSTANCE.getType("com.cgn.itmp.inspectcomponentmanage.screwplanmg", "Screwplanmg");

	public static final IObjectFactory<Screwplanmg> FACTORY = new IObjectFactory<Screwplanmg>() {
		public Screwplanmg create() {
			return (Screwplanmg) DataFactory.INSTANCE.create(TYPE);
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.screwplanmg.Screwplanmg#getUuid <em>Uuid</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.screwplanmg.Screwplanmg#getJd <em>Jd</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.screwplanmg.Screwplanmg#getJz <em>Jz</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Jz</em>' attribute.
	 * @see #getJz()
	 */
	public void setJz(String jz);

	/**
	 * Returns the value of the '<em><b>Checkposition</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Checkposition</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Checkposition</em>' attribute.
	 * @see #setCheckposition(java.lang.String)
	 */
	public String getCheckposition();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.screwplanmg.Screwplanmg#getCheckposition <em>Checkposition</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Checkposition</em>' attribute.
	 * @see #getCheckposition()
	 */
	public void setCheckposition(String checkposition);

	/**
	 * Returns the value of the '<em><b>Checkmethod</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Checkmethod</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Checkmethod</em>' attribute.
	 * @see #setCheckmethod(java.lang.String)
	 */
	public String getCheckmethod();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.screwplanmg.Screwplanmg#getCheckmethod <em>Checkmethod</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Checkmethod</em>' attribute.
	 * @see #getCheckmethod()
	 */
	public void setCheckmethod(String checkmethod);

	/**
	 * Returns the value of the '<em><b>Checkplan</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Checkplan</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Checkplan</em>' attribute.
	 * @see #setCheckplan(java.lang.String)
	 */
	public String getCheckplan();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.screwplanmg.Screwplanmg#getCheckplan <em>Checkplan</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Checkplan</em>' attribute.
	 * @see #getCheckplan()
	 */
	public void setCheckplan(String checkplan);

	/**
	 * Returns the value of the '<em><b>Remake</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Remake</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Remake</em>' attribute.
	 * @see #setRemake(java.lang.String)
	 */
	public String getRemake();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.screwplanmg.Screwplanmg#getRemake <em>Remake</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Remake</em>' attribute.
	 * @see #getRemake()
	 */
	public void setRemake(String remake);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.screwplanmg.Screwplanmg#getIsdel <em>Isdel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Isdel</em>' attribute.
	 * @see #getIsdel()
	 */
	public void setIsdel(String isdel);


}