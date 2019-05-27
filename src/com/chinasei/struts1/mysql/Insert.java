package com.chinasei.struts1.mysql;
import java.sql.*;

public class Insert {

	public static void InsertUser(String username,String userpassword) throws ClassNotFoundException, SQLException{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/my_cb?"
        		+ "characterEncoding=GBK", "root", "saber5459");
        Statement state=conn.createStatement();
	        String s="Insert persons SET Username=?,Userpassword=?";
	        PreparedStatement presta = conn.prepareStatement(s);
	        presta.setString(1, username);
	        presta.setString(2, userpassword);
	        presta.execute();
    }
}