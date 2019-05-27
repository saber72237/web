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

public class UpdatepwAction extends Action {
	public ActionForward execute(ActionMapping mapping,ActionForm form,
			HttpServletRequest request,HttpServletResponse response){
		SignupForm signupForm = (SignupForm) form;
		String uName = signupForm.getUserMonicker();
		String uPassword1 = signupForm.getUserPassword1();
		String uPassword2 = signupForm.getUserPassword2();
		String uPassword3 = signupForm.getUserPassword3();
		boolean sign = false;
			try {
				sign = new Updatepw().Updatepw(uName,uPassword1,uPassword2);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(sign==true)
				return new ActionForward("/login/success.html");
			return null;

	}
}
