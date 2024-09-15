package com.project.emp.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Experience {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int srNo;
	private  String companyName;
	private  String role;
	private  String joiningDate;
	private  String lastDate;
	public int getSrNo() {
		return srNo;
	}
	public void setSrNo(int srNo) {
		this.srNo = srNo;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getJoiningDate() {
		return joiningDate;
	}
	public void setJoiningDate(String joiningDate) {
		this.joiningDate = joiningDate;
	}
	public String getLastDate() {
		return lastDate;
	}
	public void setLastDate(String lastDate) {
		this.lastDate = lastDate;
	}
	public Experience(int srNo, String companyName, String role, String joiningDate, String lastDate) {
		super();
		this.srNo = srNo;
		this.companyName = companyName;
		this.role = role;
		this.joiningDate = joiningDate;
		this.lastDate = lastDate;
	}
	public Experience() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Experience [srNo=" + srNo + ", companyName=" + companyName + ", role=" + role + ", joiningDate="
				+ joiningDate + ", lastDate=" + lastDate + "]";
	}
	
	
}
