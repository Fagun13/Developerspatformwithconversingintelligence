package com.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.VO.PostComplainVO;

@Controller
public class ProjectController {
	@RequestMapping(value="/ManageProject.htm",method=RequestMethod.GET)
	public ModelAndView loadPostComplain(HttpServletRequest request)
	{
		     
		     	return new ModelAndView("user/ManageProject");
	}
	
}
