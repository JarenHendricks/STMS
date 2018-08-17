package com.stma.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.stma.dao.ApplicationDao;
import com.stma.dao.DBConnection;
import com.stma.util.Event;

@WebServlet("/dashboard")
public class DashboardServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//dispatch the request to login.jsp resource
		
		//String html = "<html><h3>Please login</h3></html>";
		//resp.getWriter().write(html+" ");
		
		//RequestDispatcher dispatcher = req.getRequestDispatcher("/html/login.jsp");
		//dispatcher.include(req, resp);
		//req.getSession().setAttribute("search", searchString);
		//call DAO layer and get all products for search criteria
		ApplicationDao dao = new ApplicationDao();
		List<Event> events = dao.searchEvents(DBConnection.getConnectionToDatabase());
		
		//write the products data back to the client browser
		/*String page = getHTMLString(req.getServletContext().getRealPath("/html/searchResults.html"), products);
		resp.getWriter().write(page);*/
		req.setAttribute("events", events);
		req.getRequestDispatcher("/html/dashboard.jsp").forward(req, resp);

	}
}
