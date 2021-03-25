package com.gan.vo;

import java.sql.Timestamp;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserBoardVo {
	//	1대1 문의
	private	int	admQueNum	;//	문의번호(PK)
	//private	int	userNum	;//	사용자번호(PK)(FK)
	private	String	admQueWriter	;//	작성자
	private	String	admQueTitle	;//	제목
	private	String	admQueContent	;//	내용
	private	String	admQueFile	;//	첨부파일
	private	Date	admQueDate	;//	작성일
	private	char	admQueCheck	;//	답변여부
	
	//	문의게시판
	private	int	hostQueNum	;//	문의게시판번호(PK)
	//private	int	placeNum	;//	공간번호(PK)(FK)
	//private	int	userNum	;//	사용자번호
	private	String	hostQueTitle	;//	제목
	private	String	hostQueContent	;//	내용
	private	char	hostQueSecret	;//	비밀글 여부
	private	String	hostQuePwd	;//	비밀번호
	private	Date	hostQueDate	;//	작성일
	private	int	hostQueView	;//	조회수
	private	String	hostQueFile	;//	첨부파일
	private	String	hostQueWriter	;//	작성자
	
	//	후기게시판
	private	int	revwNum	;//	후기게시판번호(PK)
	//private	int	placeNum	;//	공간번호(PK)(FK)
	//private	int	userNum	;//	사용자번호
	private	String	revwContent	;//	내용
	private	String	revwWriter	;//	작성자
	private	String	revwFile	;//	첨부파일
	private	char	revwScore	;//	평점
	private	Date	revwDate	;//	작성날짜

}
