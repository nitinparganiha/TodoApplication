package com.Todo.Todo.jparepository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Todo.Todo.entity.Task;

public interface TaskjpaRepository extends JpaRepository<Task, Integer>{
public List<Task> findByEmail(String email);

}
