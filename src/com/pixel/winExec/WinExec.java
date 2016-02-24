package com.pixel.winExec;

import java.io.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.pixel.helper.SQLHelper;

public class WinExec {
	SQLHelper help=new SQLHelper();
 public int indexDocs(String file,String id){
	 String ss="";
	 
	 try {
		    // Execute command
		//    String changeDir = "cd c:\\PSTools";
		//    Runtime.getRuntime().exec(changeDir);
		 id+="/"+file.substring(file.lastIndexOf("\\")+1);
	      String command = "C:\\PSTools\\psexec \\\\113.128.161.154 java "
		    		+ "-Durl=http://localhost:8983/solr/techproducts/update/extract "
		    		+ "-Dparams=literal.id="+id+" -jar C:\\post.jar "
		    		+ file;		      
	         Process process = Runtime.getRuntime().exec(command);
	         System.out.println(command);
	         BufferedReader stdInput = new BufferedReader(new InputStreamReader(process.getInputStream()));

	         while((ss = stdInput.readLine()) != null) {
	            System.out.print(ss);
	         }
	      } catch (IOException e) {
	         e.printStackTrace();
	      }
	 return 1;
 }

void getGSAM(String cle,String node_id) throws SQLException
{
	String gsam="";
	String query="select SENS_TKN from pixeltm.gsam_info where CLE_NAME='"+cle+"'";
	SQLHelper help=new SQLHelper();
	//help.INSERT("user_info", "'12','12','12','12','12','12',CURRENT_TIMESTAMP(0)");
	ResultSet rs=help.Query(query);
	if(rs.next())
		gsam=rs.getString("SENS_TKN");
	String Query="update  node_dtl set SENS_TKN='"+gsam+"' where NODE_ID='"+node_id+"'";
	help.custom(Query);
}
	 
public void ParseContractDoc(String str,String NODE_ID) throws SQLException
{
String ContractID="";
int start=str.indexOf("Contract ID:")+12;
int end=str.indexOf(" ",start+3);
ContractID=str.substring(start,end);
String Query="INSERT INTO pixeltm.NODE_ATTR (NODE_ATTR_ID,NODE_ID,ATTR_KEY ,ATTR_VALUE) SELECT MAX(NODE_ATTR_ID)+1,'"+NODE_ID+"','contractid','"+ContractID+"' from pixeltm.NODE_ATTR;";
help.custom(Query);
String cle="";
start=str.indexOf("Customer Signatory:")+19;
end=str.indexOf(" ",start+3);
cle=str.substring(start,end);
 Query="INSERT INTO pixeltm.NODE_ATTR (NODE_ATTR_ID,NODE_ID,ATTR_KEY ,ATTR_VALUE) SELECT MAX(NODE_ATTR_ID)+1,'"+NODE_ID+"','cle','"+cle+"' from pixeltm.NODE_ATTR;";
 
 help.custom(Query);
 getGSAM(cle,NODE_ID);
String vle="";
start=str.indexOf(" Verizon:")+9;
end=str.indexOf("Registered Office Address:",start+5);
vle=str.substring(start,end-2);
 Query="INSERT INTO pixeltm.NODE_ATTR (NODE_ATTR_ID,NODE_ID,ATTR_KEY ,ATTR_VALUE) SELECT MAX(NODE_ATTR_ID)+1,'"+NODE_ID+"','vle','"+vle+"' from pixeltm.NODE_ATTR;";
 help.custom(Query);

Pattern p = Pattern.compile("Quote ID \\d{8}");
Matcher m = p.matcher(str);

List<String> quoteid = new ArrayList<String>();
while (m.find()) {
	String quote=m.group().replace("Quote ID ", "");
	if(!quoteid.contains(quote))
		{
		quoteid.add(m.group());
		 Query="INSERT INTO pixeltm.NODE_ATTR (NODE_ATTR_ID,NODE_ID,ATTR_KEY ,ATTR_VALUE) SELECT MAX(NODE_ATTR_ID)+1,'"+NODE_ID+"','quoteid','"+quoteid+"' from pixeltm.NODE_ATTR;";
		 help.custom(Query);
		}
}
}

public void ParseQuoteDoc(String str,String file) throws SQLException
{
	String QUOTE="";
	int start=str.indexOf(" Quote ID:")+10;
	int end=str.indexOf(" ",start+3);
	QUOTE=str.substring(start,end);
	String	Query="INSERT INTO pixeltm.NODE_ATTR (NODE_ATTR_ID,NODE_ID,ATTR_KEY ,ATTR_VALUE) SELECT MAX(NODE_ATTR_ID)+1,'"+file+"','quoteid','"+QUOTE+"' from pixeltm.NODE_ATTR;";
	help.custom(Query);
	
	String CLE="";
 start=str.indexOf(" Master Customer Legal Entity:")+29;
 end=str.indexOf(" ",start+3);
CLE=str.substring(start+2,end);
 Query="INSERT INTO pixeltm.NODE_ATTR (NODE_ATTR_ID,NODE_ID,ATTR_KEY ,ATTR_VALUE) SELECT MAX(NODE_ATTR_ID)+1,'"+file+"','cle','"+CLE+"' from pixeltm.NODE_ATTR;";
 help.custom(Query);
 getGSAM(CLE,file);
 
String VLE="";
start=str.indexOf(" Master Verizon Legal Entity:")+29;
end=str.indexOf(" Customer Address:");
VLE=str.substring(start,end);
Query="INSERT INTO pixeltm.NODE_ATTR (NODE_ATTR_ID,NODE_ID,ATTR_KEY ,ATTR_VALUE) SELECT MAX(NODE_ATTR_ID)+1,'"+file+"','vle','"+VLE+"' from pixeltm.NODE_ATTR;";
help.custom(Query);
String CNTRCT="";
start=str.indexOf(" Contract ID:")+13;
 end=str.indexOf(" ",start+3);
CNTRCT=str.substring(start,end);   
Query="INSERT INTO pixeltm.NODE_ATTR (NODE_ATTR_ID,NODE_ID,ATTR_KEY ,ATTR_VALUE) SELECT MAX(NODE_ATTR_ID)+1,'"+file+"','contractid','"+CNTRCT+"' from pixeltm.NODE_ATTR;";
help.custom(Query);
}

 public int OCR(String file, String path){
	 String ss="";
	 //file="C:\\ocr.jpg";
	 try {
		    // Execute command
		//    String changeDir = "cd c:\\PSTools";
		//    Runtime.getRuntime().exec(changeDir);
		 
		 //psexec \\COMPUTER -e cmd /c (COMMAND1 ^& COMMAND2 ^& COMMAND3)
		 String command1 = "C:\\PSTools\\psexec \\\\113.128.165.255 java "
		    		+ "-jar pdfbox-app-1.8.11.jar ExtractImages"
		    		+ file;				      
	         Process process1 = Runtime.getRuntime().exec(command1);
	         
	      String command = "C:\\PSTools\\psexec \\\\113.128.165.255 -e cmd /c \"cd C:\\tesseract\\ & "
		    		+ " tesseract "+file
		    		+  file+".txt -l eng\"";		      
	         Process process = Runtime.getRuntime().exec(command);
	         System.out.println(command);
	         BufferedReader stdInput = new BufferedReader(new InputStreamReader(process.getInputStream()));

	         while(true) {
	        	 
	        	 ss=stdInput.readLine();
	        	 if(ss==null)break;
	        	 if(ss.contentEquals("Tesseract Open Source OCR Engine v3.05.00dev with Leptonica"))break;
	            System.out.print(ss);
	         }
	      } catch (IOException e) {
	         e.printStackTrace();
	      }
	 return 1;
 }
 
 
 public static void main(String[] args) {
	 WinExec ex=new WinExec();
	// ex.indexDocs("test.html");
	 ex.OCR("file", "path");
	 
}
}
