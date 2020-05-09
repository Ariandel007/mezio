package com.example.demo.services;

import java.util.List;

import com.example.demo.models.Paquete;

public interface PaqueteService {

	List<Paquete> findPaqueteAll();
	
	Paquete createPaquete(Paquete paquete);
	Paquete updatePaquete(Paquete paquete);
	Paquete deletePaquete(Paquete paquete);
	
	Paquete getPaquete(Integer id);
}
