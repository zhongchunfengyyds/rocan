/*******************************************************************************
 *
 * Copyright (c) 2001-2006 Primeton Technologies, Ltd.
 * All rights reserved.
 *
 * Created on Apr 11, 2008
 *******************************************************************************/
package com.cgn.itmp.basecommon;

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
 *   <li>{@link com.oa.webofficetool.webofficedataset.Document#getDocumentid <em>Documentid</em>}</li>
 *   <li>{@link com.oa.webofficetool.webofficedataset.Document#getRecordid <em>Recordid</em>}</li>
 *   <li>{@link com.oa.webofficetool.webofficedataset.Document#getTemplate <em>Template</em>}</li>
 *   <li>{@link com.oa.webofficetool.webofficedataset.Document#getSubject <em>Subject</em>}</li>
 *   <li>{@link com.oa.webofficetool.webofficedataset.Document#getAuthor <em>Author</em>}</li>
 *   <li>{@link com.oa.webofficetool.webofficedataset.Document#getFiledate <em>Filedate</em>}</li>
 *   <li>{@link com.oa.webofficetool.webofficedataset.Document#getFiletype <em>Filetype</em>}</li>
 *   <li>{@link com.oa.webofficetool.webofficedataset.Document#getHtmlpath <em>Htmlpath</em>}</li>
 *   <li>{@link com.oa.webofficetool.webofficedataset.Document#getStatus <em>Status</em>}</li>
 *   <li>{@link com.oa.webofficetool.webofficedataset.Document#getUseid <em>Useid</em>}</li>
 *   <li>{@link com.oa.webofficetool.webofficedataset.Document#getUsername <em>Username</em>}</li>
 *   <li>{@link com.oa.webofficetool.webofficedataset.Document#getOrgid <em>Orgid</em>}</li>
 *   <li>{@link com.oa.webofficetool.webofficedataset.Document#getOrgname <em>Orgname</em>}</li>
 * </ul>
 * </p>
 *
 * @extends DataObject;
 */
public interface Document extends DataObject {

	public final static String QNAME = "com.oa.webofficetool.webofficedataset.Document";

	public final static Type TYPE = TypeHelper.INSTANCE.getType("com.oa.webofficetool.webofficedataset", "Document");

	public final static IObjectFactory<Document> FACTORY = new IObjectFactory<Document>() {
		public Document create() {
			return (Document) DataFactory.INSTANCE.create(TYPE);
		}
	};

	/**
	 * Returns the value of the '<em><b>Documentid</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Documentid</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Documentid</em>' attribute.
	 * @see #setDocumentid(int)
	 */
	public int getDocumentid();

	/**
	 * Sets the value of the '{@link com.oa.webofficetool.webofficedataset.Document#getDocumentid <em>Documentid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Documentid</em>' attribute.
	 * @see #getDocumentid()
	 */
	public void setDocumentid(int documentid);

	/**
	 * Returns the value of the '<em><b>Recordid</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Recordid</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Recordid</em>' attribute.
	 * @see #setRecordid(java.lang.String)
	 */
	public String getRecordid();

	/**
	 * Sets the value of the '{@link com.oa.webofficetool.webofficedataset.Document#getRecordid <em>Recordid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Recordid</em>' attribute.
	 * @see #getRecordid()
	 */
	public void setRecordid(String recordid);

	/**
	 * Returns the value of the '<em><b>Template</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Template</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Template</em>' attribute.
	 * @see #setTemplate(java.lang.String)
	 */
	public String getTemplate();

	/**
	 * Sets the value of the '{@link com.oa.webofficetool.webofficedataset.Document#getTemplate <em>Template</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Template</em>' attribute.
	 * @see #getTemplate()
	 */
	public void setTemplate(String template);

	/**
	 * Returns the value of the '<em><b>Subject</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Subject</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Subject</em>' attribute.
	 * @see #setSubject(java.lang.String)
	 */
	public String getSubject();

	/**
	 * Sets the value of the '{@link com.oa.webofficetool.webofficedataset.Document#getSubject <em>Subject</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Subject</em>' attribute.
	 * @see #getSubject()
	 */
	public void setSubject(String subject);

	/**
	 * Returns the value of the '<em><b>Author</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Author</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Author</em>' attribute.
	 * @see #setAuthor(java.lang.String)
	 */
	public String getAuthor();

	/**
	 * Sets the value of the '{@link com.oa.webofficetool.webofficedataset.Document#getAuthor <em>Author</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Author</em>' attribute.
	 * @see #getAuthor()
	 */
	public void setAuthor(String author);

	/**
	 * Returns the value of the '<em><b>Filedate</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Filedate</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Filedate</em>' attribute.
	 * @see #setFiledate(java.util.Date)
	 */
	public Date getFiledate();

	/**
	 * Sets the value of the '{@link com.oa.webofficetool.webofficedataset.Document#getFiledate <em>Filedate</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Filedate</em>' attribute.
	 * @see #getFiledate()
	 */
	public void setFiledate(Date filedate);

	/**
	 * Returns the value of the '<em><b>Filetype</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Filetype</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Filetype</em>' attribute.
	 * @see #setFiletype(java.lang.String)
	 */
	public String getFiletype();

	/**
	 * Sets the value of the '{@link com.oa.webofficetool.webofficedataset.Document#getFiletype <em>Filetype</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Filetype</em>' attribute.
	 * @see #getFiletype()
	 */
	public void setFiletype(String filetype);

	/**
	 * Returns the value of the '<em><b>Htmlpath</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Htmlpath</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Htmlpath</em>' attribute.
	 * @see #setHtmlpath(java.lang.String)
	 */
	public String getHtmlpath();

	/**
	 * Sets the value of the '{@link com.oa.webofficetool.webofficedataset.Document#getHtmlpath <em>Htmlpath</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Htmlpath</em>' attribute.
	 * @see #getHtmlpath()
	 */
	public void setHtmlpath(String htmlpath);

	/**
	 * Returns the value of the '<em><b>Status</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Status</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Status</em>' attribute.
	 * @see #setStatus(java.lang.String)
	 */
	public String getStatus();

	/**
	 * Sets the value of the '{@link com.oa.webofficetool.webofficedataset.Document#getStatus <em>Status</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Status</em>' attribute.
	 * @see #getStatus()
	 */
	public void setStatus(String status);

	/**
	 * Returns the value of the '<em><b>Useid</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Useid</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Useid</em>' attribute.
	 * @see #setUseid(java.lang.String)
	 */
	public String getUseid();

	/**
	 * Sets the value of the '{@link com.oa.webofficetool.webofficedataset.Document#getUseid <em>Useid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Useid</em>' attribute.
	 * @see #getUseid()
	 */
	public void setUseid(String useid);

	/**
	 * Returns the value of the '<em><b>Username</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Username</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Username</em>' attribute.
	 * @see #setUsername(java.lang.String)
	 */
	public String getUsername();

	/**
	 * Sets the value of the '{@link com.oa.webofficetool.webofficedataset.Document#getUsername <em>Username</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Username</em>' attribute.
	 * @see #getUsername()
	 */
	public void setUsername(String username);

	/**
	 * Returns the value of the '<em><b>Orgid</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Orgid</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Orgid</em>' attribute.
	 * @see #setOrgid(java.lang.String)
	 */
	public String getOrgid();

	/**
	 * Sets the value of the '{@link com.oa.webofficetool.webofficedataset.Document#getOrgid <em>Orgid</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Orgid</em>' attribute.
	 * @see #getOrgid()
	 */
	public void setOrgid(String orgid);

	/**
	 * Returns the value of the '<em><b>Orgname</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Orgname</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Orgname</em>' attribute.
	 * @see #setOrgname(java.lang.String)
	 */
	public String getOrgname();

	/**
	 * Sets the value of the '{@link com.oa.webofficetool.webofficedataset.Document#getOrgname <em>Orgname</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Orgname</em>' attribute.
	 * @see #getOrgname()
	 */
	public void setOrgname(String orgname);


}