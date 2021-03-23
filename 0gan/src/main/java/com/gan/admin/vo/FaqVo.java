package com.gan.admin.vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class FaqVo {
	private int faq_num;
	private String faq_title;
	private String faq_content;
	private String faq_category;
	private String faq_file;
	private MultipartFile uploadFile;
}