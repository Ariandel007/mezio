package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.models.Categoria;
import com.example.demo.models.TiendaVirtual;


public interface TiendaVirtualRepository extends JpaRepository<TiendaVirtual,Integer> {

    @Query(value="select from tienda_virtual where id=?1",nativeQuery = true)
	TiendaVirtual findByNumberId(Integer id);
}
