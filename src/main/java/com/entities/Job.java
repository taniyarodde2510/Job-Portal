package com.entities;
import javax.persistence.*;

@Entity
@Table(name="job")

public class Job {
	
	@Id
	@Column(name="id")
	private int id;
	@Column(name="job")
	private String job;
	@Column(name="skill")
	private String skill;
	@Column(name="location")
	private String location;
	@Column(name="experience")
	private String experience;
	@Column(name="income")
	private String income;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	
	public String getSkill() {
		return skill;
	}
	public void setSkill(String skill) {
		this.skill = skill;
	}
	
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	
	public String getIncome() {
		return income;
	}
	public void setIncome(String income) {
		this.income = income;
	}
	
	

}
