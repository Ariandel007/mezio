package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.models.Paquete;
import com.example.demo.models.Usuario;



public interface PaqueteRepository extends JpaRepository<Paquete,Integer> {
	
	List<Paquete> findByUsuario(Usuario usuario);
	
    @Query(value="select * from paquete where id=?1",nativeQuery = true)
	Paquete findByNumberId(Integer id);
}
