create table roles(
    id int primary key auto_increment,
    role_name varchar(255) not null
);

create table users(
    id int primary key auto_increment,
    user_name varchar(255) not null,
    password varchar(255) not null,
    active boolean not null
);

create table user_roles(
    id int primary key auto_increment,
    user_id int not null,
    role_id int not null,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id),
    CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES roles(id)
);

CREATE TABLE department (
    id int PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE projects (
    id int PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE employee (
    id int PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    department_id int,
    CONSTRAINT fk_employee_department
        FOREIGN KEY (department_id) REFERENCES department(id)
);

CREATE TABLE managers (
    id int PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    department_id int UNIQUE,
    CONSTRAINT fk_manager_department
        FOREIGN KEY (department_id) REFERENCES department(id)
);

CREATE TABLE employee_project (
    employee_id int NOT NULL,
    project_id int NOT NULL,
    PRIMARY KEY (employee_id, project_id),
    CONSTRAINT fk_employee FOREIGN KEY (employee_id) REFERENCES employee(id),
    CONSTRAINT fk_project FOREIGN KEY (project_id) REFERENCES projects(id)
);
