/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author Desarrollo2
 */
public class fcitas {

    private int id_Cita;
    private int id_Historia;
    private int Id_Turno;
    private String HoraAtencion;
    private String Paciente;
    private String Consultorio;
    private String FechaAtencion;
    private String Estado;
    private String Observaciones;
    private String Tiempo;
    private String horaI;
    private String horaf;

    public String getHoraI() {
        return horaI;
    }

    public void setHoraI(String horaI) {
        this.horaI = horaI;
    }

    public String getHoraf() {
        return horaf;
    }

    public void setHoraf(String horaf) {
        this.horaf = horaf;
    }

    public String getTiempo() {
        return Tiempo;
    }

    public void setTiempo(String Tiempo) {
        this.Tiempo = Tiempo;
    }

    public String getPaciente() {
        return Paciente;
    }

    public void setPaciente(String Paciente) {
        this.Paciente = Paciente;
    }

    public String getConsultorio() {
        return Consultorio;
    }

    public void setConsultorio(String Consultorio) {
        this.Consultorio = Consultorio;
    }

    public int getId_Cita() {
        return id_Cita;
    }

    public void setId_Cita(int id_Cita) {
        this.id_Cita = id_Cita;
    }

    public int getId_Historia() {
        return id_Historia;
    }

    public void setId_Historia(int id_Historia) {
        this.id_Historia = id_Historia;
    }

    public int getId_Turno() {
        return Id_Turno;
    }

    public void setId_Turno(int Id_Turno) {
        this.Id_Turno = Id_Turno;
    }

    public String getHoraAtencion() {
        return HoraAtencion;
    }

    public void setHoraAtencion(String HoraAtencion) {
        this.HoraAtencion = HoraAtencion;
    }

    public String getFechaAtencion() {
        return FechaAtencion;
    }

    public void setFechaAtencion(String FechaAtencion) {
        this.FechaAtencion = FechaAtencion;
    }

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    }

    public String getObservaciones() {
        return Observaciones;
    }

    public void setObservaciones(String Observaciones) {
        this.Observaciones = Observaciones;
    }

}
