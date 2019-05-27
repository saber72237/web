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

public class UpdateAction extends Action {
	public ActionForward execute(ActionMapping mapping,ActionForm form,
			HttpServletRequest request,HttpServletResponse response){
		SignupForm signupForm = (SignupForm) form;
		String uName = signupForm.getUserMonicker();
		String uMonicker = signupForm.getUserName();
		String uTel = signupForm.getUserTel();
		String uGender = signupForm.getUserGender();
		String uEmail = signupForm.getUserEmail();
		String uAge = signupForm.getUserAge();
		String uBT = signupForm.getUserBT();
		String uNation = signupForm.getUserNation();
		String uFT = signupForm.getUserFT();
		String uAdress = signupForm.getUserAdress();
		boolean sign = false;
			try {
				sign = new Update().UpdateUser(uMonicker,uEmail,uTel,uName,uGender,uAge, uBT,uAdress,uFT,uNation);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(sign==true)
				return new ActionForward("/userinfo/success.html");
			return null;

	}
}
