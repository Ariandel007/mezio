package com.example.demo.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.models.Mueble;
import com.example.demo.repository.MuebleRepository;
import com.example.demo.services.MuebleService;

@Service
public class MuebleServiceImpl implements MuebleService{
	@Autowired
	private MuebleRepository muebleRepository;
	@Override
	public List<Mueble> findMuebleAll() {
		return muebleRepository.findAll();
	}

	@Override
	public Mueble createMueble(Mueble mueble) {
		Mueble MuebleDB=muebleRepository.findByNumberId(mueble.getId());
		if(MuebleDB!=null) {
			return null;
		}
		MuebleDB=muebleRepository.save(mueble);
		return MuebleDB;
	}

	@Override
	public Mueble updateMueble(Mueble mueble) {
		Mueble muebleDB=muebleRepository.findByNumberId(mueble.getId());
		if(muebleDB==null) {
			return null;
		}
		muebleDB.setAlto(mueble.getAlto());
		muebleDB.setAncho(mueble.getAncho());
		muebleDB.setDescripcion(mueble.getDescripcion());
		muebleDB.setEstilo(mueble.getEstilo());
		muebleDB.setIcono(mueble.getIcono());
		muebleDB.setImagen(mueble.getImagen());
		muebleDB.setLargo(mueble.getLargo());
		muebleDB.setMueblePlantillas(mueble.getMueblePlantillas());
		muebleDB.setNombre(mueble.getNombre());
		muebleDB.setSubCategoria(mueble.getSubCategoria());
		muebleDB.setTiendaVirtual(mueble.getTiendaVirtual());
		muebleDB.setUrl(mueble.getUrl());
		muebleRepository.save(muebleDB);
		return muebleDB;
	}

	@Override
	public Mueble deleteMueble(Mueble mueble) {
		Mueble muebleDB=muebleRepository.findByNumberId(mueble.getId());
		if(muebleDB!=null) {
			return null;
		}
		muebleRepository.delete(muebleDB);
		return muebleDB;
	}

	@Override
	public Mueble getMueble(Integer id) {
		Mueble muebleDB=muebleRepository.findByNumberId(id);
		if(muebleDB==null) {
			return null;
		}
		return muebleDB;
	}
}
