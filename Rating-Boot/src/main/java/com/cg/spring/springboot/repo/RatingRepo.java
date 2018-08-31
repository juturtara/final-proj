package com.cg.spring.springboot.repo;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.cg.spring.springboot.beans.Rating;

@Repository
public interface RatingRepo extends CrudRepository<Rating, Integer>{

}
