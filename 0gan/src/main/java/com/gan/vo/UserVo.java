package com.gan.vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
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
}
