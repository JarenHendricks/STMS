package com.stma.servlets;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.text.MessageFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.stma.util.User;
import com.stma.dao.ApplicationDao;

@WebServlet("/register")
public class RegisterUserServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// collect all form data
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String firstname = req.getParameter("firstname");
		String lastname = req.getParameter("lastname");
		String emailaddress = req.getParameter("email");
		

		// fill it up in a User bean
		User user = new User( username,firstname,lastname, emailaddress, password);
		
		

		// call DAO layer and save the user object to DB
		ApplicationDao dao = new ApplicationDao();
		int rows = dao.registerUser(user);
		

		// prepare an information message for user about the success or failure of the operation
		String infoMessage = null;
		if(rows==0){
			infoMessage="Sorry, an error occurred!";
		}
		else{
			infoMessage="User registered successfully! Login to confirm your registration.";
			//set up the HTTP session
			HttpSession session = req.getSession();
			
			//set the username as an attribute
			session.setAttribute("username", username);
			
			//forward to dashboard jsp
			req.getRequestDispatcher("/html/dashboard.jsp").forward(req, resp);
					
		}
		System.out.println(infoMessage);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/html/register.jsp");
		dispatcher.include(req, resp);
				
	}
	
	public String getHTMLString(String filePath, String message) throws IOException{
		
		return "";
		
	}
		
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getRequestDispatcher("/html/register.jsp");
		dispatcher.include(req, resp);
	
	}

	
}
