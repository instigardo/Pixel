package com.pixel.servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.pixel.helper.EnvVariables;
import com.pixel.helper.SQLHelper;
import com.pixel.puller.Solr;
import com.pixel.winExec.WinExec;

@WebServlet("/UploadServlet")
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ServletFileUpload uploader = null;
	@Override
	public void init() throws ServletException{
		String pathname="C:\\";
		DiskFileItemFactory fileFactory = new DiskFileItemFactory();
		File filesDir=new File(pathname);
		//File filesDir = (File) getServletContext().getAttribute("FILES_DIR_FILE");
		fileFactory.setRepository(filesDir);
		this.uploader = new ServletFileUpload(fileFactory);
	}
	WinExec exec=new WinExec();
	SQLHelper help=new SQLHelper();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EnvVariables envvar=new EnvVariables();
		Solr solr=new Solr();
		String path="home/Contract";//request.getParameter("path");
		System.out.println(path);

		String pathid=path;
		String folderId=pathid.substring(pathid.lastIndexOf("/")+1);
		 path=path.replace("/", "\\");
		 String fileloc=path.replace("home", envvar.getCvsPath());
		 path=path.replace("home", envvar.getCvsDir());
		
		if(!ServletFileUpload.isMultipartContent(request)){
			throw new ServletException("Content type is not multipart/form-data");
		}
		try {
			List<FileItem> fileItemsList = uploader.parseRequest(request);
			Iterator<FileItem> fileItemsIterator = fileItemsList.iterator();
			while(fileItemsIterator.hasNext()){
				FileItem fileItem = fileItemsIterator.next();

				System.out.println("FieldName="+fileItem.getFieldName());
				System.out.println("FileName="+fileItem.getName());
				System.out.println("ContentType="+fileItem.getContentType());
				System.out.println("Size in bytes="+fileItem.getSize());
				//System.out.println("String="+fileItem.getString());
				//	C:\Users\Administrator\\Downloads\\solr-5.4.1\\solr-5.4.1\\example\\exampledocs
				if((fileItem.getFieldName()).equals("file")){
					String fileName=path+"\\"+fileItem.getName().substring(fileItem.getName().lastIndexOf("\\")+1);
					String fileid=folderId+"\\"+fileItem.getName().substring(fileItem.getName().lastIndexOf("\\")+1);
					fileloc=fileloc+"\\"+fileItem.getName().substring(fileItem.getName().lastIndexOf("\\")+1);
					String name=fileItem.getName().substring(fileItem.getName().lastIndexOf("\\")+1);
					System.out.println(fileloc);
					File file = new File(fileName);
					System.out.println("Absolute Path at server="+file.getAbsolutePath());
					fileItem.write(file);

					System.out.println("File "+fileItem.getName()+ " uploaded successfully.");
					if(fileItem.getContentType().contains("pdf"))
					//	exec.OCR(fileName,folderId);
					exec.indexDocs(fileloc,folderId);
			         help.INSERT("pixeltm.NODE_DTL", "'"+folderId+"/"+name+"','"+name+"','"+fileItem.getContentType()+"','"+pathid+"','1.2.1','saxenhi',null,'100',CURRENT_TIMESTAMP(0),null,'1','1',null");
			         help.INSERT("pixeltm.NODE_LOG", "'"+folderId+"/"+name+"','create','saxenhi',CURRENT_TIMESTAMP(0)");
			 		//Solr ac=new Solr();
			 		//String str=ac.JsonGet("Contract");
					//System.out.println(ac.JsonGet("Contract"));
					//if(folderId.equals("Contract"))
					//	exec.ParseContractDoc(str, fileName);
					//else if(folderId.equals("Quote"))
					//	exec.ParseQuoteDoc(str, fileName);
				}
			}
		} catch (FileUploadException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
