package com.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.VO.ProfileVO;
import com.VO.RegistrationVO;

public class ProfileDAO 
{
private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public List fetchProfileDetailsOfUser(RegistrationVO registrationVO)
    {
		
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		Query query=session.createQuery("from ProfileVO where registrationVO='"+registrationVO.getRegistrationId()+"'");
		List ls=query.list();
		transaction.commit();
		session.close();		
		System.out.println("Hello"+ls.size());
		 return ls;
	}
	public void saveOrEditProfile(ProfileVO profileVO)
	{
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		session.update(profileVO);
		transaction.commit();
		session.close();
	}
	
}
