package com.takeme.app.backend.repos;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.takeme.app.backend.entities.TakeMeDetails;

public interface TakeMeDetailsRepository extends CrudRepository<TakeMeDetails, String> {
	
	@Query("select d from TakeMeDetails d where d.locale = ?1")
	TakeMeDetails findByLocale(String locale);
}
