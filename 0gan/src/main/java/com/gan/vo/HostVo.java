package com.gan.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class HostVo {
	private int host_user_num;
	private String host_biz_name;
	private String host_biz_leader;
	private int host_biz_num;
	private String host_biz_addr;
	private String host_biz_license;
	private String host_calc_email;
	private String host_calc_tel;
	private String host_calc_bank;
	private int host_calc_account;
	private String host_calc_name;
}
