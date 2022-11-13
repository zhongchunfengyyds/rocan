/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.inspectcomponentmanage.trainsmg;

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
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf#getJd <em>Jd</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf#getJz <em>Jz</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf#getCheckpostion <em>Checkpostion</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf#getCheckmethond <em>Checkmethond</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf#getScrewiden <em>Screwiden</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf#getShoupostion <em>Shoupostion</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf#getOverhaulsq <em>Overhaulsq</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf#getPlanone <em>Planone</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf#getPlantwo <em>Plantwo</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf#getPlanthree <em>Planthree</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf#getRemake <em>Remake</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf#getIsdel <em>Isdel</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf#getChangeuser <em>Changeuser</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf#getChangeDate <em>ChangeDate</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf#getChangeinfo <em>Changeinfo</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf#getChangeReason <em>ChangeReason</em>}</li>
 * </ul>
 * </p>
 *
 * @extends DataObject;
 */
public interface Trainsmg_mf extends DataObject {

	public static final String QNAME = "com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf";

	public static final Type TYPE = TypeHelper.INSTANCE.getType("com.cgn.itmp.inspectcomponentmanage.trainsmg", "Trainsmg_mf");

	public static final IObjectFactory<Trainsmg_mf> FACTORY = new IObjectFactory<Trainsmg_mf>() {
		public Trainsmg_mf create() {
			return (Trainsmg_mf) DataFactory.INSTANCE.create(TYPE);
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf#getUuid <em>Uuid</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf#getJd <em>Jd</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf#getJz <em>Jz</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Jz</em>' attribute.
	 * @see #getJz()
	 */
	public void setJz(String jz);

	/**
	 * Returns the value of the '<em><b>Checkpostion</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Checkpostion</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Checkpostion</em>' attribute.
	 * @see #setCheckpostion(java.lang.String)
	 */
	public String getCheckpostion();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf#getCheckpostion <em>Checkpostion</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Checkpostion</em>' attribute.
	 * @see #getCheckpostion()
	 */
	public void setCheckpostion(String checkpostion);

	/**
	 * Returns the value of the '<em><b>Checkmethond</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Checkmethond</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Checkmethond</em>' attribute.
	 * @see #setCheckmethond(java.lang.String)
	 */
	public String getCheckmethond();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf#getCheckmethond <em>Checkmethond</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Checkmethond</em>' attribute.
	 * @see #getCheckmethond()
	 */
	public void setCheckmethond(String checkmethond);

	/**
	 * Returns the value of the '<em><b>Screwiden</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Screwiden</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Screwiden</em>' attribute.
	 * @see #setScrewiden(java.lang.String)
	 */
	public String getScrewiden();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf#getScrewiden <em>Screwiden</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Screwiden</em>' attribute.
	 * @see #getScrewiden()
	 */
	public void setScrewiden(String screwiden);

	/**
	 * Returns the value of the '<em><b>Shoupostion</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Shoupostion</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Shoupostion</em>' attribute.
	 * @see #setShoupostion(java.lang.String)
	 */
	public String getShoupostion();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf#getShoupostion <em>Shoupostion</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Shoupostion</em>' attribute.
	 * @see #getShoupostion()
	 */
	public void setShoupostion(String shoupostion);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf#getOverhaulsq <em>Overhaulsq</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Overhaulsq</em>' attribute.
	 * @see #getOverhaulsq()
	 */
	public void setOverhaulsq(String overhaulsq);

	/**
	 * Returns the value of the '<em><b>Planone</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Planone</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Planone</em>' attribute.
	 * @see #setPlanone(java.lang.String)
	 */
	public String getPlanone();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf#getPlanone <em>Planone</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Planone</em>' attribute.
	 * @see #getPlanone()
	 */
	public void setPlanone(String planone);

	/**
	 * Returns the value of the '<em><b>Plantwo</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Plantwo</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Plantwo</em>' attribute.
	 * @see #setPlantwo(java.lang.String)
	 */
	public String getPlantwo();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf#getPlantwo <em>Plantwo</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Plantwo</em>' attribute.
	 * @see #getPlantwo()
	 */
	public void setPlantwo(String plantwo);

	/**
	 * Returns the value of the '<em><b>Planthree</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Planthree</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Planthree</em>' attribute.
	 * @see #setPlanthree(java.lang.String)
	 */
	public String getPlanthree();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf#getPlanthree <em>Planthree</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Planthree</em>' attribute.
	 * @see #getPlanthree()
	 */
	public void setPlanthree(String planthree);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf#getRemake <em>Remake</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf#getIsdel <em>Isdel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Isdel</em>' attribute.
	 * @see #getIsdel()
	 */
	public void setIsdel(String isdel);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf#getChangeuser <em>Changeuser</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Changeuser</em>' attribute.
	 * @see #getChangeuser()
	 */
	public void setChangeuser(String changeuser);

	/**
	 * Returns the value of the '<em><b>ChangeDate</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>ChangeDate</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>ChangeDate</em>' attribute.
	 * @see #setChangeDate(java.util.Date)
	 */
	public Date getChangeDate();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf#getChangeDate <em>ChangeDate</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>ChangeDate</em>' attribute.
	 * @see #getChangeDate()
	 */
	public void setChangeDate(Date changeDate);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf#getChangeinfo <em>Changeinfo</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Changeinfo</em>' attribute.
	 * @see #getChangeinfo()
	 */
	public void setChangeinfo(String changeinfo);

	/**
	 * Returns the value of the '<em><b>ChangeReason</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>ChangeReason</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>ChangeReason</em>' attribute.
	 * @see #setChangeReason(java.lang.String)
	 */
	public String getChangeReason();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf#getChangeReason <em>ChangeReason</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>ChangeReason</em>' attribute.
	 * @see #getChangeReason()
	 */
	public void setChangeReason(String changeReason);


}