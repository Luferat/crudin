package model;

import java.util.Date;

public class Item {

	private int id;
	private Date date;
	private String name;
	private String description;
	private String location;
	private int owner;
	private String status;

	public Item() {
	}

	public Item(Date date, String name, String description, String location, int owner, String status) {
		super();
		this.date = date;
		this.name = name;
		this.description = description;
		this.location = location;
		this.owner = owner;
		this.status = status;
	}

	public Item(int id, Date date, String name, String description, String location, int owner, String status) {
		super();
		this.id = id;
		this.date = date;
		this.name = name;
		this.description = description;
		this.location = location;
		this.owner = owner;
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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public int getOwner() {
		return owner;
	}

	public void setOwner(int owner) {
		this.owner = owner;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}