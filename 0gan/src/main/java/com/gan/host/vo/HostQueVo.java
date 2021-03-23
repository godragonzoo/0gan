package com.gan.host.vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class HostQueVo {
	private int host_que_num;
	private int place_num;
	private int user_num;
	private String host_que_title;
	private String host_que_content;
	private String host_que_secret;
	private String host_que_pwd;
	private Timestamp host_que_date;
	private int host_que_view;
	private String host_que_file;
	private String host_que_writer;
}
