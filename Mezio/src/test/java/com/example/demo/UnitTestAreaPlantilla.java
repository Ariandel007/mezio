package com.example.demo;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.example.demo.models.Mueble;
import com.example.demo.models.MueblePlantilla;
import com.example.demo.models.Plantilla;
import com.example.demo.services.AllowedAreaService;
import com.example.demo.services.MueblePlantillaService;
import com.example.demo.services.PlantillaService;
import com.example.demo.services.impl.AllowedAreaServiceImpl;
import com.example.demo.services.impl.MueblePlantillaServiceImpl;
import com.example.demo.services.impl.PlantillaServiceImpl;

public class UnitTestAreaPlantilla {

	@Test
	public void test() {
		
		//Mueble
		Mueble mueble = new Mueble(1, "Mueble Chido", 5.3, 4.2, 4.3, "Mueble chido para gente chida", "imagen chida",
				"icono chido", null, null, "Barroco", "www.barroco.com", null);
		//Mueble
		Mueble mueble2 = new Mueble(2, "Mueble Chido", 5.3, 3.2, 4.3, "Mueble chido para gente chida", "imagen chida",
				"icono chido", null, null, "Barroco", "www.barroco.com", null);
		
		//Plantilla
		Plantilla plantilla = new Plantilla(1, 1.0, 1.0, 1.0, "{}", null, null);

		// MueblePlantilla
		MueblePlantilla mueblePlantilla = new MueblePlantilla(1, plantilla, mueble, 4.7, 5.4, 1.0);
		MueblePlantilla mueblePlantilla2 = new MueblePlantilla(2, plantilla, mueble2, 4.7, 5.4, 1.0);
		MueblePlantilla mueblePlantilla3 = new MueblePlantilla(3, plantilla, mueble2, 4.7, 5.4, 1.0);

		AllowedAreaService serv = new AllowedAreaServiceImpl();
		

		
		List<MueblePlantilla> lst = new ArrayList<MueblePlantilla>();
		lst.add(mueblePlantilla);
		lst.add(mueblePlantilla2);
		
		List<MueblePlantilla> lst2=new ArrayList<MueblePlantilla>();
		lst2=lst;
		lst2.add(mueblePlantilla3);
		
		assertFalse(serv.allowedArea(lst, mueblePlantilla3, plantilla));
		
	}

}
