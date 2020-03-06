package com.virtusa.metier.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.virtusa.metier.model.Result;
import com.virtusa.metier.service.ResultService;

@Controller
public class ResultController {
	
	@Autowired
	private ResultService resultService;
	
	@RequestMapping(value = "FetchResult", method = RequestMethod.GET)
	public ModelAndView fetchResult(@ModelAttribute Result result) {
		return new ModelAndView("FetchResult");
	}
	@RequestMapping(value = "resultProcess", method = RequestMethod.POST)
	public ModelAndView fetchResult1(@ModelAttribute Result result) {
		Result res = resultService.getResult(result);
		ModelAndView model = null;
		model = new ModelAndView("FetchResult1");
		model.addObject("courseId", res.getCourseName());
	      model.addObject("assessmentId", res.getAssessmentName());
	      model.addObject("resultId", res.getResultid());
	      model.addObject("userName", res.getUserName());
	      model.addObject("marks", res.getMarks());
	      
	      return model;
	}
	@RequestMapping(value = "ViewResult", method = RequestMethod.GET)
	public ModelAndView viewResult(@ModelAttribute Result result) {
		return new ModelAndView("ViewResult");
	}
	
	@RequestMapping(value = "viewResultProcess", method = RequestMethod.POST)
	public ModelAndView viewResult1(@ModelAttribute Result result) {
		System.out.println(result);
		/*List<Result> res = 
		System.out.println(res);*/
		ModelAndView model = null;
		model = new ModelAndView("ViewResult1");
		model.addObject("resultList", resultService.getResults(result));
		//model.addAttribute("users", users);
	      return model;
	}
	
	

}
