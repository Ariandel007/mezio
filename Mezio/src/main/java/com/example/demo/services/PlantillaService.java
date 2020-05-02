package com.example.demo.services;

import java.util.List;

import com.example.demo.models.MueblePlantilla;
import com.example.demo.models.Plantilla;

public interface PlantillaService {

	List<Plantilla> findPlantillaAll();
	
	Plantilla createPlantilla(Plantilla Plantilla);
	Plantilla updatePlantilla(Plantilla Plantilla);
	Plantilla deletePlantilla(Plantilla Plantilla);
    boolean thereIsCollision(List<MueblePlantilla> lst, MueblePlantilla obj, int indexObj);
	Plantilla getPlantilla(Integer id);
}
