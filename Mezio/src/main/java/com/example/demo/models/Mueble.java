package com.example.demo.models;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Mueble {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String nombre;
    
    private Double alto;
    
    private Double largo;

    private Double ancho;

    private String descripcion;
    
    private String imagen;

    private String icono;
    
    @ManyToOne
    @JoinColumn(name="id_SubCategoria")
    private SubCategoria subCategoria;
    
    @ManyToOne
    @JoinColumn(name="id_TiendaVirtual")
    private TiendaVirtual tiendaVirtual;
    
    private String estilo;

    private String url;
    
    
    @OneToMany(mappedBy = "mueble")
    List<MueblePlantilla> mueblePlantillas;

    
}
