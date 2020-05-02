package com.example.demo;

import static org.junit.Assert.*;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.example.demo.models.Categoria;
import com.example.demo.models.Mueble;
import com.example.demo.models.MueblePlantilla;
import com.example.demo.models.Plantilla;
import com.example.demo.models.SubCategoria;
import com.example.demo.services.PlantillaService;
import com.example.demo.services.impl.PlantillaServiceImpl;

public class UnitTestCollision {

	@Test
	public void test() {
		//////////////////////////////////////////////
		// Categoria
		Categoria categoria = new Categoria(1, "Categoria chida");

		// Subcategoria
		SubCategoria subcategoria = new SubCategoria(1, categoria, "Sub-Catgeoria Chida");


		//Mueble
		Mueble mueble = new Mueble(1, "Mueble Chido", 500.3, 30000.2, 40000.3, "Mueble chido para gente chida", "imagen chida",
				"icono chido", subcategoria, null, "Barroco", "www.barroco.com", null);
		//Mueble
		Mueble mueble2 = new Mueble(2, "Mueble Chido", 5.3, 3.2, 4.3, "Mueble chido para gente chida", "imagen chida",
				"icono chido", subcategoria, null, "Barroco", "www.barroco.com", null);
				
		
		//Plantilla
		Plantilla plantilla = new Plantilla(1, 12.0, 12.0, 12.0, "{}", null, null);

		// MueblePlantilla
		MueblePlantilla mueblePlantilla = new MueblePlantilla(1, plantilla, mueble, 4.7, 5.4, 1.0);
		MueblePlantilla mueblePlantilla2 = new MueblePlantilla(2, plantilla, mueble2, 4.7, 50.4, 10.0);

		PlantillaService serv = new PlantillaServiceImpl();
		

		
		List<MueblePlantilla> lst = new ArrayList<MueblePlantilla>();
		lst.add(mueblePlantilla);
		lst.add(mueblePlantilla2);


		
		assertTrue(serv.thereIsCollision(lst, mueblePlantilla2, 1));	
	}

}
