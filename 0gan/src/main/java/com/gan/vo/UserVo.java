package com.gan.vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;



public class UserVo {

	private int user_num;
	private String user_email;
	private String user_name;
	private String user_pwd;
	private String user_tel;
	private Timestamp user_mk_date;
	private Timestamp user_mod_date;
	private String user_grade;
	private String user_del;
	private String user_agree;
	public int getUser_num() {
		return user_num;
	}
	public void setUser_num(int user_num) {
		this.user_num = user_num;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_pwd() {
		return user_pwd;
	}
	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}
	public String getUser_tel() {
		return user_tel;
	}
	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
	}
	public Timestamp getUser_mk_date() {
		return user_mk_date;
	}
	public void setUser_mk_date(Timestamp user_mk_date) {
		this.user_mk_date = user_mk_date;
	}
	public Timestamp getUser_mod_date() {
		return user_mod_date;
	}
	public void setUser_mod_date(Timestamp user_mod_date) {
		this.user_mod_date = user_mod_date;
	}
	public String getUser_grade() {
		return user_grade;
	}
	public void setUser_grade(String user_grade) {
		this.user_grade = user_grade;
	}
	public String getUser_del() {
		return user_del;
	}
	public void setUser_del(String user_del) {
		this.user_del = user_del;
	}
	public String getUser_agree() {
		return user_agree;
	}
	public void setUser_agree(String user_agree) {
		this.user_agree = user_agree;
	}
	public UserVo(int user_num, String user_email, String user_name, String user_pwd, String user_tel,
			Timestamp user_mk_date, Timestamp user_mod_date, String user_grade, String user_del, String user_agree) {
		super();
		this.user_num = user_num;
		this.user_email = user_email;
		this.user_name = user_name;
		this.user_pwd = user_pwd;
		this.user_tel = user_tel;
		this.user_mk_date = user_mk_date;
		this.user_mod_date = user_mod_date;
		this.user_grade = user_grade;
		this.user_del = user_del;
		this.user_agree = user_agree;
	}
	public UserVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "UserVo [user_num=" + user_num + ", user_email=" + user_email + ", user_name=" + user_name
				+ ", user_pwd=" + user_pwd + ", user_tel=" + user_tel + ", user_mk_date=" + user_mk_date
				+ ", user_mod_date=" + user_mod_date + ", user_grade=" + user_grade + ", user_del=" + user_del
				+ ", user_agree=" + user_agree + "]";
	}
	
	
	
}
