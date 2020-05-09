package com.example.demo.services;

import java.util.List;

import com.example.demo.models.TiendaVirtual;

public interface TiendaVirtualService {

	List<TiendaVirtual> findTiendaVirtualAll();
	
	TiendaVirtual createTiendaVirtual(TiendaVirtual tiendaVirtual);
	TiendaVirtual updateTiendaVirtual(TiendaVirtual tiendaVirtual);
	TiendaVirtual deleteTiendaVirtual(TiendaVirtual tiendaVirtual);
	
	TiendaVirtual getTiendaVirtual(Integer id);
}
