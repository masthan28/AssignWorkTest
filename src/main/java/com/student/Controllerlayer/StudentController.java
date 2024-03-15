package com.student.Controllerlayer;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.student.DTOlayer.Student;


@Controller
public class StudentController
{
	
	Student stu=new Student();
	

	 @RequestMapping(value = "/signup", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView addButtonClick() {
		 ModelAndView modelAndView=new ModelAndView();
		 modelAndView.setViewName("signupPage");
        return modelAndView;
    }
	
	
	@RequestMapping(value = "/save",method = RequestMethod.POST)
	@ResponseBody
public String saveData(HttpServletRequest req,Model m)	
{
   
	stu.setName(req.getParameter("Name"));
	stu.setEmail(req.getParameter("Email"));
	stu.setAge(Integer.parseInt(req.getParameter("Age")));
	stu.setDateOfBirth(req.getParameter("DateOfBirth"));
	EntityManagerFactory entityManagerFactory=Persistence.createEntityManagerFactory("prashi");
	EntityManager entityManager=entityManagerFactory.createEntityManager();
	EntityTransaction entityTransaction=entityManager.getTransaction();
	entityTransaction.begin();
	entityManager.persist(stu);
	entityTransaction.commit();
	
	
 return "dataSucces";
}
	@RequestMapping(value = "/retrive" ,method = RequestMethod.POST)
	public ModelAndView retrivedata( HttpServletRequest req) {
		ModelAndView m=new ModelAndView();
		EntityManagerFactory entityManagerFactory=Persistence.createEntityManagerFactory("prashi");
		EntityManager entityManager=entityManagerFactory.createEntityManager();
		EntityTransaction entityTransaction=entityManager.getTransaction();
		
		entityTransaction.begin();
		List<Student> students = entityManager.createQuery("SELECT s FROM Student s", Student.class).getResultList();
		entityTransaction.commit();
	
		System.out.println(students);
	
		m.addObject("name", "masthan");
		m.addObject("students",students);
		m.setViewName("retriveData");
		return m;	
	}	
}
