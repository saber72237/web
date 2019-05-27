package com.chinasei.struts1.mysql;
import java.sql.*;

public class Update {

	public boolean UpdateUser(String usermonicker,String useremail,String usertel,String username,String usergender,String userage,String userbt,String useradress,String userft,String usernation) throws ClassNotFoundException, SQLException{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/my_cb?"
        		+ "characterEncoding=GBK", "root", "saber5459");
        Statement state=conn.createStatement();
	        String s="Update persons SET Useremail=?,Usertel=?,Username=?,Usergender=?," +
	        		"Userage=?,Userbt=?,Useradress=?,Userft=?,Usernation=? where Usermonicker=?";
	        PreparedStatement presta = conn.prepareStatement(s);
	        presta.setString(1, useremail);
	        presta.setString(2, usertel);
	        presta.setString(3, usermonicker);
	        presta.setString(4, usergender);
	        presta.setString(5, userage);
	        presta.setString(6, userbt);
	        presta.setString(7, useradress);
	        presta.setString(8, userft);
	        presta.setString(9, usernation);
	        presta.setString(10, username);
	        presta.execute();
	        return true;
        
    }
}