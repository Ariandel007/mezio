package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.models.Paquete;



public interface PaqueteRepository extends JpaRepository<Paquete,Integer> {
	
}
