package com.cg.spring.springboot.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cg.spring.springboot.beans.Rating;
import com.cg.spring.springboot.service.RatingService;

@Controller
public class RatingController {

	@Autowired
	RatingService service;

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String demo() {
		return "index";
	}

	@RequestMapping(method = RequestMethod.POST, value = "/addrating")
	public ModelAndView addRating(Rating r) {
		int k=r.getStars();
		Optional<Rating> rat=service.getrating(r.getP_id());
		System.out.println(k);
		if(rat.isPresent()) {
		int j=rat.get().getStars();
		System.out.println(j);
		if(j!=0) {
		r.setStars((k+j)/2);
		}
		}
		service.addrating(r);
		Iterable<Rating> rat1=service.getallrating();
		
		return new ModelAndView("success","rat",rat1);
	}
	
	@RequestMapping(value="/show")
	public ModelAndView showall() {
		Iterable<Rating> rat1 = service.getallrating();
		return new ModelAndView("success","rat",rat1);
	}

}
