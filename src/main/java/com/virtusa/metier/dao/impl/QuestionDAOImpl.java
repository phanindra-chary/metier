package com.virtusa.metier.dao.impl;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;

import com.virtusa.metier.dao.AttemptAssessmentDao;
import com.virtusa.metier.dao.QuestionDAO;
import com.virtusa.metier.model.Employee;
import com.virtusa.metier.model.QuestionBank;
import com.virtusa.metier.model.QuestionBankList;
import com.virtusa.metier.model.QuestionPaper;
import com.virtusa.metier.model.Result;
//@Repository
public class QuestionDAOImpl implements QuestionDAO{
	@Autowired
	private SessionFactory sessionFactory;
	@Autowired
	private QuestionBank questionBank;
	@Autowired
	private Employee employee;
	@Autowired
	private AttemptAssessmentDao attemptAssessmentDao;
	@Autowired
	private EmployeeDaoImpl employeeDaoImpl;
	@Autowired
	private Result result;
	
	


	public void create(Set<QuestionBank> questionBank1/*,String name*/)

	{

		//System.out.println(employeeExcel);

		Iterator<QuestionBank> itr=questionBank1.iterator();

	//System.out.println(mysessionFactory);


		Session session=sessionFactory.openSession();

		Transaction transaction=session.beginTransaction();

		System.out.println(questionBank1);
		
		//QuestionBank questionBank= new QuestionBank();
		while(itr.hasNext())

		{

			// employeeExcel=new EmployeeExcel();
				
			 questionBank=itr.next();

			//System.out.println("entered details" +employeeExcel);

			session.save(questionBank);

			//System.out.println("its created");

		}

		transaction.commit();

		session.close();

	}


	public void insertQuestion(QuestionBank questionBank) 
	{
		// TODO Auto-generated method stub
		try
		{
			/*sessionFactory = HibernateUtil.getSessionFactory();*/
			System.out.println("insert question started");
			Session session = sessionFactory.openSession();
			Transaction tx = session.beginTransaction();
			session.save(questionBank);
			tx.commit();
			session.close();
		}
		catch(Exception e)
		{
			System.out.println("in catch"+e.getMessage());
			e.printStackTrace();
		}
		
	}
	
	public QuestionBank getQuestionBank(QuestionBank questionBank) {
		Session session = sessionFactory.openSession();
		Criteria criteria = null;
		QuestionBank que=null;
		try {
			criteria = session.createCriteria(QuestionBank.class);
			Criterion criterion = Restrictions.eq("questionNumber",
					questionBank.getQuestionNumber());
			
			
			
			criteria.setMaxResults(1);
			que = (QuestionBank) criteria.uniqueResult();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			}
		}
		System.out.println(que);
		return que;
	}
	public List<QuestionBank> getQuestions() {
		// TODO Auto-generated method stub
	 Criteria criteria = null;
		Session session = sessionFactory.openSession();
		
			List<QuestionBank> questionBankList =new ArrayList<QuestionBank>();
		
		Transaction tx = session.beginTransaction();
		criteria = session.createCriteria(QuestionBank.class);
		
		criteria.setMaxResults(200);
		
		questionBankList =(List<QuestionBank>)criteria.list();
		/*for(QuestionBank question1:questionBankList) {
			System.out.println(question1);
		}*/
		tx.commit();
		session.close();
		return questionBankList; 
		}
		 
	/* where technology=:technology*//*.setParameter("technology", questionBank.getTechnology())*/
	
	
	public void updateQuestion(QuestionBank questionBank) {
		try
		{
			/*sessionFactory = HibernateUtil.getSessionFactory();*/
			System.out.println("update question started");
			Session session = sessionFactory.openSession();
			Transaction tx = session.beginTransaction();
			session.update(questionBank);
			tx.commit();
			session.close();
		}
		catch(Exception e)
		{
			System.out.println("in catch"+e.getMessage());
			e.printStackTrace();
		}
	}
	
	public void deleteQuestion(QuestionBank questionBank) {
		// TODO Auto-generated method stub
		try
		{
			Session session = sessionFactory.openSession();
			Transaction tx = session.beginTransaction();
			questionBank=(QuestionBank)session.load(QuestionBank.class,new Integer(questionBank.getQuestionNumber()));
			if(null != questionBank){
				session.delete(questionBank);
			}
			tx.commit();
			System.out.println("question deleted successfully, question details="+questionBank);
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("in catch block delete question method"+e.getMessage());
		}
	}
	
	public void deleteQuestionBank(QuestionBank questionBank) {
		// TODO Auto-generated method stub
		try
		{
			List<QuestionBank> questionBank2 =new ArrayList<QuestionBank>();
			Criteria criteria = null;
			Session session = sessionFactory.openSession();
			Transaction tx = session.beginTransaction();
			criteria = session.createCriteria(QuestionBank.class);
			Criterion criterion = Restrictions.eq("technology",questionBank.getTechnology());
			criteria.add(criterion);			
			criteria.setMaxResults(200);
			questionBank2 =(List<QuestionBank>)criteria.list();

			if(null != questionBank2)
				for(QuestionBank question:questionBank2) {
					session.delete(question);
				}
			tx.commit();
			session.close();
			System.out.println("");
			System.out.println("question deleted successfully, question details="+questionBank);
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("in catch block delete question method"+e.getMessage());
		}
	}
	
	public List evaluate1(String userName, String assessmentName, String courseName,String batch) {
		// TODO Auto-generated method stub
		int marks=0;
		double percentage=0.0;
		Result res=null;
		List result1=new ArrayList();
		System.out.println(userName);
		Session session = sessionFactory.openSession();
		
		Criteria criteria1 = null;
		criteria1 = session.createCriteria(QuestionPaper.class).setProjection(Projections.max("attemptStatus"));
		 int maxStatus= (Integer) criteria1.list().get(0);
		
		
		Criteria criteria = null;
		criteria = session.createCriteria(QuestionPaper.class);
		
		Criterion criterion1 = Restrictions.eq("userName",userName);
		criteria.add(criterion1);
		
		Criterion criterion2= Restrictions.eq("attemptStatus",maxStatus);
		criteria.add(criterion2);
		
		Criterion criterion3 = Restrictions.eq("assessmentName",assessmentName);
		criteria.add(criterion3);
		
		Criterion criterion4 = Restrictions.eq("courseName",courseName);
		criteria.add(criterion4);
	    
		
	    
		//int status = (Integer)criteria.uniqueResult();
		
		criteria.setMaxResults(200);
		List<QuestionPaper> questionPapers=criteria.list();
	    
		int totalQuestions = questionPapers.size();
		//System.out.println(totalQuestions);
		for(QuestionPaper question: questionPapers)
		{
			int questionNumber=question.getQuestionNumber();
			String answer=question.getSelectedOption();
			
			criteria = session.createCriteria(QuestionBank.class);
			Criterion criterion5 = Restrictions.eq("questionNumber",questionNumber);
			criteria.add(criterion5);
			criteria.setMaxResults(1);
			QuestionBank question1=(QuestionBank) criteria.uniqueResult();
			System.out.println(question1+" "+questionNumber);
			String answer2=question1.getAnswer();
			char answerchar1=answer.charAt(0);
			char answerchar2=answer2.charAt(0);
			
			//System.out.println(answer1+" hii");
			if(question1 != null && questionNumber != 0)
			{   
		     System.out.println(answerchar1+" hii");
			 System.out.println(answerchar2);
		
			if(answerchar2==(answerchar1))
				{
					marks++;
				     System.out.println(marks);
				}
			}
		}
		try
		{
			//System.out.println(marks);
			//System.out.println(totalQuestions);
			percentage =((double)marks/(double)totalQuestions)*100;
			//Math. 
			//System.out.println(percentage);
		} 
		catch (ArithmeticException e) 
		{
			e.printStackTrace();
		}
		
	//	Session session=sessionFactory.openSession();
		Criteria criteria2 = null;
		criteria2 = session.createCriteria(Result.class);
		
		Criterion criterion6 = Restrictions.eq("userName",userName);
		criteria2.add(criterion6);
		
		Criterion criterion7= Restrictions.eq("attemptStatus",maxStatus);
		criteria2.add(criterion7);
		
		Criterion criterion8 = Restrictions.eq("assessmentName",assessmentName);
		criteria2.add(criterion8);
		
		Criterion criterion9 = Restrictions.eq("courseName",courseName);
		criteria2.add(criterion9);
		
		Criterion criterion0 = Restrictions.eq("batch",batch);
		criteria2.add(criterion0);
		
		criteria2.setMaxResults(1);
		res = (Result) criteria2.uniqueResult();
		
		if(res==null)
		{
		Transaction transaction=session.beginTransaction();
		
		result.setAssessmentName(assessmentName);
		result.setCourseName(courseName);
		result.setUserName(userName);
		result.setAttemptStatus(maxStatus);
		result.setMarks(marks);
		result.setPercentage(percentage);
		result.setBatch(batch);
		
		session.save(result);
		transaction.commit();
		}
		
		
		result1.add(percentage);
		result1.add(marks);
		result1.add(totalQuestions);
		System.out.println(result);
		return result1;
	    }
	
	
	public void evaluate(QuestionBankList questionBankList,String userName,String assessmentName,String courseName) {
		// TODO Auto-generated method stub
     List<QuestionBank> questionList=questionBankList.getQuestionBank(); 

     Criteria criteria = null;
     System.out.println(questionBankList+"in impl");
     Session session = sessionFactory.openSession();

     employee.setUserName(userName);

     String batch=employeeDaoImpl.getEmployeeByUserName(employee).getBatch();
     //	List<QuestionBank> question2 =new ArrayList<QuestionBank>();
     int status=attemptAssessmentDao.getStatus(batch,assessmentName,courseName);

     //criteria = session.createCriteria(QuestionBankList.class);
     //System.out.println(questionBankList);
		for(QuestionBank question:questionList)
		{
			Transaction tx = session.beginTransaction();
	        QuestionPaper questionPaper=new QuestionPaper();
			
			if(question.getAnswer()!=null)
			{
				questionPaper.setQuestionNumber(question.getQuestionNumber());
				System.out.println(question.getAnswer());
				questionPaper.setAttemptStatus(status);
				questionPaper.setUserName(userName);
				questionPaper.setAssessmentName(assessmentName);
				questionPaper.setCourseName(courseName);
				questionPaper.setSelectedOption(question.getAnswer());
			}
			
			session.save(questionPaper);
			tx.commit();
	    }
		session.close();
	}
	
	public List<QuestionBank> getRandomQuestions(String complexity,int noOfQuestions,String technologyName) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Criteria criteria = session.createCriteria(QuestionBank.class);
		criteria.add(Restrictions.eq("complexity", complexity));
		criteria.add(Restrictions.eq("technology", technologyName));
		criteria.add(Restrictions.sqlRestriction("1=1 order by rand()"));
		criteria.setMaxResults(noOfQuestions);
		    List<QuestionBank> questionBanks=(List<QuestionBank>)criteria.list();
		    tx.commit();
			session.close();
		/*questionBankList.setQuestionBank(sessionFactory.getCurrentSession().createQuery("from QuestionBank order by rand()").setMaxResults(10).list());
		return (questionBankList);*/
		return 	questionBanks;
	}
	public Set<QuestionBank> dataFromExcel(File file2) throws IOException

	{

		int questionNumber;

		String questionDescription;

		String option1;

		String option2;

		String option3;

		String option4;

		String answer;

		String technology;

		String complexity;

		Set<QuestionBank> set= new LinkedHashSet<QuestionBank>();

		if (file2.length()==0) 

		{ System.out.println("File is empty ..."); } 

		else 

		{ 

			System.out.println("File is not empty ..."); 

			FileInputStream file=new FileInputStream(file2);

			XSSFWorkbook workbook=new XSSFWorkbook(file);

			XSSFSheet sheet=workbook.getSheetAt(0);

			System.out.println("again iam entered");

			Row row ;

			for(int i=0;i<=sheet.getLastRowNum();i++)

			{

				//EmployeeExcel employeeExcel=new EmployeeExcel();
				System.out.println("getting row");

				row=(Row) sheet.getRow(i);



				if(row.getCell(0)==null)

				{

					questionNumber=0;

				}

				else

				{

					questionNumber= (int) row.getCell(0).getNumericCellValue();

				}

				if(row.getCell(1)==null)

				{

					questionDescription=null;

				}

				else

				{

					questionDescription=row.getCell(1).toString();

				}

				if(row.getCell(2)==null)

				{

					option1=null;

				}

				else

				{

					option1=row.getCell(2).toString();

				}

				if(row.getCell(3)==null)

				{

					option2=null;

				}

				else

				{

					option2=row.getCell(3).toString();

				}

				if(row.getCell(4)==null)

				{

					option3=null;

				}

				else

				{

					option3=row.getCell(4).toString();

				}

				if(row.getCell(5)==null)

				{

					option4=null;

				}

				else

				{

					option4=row.getCell(5).toString();

				}

				if(row.getCell(6)==null)

				{

					answer=null;

				}

				else

				{

					answer=row.getCell(6).toString();

				}

				if(row.getCell(7)==null)

				{

					technology=null;

				}

				else

				{

					technology=row.getCell(7).toString();

				}

				if(row.getCell(8)==null)

				{

					complexity=null;

				}

				else

				{

					complexity=row.getCell(8).toString();

				}

				System.out.println("iam setting value");

				

       		QuestionBank questionBank2=new QuestionBank();

       		questionBank2.setQuestionNumber(questionNumber);

       		questionBank2.setQuestionDescription(questionDescription);

       		questionBank2.setOption1(option1);

       		questionBank2.setOption2(option2);

       		questionBank2.setOption3(option3);

       		questionBank2.setOption4(option4);

				//employeeExcel.setStatus(status);

       		questionBank2.setTechnology(technology);

       		questionBank2.setAnswer(answer);

       		questionBank2.setComplexity(complexity);

				// employee.setCourses((Set<Course>) course);

				

				set.add(questionBank2);

				

				System.out.println("printing set after adding excel"+set);

				if(i==0)

				{

					System.out.println("first employee details added");

				}else 

				{

					System.out.println("Another employee details added");

				}

			}

			

			return set;

		}

		return null;



	}
	
	}


