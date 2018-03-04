package com.service;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;

import com.DAO.FeedbackDAO;
import com.VO.FeedbackVO;
import com.VO.PostComplainVO;

@Service
public class FeedbackService 
{
 private FeedbackDAO feedbackDAO;

public void setFeedbackDAO(FeedbackDAO feedbackDAO) {
	this.feedbackDAO = feedbackDAO;
}
public void ServiceInsert(FeedbackVO feedbackVO)
{
	Date date=new Date();
	feedbackVO.setFeedbackDate(date.getDate()+"/"+(date.getMonth()+1)+"/"+(date.getYear()+1900));
	feedbackVO.setFeedbackTime(date.getHours()+":"+date.getMinutes()+":"+date.getSeconds());
	feedbackDAO.postFeedbackInsert(feedbackVO);
}
public List ServiceSelect()
{
 return feedbackDAO.tableSearchUserFeedback();	
}
public List ServiceUserAvgRating()
{
 return feedbackDAO.ratingAvg();	
}
}
