package com.example.demo.services.impl;

import java.util.List;

import com.example.demo.models.MueblePlantilla;
import com.example.demo.services.CollisionService;

public class CollisionServiceImpl implements CollisionService{

	@Override
	public boolean thereIsCollision(List<MueblePlantilla> lst, MueblePlantilla obj, int indexObj) {
        for (int i =0; i< lst.size(); i++)
        {
            if (i == indexObj)
            {
                continue;
            }
            else if (lst.get(i).getCoordX().equals(obj.getCoordX()) && lst.get(i).getCoordY().equals(obj.getCoordY()) ||
                    obj.getCoordX() > lst.get(i).getCoordX() && obj.getCoordX() < lst.get(i).getCoordX() + lst.get(i).getMueble().getAncho()
                    && (obj.getCoordY() > lst.get(i).getCoordY() && obj.getCoordY() < lst.get(i).getCoordY() + lst.get(i).getMueble().getLargo()))
                return true;
        }
        return false;
     }
    
}
