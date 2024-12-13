package com.qan;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ViewAllServlet")
public class ViewAllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
    	List<User> allAdmins = UserDBUtil.getAllAdmins(); // Modify AdminDBUtil to fetch all records.
	     request.setAttribute("allAdmins", allAdmins);
	        
	     RequestDispatcher dispatcher = request.getRequestDispatcher("ViewAll.jsp");
	     dispatcher.forward(request, response);
    	
    }

}