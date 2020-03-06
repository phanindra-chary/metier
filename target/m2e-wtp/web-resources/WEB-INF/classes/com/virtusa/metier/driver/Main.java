package com.virtusa.metier.driver;

import java.util.HashMap;
import java.util.Map;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.virtusa.metier.model.Assessment;
import com.virtusa.metier.model.Technology;

public class Main {

	public static void main(String []args)
	{
         
		Session session = HibernateUtil.getSessionFactory().openSession();
     	Transaction trans=session.beginTransaction();
     	try {
     	/*
     		Assessment assessment=new Assessment();

    		Technology technology1=new Technology();
    		technology1.setSectionDuration(20);
    		technology1.setNoOfQuestions(10);
    		technology1.setAssessment(assessment);
           
    		Technology technology2=new Technology();
    		technology2.setSectionDuration(30);
    		technology2.setNoOfQuestions(20);
    		technology2.setAssessment(assessment);

    		assessment.setAsessmentName("Assessment1");  
    		Map<Integer,Technology> list=new HashMap();
    		list.put(1,technology1 );
    		list.put(2,technology2 );
    		
    		assessment.setTechnologyList(list);
    		System.out.println(assessment);
    		session.save(assessment);
    		*/
     		
     	/*Course course = new Course();
     	Assessment assessment = new Assessment();
      	
     	course.setCourseName("CFP1");
     	course.setPassPercentage("70");
     	assessment.setAsessmentName("Assess3");
     
     	
        List<AssessmentTechnologies> lt = new ArrayList();	 
      	AssessmentTechnologies at=new AssessmentTechnologies();
     	  at.setAssessment(assessment);
     	  at.setCourse(course);
     	  at.setTechnologyId(101);
     	  at.setSectionDuration(20);
     	  at.setNoOfQuestions(10);
     	
     	AssessmentTechnologies at1=new AssessmentTechnologies();
     	  at1.setAssessment(assessment);
      	  at1.setCourse(course);
     	  at1.setTechnologyId(102);
      	  at1.setSectionDuration(20);
      	  at1.setNoOfQuestions(20);
   	    lt.add(at);
   	    lt.add(at1);
        session.save(at);
        session.save(at1);*/
        
      trans.commit();
     	}catch (HibernateException e) {
     		trans.rollback();
     		e.printStackTrace();
     	} finally {
     		session.close();
     	}

     	}
		
		
		
		

	}

