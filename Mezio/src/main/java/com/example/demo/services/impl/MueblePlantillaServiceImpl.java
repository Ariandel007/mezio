package com.example.demo.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.models.MueblePlantilla;
import com.example.demo.repository.MueblePlantillaRepository;
import com.example.demo.services.MueblePlantillaService;

@Service
public class MueblePlantillaServiceImpl implements MueblePlantillaService{

	@Autowired
	private MueblePlantillaRepository mueblePlantillaRepository;
	@Override
	public List<MueblePlantilla> findMueblePlantillaAll() {
		return mueblePlantillaRepository.findAll();
	}

	@Override
	public MueblePlantilla createMueblePlantilla(MueblePlantilla mueblePlantilla) {
		MueblePlantilla MueblePlantillaDB=mueblePlantillaRepository.findByNumberId(mueblePlantilla.getId());
		if(MueblePlantillaDB!=null) {
			return null;
		}
		MueblePlantillaDB=mueblePlantillaRepository.save(mueblePlantilla);
		return MueblePlantillaDB;
	}

	@Override
	public MueblePlantilla updateMueblePlantilla(MueblePlantilla mueblePlantilla) {
		MueblePlantilla mueblePlantillaDB=mueblePlantillaRepository.findByNumberId(mueblePlantilla.getId());
		if(mueblePlantillaDB==null) {
			return null;
		}
		mueblePlantillaDB.setCoordX(mueblePlantilla.getCoordX());
		mueblePlantillaDB.setCoordY(mueblePlantilla.getCoordY());
		mueblePlantillaDB.setRotacion(mueblePlantilla.getRotacion());
		mueblePlantillaDB.setMueble(mueblePlantilla.getMueble());
		mueblePlantillaDB.setPlantilla(mueblePlantilla.getPlantilla());
		mueblePlantillaRepository.save(mueblePlantillaDB);
		return mueblePlantillaDB;
	}

	@Override
	public MueblePlantilla deleteMueblePlantilla(MueblePlantilla mueblePlantilla) {
		MueblePlantilla mueblePlantillaDB=mueblePlantillaRepository.findByNumberId(mueblePlantilla.getId());
		if(mueblePlantillaDB!=null) {
			return null;
		}
		mueblePlantillaRepository.delete(mueblePlantillaDB);
		return mueblePlantillaDB;
	}

	@Override
	public MueblePlantilla getMueblePlantilla(Integer id) {
		MueblePlantilla mueblePlantillaDB=mueblePlantillaRepository.findByNumberId(id);
		if(mueblePlantillaDB!=null) {
			return null;
		}
		return mueblePlantillaDB;
	}

}
