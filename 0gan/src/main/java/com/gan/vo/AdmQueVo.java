package com.gan.vo;

import java.sql.Timestamp;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AdmQueVo {
	private int adm_que_num;
	private int user_num;
	private String adm_que_writer;
	private String adm_que_title;
	private String adm_que_content;
	private String adm_que_file;
	private Timestamp adm_que_date;
	private String adm_que_check;
	private MultipartFile uploadFile;

}
