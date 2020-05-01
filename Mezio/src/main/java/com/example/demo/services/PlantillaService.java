package com.example.demo.services;

import java.util.List;

import com.example.demo.models.Plantilla;

public interface PlantillaService {

	List<Plantilla> findPlantillaAll();
	
	Plantilla createPlantilla(Plantilla Plantilla);
	Plantilla updatePlantilla(Plantilla Plantilla);
	Plantilla deletePlantilla(Plantilla Plantilla);
	
	Plantilla getPlantilla(Integer id);
}
