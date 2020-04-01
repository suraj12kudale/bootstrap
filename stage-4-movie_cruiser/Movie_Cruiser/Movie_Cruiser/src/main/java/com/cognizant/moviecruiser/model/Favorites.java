package com.cognizant.moviecruiser.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Table;


@Entity
@Table(name = "favorites")
public class Favorites {
	@Id
	@Column(name="us_id")
	private int us_id;
	
	@Column
	@JoinColumn(referencedColumnName = "mv_id")
	private int mv_id;

	public Favorites() {
		super();
	}

	public Favorites(int us_id, int mv_id) {
		super();
		this.us_id = us_id;
		this.mv_id = mv_id;
	}


	public int getUs_id() {
		return us_id;
	}

	public void setUs_id(int us_id) {
		this.us_id = us_id;
	}

	public int getMv_id() {
		return mv_id;
	}

	public void setMv_id(int mv_id) {
		this.mv_id = mv_id;
	}

	

}
