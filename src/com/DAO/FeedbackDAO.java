package com.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;
import com.VO.FeedbackVO;
import com.VO.PostComplainVO;
@Repository
public class FeedbackDAO 
{
private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public void postFeedbackInsert(FeedbackVO feedbackVO)
	{
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		session.save(feedbackVO);
		transaction.commit();
		session.close();
	}
	public List tableSearchUserFeedback()
    {
		
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		Query query=session.createQuery("from FeedbackVO ");
		List ls=query.list();
		transaction.commit();
		session.close();		
		 return ls;
	}
	public List ratingAvg()
	{
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		Query query=session.createSQLQuery("select avg(feedbackRating) from tbl_feedback");
		List ls=query.list();
		
		return ls;
	}
}
