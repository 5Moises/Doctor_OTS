/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author Desarrollo2
 */
public class fdiagnostico {
    private int Id_Diagnosticos;
    private String Codigo;
    private String Descripcion;

    public int getId_Diagnosticos() {
        return Id_Diagnosticos;
    }

    public void setId_Diagnosticos(int Id_Diagnosticos) {
        this.Id_Diagnosticos = Id_Diagnosticos;
    }

    public String getCodigo() {
        return Codigo;
    }

    public void setCodigo(String Codigo) {
        this.Codigo = Codigo;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }
}
