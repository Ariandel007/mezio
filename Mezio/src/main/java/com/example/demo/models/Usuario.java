package com.example.demo.models;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Usuario {
	
	@Id
	private Integer id;
	
	private String username;
	
	private String correo;
	
	private String password;
	
}
