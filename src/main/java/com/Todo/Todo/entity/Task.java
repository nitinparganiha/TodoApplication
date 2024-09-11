package com.Todo.Todo.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Task {
	@Id
	private int id;
	private String date;
	private String task;
	private int taskno;
	private String finish;
	private String email;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTask() {
		return task;
	}
	public void setTask(String task) {
		this.task = task;
	}
	public int getTaskno() {
		return taskno;
	}
	public void setTaskno(int taskno) {
		this.taskno = taskno;
	}
	public String getFinish() {
		return finish;
	}
	public void setFinish(String finish) {
		this.finish = finish;
	}
	
	
}
