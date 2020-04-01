package com.cognizant.moviecruiser;

import java.sql.Connection;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.cognizant.moviecruiser.util.ConnectionHandler;

@SpringBootApplication(scanBasePackages= {"com.cognizant.moviecruiser.controller","com.cognizant.moviecruiser.dao","com.cognizant.moviecruiser.model","com.cognizant.moviecruiser.util"})
public class MovieCruiserApplication {

	public static void main(String[] args) {
		SpringApplication.run(MovieCruiserApplication.class, args);
		AnnotationConfigApplicationContext applicationContext = new AnnotationConfigApplicationContext(ConnectionHandler.class);

	}

}
