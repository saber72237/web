package com.chinasei.struts1.action;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import com.chinasei.struts1.mysql.*;

import com.chinasei.struts1.form.SignupForm;

public class SignupAction extends Action {
	public ActionForward execute(ActionMapping mapping,ActionForm form,
			HttpServletRequest request,HttpServletResponse response){
		SignupForm signupForm = (SignupForm) form;
		String uName = signupForm.getUserName();
		String uPassWord1 = signupForm.getUserPassword1();
		String uPassWord2 = signupForm.getUserPassword2();
		String uEmail = signupForm.getUserEmail();
		boolean sign = false;
		if(uPassWord1.equals(uPassWord2)){
			try {
				sign = new SignIn().Signup(uName,uPassWord1,uEmail);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(sign==true)
				return new ActionForward("/data/heart.html");
		}
		return new ActionForward("/fail.jsp");
	}
}
