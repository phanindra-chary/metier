package com.virtusa.metier.dao.impl;

import java.util.List;
import java.util.Set;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.hibernate.resource.transaction.spi.TransactionStatus;
import org.springframework.beans.factory.annotation.Autowired;

import com.virtusa.metier.model.Course;
import com.virtusa.metier.model.Employee;

public class CourseDaoImpl {
	@Autowired
	SessionFactory sessionFactory;
	public void create(Course course)
	{
	   Session session=sessionFactory.openSession();
	   Transaction t= session.beginTransaction();
	   System.out.println("entered details" +course);
	   session.save(course);
	   System.out.println("course created");
	   t.commit();
	   session.close();
	}

	public List<Course> display() {
		Session session=sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		Query q=session.createQuery("from Course");
		List<Course> course=q.list();
		t.commit();
		session.close();
		return course;	
	}
	
	public void deleteCourse(int courseId) {
		/*Course course=(Course) sessionFactory.getCurrentSession().load(Course.class,courseId);
		
		if(course != null)
		{
			try {
			this.sessionFactory.getCurrentSession().delete(course);
		        }
			catch (HibernateException e) 
			{
			this.sessionFactory.openSession().delete(course);
			}
			}*/
		Session session=sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		Query q=session.createQuery("delete Course where courseId=:id");
		q.setParameter("id",courseId);
		int result=q.executeUpdate();
		if (result > 0) {
				System.out.println("Deleted");
			}
		t.commit();
		session.close();
     }
	public Course getCourse(int courseId) {
		return (Course) sessionFactory.openSession().get(Course.class, courseId);
	}
	public void updateCourse(Course course) {
		/* Session session=sessionFactory.openSession();
		   Transaction t= session.beginTransaction();
		   session.update(course);
		   t.commit();
		   session.close();*/
	}
 
	public List<Course> getCourseByBatch(String batchId) {
		Session session =null;  
		Criteria criteria = null;
		Transaction tx=null;
		 List<Course> courseList=null;
		try {
			session = sessionFactory.openSession();
			tx=session.getTransaction();
			System.out.println(batchId);
			criteria = session.createCriteria(Course.class);
			Criterion criterion = Restrictions.eq("batch",batchId);
			criteria.add(criterion);
			criteria.setMaxResults(100);
			courseList = (List<Course>) criteria.list();
			 System.out.println("From Dao..."+courseList);
			session.flush();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (tx.getStatus().equals(TransactionStatus.ACTIVE)) { 
			    tx.commit();
			}
			if (session != null) {
				session.close();
			}
		}
		return courseList;
	}
    
	
	
	public Course fetchCourseProcess(Course course) {
		  
		Session session =null;  
		Criteria criteria = null;
		Transaction tx=null;
		Course course1=null;
		int courseId=course.getCourseId();
		System.out.println(courseId);
		try {
			session = sessionFactory.openSession();
			tx=session.getTransaction();
			System.out.println(courseId);
			criteria = session.createCriteria(Course.class);
			Criterion criterion = Restrictions.eq("courseId",courseId);
			criteria.add(criterion);
			criteria.setMaxResults(1);
			course1=(Course) criteria.uniqueResult();
			 System.out.println("From Dao..."+course);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (tx.getStatus().equals(TransactionStatus.ACTIVE)) { 
			    tx.commit();
			}
			if (session != null) {
				session.close();
			}
		}
		return course1;
		
	}
	
}
