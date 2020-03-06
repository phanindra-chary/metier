package com.virtusa.metier.model;

import java.util.List;

import org.springframework.stereotype.Component;
public class QuestionBankList {
	@Override
	public String toString() {
		return "QuestionBankList [questionBank=" + questionBank + "]";
	}

	private List<QuestionBank> questionBank;

	public List<QuestionBank> getQuestionBank() {
		return questionBank;
	}

	public void setQuestionBank(List<QuestionBank> questionBank) {
		this.questionBank = questionBank;
	}
	

}
