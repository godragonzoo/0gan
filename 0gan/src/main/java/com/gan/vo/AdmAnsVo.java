package com.gan.vo;

import java.sql.Timestamp;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AdmAnsVo {

	private int adm_ans_num;
	private int adm_que_num;
	private int user_num;
	private String adm_ans_title;
	private String adm_ans_content;
	private String adm_ans_file;
	private Timestamp adm_ans_date;
	private MultipartFile uploadFile;
}
