<%@page import="com.eos.data.datacontext.DataContextManager"%>
<%@page import="com.cgn.components.coframe.framework.LocaleUtil"%>
<%@page import="java.util.Locale"%>
<%
Locale locale = LocaleUtil.getLocale(request);
String lang = LocaleUtil.getLanguage(locale);
session.setAttribute(LocaleUtil.LOCALE, lang);
DataContextManager.current().setCurrentLocale(locale);
%>