package com.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;


import com.VO.ProfileVO;
import com.VO.RegistrationVO;
import com.service.ProfileService;

@Controller
public class ProfileController 
{
 private ProfileService profileService;
 @Autowired(required=true)
	public void setProfileService(ProfileService profileService) {
		this.profileService = profileService;
	}
 @RequestMapping(value="/ViewAdminProfile.htm",method=RequestMethod.GET)
	public ModelAndView loadViewAdminProfile(HttpServletRequest request)
	{
		    return new ModelAndView("admin/ViewAdminProfile");
	}
 @RequestMapping(value="/EditAdminProfile.htm",method=RequestMethod.GET)
	public ModelAndView loadEditAdminProfile(HttpServletRequest request)
	{
		    ProfileVO profileVO=new ProfileVO();
		 	return new ModelAndView("admin/EditAdminProfile","ProfileVO",profileVO);
	}
 @RequestMapping(value="/ViewUserProfile.htm",method=RequestMethod.GET)
	public ModelAndView loadViewUserProfile(HttpSession session)
	{
	 		int regId=(int) session.getAttribute("regId");
	 		RegistrationVO registrationVO =new RegistrationVO();
	 		registrationVO.setRegistrationId(regId);
	 		List ls=profileService.fetchProfileDetailsOfUser(registrationVO);
	 		session.setAttribute("ProfileList", ls.get(0));
		    return new ModelAndView("user/ViewUserProfile","List1",ls.get(0));
	}
 @RequestMapping(value="/EditUserProfile.htm",method=RequestMethod.GET)
	public ModelAndView loadEditUserProfile(HttpSession session)
	{
		    ProfileVO profileVO=new ProfileVO();
		   
		 	return new ModelAndView("user/EditUserProfile","ProfileVO",profileVO);
	}
 @RequestMapping(value="/saveUserProfile.htm",method=RequestMethod.POST)
	public ModelAndView saveUserProfile(HttpServletRequest request,@ModelAttribute("ProfileVO") ProfileVO profileVO,@RequestParam("file1") CommonsMultipartFile file)throws IOException
	{			
	 			System.out.println("inside");
			 HttpSession session=request.getSession();
			 String path=session.getServletContext().getRealPath("/ROOT/profile");
		     System.out.println(path);
		    String filename=file.getOriginalFilename();  
		     
		          
		     byte barr[]=file.getBytes();  
		       
		     BufferedOutputStream bout=new BufferedOutputStream(  
		              new FileOutputStream(path+"/"+filename));
		     System.out.print(filename);
		     bout.write(barr);  
		     bout.flush();    
		     bout.close();  
		       
		     //comment 
		           profileVO.setProfilePicPath(path+"/"+filename);
		           profileService.saveOrEditProfile(profileVO);
	   return new ModelAndView("user/index");
	}
 
}
