package com.example.demo.services;

import java.util.List;

import com.example.demo.models.Mueble;

public interface MuebleService {

	List<Mueble> findMuebleAll();
	
	Mueble createMueble(Mueble Mueble);
	Mueble updateMueble(Mueble Mueble);
	Mueble deleteMueble(Mueble Mueble);
	
	Mueble getMueble(Integer id);
}
