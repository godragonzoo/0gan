package com.gan.admin.vo;

import java.sql.Timestamp;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class NotiVo {
	private int noti_num;
	private String noti_title;
	private String noti_content;
	private String noti_file;
	private Timestamp noti_date;
	private MultipartFile uploadFile;
}
