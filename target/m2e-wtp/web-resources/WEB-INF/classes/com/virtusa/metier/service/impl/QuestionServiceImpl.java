package com.virtusa.metier.service.impl;

import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.virtusa.metier.dao.QuestionDAO;
import com.virtusa.metier.dao.impl.AssessmentDaoImpl;
import com.virtusa.metier.model.Assessment;
import com.virtusa.metier.model.QuestionBank;
import com.virtusa.metier.model.QuestionBankList;
import com.virtusa.metier.model.Technology;
import com.virtusa.metier.service.QuestionService;
@Transactional
public class QuestionServiceImpl implements QuestionService{
	@Autowired
	private QuestionDAO questionDAO;
	@Autowired
	private AssessmentDaoImpl assessmentDaoImpl;
	@Autowired
	private Assessment assessment;
	 
	
	public List<QuestionBank> getRandomQuestions(HttpSession session,int courseId,Assessment assessment) {
		System.out.println("courseId From QuestionService..."+courseId);
		System.out.println("assessment From QuestionService..."+assessment);
		
		List<Technology> technologies= assessment.getTechnology();
		List<QuestionBank> questionBank=new ArrayList<QuestionBank>();
		
		int secDurs=0;
		for(Technology technology:technologies)
		{    
			List<QuestionBank> questionBank1=new ArrayList<QuestionBank>();
			String complexity= technology.getComplexity();
			int noOfQuestions=technology.getNoOfQuestions();
			String technologyName=technology.getTechnologyName();
			secDurs += technology.getSectionDuration();
			
			questionBank1=(List<QuestionBank>) questionDAO.getRandomQuestions(complexity,noOfQuestions,technologyName);
			for(QuestionBank questionBank3:questionBank1)
			{
				questionBank.add(questionBank3);
			}
			
			System.out.println("From Question Service... with in random function "+questionBank);
		}
		
		//SETTING TOTAL TECHNOLGIES DURATION
		session.setAttribute("sectionDurations", secDurs);
		System.out.println(secDurs);
		return questionBank;
	}
	
	
	public void insertQuestion(QuestionBank questionBank) {
		// TODO Auto-generated method stub
		questionDAO.insertQuestion(questionBank);
	}
	
	public QuestionBank getQuestionBank(QuestionBank questionBank) {
		
		return questionDAO.getQuestionBank(questionBank);
	}
	
	public void updateQuestion(QuestionBank questionBank) {
		
		questionDAO.updateQuestion(questionBank);
	}
	
	public void deleteQuestion(QuestionBank questionBank) {
		
		questionDAO.deleteQuestion(questionBank);
	}
	
	public void deleteQuestionBank(QuestionBank questionBank) {

		questionDAO.deleteQuestionBank(questionBank);
	}
	
	public List<QuestionBank> getQuestions() {

		return questionDAO.getQuestions();
	}
	
	public List<Set<String>> getPropertiesFromQuestions() {

		List<QuestionBank> qbList=questionDAO.getQuestions();
		
		Set<String> technologyList=new LinkedHashSet();
		Set<String> complexityList=new LinkedHashSet();
		
		List<Set<String>> propertyList=new ArrayList();
		
		for(QuestionBank question:qbList)
		{
			technologyList.add(question.getTechnology());
			complexityList.add(question.getComplexity());
		}
		propertyList.add(technologyList);
		propertyList.add(complexityList);
		
		return propertyList;
	}
	
	 
	public void evaluate(QuestionBankList questionBankList,String userName,String assessmentName,String courseName) {
		
		 questionDAO.evaluate(questionBankList,userName,assessmentName,courseName);
	}
	
	
	public List evaluate1(String userName,String assessmentName,String courseName,String batch) {
		return questionDAO.evaluate1(userName,assessmentName,courseName,batch);
	}
	 

}
