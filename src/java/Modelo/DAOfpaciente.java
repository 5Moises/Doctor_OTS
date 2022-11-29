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
public class DAOfpaciente {

    Connection Conexion = conexion.getConnection();
    ResultSet rs;
    private int ResultadoConsulta;
    private boolean ExitoConsulta = false;

    public List MostrarPacientes() {
        ArrayList<fpaciente> DatosPaciente = new ArrayList<>();
        try {
            PreparedStatement ps = Conexion.prepareStatement(" SELECT\n"
                    + "    fpaciente.Id_Paciente,\n"
                    + "    detaletipodocident.NroDoc,\n"
                    + "    fpaciente.Nombre,\n"
                    + "    fpaciente.Direccion,\n"
                    + "    fpaciente.FechaNacimiento,\n"
                    + "    fpaciente.Edad,\n"
                    + "    fpaciente.Sexo,\n"
                    + "    paises.Pais,\n"
                    + "    ciudades.Ciudad,\n"
                    + "    fpaciente.email,\n"
                    + "    ftitular.Nombre AS TITULAR,\n"
                    + "    fpaciente.Parentesco,\n"
                    + "    ocupacion.Descripcion,\n"
                    + "    estadocivil.Descripcion,\n"
                    + "    gradointruccion.Descripcion\n"
                    + "FROM\n"
                    + "    fpaciente\n"
                    + "INNER JOIN ciudades ON fpaciente.idCiudades = ciudades.idCiudades\n"
                    + "INNER JOIN paises ON ciudades.Codigo = paises.Codigo\n"
                    + "INNER JOIN ftitular ON ftitular.Id_Titular = fpaciente.Id_Titular\n"
                    + "INNER JOIN ocupacion ON ocupacion.Id_Ocupacion = fpaciente.Id_Ocupacion\n"
                    + "INNER JOIN estadocivil ON estadocivil.Id_EstadoCivil = fpaciente.Id_EstadoCivil\n"
                    + "INNER JOIN gradointruccion ON gradointruccion.Id_GradoIntruccion = fpaciente.Id_GradoIntruccion\n"
                    + "INNER join detaletipodocident on fpaciente.Id_Paciente = detaletipodocident.Id_Paciente");
            rs = ps.executeQuery();
            while (rs.next()) {
                fpaciente Pacientes = new fpaciente();
                Pacientes.setId_Paciente(rs.getInt(1));
                Pacientes.setDOCI(rs.getString(2));
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

    public List MostrarPais() {
        ArrayList<fubicacion> DatosPais = new ArrayList<>();
        try {
            PreparedStatement ps = Conexion.prepareStatement(" SELECT * FROM paises");
            rs = ps.executeQuery();
            while (rs.next()) {
                fubicacion Pais = new fubicacion();
                Pais.setId_Pais(rs.getString(1));
                Pais.setPais(rs.getString(2));

                DatosPais.add(Pais);
            }
        } catch (Exception Ex) {
        }
        return DatosPais;
    }

    public List MostrarDepartemento(String id_pais) {
        ArrayList<fubicacion> DatosDepar = new ArrayList<>();
        try {
            PreparedStatement ps = Conexion.prepareStatement(" SELECT idCiudades, Ciudad  FROM ciudades where Codigo = ? ");
            ps.setString(1, id_pais);
            rs = ps.executeQuery();
            while (rs.next()) {
                fubicacion Departamento = new fubicacion();
                Departamento.setId_Departamento(rs.getString(1));
                Departamento.setDepartamento(rs.getString(2));

                DatosDepar.add(Departamento);
            }
        } catch (Exception Ex) {
        }
        return DatosDepar;
    }

    public List MostrarOcupacion() {
        ArrayList<fpaciente> DatosOr = new ArrayList<>();
        try {
            PreparedStatement ps = Conexion.prepareStatement(" SELECT * FROM ocupacion");
            rs = ps.executeQuery();
            while (rs.next()) {
                fpaciente Ocupacion = new fpaciente();
                Ocupacion.setId_Ocupacion(rs.getInt(1));
                Ocupacion.setOcupacion(rs.getString(2));
                DatosOr.add(Ocupacion);
            }
        } catch (Exception Ex) {
        }
        return DatosOr;
    }

    public List MostrarEstadoC() {
        ArrayList<fpaciente> DatosEs = new ArrayList<>();
        try {
            PreparedStatement ps = Conexion.prepareStatement(" SELECT * FROM estadocivil ");
            rs = ps.executeQuery();
            while (rs.next()) {
                fpaciente DatosOr = new fpaciente();
                DatosOr.setId_EstadoCivil(rs.getInt(1));
                DatosOr.setEstadoCivil(rs.getString(2));
                DatosEs.add(DatosOr);
            }
        } catch (Exception Ex) {
        }
        return DatosEs;
    }

    public List MostrarGradoI() {
        ArrayList<fpaciente> DatosGr = new ArrayList<>();
        try {
            PreparedStatement ps = Conexion.prepareStatement(" SELECT * FROM gradointruccion");
            rs = ps.executeQuery();
            while (rs.next()) {
                fpaciente GradoI = new fpaciente();
                GradoI.setId_GradoIntruccion(rs.getInt(1));
                GradoI.setGradoIntruccion(rs.getString(2));
                DatosGr.add(GradoI);
            }
        } catch (Exception Ex) {
        }
        return DatosGr;
    }

    public String BuscaPaciente(fpaciente DNI) {
        fpaciente Pacientes = new fpaciente();
        try {
            PreparedStatement ps = Conexion.prepareStatement("SELECT fpaciente.Nombre FROM fpaciente INNER join detaletipodocident on fpaciente.Id_Paciente = detaletipodocident.Id_Paciente where NroDoc = ? ");
            ps.setString(1, DNI.getDOCI());
            rs = ps.executeQuery();
            while (rs.next()) {
                Pacientes.setNombre(rs.getString(1));
            }
        } catch (Exception Ex) {
        }
        return Pacientes.getNombre();
    }

    public boolean RegistrarPaciente(fpaciente DatosPersona) {
        int id_Titular = 0;
        int id_Paciente = 0;
        int id_Doc = 0;
        try {
            PreparedStatement ps4 = Conexion.prepareStatement("INSERT INTO ftitular(Nombre, DocT) VALUES (?,?)");
            ps4.setString(1, DatosPersona.getNombreTitular());
            ps4.setString(2, DatosPersona.getDocTitular());
            ResultadoConsulta = ps4.executeUpdate();
            PreparedStatement ps = Conexion.prepareStatement("SELECT Id_Titular from ftitular where DocT = ? ");
            ps.setString(1, DatosPersona.getDocTitular());
            rs = ps.executeQuery();
            while (rs.next()) {
                id_Titular = (rs.getInt(1));
            }
            PreparedStatement ps2 = Conexion.prepareStatement("INSERT INTO fpaciente(Nombre,Direccion,FechaNacimiento,Edad,Sexo,idCiudades,email, Id_Titular,Parentesco,Id_Ocupacion,Id_EstadoCivil,Id_GradoIntruccion) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)");
            ps2.setString(1, DatosPersona.getNombre());
            ps2.setString(2, DatosPersona.getDireccion());
            ps2.setString(3, DatosPersona.getFechaNacimiento());
            ps2.setString(4, DatosPersona.getEdad());
            ps2.setString(5, DatosPersona.getSexo());
            ps2.setInt(6, DatosPersona.getIdCiudades());
            ps2.setString(7, DatosPersona.getEmail());
            ps2.setInt(8, id_Titular);
            ps2.setString(9, DatosPersona.getParentesco());
            ps2.setInt(10, DatosPersona.getId_Ocupacion());
            ps2.setInt(11, DatosPersona.getId_EstadoCivil());
            ps2.setInt(12, DatosPersona.getId_GradoIntruccion());
            ResultadoConsulta = ps2.executeUpdate();
            //Obtener ID_PACIENTE
            PreparedStatement ps3 = Conexion.prepareStatement("SELECT Id_Paciente from fpaciente order by Id_Paciente desc limit 1");
            rs = null;
            rs = ps3.executeQuery();
            while (rs.next()) {
                id_Paciente = (rs.getInt(1));
            }
            //Historia
            PreparedStatement ps5 = Conexion.prepareStatement("INSERT INTO fhistoria_c(Id_Paciente, FechaIngreso) VALUES (?,?)");
            ps5.setInt(1, id_Paciente);
            ps5.setString(2, DatosPersona.getFechaRegistro());
            ResultadoConsulta = ps5.executeUpdate();
            //Documento
            PreparedStatement ps6 = Conexion.prepareStatement("SELECT Id_DocI from ftipodocident where Descripcion = ?");
            ps6.setString(1, DatosPersona.getDescripDoc());
            rs = null;
            rs = ps6.executeQuery();
            while (rs.next()) {
                id_Doc = (rs.getInt(1));
            }
            //Detalle
            PreparedStatement ps7 = Conexion.prepareStatement("INSERT INTO detaletipodocident(Id_DocI, Id_Paciente, NroDoc) VALUES (?,?,?)");
            ps7.setInt(1, id_Doc);
            ps7.setInt(2, id_Paciente);
            ps7.setString(3, DatosPersona.getDOCI());
            ResultadoConsulta = ps7.executeUpdate();
            //Telefono
            if (DatosPersona.getTelefono() != null) {
                PreparedStatement ps8 = Conexion.prepareStatement("INSERT INTO telefono(Id_Paciente, NroTelefono) VALUES (?,?)");
                ps8.setInt(1, id_Paciente);
                ps8.setString(2, DatosPersona.getTelefono());
                ResultadoConsulta = ps8.executeUpdate();
            }

        } catch (SQLException ex) {
            Logger.getLogger(DAOfpaciente.class.getName()).log(Level.SEVERE, null, ex);
        }
        if (ResultadoConsulta > 0) {
            ExitoConsulta = true;
        } else {
            ExitoConsulta = false;
        }
        return ExitoConsulta;
    }

}
