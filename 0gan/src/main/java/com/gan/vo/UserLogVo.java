package com.gan.vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserLogVo {
	private int login_num;
	private int user_num;
	private Timestamp login_date;
	private String login_state;
}
