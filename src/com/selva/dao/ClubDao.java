package com.selva.dao;

import java.sql.*;

import java.util.ArrayList;
import java.util.List;

import com.selva.bean.Club;

public class ClubDao {
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

	public static int save(Club u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("insert into club(clubid,clubname,clubdescription) values(?,?,?)");
			ps.setString(1, u.getClubid());
			ps.setString(2, u.getClubname());
			ps.setString(3, u.getClubdescription());
			
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int update(Club u) {
		int status=0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("update club set clubdescription=? where clubid=?");
			ps.setString(1, u.getClubid());
			ps.setString(2, u.getClubname());
			ps.setString(3, u.getClubdescription());
			
			status = ps.executeUpdate();
			System.out.println(status);
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int delete(Club u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("delete from club where clubid=?");
			ps.setString(1, u.getClubid());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}

	public static List<Club> getAllRecords() {
		List<Club> list = new ArrayList<Club>();

		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("select * from club");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Club u = new Club();
				u.setClubid(rs.getString("clubid"));
				u.setClubname(rs.getString("clubname"));
				u.setClubdescription(rs.getString("clubdescription"));
				System.out.println(rs.getString("clubdescription"));
				list.add(u);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}

	public static Club getRecordById(String clubid) {
		Club u=null;
	
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("select * from club where clubid=?");
			ps.setString(1, clubid);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
			    u = new Club();
				u.setClubid(rs.getString("clubid"));
				u.setClubname(rs.getString("clubname"));
				u.setClubdescription(rs.getString("clubdescription"));
				System.out.println(rs.getString("clubdescription"));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return u;
	}
}
