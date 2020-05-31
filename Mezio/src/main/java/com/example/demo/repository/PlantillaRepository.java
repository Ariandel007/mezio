package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.models.Paquete;
import com.example.demo.models.Plantilla;


public interface PlantillaRepository extends JpaRepository<Plantilla,Integer> {

	List<Plantilla> findByPaquete(Paquete paquete);
	
    @Query(value="select * from plantilla where id=?1",nativeQuery = true)
	Plantilla findByNumberId(Integer id);
	
}
