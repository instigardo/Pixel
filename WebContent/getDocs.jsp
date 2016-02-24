<%@ page language="java" contentType="application/json; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 
	if(request.getParameter("path").toLowerCase().equals("home")){
%>
	[
			{
				"id": "1",
				"name": "Project1",
				"last_modified": "2015-04-01T14:39:58Z",
				"last_modified_by": "NameModifier",
				"created_on": "2015-04-01T14:39:58Z",
				"version": "1.2.3",
				"type":"folder"
			},
			{
				"id": "2",
				"name": "FolderFiles",
				"last_modified": "2015-04-01T14:39:58Z",
				"last_modified_by": "NameModifier",
				"created_on": "2015-04-01T14:39:58Z",
				"version": "1.2.3",
				"type":"folder"
			},
			{
				"id": "3",
				"name": "ExcelDemo.xlsx",
				"last_modified": "2015-04-01T14:39:58Z",
				"last_modified_by": "NameModifier",
				"created_on": "2015-04-01T14:39:58Z",
				"version": "1.2.3",
				"type":"xlsx"
			},
			{
				"id": "4",
				"name": "project1_presentation_v1.pptx",
				"last_modified": "2015-04-01T14:39:58Z",
				"last_modified_by": "NameModifier",
				"created_on": "2015-04-01T14:39:58Z",
				"version": "1.2.3",
				"type":"pptx"
			},
			{
				"id": "5",
				"name": "ICD_Project1.docx",
				"last_modified": "2015-04-01T14:39:58Z",
				"last_modified_by": "NameModifier",
				"created_on": "2015-04-01T14:39:58Z",
				"version": "1.2.3",
				"type":"docx"
			},			
			{
				"id": "6",
				"name": "Project2",
				"last_modified": "2015-04-01T14:39:58Z",
				"last_modified_by": "NameModifier",
				"created_on": "2015-04-01T14:39:58Z",
				"version": "1.2.3",
				"type":"folder"
			},
			{
				"id": "8",
				"name": "ExcelDemo2.xlsx",
				"last_modified": "2015-04-01T14:39:58Z",
				"last_modified_by": "NameModifier",
				"created_on": "2015-04-01T14:39:58Z",
				"version": "1.2.3",
				"type":"xlsx"
			},
			{
				"id": "9",
				"name": "project2_presentation_v1.pptx",
				"last_modified": "2015-04-01T14:39:58Z",
				"last_modified_by": "NameModifier",
				"created_on": "2015-04-01T14:39:58Z",
				"version": "1.2.3",
				"type":"pptx"
			},
			{
				"id": "10",
				"name": "ICD_Project2.docx",
				"last_modified": "2015-04-01T14:39:58Z",
				"last_modified_by": "NameModifier",
				"created_on": "2015-04-01T14:39:58Z",
				"version": "1.2.3",
				"type":"docx"
			},
			{
				"id": "11",
				"name": "ExcelDemo3.xlsx",
				"last_modified": "2015-04-01T14:39:58Z",
				"last_modified_by": "NameModifier",
				"created_on": "2015-04-01T14:39:58Z",
				"version": "1.2.3",
				"type":"xlsx"
			},
			{
				"id": "12",
				"name": "project3_presentation_v1.pptx",
				"last_modified": "2015-04-01T14:39:58Z",
				"last_modified_by": "NameModifier",
				"created_on": "2015-04-01T14:39:58Z",
				"version": "1.2.3",
				"type":"pptx"
			},
			{
				"id": "13",
				"name": "ICD_Project3.docx",
				"last_modified": "2015-04-01T14:39:58Z",
				"last_modified_by": "NameModifier",
				"created_on": "2015-04-01T14:39:58Z",
				"version": "1.2.3",
				"type":"docx"
			},
			{
				"id": "11",
				"name": "ExcelDemo3.xlsx",
				"last_modified": "2015-04-01T14:39:58Z",
				"last_modified_by": "NameModifier",
				"created_on": "2015-04-01T14:39:58Z",
				"version": "1.2.3",
				"type":"xlsx"
			},
			{
				"id": "12",
				"name": "project4_presentation_v1.pptx",
				"last_modified": "2015-04-01T14:39:58Z",
				"last_modified_by": "NameModifier",
				"created_on": "2015-04-01T14:39:58Z",
				"version": "1.2.3",
				"type":"pptx"
			},
			{
				"id": "13",
				"name": "ICD_Project4.docx",
				"last_modified": "2015-04-01T14:39:58Z",
				"last_modified_by": "NameModifier",
				"created_on": "2015-04-01T14:39:58Z",
				"version": "1.2.3",
				"type":"docx"
			},
			{
				"id": "11",
				"name": "ExcelDemo3.xlsx",
				"last_modified": "2015-04-01T14:39:58Z",
				"last_modified_by": "NameModifier",
				"created_on": "2015-04-01T14:39:58Z",
				"version": "1.2.3",
				"type":"xlsx"
			},
			{
				"id": "12",
				"name": "project5_presentation_v1.pptx",
				"last_modified": "2015-04-01T14:39:58Z",
				"last_modified_by": "NameModifier",
				"created_on": "2015-04-01T14:39:58Z",
				"version": "1.2.3",
				"type":"pptx"
			},
			{
				"id": "13",
				"name": "ICD_Project5.docx",
				"last_modified": "2015-04-01T14:39:58Z",
				"last_modified_by": "NameModifier",
				"created_on": "2015-04-01T14:39:58Z",
				"version": "1.2.3",
				"type":"docx"
			}
		]
	<% 
	} else if(request.getParameter("path").toLowerCase().equals("home/quote")){ %>
		[
			{
				"id": "1",
				"name": "Quote1",
				"last_modified": "2015-04-01T14:39:58Z",
				"last_modified_by": "NameModifier",
				"created_on": "2015-04-01T14:39:58Z",
				"version": "1.2.3",
				"type":"folder"
			},
			{
				"id": "2",
				"name": "Quote2",
				"last_modified": "2015-04-01T14:39:58Z",
				"last_modified_by": "NameModifier",
				"created_on": "2015-04-01T14:39:58Z",
				"version": "1.2.3",
				"type":"folder"
			},
			{
				"id": "3",
				"name": "QuoteDocument1.docx",
				"last_modified": "2015-04-01T14:39:58Z",
				"last_modified_by": "NameModifier",
				"created_on": "2015-04-01T14:39:58Z",
				"version": "1.2.3",
				"type":"xlsx"
			}
		]
	<%		
	}else if(request.getParameter("path").toLowerCase().equals("home/sfdc")){ %>
		[
			{
				"id": "1",
				"name": "sfdc1",
				"last_modified": "2015-04-01T14:39:58Z",
				"last_modified_by": "NameModifier",
				"created_on": "2015-04-01T14:39:58Z",
				"version": "1.2.3",
				"type":"folder"
			},
			{
				"id": "2",
				"name": "sfdc2",
				"last_modified": "2015-04-01T14:39:58Z",
				"last_modified_by": "NameModifier",
				"created_on": "2015-04-01T14:39:58Z",
				"version": "1.2.3",
				"type":"folder"
			},
			{
				"id": "3",
				"name": "sfdc-doc.xlsx",
				"last_modified": "2015-04-01T14:39:58Z",
				"last_modified_by": "NameModifier",
				"created_on": "2015-04-01T14:39:58Z",
				"version": "1.2.3",
				"type":"xlsx"
			}
		]
	<%		
	}else if(request.getParameter("path").toLowerCase().equals("home/contract")){  %>
		[
			{
				"id": "1",
				"name": "contract1",
				"last_modified": "2015-04-01T14:39:58Z",
				"last_modified_by": "NameModifier",
				"created_on": "2015-04-01T14:39:58Z",
				"version": "1.2.3",
				"type":"folder"
			},
			{
				"id": "2",
				"name": "contract2",
				"last_modified": "2015-04-01T14:39:58Z",
				"last_modified_by": "NameModifier",
				"created_on": "2015-04-01T14:39:58Z",
				"version": "1.2.3",
				"type":"folder"
			},
			{
				"id": "3",
				"name": "contract.xlsx",
				"last_modified": "2015-04-01T14:39:58Z",
				"last_modified_by": "NameModifier",
				"created_on": "2015-04-01T14:39:58Z",
				"version": "1.2.3",
				"type":"xlsx"
			}
		]
	<%
	} else if(request.getParameter("path").toLowerCase().equals("home/price")){ %>
		[
			{
				"id": "1",
				"name": "price1",
				"last_modified": "2015-04-01T14:39:58Z",
				"last_modified_by": "NameModifier",
				"created_on": "2015-04-01T14:39:58Z",
				"version": "1.2.3",
				"type":"folder"
			},
			{
				"id": "2",
				"name": "price2",
				"last_modified": "2015-04-01T14:39:58Z",
				"last_modified_by": "NameModifier",
				"created_on": "2015-04-01T14:39:58Z",
				"version": "1.2.3",
				"type":"folder"
			},
			{
				"id": "3",
				"name": "price.xlsx",
				"last_modified": "2015-04-01T14:39:58Z",
				"last_modified_by": "NameModifier",
				"created_on": "2015-04-01T14:39:58Z",
				"version": "1.2.3",
				"type":"xlsx"
			}
		]
	<% } else { %>
	[]
	<% }
%>