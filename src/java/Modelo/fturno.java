/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author Desarrollo2
 */
public class fturno {

    private int Id_Turno;
    private int Id_Medico;
    private String NombreMedico;
    private String CMP;
    private String Servicio;
    private int Estado;
    private int Id_Consultorios;
    private String Consultorios;
    private String Hora_I;
    private String Horal_F;
    private String Dias;
    private String[] DiasIs;
    private String Tiempo;

    public String getTiempo() {
        return Tiempo;
    }

    public void setTiempo(String Tiempo) {
        this.Tiempo = Tiempo;
    }

    public String[] getDiasIs() {
        return DiasIs;
    }

    public void setDiasIs(String[] DiasIs) {
        this.DiasIs = DiasIs;
    }

    public int getId_Turno() {
        return Id_Turno;
    }

    public void setId_Turno(int Id_Turno) {
        this.Id_Turno = Id_Turno;
    }

    public int getId_Medico() {
        return Id_Medico;
    }

    public void setId_Medico(int Id_Medico) {
        this.Id_Medico = Id_Medico;
    }

    public String getNombreMedico() {
        return NombreMedico;
    }

    public void setNombreMedico(String NombreMedico) {
        this.NombreMedico = NombreMedico;
    }

    public String getCMP() {
        return CMP;
    }

    public void setCMP(String CMP) {
        this.CMP = CMP;
    }

    public String getServicio() {
        return Servicio;
    }

    public void setServicio(String Servicio) {
        this.Servicio = Servicio;
    }

    public int getEstado() {
        return Estado;
    }

    public void setEstado(int Estado) {
        this.Estado = Estado;
    }

    public int getId_Consultorios() {
        return Id_Consultorios;
    }

    public void setId_Consultorios(int Id_Consultorios) {
        this.Id_Consultorios = Id_Consultorios;
    }

    public String getConsultorios() {
        return Consultorios;
    }

    public void setConsultorios(String Consultorios) {
        this.Consultorios = Consultorios;
    }

    public String getHora_I() {
        return Hora_I;
    }

    public void setHora_I(String Hora_I) {
        this.Hora_I = Hora_I;
    }

    public String getHoral_F() {
        return Horal_F;
    }

    public void setHoral_F(String Horal_F) {
        this.Horal_F = Horal_F;
    }

    public String getDias() {
        return Dias;
    }

    public void setDias(String Dias) {
        this.Dias = Dias;
    }
}
