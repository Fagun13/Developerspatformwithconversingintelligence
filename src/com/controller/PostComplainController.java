package com.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import com.oreilly.servlet.MultipartRequest;  

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.VO.LoginVO;
import com.VO.PostComplainVO;
import com.VO.RegistrationVO;
import com.service.PostComplainService;

@Controller
public class PostComplainController 
{
	private PostComplainService postComplainService;
	@Autowired(required=true)
	public void setPostComplainService(PostComplainService postComplainService) {
		this.postComplainService = postComplainService;
	}


	@RequestMapping(value="/PostComplain.htm",method=RequestMethod.GET)
	public ModelAndView loadPostComplain(HttpServletRequest request)
	{
		     PostComplainVO postComplainVO=new PostComplainVO();
		     	return new ModelAndView("user/PostComplain","PostComplainVO",postComplainVO);
	}
	@RequestMapping(value="/savepostcomplain.htm",method=RequestMethod.POST)
	public ModelAndView savePostComplain(HttpServletRequest request,@ModelAttribute("PostComplainVO") PostComplainVO postComplainVO,@RequestParam("file1") CommonsMultipartFile file) throws IOException
	{
		HttpSession session=request.getSession();
		String path=session.getServletContext().getRealPath("/ROOT/complain");
		System.out.println(path);
		int  loginId=(Integer)session.getAttribute("loginId");
		LoginVO loginVO=new LoginVO();
		loginVO.setLoginId(loginId);
		postComplainVO.setLoginVO(loginVO);
        
        String filename=file.getOriginalFilename();  
        
              try{  
        byte barr[]=file.getBytes();  
          
        BufferedOutputStream bout=new BufferedOutputStream(  
                 new FileOutputStream(path+"/"+filename));  
        bout.write(barr);  
        bout.flush();    
        bout.close();  
          
        }
              catch(Exception e)
              {
            	  return new ModelAndView("admin/Error","e",e.toString());
            	  
              }  

        postComplainVO.setComplainDescriptionFile(path+"\\"+filename);

		postComplainService.ServiceInsert(postComplainVO);
		return new ModelAndView("user/index");
	}
	@RequestMapping(value="/ViewComplain.htm",method=RequestMethod.GET)
	public ModelAndView loadviewComplain(HttpServletRequest request)
	{
	    try {
			List ls=postComplainService.serviceSelectAll();
			return new ModelAndView("admin/ViewComplain","list",ls);
		} catch (Exception e) {
		
			e.printStackTrace();
			return new ModelAndView("admin/Error","e",e.toString());
		}
	}
	@RequestMapping(value="/ViewComplainUser.htm",method=RequestMethod.GET)
	public ModelAndView loadviewuserComplain(HttpServletRequest request)
	{
	   
	    try {
			HttpSession session=request.getSession();
			PostComplainVO postComplainVO=new PostComplainVO();
			int  loginId=(Integer)session.getAttribute("loginId");
			LoginVO loginVO=new LoginVO();
			loginVO.setLoginId(loginId);
			postComplainVO.setLoginVO(loginVO);
			 List<PostComplainVO> ls=postComplainService.serviceSelectUserdetails(postComplainVO);
			return new ModelAndView("user/ViewComplainUser","list",ls);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return new ModelAndView("admin/Error","e",e.toString());
		}
	}
	@RequestMapping(value="/ReplyComplain.htm",method=RequestMethod.GET)
	public ModelAndView replyComplain(HttpServletRequest request)
	{
		try {
			int complainId=Integer.parseInt(request.getParameter("id"));
			PostComplainVO postComplainVO=new PostComplainVO();
			postComplainVO.setComplainId(complainId);
			List ls=postComplainService.serviceSelectone(postComplainVO);
			
			return new ModelAndView("admin/ReplyComplain","PostComplainVO",(PostComplainVO)ls.get(0));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return new ModelAndView("admin/Error","e",e.toString());
		}
	}
	@RequestMapping(value="/savereplycomplain.htm",method=RequestMethod.POST)
	public ModelAndView saveReplyComplain(@ModelAttribute("PostComplainVO") PostComplainVO postComplainVO)
	{   
		
	    try {
			postComplainService.ServiceReplyInsert(postComplainVO);
			return new ModelAndView("admin/index");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return new ModelAndView("admin/Error","e",e.toString());
		}
	}
}
