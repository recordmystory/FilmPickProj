package com.fp.admin.model.vo;

public class Member {
	private int memNo; // 회원번호
	private String memId; // 아이디
	private String memPwd; // 비밀번호
	private String memName; // 이름
	private String memBirth; // 생년월일
	private String memGender; // 성별
	private String memEmail; // 이메일
	private String memPhone; // 전화번호
	private String prefGenre; // 선호장르
	private String nickname; // 닉네임
	private String memStatus; // 회원상태
	private String modifyDate; // 회원정보수정일
	private int memLevel; // 회원등급
	private String memColor; // 회원정보 색깔
	private String memImgPath; // 프로필 이미지 경로
	private int memFile; // 회원정보 사진파일 번호

	public Member() {

	}

	public Member(int memNo, String memId, String memPwd, String memName, String memBirth, String memGender,
			String memEmail, String memPhone, String prefGenre, String nickname, String memStatus, String modifyDate,
			int memLevel, String memColor, String memImgPath, int memFile) {
		super();
		this.memNo = memNo;
		this.memId = memId;
		this.memPwd = memPwd;
		this.memName = memName;
		this.memBirth = memBirth;
		this.memGender = memGender;
		this.memEmail = memEmail;
		this.memPhone = memPhone;
		this.prefGenre = prefGenre;
		this.nickname = nickname;
		this.memStatus = memStatus;
		this.modifyDate = modifyDate;
		this.memLevel = memLevel;
		this.memColor = memColor;
		this.memImgPath = memImgPath;
		this.memFile = memFile;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemPwd() {
		return memPwd;
	}

	public void setMemPwd(String memPwd) {
		this.memPwd = memPwd;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getMemBirth() {
		return memBirth;
	}

	public void setMemBirth(String memBirth) {
		this.memBirth = memBirth;
	}

	public String getMemGender() {
		return memGender;
	}

	public void setMemGender(String memGender) {
		this.memGender = memGender;
	}

	public String getMemEmail() {
		return memEmail;
	}

	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}

	public String getMemPhone() {
		return memPhone;
	}

	public void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
	}

	public String getPrefGenre() {
		return prefGenre;
	}

	public void setPrefGenre(String prefGenre) {
		this.prefGenre = prefGenre;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getMemStatus() {
		return memStatus;
	}

	public void setMemStatus(String memStatus) {
		this.memStatus = memStatus;
	}

	public String getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(String modifyDate) {
		this.modifyDate = modifyDate;
	}

	public int getMemLevel() {
		return memLevel;
	}

	public void setMemLevel(int memLevel) {
		this.memLevel = memLevel;
	}

	public String getMemColor() {
		return memColor;
	}

	public void setMemColor(String memColor) {
		this.memColor = memColor;
	}

	public String getMemImgPath() {
		return memImgPath;
	}

	public void setMemImgPath(String memImgPath) {
		this.memImgPath = memImgPath;
	}

	public int getMemFile() {
		return memFile;
	}

	public void setMemFile(int memFile) {
		this.memFile = memFile;
	}

	@Override
	public String toString() {
		return "Member [memNo=" + memNo + ", memId=" + memId + ", memPwd=" + memPwd + ", memName=" + memName
				+ ", memBirth=" + memBirth + ", memGender=" + memGender + ", memEmail=" + memEmail + ", memPhone="
				+ memPhone + ", prefGenre=" + prefGenre + ", nickname=" + nickname + ", memStatus=" + memStatus
				+ ", modifyDate=" + modifyDate + ", memLevel=" + memLevel + ", memColor=" + memColor + ", memImgPath="
				+ memImgPath + ", memFile=" + memFile + "]";
	}

}