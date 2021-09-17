package com.example.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.entity.Covid19;

public interface Covid19Repository extends JpaRepository<Covid19, Long> {

	
}
