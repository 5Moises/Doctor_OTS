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
public class DAOfcitas {

    Connection Conexion = conexion.getConnection();
    ResultSet rs, rs2;
    private int ResultadoConsulta;
    private boolean ExitoConsulta = false;

    public List CondicionFecha(fturno DatosTurn, fmedicos DatoMed) throws SQLException {
        ArrayList<fturno> DatosCita = new ArrayList<>();
        PreparedStatement ps;
        ps = Conexion.prepareStatement("SELECT\n"
                + "    turno.Hora_I,\n"
                + "    turno.Horal_F,\n"
                + "    turno.Tiempo\n"
                + "FROM\n"
                + "    fdias\n"
                + "INNER JOIN detalleturno ON fdias.Id_Dias = detalleturno.Id_Dias\n"
                + "INNER JOIN turno ON detalleturno.Id_Turno = turno.Id_Turno\n"
                + "WHERE\n"
                + "    turno.Id_Medico = ? AND fdias.Id_Dias = ?");
        ps.setInt(1, DatoMed.getId_Medico());
        ps.setInt(2, Integer.parseInt(DatosTurn.getDias()));
        rs = ps.executeQuery();
        while (rs.next()) {
            fturno citas = new fturno();
            citas.setHora_I(rs.getString(1));
            citas.setHoral_F(rs.getString(2));
            citas.setTiempo(rs.getString(3));
            DatosCita.add(citas);
        }
        return DatosCita;
    }

    public boolean RegistrarCita(fcitas DatoCita) throws SQLException {

        PreparedStatement ps = Conexion.prepareStatement("INSERT INTO camiones(Placa, Marca, Certificado, Config_Vehicular, Carga_Max, Estado) VALUES (?,?,?,?,?,1)");

        /*   ps4.setString(1, DatosCamion.getPlaca());
        ps4.setString(2, DatosCamion.getMarca());
        ps4.setString(3, DatosCamion.getCertificado());
        ps4.setString(4, DatosCamion.getConfig_vehicular());
        ps4.setString(5, DatosCamion.getCarga_max());

        ResultadoConsulta = ps4.executeUpdate();*/
        if (ResultadoConsulta > 0) {
            ExitoConsulta = true;

        } else {
            ExitoConsulta = false;
        }

        return ExitoConsulta;
    }
}
