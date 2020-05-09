package com.example.demo.services;

import java.util.List;


import com.example.demo.models.MueblePlantilla;

public interface MueblePlantillaService {
	List<MueblePlantilla> findMueblePlantillaAll();
	
	MueblePlantilla createMueblePlantilla(MueblePlantilla mueblePlantilla);
	MueblePlantilla updateMueblePlantilla(MueblePlantilla mueblePlantilla);
	MueblePlantilla deleteMueblePlantilla(MueblePlantilla mueblePlantilla);
	MueblePlantilla getMueblePlantilla(Integer id);
}
