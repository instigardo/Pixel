package com.pixel.helper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionGetter
{
	Connection con;
	public ConnectionGetter()
	{
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://113.128.166.27:3306/pixeltm?"+"user=user1&password=qwerty");
					
		System.out.println("Connected");
		
		} 
	catch (SQLException e)
	{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	catch(ClassNotFoundException e)
	{
	    	System.out.println(e.getMessage());
	    }

}
	public Connection getConnection()
	{
		return con;
	}
	public static void main(String[] args) {
		ConnectionGetter com=new ConnectionGetter();
		
	}
	}

