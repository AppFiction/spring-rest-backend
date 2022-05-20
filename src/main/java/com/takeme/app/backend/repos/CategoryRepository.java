package com.takeme.app.backend.repos;

import org.springframework.data.repository.CrudRepository;

import com.takeme.app.backend.entities.Category;

public interface CategoryRepository extends CrudRepository<Category, Integer> {
	
}
