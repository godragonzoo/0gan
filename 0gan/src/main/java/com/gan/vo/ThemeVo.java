package com.gan.vo;

import java.sql.Timestamp;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ThemeVo {
	private int theme_num;
	private String theme_title;
	private String theme_content;
	private String theme_file;
	private Timestamp theme_date;
	private MultipartFile uploadFile;
	
}
