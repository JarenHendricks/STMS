package com.stma.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.stma.dao.ApplicationDao;

@WebServlet("/login")
public class LoginServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getRequestDispatcher("/html/login.jsp");
		dispatcher.include(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//get the username from the login form
		System.out.println("login servlet");
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String rememberme = req.getParameter("remember");
		System.out.println(username+" "+password+" "+rememberme);
		//call DAO for validation logic
		ApplicationDao dao= new ApplicationDao();
		boolean isValidUser = dao.validateUser(username, password);
		if(isValidUser){
			HttpSession session = req.getSession();
			
			session.setAttribute("username", username);
			
			resp.sendRedirect("/STMA/dashboard");
		}
		else{
			String errorMessage="Username and/or Password incorrent, please try again!";
			System.out.println(errorMessage);
			req.setAttribute("error", errorMessage);
			req.getRequestDispatcher("/html/login.jsp").forward(req, resp);
			
			
		}
		
		
		
		
		
	}

}
