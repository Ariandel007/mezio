package com.example.demo.models;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class MueblePlantilla {

	
    @Id
    private Integer id;
 
    @ManyToOne
    @JoinColumn(name = "id_Plantilla")
    private Plantilla plantilla;
 
    @ManyToOne
    @JoinColumn(name = "id_Mueble")
    private Mueble mueble;
 
    private Integer rotacion;
    
    private Integer coordX;
    
    private Integer coordY;

}