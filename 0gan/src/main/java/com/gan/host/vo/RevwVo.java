package com.gan.host.vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class RevwVo {
	private int revw_num;
	private int place_num;
	private int user_num;
	private String revw_content;
	private String revw_writer;
	private String revw_file;
	private String revw_score;
	private Timestamp revw_date;
}
