package com.entities;
import javax.persistence.*;

@Entity
@Table(name="status")

public class Status {
	
	
	@Id
    @Column(name="id")
	private  int id;
	@Column(name="name")
	private String name;
	@Column(name="job")
	private String job;
	@Column(name="email")
	private String email;
	@Column(name="skill")
	private String skill;
	@Column(name="experience")
	private String experience;
	@Column(name="income")
	private String income;
	@Column(name="location")
	private String location;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSkill() {
		return skill;
	}
	public void setSkill(String skill) {
		this.skill = skill;
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
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	
	
	
	
	
	
}
