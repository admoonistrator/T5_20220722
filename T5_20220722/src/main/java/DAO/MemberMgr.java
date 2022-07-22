package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

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

}
