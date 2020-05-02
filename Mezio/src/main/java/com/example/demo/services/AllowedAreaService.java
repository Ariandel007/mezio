package com.example.demo.services;

import java.util.List;

import com.example.demo.models.MueblePlantilla;
import com.example.demo.models.Plantilla;

public interface AllowedAreaService {

	boolean allowedArea(List<MueblePlantilla> lst, MueblePlantilla obj, Plantilla pl);
}
