package com.cognizant.hql;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.ApplicationContext;

import com.cognizant.hql.entity.Department;
import com.cognizant.hql.entity.Employee;
import com.cognizant.hql.service.DepartmentService;
import com.cognizant.hql.service.EmployeeService;
import com.cognizant.hql.service.SkillService;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;

@SpringBootApplication
public class MainApplication {

	private static final Logger LOGGER = LoggerFactory.getLogger(MainApplication.class);

	@Autowired
	private static EmployeeService employeeService;
	@Autowired
	private static DepartmentService departmentService;
	@Autowired
	private static SkillService skillService;

	public static void main(String[] args) {
		SpringApplication.run(MainApplication.class, args);

		testGetEmployee();
	}

	private static void testGetEmployee() {
		LOGGER.info("Start");
		Employee employee = employeeService.get(1);
		LOGGER.debug("Employee:{}", employee);
		LOGGER.debug("Department:{}", employee.getDepartment());
		LOGGER.info("End");
	}
//
//	
//	
//
//	public static void testGetAverageSalary() {
//		LOGGER.info("Start");
//		Double avg =employeeService.getAverageSalary();
//		LOGGER.debug("Avg:{}", avg);
//		LOGGER.info("End");
//	}
//
//	public static void testGetAverageSalary(int id) {
//		LOGGER.info("Start");
//		Double avg =employeeService.getAverageSalary(1);
//		LOGGER.debug("Avg:{}", avg);
//		LOGGER.info("End");
//	}
//	
// 
//    public static void testGetAllEmployeesNative()
//    {
//    	LOGGER.info("Start");
//    	List<Employee> employees =employeeService.getAllEmployeesNative();
//    	LOGGER.debug("Employees:{}", employees);
//		LOGGER.info("End");
//    	
//
//    }
//	
//	
	
//	public static void testGetAllPermanentEmployees() {
//        LOGGER.info("Start");
//        List<Employee> employees = employeeService.getAllPermanentEmployees();
//        LOGGER.debug("Permanent Employees:{}", employees);
//        employees.forEach(e -> LOGGER.debug("Skills:{}", e.getSkillList()));
//        LOGGER.info("End");
//    }

	
//	private static void testAddEmployee() throws ParseException {
//		LOGGER.info("Start");
//		Department department = new Department(1,"Development");
//		DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
//		Employee employee1 = new Employee(1,"ABC",12000f,true,df.parse("14/12/2019"),department);
//		employeeService.addEmployee(employee1);
//		LOGGER.info("End");
//	}
	
//	private static void testUpdateEmployee() {
//		LOGGER.info("Start");
//		
//		Employee employee = employeeService.get(1);
//		employee.setEm_name("XYZ");
//		employeeService.updateEmployee(employee);
//		LOGGER.info("End");
//	}
//	
}
