package com.DAO;
import java.util.List;

import javax.persistence.*;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.VO.*;

@Repository
public class RegistrationDAO
{
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void registrationInsert(RegistrationVO registrationVO)
	{
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		session.save(registrationVO);
		transaction.commit();
		session.close();
	}
	public void loginInsert(LoginVO loginVO)
	{
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		session.save(loginVO);
		transaction.commit();
		session.close();
	}

	public List loginUserNameSelect(LoginVO loginVO)
	{
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		Query query=session.createQuery("from LoginVO where username='"+loginVO.getUsername()+"'");
		List ls=query.list();
		transaction.commit();
		session.close();
		return ls;
	}
	public List regIdSelect(RegistrationVO registrationVO)
	{
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		Query query=session.createQuery("from RegistrationVO where loginId='"+registrationVO.getLoginVO().getLoginId()+"'");
		List ls=query.list();
		transaction.commit();
		session.close();
		return ls;
	}
	public String loginPassSelect(LoginVO loginVO)
	{
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		Query query=session.createQuery("from LoginVO where password='"+loginVO.getPassword()+"' and loginId='"+loginVO.getLoginId()+"'");
		List ls=query.list();
		transaction.commit();
		session.close();
		if(ls.isEmpty())
		{
			return "Wrong password";
		}
		else
		{
			return "true";
		}
	}
	public List registrationSelect()
	{
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		/*Query query=session.createSQLQuery("select r.registrationId as regId,r.registrationFname as FirstName ,r.registrationLname as LastName ,l.username as UserName from tbl_registration r inner join tbl_login l on r.loginId=l.loginId");
	*/	Query query=session.createQuery("from RegistrationVO where loginVO.role='ROLE_USER'");
		List ls=query.list();
		
		return ls;
	}
	public void registrationDeleteUser(RegistrationVO registrationVO)
	{
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		Query query=session.createSQLQuery("update tbl_login set enable='0' where loginId='"+registrationVO.getLoginVO().getLoginId()+"'");
		query.executeUpdate();
		transaction.commit();
		session.close();		
	}
	public List verifyEmailId(RegistrationVO registrationVO)
	{
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();			
		System.out.println("Hello");
		Query query=session.createQuery("from RegistrationVO where registrationEmail='"+registrationVO.getRegistrationEmail()+"'");
		List ls=query.list();
		System.out.println("Hello"+ls.size());
		transaction.commit();
		session.close();
		return ls;
	}
	
	public void updatePassword(LoginVO loginVO)
	{
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		Query query=session.createSQLQuery("update tbl_login set password='"+loginVO.getPassword()+"' where loginId='"+loginVO.getLoginId()+"'");
		query.executeUpdate();
		transaction.commit();
		session.close();		
	}
	public void saveProfile(ProfileVO profileVO)
	{
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		session.save(profileVO);
		transaction.commit();
		session.close();
	}

}
