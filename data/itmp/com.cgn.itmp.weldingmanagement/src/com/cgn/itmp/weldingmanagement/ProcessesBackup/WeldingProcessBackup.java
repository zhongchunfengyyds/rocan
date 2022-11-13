/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.weldingmanagement.ProcessesBackup;

import com.eos.data.sdo.IObjectFactory;

import commonj.sdo.DataObject;
import commonj.sdo.Type;
import commonj.sdo.helper.DataFactory;
import commonj.sdo.helper.TypeHelper;

import java.util.Date;
import java.util.List;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Test</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getUuid <em>Uuid</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getProcessnam <em>Processnam</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getTemplatenumber <em>Templatenumber</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getNote <em>Note</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getFounder <em>Founder</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getCreatetime <em>Createtime</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getState <em>State</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getIsdel <em>Isdel</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getScope <em>Scope</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getJd <em>Jd</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getProcessinstid <em>Processinstid</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getScry <em>Scry</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getScsj <em>Scsj</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getShry <em>Shry</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getShsj <em>Shsj</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getFhry <em>Fhry</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getFhsj <em>Fhsj</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getCcry <em>Ccry</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getEditor <em>Editor</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getEdittime <em>Edittime</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getRelationid <em>Relationid</em>}</li>
 *   <li>{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getWeldingProcessStepsBackups <em>WeldingProcessStepsBackups</em>}</li>
 * </ul>
 * </p>
 *
 * @extends DataObject;
 */
public interface WeldingProcessBackup extends DataObject {

	public static final String QNAME = "com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup";

	public static final Type TYPE = TypeHelper.INSTANCE.getType("com.cgn.itmp.weldingmanagement.ProcessesBackup", "WeldingProcessBackup");

	public static final IObjectFactory<WeldingProcessBackup> FACTORY = new IObjectFactory<WeldingProcessBackup>() {
		public WeldingProcessBackup create() {
			return (WeldingProcessBackup) DataFactory.INSTANCE.create(TYPE);
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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getUuid <em>Uuid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Uuid</em>' attribute.
	 * @see #getUuid()
	 */
	public void setUuid(String uuid);

	/**
	 * Returns the value of the '<em><b>Processnam</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Processnam</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Processnam</em>' attribute.
	 * @see #setProcessnam(java.lang.String)
	 */
	public String getProcessnam();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getProcessnam <em>Processnam</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Processnam</em>' attribute.
	 * @see #getProcessnam()
	 */
	public void setProcessnam(String processnam);

	/**
	 * Returns the value of the '<em><b>Templatenumber</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Templatenumber</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Templatenumber</em>' attribute.
	 * @see #setTemplatenumber(java.lang.String)
	 */
	public String getTemplatenumber();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getTemplatenumber <em>Templatenumber</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Templatenumber</em>' attribute.
	 * @see #getTemplatenumber()
	 */
	public void setTemplatenumber(String templatenumber);

	/**
	 * Returns the value of the '<em><b>Note</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Note</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Note</em>' attribute.
	 * @see #setNote(java.lang.String)
	 */
	public String getNote();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getNote <em>Note</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Note</em>' attribute.
	 * @see #getNote()
	 */
	public void setNote(String note);

	/**
	 * Returns the value of the '<em><b>Founder</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Founder</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Founder</em>' attribute.
	 * @see #setFounder(java.lang.String)
	 */
	public String getFounder();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getFounder <em>Founder</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Founder</em>' attribute.
	 * @see #getFounder()
	 */
	public void setFounder(String founder);

	/**
	 * Returns the value of the '<em><b>Createtime</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Createtime</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Createtime</em>' attribute.
	 * @see #setCreatetime(java.lang.String)
	 */
	public String getCreatetime();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getCreatetime <em>Createtime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Createtime</em>' attribute.
	 * @see #getCreatetime()
	 */
	public void setCreatetime(String createtime);

	/**
	 * Returns the value of the '<em><b>State</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>State</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>State</em>' attribute.
	 * @see #setState(java.lang.String)
	 */
	public String getState();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getState <em>State</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>State</em>' attribute.
	 * @see #getState()
	 */
	public void setState(String state);

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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getIsdel <em>Isdel</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Isdel</em>' attribute.
	 * @see #getIsdel()
	 */
	public void setIsdel(String isdel);

	/**
	 * Returns the value of the '<em><b>Scope</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Scope</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Scope</em>' attribute.
	 * @see #setScope(java.lang.String)
	 */
	public String getScope();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getScope <em>Scope</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Scope</em>' attribute.
	 * @see #getScope()
	 */
	public void setScope(String scope);

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
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getJd <em>Jd</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Jd</em>' attribute.
	 * @see #getJd()
	 */
	public void setJd(String jd);

	/**
	 * Returns the value of the '<em><b>Processinstid</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Processinstid</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Processinstid</em>' attribute.
	 * @see #setProcessinstid(java.lang.String)
	 */
	public String getProcessinstid();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getProcessinstid <em>Processinstid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Processinstid</em>' attribute.
	 * @see #getProcessinstid()
	 */
	public void setProcessinstid(String processinstid);

	/**
	 * Returns the value of the '<em><b>Scry</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Scry</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Scry</em>' attribute.
	 * @see #setScry(java.lang.String)
	 */
	public String getScry();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getScry <em>Scry</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Scry</em>' attribute.
	 * @see #getScry()
	 */
	public void setScry(String scry);

	/**
	 * Returns the value of the '<em><b>Scsj</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Scsj</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Scsj</em>' attribute.
	 * @see #setScsj(java.util.Date)
	 */
	public Date getScsj();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getScsj <em>Scsj</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Scsj</em>' attribute.
	 * @see #getScsj()
	 */
	public void setScsj(Date scsj);

	/**
	 * Returns the value of the '<em><b>Shry</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Shry</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Shry</em>' attribute.
	 * @see #setShry(java.lang.String)
	 */
	public String getShry();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getShry <em>Shry</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Shry</em>' attribute.
	 * @see #getShry()
	 */
	public void setShry(String shry);

	/**
	 * Returns the value of the '<em><b>Shsj</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Shsj</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Shsj</em>' attribute.
	 * @see #setShsj(java.util.Date)
	 */
	public Date getShsj();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getShsj <em>Shsj</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Shsj</em>' attribute.
	 * @see #getShsj()
	 */
	public void setShsj(Date shsj);

	/**
	 * Returns the value of the '<em><b>Fhry</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Fhry</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Fhry</em>' attribute.
	 * @see #setFhry(java.lang.String)
	 */
	public String getFhry();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getFhry <em>Fhry</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Fhry</em>' attribute.
	 * @see #getFhry()
	 */
	public void setFhry(String fhry);

	/**
	 * Returns the value of the '<em><b>Fhsj</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Fhsj</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Fhsj</em>' attribute.
	 * @see #setFhsj(java.util.Date)
	 */
	public Date getFhsj();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getFhsj <em>Fhsj</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Fhsj</em>' attribute.
	 * @see #getFhsj()
	 */
	public void setFhsj(Date fhsj);

	/**
	 * Returns the value of the '<em><b>Ccry</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Ccry</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Ccry</em>' attribute.
	 * @see #setCcry(java.lang.String)
	 */
	public String getCcry();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getCcry <em>Ccry</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Ccry</em>' attribute.
	 * @see #getCcry()
	 */
	public void setCcry(String ccry);

	/**
	 * Returns the value of the '<em><b>Editor</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Editor</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Editor</em>' attribute.
	 * @see #setEditor(java.lang.String)
	 */
	public String getEditor();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getEditor <em>Editor</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Editor</em>' attribute.
	 * @see #getEditor()
	 */
	public void setEditor(String editor);

	/**
	 * Returns the value of the '<em><b>Edittime</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Edittime</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Edittime</em>' attribute.
	 * @see #setEdittime(java.util.Date)
	 */
	public Date getEdittime();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getEdittime <em>Edittime</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Edittime</em>' attribute.
	 * @see #getEdittime()
	 */
	public void setEdittime(Date edittime);

	/**
	 * Returns the value of the '<em><b>Relationid</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Relationid</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Relationid</em>' attribute.
	 * @see #setRelationid(java.lang.String)
	 */
	public String getRelationid();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getRelationid <em>Relationid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Relationid</em>' attribute.
	 * @see #getRelationid()
	 */
	public void setRelationid(String relationid);

	/**
	 * Returns the value of the '<em><b>WeldingProcessStepsBackups</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>WeldingProcessStepsBackups</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>WeldingProcessStepsBackups</em>' attribute.
	 * @see #setWeldingProcessStepsBackups(com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessStepsBackup)
	 */
	public List<WeldingProcessStepsBackup> getWeldingProcessStepsBackups();

	/**
	 * Sets the value of the '{@link com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup#getWeldingProcessStepsBackups <em>WeldingProcessStepsBackups</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>WeldingProcessStepsBackups</em>' attribute.
	 * @see #getWeldingProcessStepsBackups()
	 */
	public void setWeldingProcessStepsBackups(List<WeldingProcessStepsBackup> weldingProcessStepsBackups);


}