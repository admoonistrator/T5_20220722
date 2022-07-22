package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import Beans.MemberBean;

public class MemberMgr {
	
	Connection con;
	String sql;

	
	public void getCon() {
		try {
			Context ctx=new InitialContext();
			Context env=(Context)ctx.lookup("java:comp/env");
			DataSource ds=(DataSource)env.lookup("jdbc/pool");
			con=ds.getConnection();
			
		} catch(Exception e) {
			e.printStackTrace();
			System.out.println("error getCon");
		}
	}
	
	public String getPass(String id) {
		String pw="";
		try {
			getCon();
			
			sql="select pwd from member where id=?";
			
			PreparedStatement pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet rs=pstmt.executeQuery();
			
			if(rs.next()) {
				pw=rs.getString(1);
			}
		} catch(Exception e) {
			e.printStackTrace();
			System.out.println("error memberlogin");			
		}
		
		return pw;
	}

	public MemberBean getOne(String id) {
		MemberBean mbean = new MemberBean();
		try {
			getCon();
			
			sql = "select id, name, gender, birth, address, hobby from member where id = ?";
			PreparedStatement pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet rs=pstmt.executeQuery();
			
			if(rs.next()) {
				mbean.setId(rs.getString(1));
				mbean.setName(rs.getString(2));
				mbean.setGender(rs.getString(3));
				mbean.setBirth(rs.getString(4));
				mbean.setAddress(rs.getString(5));
				mbean.setHobby(rs.getString(6));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return mbean;
	}

	public int idcheck(String id) {
		int cnt=0;
		
		try {
			getCon();
			
			sql="select count(*) from member where id=?";
			PreparedStatement idchk=con.prepareStatement(sql);
			idchk.setString(1, id);
			ResultSet getcnt=idchk.executeQuery();
			if(getcnt.next()) {
				cnt=getcnt.getInt(1);
			}
			getcnt.close();
			idchk.close();
			con.close();
			
		} catch(Exception e) {
			e.printStackTrace();
			System.out.println("error idcheck");
		}
				
		return cnt;
	}

	public void memberjoin(MemberBean b) {
		try {
			getCon();
			
			sql="insert into member values(?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement join=con.prepareStatement(sql);
			join.setString(1, b.getId());
			join.setString(2, b.getPwd());
			join.setString(3, b.getName());
			join.setString(4, b.getGender());
			join.setString(5, b.getEmail());
			join.setString(6, b.getBirth());
			join.setString(7, b.getZipcode());
			join.setString(8, b.getAddress());
			join.setString(9, b.getHobby());
			join.setString(10, b.getJob());
			join.executeUpdate();
			
			join.close();
			con.close();

		} catch(Exception e) {
			e.printStackTrace();
			System.out.println("error memberjoin");
		}
	}

}
