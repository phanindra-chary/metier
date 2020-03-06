package com.virtusa.metier.model;

import java.util.List;
import org.springframework.stereotype.Component;

public class TechnologyForm {

	private List<Technology> technologies;

	public List<Technology> getTechnologies() {
		return technologies;
	}

	public void setTechnologies(List<Technology> technologies) {
		this.technologies = technologies;
	}

 }
