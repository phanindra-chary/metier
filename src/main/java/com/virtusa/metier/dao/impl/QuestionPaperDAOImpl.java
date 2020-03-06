package com.virtusa.metier.dao.impl;

import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;

import com.virtusa.metier.dao.QuestionPaperDAO;
import com.virtusa.metier.model.AttemptAssessment;
import com.virtusa.metier.model.Employee;
import com.virtusa.metier.model.QuestionPaper;

public class QuestionPaperDAOImpl implements QuestionPaperDAO{
  
	@Autowired
	SessionFactory sessionFactory;
	@Autowired
	EmployeeDaoImpl employeeDaoImpl;
	@Autowired
	Employee employee;
	
	public boolean isAttempted(String assessmentName, String courseName, String userName) {
		
		 boolean status=false;
		
		
		
	   Session session=sessionFactory.openSession();
	   Transaction tx = session.beginTransaction();
	
	 
	  employee.setUserName(userName);
	 Employee employee1=employeeDaoImpl.getEmployeeByUserName(employee);
	 
	 int questionPaperStatus= getQuestionPaperStatus(assessmentName,courseName,userName);
	 int attemptAssessmentStatus= getAttemptAssessmentStatus(assessmentName,courseName,employee1.getBatch());
	 
	  if(questionPaperStatus < attemptAssessmentStatus)
	    {
	    	status=true;
	    }
	 
	 
	 
	/* Criteria criteria = null;
	 criteria = session.createCriteria(QuestionPaper.class) .setProjection( Projections.max("attemptStatus") )
			    .add( Restrictions.eq("assessmentName", assessmentName))
			    .add(Restrictions.eq("courseName", courseName))
			    .add(Restrictions.eq("userName", userName));
	 
	 Criterion criterion1=Restrictions.eq("assessmentName", assessmentName);
	 Criterion criterion2=Restrictions.eq("courseName", courseName); 
	 Criterion criterion3=Restrictions.eq("userName",userName);
	 criteria.add(criterion1);
	 criteria.add(criterion2);
	 criteria.add(criterion3);
	 
	      criteria.setMaxResults(200);
	      List<QuestionPaper> questionPaperList =(List<QuestionPaper>)criteria.list();
	      System.out.println(questionPaperList);
	      if(questionPaperList.isEmpty())
	      {
	    	  status=true;
	      }
	      else {   
	    	  System.out.println(questionPaperList.get(0));
	      	  QuestionPaper questionPaperStatus=questionPaperList.get(0);
	          System.out.println(questionPaperStatus);
	      
	 Criteria criteria1 = null;
	 criteria1 = session.createCriteria(AttemptAssessment.class).setProjection( Projections.max("attemptStatus") )
			    .add( Restrictions.eq("assessmentName", assessmentName))
			    .add(Restrictions.eq("courseName", courseName))
			    .add(Restrictions.eq("batch", employee1.getBatch()));;
	 Criterion criterion4=Restrictions.eq("assessmentName", assessmentName);
	 Criterion criterion5=Restrictions.eq("courseName", courseName); 
	 Criterion criterion6=Restrictions.eq("batch",employee1.getBatch());
	 criteria1.add(criterion4);
	 criteria1.add(criterion5);
	 criteria1.add(criterion6);
			    criteria1.setMaxResults(200);
			    List<AttemptAssessment> attemptAssessment =(List<AttemptAssessment>)criteria.list();

			     AttemptAssessment attemptAssessmentStatus=attemptAssessment.get(0);

			    if(questionPaperStatus.getAttemptStatus()<attemptAssessmentStatus.getAttemptStatus())
			    {
			    	status=true;
			    }
	 
		//System.out.println(questionBankList);
	    tx.commit();
		session.close();
	      } */
		return status;
	}
	
	
	public int getQuestionPaperStatus(String assessmentName, String courseName, String userName)
	{    
		Session session=sessionFactory.openSession();
		   Transaction tx = session.beginTransaction();
		   
		 Criteria criteria1 = null;
		 criteria1= session.createCriteria(QuestionPaper.class);
		 Criterion criterion4=Restrictions.eq("assessmentName", assessmentName);
		 Criterion criterion5=Restrictions.eq("courseName", courseName); 
		 Criterion criterion6=Restrictions.eq("userName",userName);
		 criteria1.add(criterion4);
		 criteria1.add(criterion5);
		 criteria1.add(criterion6);
		 criteria1.setMaxResults(200);
		  List<QuestionPaper> questionPaperList =(List<QuestionPaper>)criteria1.list();
          Set<Integer> questionPaperStatus= new LinkedHashSet<Integer>();
		  
		  System.out.println("getQuestionPaperStatus() List"+questionPaperList);
		    for(QuestionPaper questionPaper:questionPaperList)
		    {
		    	questionPaperStatus.add(questionPaper.getAttemptStatus());
		    }
		     System.out.println("getQuestionPaperStatus()"+questionPaperStatus);
		     int high=0;
		     for(int i:questionPaperStatus)
		     {
		    	 if(i>high)
		    	 {
		    		 high=i;
		    	 }
		     }
		     System.out.println("high"+high);
		return high;
	}
	
	public int getAttemptAssessmentStatus(String assessmentName, String courseName, String batch)
	{    
		Session session=sessionFactory.openSession();
		   Transaction tx = session.beginTransaction();
		   
		 Criteria criteria1 = null;
		 criteria1= session.createCriteria(AttemptAssessment.class);
		 Criterion criterion4=Restrictions.eq("assessmentName", assessmentName);
		 Criterion criterion5=Restrictions.eq("courseName", courseName); 
		 Criterion criterion6=Restrictions.eq("batch",batch);
		 criteria1.add(criterion4);
		 criteria1.add(criterion5);
		 criteria1.add(criterion6);
		 criteria1.setMaxResults(200);
		  List<AttemptAssessment> attemptAssessmentList =(List<AttemptAssessment>)criteria1.list();
          Set<Integer> attemptAssessmentStatus= new LinkedHashSet<Integer>();
		  
		  System.out.println("getAttemptAssessmentStatus() List"+attemptAssessmentList);
		    for(AttemptAssessment attemptAssessment:attemptAssessmentList)
		    {
		    	attemptAssessmentStatus.add(attemptAssessment.getAttemptStatus());
		    }
		     System.out.println("getAttemptAssessmentStatus()"+attemptAssessmentStatus);
		     int high=0;
		     for(int i:attemptAssessmentStatus)
		     {
		    	 if(i>high)
		    	 {
		    		 high=i;
		    	 }
		     }
		     System.out.println("high"+high);
		return high;
	}
	
	
	
	
   
}
