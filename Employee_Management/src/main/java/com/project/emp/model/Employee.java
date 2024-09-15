package com.project.emp.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Employee {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int ID;
	private String Name;
	private String email;
	private String Phone_No;
	private String Password;
	private String Conf_Password;
	public int getID() {
		return ID;
	}
	public void setID(int id) {
		ID = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone_No() {
		return Phone_No;
	}
	public void setPhone_No(String phone_No) {
		Phone_No = phone_No;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getConf_Password() {
		return Conf_Password;
	}
	public void setConf_Password(String conf_Password) {
		Conf_Password = conf_Password;
	}
	public Employee(int id, String name, String email, String phone_No, String password, String conf_Password) {
		super();
		ID = id;
		Name = name;
		this.email = email;
		Phone_No = phone_No;
		Password = password;
		Conf_Password = conf_Password;
	}
	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
