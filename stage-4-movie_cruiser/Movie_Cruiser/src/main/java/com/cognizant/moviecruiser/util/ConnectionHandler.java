package com.cognizant.moviecruiser.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.servlet.view.InternalResourceViewResolver;


@Configuration
public class ConnectionHandler {
	static Connection con;
//	public static Connection getConnection() {
//	  
//		try {
//			String url="jdbc:mysql://localhost:3306/mydb";
//			String username="root";
//			String pass="root123";
//			 con=DriverManager.getConnection(url,username,pass);
//			System.out.println("Connection Successful"); 
//			
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return con;
//	}
	
//	@Bean
//	public DataSource dataSource() {
//		DriverManagerDataSource dataSource = new DriverManagerDataSource();
//		// MySQL database we are using
//		dataSource.setDriverClassName("com.mysql.jdbc.Driver");
//		dataSource.setUrl("jdbc:mysql://localhost:3306/TollBillGenerator");
//		dataSource.setUsername("root");
//		dataSource.setPassword("root");
//		return dataSource;
//	}
//
//	@Bean
//	public JdbcTemplate jdbcTemplate() {
//		JdbcTemplate jdbcTemplate = new JdbcTemplate();
//		jdbcTemplate.setDataSource(dataSource());
//		return jdbcTemplate;
//	}

//	@Bean
//	public UserServiceImpl UserServiceMethod() {
//		UserServiceImpl user = new UserServiceImpl();
//		user.setJdbcTemplate(jdbcTemplate());
//		return user;
//	}
	
	@Bean
	public InternalResourceViewResolver resolver() {
	    InternalResourceViewResolver vr = new InternalResourceViewResolver();
	    vr.setPrefix("/WEB-INF/views/");
	    vr.setSuffix(".jsp");
	    return vr;
	}
	
}
