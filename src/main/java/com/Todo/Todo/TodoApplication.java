package com.Todo.Todo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication(scanBasePackages = "com.Todo.Todo.controller")
@EnableJpaRepositories(basePackages = "com.Todo.Todo.jparepository")
@EntityScan(basePackages = "com.Todo.Todo.entity")
public class TodoApplication {

	public static void main(String[] args) {
		SpringApplication.run(TodoApplication.class, args);
		
	}

}