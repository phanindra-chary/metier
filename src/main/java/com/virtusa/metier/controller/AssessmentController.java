package com.virtusa.metier.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.virtusa.metier.dao.AttemptAssessmentDao;
import com.virtusa.metier.dao.impl.AssessmentDaoImpl;
import com.virtusa.metier.dao.impl.CourseDaoImpl;
import com.virtusa.metier.dao.impl.TechnologyDaoImpl;
import com.virtusa.metier.model.Assessment;
import com.virtusa.metier.model.AssessmentForm;
import com.virtusa.metier.model.AssessmentHelper;
import com.virtusa.metier.model.AttemptAssessment;
import com.virtusa.metier.model.Course;
import com.virtusa.metier.model.Technology;
import com.virtusa.metier.model.TechnologyForm;
import com.virtusa.metier.service.QuestionService;

@Controller
public class AssessmentController{
  
	@Autowired
	private AssessmentHelper assessmentHelper;
	@Autowired
	private AssessmentDaoImpl assessmentDaoImpl;
	@Autowired
	private TechnologyDaoImpl technologyDaoImpl;
	@Autowired
	private Assessment assessment;
	@Autowired
	private Technology technology;
	@Autowired
	private TechnologyForm technologyForm;
	@Autowired
	private AssessmentForm assessmentForm;
	@Autowired
	private CourseDaoImpl courseDaoImpl;
	@Autowired
	private QuestionService questionService;
	@Autowired
	private AttemptAssessmentDao attemptAssessmentDao;
	@Autowired
	private AttemptAssessment attemptAssessment;
	
	
     @RequestMapping(value="/assessment",method = RequestMethod.GET)  
     public ModelAndView fetchAssessment(@ModelAttribute Assessment assessment,HttpSession session){  
		ModelAndView model=new ModelAndView("createAssessment");
		
		/*List<Course> courses=courseDaoImpl.display(); 
		
		List<Set<String>> questionBankProperties=questionService.getPropertiesFromQuestions();
		Set<String> technologies=questionBankProperties.get(0);
		Set<String> complexities=questionBankProperties.get(1);
		
		session.setAttribute("technologies",technologies);
		session.setAttribute("sizeOfTechnologies", technologies.size());
		session.setAttribute("complexities",complexities);
		session.setAttribute("courseList",courses);*/
		model.addObject("assessment",assessment);
		return model;//will redirect to viewemp request mapping  
     }  
     
     @RequestMapping(value="/assessmentProcess",method = RequestMethod.POST)  
     public ModelAndView insertAssessmentProcess(HttpSession session,@ModelAttribute Assessment assessment){  
		
    	 int count=assessment.getNoOfTechnologies();
    	 System.out.println(count);
    	 
    	 session.setAttribute("assessmentsession",assessment);
    	 System.out.println("insertAssessmentProcess.."+assessment);
		 List<Technology> list=new ArrayList<Technology>(); 
		  for(int i=0;i<count;i++)
		  {  
			 list.add(technology);
		  }
		/*  System.out.println("startDate:"+assessment.getStartDate()); 
		  System.out.println("endDate:"+assessment.getEndDate()); */
           technologyForm=new TechnologyForm();
           technologyForm.setTechnologies(list);
		return new ModelAndView("addTechnology" , "technologyForm", technologyForm);
    	 
    } 
     
     @RequestMapping(value="/technologyProcess",method = RequestMethod.POST)  
     public ModelAndView insertTechnologyProcess(HttpSession session,@ModelAttribute TechnologyForm technologyForm){  
    	 List<Technology> technologies = technologyForm.getTechnologies();
    	 List<Assessment> assessments=new ArrayList<Assessment>();


    	 Assessment assessment1=(Assessment)session.getAttribute("assessmentsession");
    	 System.out.println();
    	 assessments.add(assessment1);
    	 for(Technology technology: technologies)
    	 {
    		 //technology.setAssessment(assessments);
    		 // System.out.println(technology);
    		 technologyDaoImpl.insertTechnology(technology);
    	 }
    	 if(technologies.size()!=0) {
    		 assessment1.setTechnology(technologies);
    		 System.out.println(assessment1);    	 
    		 assessmentDaoImpl.insertAssessment(assessment1);
    	 }
    	 return new ModelAndView("statusMessage").addObject("message","Assessment created successfully.");
     } 

    @RequestMapping(value="/attemptAssessment",method = RequestMethod.GET)  
    public ModelAndView attemptAssessment(@ModelAttribute AttemptAssessment attemptAssessment){  
		ModelAndView mav=new ModelAndView("AttemptAssessment");
//		mav.addObject("attemptAssessment",attemptAssessment);
		return mav;//will redirect to viewemp request mapping  
    }  
    
	@RequestMapping(value="/attemptAssessmentProcess",method = RequestMethod.POST)  
    public ModelAndView attemptAssessmentProcess(@ModelAttribute AttemptAssessment attemptAssessment){  
		attemptAssessmentDao.saveAttemptAssessment(attemptAssessment);
		ModelAndView mav=new ModelAndView("statusMessage").addObject("message","Assessment activated successfully.");
		//mav.addObject("assessment",assessment);
		return mav;//will redirect to viewemp request mapping  
    } 
     
 /*  @InitBinder
     public void initBinder(WebDataBinder binder) {
         SimpleDateFormat sdf = new SimpleDateFormat("dd/mm/yyyy");
         sdf.setLenient(true);
         binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
     }*/
     
        
     @RequestMapping(value="/viewAssessments",method = RequestMethod.GET)  
     public ModelAndView fetchAssessment(HttpSession session,@ModelAttribute Assessment assessment){
	    
    	ModelAndView mav=new ModelAndView("ViewAssessmentByCourseId");
    	mav.addObject("assessment",assessment);
    	return mav;  
    	 }
     
     @RequestMapping(value="/viewAssessmentsProcess",method = RequestMethod.POST)  
     public ModelAndView fetchAssessmentProcess(HttpSession session,@ModelAttribute Assessment assessment){
	    
    	List<Assessment> assessments= assessmentDaoImpl.viewAssessment(assessment.getCourseId());
    	ModelAndView mav=new ModelAndView("FetchAssessment");
    	 assessmentForm.setAssessments(assessments);
    	mav.addObject("assessmentForm",assessmentForm);
    	  for(Assessment as:assessments) {System.out.println(as+"fetchAssessmentProcess()..");}
    	return mav;  
    	 }
     
     @RequestMapping(value="/deleteAssessment",method = RequestMethod.GET)  
     public ModelAndView deleteAssessment(HttpSession session,@ModelAttribute Assessment assessment){
	    
    	ModelAndView mav=new ModelAndView("deleteAssessment");
    	mav.addObject("assessment",assessment);
    	return mav;  
    	
     }
     
     @RequestMapping(value="/deleteAssessmentProcess",method = RequestMethod.POST)  
     public ModelAndView deleteAssessmentProcess(HttpSession session,@ModelAttribute Assessment assessment){
    	ModelAndView mav=new ModelAndView("AdminHome");
    	assessmentDaoImpl.deleteAssessment(assessment);
    	return mav;  
    	 }
     
   /*  
     @RequestMapping(value="/updateAssessment",method = RequestMethod.GET)  
     public ModelAndView updateAssessment(HttpSession session,@ModelAttribute Assessment assessment){
	    
    	ModelAndView mav=new ModelAndView("updateAssessment");
    	mav.addObject("assessment",assessments);
    	return mav;  
     }*/
     
    /* @RequestMapping(value="/updateAssessment",method = RequestMethod.GET)  
     public ModelAndView updateAssessment(HttpSession session,HttpServletRequest request){
    	   
    	      int courseId=Integer.parseInt(request.getParameter("cId"));
	          int assessmentId=Integer.parseInt(request.getParameter("aId"));
	          
	          System.out.println(assessmentId+"controller...");
	          List<Assessment> assessment2=assessmentDaoImpl.viewAssessmentById(courseId,assessmentId);	
	          System.out.println("assessment2.. "+assessment2);
	          
	          session.setAttribute("fetchedAssessment",assessment2.get(0));
     
	          ModelAndView mav=new ModelAndView("updateAssessment");   
              assessmentForm.setAssessments(assessment2);
        	 	mav.addObject(assessmentForm);        	
    	      return mav;  
        }
     
     @RequestMapping(value="/updateAssessmentProcess",method = RequestMethod.POST)  
     public ModelAndView updateAssessmentProcess(HttpSession session,HttpServletRequest request,@ModelAttribute AssessmentForm assessmentForm){
    	 List<Assessment> assessmentModified = assessmentForm.getAssessments();
    	 System.out.println("updateAssessmentProcess() "+assessmentModified);
    	 
    	      Assessment assessmentOld= (Assessment) session.getAttribute("fetchedAssessment");
    	      assessmentDaoImpl.deleteAssessment(assessmentOld);
    	      assessmentDaoImpl.insertAssessment(assessmentModified.get(0));  
    	 
    	      assessmentDaoImpl.updateAssessment(assessmentModified.get(0));
              ModelAndView mav=new ModelAndView("ViewAssessmentByCourseId");   
              mav.addObject("assessment",assessmentModified.get(0));        	
    	      return mav;
    	      
        }*/
     
}
