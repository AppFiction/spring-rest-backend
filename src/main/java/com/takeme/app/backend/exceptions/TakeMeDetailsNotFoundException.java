package com.takeme.app.backend.exceptions;

public class TakeMeDetailsNotFoundException extends RuntimeException {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	TakeMeDetailsNotFoundException(Long id) {
		    super("Could not find details " + id);
		  }

}
