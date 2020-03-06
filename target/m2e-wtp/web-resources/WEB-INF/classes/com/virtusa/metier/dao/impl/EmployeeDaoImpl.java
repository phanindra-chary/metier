package com.virtusa.metier.dao.impl;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.hibernate.resource.transaction.spi.TransactionStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.virtusa.metier.model.Course;
import com.virtusa.metier.model.Employee;
@Repository
public class EmployeeDaoImpl {

	@Autowired
	SessionFactory sessionFactory;
	@Autowired
	Employee employee;

	/* (non-Javadoc)
	 * @see com.virtusa.status.dao.EmployeeDAO#createEmployee(com.virtusa.status.bean.Employee)
	 */
	public void createEmployee(Employee employee) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(employee);
		tx.commit();
		session.close();
	}



	public int updateEmployee(Employee employee) {
		// TODO Auto-generated method stub
		int status=0;
		try
		{
			/*sessionFactory = HibernateUtil.getSessionFactory();*/
			System.out.println("update employee started"+employee);
			Session session = sessionFactory.openSession();
			Transaction tx=session.beginTransaction();
			session.update(employee);
			tx.commit();
			session.close();
		}
		catch(Exception e)
		{
			System.out.println("in catch"+e.getMessage());
			e.printStackTrace();
		}
		return status;
	}

	public List<Employee> getDetails(Employee employee){
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		Criteria criteria=null;
		List<Employee> list = null;
		try {

			criteria=session.createCriteria(Employee.class);
			/*Criterion criterion = Restrictions.eq("status",
					employee.getStatus());
			criteria.add(criterion);*/

			list=criteria.list();
			transaction.commit();
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			if(session!=null) {
				session.close();
			}
		}

		return list;


	}
	/* (non-Javadoc)
	 * @see com.virtusa.status.dao.AdminDAO#updateStatus(com.virtusa.status.bean.Employee)
	 */
	public void updateStatus(int empId) {
		Session session=sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		Query q=session.createQuery("update Employee emp set emp.status=1 where emp.empId=:id");
		q.setParameter("id",empId);
		int result=q.executeUpdate();
		if (result > 0) {
			System.out.println("Activated");
		}
		t.commit();
		session.close();


		/*Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		employee.setStatus(1);
		session.update(employee);
		transaction.commit();
		session.close();*/
	}
	public Employee getStatus(int status) {

		return (Employee) sessionFactory.openSession().get(Employee.class, status);

	}
	public void deleteEmp(int empId) {

		Session session=sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		Query q=session.createQuery("delete Employee where empId=:id");
		q.setParameter("id",empId);
		int result=q.executeUpdate();
		if (result > 0) {
			System.out.println("Deleted");
		}
		t.commit();
		session.close();
	}
	public Employee getEmployeeDetails(Employee employee) {
		Session session = sessionFactory.openSession();
		Criteria criteria = null;
		Employee emp = null;
		try {
			criteria = session.createCriteria(Employee.class);
			Criterion criterion = Restrictions.eq("userName",
					employee.getUserName());
			Criterion criterion1 = Restrictions.eq("role",
					employee.getRole());

			criteria.add(criterion);
			criteria.add(criterion1);
			criteria.setMaxResults(1);
			emp = (Employee) criteria.uniqueResult();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			}
		}
		return emp;
	}
	/* (non-Javadoc)
	 * @see com.virtusa.status.dao.EmployeeDAO#getEmployee(com.virtusa.status.bean.Employee)
	 */
	public Employee getEmployee(Employee employee) {
		Session session =null;  
		Criteria criteria = null;
		Transaction tx=null;

		try {
			session = sessionFactory.openSession();
			tx=session.getTransaction();
			System.out.println(employee+"Dao..");
			criteria = session.createCriteria(Employee.class);
			Criterion criterion = Restrictions.eq("userName",employee.getUserName());
			Criterion criterion1 = Restrictions.eq("password",employee.getPassword());
			Criterion criterion2 = Restrictions.eq("status",Integer.parseInt("1"));

			criteria.add(criterion);
			criteria.add(criterion1);
			criteria.add(criterion2);
			criteria.setMaxResults(1);

			employee = (Employee) criteria.uniqueResult();

			session.flush();
			System.out.println(employee);
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
		return employee;
	}

	public Employee getEmployeeByUserName(Employee employee) {
		Session session =null;  
		Criteria criteria = null;
		Transaction tx=null;

		try {
			session = sessionFactory.openSession();
			tx=session.getTransaction();
			System.out.println(employee+"Dao..");
			criteria = session.createCriteria(Employee.class);
			Criterion criterion = Restrictions.eq("userName",employee.getUserName());

			criteria.add(criterion);
			criteria.setMaxResults(1);

			employee = (Employee) criteria.uniqueResult();

			session.flush();
			System.out.println(employee);
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
		return employee;
	}

	public List<Employee> addCourse(Course course) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		//Course course=null;
		Criteria criteria=null;
		List<Employee> list = null;
		try {

			criteria=session.createCriteria(Course.class);
			Criterion criterion = Restrictions.eq("batch",
					course.getBatch());
			criteria.add(criterion);

			list=criteria.list();
			transaction.commit();
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			if(session!=null) {
				session.close();
			}
		}

		return list;



	}



}
