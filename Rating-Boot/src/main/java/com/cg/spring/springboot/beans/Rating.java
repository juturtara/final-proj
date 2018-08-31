package com.cg.spring.springboot.beans;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Rating {

	@Id
	private int p_id;
	private String p_name;
	private int m_id;
	private int stars;
	
	
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public int getP_id() {
		return p_id;
	}
	public void setP_id(int p_id) {
		this.p_id = p_id;
	}
	public int getM_id() {
		return m_id;
	}
	public void setM_id(int m_id) {
		this.m_id = m_id;
	}
	
	
	public int getStars() {
		return stars;
	}
	public void setStars(int stars) {
		this.stars = stars;
	}
	public Rating(int p_id, String p_name, int m_id, int stars) {
		super();
		this.p_id = p_id;
		this.p_name = p_name;
		this.m_id = m_id;
		this.stars = stars;
	}
	public Rating() {
		super();
	}
	
	
}
