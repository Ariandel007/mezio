package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.models.Mueble;
import com.example.demo.models.SubCategoria;
import com.example.demo.models.TiendaVirtual;

@Repository
public interface MuebleRepository extends JpaRepository<Mueble,Integer> {

	List<Mueble> findBySubCategoria(SubCategoria subCategoria);
	List<Mueble> findByTiendaVirtual(TiendaVirtual tiendavirtual);
	
    @Query(value="select from mueble where id=?1",nativeQuery = true)
	Mueble findByNumberId(Integer id);
}
