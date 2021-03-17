package com.gan.vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class RevwAnsVo {
	private int revw_ans_num;
	private int revw_num;
	private int place_num;
	private String revw_ans_content;
	private Timestamp revw_ans_date;
}
