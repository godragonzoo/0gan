package com.gan.host.vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class HostAnsVo {
	private int host_ans_num;
	private int host_que_num;
	private int place_num;
	private String host_ans_title;
	private String host_ans_content;
	private Timestamp host_ans_date;
}
