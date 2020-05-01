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

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Plantilla getPlantilla() {
		return plantilla;
	}

	public void setPlantilla(Plantilla plantilla) {
		this.plantilla = plantilla;
	}

	public Mueble getMueble() {
		return mueble;
	}

	public void setMueble(Mueble mueble) {
		this.mueble = mueble;
	}

	public Integer getRotacion() {
		return rotacion;
	}

	public void setRotacion(Integer rotacion) {
		this.rotacion = rotacion;
	}

	public Integer getCoordX() {
		return coordX;
	}

	public void setCoordX(Integer coordX) {
		this.coordX = coordX;
	}

	public Integer getCoordY() {
		return coordY;
	}

	public void setCoordY(Integer coordY) {
		this.coordY = coordY;
	}

}