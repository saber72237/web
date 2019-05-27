package com.chinasei.struts1.action;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.chinasei.struts1.form.LoginForm;
import com.chinasei.struts1.mysql.Connect;


public class LoginAction extends Action {
	public ActionForward execute(ActionMapping mapping,ActionForm form,
			HttpServletRequest request,HttpServletResponse response){
		LoginForm loginForm = (LoginForm) form;
		String uName = loginForm.getUserName();
		String uPassWord = loginForm.getUserPassword();
		boolean flag = false;
		try {
		 flag = Connect.Conuser(uName,uPassWord);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		if(flag == true){
			HttpSession session = request.getSession();
            session.setAttribute("loginName", uName);
			return new ActionForward("/data/heart.html");

		}
		return new ActionForward("/fail.jsp");
	}
}
