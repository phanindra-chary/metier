package com.virtusa.metier.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.virtusa.metier.dao.ResultDAO;
import com.virtusa.metier.model.Result;
@Repository
public class ResultDAOImpl implements ResultDAO{
	
	
	@Autowired
	SessionFactory sessionFactory;
	
	public Result getResult(Result result) {
		Session session = sessionFactory.openSession();
		Criteria criteria = null;
		Result res=null;
		try {
			criteria = session.createCriteria(Result.class);
			Criterion criterion = Restrictions.eq("userName",
					result.getUserName());
			
			criteria.add(criterion);
			
			
			criteria.setMaxResults(1);
			res = (Result) criteria.uniqueResult();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			}
		}
		return res;
	}

	public List<Result> getResults(Result result) {
		// TODO Auto-generated method stub
		Criteria criteria = null;
		Session session = sessionFactory.openSession();
		
			List<Result> result2 =new ArrayList<Result>();
		
		Transaction tx = session.beginTransaction();
		criteria = session.createCriteria(Result.class);
		Criterion criterion = Restrictions.eq("courseName",result.getCourseName());
		Criterion criterion1 = Restrictions.eq("assessmentName",result.getAssessmentName());
		Criterion criterion2 = Restrictions.eq("batch",result.getBatch());
		criteria.add(criterion);
		criteria.add(criterion1);
		criteria.add(criterion2);
		criteria.setMaxResults(200);
		result2 =(List<Result>)criteria.list();
		for(Result result1:result2) {
			System.out.println(result1);
		}
		
		tx.commit();
		session.close();
		
		
		return result2;
			
		
		
	}
}
