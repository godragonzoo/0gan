package com.gan.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PmtVo {
	private int pmt_num;
	private int rsvt_num;
	private int user_num;
	private String pmt_option;
}
