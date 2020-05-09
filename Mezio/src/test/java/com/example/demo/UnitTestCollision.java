package com.example.demo;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.example.demo.models.Categoria;
import com.example.demo.models.Mueble;
import com.example.demo.models.MueblePlantilla;
import com.example.demo.models.Plantilla;
import com.example.demo.models.SubCategoria;
import com.example.demo.services.CollisionService;
import com.example.demo.services.impl.CollisionServiceImpl;

public class UnitTestCollision {

	@Test
	public void test() {
		//////////////////////////////////////////////
		// Categoria
		Categoria categoria = new Categoria(1, "Categoria chida");

		// Subcategoria
		SubCategoria subcategoria = new SubCategoria(1, categoria, "Sub-Catgeoria Chida");


		//Mueble
		Mueble mueble = new Mueble(1, "Mueble Chido", 1.3, 1.2, 1.3, "Mueble chido para gente chida", "imagen chida",
								"icono chido", null, null, "Barroco", "www.barroco.com", null);
		//Mueble
		Mueble mueble2 = new Mueble(2, "Mueble Chido", 1.3, 1.2, 1.3, "Mueble chido para gente chida", "imagen chida",
								"icono chido", subcategoria, null, "Barroco", "www.barroco.com", null);
						
		//Plantilla
		Plantilla plantilla = new Plantilla(1, 1.0, 1.0, 1.0, "{}", null, null);

		// MueblePlantilla
		MueblePlantilla mueblePlantilla = new MueblePlantilla(1, plantilla, mueble, 4.7, 1.0, 1.0);
		MueblePlantilla mueblePlantilla2 = new MueblePlantilla(2, plantilla, mueble2, 4.7, 10.0, 10.0);
		MueblePlantilla mueblePlantilla3 = new MueblePlantilla(3, plantilla, mueble2, 4.7, 100.0, 100.0);

		CollisionService serv= new CollisionServiceImpl();
		

		
		List<MueblePlantilla> lst = new ArrayList<MueblePlantilla>();
		lst.add(mueblePlantilla);
		lst.add(mueblePlantilla2);
		lst.add(mueblePlantilla3);


		
		assertFalse(serv.thereIsCollision(lst, mueblePlantilla3, 2));	
	}

}
