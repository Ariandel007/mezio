package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.models.Categoria;
import com.example.demo.models.Mueble;
import com.example.demo.models.TiendaVirtual;

@Repository
public interface MuebleRepository extends JpaRepository<Mueble,Integer> {

	List<Mueble> findByCategoria(Categoria categoria);
	List<Mueble> findByTiendaVirtual(TiendaVirtual tiendavirtual);
	Mueble findByNumberId(Integer id);
}
