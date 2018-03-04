package com.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.VO.*;

@Repository
public class PostComplainDAO 
{
private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public void postComplainInsert(PostComplainVO postComplainVO)
	{
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		session.save(postComplainVO);
		transaction.commit();
		session.close();
	}
	public void replyComplainInsert(PostComplainVO postComplainVO)
	{
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		session.saveOrUpdate(postComplainVO);
		transaction.commit();
		session.close();
	}
	public List tableDetails()
    {
		
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		Query query=session.createQuery("from PostComplainVO where complainStatus='Pending'");
		List ls=query.list();
		transaction.commit();
		session.close();		
		 return ls;
	}
	public List tableSearch(PostComplainVO postComplainVO)
    {
		
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		Query query=session.createQuery("from PostComplainVO where complainId="+postComplainVO.getComplainId());
		List ls=query.list();
		transaction.commit();
		session.close();		
		 return ls;
	}
	public List tableSearchUser(PostComplainVO postComplainVO)
    {
		
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		Query query=session.createQuery("from PostComplainVO where loginVO="+postComplainVO.getLoginVO().getLoginId());
		List ls=query.list();
		transaction.commit();
		session.close();		
		 return ls;
	}
}
