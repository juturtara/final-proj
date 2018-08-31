package com.cg.spring.springboot.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cg.spring.springboot.beans.Rating;
import com.cg.spring.springboot.repo.RatingRepo;

@Service
public class RatingServiceImpl implements RatingService {

	
	@Autowired
	RatingRepo repo;
	
	@Override
	public void addrating(Rating r) {
		repo.save(r);
		
	}

	@Override
	public Optional<Rating> getrating(int p_id) {
		
		return repo.findById(p_id);
	}

	@Override
	public Iterable<Rating> getallrating() {
		
		return repo.findAll();
	}



}
