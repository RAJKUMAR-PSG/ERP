package com.example.erp.model;

import jakarta.persistence.*;

import java.time.LocalDate;

@Entity
public class EmployeeProject {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    @JoinColumn(name = "employee_id")
    private Employee employee;

    @ManyToOne
    @JoinColumn(name = "project_id")
    private Project project;

    private String role;

    private int allocationPercentage;

    private LocalDate assignedDate;
}
