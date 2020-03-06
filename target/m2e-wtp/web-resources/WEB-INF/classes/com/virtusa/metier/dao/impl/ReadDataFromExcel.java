package com.virtusa.metier.dao.impl;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.LinkedHashSet;
import java.util.Set;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;

import com.virtusa.metier.model.Course;
import com.virtusa.metier.model.Employee;
 
public class ReadDataFromExcel{
	 @Autowired
	 Employee employee;
	@Autowired
	Course course;
	
	public Set<Employee> dataFromExcel(File file2) throws IOException
	{
		 String userName;
			System.out.println("again iam entered");
	 	 Set<Employee> employees=new LinkedHashSet<Employee>();
	 	 //File file=new File("file2");
		FileInputStream file3=new FileInputStream(file2);
		XSSFWorkbook workbook=new XSSFWorkbook(file3);
		
		XSSFSheet sheet=workbook.getSheetAt(0);
		System.out.println("again iam entered");
        Row row;
 for(int i=1;i<=sheet.getLastRowNum();i++)
 {
	 System.out.println("getting row");
	 row=(Row) sheet.getRow(i);
/*	 	
 if(row.getCell(0)==null)
 {
	 empId=null;
 }
 else
 {
	 empId=row.getCell(0).toString();
 }*/
 if(row.getCell(1)==null)
 {
	 userName=null;
 }
 else
 {
	 userName=row.getCell(1).toString();
 }
 /*if(row.getCell(2)==null)
 {
	 password=null;
 }
 else
 {
	 password=row.getCell(2).toString();
 }
 if(row.getCell(3)==null)
 {
	 firstName=null;
 }
 else
 {
	 firstName=row.getCell(3).toString();
 }
 if(row.getCell(4)==null)
 {
	 lastName=null;
 }
 else
 {
	 lastName=row.getCell(4).toString();
 }
 if(row.getCell(5)==null)
 {
	 email=null;
 }
 else
 {
	 email=row.getCell(5).toString();
 }
 if(row.getCell(6)==null)
 {
	 role=null;
 }
 else
 {
	 role=row.getCell(6).toString();
 }
 if(row.getCell(7)==null)
 {
	 gender=null;
 }
 else
 {
	 gender=row.getCell(7).toString();
 }
 if(row.getCell(8)==null)
 {
	 phoneNo=0;
 }
 else
 {
	 phoneNo=(long) row.getCell(8).getNumericCellValue();
 }
 if(row.getCell(9)==null)
 {
	 address=null;
 }
 else
 {
	 address=row.getCell(9).toString();
 }
 if(row.getCell(10)==null)
 {
	 technology=null;
 }
 else
 {
	 technology=row.getCell(10).toString();
 }
 if(row.getCell(11)==null)
 {
	 status=0;
 }
 else
 {
	 status=(int) row.getCell(11).getNumericCellValue();
 }
 if(row.getCell(12)==null)
 {
	 dateOfBirth=null;
 }
 else
 {
	 dateOfBirth=(Date) row.getCell(12).getDateCellValue();
 }*/
 System.out.println("iam setting value");
 employee.setUserName(userName);
/* employee.setPassword(password);
 employee.setEmpId(empId);
 employee.setFirstName(firstName);
 employee.setLastName(lastName);
 employee.setGender(gender);
 employee.setAddress(address);
 
 employee.setDateOfBirth(dateOfBirth);
 employee.setEmail(email);
 employee.setRole(role);
 employee.setStatus(status);
 employee.setTechnology(technology);
 employee.setPhoneNo(phoneNo);*/
// employee.setCourses((Set<Course>) course);
 employees.add(employee);
 }
return employees;
 }
	
	
	
	
}