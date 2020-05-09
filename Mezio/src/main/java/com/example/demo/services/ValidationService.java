package com.example.demo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.example.demo.models.MueblePlantilla;
import com.example.demo.models.Plantilla;

public class ValidationService {

	@Autowired
	private AllowedAreaService areaService;
	@Autowired
	private CollisionService collisionService;
	public AllowedAreaService getAreaService() {
		return this.areaService;
	}
	public void setAreaService(AllowedAreaService areaService) {
		this.areaService = areaService;
	}
	public CollisionService getCollisionService() {
		return this.collisionService;
	}
	public void setCollisionService(CollisionService collisionService) {
		this.collisionService = collisionService;
	}
	public boolean validate(List<MueblePlantilla>lst, MueblePlantilla mueblePlantilla,Plantilla plantilla, int indexObj) {
		if (areaService.allowedArea(lst, mueblePlantilla, plantilla) && !collisionService.thereIsCollision(lst, 
				mueblePlantilla, indexObj))
			return true;
		else
			return false;
	}
}
