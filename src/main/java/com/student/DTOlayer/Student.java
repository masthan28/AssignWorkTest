package com.student.DTOlayer;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;




@Entity
@Table(name="student")
public class Student {
  @Id
   @Column(name = "Id")
  @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int Student_id;
    private String Name;
    private String Email;
    private int Age; 
    private String DateOfBirth;
    
	public Student() {
		super();
	}

	public Student(int student_id, String name, String email, int age, String dateOfBirth) {
		super();
		Student_id = student_id;
		Name = name;
		Email = email;
		Age = age;
		DateOfBirth = dateOfBirth;
	}

	public int getStudent_id() {
		return Student_id;
	}

	public void setStudent_id(int student_id) {
		Student_id = student_id;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public int getAge() {
		return Age;
	}

	public void setAge(int age) {
		Age = age;
	}

	public String getDateOfBirth() {
		return DateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		DateOfBirth = dateOfBirth;
	}

	@Override
	public String toString() {
		return "[Student_id=" + Student_id + ", Name=" + Name + ", Email=" + Email + ", Age=" + Age
				+ ", DateOfBirth=" + DateOfBirth + "]";
	}
	

}