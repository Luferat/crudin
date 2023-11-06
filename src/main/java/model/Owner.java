package model;

import java.util.Date;

public class Owner {

	private int id;
	private Date date;
	private String name;
	private String email;
	private String password;
	private String status;

	public Owner() {
	}

	public Owner(Date date, String name, String email, String password, String status) {
		super();
		this.date = date;
		this.name = name;
		this.email = email;
		this.password = password;
		this.status = status;
	}

	public Owner(int id, Date date, String name, String email, String password, String status) {
		super();
		this.id = id;
		this.date = date;
		this.name = name;
		this.email = email;
		this.password = password;
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}