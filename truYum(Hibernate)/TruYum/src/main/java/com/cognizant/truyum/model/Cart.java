package com.cognizant.truyum.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;

@Entity
public class Cart {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column
	private int us_id;
	
	@Column
	@JoinColumn(referencedColumnName = "c_id")
	private int c_id;
	
	
	public Cart(int us_id, int c_id) {
		super();
		this.us_id = us_id;
		this.c_id = c_id;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUs_id() {
		return us_id;
	}

	public void setUs_id(int us_id) {
		this.us_id = us_id;
	}

	public int getC_id() {
		return c_id;
	}

	public void setC_id(int c_id) {
		this.c_id = c_id;
	}

	
}
