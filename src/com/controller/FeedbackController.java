package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.VO.FeedbackVO;
import com.VO.LoginVO;
import com.VO.PostComplainVO;
import com.VO.RegistrationVO;
import com.service.FeedbackService;

@Controller
public class FeedbackController 
{
	private FeedbackService feedbackService;
	@Autowired(required=true)
	public void setFeedbackService(FeedbackService feedbackService) {
		this.feedbackService = feedbackService;
	}
	@RequestMapping(value="/UserFeedback.htm",method=RequestMethod.GET)
	public ModelAndView loadPostFeedback(HttpServletRequest request)
	{
		     FeedbackVO feedbackVO=new FeedbackVO();
		 	return new ModelAndView("user/UserFeedback","FeedbackVO",feedbackVO);
	}
	@RequestMapping(value="/SaveUserFeedback.htm",method=RequestMethod.POST)
	public ModelAndView savePostFeedback(HttpServletRequest request,@ModelAttribute("FeedbackVO") FeedbackVO feedbackVO)
	{
		
		try {
			HttpSession session=request.getSession();
			int  loginId=(int)session.getAttribute("loginId");
			LoginVO loginVO=new LoginVO();
			loginVO.setLoginId(loginId);
			feedbackVO.setLoginVO(loginVO);
			feedbackService.ServiceInsert(feedbackVO);
			 	return new ModelAndView("user/index");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			 return new ModelAndView("admin/Error","e",e.toString());
		}
	}
	@RequestMapping(value="/ManageFeedBack.htm",method=RequestMethod.GET)
	public ModelAndView loadViewFeedback(HttpServletRequest request)
	{
			 try {
				List ls1=feedbackService.ServiceUserAvgRating();		
				 String s1=ls1.get(0).toString();
				 
				 float ratings=Float.parseFloat(s1);
				 System.out.println(s1);
				double r= Math.ceil(ratings);
				System.out.println(r);
				 HttpSession session=request.getSession();
				 session.setAttribute("ratings", r);
				 List  ls=feedbackService.ServiceSelect();     
				return new ModelAndView("admin/ManageFeedBack","list",ls);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				 return new ModelAndView("admin/Error","e",e.toString());
			}
	}

	
}
