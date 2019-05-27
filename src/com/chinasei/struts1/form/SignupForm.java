package com.chinasei.struts1.form;

import org.apache.struts.action.ActionForm;

public class SignupForm extends ActionForm {
	private String userName = null;//
	private String userPassword1 = null;//
	private String userEmail = null;//
	private String userPassword2 = null;//
	private String userPassword3 = null;//
	private String userMonicker = null;//
	private String userTel = null;//
	private String userGender = null;//
	private String userAge = null;//
	private String userBT = null;//
	private String userAdress = null;//
	private String userFT = null;//
	private String userNation = null;//
	public String getUserName(){
		return userName;
	}
	public void setUserName(String userName){
		this.userName = userName;
	}
	public String getUserPassword1(){
		return userPassword1;
	}
	public void setUserPassword1(String userPassword1){
		this.userPassword1 = userPassword1;
	}
	public String getUserPassword2(){
		return userPassword2;
	}
	public void setUserPassword2(String userPassword2){
		this.userPassword2 = userPassword2;
	}
	public String getUserPassword3(){
		return userPassword3;
	}
	public void setUserPassword3(String userPassword2){
		this.userPassword3 = userPassword3;
	}
	public String getUserEmail(){
		return userEmail;
	}
	public void setUserEmail(String userEmail){
		this.userEmail = userEmail;
	}
	public String getUserBT(){
		return userBT;
	}
	public void setUserBT(String userBT){
		this.userBT = userBT;
	}
	public String getUserFT(){
		return userFT;
	}
	public void setUserFT(String userFT){
		this.userFT = userFT;
	}
	public String getUserMonicker(){
		return userMonicker;
	}
	public void setUserMonicker(String userMonicker){
		this.userMonicker = userMonicker;
	}
	public String getUserTel(){
		return userTel;
	}
	public void setUserTel(String userTel){
		this.userTel = userTel;
	}
	public String getUserAge(){
		return userAge;
	}
	public void setUserAge(String userAge){
		this.userAge = userAge;
	}
	public String getUserGender(){
		return userGender;
	}
	public void setUserGender(String userGender){
		this.userGender = userGender;
	}
	public String getUserAdress(){
		return userAdress;
	}
	public void setUserAdress(String userAdress){
		this.userAdress = userAdress;
	}
	public String getUserNation(){
		return userNation;
	}
	public void setUserNation(String userNation){
		this.userNation = userNation;
	}
}
