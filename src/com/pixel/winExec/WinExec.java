package com.pixel.winExec;

import java.io.*;

public class WinExec {
 public int indexDocs(String file, String path){
	 String ss="";
	 
	 try {
		    // Execute command
		//    String changeDir = "cd c:\\PSTools";
		//    Runtime.getRuntime().exec(changeDir);
		 
	      String command = "C:\\PSTools\\psexec \\\\113.128.161.154 java "
		    		+ "-Durl=http://localhost:8983/solr/techproducts/update/extract "
		    		+ "-Dparams=literal.id="+path+file+" -jar C:\\post.jar "
		    		+ "C:\\Users\\Administrator\\Downloads\\solr-5.4.1\\solr-5.4.1\\example\\exampledocs"+file;		      
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
 
 public int OCR(String file, String path){
	 String ss="";
	 file="C:\\ocr.jpg";
	 try {
		    // Execute command
		//    String changeDir = "cd c:\\PSTools";
		//    Runtime.getRuntime().exec(changeDir);
		 
		 //psexec \\COMPUTER -e cmd /c (COMMAND1 ^& COMMAND2 ^& COMMAND3)
	      String command = "C:\\PSTools\\psexec \\\\113.128.165.255 -e cmd /c \"cd C:\\Users\\Administrator\\Downloads\\tesseract_software\\ & "
		    		+ " tesseract "+file
		    		+ " \\\\113.128.166.0\\Users\\Administrator\\Desktop\\aa\\ocr.jpg.txt -l eng\"";		      
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
