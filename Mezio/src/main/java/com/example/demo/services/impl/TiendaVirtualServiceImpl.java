package com.example.demo.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.models.TiendaVirtual;
import com.example.demo.repository.TiendaVirtualRepository;
import com.example.demo.services.TiendaVirtualService;

@Service
public class TiendaVirtualServiceImpl implements TiendaVirtualService{
	@Autowired
	private TiendaVirtualRepository tiendaVirtualRepository;
	@Override
	public List<TiendaVirtual> findTiendaVirtualAll() {
		return tiendaVirtualRepository.findAll();
	}

	@Override
	public TiendaVirtual createTiendaVirtual(TiendaVirtual tiendaVirtual) {
		TiendaVirtual tiendaVirtualDB=tiendaVirtualRepository.findByNumberId(tiendaVirtual.getId());
		if(tiendaVirtualDB!=null) {
			return null;
		}
		tiendaVirtualDB=tiendaVirtualRepository.save(tiendaVirtual);
		return tiendaVirtualDB;
	}

	@Override
	public TiendaVirtual updateTiendaVirtual(TiendaVirtual tiendaVirtual) {
		TiendaVirtual tiendaVirtualDB=tiendaVirtualRepository.findByNumberId(tiendaVirtual.getId());
		if(tiendaVirtualDB==null) {
			return null;
		}
		tiendaVirtualDB.setNombre(tiendaVirtual.getNombre());
		tiendaVirtualDB.setUrl(tiendaVirtual.getUrl());
		tiendaVirtualRepository.save(tiendaVirtualDB);
		return tiendaVirtualDB;
	}

	@Override
	public TiendaVirtual deleteTiendaVirtual(TiendaVirtual tiendaVirtual) {
		TiendaVirtual tiendaVirtualDB=tiendaVirtualRepository.findByNumberId(tiendaVirtual.getId());
		if(tiendaVirtualDB==null) {
			return null;
		}
		tiendaVirtualRepository.delete(tiendaVirtualDB);
		return tiendaVirtualDB;
	}

	@Override
	public TiendaVirtual getTiendaVirtual(Integer id) {
		TiendaVirtual tiendaVirtualDB=tiendaVirtualRepository.findByNumberId(id);
		if(tiendaVirtualDB==null) {
			return null;
		}
		return tiendaVirtualDB;
	}
}
