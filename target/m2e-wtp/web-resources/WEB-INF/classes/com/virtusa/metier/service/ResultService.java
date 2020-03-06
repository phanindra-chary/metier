package com.virtusa.metier.service;



import java.util.List;

import com.virtusa.metier.model.Result;
import com.virtusa.metier.model.ResultList;

public interface ResultService {
	//public void createEmployee(Result result);
	public Result getResult(Result result);

	public List<Result> getResults(Result result);
	
}