package com.gan.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PlaceVo {
	private int place_num;
	private int host_user_num;
	private String place_name;
	private String place_content;
	private String place_addr;
	private String place_fac_info;
	private String place_noti;
	private String place_info;
	private String place_category;
	private String place_main_img;
	private String place_img;
	private int place_min_time;
	private int place_price;
	private int place_price_pack;
	private int place_people_min;
	private int place_people_max;
	private int place_add_people_cost;
	private String place_tel;
}
