/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Desarrollo2
 */
public class DAOfturno {

    Connection Conexion = conexion.getConnection();
    ResultSet rs, rs2, rs3;
    private int ResultadoConsulta;
    private boolean ExitoConsulta = false;
    fturno Turnos2 = new fturno();

    public List MostrarTurnos() {
        ArrayList<fturno> DatosConsultorio = new ArrayList<>();
        try {
                PreparedStatement ps = Conexion.prepareStatement(" SELECT turno.Id_Turno,fmedicos.Nombre,fservicios.NOMB, fconsultorios.Descripcion, turno.Hora_I, turno.Horal_F, turno.Estado FROM turno \n"
                    + "INNER JOIN fmedicos on turno.Id_Medico = fmedicos.Id_Medico \n"
                    + "INNER JOIN fconsultorios on turno.Id_Consultorios = fconsultorios.Id_Consultorios\n"
                    + "INNER JOIN detalleespecialidad on fmedicos.Id_Medico = detalleespecialidad.Id_Medico\n"
                    + "INNER JOIN fservicios on detalleespecialidad.id_servicio = fservicios.id_servicio");
            rs = ps.executeQuery();
            while (rs.next()) {
                fturno Turnos = new fturno();
                Turnos.setId_Turno(rs.getInt(1));
                Turnos.setNombreMedico(rs.getString(2));
                Turnos.setServicio(rs.getString(3));
                Turnos.setConsultorios(rs.getString(4));
                Turnos.setHora_I(rs.getString(5));
                Turnos.setHoral_F(rs.getString(6));
                Turnos.setEstado(rs.getInt(7));
                DatosConsultorio.add(Turnos);
            }
        } catch (Exception Ex) {
        }
        return DatosConsultorio;
    }

    public List MostrarDias(int id_turno) {
        ArrayList<fturno> DatosDias = new ArrayList<>();
        try {
            PreparedStatement ps = Conexion.prepareStatement("SELECT fdias.dia from fdias inner JOIN detalleturno on fdias.Id_Dias = detalleturno.Id_Dias INNER JOIN turno on detalleturno.Id_Turno = turno.Id_Turno where turno.Id_Turno=?");
            ps.setInt(1, id_turno);
            rs = ps.executeQuery();
            while (rs.next()) {
                fturno Turnos2 = new fturno();
                Turnos2.setDias(rs.getString(1));
                DatosDias.add(Turnos2);
            }
        } catch (Exception Ex) {
        }
        return DatosDias;
    }

    public boolean RegistrarTurno(fturno DatosTurnos) throws SQLException, IOException {

        PreparedStatement ps = Conexion.prepareStatement("SELECT Id_Medico FROM fmedicos WHERE Nombre = ?");
        String Medico = DatosTurnos.getNombreMedico().trim();
        ps.setString(1, Medico); 
         rs = ps.executeQuery();
        while (rs.next()) {
            Turnos2.setId_Medico(rs.getInt(1));
        }
        PreparedStatement ps2 = Conexion.prepareStatement("SELECT Id_Consultorios FROM fconsultorios where Descripcion = ?");
        ps2.setString(1, DatosTurnos.getConsultorios());
         rs2 = ps2.executeQuery();
        while (rs2.next()) {
            Turnos2.setId_Consultorios(rs2.getInt(1));
        }
        PreparedStatement ps4 = Conexion.prepareStatement("INSERT INTO turno(Id_Medico, Id_Consultorios, Hora_I, Horal_F,Tiempo, Estado) VALUES (?,?,?,?,?,1)");
        ps4.setInt(1, Turnos2.getId_Medico());
        ps4.setInt(2, Turnos2.getId_Consultorios());
        ps4.setString(3, DatosTurnos.getHora_I());
        ps4.setString(4, DatosTurnos.getHoral_F());
        ps4.setString(5, DatosTurnos.getTiempo());
        ResultadoConsulta = ps4.executeUpdate();

        PreparedStatement ps3 = Conexion.prepareStatement("SELECT Id_Turno FROM turno where Id_Medico = ? and Id_Consultorios = ? and Hora_I = ? and Horal_F = ? and Tiempo = ?");
        ps3.setInt(1, Turnos2.getId_Medico());
        ps3.setInt(2, Turnos2.getId_Consultorios());
        ps3.setString(3, DatosTurnos.getHora_I());
        ps3.setString(4, DatosTurnos.getHoral_F());
        ps3.setString(5, DatosTurnos.getTiempo());
           rs3 = ps3.executeQuery();
        while (rs3.next()) {
            Turnos2.setId_Turno(rs3.getInt(1));
        }
        PreparedStatement ps5;
        int id_turno = Turnos2.getId_Turno();
        for (int i = 0; i < DatosTurnos.getDiasIs().length; i++) {
            ps5 = Conexion.prepareStatement("INSERT INTO detalleturno(Id_Turno , Id_Dias) VALUES (?,?)");
            ps5.setInt(1, id_turno);
            ps5.setString(2, DatosTurnos.getDiasIs()[i]);
            ps5.executeUpdate();
        }

        if (ResultadoConsulta > 0) {
            ExitoConsulta = true;

        } else {
            ExitoConsulta = false;
        }

        return ExitoConsulta;
    }

}
