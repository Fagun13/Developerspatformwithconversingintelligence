package com.VO;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import java.util.Date;
@Entity
@Table(name="tbl_complain")

public class PostComplainVO 
{
	@Id
	@Column(name="complainId")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int complainId;
	private String complainName;
	private String complainDescription;
	
	private String complainDate;
	private String complainTime;
	private String replyComplainDescription;
	private String complainStatus;
	private String complainDescriptionFile;
	@ManyToOne
	@JoinColumn(name="loginId")
	LoginVO loginVO;
	public String getComplainDescriptionFile() {
		return complainDescriptionFile;
	}
	public void setComplainDescriptionFile(String complainDescriptionFile) {
		this.complainDescriptionFile = complainDescriptionFile;
	}
	public int getComplainId() {
		return complainId;
	}
	public void setComplainId(int complainId) {
		this.complainId = complainId;
	}
	public String getComplainName() {
		return complainName;
	}
	public void setComplainName(String complainName) {
		this.complainName = complainName;
	}
	public String getComplainDescription() {
		return complainDescription;
	}
	public void setComplainDescription(String complainDescription) {
		this.complainDescription = complainDescription;
	}
	public LoginVO getLoginVO() {
		return loginVO;
	}
	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}
	public String getComplainDate() {
		return complainDate;
	}
	public void setComplainDate(String complainDate) {
		this.complainDate = complainDate;
	}
	public String getComplainTime() {
		return complainTime;
	}
	public void setComplainTime(String complainTime) {
		this.complainTime = complainTime;
	}
	public String getReplyComplainDescription() {
		return replyComplainDescription;
	}
	public void setReplyComplainDescription(String replyComplainDescription) {
		this.replyComplainDescription = replyComplainDescription;
	}
	public String getComplainStatus() {
		return complainStatus;
	}
	public void setComplainStatus(String complainStatus) {
		this.complainStatus = complainStatus;
	}
	
	
	
}
