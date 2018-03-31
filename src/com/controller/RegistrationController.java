package com.controller;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.VO.LoginVO;
import com.VO.ProfileVO;
import com.VO.RegistrationVO;
import com.service.ProfileService;
import com.service.RegistrationService;
import com.sun.org.apache.bcel.internal.generic.NEW;

@Controller
public class RegistrationController 
{
	private RegistrationService registrationService;
	@Autowired(required=true)
	public void setRegistrationService(RegistrationService registrationService)
	{
		
		this.registrationService = registrationService;
	}
	
	private ProfileService ProfileService;
	@Autowired(required=true)
	public void setProfileService(ProfileService ProfileService)
	{
		
		this.ProfileService = ProfileService;
	}
	
	@RequestMapping(value={"/","index.htm"},method=RequestMethod.GET)
	public ModelAndView load()
	{
		 return new ModelAndView("admin/signin");
		
	}
	@RequestMapping(value="/logout.htm",method=RequestMethod.GET)
	public ModelAndView logout(HttpSession session)
	{
		session.removeAttribute("loginId");
		session.removeAttribute("regId");
		session.removeAttribute("reg");
		session.removeAttribute("profilePic");
		session.invalidate();
		return new ModelAndView("admin/signin");
		
	}
	@RequestMapping(value="/signup.htm",method=RequestMethod.GET)
	public ModelAndView signup()
	{
			return new ModelAndView("admin/signup","registration",new RegistrationVO()); //modelAttribute
		
	}
	@RequestMapping(value="/userIndex.htm",method=RequestMethod.GET)
	public ModelAndView loadingUser2(HttpSession session) throws Exception
	{
		return new ModelAndView("user/index");
	}
	@RequestMapping(value="/adminIndex.htm",method=RequestMethod.GET)
	public ModelAndView loadingAdmin2(HttpSession session) throws Exception
	{
		return new ModelAndView("admin/index");
	}
	@RequestMapping(value="/admin.htm",method=RequestMethod.GET)
	public ModelAndView loadingAdmin(HttpSession session) throws Exception
	{
		try
		{
		Authentication authUser =  SecurityContextHolder.getContext().getAuthentication();
		 
		String username = authUser.getName();
		LoginVO loginVO=new LoginVO();
		loginVO.setUsername(username);
		List<LoginVO> ls=registrationService.loginUserNameSelect(loginVO);
		session.setAttribute("loginId",ls.get(0).getLoginId()); 
		loginVO.setLoginId(ls.get(0).getLoginId());
		RegistrationVO  registrationVO=new RegistrationVO();
		registrationVO.setLoginVO(loginVO);
		List<RegistrationVO> ls1=registrationService.ServiceRegIdSelect(registrationVO);
		session.setAttribute("regId",ls1.get(0).getRegistrationId() ); 
		session.setAttribute("reg",ls1.get(0));
		return new ModelAndView("admin/index");
		}
		catch(Exception e)
		{
			return new ModelAndView("admin/Error","e",e.toString());
		}
	}
	@RequestMapping(value="/user.htm",method=RequestMethod.GET)
	public ModelAndView loadingUser(HttpSession session)
	{
		try
		{
			Authentication authUser =  SecurityContextHolder.getContext().getAuthentication();
			 
			String username = authUser.getName();
			LoginVO loginVO=new LoginVO();
			loginVO.setUsername(username);
			List<LoginVO> ls=registrationService.loginUserNameSelect(loginVO);
			session.setAttribute("loginId",ls.get(0).getLoginId() ); 
			loginVO.setLoginId(ls.get(0).getLoginId());
			RegistrationVO  registrationVO=new RegistrationVO();
			registrationVO.setLoginVO(loginVO);
			List<RegistrationVO> ls1=registrationService.ServiceRegIdSelect(registrationVO);
			session.setAttribute("regId",ls1.get(0).getRegistrationId() ); 
			session.setAttribute("reg",ls1.get(0));
			registrationVO.setRegistrationId(ls1.get(0).getRegistrationId());
			List<ProfileVO> listprofile=ProfileService.fetchProfileDetailsOfUser(registrationVO);
			
			session.setAttribute("profilePic",listprofile.get(0).getProfilePicPath());
			
			 
			
			return new ModelAndView("user/index");
		}
		catch(Exception e)
		{
			return new ModelAndView("admin/Error","e",e.toString());
		}
	}
	/*@RequestMapping(value="/signin.htm",method=RequestMethod.GET)
	public ModelAndView signin()
	{
		return new ModelAndView("signin"); //modelAttribute
	}*/
	@RequestMapping(value="/insert.htm",method=RequestMethod.POST)
	public ModelAndView insert(HttpSession session,@ModelAttribute("registration") RegistrationVO registrationVO)
	{
		/*steps 
		 * 1.generate password 
		 *  2.send email 
		 *  3.insert user into registration table
		 */
		try
		{
			String fname=registrationVO.getRegistrationFname();
			String email=registrationVO.getRegistrationEmail();
			String username=registrationService.generateUsername(fname);
			String path=session.getServletContext().getRealPath("/upload/profileImg");
			String pass="dpci_"+registrationService.generatePassword();
			
			String content="Welcome"+fname+", to Developer's Platform with conversing Intelligence. \n your username is"
			+username+" and password is "+pass;
			LoginVO loginVO=new LoginVO();
			loginVO.setPassword(pass);
			loginVO.setUsername(username);
	
			this.registrationService.ServiceInsertLogin(loginVO);
			
			  
	          
	       
			/*HttpSession session=request.getSession();
			session.setAttribute("regEmail",username);
			*/
	
				
			this.registrationService.sendEmail(email,content);
			registrationVO.setLoginVO(loginVO);
			
			this.registrationService.ServiceInsert(registrationVO);
			
			 File file1=new File(path+"//"+registrationVO.getLoginVO().getUsername()); 
		        if(!file1.exists())
		        {
		        	file1.mkdirs();
		        }
			ProfileVO profileVO=new ProfileVO();
			
			profileVO.setRegistrationVO(registrationVO);
			profileVO.setProfileUsername(username);
			this.registrationService.saveProfile(profileVO);
			return new ModelAndView("admin/signin");
		}
		catch(Exception e)
		{
			return new ModelAndView("admin/Error","e",e.toString());
		}
	}
	@RequestMapping(value="/ChangePassword.htm",method=RequestMethod.GET)
	public ModelAndView loadchngepassword(HttpServletRequest request)
	{
			return new ModelAndView("user/ChangePassword","login",new LoginVO()); //modelAttribute
		
	}
	@RequestMapping(value="/verify.htm",method=RequestMethod.GET)
	public ModelAndView verifyPassword(@RequestParam String password,HttpServletRequest request)
	{
		try
		{
			HttpSession session=request.getSession();
			int loginId=(int)session.getAttribute("loginId");
			LoginVO loginVO=new LoginVO();
			loginVO.setLoginId(loginId);
			loginVO.setPassword(password);
			String flag=registrationService.ServiceLoginPassSelect(loginVO);
			
		    
			return new ModelAndView("user/ResultChangePassword","flag",flag); //modelAttribute
		}
		catch(Exception e)
		{
			return new ModelAndView("admin/Error","e",e.toString());
		}
	}
	@RequestMapping(value="/SaveChangePassword.htm",method=RequestMethod.POST)
	public ModelAndView savechngepassword(@ModelAttribute("login")  LoginVO loginVO,HttpSession session)
	{
		try
		{
			int loginId=(int)session.getAttribute("loginId");
			loginVO.setLoginId(loginId);
			registrationService.ServiceUpdatePassword(loginVO);
			return new ModelAndView("user/index"); //modelAttribute
		}catch(Exception e)
		{
			return new ModelAndView("admin/Error","e",e.toString());
		}
	}
	@RequestMapping(value="/ManageUser.htm",method=RequestMethod.GET)
	public ModelAndView loadManageUser()
	{
		try
		{
			List ls=registrationService.ServiceRegSelect();
			return new ModelAndView("admin/ManageUser","list",ls); //modelAttribute
		}
		catch(Exception e)
		{
			return new ModelAndView("admin/Error","e",e.toString());
		}
		
	}
	@RequestMapping(value="/deleteUser.htm",method=RequestMethod.GET)
	public ModelAndView deleteManageUser(@RequestParam("id") int registrationId,@RequestParam("loginId") int loginId)
	{
		/*int =Integer.parseInt(id);*/
		try
		{
			RegistrationVO registrationVO=new RegistrationVO();
			registrationVO.setRegistrationId(registrationId);
			LoginVO loginVO=new LoginVO();
			loginVO.setLoginId(loginId);
			registrationVO.setLoginVO(loginVO);
			registrationService.ServiceDelete(registrationVO);
			List ls=registrationService.ServiceRegSelect();
			return new ModelAndView("admin/ManageUser","list",ls); //modelAttribute
		}
		catch(Exception e)
		{
			return new ModelAndView("admin/Error","e",e.toString());
		}
	}
	@RequestMapping(value="/forgetPassword.htm",method=RequestMethod.GET)
	public ModelAndView loadforgetpwd()
	{
		return new ModelAndView("admin/ForgetPassword");
	}
	@RequestMapping(value="/verifyEmail.htm",method=RequestMethod.GET)
	public ModelAndView verifyEmailId(@RequestParam("email") String email_ID,HttpSession session)
	{
		try
		{
			RegistrationVO registrationVO=new RegistrationVO();
			registrationVO.setRegistrationEmail(email_ID);
			List ls=registrationService.ServiceVerifyEmailId(registrationVO);
			String flag="";
			if(ls.size()!=0)
			{
				flag="True";
				session.setAttribute("emailId", email_ID);
			}
			else
			{
				
				flag="Wrong EmailId";
			}
			return new ModelAndView("admin/ForgetPasswordEmailVerify","flag",flag);
		}catch(Exception e)
		{
			return new ModelAndView("admin/Error","e",e.toString());
		}
	}
	@RequestMapping(value="/verificationMailSend.htm",method=RequestMethod.GET)
	public ModelAndView verificationMailSend(HttpSession session)
	{
	try {
		String email=(String)session.getAttribute("emailId");
		String password="dpci_"+registrationService.generatePassword();
		String content="Hello DPCI user , Your password has been rest.\n Your new password is "+password;
		LoginVO loginVO=new LoginVO();
		RegistrationVO registrationVO=new RegistrationVO();
		registrationVO.setRegistrationEmail(email);
	    List<RegistrationVO> ls=registrationService.ServiceVerifyEmailId(registrationVO);
	    System.out.println("=============="+ls.get(0).getLoginVO());
	    int loginId=ls.get(0).getLoginVO().getLoginId();
	    loginVO.setLoginId(loginId);
		loginVO.setPassword(password);
		registrationService.ServiceUpdatePassword(loginVO);
		registrationService.sendEmail( email,content);
		
		return new ModelAndView("admin/signin");
	}catch (Exception e) {
		return new ModelAndView("admin/Error","e",e.toString());
  
	 }
	}
	@RequestMapping(value="/verifyEmailForReg.htm",method=RequestMethod.GET)
	public ModelAndView verifyEmailForReg(@RequestParam("email") String email_ID)
	{
		try
		{
			RegistrationVO registrationVO=new RegistrationVO();
			registrationVO.setRegistrationEmail(email_ID);
			List ls=registrationService.ServiceVerifyEmailId(registrationVO);
			String flag="";
			if(ls.size()!=0)
			{
				flag="Exists";
				
			}
			else
			{
				
				flag="Does not Exists";
			}
			return new ModelAndView("admin/ForgetPasswordEmailVerify","flag",flag);
		}
		catch(Exception e)
		{
		
			return new ModelAndView("admin/Error","e",e.toString());
		}
		
	}
	@RequestMapping(value="/SigninError.htm",method=RequestMethod.GET)
	public ModelAndView Exception()
	{
		return new ModelAndView("admin/SigninError");
	}
}
