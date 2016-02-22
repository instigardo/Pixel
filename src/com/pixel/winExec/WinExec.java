package com.pixel.winExec;

import java.io.*;

public class WinExec {
 public int indexDocs(String file){
	 String ss="";
	 
	 try {
		    // Execute command
		//    String changeDir = "cd c:\\PSTools";
		//    Runtime.getRuntime().exec(changeDir);
		 
	      String command = "C:\\PSTools\\psexec \\\\113.128.161.154 java "
		    		+ "-Durl=http://localhost:8983/solr/techproducts/update/extract "
		    		+ "-Dparams=literal.id=html1 -jar C:\\post.jar "
		    		+ "C:\\Users\\Administrator\\Downloads\\solr-5.4.1\\solr-5.4.1\\example\\exampledocs\\"+file;		      
	         Process process = Runtime.getRuntime().exec(command);
	         
	         BufferedReader stdInput = new BufferedReader(new InputStreamReader(process.getInputStream()));

	         while((ss = stdInput.readLine()) != null) {
	            System.out.print(ss);
	         }
	      } catch (IOException e) {
	         e.printStackTrace();
	      }
	 return 1;
 }
 public static void main(String[] args) {
	 WinExec ex=new WinExec();
	 ex.indexDocs("test.html");
	 
}
}
