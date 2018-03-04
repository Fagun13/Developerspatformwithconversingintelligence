package com.VO;
import javax.persistence.*;

@Entity
@Table(name="tbl_registration")
public class RegistrationVO 
{
	@Id
	@Column(name="registrationId")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int registrationId;
	private String registrationEmail;
	private String registrationFname;
	private String registrationLname;
	@ManyToOne
	@JoinColumn(name="loginId")
	LoginVO loginVO;
	
	public int getRegistrationId() 
	{
		return registrationId;
	}
	public void setRegistrationId(int registrationId)
	{
		this.registrationId = registrationId;
	}
	
	public String getRegistrationFname() 
	{
		return registrationFname;
	}
	public void setRegistrationFname(String registrationFname)
	{
		this.registrationFname = registrationFname;
	}
	public String getRegistrationLname() 
	{
		return registrationLname;
	}
	public void setRegistrationLname(String registrationLname)
	{
		this.registrationLname = registrationLname;
	}
	public LoginVO getLoginVO() {
		return loginVO;
	}
	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}
	public String getRegistrationEmail() {
		return registrationEmail;
	}
	public void setRegistrationEmail(String registrationEmail) {
		this.registrationEmail = registrationEmail;
	}
	
	
	
}
