package com.chinasei.struts1.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.chinasei.struts1.form.LoginForm;

public class MapAction extends Action {
	public ActionForward execute(ActionMapping mapping,ActionForm form,
			HttpServletRequest request,HttpServletResponse response){
		LoginForm loginForm = (LoginForm) form;
		String uName = loginForm.getUserName();
		String uPassWord = loginForm.getUserPassword();
		if("lgz".equals(uName)&&"lgz".equals(uPassWord)){
			return new ActionForward("/data/map.html");
		}
		return new ActionForward("/data/map.html");
	}
}
