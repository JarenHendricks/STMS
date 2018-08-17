package com.stma.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

//import com.stma.beans.Order;
import com.stma.util.Event;
import com.stma.util.User;

public class ApplicationDao {

	// TODO find events
	public List<Event> searchEvents(Connection connection) {
		Event event = null;
		List<Event> events = new ArrayList<>();
		try {

			
			String sql = "SELECT EventDescription, EventName, StartDate, EndStart, StartTime, EndTime FROM Events"; ;

			Statement statement = connection.createStatement();

			ResultSet set = statement.executeQuery(sql);

			while (set.next()) {
				event = new Event(set.getString("EventDescription"),set.getString("EventName"),set.getString("StartDate"),set.getString("EndDate"),set.getString("EndTime"),set.getString("EndTime"));
				events.add(event);
			}

		} catch (SQLException exception) {
			exception.printStackTrace();
		}
		return events;
	}

	public int addEvent(Event event) {
		int rowsAffected = 0;
		if(event instanceof Event) {
			

			try {
				// get the connection for the database
				Connection connection = DBConnection.getConnectionToDatabase();

				// write the insert query
				String insertQuery = "INSERT INTO `events` (`eventID`, `userID`, `EventDescription`, `EventName`, `StartDate`, `EndDate`, `StateTime`, `EndTime`) VALUES (NULL, ?, ?, ?, ?, ?, ?, ?);";

				// set parameters with PreparedStatement
				java.sql.PreparedStatement statement = connection.prepareStatement(insertQuery);
				statement.setInt(1, 1);
				statement.setString(2, event.getEventDescription());
				statement.setString(3, event.getEventName());
				statement.setString(4, event.getStartDate());
				statement.setString(5, event.getEndDate());
				statement.setString(6, event.getStartTime());
				statement.setString(7, event.getEndTime());

				// execute the statement
				rowsAffected = statement.executeUpdate();

			} catch (SQLException exception) {
				exception.printStackTrace();
			}
		}
		return 0;
	}
	public int registerUser(User user) {
		int rowsAffected = 0;

		try {
			// get the connection for the database
			Connection connection = DBConnection.getConnectionToDatabase();

			// write the insert query
			String insertQuery = "INSERT INTO `users` (`userID`, `username`, `firstname`, `lastname`, `emailaddress`, `password`) VALUES (NULL, ?, ?, ?, ?, ?);";

			// set parameters with PreparedStatement
			java.sql.PreparedStatement statement = connection.prepareStatement(insertQuery);
			statement.setString(1, user.getUserName());
			statement.setString(2, user.getFirstName());
			statement.setString(3, user.getLastName());
			statement.setString(4, user.getEmailAddress());
			statement.setString(5, user.getPassWord());
			

			// execute the statement
			rowsAffected = statement.executeUpdate();

		} catch (SQLException exception) {
			exception.printStackTrace();
		}
		return rowsAffected;
	}

	public boolean validateUser(String username, String password) {
		boolean isValidUser = false;
		try {

			// get the connection for the database
			Connection connection = DBConnection.getConnectionToDatabase();

			// write the select query
			
			String sql = "select * from users where username=? and password=?";

			// set parameters with PreparedStatement
			java.sql.PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, username);
			statement.setString(2, password);

			// execute the statement and check whether user exists

			ResultSet set = statement.executeQuery();
			while (set.next()) {
				isValidUser = true;
			}
		} catch (SQLException exception) {
			exception.printStackTrace();
		}
		return isValidUser;
	}

	public User getProfileDetails(String username) {
		User user = null;
		try {
			// get connection to database
			Connection connection = DBConnection.getConnectionToDatabase();

			// write select query to get profile details
			String sql = "select * from users where username=?";
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, username);

			// execute query, get resultset and return User info
			ResultSet set = statement.executeQuery();
			if(set!=null) 
				if(set.next())
					user = new User(set.getString("username"),set.getString("firstname"),set.getString("surname"),set.getString("emailaddress"));
			

		}

		catch (SQLException exception) {
			exception.printStackTrace();
		}
		return user;
	}
}
