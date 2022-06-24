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

/**
 *
 * @author Desarrollo2
 */
public class DAOfservicios {

    Connection Conexion = conexion.getConnection();
    ResultSet rs;
    private int ResultadoConsulta;
    private boolean ExitoConsulta = false;
    

    public List MostrarServicios() {
        ArrayList<fservicios> DatosServicios = new ArrayList<>();
        try {
            PreparedStatement ps = Conexion.prepareStatement(" SELECT id_servicio, SERV, NOMB FROM fservicios");
            rs = ps.executeQuery();
            while (rs.next()) {
                fservicios servicios = new fservicios();
                servicios.setId_servicio(rs.getInt(1));
                servicios.setSERV(rs.getString(2));
                servicios.setNOMB(rs.getString(3));
                DatosServicios.add(servicios);
            }
        } catch (Exception Ex) {
        }
        return DatosServicios;
    }
}
