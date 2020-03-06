package com.virtusa.metier.dao;

import com.virtusa.metier.model.AttemptAssessment;

public interface AttemptAssessmentDao {
	public void saveAttemptAssessment(AttemptAssessment attemptAssessment);
	public int getStatus(String userName, String assessmentName, String courseName);
}
