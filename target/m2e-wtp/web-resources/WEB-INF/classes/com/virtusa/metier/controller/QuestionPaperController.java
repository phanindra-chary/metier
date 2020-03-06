package com.virtusa.metier.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.virtusa.metier.model.QuestionBank;
import com.virtusa.metier.model.QuestionBankList;
import com.virtusa.metier.service.QuestionService;
@Controller
public class QuestionPaperController {
	
	@Autowired
	QuestionService questionService;
	@Autowired
	QuestionBank questionBank;
	@Autowired
	QuestionBankList questionBankList;
	
	@RequestMapping(value = "/QuestionPaper1")
	public ModelAndView questionPaperIndex(HttpServletRequest request,HttpSession session,@ModelAttribute QuestionBankList questionBankList ) {
		System.out.println(questionBankList);
		ModelAndView model = null;
 	model = new ModelAndView("DuplicateQuestionTime");
//		model = new ModelAndView("DuplicateQuestionTime");
//		QuestionBankList questionBankList1 = questionService.getRandomQuestions(questionBankList);
		QuestionBankList questionBankList1 =(QuestionBankList) session.getAttribute("questionBankList");
		//Number of questions
		int size= questionBankList1.getQuestionBank().size();
		session.setAttribute("size",size);
		session.setAttribute("technologyName",questionBankList1.getQuestionBank().get(0).getTechnology());
		int durationsList=(Integer) session.getAttribute("sectionDurations");
		
		System.out.println(questionBankList1);
		
		for(QuestionBank questionBank: questionBankList1.getQuestionBank())
		{
			questionBank.setAnswer("Not Attempted");
			System.out.println(questionBank.getAnswer()+" "+questionBank.getQuestionNumber());
		}
		
		List<QuestionBank> questionBank2 = questionBankList1.getQuestionBank();
		
		System.out.println(questionBank2+"listttttttt");
		
		session.setAttribute("questionListObject", questionBankList1);
		session.setAttribute("questionList", questionBank2);
		session.setAttribute("index", 0);
		session.setAttribute("cmin",durationsList);
		session.setAttribute("over","false");
		String totalsecs= String.valueOf(durationsList*60);
		
		session.setAttribute("totalsecs",totalsecs);
		session.setAttribute("ctr1",0);
		
//		model.addObject("questionBankList", questionBankList2);
		//model.addAttribute("users", users);
	
			//List<Product> products = (List<Product>) productService.findAll();
			/*PagedListHolder pagedListHolder = new PagedListHolder(questionBankList2);
			
			int page = ServletRequestUtils.getIntParameter(request, "p", 0);
			System.out.println(page);
			pagedListHolder.setPage(page);
			pagedListHolder.setPageSize(1);
			model.addObject("pagedListHolder", pagedListHolder);*/
		   
		   QuestionBank qb=questionBank2.get(0);
		   
		   List<QuestionBank> questionBank3  = new ArrayList<QuestionBank>();
		   questionBank3.add(qb);
		   
		   QuestionBankList questionBankList3=new QuestionBankList();
		   questionBankList3.setQuestionBank(questionBank3);
		   System.out.println(questionBankList3);
		   model.addObject("questionBankList", questionBankList3);
	       return model;
		/*@RequestMapping()
		public String index(HttpServletRequest request,HttpSession session,@ModelAttribute QuestionBankList questionBankList,ModelMap modelMap) {
			 
			QuestionBankList questionBankList1 = questionService.getRandomQuestions(questionBankList);
			System.out.println(questionBankList1);
			session.setAttribute("questionList", questionBankList1);
			List<QuestionBank> questionBankList2=questionBankList1.getQuestionBank();
			PagedListHolder pagedListHolder = new PagedListHolder(questionBankList2);
			int page = ServletRequestUtils.getIntParameter(request, "p", 0);
			pagedListHolder.setPage(page);
			pagedListHolder.setPageSize(1);
			modelMap.put("pagedListHolder", pagedListHolder);
			return "QuestionPaper";*/
		}
	
	
	  @RequestMapping(value = "/fetchQuestionPrev")
	  public ModelAndView SendQuestionPrev(HttpServletRequest request,HttpSession session,@ModelAttribute QuestionBankList questionBankList)
	  {   
          
		  ModelAndView model=null;

		  String selectedAnswer=(String) request.getParameter("selectedAnswer");
		  int min = Integer.parseInt(request.getParameter("min"));
		  // Setting min's into session
		  session.setAttribute("min",min);
		  
		  System.out.println(selectedAnswer);
		  int index1 = (Integer) session.getAttribute("index");
		  List<QuestionBank> questionBankList2=(List<QuestionBank>) session.getAttribute("questionList");
		  QuestionBank questionBank1= questionBankList2.get(index1);
		  
		  session.setAttribute("technologyName",questionBank1.getTechnology());
		  
		  questionBank1.setAnswer(selectedAnswer);
		  //		  questionBankList2.add(questionBank1);
		  questionBankList2.set(index1, questionBank1);

		  session.setAttribute("questionList", questionBankList2); 
		  
		   System.out.println();
		   if(index1==0) {
			   
			   index1=questionBankList2.size()-1;
			   session.setAttribute("index",index1);
			   System.out.println(index1+"index");
			   QuestionBank qb=questionBankList2.get(index1);
			   System.out.println(qb);
			   model=new ModelAndView("DuplicateQuestionTime");
			   List<QuestionBank> questionBank3  = new ArrayList<QuestionBank>();
			   questionBank3.add(qb);
			   QuestionBankList questionBankList3=new QuestionBankList();
			   questionBankList3.setQuestionBank(questionBank3);
			   System.out.println(questionBankList3); 
			   model.addObject("questionBankList",questionBankList3);
		  
		   }
		   if(index1 > 0) 
		   {
			   
			   //int index= Integer.parseInt(request.getParameter("i"));
			   index1=index1-1;
			   session.setAttribute("index",index1);
			   System.out.println(index1+"index");
			   QuestionBank qb=questionBankList2.get(index1);
			   System.out.println(qb);
			   model=new ModelAndView("DuplicateQuestionTime");
               
			   List<QuestionBank> questionBank3  = new ArrayList<QuestionBank>();
			   questionBank3.add(qb);
			   QuestionBankList questionBankList3=new QuestionBankList();
			   questionBankList3.setQuestionBank(questionBank3);
			   System.out.println(questionBankList3); 
			   
			   model.addObject("questionBankList",questionBankList3);
		   }
		   return model;
	  }
	  
	  
	  @RequestMapping(value = "/fetchQuestionNext")
	  public ModelAndView SendQuestionNext(HttpServletRequest request,HttpSession session,@ModelAttribute QuestionBankList questionBankList)
	  {    
		  System.out.println("Iam in..");
		  // Getting parameters(selectedAnswer,min) from url 
		  String selectedAnswer=(String) request.getParameter("selectedAnswer");
		  /* int min = Integer.parseInt(request.getParameter("min"));
		  System.out.println(min+"Time");
		 
		  // Setting min's into session
		  session.setAttribute("min",min);
		  */
		  
		  //Getting timer values from cookies
		  //*********************************************
		   String minsFromCookie=null;	   String secsFromCookie=null; String ctr=null;
		  for (Cookie c : request.getCookies()) {
			if (c.getName().equals("min"))
                  minsFromCookie=c.getValue();
              }
		  for (Cookie c : request.getCookies()) {
				if (c.getName().equals("secs"))
	                  secsFromCookie=c.getValue();
	              }
		  for (Cookie c : request.getCookies()) {
				if (c.getName().equals("ctr"))
					ctr=c.getValue();
	              }
         
		  String totalsecs= String.valueOf(Integer.parseInt(minsFromCookie)*60+Integer.parseInt(secsFromCookie));
		  
		  session.setAttribute("cmin",minsFromCookie);
		  session.setAttribute("totalsecs",totalsecs);
		  session.setAttribute("ctr1",ctr);
		  
		  if(minsFromCookie.equals('0') && secsFromCookie .equals('0') && ctr.equals('0'))
          {
        	  session.setAttribute("over", "true");
          }
		  //**********************************************
		  
		  
		  System.out.println(selectedAnswer);
		  ModelAndView model=null;
		  int index1 = (Integer) session.getAttribute("index");
		  List<QuestionBank> questionBankList2=(List<QuestionBank>) session.getAttribute("questionList");
		    QuestionBank questionBank1= questionBankList2.get(index1);
		    session.setAttribute("technologyName",questionBank1.getTechnology());
		    questionBank1.setAnswer(selectedAnswer);
		    questionBankList2.set(index1, questionBank1);
		    session.setAttribute("questionList", questionBankList2);  
		    
		    
		  if(index1 == questionBankList2.size()-1) {
			  
			  model=new ModelAndView("reviewQuestions");
			  QuestionBankList questionBankList3 = new QuestionBankList();
			  questionBankList3.setQuestionBank(questionBankList2);
			  model.addObject("questionBankList",questionBankList3);
			
			  			  
			/*  index1=questionBankList2.size()-1;
			  session.setAttribute("index",index1);
			  System.out.println(index1+"index");
			  QuestionBank qb=questionBankList2.get(index1);
			  qb.setAnswer("ZcodeSharks");
			  model=new ModelAndView("DuplicateQuestionTime");
			  List<QuestionBank> questionBank3  = new ArrayList<>();
			  questionBank3.add(qb);
			  QuestionBankList questionBankList3=new QuestionBankList();
			  questionBankList3.setQuestionBank(questionBank3);
			  System.out.println(questionBankList3);
			  model.addObject("questionBankList",questionBankList3);*/
		 
		  }
		  else if(index1 < questionBankList2.size()-1) 
		  {
			  //int index= Integer.parseInt(request.getParameter("i"));
			  index1=index1+1;
			  session.setAttribute("index",index1);
			  System.out.println(index1+"index");
			  QuestionBank qb=questionBankList2.get(index1);
			  model=new ModelAndView("DuplicateQuestionTime");
			  List<QuestionBank> questionBank3  = new ArrayList<QuestionBank>();
			  questionBank3.add(qb);
			  QuestionBankList questionBankList3=new QuestionBankList();
			  questionBankList3.setQuestionBank(questionBank3);
			  System.out.println(questionBankList3);
		
			  model.addObject("questionBankList",questionBankList3);
		  }
		  return model;
	  }
	  
	  @RequestMapping(value = "/submitQuestionList")
	  public ModelAndView submitQuestionList(HttpServletRequest request,HttpSession session,@ModelAttribute QuestionBankList questionBankList)
	  {   
		  ModelAndView model=null;
		  String selectedAnswer=(String) request.getParameter("selectedAnswer");
		  System.out.println(selectedAnswer);
		  
		  
		  
		  //Getting timer values from cookies
		  //********************************
		  String minsFromCookie=null;	   String secsFromCookie=null;      String ctr=null;
		  for (Cookie c : request.getCookies()) {
			if (c.getName().equals("min"))
                  minsFromCookie=c.getValue();
              }
		  for (Cookie c : request.getCookies()) {
				if (c.getName().equals("secs"))
	                  secsFromCookie=c.getValue();
	          }
		  for (Cookie c : request.getCookies()) {
				if (c.getName().equals("ctr"))
					ctr=c.getValue();
	              }
		  String totalsecs= String.valueOf(Integer.parseInt(minsFromCookie)*60+Integer.parseInt(secsFromCookie));
		  session.setAttribute("cmin",minsFromCookie);
		  session.setAttribute("totalsecs",totalsecs);
		  session.setAttribute("ctr1",ctr);
		  
		  if(minsFromCookie.equals('0') && secsFromCookie .equals('0') && ctr.equals('0'))
          {
        	  session.setAttribute("over", "true");
          }
		  //******************************
		  
		  
		  //Verifing that the request was came from review page or not
		  if(selectedAnswer.equals("Submitted"))
		  {
			  List<QuestionBank> qbl=(List<QuestionBank>) session.getAttribute("questionList");
			  QuestionBankList questionBankObj2=new QuestionBankList();
			  questionBankObj2.setQuestionBank(qbl);
			  String userName = (String) session.getAttribute("userName");
			  String assessmentName = (String) session.getAttribute("assessmentName");
			  String courseName = (String) session.getAttribute("courseName");
			  questionService.evaluate(questionBankObj2,userName,assessmentName,courseName);
			  model= new ModelAndView("UserStatusMessage");
			  model.addObject("message","You have successfully submitted the "+assessmentName);
			  return model;
		  }
		  else 
		  {
			  int index1 = (Integer) session.getAttribute("index");
			  List<QuestionBank> questionBankList2;
			    questionBankList2=(List<QuestionBank>) session.getAttribute("questionList");
			  QuestionBank questionBank1= questionBankList2.get(index1);
			  questionBank1.setAnswer(selectedAnswer);
			  questionBankList2.set(index1, questionBank1);
			  session.setAttribute("questionList", questionBankList2); 
			  
			  questionBankList2=(List<QuestionBank>) session.getAttribute("questionList");

			  model=new ModelAndView("reviewQuestions");
			  QuestionBankList questionBankList3 = new QuestionBankList();
			  questionBankList3.setQuestionBank(questionBankList2);
			  model.addObject("questionBankList",questionBankList3);
			
			  return model;
	  }
	  }
	  
	  @RequestMapping(value = "/reattemptQuestion{index}")
	  public ModelAndView reattemptQuestion(@PathVariable("index") int index,HttpServletRequest request,HttpSession session,@ModelAttribute QuestionBankList questionBankList)
	  {    

		  ModelAndView model=null;
		  List<QuestionBank> questionBankList1=(List<QuestionBank>) session.getAttribute("questionList");
		  System.out.println("reattemptQuestion()"+index);
		  QuestionBank questionBank=questionBankList1.get(index);
		  model=new ModelAndView("ReattemptQuestion");
          session.setAttribute("index", index);
		  //Getting timer values from cookies
		  //********************************
          String minsFromCookie=null;	   String secsFromCookie=null;      String ctr=null;
		  for (Cookie c : request.getCookies()) {
			if (c.getName().equals("min"))
                  minsFromCookie=c.getValue();
              }
		  for (Cookie c : request.getCookies()) {
				if (c.getName().equals("secs"))
	                  secsFromCookie=c.getValue();
	          }
		  for (Cookie c : request.getCookies()) {
				if (c.getName().equals("ctr"))
					ctr=c.getValue();
	              }
		  String totalsecs= String.valueOf(Integer.parseInt(minsFromCookie)*60+Integer.parseInt(secsFromCookie));
		  session.setAttribute("cmin",minsFromCookie);
		  session.setAttribute("totalsecs",totalsecs);
		  session.setAttribute("ctr1",ctr);
		  
		  if(minsFromCookie.equals('0') && secsFromCookie .equals('0') && ctr.equals('0'))
          {
        	  session.setAttribute("over", "true");
          }
		  //******************************
          
		  List<QuestionBank> qb=new ArrayList<QuestionBank>();
		  qb.add(questionBank);
		  questionBankList.setQuestionBank(qb);
		  
		  model.addObject("questionBankList");
		  
		  return model;
	  }
	
	  
	  
	  
	  
}
