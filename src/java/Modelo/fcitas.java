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
    private int HoraAtencion;
    private String FechaAtencion;
    private String Estado;
    private String Observaciones;

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

    public int getHoraAtencion() {
        return HoraAtencion;
    }

    public void setHoraAtencion(int HoraAtencion) {
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
