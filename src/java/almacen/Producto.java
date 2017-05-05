package almacen;


import java.io.Serializable;
import java.util.Date;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * 
 * @author Desarrollo Web
 */
public class Producto implements Serializable{
    private int id;
    private String nombreProducto;
    private String descripcion;
    private double precio;
    //private Date fechaEntrada;
/**
 * 
 * @param id
 * @param nombreProducto
 * @param descripcion
 * @param precio
 * @param fechaEntrada 
 */

    public Producto(int id, String nombreProducto, String descripcion, double precio) {
        this.id = id;
        this.nombreProducto = nombreProducto;
        this.descripcion = descripcion;
        this.precio = precio;
      //  this.fechaEntrada = fechaEntrada;
    }
    /**
     * 
     * @return 
     */
    public int getId() {
        return id;
    }
    /**
     * 
     * @param id 
     */
    public void setId(int id) {
        this.id = id;
    }
    /**
     * 
     * @return 
     */
    public String getNombreProducto() {
        return nombreProducto;
    }
    /**
     * 
     * @param nombreProducto 
     */
    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto = nombreProducto;
    }
    /**
     * 
     * @return 
     */
    public String getDescripcion() {
        return descripcion;
    }
    /**
     * 
     * @param descripcion 
     */
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    /**
     * 
     * @return 
     */
    public Double getPrecio() {
        return precio;
    }
    /**
     * 
     * @param precio 
     */
    public void setPrecio(Double precio) {
        this.precio = precio;
    }
    /**
     * 
     * @return 
     */
    //public Date getFechaEntrada() {
    //    return fechaEntrada;
    //}
    /**
     * 
     * @param fechaEntrada 
     */
   // public void setFechaEntrada(Date fechaEntrada) {
   //     this.fechaEntrada = fechaEntrada;
    //}
    
    
}
