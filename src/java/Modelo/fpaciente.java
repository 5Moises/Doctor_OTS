/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author Desarrollo2
 */
public class fpaciente {

    private int Id_Paciente;
    private String DOCI;
    private String descripDoc;
    private String Nombre;
    private String Direccion;
    private String FechaNacimiento;
    private String Edad;
    private String Sexo;
    private int idCiudades;
     private String Pais; 
    private String Ciudad; 
    private String email;
    private String Telefono;
    private int Id_Titular;
    private String NombreTitular;
    private String DocTitular;
    private String Parentesco;
    private int Id_Ocupacion;
    private String Ocupacion;
    private int Id_EstadoCivil;
    private String EstadoCivil;
    private int Id_GradoIntruccion;
    private String GradoIntruccion;
    private String FechaRegistro;

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    public String getDescripDoc() {
        return descripDoc;
    }

    public void setDescripDoc(String descripDoc) {
        this.descripDoc = descripDoc;
    }
    
    public String getFechaRegistro() {
        return FechaRegistro;
    }

    public void setFechaRegistro(String FechaRegistro) {
        this.FechaRegistro = FechaRegistro;
    }    
    
    public String getDocTitular() {
        return DocTitular;
    }

    public void setDocTitular(String DocTitular) {
        this.DocTitular = DocTitular;
    }
    
    public String getPais() {
        return Pais;
    }

    public void setPais(String Pais) {
        this.Pais = Pais;
    }

    
    public String getCiudad() {
        return Ciudad;
    }

    public void setCiudad(String Ciudad) {
        this.Ciudad = Ciudad;
    }

    public String getNombreTitular() {
        return NombreTitular;
    }

    public void setNombreTitular(String NombreTitular) {
        this.NombreTitular = NombreTitular;
    }

    public String getOcupacion() {
        return Ocupacion;
    }

    public void setOcupacion(String Ocupacion) {
        this.Ocupacion = Ocupacion;
    }

    public String getEstadoCivil() {
        return EstadoCivil;
    }

    public void setEstadoCivil(String EstadoCivil) {
        this.EstadoCivil = EstadoCivil;
    }

    public String getGradoIntruccion() {
        return GradoIntruccion;
    }

    public void setGradoIntruccion(String GradoIntruccion) {
        this.GradoIntruccion = GradoIntruccion;
    }
    
    
    public int getId_Paciente() {
        return Id_Paciente;
    }

    public void setId_Paciente(int Id_Paciente) {
        this.Id_Paciente = Id_Paciente;
    }

    public String getDOCI() {
        return DOCI;
    }

    public void setDOCI(String DOCI) {
        this.DOCI = DOCI;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public String getFechaNacimiento() {
        return FechaNacimiento;
    }

    public void setFechaNacimiento(String FechaNacimiento) {
        this.FechaNacimiento = FechaNacimiento;
    }

    public String getEdad() {
        return Edad;
    }

    public void setEdad(String Edad) {
        this.Edad = Edad;
    }

    public String getSexo() {
        return Sexo;
    }

    public void setSexo(String Sexo) {
        this.Sexo = Sexo;
    }

    public int getIdCiudades() {
        return idCiudades;
    }

    public void setIdCiudades(int idCiudades) {
        this.idCiudades = idCiudades;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getId_Titular() {
        return Id_Titular;
    }

    public void setId_Titular(int Id_Titular) {
        this.Id_Titular = Id_Titular;
    }

    public String getParentesco() {
        return Parentesco;
    }

    public void setParentesco(String Parentesco) {
        this.Parentesco = Parentesco;
    }

    public int getId_Ocupacion() {
        return Id_Ocupacion;
    }

    public void setId_Ocupacion(int Id_Ocupacion) {
        this.Id_Ocupacion = Id_Ocupacion;
    }

    public int getId_EstadoCivil() {
        return Id_EstadoCivil;
    }

    public void setId_EstadoCivil(int Id_EstadoCivil) {
        this.Id_EstadoCivil = Id_EstadoCivil;
    }

    public int getId_GradoIntruccion() {
        return Id_GradoIntruccion;
    }

    public void setId_GradoIntruccion(int Id_GradoIntruccion) {
        this.Id_GradoIntruccion = Id_GradoIntruccion;
    }

}
