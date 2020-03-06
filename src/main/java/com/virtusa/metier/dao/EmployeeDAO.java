package com.virtusa.metier.dao;

import java.util.List;

import com.virtusa.metier.model.Employee;

 
	public interface EmployeeDAO {

		void createEmployee(Employee employee);
		public void updateStatus(int status);
		public List<Employee> getDetails(Employee employee);
		Employee getEmployee(Employee employee);
	    Employee getEmployeeDetails(Employee employee);
	    public Employee getStatus(int status);
	    public void deleteEmp(String userName);
	    public int updateEmployee(Employee employee);
	}
 
	
	