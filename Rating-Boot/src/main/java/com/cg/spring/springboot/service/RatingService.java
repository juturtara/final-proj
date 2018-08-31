package com.cg.spring.springboot.service;

import java.util.Optional;

import com.cg.spring.springboot.beans.Rating;

public interface RatingService {

	public void addrating(Rating r);
	public Optional<Rating> getrating(int p_id);
	
	public Iterable<Rating> getallrating();
	

}
