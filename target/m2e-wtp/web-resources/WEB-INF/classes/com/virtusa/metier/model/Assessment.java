package com.virtusa.metier.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.TableGenerator;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;
import org.springframework.format.annotation.DateTimeFormat;


//@NamedQueries({@NamedQuery(name="viewAssessments", query="From Assessment where assessmentId =:id")})
@Entity
@Table(name="assessment_Details5")
@TableGenerator(initialValue=1,name="tab2",table="ASSESSID_GEN5",pkColumnName="GEN_KEY",valueColumnName="GEN_VALUE",pkColumnValue="lastId",allocationSize=1)
public class Assessment implements Serializable{

@Id
@GeneratedValue(strategy=GenerationType.TABLE, generator="tab2")
@Column
private int assessmentId;
private int courseId;
private String assessmentName;
private String complexity;
/*@Column
@DateTimeFormat
@Temporal(TemporalType.DATE)
private Date startDate;
@Column
@DateTimeFormat
@Temporal(TemporalType.DATE)
private Date endDate;*/
@Transient
private int noOfTechnologies;

@ElementCollection
@ManyToMany(mappedBy="assessment",cascade=CascadeType.ALL)
@LazyCollection(LazyCollectionOption.FALSE)
private List<Technology> technology;
/*
public Date getStartDate() {
	return startDate;
}

public void setStartDate(Date startDate) {
	this.startDate = startDate;
}

public Date getEndDate() {
	return endDate;
}

public void setEndDate(Date endDate) {
	this.endDate = endDate;
}
*/
public String getComplexity() {
	return complexity;
}

public void setComplexity(String complexity) {
	this.complexity = complexity;
}



/*@ManyToOne(cascade=CascadeType.ALL)
private Course course;
*/
public int getCourseId() {
	return courseId;
}

public void setCourseId(int courseId) {
	this.courseId = courseId;
}

 /*
public Course getCourse() {
	return course;
}

public void setCourse(Course course) {
	this.course = course;
}*/

public int getNoOfTechnologies() {
	return noOfTechnologies;
}

public void setNoOfTechnologies(int noOfTechnologies) {
	this.noOfTechnologies = noOfTechnologies;
}

public List<Technology> getTechnology() {
	return technology;
}

public void setTechnology(List<Technology> technology) {
	this.technology = technology;
}

public int getAssessmentId() {
	return assessmentId;
}

public void setAssessmentId(int assessmentId) {
	this.assessmentId = assessmentId;
}

public String getAssessmentName() {
	return assessmentName;
}

public void setAssessmentName(String assessmentName) {
	this.assessmentName = assessmentName;
}

@Override
public String toString() {
	return "Assessment [assessmentId=" + assessmentId + ", courseId=" + courseId + ", assessmentName=" + assessmentName
			+ ", noOfTechnologies=" + noOfTechnologies + ", technology=" + technology + /*", course=" + course +*/ "]";
}
 
}

