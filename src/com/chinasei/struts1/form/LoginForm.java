package com.chinasei.struts1.form;

import org.apache.struts.action.ActionForm;

public class LoginForm extends ActionForm {
	private String userName = null;
	private String userPassword = null;
	public String getUserName(){
		return userName;
	}
	public void setUserName(String userName){
		this.userName = userName;
	}
	public String getUserPassword(){
		return userPassword;
	}
	public void setUserPassword(String userPassword){
		this.userPassword = userPassword;
	}
}
