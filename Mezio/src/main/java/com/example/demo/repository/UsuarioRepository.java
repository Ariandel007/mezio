package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.models.Categoria;
import com.example.demo.models.Usuario;

public interface UsuarioRepository extends JpaRepository<Usuario,Integer> {

    @Query(value="select from usuario where id=?1",nativeQuery = true)
	Usuario findByNumberId(Integer id);
}
