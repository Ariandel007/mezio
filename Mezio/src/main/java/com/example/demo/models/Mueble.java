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
//@AllArgsConstructor
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
    
    public Mueble(Integer id, String nombre, Double alto, Double largo, Double ancho, String descripcion, String imagen,
			String icono, SubCategoria subCategoria, TiendaVirtual tiendaVirtual, String estilo, String url,
			List<MueblePlantilla> mueblePlantillas) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.alto = alto;
		this.largo = largo;
		this.ancho = ancho;
		this.descripcion = descripcion;
		this.imagen = imagen;
		this.icono = icono;
		this.subCategoria = subCategoria;
		this.tiendaVirtual = tiendaVirtual;
		this.estilo = estilo;
		this.url = url;
		this.mueblePlantillas = mueblePlantillas;
	}


	public Mueble() {
		super();
	}


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


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public Double getAlto() {
		return alto;
	}


	public void setAlto(Double alto) {
		this.alto = alto;
	}


	public Double getLargo() {
		return largo;
	}


	public void setLargo(Double largo) {
		this.largo = largo;
	}


	public Double getAncho() {
		return ancho;
	}


	public void setAncho(Double ancho) {
		this.ancho = ancho;
	}


	public String getDescripcion() {
		return descripcion;
	}


	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}


	public String getImagen() {
		return imagen;
	}


	public void setImagen(String imagen) {
		this.imagen = imagen;
	}


	public String getIcono() {
		return icono;
	}


	public void setIcono(String icono) {
		this.icono = icono;
	}


	public SubCategoria getSubCategoria() {
		return subCategoria;
	}


	public void setSubCategoria(SubCategoria subCategoria) {
		this.subCategoria = subCategoria;
	}


	public TiendaVirtual getTiendaVirtual() {
		return tiendaVirtual;
	}


	public void setTiendaVirtual(TiendaVirtual tiendaVirtual) {
		this.tiendaVirtual = tiendaVirtual;
	}


	public String getEstilo() {
		return estilo;
	}


	public void setEstilo(String estilo) {
		this.estilo = estilo;
	}


	public String getUrl() {
		return url;
	}


	public void setUrl(String url) {
		this.url = url;
	}


	public List<MueblePlantilla> getMueblePlantillas() {
		return mueblePlantillas;
	}


	public void setMueblePlantillas(List<MueblePlantilla> mueblePlantillas) {
		this.mueblePlantillas = mueblePlantillas;
	}

    
}
