package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.models.Categoria;
import com.example.demo.models.Paquete;
import com.example.demo.models.Plantilla;


public interface PlantillaRepository extends JpaRepository<Plantilla,Integer> {

	List<Plantilla> findByPaquete(Paquete paquete);
	Plantilla findByNumberId(Integer id);
	
}
