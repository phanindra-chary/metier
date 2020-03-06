package com.virtusa.metier.service;

import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import com.virtusa.metier.model.Assessment;
import com.virtusa.metier.model.QuestionBank;
import com.virtusa.metier.model.QuestionBankList;


public interface QuestionService {
	public void insertQuestion(QuestionBank questionBank);

	public QuestionBank getQuestionBank(QuestionBank questionBank);

	public void updateQuestion(QuestionBank questionBank);

	public void deleteQuestion(QuestionBank questionBank);

	public void deleteQuestionBank(QuestionBank questionBank);
	
	public List<QuestionBank> getQuestions();

	public void evaluate(QuestionBankList questionBankList,String userName, String assessmentName, String courseName);

	public List<QuestionBank> getRandomQuestions(HttpSession session,int courseId, Assessment assessment);
	
	public List evaluate1(String userName, String assessmentName, String courseName, String batch);
	
	public List<Set<String>> getPropertiesFromQuestions();
}
