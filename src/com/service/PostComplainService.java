package com.service;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.DAO.PostComplainDAO;
import com.VO.PostComplainVO;
import com.VO.RegistrationVO;

@Service
public class PostComplainService 
{
	private PostComplainDAO postComplainDAO;

	public PostComplainDAO getPostComplainDAO() {
		return postComplainDAO;
	}

	public void setPostComplainDAO(PostComplainDAO postComplainDAO) {
		this.postComplainDAO = postComplainDAO;
	}
	public void ServiceInsert(PostComplainVO postComplainVO)
	{
		Date date=new Date();
		postComplainVO.setComplainDate(date.getDate()+"/"+(date.getMonth()+1)+"/"+(date.getYear()+1900));
		postComplainVO.setComplainTime(date.getHours()+":"+date.getMinutes()+":"+date.getSeconds());
		postComplainVO.setComplainStatus("Pending");
		this.postComplainDAO.postComplainInsert(postComplainVO);
	}
	public List serviceSelectAll()
	{
		List ls=postComplainDAO.tableDetails();
		return ls;
	}
	public List serviceSelectUserdetails(PostComplainVO postComplainVO)
	{
		List ls=postComplainDAO.tableSearchUser(postComplainVO);
		return ls;
	}
	public List serviceSelectone(PostComplainVO postComplainVO)
	{
		List ls=postComplainDAO.tableSearch(postComplainVO);
		return ls;
	}
	
	public void ServiceReplyInsert(PostComplainVO postComplainVO)
	{
		postComplainVO.setComplainStatus("Done");
		this.postComplainDAO.replyComplainInsert(postComplainVO);
	}
	
	
}
