package com.pixel.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pixel.helper.EnvVariables;
import com.pixel.helper.SQLHelper;

/**
 * Servlet implementation class CvsCreateFolder
 */
@WebServlet("/CvsCreateFolder")
public class CvsCreateFolder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CvsCreateFolder() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 *
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    SQLHelper help=new SQLHelper();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EnvVariables envvar=new EnvVariables();
		String path=request.getParameter("path");
		String name=request.getParameter("name");
		System.out.println(path);
		System.out.println(name);
		String pathid=path;
		String folderId=pathid.substring(pathid.lastIndexOf("/")+1);
		//method to create folder in cvs path
		 try {
			    // Execute command
			//    String changeDir = "cd c:\\PSTools";
			//    Runtime.getRuntime().exec(changeDir);
			 path=path.replace("/", "\\");
				 path=path.replace("home", envvar.getCvsPath());
			 String command = "C:\\PSTools\\psexec "+envvar.getCvsServer()+" -e cmd /c \"cd "+path+" & "
			    		+ " md "+name+"\"";		      
		         Process process = Runtime.getRuntime().exec(command);
		         System.out.println(command);			         
		         help.INSERT("pixeltm.NODE_DTL", "'"+folderId+"/"+name+"','"+name+"','folder','"+pathid+"','1.2.1','saxenhi',null,'100',CURRENT_TIMESTAMP(0),null");
		         help.INSERT("pixeltm.NODE_LOG", "'"+folderId+"/"+name+"','create','saxenhi',CURRENT_TIMESTAMP(0)");		         
		      } catch (IOException e) {
		         e.printStackTrace();
		      }
	}

}
