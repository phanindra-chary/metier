package com.virtusa.metier.dao;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;
import java.util.Set;

import com.virtusa.metier.model.QuestionBank;
import com.virtusa.metier.model.QuestionBankList;


public interface QuestionDAO {
	public void insertQuestion(QuestionBank questionBank);

	public void create(Set<QuestionBank> employeeExcel1);
	public QuestionBank getQuestionBank(QuestionBank questionBank);


	public void updateQuestion(QuestionBank questionBank);

	public  void deleteQuestion(QuestionBank questionBank) ;

	public void deleteQuestionBank(QuestionBank questionBank);

	public List<QuestionBank> getQuestions();

	public Set<QuestionBank> dataFromExcel(File file2) throws FileNotFoundException,IOException;
	
	public void evaluate(QuestionBankList questionBankList,String userName, String assessmentName, String courseName);
 
	public List<QuestionBank> getRandomQuestions(String complexity,int noOfQuestions,String technologyName);
		
	public List evaluate1(String userName, String assessmentName, String courseName, String batch);
}
