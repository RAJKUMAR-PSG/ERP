package com.example.erp.repository;

import com.example.erp.model.Department;
import com.example.erp.model.Employee;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DepartmentRepository extends JpaRepository<Department, Long> {

}
