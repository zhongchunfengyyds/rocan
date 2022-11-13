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

import java.util.Date;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Test</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getJd <em>Jd</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getJz <em>Jz</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getOverhaulsq <em>Overhaulsq</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getFunposition <em>Funposition</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getFocde <em>Focde</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getCheckstage <em>Checkstage</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getIstakeout <em>Istakeout</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getFoposition <em>Foposition</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getFosize <em>Fosize</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getFokg <em>Fokg</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getFoattribute <em>Foattribute</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getFodisimgfj <em>Fodisimgfj</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getFj <em>Fj</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getRemake <em>Remake</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getIsdel <em>Isdel</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getFileid <em>Fileid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getFilepath <em>Filepath</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getFodisimgfileid <em>Fodisimgfileid</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getFodisimgfilepath <em>Fodisimgfilepath</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getChangeReason <em>ChangeReason</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getChangeInfo <em>ChangeInfo</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getChangeUser <em>ChangeUser</em>}</li>
 *   <li>{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getChangeDate <em>ChangeDate</em>}</li>
 * </ul>
 * </p>
 *
 * @extends DataObject;
 */
public interface Foreignmattermg_mf extends DataObject {

	public static final String QNAME = "com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf";

	public static final Type TYPE = TypeHelper.INSTANCE.getType("com.cgn.itmp.inspectcomponentmanage.foreignmattermg", "Foreignmattermg_mf");

	public static final IObjectFactory<Foreignmattermg_mf> FACTORY = new IObjectFactory<Foreignmattermg_mf>() {
		public Foreignmattermg_mf create() {
			return (Foreignmattermg_mf) DataFactory.INSTANCE.create(TYPE);
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getUuid <em>Uuid</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getJd <em>Jd</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getJz <em>Jz</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getOverhaulsq <em>Overhaulsq</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getFunposition <em>Funposition</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getFocde <em>Focde</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getCheckstage <em>Checkstage</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getIstakeout <em>Istakeout</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getFoposition <em>Foposition</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getFosize <em>Fosize</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getFokg <em>Fokg</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getFoattribute <em>Foattribute</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Foattribute</em>' attribute.
	 * @see #getFoattribute()
	 */
	public void setFoattribute(String foattribute);

	/**
	 * Returns the value of the '<em><b>Fodisimgfj</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Fodisimgfj</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Fodisimgfj</em>' attribute.
	 * @see #setFodisimgfj(java.lang.String)
	 */
	public String getFodisimgfj();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getFodisimgfj <em>Fodisimgfj</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Fodisimgfj</em>' attribute.
	 * @see #getFodisimgfj()
	 */
	public void setFodisimgfj(String fodisimgfj);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getFj <em>Fj</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Fj</em>' attribute.
	 * @see #getFj()
	 */
	public void setFj(String fj);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getRemake <em>Remake</em>}' attribute.
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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getIsdel <em>Isdel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Isdel</em>' attribute.
	 * @see #getIsdel()
	 */
	public void setIsdel(String isdel);

	/**
	 * Returns the value of the '<em><b>Fileid</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Fileid</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Fileid</em>' attribute.
	 * @see #setFileid(java.lang.String)
	 */
	public String getFileid();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getFileid <em>Fileid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Fileid</em>' attribute.
	 * @see #getFileid()
	 */
	public void setFileid(String fileid);

	/**
	 * Returns the value of the '<em><b>Filepath</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Filepath</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Filepath</em>' attribute.
	 * @see #setFilepath(java.lang.String)
	 */
	public String getFilepath();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getFilepath <em>Filepath</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Filepath</em>' attribute.
	 * @see #getFilepath()
	 */
	public void setFilepath(String filepath);

	/**
	 * Returns the value of the '<em><b>Fodisimgfileid</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Fodisimgfileid</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Fodisimgfileid</em>' attribute.
	 * @see #setFodisimgfileid(java.lang.String)
	 */
	public String getFodisimgfileid();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getFodisimgfileid <em>Fodisimgfileid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Fodisimgfileid</em>' attribute.
	 * @see #getFodisimgfileid()
	 */
	public void setFodisimgfileid(String fodisimgfileid);

	/**
	 * Returns the value of the '<em><b>Fodisimgfilepath</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Fodisimgfilepath</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Fodisimgfilepath</em>' attribute.
	 * @see #setFodisimgfilepath(java.lang.String)
	 */
	public String getFodisimgfilepath();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getFodisimgfilepath <em>Fodisimgfilepath</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Fodisimgfilepath</em>' attribute.
	 * @see #getFodisimgfilepath()
	 */
	public void setFodisimgfilepath(String fodisimgfilepath);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getChangeReason <em>ChangeReason</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>ChangeReason</em>' attribute.
	 * @see #getChangeReason()
	 */
	public void setChangeReason(String changeReason);

	/**
	 * Returns the value of the '<em><b>ChangeInfo</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>ChangeInfo</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>ChangeInfo</em>' attribute.
	 * @see #setChangeInfo(java.lang.String)
	 */
	public String getChangeInfo();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getChangeInfo <em>ChangeInfo</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>ChangeInfo</em>' attribute.
	 * @see #getChangeInfo()
	 */
	public void setChangeInfo(String changeInfo);

	/**
	 * Returns the value of the '<em><b>ChangeUser</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>ChangeUser</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>ChangeUser</em>' attribute.
	 * @see #setChangeUser(java.lang.String)
	 */
	public String getChangeUser();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getChangeUser <em>ChangeUser</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>ChangeUser</em>' attribute.
	 * @see #getChangeUser()
	 */
	public void setChangeUser(String changeUser);

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
	 * Sets the value of the '{@link com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf#getChangeDate <em>ChangeDate</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>ChangeDate</em>' attribute.
	 * @see #getChangeDate()
	 */
	public void setChangeDate(Date changeDate);


}