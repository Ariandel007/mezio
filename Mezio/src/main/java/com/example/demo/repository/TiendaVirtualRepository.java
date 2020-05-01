package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.models.Categoria;
import com.example.demo.models.TiendaVirtual;


public interface TiendaVirtualRepository extends JpaRepository<TiendaVirtual,Integer> {

	TiendaVirtual findByNumberId(Integer id);
}
