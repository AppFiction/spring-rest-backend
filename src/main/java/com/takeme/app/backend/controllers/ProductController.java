package com.takeme.app.backend.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.takeme.app.backend.entities.Product;
import com.takeme.app.backend.repos.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;

@RestController
@RequestMapping(path = "/endpoints")
public class ProductController {
	
	@Autowired
	private ProductRepository productRepository;


	@GetMapping("/products")
	public Iterable<Product> product(@RequestParam(value = "categoryId") Integer categoryId) {
		return productRepository.findAllByCategoryId(categoryId);
	}
	
//	@GetMapping("/product")
//	public Optional<Product> product(@RequestParam(value = "id") Integer id) {
//		return productRepository.findById(id);
//	}
}
