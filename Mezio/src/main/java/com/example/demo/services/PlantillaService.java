package com.example.demo.services;

import java.util.List;

import com.example.demo.models.Plantilla;

public interface PlantillaService {

	List<Plantilla> findPlantillaAll();
	
	Plantilla createPlantilla(Plantilla plantilla);
	Plantilla updatePlantilla(Plantilla plantilla);
	Plantilla deletePlantilla(Plantilla plantilla);
	Plantilla getPlantilla(Integer id);
}
