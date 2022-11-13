/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.inspectcomponentmanage.insplanmg;

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
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg_modif#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg_modif#getChangeReasons <em>ChangeReasons</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg_modif#getChangeinfo <em>Changeinfo</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg_modif#getChangetime <em>Changetime</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg_modif#getChangeuser <em>Changeuser</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg_modif#getInsplanflu <em>Insplanflu</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg_modif#getInsscope <em>Insscope</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg_modif#getRemake <em>Remake</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg_modif#getOverhaulsq <em>Overhaulsq</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg_modif#getInsphase <em>Insphase</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg_modif#getIsdel <em>Isdel</em>}</li>
 * </ul>
 * </p>
 *
 * @extends DataObject;
 */
public interface Insplanmg_modif extends DataObject {

	public static final String QNAME = "com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg_modif";

	public static final Type TYPE = TypeHelper.INSTANCE.getType("com.cgn.itmp.inspectcomponentmanage.insplanmg", "Insplanmg_modif");

	public static final IObjectFactory<Insplanmg_modif> FACTORY = new IObjectFactory<Insplanmg_modif>() {
		public Insplanmg_modif create() {
			return (Insplanmg_modif) DataFactory.INSTANCE.create(TYPE);
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg_modif#getUuid <em>Uuid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Uuid</em>' attribute.
	 * @see #getUuid()
	 */
	public void setUuid(String uuid);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg_modif#getChangeReasons <em>ChangeReasons</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>ChangeReasons</em>' attribute.
	 * @see #getChangeReasons()
	 */
	public void setChangeReasons(String changeReasons);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg_modif#getChangeinfo <em>Changeinfo</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Changeinfo</em>' attribute.
	 * @see #getChangeinfo()
	 */
	public void setChangeinfo(String changeinfo);

	/**
	 * Returns the value of the '<em><b>Changetime</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Changetime</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Changetime</em>' attribute.
	 * @see #setChangetime(java.util.Date)
	 */
	public Date getChangetime();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg_modif#getChangetime <em>Changetime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Changetime</em>' attribute.
	 * @see #getChangetime()
	 */
	public void setChangetime(Date changetime);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg_modif#getChangeuser <em>Changeuser</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Changeuser</em>' attribute.
	 * @see #getChangeuser()
	 */
	public void setChangeuser(String changeuser);

	/**
	 * Returns the value of the '<em><b>Insplanflu</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Insplanflu</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Insplanflu</em>' attribute.
	 * @see #setInsplanflu(java.lang.String)
	 */
	public String getInsplanflu();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg_modif#getInsplanflu <em>Insplanflu</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Insplanflu</em>' attribute.
	 * @see #getInsplanflu()
	 */
	public void setInsplanflu(String insplanflu);

	/**
	 * Returns the value of the '<em><b>Insscope</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Insscope</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Insscope</em>' attribute.
	 * @see #setInsscope(java.lang.String)
	 */
	public String getInsscope();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg_modif#getInsscope <em>Insscope</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Insscope</em>' attribute.
	 * @see #getInsscope()
	 */
	public void setInsscope(String insscope);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg_modif#getRemake <em>Remake</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Remake</em>' attribute.
	 * @see #getRemake()
	 */
	public void setRemake(String remake);

	/**
	 * Returns the value of the '<em><b>Overhaulsq</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Overhaulsq</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Overhaulsq</em>' attribute.
	 * @see #setOverhaulsq(java.lang.String)
	 */
	public String getOverhaulsq();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg_modif#getOverhaulsq <em>Overhaulsq</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Overhaulsq</em>' attribute.
	 * @see #getOverhaulsq()
	 */
	public void setOverhaulsq(String overhaulsq);

	/**
	 * Returns the value of the '<em><b>Insphase</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Insphase</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Insphase</em>' attribute.
	 * @see #setInsphase(java.lang.String)
	 */
	public String getInsphase();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg_modif#getInsphase <em>Insphase</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Insphase</em>' attribute.
	 * @see #getInsphase()
	 */
	public void setInsphase(String insphase);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg_modif#getIsdel <em>Isdel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Isdel</em>' attribute.
	 * @see #getIsdel()
	 */
	public void setIsdel(String isdel);


}