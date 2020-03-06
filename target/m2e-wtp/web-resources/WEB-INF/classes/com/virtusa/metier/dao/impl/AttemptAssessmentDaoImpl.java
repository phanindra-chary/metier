package com.virtusa.metier.dao.impl;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.virtusa.metier.dao.AttemptAssessmentDao;
import com.virtusa.metier.model.AttemptAssessment;

@Repository
public class AttemptAssessmentDaoImpl implements AttemptAssessmentDao {
	@Autowired
	SessionFactory sessionFactory;
	@Autowired
	QuestionPaperDAOImpl questionPaperDao;
	/* (non-Javadoc)
	 * @see com.virtusa.metier.dao.impl.AttemptAssessment#saveAttemptAssessment(com.virtusa.metier.model.AttemptAssessment)
	 */
 
	public void saveAttemptAssessment(AttemptAssessment attemptAssessment) {
		// TODO Auto-generated method stub
		try {
			
			Session session = sessionFactory.openSession();
			Transaction tx = session.beginTransaction();
			//int status=attemptAssessment.getAttemptStatus();
			
			 int status=questionPaperDao.getAttemptAssessmentStatus(attemptAssessment.getAssessmentName(),attemptAssessment.getCourseName(),attemptAssessment.getBatch());
			if(status==0)
			{
				attemptAssessment.setAttemptStatus(1);
			}else
			{
				attemptAssessment.setAttemptStatus(status+1);
			}
			session.saveOrUpdate(attemptAssessment);
			tx.commit();
			session.flush();
			session.close();
			
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/* (non-Javadoc)
	 * @see com.virtusa.metier.dao.impl.AttemptAssessment#getStatus(java.lang.String, java.lang.String, java.lang.String)
	 */
	public int getStatus(String batch, String assessmentName, String courseName) {
		// TODO Auto-generated method stub
		int status =0;
try {
			
			Session session = sessionFactory.openSession();
			Transaction tx = session.beginTransaction();
			Criteria criteria = null;
			criteria = session.createCriteria(AttemptAssessment.class);
			Criterion criterion = Restrictions.eq("batch",
					batch);
			Criterion criterion1 = Restrictions.eq("assessmentName",
					assessmentName);
			Criterion criterion2 = Restrictions.eq("courseName",
					courseName);
			criteria.add(criterion2);
			criteria.add(criterion1);
			criteria.add(criterion);
			
			criteria.setProjection(Projections.max("attemptStatus"));
				 status = (Integer)criteria.uniqueResult();
			
			tx.commit();
			session.flush();
			session.close();
			
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	}
	
	
}
