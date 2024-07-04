package com.ar.backend.integrador;

public class Juego {
    private int id;
    private String nombre;
    private String desarrollador;
    private String descripcion;
    private String genero;
    private String plataforma;
    private String imagen;

    public Juego() {}

    public Juego(int id, String nombre, String desarrollador, String descripcion, String genero, String plataforma, String imagen) {
        this.id = id;
        this.nombre = nombre;
        this.desarrollador = desarrollador;
        this.descripcion = descripcion;
        this.genero = genero;
        this.plataforma = plataforma;
        this.imagen = imagen;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDesarrollador() {
        return desarrollador;
    }

    public void setDesarrollador(String desarrollador) {
        this.desarrollador = desarrollador;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getPlataforma() {
        return plataforma;
    }

    public void setPlataforma(String plataforma) {
        this.plataforma = plataforma;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }
}
