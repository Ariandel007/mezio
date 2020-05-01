package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.models.MueblePlantilla;
import com.example.demo.models.Plantilla;

@Repository
public interface MueblePlantillaRepository extends JpaRepository<MueblePlantilla, Integer>{

	List<MueblePlantilla> findByPlantilla(Plantilla plantilla);
	List<MueblePlantilla> findAll();
	MueblePlantilla findByNumberId(Integer id);
}
