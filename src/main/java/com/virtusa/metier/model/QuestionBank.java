package com.virtusa.metier.model;
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="questionbank2")
public class QuestionBank implements Serializable
{
		@Id
		private int questionNumber;
		@Column(nullable=false)
		private String complexity; 
		@Column(nullable=false)
		private String technology;
		@Column(nullable=false)
		private String questionDescription;
		@Column(nullable=false)
		private String option1;
		@Column(nullable=false)
		private String option2;
		@Column(nullable=false)
		private String option3;
		@Column(nullable=false)
		private String option4;
		@Column(nullable=false)
		private String answer;
		
		public String getComplexity() {
			return complexity;
		}
		public void setComplexity(String complexity) {
			this.complexity = complexity;
		}
		public int getQuestionNumber() {
			return questionNumber;
		}
		public void setQuestionNumber(int questionNumber) {
			this.questionNumber = questionNumber;
		}
		public String getTechnology() {
			return technology;
		}
		public void setTechnology(String technology) {
			this.technology = technology;
		}
		public String getQuestionDescription() {
			return questionDescription;
		}
		public void setQuestionDescription(String questionDescription) {
			this.questionDescription = questionDescription;
		}
		public String getOption1() {
			return option1;
		}
		public void setOption1(String option1) {
			this.option1 = option1;
		}
		public String getOption2() {
			return option2;
		}
		public void setOption2(String option2) {
			this.option2 = option2;
		}
		public String getOption3() {
			return option3;
		}
		public void setOption3(String option3) {
			this.option3 = option3;
		}
		public String getOption4() {
			return option4;
		}
		public void setOption4(String option4) {
			this.option4 = option4;
		}
		public String getAnswer() {
			return answer;
		}
		public void setAnswer(String answer) {
			this.answer = answer;
		}
		@Override
		public String toString() {
			return "QuestionBank [questionNumber=" + questionNumber + " technology="
					+ technology + ", questionDescription=" + questionDescription + ", option1=" + option1
					+ ", option2=" + option2 + ", option3=" + option3 + ", option4=" + option4 + ", answer=" + answer
					+ "]";
		}
		
		
	
	
}



