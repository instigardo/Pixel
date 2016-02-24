<%@page import="javax.json.JsonArray"%>
<%@page import="com.pixel.puller.Solr"%>
<%@ page language="java" contentType="application/json; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 		
String d=request.getParameter("d");

Solr solr=new Solr();
	JsonArray json=solr.JsonGet(d);
	//out.print(d);
	out.print(json.toString());
	%>
