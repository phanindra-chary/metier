package com.virtusa.metier.dao.impl;

import java.util.ArrayList;
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
public class AssessmentDaoImpl {
    
	@Autowired
	SessionFactory sessionFactory;
	@Autowired
	Assessment assessment;
	@Autowired
	TechnologyDaoImpl technologyDaoImpl;
	
	public void insertAssessment(Assessment assessment) {
		// TODO Auto-generated method stub
		try {
			
			Session session = sessionFactory.openSession();
			Transaction tx = session.beginTransaction();
			session.saveOrUpdate(assessment);
			System.out.println("assessment Dao.."+assessment);
			tx.commit();
			session.flush();
			session.close();
			
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void updateAssessment(Assessment assessment) {
		// TODO Auto-generated method stub
		try {
			
			Session session = sessionFactory.openSession();
			Transaction tx = session.beginTransaction();
			session.update(assessment);
			tx.commit();
			session.flush();
			session.close();
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	public Assessment viewAssessmentByAssessmentId(int assessmentId) {
		// TODO Auto-generated method stub
		Assessment assessment2=null;
	    Criteria criteria = null;
	    Session session =null;
	    Transaction tx=null;
		try {
			 
		 	 session = sessionFactory.openSession();
 
			 tx = session.beginTransaction();

			criteria = session.createCriteria(Assessment.class);

			Criterion criterion = Restrictions.eq("assessmentId",assessmentId);


			criteria.add(criterion);


			criteria.setMaxResults(1);
             System.out.println("viewAssessment()..."+assessmentId);
			assessment2 =(Assessment)criteria.uniqueResult();
			
			 
			tx.commit();
			session.flush();
			session.close();
						
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			return assessment2;
			
		} 
	}
	
	public List<Assessment> viewAssessment(int courseId) {
		// TODO Auto-generated method stub
		List<Assessment> assessment2=null;
	    Criteria criteria = null;
	    Session session =null;
	    Transaction tx=null;
		try {
			 
		 	 session = sessionFactory.openSession();
        	assessment2 =new ArrayList<Assessment>();
 
			 tx = session.beginTransaction();

			criteria = session.createCriteria(Assessment.class);

			Criterion criterion = Restrictions.eq("courseId",courseId);

//			Criterion criterion1 = Restrictions.eq("assessmentId",assessment.getAssessmentId());

			criteria.add(criterion);

//			criteria.add(criterion1); 

			criteria.setMaxResults(200);
             System.out.println("viewAssessment()..."+courseId);
			assessment2 =(List<Assessment>)criteria.list();
			
			for(Assessment assessment:assessment2) {
				System.out.println(assessment+"viewAssessment()...");
			}
			tx.commit();
			session.flush();
			session.close();
						
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			return assessment2;
			
		} 
	}
	
	public List<Assessment> viewAssessmentById(int courseId, int assessmentId) {
		// TODO Auto-generated method stub
		List<Assessment> assessment2=null;
	    Criteria criteria = null;
	    Session session =null;
	    Transaction tx=null;
		try {
			
		 	 session = sessionFactory.openSession();
        	assessment2 =new ArrayList<Assessment>();
 
			 tx = session.beginTransaction();

			criteria = session.createCriteria(Assessment.class);

			Criterion criterion = Restrictions.eq("assessmentId",assessmentId);
     		Criterion criterion1 = Restrictions.eq("courseId",courseId);

			criteria.add(criterion);
 			criteria.add(criterion1); 

			criteria.setMaxResults(200);
             System.out.println("viewAssessment()..."+assessmentId);
             
			assessment2 =(List<Assessment>)criteria.list();
			System.out.println(assessment2+"viewAssessment()...");
			
			for(Assessment assessment:assessment2) {
				System.out.println(assessment+"viewAssessment()...");
			}
			tx.commit();
			session.close();
						
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			return assessment2;
			
		} 
	}
	
	public void deleteAssessment(Assessment assessment2) {
		// TODO Auto-generated method stub
	    Criteria criteria = null;
	    Session session =null;
	    Transaction tx=null;
		try {
			
			 session = sessionFactory.openSession();
	        	Assessment assessment1 =null;
	 
			 

				criteria = session.createCriteria(Assessment.class);
               
				Criterion criterion = Restrictions.eq("courseId",assessment2.getCourseId());

				Criterion criterion1 = Restrictions.eq("assessmentName",assessment2.getAssessmentName());

				criteria.add(criterion);

				criteria.add(criterion1); 

				criteria.setMaxResults(200);

				List<Assessment> assessment3 =(List<Assessment>)criteria.list();
				System.out.println("deleteAssessment()..."+assessment3);
			   for(Assessment assessment:assessment3) {
				  
				   if(assessment !=null)
				   {tx = session.beginTransaction();
					   List<Technology> technologyList = assessment.getTechnology();
			   	       session.delete(assessment);
			   	    tx.commit();
			      for(Technology technology1:technologyList)
			      { tx = session.beginTransaction();
			    	  technologyDaoImpl.deleteTechnology(technology1);
			    	  tx.commit();
			      }
				   }
			    else {
			    	System.out.println("Empty set...");
			    }}
				
				session.flush();
				session.close();
			
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
				
		} 

	}
	
	
	
	
	
	
	
}
