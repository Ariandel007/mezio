package com.example.demo.services;

import java.util.List;

import com.example.demo.models.MueblePlantilla;

public interface CollisionService {

	public boolean thereIsCollision(List<MueblePlantilla> lst, MueblePlantilla obj, int indexObj);
}
