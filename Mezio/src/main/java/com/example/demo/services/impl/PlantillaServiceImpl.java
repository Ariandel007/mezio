package com.example.demo.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.models.Plantilla;
import com.example.demo.repository.PlantillaRepository;
import com.example.demo.services.PlantillaService;


@Service
public class PlantillaServiceImpl implements PlantillaService{
	@Autowired
	private PlantillaRepository plantillaRepository;
	@Override
	public List<Plantilla> findPlantillaAll() {
		return plantillaRepository.findAll();
	}

	@Override
	public Plantilla createPlantilla(Plantilla plantilla) {
		Plantilla PlantillaDB=plantillaRepository.findByNumberId(plantilla.getId());
		if(PlantillaDB==null) {
			return null;
		}
		PlantillaDB=plantillaRepository.save(plantilla);
		return PlantillaDB;
	}

	@Override
	public Plantilla updatePlantilla(Plantilla plantilla) {
		Plantilla plantillaDB=plantillaRepository.findByNumberId(plantilla.getId());
		if(plantillaDB==null) {
			return null;
		}
		
		
		plantillaDB.setAlto(plantilla.getAlto());
		plantillaDB.setAncho(plantilla.getAncho());
		plantillaDB.setCoordenadas(plantilla.getCoordenadas());
		plantillaDB.setLargo(plantilla.getLargo());
		plantillaDB.setMueblePlantillas(plantilla.getMueblePlantillas());
		plantillaDB.setPaquete(plantilla.getPaquete());
		plantillaRepository.save(plantillaDB);
		return plantillaDB;
	}

  
    
    
	@Override
	public Plantilla deletePlantilla(Plantilla plantilla) {
		Plantilla plantillaDB=plantillaRepository.findByNumberId(plantilla.getId());
		if(plantillaDB==null) {
			return null;
		}
		plantillaRepository.delete(plantillaDB);
		return plantillaDB;
	}

	@Override
	public Plantilla getPlantilla(Integer id) {
		Plantilla plantillaDB=plantillaRepository.findByNumberId(id);
		if(plantillaDB==null) {
			return null;
		}
		return plantillaDB;
	}
}
