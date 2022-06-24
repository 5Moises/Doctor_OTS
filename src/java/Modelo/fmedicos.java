/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author Desarrollo2
 */
public class fmedicos {
    private int Id_Medico;
    private String Nro_Colegiatura;
    private String Nombre;
    private String FechaNacimiento;
    private String DNI;
    private String Direccion;
    private String Telefono;
    private String Email;
    private String Descripcion;
    private int Especialidad;

    public int getEspecialidad() {
        return Especialidad;
    }

    public void setEspecialidad(int Especialidad) {
        this.Especialidad = Especialidad;
    }

    
    public int getId_Medico() {
        return Id_Medico;
    }

    public void setId_Medico(int Id_Medico) {
        this.Id_Medico = Id_Medico;
    }

    public String getNro_Colegiatura() {
        return Nro_Colegiatura;
    }

    public void setNro_Colegiatura(String Nro_Colegiatura) {
        this.Nro_Colegiatura = Nro_Colegiatura;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getFechaNacimiento() {
        return FechaNacimiento;
    }

    public void setFechaNacimiento(String FechaNacimiento) {
        this.FechaNacimiento = FechaNacimiento;
    }

    public String getDNI() {
        return DNI;
    }

    public void setDNI(String DNI) {
        this.DNI = DNI;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }
    
}
