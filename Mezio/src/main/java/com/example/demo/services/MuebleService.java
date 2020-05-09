package com.example.demo.services;

import java.util.List;

import com.example.demo.models.Mueble;

public interface MuebleService {

	List<Mueble> findMuebleAll();
	
	Mueble createMueble(Mueble mueble);
	Mueble updateMueble(Mueble mueble);
	Mueble deleteMueble(Mueble mueble);
	
	Mueble getMueble(Integer id);
}
