package com.virtusa.metier.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.TableGenerator;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;
import org.springframework.stereotype.Component;

    @Entity
	@Table(name ="technology_Details5")
    @TableGenerator(initialValue=1,name="tab2",table="TECHID_GEN5",pkColumnName="GEN_KEY",valueColumnName="GEN_VALUE",pkColumnValue="lastId",allocationSize=1)

	public class Technology {

		@Id
		@GeneratedValue(strategy=GenerationType.TABLE, generator="tab2")
		@Column
		private int technologyId;
	    private String technologyName;
	    private int sectionDuration;
	    private int noOfQuestions;
	    private String complexity;
	    
		public String getComplexity() {
			return complexity;
		}
		public void setComplexity(String complexity) {
			this.complexity = complexity;
		}
		@ManyToMany(cascade=CascadeType.ALL)
		@LazyCollection(LazyCollectionOption.FALSE)
		@JoinColumn(name = "assessmentId") 
	    private List<Assessment> assessment;
        
	    
		
		/*@ManyToOne(cascade = CascadeType.ALL)
		@JoinColumn(name = "courseId")
		private Course course;*/
		          
		public List<Assessment> getAssessment() {
			return assessment;
		}
		public void setAssessment(List<Assessment> assessment) {
			this.assessment = assessment;
		}
	    public String getTechnologyName() {
				return technologyName;
		}
		public void setTechnologyName(String technologyName) {
				this.technologyName = technologyName;
		} 	
		
	/*	public Course getCourse() {
			return course;
		}
		public void setCourse(Course course) {
			this.course = course;
		}*/
		 
		public int getSectionDuration() {
			return sectionDuration;
		}
		public void setSectionDuration(int sectionDuration) {
			this.sectionDuration = sectionDuration;
		}
		public int getNoOfQuestions() {
			return noOfQuestions;
		}
		public void setNoOfQuestions(int noOfQuestions) {
			this.noOfQuestions = noOfQuestions;
		}
		
		public int getTechnologyId() {
			return technologyId;
		}
		
		public void setTechnologyId(int technologyId) {
			this.technologyId = technologyId;
		}
		
		@Override
		public String toString() {
			return "Technology [technologyId=" + technologyId + ", technologyName=" + technologyName
					+ ", sectionDuration=" + sectionDuration + ", noOfQuestions=" + noOfQuestions + ", complexity="
					+ complexity + ", assessment=" + assessment + "]";
		}
	  			
	 }

	
	
	

