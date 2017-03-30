package com.cgsr.springmvc.converters;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import com.cgsr.springmvc.crud.dao.DepartmentDao;
import com.cgsr.springmvc.crud.entities.Department;
import com.cgsr.springmvc.crud.entities.Employee;

@Component
public class EmployeeConverter implements Converter<String, Employee> {
	@Autowired
	private DepartmentDao departmentDao;

	public Employee convert(String source) {
		if(source!=null){
			String[] vals=source.split("-");
			if(vals!=null && vals.length==4){
				String lastName=vals[0];
				String email=vals[1];
				Integer gender=Integer.parseInt(vals[2]);
				Department department=departmentDao.getDepartment(Integer.parseInt(vals[3]));
				
				Employee employee=new Employee(null, lastName, email, gender, department);
				System.out.println(source+"--converter--"+employee);
				return employee;
			}
		}
		return null;
	}
}
