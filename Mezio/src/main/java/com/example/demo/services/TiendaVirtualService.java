package com.example.demo.services;

import java.util.List;

import com.example.demo.models.TiendaVirtual;

public interface TiendaVirtualService {

	List<TiendaVirtual> findTiendaVirtualAll();
	
	TiendaVirtual createTiendaVirtual(TiendaVirtual TiendaVirtual);
	TiendaVirtual updateTiendaVirtual(TiendaVirtual TiendaVirtual);
	TiendaVirtual deleteTiendaVirtual(TiendaVirtual TiendaVirtual);
	
	TiendaVirtual getTiendaVirtual(Integer id);
}
