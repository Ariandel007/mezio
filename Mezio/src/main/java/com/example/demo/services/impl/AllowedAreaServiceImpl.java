package com.example.demo.services.impl;

import java.util.List;

import com.example.demo.models.MueblePlantilla;
import com.example.demo.models.Plantilla;
import com.example.demo.services.AllowedAreaService;

public class AllowedAreaServiceImpl implements AllowedAreaService{
	@Override
	public boolean allowedArea(List<MueblePlantilla> lst, MueblePlantilla obj, Plantilla pl) {
    	
    	Double AreaMuebles = 0.0;
    	Double AreaPlantilla = pl.getAncho()*pl.getLargo();
    	Double AreaMaximaPermitida = AreaPlantilla*0.75;
    	for (int i=0;i<lst.size();i++) {
    		AreaMuebles = AreaMuebles + (lst.get(i).getMueble().getAncho()*lst.get(i).getMueble().getLargo());
    	}
    	Double Areaobj=obj.getMueble().getAncho()*obj.getMueble().getLargo();
    	//System.out.println(AreaMuebles);
    	//System.out.println(AreaPlantilla);
    	//System.out.println(AreaObj);
    	Double AreaNuevaMuebles = AreaMuebles + Areaobj;
    	//System.out.println(AreaNuevaMuebles);
    	if(AreaNuevaMuebles <= AreaMaximaPermitida) {
    		lst.add(obj);
    	}
    	return AreaNuevaMuebles <= AreaMaximaPermitida;
    }
}
