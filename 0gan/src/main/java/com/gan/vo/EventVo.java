package com.gan.vo;

import java.sql.Timestamp;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class EventVo {
	private int event_num;
	private String event_title;
	private String event_content;
	private String event_file;
	private Timestamp event_start;
	private Timestamp event_end;
	private MultipartFile uploadFile;
}
