package com.selva.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.selva.bean.Campaign;

public class CampaignDao {
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

	public static int save(Campaign u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("insert into campaign(campaignname,campaignstartdate,campaignenddate,campaigncontactperson,eventname) values(?,?,?,?,?)");
			ps.setString(1, u.getCampaignname());
			ps.setString(2, u.getCampaignstartdate());
			ps.setString(3, u.getCampaignenddate());
			ps.setString(4, u.getCampaigncontactperson());
			ps.setString(5, u.getEventname());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	

	public static int delete(Campaign u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("delete from campaign where campaignname=?");
			ps.setString(1, u.getCampaignname());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}

	public static List<Campaign> getAllRecords() {
		List<Campaign> list = new ArrayList<Campaign>();

		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("select * from campaign");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Campaign u = new Campaign();
				u.setCampaignname(rs.getString("campaignname"));
				u.setCampaignstartdate(rs.getString("campaignstartdate"));
				u.setCampaignenddate(rs.getString("campaignenddate"));
				u.setCampaigncontactperson(rs.getString("campaigncontactperson"));
				u.setEventname(rs.getString("eventname"));
				list.add(u);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}

	public static Campaign getRecordById(String campaignname) {
		
		Campaign u = null;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("select * from campaign where campaignname=?");
			ps.setString(1, campaignname);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				u = new Campaign();
				u.setCampaignname(rs.getString("campaignname"));
				u.setCampaignstartdate(rs.getString("campaignstartdate"));
				u.setCampaignenddate(rs.getString("campaignenddate"));
				u.setCampaigncontactperson(rs.getString("campaigncontactperson"));
				u.setEventname(rs.getString("eventname"));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return u;
	}
}
