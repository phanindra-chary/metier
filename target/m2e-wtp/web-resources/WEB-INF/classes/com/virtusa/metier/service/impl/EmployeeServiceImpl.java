package com.virtusa.metier.service.impl;

import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.virtusa.metier.dao.impl.CourseDaoImpl;
import com.virtusa.metier.dao.impl.EmployeeDaoImpl;
import com.virtusa.metier.model.Course;
import com.virtusa.metier.model.Employee;

 
@Transactional
public class EmployeeServiceImpl {
	@Autowired
    SessionFactory sessionFactory;
	@Autowired
	Employee employee;
	@Autowired
	private EmployeeDaoImpl employeeDao;
	@Autowired
	private CourseDaoImpl courseDaoImpl;
	
	public void create(Employee emp)
	{
	   Session session=sessionFactory.openSession();
	   Transaction t= session.beginTransaction();
	   System.out.println("entered details" +emp);
	   session.save(emp);
	   System.out.println("its created");
	   t.commit();
	   session.close();
	}
	//EmployeeDAO employeeDAO =new EmployeeDAOImpl();
	
	/* (non-Javadoc)
	 * @see com.virtusa.status.service.EmployeeService#createEmployee(com.virtusa.status.bean.Employee)
	 */
	public void createEmployee(Employee employee) {
		
		employeeDao.createEmployee(employee);
				
	}
	
	
	public int updateEmployee(Employee employee) {
		
		return employeeDao.updateEmployee(employee);
	}
	
	/* (non-Javadoc)
	 * @see com.virtusa.status.service.EmployeeService#getEmployee(com.virtusa.status.bean.Employee)
	 */
	public Employee getEmployee(Employee employee) {
		 
		return employeeDao.getEmployee(employee);
	}
	
	public Employee getEmployeeDetails(Employee employee) {
		 
		return employeeDao.getEmployeeDetails(employee);
	}


	public void updateStatus(int status) {
		// TODO Auto-generated method stub
		employeeDao.updateStatus(status);
	}


	public void deleteEmp(int empId) {
		// TODO Auto-generated method stub
		employeeDao.deleteEmp(empId);
	}


	public List<Employee> getDetails(Employee employee2) {
		// TODO Auto-generated method stub
		return employeeDao.getDetails(employee2);
	}


	public List<Employee> addCourse(Course course) {
		// TODO Auto-generated method stub
		return employeeDao.addCourse(course);
	}
	
	public Set<String> getBatches() {
		// TODO Auto-generated method stub
		
		List<Course> courseList= courseDaoImpl.display();
		Set<String> batchList = new LinkedHashSet<String>();
		for(Course course:courseList)
		{
			batchList.add(course.getBatch().toString());
		}
		
		return batchList;
	}
	
}
