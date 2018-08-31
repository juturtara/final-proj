package com.cg.spring.springboot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;


@SpringBootApplication
@ComponentScan(basePackages="com.cg.spring.springboot")
public class RatingBootApplication {

	public static void main(String[] args) {
		SpringApplication.run(RatingBootApplication.class, args);
	}
}
