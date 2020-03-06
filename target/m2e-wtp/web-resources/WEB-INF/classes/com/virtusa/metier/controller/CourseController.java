package com.virtusa.metier.controller;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.virtusa.metier.dao.impl.CourseDaoImpl;
import com.virtusa.metier.dao.impl.ReadDataFromExcel;
import com.virtusa.metier.model.Course;
import com.virtusa.metier.model.CourseForm;
import com.virtusa.metier.model.Employee;
import com.virtusa.metier.service.impl.CourseService;
import com.virtusa.metier.service.impl.EmployeeServiceImpl;



@Controller
public class CourseController {

	@Autowired
	CourseService courseService;
	@Autowired
	Course course;
	@Autowired
	ReadDataFromExcel readDataFromExcel;
	@Autowired
	EmployeeServiceImpl employeeService;
	@Autowired
	CourseDaoImpl courseDaoImpl;

	
	@RequestMapping("/createCourse")
	public ModelAndView viewCourse(HttpSession session)
	{
		System.out.println("gonna view course");
		ModelAndView model=null;
		model=new ModelAndView("createCourse");
		 model.addObject("command",course);
		return model;
	}
	
	
	@RequestMapping(value="/create",method = RequestMethod.POST)
	public ModelAndView createCourse(HttpSession session,@ModelAttribute Course course)
	{   
		session.setAttribute("courseDetails", course);
		System.out.println("gonna create"+course);
		//return new ModelAndView("AdminHome");
		                                                                        
		System.out.println("hai iam entered");
		List<Employee> employees=new ArrayList<Employee>();
		System.out.println(course.getBatch());
		employees=(List<Employee>) employeeService.addCourse(course);
		System.out.println(employees);
		System.out.println(employees);
		course=(Course) session.getAttribute("courseDetails");
		course.setEmployee(employees);
		courseService.create(course);
		return new ModelAndView("statusMessage").addObject("message","Course created successfully.");
//		return new ModelAndView("details","command",employees);
		/*courseService.create(course);
		System.out.println("completed");
		return new ModelAndView("details","command",new Course());*/
	}
	
	
	@RequestMapping("/display")
	public ModelAndView displayCourse()
	{
		System.out.println("gonna display");
		ModelAndView mv=new ModelAndView();
		List<Course>course=courseService.display();
		mv.setViewName("courselist");
		mv.addObject("courseLists", course);
		return mv;
	}
	
	@RequestMapping("/fetchCourse")
	public ModelAndView fetchCourse(HttpSession session,@ModelAttribute Course course)
	{
		System.out.println("gonna display");
		List<Course> courseList=courseService.display();
		session.setAttribute("courseList", courseList);
		ModelAndView mv=new ModelAndView("fetchCourse");
		mv.addObject("course",course);
		return mv;
	}
	
	@RequestMapping("/fetchCourseProcess")
	public ModelAndView fetchCourseProcess(HttpSession session,@ModelAttribute Course course)
	{
		ModelAndView model=new ModelAndView();
		System.out.println("CourseId"+course.getCourseId());
	 course=courseService.fetchCourseProcess(course);
	 System.out.println("course from fetchCourseProcess "+course);
	 model.setViewName("displayCourse");
	 session.setAttribute("displayCourse", course);
		return model;
	}
	
	@RequestMapping(value="/deleteCourse", method=RequestMethod.GET)
	public ModelAndView deleteCourse(HttpServletRequest request)
	{
		int courseId=Integer.parseInt(request.getParameter("id"));
		courseService.deleteCourse(courseId);
	  	return new ModelAndView("details","command",new Course());
	}
	
	
	@RequestMapping(value="/editCourse",method=RequestMethod.GET)
	public ModelAndView editCourse(HttpServletRequest request,Model model)
	{
		int courseId=Integer.parseInt(request.getParameter("id"));
		Course course=courseService.getCourse(courseId);
	    /*ModelAndView mv=new ModelAndView("editcourse");
		mv.addObject("course", course);
		return mv;*/
		model.addAttribute("course",course);
	    return new ModelAndView("editcourse","command",course);
	}
	
	
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	public ModelAndView updateCourse(@ModelAttribute Course course)
	{
		courseService.updateCourse(course);
	  	return new ModelAndView("details","command",new Course());
	}
	
	
	@RequestMapping(value="/userCourses",method=RequestMethod.GET)
	public ModelAndView showCourse(HttpSession session,@ModelAttribute CourseForm courseForm)
	{   
		
		System.out.println("From controller Course");
		String batch= (String) session.getAttribute("batch");
		String userName= (String) session.getAttribute("userName");
		System.out.println(batch);
		List<Course> courseList=courseService.getCourseByBatch(batch);
		CourseForm courseForm2=new CourseForm(); 
		courseForm2.setCourses(courseList);
	  	return new ModelAndView("userCourses","courseForm",courseForm2);
	}
	
	
	@RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
	public ModelAndView uploadFileHandler(HttpSession session,@RequestParam("name") String name,@RequestParam("file") File file) throws IOException
	{
		System.out.println("hai iam entered");
		List<Employee> employees=new ArrayList<Employee>();
		employees=(List<Employee>) readDataFromExcel.dataFromExcel(file);
		System.out.println(employees);
		course=(Course) session.getAttribute("courseDetails");
		course.setEmployee(employees);
		courseService.create(course);
		return new ModelAndView("AdminHome");
//		return new ModelAndView("details","command",employees);
	}
	
	
	
	
}