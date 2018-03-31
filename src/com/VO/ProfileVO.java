package com.VO;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="tbl_profile")
public class ProfileVO 
{
	@Id
	
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int profileId; 
	private String profileDescription;
	private String profilePhoneNumer;
	private String profileDesignation;
	private String profileCompany;
	private String profileSkills;
	private String profileHobbies;
	private String profileUsername;
	private String profilePicPath;
	@ManyToOne
	@JoinColumn(name="regId")
	private RegistrationVO registrationVO;
	
	public RegistrationVO getRegistrationVO() {
		return registrationVO;
	}
	public void setRegistrationVO(RegistrationVO registrationVO) {
		this.registrationVO = registrationVO;
	}
	public int getProfileId() {
		return profileId;
	}
	public void setProfileId(int profileId) {
		this.profileId = profileId;
	}
	public String getProfileDescription() {
		return profileDescription;
	}
	public void setProfileDescription(String profileDescription) {
		this.profileDescription = profileDescription;
	}
	public String getProfilePhoneNumer() {
		return profilePhoneNumer;
	}
	public String getProfileCompany() {
		return profileCompany;
	}
	public void setProfileCompany(String profileCompany) {
		this.profileCompany = profileCompany;
	}
	public void setProfilePhoneNumer(String profilePhoneNumer) {
		this.profilePhoneNumer = profilePhoneNumer;
	}
	public String getProfileDesignation() {
		return profileDesignation;
	}
	public void setProfileDesignation(String profileDesignation) {
		this.profileDesignation = profileDesignation;
	}
	public String getProfileSkills() {
		return profileSkills;
	}
	public void setProfileSkills(String profileSkills) {
		this.profileSkills = profileSkills;
	}
	public String getProfileHobbies() {
		return profileHobbies;
	}
	
	public void setProfileHobbies(String profileHobbies) {
		this.profileHobbies = profileHobbies;
	}
	public String getProfilePicPath() {
		return profilePicPath;
	}
	public void setProfilePicPath(String profilePicPath) {
		this.profilePicPath = profilePicPath;
	}
	public String getProfileUsername() {
		return profileUsername;
	}
	public void setProfileUsername(String profileUsername) {
		this.profileUsername = profileUsername;
	}
	
}
