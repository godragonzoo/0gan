package com.gan.vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class RsvtVo {
private int rsvt_num;
private int place_num;
private int user_num;
private Timestamp rsvt_checkin;
private Timestamp rsvt_checkout;
private int rsvt_people;
private int rsvt_total_price;
private String rsvt_pmt_state;
}
