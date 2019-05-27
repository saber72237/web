package com.chinasei.struts1.mysql;
import java.sql.*;

public class Connect {

	public static boolean Conuser(String username,String userpassword) throws ClassNotFoundException, SQLException{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/my_cb?"
        		+ "characterEncoding=GBK", "root", "saber5459");
        Statement state=conn.createStatement();
	        String s="Select * From persons Where Usermonicker='"+username+"'&& Userpassword='"+userpassword+"'";
	        try {
				ResultSet rs = state.executeQuery(s);
				if (rs.next()){
					return true;
				}else{
					return false;
				}				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return false;
    }
}