package com.example.demo.services;

import java.util.List;


import com.example.demo.models.MueblePlantilla;
import com.example.demo.models.Plantilla;

public interface MueblePlantillaService {
	List<MueblePlantilla> findMueblePlantillaAll();
	
	MueblePlantilla createMueblePlantilla(MueblePlantilla MueblePlantilla);
	MueblePlantilla updateMueblePlantilla(MueblePlantilla MueblePlantilla);
	MueblePlantilla deleteMueblePlantilla(MueblePlantilla MueblePlantilla);
	MueblePlantilla getMueblePlantilla(Integer id);
}
