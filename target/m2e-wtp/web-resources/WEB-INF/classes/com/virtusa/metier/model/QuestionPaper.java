package com.virtusa.metier.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class QuestionPaper {
	
	private int questionNumber;
	private String selectedOption;
	private String userName;
	private String assessmentName;
	private String courseName;
	private int attemptStatus;
	
	public int getAttemptStatus() {
		return attemptStatus;
	}
	public void setAttemptStatus(int attemptStatus) {
		this.attemptStatus = attemptStatus;
	}
	public String getAssessmentName() {
		return assessmentName;
	}
	public void setAssessmentName(String assessmentName) {
		this.assessmentName = assessmentName;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int questionpaperId;
	
	
	public int getQuestionpaperId() {
		return questionpaperId;
	}
	public void setQuestionpaperId(int questionpaperId) {
		this.questionpaperId = questionpaperId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getQuestionNumber() {
		return questionNumber;
	}
	public void setQuestionNumber(int questionNumber) {
		this.questionNumber = questionNumber;
	}
	public String getSelectedOption() {
		return selectedOption;
	}
	public void setSelectedOption(String selectedOption) {
		this.selectedOption = selectedOption;
	}
	@Override
	public String toString() {
		return "QuestionPaper [questionNumber=" + questionNumber + ", selectedOption=" + selectedOption + ", userName="
				+ userName + ", assessmentName=" + assessmentName + ", courseName=" + courseName + ", attemptStatus="
				+ attemptStatus + ", questionpaperId=" + questionpaperId + "]";
	}
	
	
	

}
