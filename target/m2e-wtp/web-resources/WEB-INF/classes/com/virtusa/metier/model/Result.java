package com.virtusa.metier.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Result implements Serializable {

	private String courseName;
	private String assessmentName;
	@Id
	@GeneratedValue
	private int resultid;
	private String userName;
	private int marks;
	private String batch;
	private int attemptStatus;
	private double percentage;
	
	
	public double getPercentage() {
		return percentage;
	}
	public void setPercentage(double percentage) {
		this.percentage = percentage;
	}
	public String getBatch() {
		return batch;
	}
	public void setBatch(String batch) {
		this.batch = batch;
	}
	public int getAttemptStatus() {
		return attemptStatus;
	}
	public void setAttemptStatus(int attemptStatus) {
		this.attemptStatus = attemptStatus;
	}
	
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getAssessmentName() {
		return assessmentName;
	}
	public void setAssessmentName(String assessmentName) {
		this.assessmentName = assessmentName;
	}
	public int getResultid() {
		return resultid;
	}
	public void setResultid(int resultid) {
		this.resultid = resultid;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getMarks() {
		return marks;
	}
	public void setMarks(int marks) {
		this.marks = marks;
	}
	@Override
	public String toString() {
		return "Result [courseName=" + courseName + ", assessmentName=" + assessmentName + ", resultid=" + resultid
				+ ", userName=" + userName + ", marks=" + marks + ", batch=" + batch + ", attemptStatus="
				+ attemptStatus + ", percentage=" + percentage + "]";
	}
	
	
	
}
