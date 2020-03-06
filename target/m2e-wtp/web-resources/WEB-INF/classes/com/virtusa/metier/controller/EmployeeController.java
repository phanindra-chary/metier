package com.virtusa.metier.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.virtusa.metier.dao.impl.CourseDaoImpl;
import com.virtusa.metier.model.Course;
import com.virtusa.metier.model.Employee;
import com.virtusa.metier.service.QuestionService;
import com.virtusa.metier.service.impl.EmployeeServiceImpl;

@Controller
public class EmployeeController {

	@Autowired
	private Employee employee;
	@Autowired
	private EmployeeServiceImpl employeeService;
	@Autowired
	private CourseDaoImpl courseDaoImpl;
	@Autowired
	private QuestionService questionService;

	@RequestMapping("/viewDetails")
	public ModelAndView viewDetails(@ModelAttribute("view") Employee employee) {
		List<Employee> list=employeeService.getDetails(employee);
		ModelAndView model=null;
		model=new ModelAndView("viewDetails","employeeList",list);
		System.out.println(employee);
		return model;
	}
	
	@RequestMapping(value="/deleteEmp", method=RequestMethod.GET)
	public ModelAndView deleteEmployee(HttpServletRequest request)
	{
		System.out.println("delete");
		int empId=Integer.parseInt(request.getParameter("id"));
		employeeService.deleteEmp(empId);
		System.out.println("deleted");
	  	return new ModelAndView("AdminHome","command",new Employee());
	}
	@RequestMapping(value="/updateStatus",method=RequestMethod.GET)
	public ModelAndView updateStatus(HttpServletRequest request) {
		int status=Integer.parseInt(request.getParameter("id"));
		employeeService.updateStatus(status);
		return new ModelAndView("AdminHome","command",new Employee());
	}
	
	
	
	@RequestMapping(value = "register", method = RequestMethod.GET)
	public ModelAndView viewRegister(HttpSession session,@ModelAttribute Employee employee) {
           
		Set<String> batches=employeeService.getBatches();
		List<String> batchList=new ArrayList<String>();
		batchList.addAll(batches);
		session.setAttribute("batchList", batchList);
		
		List<String> genders = new ArrayList<String>();
		//ModelAndView model = null;
		genders.add("Male");
		genders.add("Female");
		return new ModelAndView("register","gender",genders);
	}

	@RequestMapping(value = "registerProcess", method = RequestMethod.POST)
	public ModelAndView createUser(@ModelAttribute Employee employee) {
		employeeService.createEmployee(employee);
		return new ModelAndView("login");
	}

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public ModelAndView viewLogin(@ModelAttribute Employee employee) {
		
		return new ModelAndView("login");
	}

	@RequestMapping(value = "loginProcess", method = RequestMethod.POST)
	public ModelAndView processLogin(HttpSession session,@ModelAttribute Employee employee) {
     
		Employee employee1 = employeeService.getEmployee(employee);
		System.out.println(employee1);
		if(employee1 != null) {
		session.setAttribute("userName",employee1.getUserName());
		session.setAttribute("batch",employee1.getBatch());
		session.setAttribute("role",employee1.getRole());
		}
		ModelAndView model = null;
		if (employee1 == null) {
			model = new ModelAndView("login");
			model.addObject("result", "Invalid UserName or Password");
		} else {
			//calling function to add the property values into session
			settingvaluesIntoSession(session);
			
			String userName=employee1.getUserName();
			String password=employee1.getPassword();
			String role=employee1.getRole();
			System.out.println(role);
			int status=employee1.getStatus();
			String firstName=employee1.getFirstName();
			//session.setAttribute("firstName",firstName);
				//model = new ModelAndView("userCourses");
				//model.addObject("employee", emp.getFirstName());
			session.setAttribute("userName",userName);
			session.setAttribute("password",password);
			if(role.equals("admin")&&(status==1))
				model = new ModelAndView("AdminHome");
			else if((status==1)&&(!role.equals("admin")))
				model = new ModelAndView("userHome");
				
			model.addObject("emp", employee1.getUserName());

		}
		return model;
	}
	
	public void settingvaluesIntoSession(HttpSession session)
	{
		List<Course> courses=courseDaoImpl.display(); 
		List<Set<String>> questionBankProperties=questionService.getPropertiesFromQuestions();
		Set<String> technologies=questionBankProperties.get(0);
		Set<String> complexities=questionBankProperties.get(1);
		
		session.setAttribute("technologies",technologies);
		session.setAttribute("sizeOfTechnologies", technologies.size());
		session.setAttribute("complexities",complexities);
		session.setAttribute("courseList",courses);
		
	}
	
	
	@RequestMapping(value = "userResult", method = RequestMethod.GET)
	public ModelAndView userResult(@ModelAttribute Employee employee) {
		return new ModelAndView("userResult");
	}
	@RequestMapping(value = "AdminHome", method = RequestMethod.GET)
	public ModelAndView viewHome(@ModelAttribute Employee employee) {
		return new ModelAndView("AdminHome");
	}
	

    
	@RequestMapping(value = "UserViewProfile", method = RequestMethod.GET)
	public ModelAndView viewUserProfile(HttpSession session,@ModelAttribute Employee employee) {
		String userName=(String) session.getAttribute("userName");
		String password=(String) session.getAttribute("password");

		employee.setUserName(userName);
		employee.setPassword(password);
System.out.println(employee);
		Employee emp = employeeService.getEmployee(employee);
		ModelAndView model = null;
		System.out.println(emp);
		model = new ModelAndView("UserViewProfile");
		model.addObject("firstName", emp.getFirstName());
		model.addObject("lastName", emp.getLastName());
		model.addObject("email", emp.getEmail());
		model.addObject("role", emp.getRole());
		model.addObject("phoneNo", emp.getPhoneNo());
		model.addObject("gender", emp.getGender());
		model.addObject("address", emp.getAddress());
		model.addObject("technology", emp.getTechnology());
		model.addObject("status", emp.getStatus());
		model.addObject("batch", emp.getBatch());
		model.addObject("empId",emp.getEmpId());
		return model;
	}
	
	@RequestMapping(value = "userEditProfile", method = RequestMethod.POST)
	public ModelAndView editUserProfile(HttpSession session,@ModelAttribute Employee employee) {
		String userName=(String) session.getAttribute("userName");
		String password=(String) session.getAttribute("password");

		employee.setUserName(userName);
		employee.setPassword(password);

		Employee emp = employeeService.getEmployee(employee);
		ModelAndView model = null;
		System.out.println("Getting Employee"+emp);
		model = new ModelAndView("UpdateUserHome");
		model.addObject("firstName", emp.getFirstName());
		model.addObject("lastName", emp.getLastName());
		model.addObject("email", emp.getEmail());
		model.addObject("role", emp.getRole());
		model.addObject("phoneNo", emp.getPhoneNo());
		model.addObject("gender", emp.getGender());
		model.addObject("address", emp.getAddress());
		model.addObject("technology", emp.getTechnology());
		model.addObject("status", emp.getStatus());
		model.addObject("batch", emp.getBatch());
		model.addObject("empId",emp.getEmpId());
		
		return model;
	}
	
	
	
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public ModelAndView logout(HttpSession session,@ModelAttribute Employee employee) {

		ModelAndView model = new ModelAndView("logout");
		session.setAttribute("userName", null);
		session.invalidate();
		return model;
	}
	@RequestMapping(value = "userHome", method = RequestMethod.GET)
	public ModelAndView userHome() {
		ModelAndView mav=new ModelAndView("userHome");
		return mav;
	}
	
	@RequestMapping(value = "about", method = RequestMethod.GET)
	public ModelAndView about() {
		ModelAndView mav=new ModelAndView("about");
		return mav;
	}
	@RequestMapping(value = "contact", method = RequestMethod.GET)
	public ModelAndView contact() {
		ModelAndView mav=new ModelAndView("contact");
		return mav;
	}
	@RequestMapping(value = "index", method = RequestMethod.GET)
	public ModelAndView index() {
		ModelAndView mav=new ModelAndView("index");
		return mav;
	}
	
	
	@RequestMapping(value = "adminEditProfile", method = RequestMethod.POST)
	public ModelAndView editAdminProfile(HttpSession session,@ModelAttribute Employee employee) {
		String userName=(String) session.getAttribute("userName");
		String password=(String) session.getAttribute("password");

		employee.setUserName(userName);
		employee.setPassword(password);

		Employee emp = employeeService.getEmployee(employee);
		ModelAndView model = null;
		System.out.println("Getting Employee"+emp);
		model = new ModelAndView("UpdateAdminHome");
		model.addObject("firstName", emp.getFirstName());
		model.addObject("lastName", emp.getLastName());
		model.addObject("email", emp.getEmail());
		model.addObject("role", emp.getRole());
		model.addObject("phoneNo", emp.getPhoneNo());
		model.addObject("gender", emp.getGender());
		model.addObject("address", emp.getAddress());
		model.addObject("technology", emp.getTechnology());
		model.addObject("status", emp.getStatus());
		model.addObject("batch", emp.getBatch());
		model.addObject("empId",emp.getEmpId());
		
		return model;
	}
	
	@RequestMapping(value ="updateemployeeProcess1", method = RequestMethod.POST)
	public ModelAndView updateEmployeeProcess1(HttpSession session,@ModelAttribute Employee employee) {
		
		ModelAndView mav;
		String userName=(String) session.getAttribute("userName");
		String password=(String) session.getAttribute("password");

		employee.setUserName(userName);
		employee.setPassword(password);
        
		System.out.println("updateemployeeProcess1..."+employee);

		employeeService.updateEmployee(employee);
       String roleFromSession=(String) session.getAttribute("role");
       if(roleFromSession.equalsIgnoreCase("admin"))
		   mav=new ModelAndView("AdminHome");
       else 
    	   mav=new ModelAndView("userHome");  

		return mav;
	}  
	
	@RequestMapping(value = "adminViewProfile", method = RequestMethod.GET)
	public ModelAndView viewAdminProfile(HttpSession session,@ModelAttribute Employee employee) {
		String userName=(String) session.getAttribute("userName");
		String password=(String) session.getAttribute("password");

		employee.setUserName(userName);
		employee.setPassword(password);
System.out.println(employee);
		Employee emp = employeeService.getEmployee(employee);
		ModelAndView model = null;
		System.out.println(emp);
		model = new ModelAndView("AdminViewProfile");
		model.addObject("firstName", emp.getFirstName());
		model.addObject("lastName", emp.getLastName());
		model.addObject("email", emp.getEmail());
		model.addObject("role", emp.getRole());
		model.addObject("phoneNo", emp.getPhoneNo());
		model.addObject("gender", emp.getGender());
		model.addObject("address", emp.getAddress());
		model.addObject("technology", emp.getTechnology());
		model.addObject("status", emp.getStatus());
		model.addObject("batch", emp.getBatch());
		model.addObject("empId",emp.getEmpId());
		return model;
	}
}
