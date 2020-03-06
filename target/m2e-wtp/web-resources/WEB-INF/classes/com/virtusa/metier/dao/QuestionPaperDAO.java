package com.virtusa.metier.dao;

public interface QuestionPaperDAO {
     

	boolean isAttempted(String assessmentName, String courseName, String userName);
	 
} 
