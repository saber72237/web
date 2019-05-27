package com.chinasei.struts1.mysql;
import java.sql.*;

public class SignIn {

	public boolean Signup(String username,String userpassword,String useremail) throws ClassNotFoundException, SQLException{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/my_cb?"
        		+ "characterEncoding=GBK", "root", "saber5459");
        Statement state=conn.createStatement();
	        String s="Insert persons SET Usermonicker=?,Userpassword=?,Useremail=?";
	        PreparedStatement presta = conn.prepareStatement(s);
	        presta.setString(1, username);
	        presta.setString(2, userpassword);
	        presta.setString(3, useremail);
	        presta.execute();
			return true;
    }
}