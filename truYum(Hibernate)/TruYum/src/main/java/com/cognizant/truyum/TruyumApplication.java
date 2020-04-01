package com.cognizant.truyum;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.cognizant.truyum.util.ConnectionHandler;


@SpringBootApplication(scanBasePackages = {"com.cognizant.truyum.controller","com.cognizant.truyum.dao","com.cognizant.truyum.util","com.cognizant.truyum.model"})
public class TruyumApplication {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		SpringApplication.run(TruyumApplication.class, args);
		AnnotationConfigApplicationContext applicationContext = new AnnotationConfigApplicationContext(ConnectionHandler.class);
	}

}
