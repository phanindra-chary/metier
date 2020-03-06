package com.virtusa.metier.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.virtusa.metier.dao.impl.AssessmentDaoImpl;
import com.virtusa.metier.dao.impl.CourseDaoImpl;
import com.virtusa.metier.dao.impl.QuestionDAOImpl;
import com.virtusa.metier.dao.impl.QuestionPaperDAOImpl;
import com.virtusa.metier.model.Assessment;
import com.virtusa.metier.model.AssessmentForm;
import com.virtusa.metier.model.Course;
import com.virtusa.metier.model.QuestionBank;
import com.virtusa.metier.model.QuestionBankList;
import com.virtusa.metier.service.QuestionService;
@Controller
public class QuestionController {
	
	@Autowired
	private QuestionService questionService;
	@Autowired
	private QuestionDAOImpl questionDao;
	@Autowired
	private CourseDaoImpl courseDaoImpl;
	@Autowired
	private Course course;
	@Autowired
	private AssessmentDaoImpl assessmentDaoImpl;
	@Autowired
	private AssessmentForm assessmentForm;
	@Autowired
	private QuestionPaperDAOImpl questionPaperDao;
	
	@RequestMapping(value ="uploadToDatabase",method=RequestMethod.GET)
	public ModelAndView uploadFileHandler(@ModelAttribute QuestionBank employeeExcel)
	{
		System.out.println("inside first method"+employeeExcel);
		return new ModelAndView("exceldatabase");
	}

	@RequestMapping(value = "uploadFileQuestion", method = RequestMethod.POST)
	public ModelAndView uploadFileHandlerProcess(@RequestParam("name")String name,@RequestParam("file")File file) throws IOException
	{
		System.out.println("hai iam entered");
		Set<QuestionBank> questionBank1=new HashSet<QuestionBank>();
		System.out.println("printing file for checking"+file);
		questionBank1=questionDao.dataFromExcel(file);
		System.out.println("In second method after reading"+questionBank1);
		questionDao.create(questionBank1);
		return new ModelAndView("statusMessage").addObject("message","QuestionBank inserted successfully.");
	}
	
	@RequestMapping(value ="insertQuestion", method=RequestMethod.GET)
	public ModelAndView insertQuestion(@ModelAttribute QuestionBank question)
	{
		 List<String> complexityType = new ArrayList<String>();
			//ModelAndView model = null;
			complexityType.add("Simple");
			complexityType.add("Medium");
			complexityType.add("Hard");
			return new ModelAndView("insertQuestion","complexity",complexityType); 
	}

	@RequestMapping(value = "QuestionPaper", method = RequestMethod.POST)
	public String QuestionPaper(HttpSession session,@ModelAttribute QuestionBankList questionBankList) {
		System.out.println(questionBankList+"From QuestionController...before session");
		ModelAndView model = null;
//		model = new ModelAndView("QuestionPaper");
		int courseId=(Integer) session.getAttribute("courseId");
		String assessmentName=(String) session.getAttribute("assessmentName");
		Assessment assessment =(Assessment) session.getAttribute("assessment");
		
		session.setAttribute("questionBankList",null);
		List<QuestionBank> questionList = (List<QuestionBank>) questionService.getRandomQuestions(session, courseId,assessment);
		System.out.println(questionList+"After Listing in QuestionController");
		questionBankList.setQuestionBank(questionList);
		session.setAttribute("questionBankList", questionBankList);
//		model.addObject("questionBankList", questionList);
		//model.addAttribute("users", users);
	    return "redirect:QuestionPaper1";
	}
	
	@RequestMapping(value = "/terms{assessmentId}", method = RequestMethod.GET)
	public ModelAndView terms(@PathVariable("assessmentId") int assessmentId,HttpSession session) {
		
		Assessment assessment = assessmentDaoImpl.viewAssessmentByAssessmentId(assessmentId);
		String courseName=(String) session.getAttribute("courseName");
		
		session.setAttribute("assessment", assessment);
		session.setAttribute("assessmentName", assessment.getAssessmentName());
		System.out.println("From controller terms"+assessmentId);
		session.setAttribute("assessmentId", assessmentId);
		String userName=(String) session.getAttribute("userName");
		boolean status = questionPaperDao.isAttempted(assessment.getAssessmentName(),courseName,userName);
		if(status == true)
		{
			return new ModelAndView("terms");
		}
		else {
		return new ModelAndView("attempted");
		}
	}
	
	 
	
	@RequestMapping(value = "/userAssessments{courseId}", method = RequestMethod.GET)
	public ModelAndView userAssessments(@PathVariable("courseId") int courseId,@ModelAttribute AssessmentForm assessmentForm,HttpSession session) {
		
		List<Assessment> assessments= assessmentDaoImpl.viewAssessment(courseId);
		
		Course course=courseDaoImpl.getCourse(courseId);
		System.out.println("From userAssessments().."+course);
		session.setAttribute("course", course);
		session.setAttribute("courseName", course.getCourseName());
		session.setAttribute("courseId", course.getCourseId());
		assessmentForm.setAssessments(assessments);
		
		return new ModelAndView("userAssessments","assessmentForm",assessmentForm);
	}
	
	//********************************************
	
	@RequestMapping(value = "updateQuestionProcess", method = RequestMethod.GET)
	public ModelAndView updateQuestion(@ModelAttribute QuestionBank questionBank) {
		return new ModelAndView("UpdateQuestion");
	}
	
	@RequestMapping(value = "updateQuestion", method = RequestMethod.POST)
	public ModelAndView updateQuestion1(@ModelAttribute QuestionBank questionBank) {
		System.out.println(questionBank);
		QuestionBank que = questionService.getQuestionBank(questionBank);
		System.out.println(que);
		ModelAndView model = null;
		model = new ModelAndView("UpdateQuestion1");
		model.addObject("questionNumber", que.getQuestionNumber());
	      model.addObject("technology", que.getTechnology());
	      model.addObject("questionDescription", que.getQuestionDescription());
	      model.addObject("option1", que.getOption1());
	      model.addObject("option2", que.getOption2());
	      model.addObject("option3", que.getOption3());
	      model.addObject("option4", que.getOption4());
	      model.addObject("answer", que.getAnswer());
	      model.addObject("complexity", que.getComplexity());
	      return model;
	}
	
	@RequestMapping(value ="updateQuestionProcess1", method = RequestMethod.POST)
	public ModelAndView updateQuestionProcess1(@ModelAttribute QuestionBank questionBank) {
		
		ModelAndView mav;
		System.out.println(questionBank);
		questionService.updateQuestion(questionBank);
		mav=new ModelAndView("statusMessage").addObject("message","Question updated successfully.");
		return mav;
	}  
	
	//********************************************
	
	@RequestMapping(value ="insertQuestionProcess", method = RequestMethod.POST)
	public ModelAndView insertQuestionProcess(@ModelAttribute QuestionBank questionBank) {
		
		ModelAndView mav;
        
		System.out.println(questionBank);
        
		questionService.insertQuestion(questionBank);

		mav=new ModelAndView("statusMessage").addObject("message","Question inserted successfully.");

		return mav;
	}  
	
	
	@RequestMapping(value ="deleteQuestion", method=RequestMethod.GET)
	public ModelAndView deleteQuestion(@ModelAttribute QuestionBank questionBank)
	{
		ModelAndView mav=new ModelAndView("DeleteQuestion");
		 mav.addObject("deletequestion",new QuestionBank());
		 return mav;
	}
	
	
	@RequestMapping(value ="deleteQuestionProcess", method = RequestMethod.POST)
	public ModelAndView deleteQuestionProcess(@ModelAttribute QuestionBank questionBank) {
		
		ModelAndView mav;
		System.out.println(questionBank);
		questionService.deleteQuestion(questionBank);
		mav=new ModelAndView("statusMessage").addObject("message","Question deleted successfully.");
		return mav;
	}
	@RequestMapping(value ="deleteQuestionBank",method=RequestMethod.GET)
	public ModelAndView deleteQuestionBank(@ModelAttribute QuestionBank questionBank)
	{
		System.out.println(questionBank);
		return new ModelAndView("deleteQuestionBank");
	}
	
	@RequestMapping(value ="viewQuestionBank",method=RequestMethod.GET)
	public ModelAndView viewQuestionBank(@ModelAttribute QuestionBank questionBank)
	{   
		System.out.println(questionBank);
		return new ModelAndView("viewQuestion");
	}
	
	@RequestMapping(value = "viewQuestionProcess", method = RequestMethod.POST)
	public ModelAndView viewQuestions1(@ModelAttribute QuestionBank questionBank) {
		System.out.println(questionBank);
		/*List<Result> res = 
		System.out.println(res);*/
		ModelAndView model = null;
		model = new ModelAndView("ViewQuestion1");
		model.addObject("questionList", questionService.getQuestions());
		//model.addAttribute("users", users);
	      return model;
	}
	
	@RequestMapping(value ="deleteQuestionBankProcess", method =RequestMethod.POST)
	public ModelAndView deleteQuestionBankProcess(HttpSession session,@ModelAttribute QuestionBank questionBank) {
		
		ModelAndView mav;

		System.out.println(questionBank);
		Set<String> technologies=(Set<String>) session.getAttribute("technologies");
		Set<String> technologies1=new LinkedHashSet();
		for(String technologyName: technologies)
		{
			if(!technologyName.equals(questionBank.getTechnology())) {
			technologies1.add(technologyName);
			}
		}
		session.setAttribute("technologies",technologies1);
		
		questionService.deleteQuestionBank(questionBank);

		mav=new ModelAndView("statusMessage").addObject("message","questionBank deleted successfully.");

		return mav;
	}
	
}
