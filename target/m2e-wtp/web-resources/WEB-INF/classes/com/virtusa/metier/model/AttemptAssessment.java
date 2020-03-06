package com.virtusa.metier.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class AttemptAssessment {
	@Id
	@GeneratedValue
	private int id;
	private String courseName;
	private String assessmentName;
	private String batch;
	private int attemptStatus;

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
	@Override
	public String toString() {
		return "Attempt [courseName=" + courseName + ", assessmentName=" + assessmentName + ", batch=" + batch
				+ ", attemptStatus=" + attemptStatus + "]";
	}



}
