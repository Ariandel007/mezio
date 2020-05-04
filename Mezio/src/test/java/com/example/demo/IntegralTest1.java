package com.example.demo;


import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.example.demo.models.Categoria;
import com.example.demo.models.Mueble;
import com.example.demo.models.MueblePlantilla;
import com.example.demo.models.Plantilla;
import com.example.demo.models.SubCategoria;
import com.example.demo.models.TiendaVirtual;
import com.example.demo.services.AllowedAreaService;
import com.example.demo.services.CollisionService;
import com.example.demo.services.MueblePlantillaService;
import com.example.demo.services.ValidationService;
import com.example.demo.services.impl.AllowedAreaServiceImpl;
import com.example.demo.services.impl.CollisionServiceImpl;
import com.example.demo.services.impl.MueblePlantillaServiceImpl;

public class IntegralTest1 {

	@Test
	public void test() {

		Categoria categoria =new Categoria();
		categoria.setId(1);
		categoria.setNombre("Muebles con feeling");
		SubCategoria subcategoria = new SubCategoria();
		subcategoria.setId(1);
		subcategoria.setNombre("Sala de estar");
		subcategoria.setCategoria(categoria);
		TiendaVirtual tiendavirtual=new TiendaVirtual();
		tiendavirtual.setId(1);
		tiendavirtual.setNombre("SodiGAAAAA");
		tiendavirtual.setUrl("sodimac.pe");
		
		//Mueble
		Mueble mueble = new Mueble();
		//1, "Mueble Chido", 1.3, 1.2, 1.3, "Mueble chido para gente chida", "imagen chida",
		//"icono chido", null, null, "Barroco", "www.barroco.com", null
		mueble.setId(1);
		mueble.setNombre("Mueble Monse");
		mueble.setAlto(1.0);
		mueble.setAncho(1.0);
		mueble.setLargo(1.0);
		mueble.setDescripcion("Mueble Monse para gente que quiere dominar al mundo");
		mueble.setImagen("imagen monse");
		mueble.setIcono("Icono monse");
		mueble.setEstilo("Barroco");
		mueble.setUrl("barroco.es");
		mueble.setSubCategoria(subcategoria);
		mueble.setTiendaVirtual(tiendavirtual);
		//Mueble
		Mueble mueble2 = new Mueble(2, "Mueble Chido", 1.3, 1.2, 1.3, "Mueble chido para gente chida", "imagen chida",
						"icono chido", subcategoria, tiendavirtual, "Barroco", "www.barroco.com", null);
				
		//Plantilla
		Plantilla plantilla = new Plantilla();
		//1, 1.0, 1.0, 1.0, "{}", null, null
		plantilla.setId(1);
		plantilla.setAlto(1.0);
		plantilla.setAncho(1.0);
		plantilla.setLargo(1.0);
		plantilla.setCoordenadas("{}");
		
		// MueblePlantilla
		MueblePlantilla mueblePlantilla = new MueblePlantilla();
		mueblePlantilla.setId(1);
		mueblePlantilla.setMueble(mueble);
		mueblePlantilla.setPlantilla(plantilla);
		mueblePlantilla.setRotacion(4.7);
		mueblePlantilla.setCoordX(1.0);
		mueblePlantilla.setCoordY(1.0);
		//1, plantilla, mueble, 4.7, 1.0, 1.0
		MueblePlantilla mueblePlantilla2 = new MueblePlantilla(2, plantilla, mueble2, 4.7, 10.0, 10.0);
		MueblePlantilla mueblePlantilla3 = new MueblePlantilla(3, plantilla, mueble2, 4.7, 100.0, 100.0);
				

				
		List<MueblePlantilla> lst = new ArrayList<MueblePlantilla>();
		lst.add(mueblePlantilla);
		lst.add(mueblePlantilla2);
		
		
		AllowedAreaService areaService= //new AllowedAreaServiceImpl();
				mock(AllowedAreaService.class);
		when(areaService.allowedArea(lst, mueblePlantilla3, plantilla)).thenReturn(true);
		
		CollisionService collisionService = new CollisionServiceImpl();
		ValidationService validationService = new ValidationService();
		
		validationService.setAreaService(areaService);
		validationService.setCollisionService(collisionService);
		
		assertTrue(validationService.validate(lst, mueblePlantilla3, plantilla, 2));
		
		
	}

}
