package com.gan.vo;

import java.sql.Timestamp;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserSearchVo {

	//	-------------------------------------*category	;//
	private	String	studio	;//	-방송, 촬영, 스튜디오
	private	String	workshop	;//	-송년회, 워크샵,MT
	private	String	workroom	;//	-클래스-작업실-연습실
	private	String	Lounge	;//	-라운지
	private	String	bar	;//	-바
	private	String	meeting 	;//	-미팅룸, 세미나룸, 스터디룸, 회의실
	private	String	partyroom	;//	-파티룸, 루프탑, 바베큐-브라이덜샤워
	private	String	cafe	;//	-카페
	private	String	Leisure	;//	-레저
	private	String	office	;//	-독립오피스, 공동 오피스,원데이오피스,쉐어오피스,-코워킹스페이스
	private	String	hall	;//	-다목절홀-공연장
	private	String	Hanok	;//	-한옥
	//	-------------------------------------*filter	;//	
	//	검색	;//	
	private	String	location	;//	-지역
	private	String	searchWord	;//	-검색어
	private	String	category	;//	-카테고리
	private	String	option	;//	-옵션
	private	Date	startDate	;//	-시작
	private	Date	endDate	;//	-끝
	private	int	peopleNum	;//	인원

	private String PLACE_IMG;//card에 표시된 사진
	private String PLACE_ADDR;//card에 표시된 지역
	private String PLACE_NAME;//card에 표시된 title
	private String PLACE_CONTENT;//card에 표시된 title
	
	private String REVW_NUM;//
	private String PLACE_NUM;//
	private String USER_NUM;//
	private String REVW_CONTENT;//card에 표시된 content
	private int REVW_SCORE;//card에 표시된 별점
	

	private int no;
	private String name;
}


