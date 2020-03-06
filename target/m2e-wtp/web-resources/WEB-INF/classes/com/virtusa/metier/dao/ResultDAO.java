package com.virtusa.metier.dao;

import java.util.List;

import com.virtusa.metier.model.Employee;
import com.virtusa.metier.model.Result;
import com.virtusa.metier.model.ResultList;

public interface ResultDAO {
	public Result getResult(Result result);
	public List<Result> getResults(Result result);
}
