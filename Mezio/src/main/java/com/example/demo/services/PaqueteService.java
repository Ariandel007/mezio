package com.example.demo.services;

import java.util.List;

import com.example.demo.models.Paquete;

public interface PaqueteService {

	List<Paquete> findPaqueteAll();
	
	Paquete createPaquete(Paquete Paquete);
	Paquete updatePaquete(Paquete Paquete);
	Paquete deletePaquete(Paquete Paquete);
	
	Paquete getPaquete(Integer id);
}
