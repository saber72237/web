package com.chinasei.struts1.mysql;
import java.sql.*;

public class Updatepw {

	public boolean Updatepw(String usermonicker,String userpassword1,String userpassword2) throws ClassNotFoundException, SQLException{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/my_cb?"
        		+ "characterEncoding=GBK", "root", "saber5459");
        Statement state=conn.createStatement();
	        String s="Update persons SET Userpassword=?  where Usermonicker=? and Userpassword=?";
	        PreparedStatement presta = conn.prepareStatement(s);
	        presta.setString(1, userpassword2);
	        presta.setString(2, usermonicker);
	        presta.setString(3, userpassword1);
	        presta.execute();
	        return true;
        
    }
}