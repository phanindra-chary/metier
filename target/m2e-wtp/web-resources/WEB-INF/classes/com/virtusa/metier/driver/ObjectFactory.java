package com.virtusa.metier.driver;

import org.springframework.beans.factory.annotation.Autowired;

import com.virtusa.metier.model.Assessment;
import com.virtusa.metier.model.Technology;

public class ObjectFactory {
    @Autowired
	Assessment assessment;
    @Autowired
   	Technology technology;
    
	public Assessment getAssessmentInstance()
	{
		return assessment;
	}
	
	public Technology getTechnologyInstance()
	{
		return technology;
	}
	
}
