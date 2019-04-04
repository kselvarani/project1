package com.selva.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.selva.bean.Event;

public class UserDao {
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe", "hr", "hrs");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}

	public static int save(Event u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("insert into event(eventname,eventid,eventdate,eventdescription) values(?,?,?,?)");
			ps.setString(1, u.getEventname());
			ps.setString(2, u.getEventid());
			ps.setString(3, u.getEventdate());
			ps.setString(4, u.getEventdescription());
			
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int update(Event u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("update event set eventname=?,eventdate=?,eventdescription=? where eventid=?");
			ps.setString(1, u.getEventname());
			ps.setString(2, u.getEventid());
			ps.setString(3, u.getEventdate());
			ps.setString(4, u.getEventdescription());
			
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int delete(Event u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("delete from event where eventid=?");
			ps.setString(1, u.getEventid());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}

	public static List<Event> getAllRecords() {
		List<Event> list = new ArrayList<Event>();

		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("select * from event");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Event u = new Event();
				u.setEventname(rs.getString("eventname"));
				u.setEventid(rs.getString("eventid"));
				u.setEventdate(rs.getString("eventdate"));
				u.setEventdescription(rs.getString("eventdescription"));
				list.add(u);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}

	public static Event getRecordById(String eventid) {
		
		Event u = null;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("select * from event where eventid=?");
			ps.setString(1, eventid);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				u = new Event();
				u.setEventname(rs.getString("eventname"));
				u.setEventid(rs.getString("eventid"));
				u.setEventdate(rs.getString("eventdate"));
				u.setEventdescription(rs.getString("eventdescription"));
				
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return u;
	}
}
