package com.virtusa.metier.driver;



import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;

public class HibernateUtil {
	
	
	private static SessionFactory sessionFactory=null;
	private HibernateUtil()
	{
		
	}
	public static SessionFactory getSessionFactory()
	{  
		if(sessionFactory==null)
		{
		  	
		 Configuration config=new Configuration();
		  config.configure();
		  sessionFactory=config.buildSessionFactory();
		  	
		}		
		return sessionFactory;
	}
}
