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
public class DAOfpaciente {

    Connection Conexion = conexion.getConnection();
    ResultSet rs;
    private int ResultadoConsulta;
    private boolean ExitoConsulta = false;

    public List MostrarPacientes() {
        ArrayList<fpaciente> DatosPaciente = new ArrayList<>();
        try {
            PreparedStatement ps = Conexion.prepareStatement(" SELECT fpaciente.Id_Paciente, fpaciente.NroHistoria,fpaciente.Nombre,fpaciente.Direccion, fpaciente.FechaNacimiento, fpaciente.Edad, fpaciente.Sexo, paises.Pais, ciudades.Ciudad, fpaciente.email,ftitular.Nombre as TITULAR, fpaciente.Parentesco, ocupacion.Descripcion, estadocivil.Descripcion, gradointruccion.Descripcion FROM fpaciente \n"
                    + "INNER JOIN ciudades on fpaciente.idCiudades = ciudades.idCiudades\n"
                    + "INNER JOIN paises on ciudades.Codigo = paises.Codigo \n"
                    + "INNER JOIN ftitular on ftitular.Id_Titular = fpaciente.Id_Titular\n"
                    + "INNER JOIN ocupacion on ocupacion.Id_Ocupacion = fpaciente.Id_Ocupacion\n"
                    + "INNER JOIN estadocivil on estadocivil.Id_EstadoCivil = fpaciente.Id_EstadoCivil\n"
                    + "INNER JOIN gradointruccion on gradointruccion.Id_GradoIntruccion = fpaciente.Id_GradoIntruccion");
            rs = ps.executeQuery();
            while (rs.next()) {
                fpaciente Pacientes = new fpaciente();
                Pacientes.setId_Paciente(rs.getInt(1));
                Pacientes.setNroHistoria(rs.getString(2));
                Pacientes.setNombre(rs.getString(3));
                Pacientes.setDireccion(rs.getString(4));
                Pacientes.setFechaNacimiento(rs.getString(5));
                Pacientes.setEdad(rs.getString(6));
                Pacientes.setSexo(rs.getString(7));
                Pacientes.setPais(rs.getString(8));
                Pacientes.setCiudad(rs.getString(9));
                Pacientes.setEmail(rs.getString(10));
                Pacientes.setNombreTitular(rs.getString(11));
                Pacientes.setParentesco(rs.getString(12));
                Pacientes.setOcupacion(rs.getString(13));
                Pacientes.setEstadoCivil(rs.getString(14));
                Pacientes.setGradoIntruccion(rs.getString(15));
                DatosPaciente.add(Pacientes);
            }
        } catch (Exception Ex) {
        }
        return DatosPaciente;
    }
}
