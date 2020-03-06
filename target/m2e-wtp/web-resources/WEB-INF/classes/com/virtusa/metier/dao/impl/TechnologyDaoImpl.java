package com.virtusa.metier.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.virtusa.metier.model.Assessment;
import com.virtusa.metier.model.Technology;

@Repository
public class TechnologyDaoImpl {
	
	@Autowired
	SessionFactory sessionFactory;
	
	public void insertTechnology(Technology technology) {
		// TODO Auto-generated method stub
		try {
			
			Session session = sessionFactory.openSession();
			Transaction tx = session.beginTransaction();
			session.save(technology);
			tx.commit();
			session.close();
			
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void deleteTechnology(Technology technology) {
		// TODO Auto-generated method stub
	    Criteria criteria = null;
	    Session session =null;
		try {
			
			 session = sessionFactory.openSession();
	        	Assessment assessment1 =null;
	 
				Transaction tx = session.beginTransaction();

				criteria = session.createCriteria(Technology.class);
               
				Criterion criterion = Restrictions.eq("technologyId",technology.getTechnologyId());
				criteria.add(criterion);
				criteria.setMaxResults(1);
                
				Technology technology1=(Technology)criteria.uniqueResult();
			   
				   if(technology1 !=null)
				   {
			   	session.delete(technology1); }
			    else {
			    	System.out.println("Empty set...from Technology class");
			    } 
				tx.commit();
				session.close(); 
			
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
				
		} 

	}
	
	
}
