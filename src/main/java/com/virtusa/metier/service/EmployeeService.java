package com.virtusa.metier.service;

import java.util.List;

import com.virtusa.metier.model.Employee;

public interface EmployeeService {

	void createEmployee(Employee employee);
	public void updateStatus(int status);
	public List<Employee> getDetails(Employee employee);
	Employee getEmployee(Employee employee);
    Employee getEmployeeDetails(Employee employee);
    public Employee getStatus(int status);
    public void deleteEmp(int userName);
    public int updateEmployee(Employee employee);
}
