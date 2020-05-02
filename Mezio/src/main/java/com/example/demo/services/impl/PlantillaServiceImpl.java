package com.example.demo.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.models.MueblePlantilla;
import com.example.demo.models.Plantilla;
import com.example.demo.repository.PlantillaRepository;
import com.example.demo.services.PlantillaService;


@Service
public class PlantillaServiceImpl implements PlantillaService{
	@Autowired
	private PlantillaRepository plantillaRepository;
	@Override
	public List<Plantilla> findPlantillaAll() {
		return plantillaRepository.findAll();
	}

	@Override
	public Plantilla createPlantilla(Plantilla plantilla) {
		Plantilla PlantillaDB=plantillaRepository.findByNumberId(plantilla.getId());
		if(PlantillaDB!=null) {
			return null;
		}
		PlantillaDB=plantillaRepository.save(plantilla);
		return PlantillaDB;
	}

	@Override
	public Plantilla updatePlantilla(Plantilla plantilla) {
		Plantilla plantillaDB=plantillaRepository.findByNumberId(plantilla.getId());
		if(plantillaDB==null) {
			return null;
		}
		
		List<MueblePlantilla> lst = plantilla.getMueblePlantillas();
		
		for (int i =0; i <lst.size(); i++ )
		{
			MueblePlantilla aux = lst.get(i);
			
			if(this.thereIsCollision(lst, aux, i) == true)
			{
				return null;
			}
			
		}	
		
		
		plantillaDB.setAlto(plantilla.getAlto());
		plantillaDB.setAncho(plantilla.getAncho());
		plantillaDB.setCoordenadas(plantilla.getCoordenadas());
		plantillaDB.setLargo(plantilla.getLargo());
		plantillaDB.setMueblePlantillas(plantilla.getMueblePlantillas());
		plantillaDB.setPaquete(plantilla.getPaquete());
		plantillaRepository.save(plantillaDB);
		return plantillaDB;
	}

    public boolean thereIsCollision(List<MueblePlantilla> lst, MueblePlantilla obj, int indexObj) {
        for (int i =0; i< lst.size(); i++)
        {
            if (i == indexObj)
            {
                continue;
            }
            else if ((lst.get(i).getCoordX().equals(obj.getCoordX()) ) && (lst.get(i).getCoordY().equals(obj.getCoordY())) ||
                    ( ( obj.getCoordX() > lst.get(i).getCoordX() && obj.getCoordX() < lst.get(i).getCoordX() + lst.get(i).getMueble().getAncho())
                            && (obj.getCoordY() > lst.get(i).getCoordY() && obj.getCoordY() < lst.get(i).getCoordY() + lst.get(i).getMueble().getLargo())))
                return true;
        }
        return false;
     }
    
    public boolean insertInPlantillaArea(List<MueblePlantilla> lst, MueblePlantilla obj, Plantilla pl) {
    	
    	Double AreaMuebles = 0.0;
    	Double AreaPlantilla = pl.getAncho()*pl.getLargo();
    	Double AreaMaximaPermitida = AreaPlantilla*0.75;
    	for (int i=0;i<lst.size();i++) {
    		AreaMuebles = AreaMuebles + (lst.get(i).getMueble().getAncho()*lst.get(i).getMueble().getLargo());
    	}
    	Double Areaobj=obj.getMueble().getAncho()*obj.getMueble().getLargo();
    	//System.out.println(AreaMuebles);
    	//System.out.println(AreaPlantilla);
    	//System.out.println(Areaobj);
    	Double AreaNuevaMuebles = AreaMuebles + Areaobj;
    	//System.out.println(AreaNuevaMuebles);
    	if(AreaNuevaMuebles > AreaMaximaPermitida) {
    		
    		return false;
    	}
    	else {
    		return true;
    	}
    }
    
	@Override
	public Plantilla deletePlantilla(Plantilla plantilla) {
		Plantilla plantillaDB=plantillaRepository.findByNumberId(plantilla.getId());
		if(plantillaDB!=null) {
			return null;
		}
		plantillaRepository.delete(plantillaDB);
		return plantillaDB;
	}

	@Override
	public Plantilla getPlantilla(Integer id) {
		Plantilla plantillaDB=plantillaRepository.findByNumberId(id);
		if(plantillaDB!=null) {
			return null;
		}
		return plantillaDB;
	}
}
