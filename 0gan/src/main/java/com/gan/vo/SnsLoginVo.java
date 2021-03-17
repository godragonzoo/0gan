package com.gan.vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SnsLoginVo {
	private int sns_login_num;
	private int user_num;
	private String sns_ver;
	private String sns_token;
	private String sns_provider;
	private Timestamp sns_token_exp;
	private Timestamp sns_token_renew;
}
