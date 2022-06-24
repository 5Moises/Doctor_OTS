/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Desarrollo2
 */
public class DAOfdiagnostico {
     Connection Conexion = conexion.getConnection();
    ResultSet rs, rs2;
    private int ResultadoConsulta;
    private boolean ExitoConsulta = false;

    public List MostrarDIagnosticos() {
        ArrayList<fdiagnostico> DatosDiagnostico = new ArrayList<>();
        int id_TipoPro;
        PreparedStatement ps2;
        try {
            PreparedStatement ps = Conexion.prepareStatement(" SELECT * FROM fdiagnosticos limit 100");
            rs = ps.executeQuery();
            while (rs.next()) {
                fdiagnostico Diagnostico = new fdiagnostico();
                Diagnostico.setId_Diagnosticos(rs.getInt(1));
                Diagnostico.setCodigo(rs.getString(2));
                Diagnostico.setDescripcion(rs.getString(3));            
                DatosDiagnostico.add(Diagnostico);
            }
        } catch (Exception Ex) {
        }
        return DatosDiagnostico;
    }
}
