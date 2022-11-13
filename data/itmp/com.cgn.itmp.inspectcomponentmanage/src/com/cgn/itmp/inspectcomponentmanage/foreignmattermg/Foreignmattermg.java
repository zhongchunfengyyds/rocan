/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.inspectcomponentmanage.foreignmattermg;

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
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg#getJd <em>Jd</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg#getJz <em>Jz</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg#getOverhaulsq <em>Overhaulsq</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg#getFunposition <em>Funposition</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg#getFocde <em>Focde</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg#getCheckstage <em>Checkstage</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg#getIstakeout <em>Istakeout</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg#getFoposition <em>Foposition</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg#getFosize <em>Fosize</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg#getFokg <em>Fokg</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg#getFoattribute <em>Foattribute</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg#getFodisimg <em>Fodisimg</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg#getRelevantimg <em>Relevantimg</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg#getRemake <em>Remake</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg#getIsdel <em>Isdel</em>}</li>
 * </ul>
 * </p>
 *
 * @extends DataObject;
 */
public interface Foreignmattermg extends DataObject {

	public static final String QNAME = "com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg";

	public static final Type TYPE = TypeHelper.INSTANCE.getType("com.cgn.itmp.inspectcomponentmanage.foreignmattermg", "Foreignmattermg");

	public static final IObjectFactory<Foreignmattermg> FACTORY = new IObjectFactory<Foreignmattermg>() {
		public Foreignmattermg create() {
			return (Foreignmattermg) DataFactory.INSTANCE.create(TYPE);
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg#getUuid <em>Uuid</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg#getJd <em>Jd</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg#getJz <em>Jz</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Jz</em>' attribute.
	 * @see #getJz()
	 */
	public void setJz(String jz);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg#getOverhaulsq <em>Overhaulsq</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Overhaulsq</em>' attribute.
	 * @see #getOverhaulsq()
	 */
	public void setOverhaulsq(String overhaulsq);

	/**
	 * Returns the value of the '<em><b>Funposition</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Funposition</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Funposition</em>' attribute.
	 * @see #setFunposition(java.lang.String)
	 */
	public String getFunposition();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg#getFunposition <em>Funposition</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Funposition</em>' attribute.
	 * @see #getFunposition()
	 */
	public void setFunposition(String funposition);

	/**
	 * Returns the value of the '<em><b>Focde</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Focde</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Focde</em>' attribute.
	 * @see #setFocde(java.lang.String)
	 */
	public String getFocde();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg#getFocde <em>Focde</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Focde</em>' attribute.
	 * @see #getFocde()
	 */
	public void setFocde(String focde);

	/**
	 * Returns the value of the '<em><b>Checkstage</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Checkstage</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Checkstage</em>' attribute.
	 * @see #setCheckstage(java.lang.String)
	 */
	public String getCheckstage();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg#getCheckstage <em>Checkstage</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Checkstage</em>' attribute.
	 * @see #getCheckstage()
	 */
	public void setCheckstage(String checkstage);

	/**
	 * Returns the value of the '<em><b>Istakeout</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Istakeout</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Istakeout</em>' attribute.
	 * @see #setIstakeout(java.lang.String)
	 */
	public String getIstakeout();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg#getIstakeout <em>Istakeout</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Istakeout</em>' attribute.
	 * @see #getIstakeout()
	 */
	public void setIstakeout(String istakeout);

	/**
	 * Returns the value of the '<em><b>Foposition</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Foposition</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Foposition</em>' attribute.
	 * @see #setFoposition(java.lang.String)
	 */
	public String getFoposition();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg#getFoposition <em>Foposition</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Foposition</em>' attribute.
	 * @see #getFoposition()
	 */
	public void setFoposition(String foposition);

	/**
	 * Returns the value of the '<em><b>Fosize</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Fosize</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Fosize</em>' attribute.
	 * @see #setFosize(java.lang.String)
	 */
	public String getFosize();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg#getFosize <em>Fosize</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Fosize</em>' attribute.
	 * @see #getFosize()
	 */
	public void setFosize(String fosize);

	/**
	 * Returns the value of the '<em><b>Fokg</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Fokg</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Fokg</em>' attribute.
	 * @see #setFokg(int)
	 */
	public int getFokg();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg#getFokg <em>Fokg</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Fokg</em>' attribute.
	 * @see #getFokg()
	 */
	public void setFokg(int fokg);

	/**
	 * Returns the value of the '<em><b>Foattribute</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Foattribute</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Foattribute</em>' attribute.
	 * @see #setFoattribute(java.lang.String)
	 */
	public String getFoattribute();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg#getFoattribute <em>Foattribute</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Foattribute</em>' attribute.
	 * @see #getFoattribute()
	 */
	public void setFoattribute(String foattribute);

	/**
	 * Returns the value of the '<em><b>Fodisimg</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Fodisimg</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Fodisimg</em>' attribute.
	 * @see #setFodisimg(java.lang.String)
	 */
	public String getFodisimg();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg#getFodisimg <em>Fodisimg</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Fodisimg</em>' attribute.
	 * @see #getFodisimg()
	 */
	public void setFodisimg(String fodisimg);

	/**
	 * Returns the value of the '<em><b>Relevantimg</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Relevantimg</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Relevantimg</em>' attribute.
	 * @see #setRelevantimg(java.lang.String)
	 */
	public String getRelevantimg();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg#getRelevantimg <em>Relevantimg</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Relevantimg</em>' attribute.
	 * @see #getRelevantimg()
	 */
	public void setRelevantimg(String relevantimg);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg#getRemake <em>Remake</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg#getIsdel <em>Isdel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Isdel</em>' attribute.
	 * @see #getIsdel()
	 */
	public void setIsdel(String isdel);


}