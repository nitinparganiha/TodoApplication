package com.Todo.Todo.jparepository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Todo.Todo.entity.User;

public interface Userjparepository extends JpaRepository<User, String>{
	public User findByEmailAndPass(String email,String pass);
}
