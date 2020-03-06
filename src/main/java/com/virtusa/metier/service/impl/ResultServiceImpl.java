package com.virtusa.metier.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.virtusa.metier.dao.ResultDAO;
import com.virtusa.metier.model.Result;
import com.virtusa.metier.model.ResultList;
import com.virtusa.metier.service.ResultService;
@Service
@Transactional
public class ResultServiceImpl implements ResultService{
	@Autowired
	private ResultDAO resultDAO;
	
	public Result getResult(Result result) {
		 
		return resultDAO.getResult(result);
	}

	
	public List<Result> getResults(Result result) {
		// TODO Auto-generated method stub
		return (List<Result>) resultDAO.getResults(result);
	}
}
