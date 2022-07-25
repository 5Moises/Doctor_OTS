/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Desarrollo2
 */
public class DAOfmedicos {

    Connection Conexion = conexion.getConnection();
    ResultSet rs, rs2;
    private int ResultadoConsulta;
    private boolean ExitoConsulta = false;

    public List MostrarMedicos(int seccion) {
        ArrayList<fmedicos> DatosMedico = new ArrayList<>();
        int id_TipoPro;
        PreparedStatement ps2, ps;
        try {
            if (seccion == 1) {
                ps = Conexion.prepareStatement(" SELECT * FROM fmedicos");
            } else {
                ps = Conexion.prepareStatement(" SELECT * FROM fmedicos inner JOIN detalleespecialidad on fmedicos.Id_Medico = detalleespecialidad.Id_Medico");
            }

            rs = ps.executeQuery();
            while (rs.next()) {
                fmedicos Medicos = new fmedicos();
                Medicos.setId_Medico(rs.getInt(1));
                Medicos.setNro_Colegiatura(rs.getString(2));
                Medicos.setNombre(rs.getString(3));
                Medicos.setFechaNacimiento(rs.getString(4));
                Medicos.setDNI(rs.getString(5));
                Medicos.setDireccion(rs.getString(6));
                Medicos.setTelefono(rs.getString(7));
                Medicos.setEmail(rs.getString(8));                
                id_TipoPro = rs.getInt(9);
                ps2 = Conexion.prepareStatement("SELECT Descripcion from tipoprofecional where Id_Pro = ?");
                ps2.setInt(1, id_TipoPro);
                rs2 = ps2.executeQuery();
                if (rs2.next()) {
                    Medicos.setDescripcion(rs2.getString(1));
                }                          
                DatosMedico.add(Medicos);
            }
        } catch (Exception Ex) {
        }
        return DatosMedico;
    }

    public List MostrarMedicosPorEspecialidad(int id_especialidad) throws SQLException {
        ArrayList<fmedicos> DatosMedico = new ArrayList<>();
       
        PreparedStatement ps;

        ps = Conexion.prepareStatement("SELECT * FROM fmedicos INNER JOIN detalleespecialidad on fmedicos.Id_Medico = detalleespecialidad.Id_Medico where detalleespecialidad.id_servicio= ?");
          ps.setInt(1, id_especialidad);
        rs = ps.executeQuery();
        while (rs.next()) {
            fmedicos Medicos = new fmedicos();
            Medicos.setId_Medico(rs.getInt(1));           
            Medicos.setNombre(rs.getString(3));        
            DatosMedico.add(Medicos);
        }    
    return DatosMedico ;
}
      public List MostrartipoP(int id_especialidad) throws SQLException {
        ArrayList<fmedicos> DatosMedico = new ArrayList<>();       
        PreparedStatement ps;
        ps = Conexion.prepareStatement("SELECT *  from tipoprofecional");         
        rs = ps.executeQuery();
        while (rs.next()) {
            fmedicos Medicos = new fmedicos();
            Medicos.setId_TipoPro(rs.getInt(1));           
            Medicos.setDescripcion(rs.getString(2));        
            DatosMedico.add(Medicos);
        }    
    return DatosMedico ;
}
}
