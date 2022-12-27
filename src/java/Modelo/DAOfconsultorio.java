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
 * @author Moises
 */
public class DAOfconsultorio {
    Connection Conexion = conexion.getConnection();
    ResultSet rs;
    private int ResultadoConsulta;
    private boolean ExitoConsulta = false;
    

    public List MostrarConsultorios() {
        ArrayList<fconsultorio> DatosConsultorio = new ArrayList<>();
        try {
            PreparedStatement ps = Conexion.prepareStatement(" SELECT * FROM fconsultorios limit 100");
            rs = ps.executeQuery();
            while (rs.next()) {
                fconsultorio consultorios = new fconsultorio();
                consultorios.setId_Consultorios(rs.getInt(1));
                consultorios.setDescripcion(rs.getString(2));
                consultorios.setEstado(rs.getString(3));
                DatosConsultorio.add(consultorios);
            }
        } catch (Exception Ex) {
        }
        return DatosConsultorio;
    }
}
