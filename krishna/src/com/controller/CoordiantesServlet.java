package com.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.beans.Coordiates;
import com.dao.ConnectionClass;
import com.dao.STBInventoryDao;

/**
 * Servlet implementation class STBAddServlet
 */
@WebServlet("/STBAddServlet")
@MultipartConfig
public class STBAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con=null;
		try
		{
		System.out.println("hi!! add");
		String type=request.getParameter("type");
		System.out.println(type);
		Part filePart=request.getPart("fileSelect"); // Retrieves <input type="file" name="fileSelect">
	    String fileName="";
	    System.out.println(fileName);
	    InputStream fileContent = filePart.getInputStream();
	    String str="";
	    int i,k=0;
	    String id[]=new String[5];
	    
		while((i=fileContent.read())!=-1)
	    {
			if((char) i!=',')
				str=str+(char) i;
			else 
			{
				id[k]=str;
				k++;
				str="";
			}
	    }
		System.out.println(id[0]);
		System.out.println(id[1]);

		
		Coordinates stbI=new Coordinates(type, id[0], id[1]);
		con=new ConnectionClass().getConnection();
		String result=new STBInventoryDao().STBAdd(con,stbI);
		if(!result.equals("sorry"))
		{
			request.setAttribute("message", "Set top box has been succesfully added to the inventory.\nSerial No  is "+result);
			//out.println("Your application has been successfully registered!!\nYour Request ID is "+id);
			RequestDispatcher rd = request.getRequestDispatcher("/Message.jsp");
			rd.forward(request,response);
		}
		else
		{
			request.setAttribute("message", "Set top box could not be added!!");
			//out.println("Your application has been successfully registered!!\nYour Request ID is "+id);
			RequestDispatcher rd = request.getRequestDispatcher("/Message.jsp");
			rd.forward(request,response);
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	finally
	{
		if(con!=null)
		{
			try
			{
				con.close();
				
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
	}
		
	}

}
