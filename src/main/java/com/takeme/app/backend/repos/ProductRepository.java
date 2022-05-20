package com.takeme.app.backend.repos;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.takeme.app.backend.entities.Category;
import com.takeme.app.backend.entities.Product;
import com.takeme.app.backend.entities.TakeMeDetails;

public interface ProductRepository extends CrudRepository<Product, Integer> {
	
	@Query(value = "SELECT * FROM Products WHERE category_id = ?1", nativeQuery = true)
	Iterable<Product> findAllByCategoryId(Integer categoryId);
}
