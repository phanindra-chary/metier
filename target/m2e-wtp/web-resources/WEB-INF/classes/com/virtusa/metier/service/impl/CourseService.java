package com.virtusa.metier.service.impl;


import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.virtusa.metier.dao.impl.CourseDaoImpl;
import com.virtusa.metier.model.Course;

public class CourseService {
	@Autowired
	SessionFactory sessionFactory;
	@Autowired
	CourseDaoImpl courseDaoImpl;
	@Autowired
	Course course;
	
	public void create(Course course)
	{
		courseDaoImpl.create(course);
	}

	public Course fetchCourseProcess(Course course)
	{    course=courseDaoImpl.fetchCourseProcess(course);
	System.out.println("course service."+course);
		return course;
	}
	
	public List<Course> display() {
		return courseDaoImpl.display();
	}
	public void deleteCourse(int courseId) {
		courseDaoImpl.deleteCourse(courseId);
	}

	public Course getCourse(int courseId) {
		return  courseDaoImpl.getCourse(courseId);
	}

	public void updateCourse(Course course) {
		courseDaoImpl.updateCourse(course);
	}

	public  List<Course> getCourseByBatch(String batch)
	{
		System.out.println("From Service Course...."+batch);

		return courseDaoImpl.getCourseByBatch(batch);
	}

}


