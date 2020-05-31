package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.models.MueblePlantilla;
import com.example.demo.models.Plantilla;

@Repository
public interface MueblePlantillaRepository extends JpaRepository<MueblePlantilla, Integer>{

	List<MueblePlantilla> findByPlantilla(Plantilla plantilla);
	List<MueblePlantilla> findAll();
	
    @Query(value="select * from mueble_plantilla where id=?1",nativeQuery = true)
	MueblePlantilla findByNumberId(Integer id);
    
}
