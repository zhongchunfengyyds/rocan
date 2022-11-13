/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.knowledgebase.knowledgebase;

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
 *   <li>{@link com.cgn.itmp.knowledgebase.knowledgebase.TInEncyclopedia#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.knowledgebase.TInEncyclopedia#getCategory <em>Category</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.knowledgebase.TInEncyclopedia#getName <em>Name</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.knowledgebase.TInEncyclopedia#getZhaiyao <em>Zhaiyao</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.knowledgebase.TInEncyclopedia#getRcommend <em>Rcommend</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.knowledgebase.TInEncyclopedia#getEnclosure <em>Enclosure</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.knowledgebase.TInEncyclopedia#getUplodingperson <em>Uplodingperson</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.knowledgebase.TInEncyclopedia#getUplodingtime <em>Uplodingtime</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.knowledgebase.TInEncyclopedia#getIsdel <em>Isdel</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.knowledgebase.TInEncyclopedia#getDelperson <em>Delperson</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.knowledgebase.TInEncyclopedia#getDeltime <em>Deltime</em>}</li>
 *   <li>{@link com.cgn.itmp.knowledgebase.knowledgebase.TInEncyclopedia#getFildid <em>Fildid</em>}</li>
 * </ul>
 * </p>
 *
 * @extends DataObject;
 */
public interface TInEncyclopedia extends DataObject {

	public static final String QNAME = "com.cgn.itmp.knowledgebase.knowledgebase.TInEncyclopedia";

	public static final Type TYPE = TypeHelper.INSTANCE.getType("com.cgn.itmp.knowledgebase.knowledgebase", "TInEncyclopedia");

	public static final IObjectFactory<TInEncyclopedia> FACTORY = new IObjectFactory<TInEncyclopedia>() {
		public TInEncyclopedia create() {
			return (TInEncyclopedia) DataFactory.INSTANCE.create(TYPE);
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
	 * Sets the value of the '{@link com.cgn.itmp.knowledgebase.knowledgebase.TInEncyclopedia#getUuid <em>Uuid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Uuid</em>' attribute.
	 * @see #getUuid()
	 */
	public void setUuid(String uuid);

	/**
	 * Returns the value of the '<em><b>Category</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Category</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Category</em>' attribute.
	 * @see #setCategory(java.lang.String)
	 */
	public String getCategory();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.knowledgebase.knowledgebase.TInEncyclopedia#getCategory <em>Category</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Category</em>' attribute.
	 * @see #getCategory()
	 */
	public void setCategory(String category);

	/**
	 * Returns the value of the '<em><b>Name</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Name</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Name</em>' attribute.
	 * @see #setName(java.lang.String)
	 */
	public String getName();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.knowledgebase.knowledgebase.TInEncyclopedia#getName <em>Name</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Name</em>' attribute.
	 * @see #getName()
	 */
	public void setName(String name);

	/**
	 * Returns the value of the '<em><b>Zhaiyao</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Zhaiyao</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Zhaiyao</em>' attribute.
	 * @see #setZhaiyao(java.lang.String)
	 */
	public String getZhaiyao();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.knowledgebase.knowledgebase.TInEncyclopedia#getZhaiyao <em>Zhaiyao</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Zhaiyao</em>' attribute.
	 * @see #getZhaiyao()
	 */
	public void setZhaiyao(String zhaiyao);

	/**
	 * Returns the value of the '<em><b>Rcommend</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Rcommend</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Rcommend</em>' attribute.
	 * @see #setRcommend(java.lang.String)
	 */
	public String getRcommend();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.knowledgebase.knowledgebase.TInEncyclopedia#getRcommend <em>Rcommend</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Rcommend</em>' attribute.
	 * @see #getRcommend()
	 */
	public void setRcommend(String rcommend);

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
	 * Sets the value of the '{@link com.cgn.itmp.knowledgebase.knowledgebase.TInEncyclopedia#getEnclosure <em>Enclosure</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Enclosure</em>' attribute.
	 * @see #getEnclosure()
	 */
	public void setEnclosure(String enclosure);

	/**
	 * Returns the value of the '<em><b>Uplodingperson</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Uplodingperson</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Uplodingperson</em>' attribute.
	 * @see #setUplodingperson(java.lang.String)
	 */
	public String getUplodingperson();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.knowledgebase.knowledgebase.TInEncyclopedia#getUplodingperson <em>Uplodingperson</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Uplodingperson</em>' attribute.
	 * @see #getUplodingperson()
	 */
	public void setUplodingperson(String uplodingperson);

	/**
	 * Returns the value of the '<em><b>Uplodingtime</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Uplodingtime</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Uplodingtime</em>' attribute.
	 * @see #setUplodingtime(java.util.Date)
	 */
	public Date getUplodingtime();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.knowledgebase.knowledgebase.TInEncyclopedia#getUplodingtime <em>Uplodingtime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Uplodingtime</em>' attribute.
	 * @see #getUplodingtime()
	 */
	public void setUplodingtime(Date uplodingtime);

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
	 * Sets the value of the '{@link com.cgn.itmp.knowledgebase.knowledgebase.TInEncyclopedia#getIsdel <em>Isdel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Isdel</em>' attribute.
	 * @see #getIsdel()
	 */
	public void setIsdel(String isdel);

	/**
	 * Returns the value of the '<em><b>Delperson</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Delperson</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Delperson</em>' attribute.
	 * @see #setDelperson(java.lang.String)
	 */
	public String getDelperson();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.knowledgebase.knowledgebase.TInEncyclopedia#getDelperson <em>Delperson</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Delperson</em>' attribute.
	 * @see #getDelperson()
	 */
	public void setDelperson(String delperson);

	/**
	 * Returns the value of the '<em><b>Deltime</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Deltime</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Deltime</em>' attribute.
	 * @see #setDeltime(java.util.Date)
	 */
	public Date getDeltime();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.knowledgebase.knowledgebase.TInEncyclopedia#getDeltime <em>Deltime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Deltime</em>' attribute.
	 * @see #getDeltime()
	 */
	public void setDeltime(Date deltime);

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
	 * Sets the value of the '{@link com.cgn.itmp.knowledgebase.knowledgebase.TInEncyclopedia#getFildid <em>Fildid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Fildid</em>' attribute.
	 * @see #getFildid()
	 */
	public void setFildid(String fildid);


}