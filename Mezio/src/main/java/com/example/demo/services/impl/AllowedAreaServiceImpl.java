package com.example.demo.services.impl;

import java.util.List;

import com.example.demo.models.MueblePlantilla;
import com.example.demo.models.Plantilla;
import com.example.demo.services.AllowedAreaService;

public class AllowedAreaServiceImpl implements AllowedAreaService{
	@Override
	public boolean allowedArea(List<MueblePlantilla> lst, MueblePlantilla obj, Plantilla pl) {
    	
    	Double areaMuebles = 0.0;
    	Double areaPlantilla = pl.getAncho()*pl.getLargo();
    	Double areaMaximaPermitida = areaPlantilla*0.75;
    	for (int i=0;i<lst.size();i++) {
    		areaMuebles = areaMuebles + (lst.get(i).getMueble().getAncho()*lst.get(i).getMueble().getLargo());
    	}
    	Double areaObj=obj.getMueble().getAncho()*obj.getMueble().getLargo();
    	//System.out.println(areaMuebles);
    	//System.out.println(areaPlantilla);
    	//System.out.println(AreaObj);
    	Double areaNuevaMuebles = areaMuebles + areaObj;
    	//System.out.println(areaNuevaMuebles);
    	if(areaNuevaMuebles <= areaMaximaPermitida) {
    		lst.add(obj);
    	}
    	return areaNuevaMuebles <= areaMaximaPermitida;
    }
}