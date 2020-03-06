package com.virtusa.metier.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.virtusa.metier.model.Employee;
import com.virtusa.metier.model.QuestionBankList;
import com.virtusa.metier.model.QuestionPaper;
import com.virtusa.metier.service.QuestionService;

@Controller
public class ExamController {
	@Autowired
	private QuestionService questionService;
	
	@RequestMapping(value = "submission", method = RequestMethod.GET)
	public ModelAndView viewHome(@ModelAttribute Employee employee) {
		return new ModelAndView("submission");
	}
	@RequestMapping(value = "evaluate{assessmentId}", method = RequestMethod.POST)
	public ModelAndView evaluate(@PathVariable("assessmentId") int assessmentId,HttpSession session,@ModelAttribute QuestionBankList questionBankList) {
	System.out.println(questionBankList+"in controller");
		//QuestionBankList questionBankList1=(QuestionBankList)session.getAttribute("questionList");
		String userName=(String) session.getAttribute("userName");
		String assessmentName= (String) session.getAttribute("assessmentName");
		String courseName= (String) session.getAttribute("courseName");
		//System.out.println(questionBankList1+"in controller1");
		questionService.evaluate(questionBankList,userName,assessmentName,courseName);
		//System.out.println(que);		
		return new ModelAndView("userAssessments");
	}
	
	@RequestMapping(value = "evaluate1{assessmentId}", method = RequestMethod.GET)
	public ModelAndView evaluate1(@PathVariable("assessmentId") int assessmentId,HttpSession session,@ModelAttribute QuestionPaper questionPaper) {
	//System.out.println(questionBankList+"in controller");
		//QuestionBankList questionBankList1=(QuestionBankList)session.getAttribute("questionListObject");
		System.out.println("evaluate1{assessmentId}..."+assessmentId);
		String userName=(String) session.getAttribute("userName");
		String assessmentName=(String) session.getAttribute("assessmentName");
		String courseName=(String) session.getAttribute("courseName");
		String batch=(String)session.getAttribute("batch");
		System.out.println(userName+"From evaluate1");
		//System.out.println(questionBankList1+"in controller1");
		List result=questionService.evaluate1(userName,assessmentName,courseName,batch);
		
		System.out.println(result.get(0)+"in controller");
		System.out.println(result.get(1));
		
		double percentage=(Double) result.get(0);
		int marks=(Integer)result.get(1);
		int totalQuestions=(Integer)result.get(2);
		
		ModelAndView model = new ModelAndView("result");
		model.addObject("assessmentName",assessmentName);
		model.addObject("courseName",courseName);
		model.addObject("percentage",percentage);
		model.addObject("marks",marks);
		model.addObject("totalQuestions",totalQuestions);
		return model;
	}
	
	

}
