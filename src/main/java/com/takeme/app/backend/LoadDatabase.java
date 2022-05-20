package com.takeme.app.backend;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.takeme.app.backend.repos.TakeMeDetailsRepository;

@Configuration
class LoadDatabase {

  private static final Logger log = LoggerFactory.getLogger(LoadDatabase.class);

//  @Bean
//  CommandLineRunner initDatabase(TakeMeDetailsRepository repository) {
//
//    return args -> {
//      log.info("Preloading ");
//    };
//  }
}
