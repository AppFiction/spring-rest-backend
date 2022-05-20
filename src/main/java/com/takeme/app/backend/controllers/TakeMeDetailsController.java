package com.takeme.app.backend.controllers;

import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.takeme.app.backend.entities.TakeMeDetails;
import com.takeme.app.backend.exceptions.TakeMeDetailsNotFoundException;
import com.takeme.app.backend.repos.TakeMeDetailsRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;

@RestController
@RequestMapping(path = "/endpoints")
public class TakeMeDetailsController {
	
	@Autowired
	private TakeMeDetailsRepository takeMeDetailsRepository;


	@GetMapping("/details")
	public TakeMeDetails details(@RequestParam(value = "locale", defaultValue = "HE") String locale) {

		return takeMeDetailsRepository.findByLocale(locale);
	}

	@ResponseBody
	@ExceptionHandler(TakeMeDetailsNotFoundException.class)
	@ResponseStatus(HttpStatus.NOT_FOUND)
	String takemeDetailsNotFoundHandler(TakeMeDetailsNotFoundException ex) {
		return ex.getMessage();
	}
}
