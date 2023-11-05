package edu.ty.employeeapp.dao;

import java.util.ArrayList;

import edu.ty.employeeapp.dto.Employee;

public interface  Employeedao {
	String DB_URL="jdbc:mysql://localhost:3306/mydb?user=root&password=root";
	String DRIVER_CLASS="com.mysql.cj.jdbc.Driver";
	public boolean addEmployee(Employee e);
	
	public Employee  getEmployee(int id);
	
	public Employee  getEmployee(String e);
	
	public Employee  getEmployeename(String e);
	
	public Employee  getEmployeemobile(String e);
	
	
	
	public ArrayList<Employee> getAllEmployee();
	
	public boolean updateEmployee(Employee e);
	
	public boolean deleteEmployee(int id);
	
	public Employee loginvalidate(String email, String password);
}
