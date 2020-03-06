package com.virtusa.metier.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

@Entity
public class Course implements Serializable {
	@Id
	@GeneratedValue
	private int courseId;
	private String courseName;
	private int passPercentage;
	private String batch;
	
	@ElementCollection
	@ManyToMany(cascade=CascadeType.ALL)
	@LazyCollection(LazyCollectionOption.FALSE)
	private List<Employee> employee; 
	//private Set<Employee>employee=new HashSet<Employee>();
	public int getCourseId() {
		return courseId;
	}
   
	public List<Employee> getEmployee() {
		return employee;
	}
	
	public void setEmployee(List<Employee> employee) {
		this.employee = employee;
	} 
	
	public  String getBatch() {
		return batch;
	}
	
	public void setBatch(String batch) {
		this.batch = batch;
	}
	
	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}
	
	public String getCourseName() {
		return courseName;
	}
	
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	
	public int getPassPercentage() {
		return passPercentage;
	}
	
	public void setPassPercentage(int passPercentage) {
		this.passPercentage = passPercentage;
	}
	
	@Override
	public String toString() {
		return "Course [courseId=" + courseId + ", courseName=" + courseName + ", passPercentage=" + passPercentage+ "]";
	}
	/*public Set<Employee> getEmployees() {
		return employee;
	}
	public void setEmployees(Set<Employee> employee) {
		this.employee = employee;
	}*/
	
}
