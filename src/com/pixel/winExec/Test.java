package com.pixel.winExec;

import java.io.*;

public class Test {
	public static void main(String[] args) {
	      final String dosCommand = "cmd /c dir /s";
	      final String location = "C:\\WINDOWS";
	      String command = "C:\\PSTools\\psexec \\\\113.128.161.154 java "
		    		+ "-Durl=http://localhost:8983/solr/techproducts/update/extract "
		    		+ "-Dparams=literal.id=html1 -jar C:\\post.jar "
		    		+ "C:\\Users\\Administrator\\Downloads\\solr-5.4.1\\solr-5.4.1\\example\\exampledocs\\test.html";	
	      try {
	         final Process process = Runtime.getRuntime().exec(
	            command);
	         final InputStream in = process.getInputStream();
	         int ch;
	         while((ch = in.read()) != -1) {
	            System.out.print((char)ch);
	         }
	      } catch (IOException e) {
	         e.printStackTrace();
	      }
	   }

}
