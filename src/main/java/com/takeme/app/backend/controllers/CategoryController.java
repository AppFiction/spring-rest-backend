package com.takeme.app.backend.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.takeme.app.backend.entities.Category;
import com.takeme.app.backend.repos.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;

@RestController
@RequestMapping(path = "/endpoints")
public class CategoryController {
	
	@Autowired
	private CategoryRepository categoryRepository;


	@GetMapping("/categories")
	public Iterable<Category> details() {
		return categoryRepository.findAll();
	}
}
