package com.example.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.entity.Admin;

public interface AdminRepository extends JpaRepository<Admin, Long> {
	// SELECT * FROM ADMIN WHERE ID=?
	Admin findByid(String username);

}
