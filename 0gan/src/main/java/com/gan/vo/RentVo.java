package com.gan.vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class RentVo {
	private int place_num;
	private Timestamp rent_start;
	private Timestamp rent_end;
	private int rent_use_start;
	private int rent_use_end;
}
