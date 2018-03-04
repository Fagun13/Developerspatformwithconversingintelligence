package com.service;
import javax.activation.*;
import javax.mail.*;
import javax.mail.internet.*;
import java.io.IOException;
import org.springframework.stereotype.Service;
import com.DAO.*;
import com.VO.LoginVO;
import com.VO.ProfileVO;
import com.VO.RegistrationVO;
import java.util.*;

@Service
public class RegistrationService 
{
	private RegistrationDAO registrationDAO;

	public void setRegistrationDAO(RegistrationDAO registrationDAO) 
	{
		this.registrationDAO = registrationDAO;
	}
	public void ServiceInsert(RegistrationVO registrationVO)
	{
		this.registrationDAO.registrationInsert(registrationVO);
	}
	public void ServiceInsertLogin(LoginVO loginVO)
	{
		this.registrationDAO.loginInsert(loginVO);
	}
	public void ServiceUpdatePassword(LoginVO loginVO)
	{
		this.registrationDAO.updatePassword(loginVO);
	}
	public List loginUserNameSelect(LoginVO loginVO)
	{
		 return this.registrationDAO.loginUserNameSelect(loginVO);
	}
	public String ServiceLoginPassSelect(LoginVO loginVO)
	{
		 return this.registrationDAO.loginPassSelect(loginVO);
	}
	public List ServiceVerifyEmailId(RegistrationVO registrationVO)
	{
		 return this.registrationDAO.verifyEmailId(registrationVO);
	}
	public List ServiceRegSelect()
	{
		 return this.registrationDAO.registrationSelect();
	}
	public List ServiceRegIdSelect(RegistrationVO registrationVO)
	{
		 return this.registrationDAO.regIdSelect(registrationVO);
	}
	public void ServiceDelete(RegistrationVO registrationVO)
	{
		this.registrationDAO.registrationDeleteUser(registrationVO);
	}
	public void saveProfile(ProfileVO profileVO)
	{
		this.registrationDAO.saveProfile(profileVO);
	}
	public void sendEmail(String email,String Content)
	{
		{
			String to=email;
			String from = "fagunthakkar13@gmail.com";
			 
			String body=Content;
			String password="komal3009";
			
			//set property object
			java.util.Properties props=new java.util.Properties();
		    props.put("mail.smtp.host", "smtp.gmail.com");    
		    props.put("mail.smtp.socketFactory.port", "465");    
		    props.put("mail.smtp.socketFactory.class",    
		              "javax.net.ssl.SSLSocketFactory");    
		    props.put("mail.smtp.auth", "true");    
		    props.put("mail.smtp.port", "465");    
		    
		    Session session = Session.getDefaultInstance(props,    //set session object
		            new javax.mail.Authenticator() {    
		            protected PasswordAuthentication getPasswordAuthentication() {    
		            return new PasswordAuthentication(from,password);  
		            }    
		           });         
		     try {    
		         MimeMessage message = new MimeMessage(session); 
		         
		         message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));     //receiver   
		         message.setFrom(new InternetAddress(from)); 			//sender
		         message.setText(body);  //body
		          
		         Transport.send(message);    //send the mail
		         System.out.println("message sent successfully");  
		        // response.sendRedirect("send.jsp");
		     	} 
		     catch (MessagingException e)
		     {
		    	 throw new RuntimeException(e);
		     }    
		           
		  }  

	}
	public String  generatePassword()
	{
		String s="";
		Random random=new Random();
		for(int i=0;i<6;i++)
		{
			int n=random.nextInt(10);
			s=s+n;
		}
		System.out.println(s);
		return s;
	}
	public String  generateUsername(String fname)
	{

		String rand="";
		Random random=new Random();
		for(int i=0;i<3;i++)
		{
			int n=random.nextInt(10);
			rand=rand+n;
			
		}
		
		LoginVO  loginVO =new LoginVO();
		loginVO.setUsername(fname+rand);
		List ls= loginUserNameSelect(loginVO);
		if(!ls.isEmpty())
		{
			generateUsername(fname);
		}
		
		return fname+rand;
	}
}
