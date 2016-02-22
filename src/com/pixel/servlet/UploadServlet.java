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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
			//	C:\Users\Administrator\\Downloads\\solr-5.4.1\\solr-5.4.1\\example\\exampledocs
				String fileName=fileItem.getName().substring(fileItem.getName().lastIndexOf("\\"));
				File file = new File("\\\\113.128.161.154\\Users\\Administrator\\Downloads\\solr-5.4.1\\solr-5.4.1\\example\\exampledocs"+fileName);
				System.out.println("Absolute Path at server="+file.getAbsolutePath());
				fileItem.write(file);
				
				System.out.println("File "+fileItem.getName()+ " uploaded successfully.");
				exec.indexDocs(fileName);

			}
		} catch (FileUploadException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
