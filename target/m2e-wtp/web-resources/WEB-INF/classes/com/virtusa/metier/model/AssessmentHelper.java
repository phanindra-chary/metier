package com.virtusa.metier.model;
import java.util.List;
import org.springframework.stereotype.Component;


public class AssessmentHelper {

	private String assessmentName;
	//private int technolgyId;
    //private String courseName;
	private List<String> technologyList; 
	private List<Integer> sectionDuration;
	private List<Integer> noOfQuestionPerSection;
	
	
	public String getAssessmentName() {
		return assessmentName;
	}
	
	public void setAssessmentName(String assessmentName) {
		this.assessmentName = assessmentName;
	}
	
/*	public String getCourseName() {
		return courseName;
	}
	
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}*/

	public List<String> getTechnologyList() {
		return technologyList;
	}
	public void setTechnologyList(List<String> technologyList) {
		this.technologyList = technologyList;
	}
	 
	
	/* 
	public int getTechnolgyId() {
		return technolgyId;
	}
	public void setTechnolgyId(int technolgyId) {
		this.technolgyId = technolgyId;
	}*/
	 
	public List<Integer> getSectionDuration() {
		return sectionDuration;
	}
	public void setSectionDuration(List<Integer> sectionDuration) {
		this.sectionDuration = sectionDuration;
	}
	public List<Integer> getNoOfQuestionPerSection() {
		return noOfQuestionPerSection;
	}
	public void setNoOfQuestionPerSection(List<Integer> noOfQuestionPerSection) {
		this.noOfQuestionPerSection = noOfQuestionPerSection;
	}

	@Override
	public String toString() {
		return "AssessmentHelper [assessmentName=" + assessmentName + ", technologyList=" + technologyList
				+ ", sectionDuration=" + sectionDuration + ", noOfQuestionPerSection=" + noOfQuestionPerSection + "]";
	}
	
	
}
