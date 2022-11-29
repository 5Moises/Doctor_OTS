/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.DAOfpaciente;
import Modelo.fpaciente;
import Modelo.fubicacion;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Desarrollo2
 */
@WebServlet(name = "fpacienteServlet", urlPatterns = {"/fpacienteServlet"})
@MultipartConfig(maxFileSize = 16177216)//1.5mb
public class fpacienteServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String Consulta = request.getParameter("Consulta");
            String JSON;
            int aux = 0;
            int aux2 = 1;
            DAOfpaciente Ubicacion = new DAOfpaciente();
            switch (Consulta) {
                case "ResgistraP":
                    String FechaI = request.getParameter("FechInresotxts");
                    String DocI = request.getParameter("DNItxt");
                    String Nombre = request.getParameter("NombreCompleto");
                    String Direccion = request.getParameter("DireccionPaciente");
                    String FechaNacimiento = request.getParameter("FechNaciPaciente");
                    String Sexo = request.getParameter("SexoPaciente");
                    String Pais = request.getParameter("Pais");
                    String año = request.getParameter("FechNaciPaciente").substring(0,4).trim();
                    String Departamento = request.getParameter("Departamento");
                    String Telefonotxt = request.getParameter("Telefonotxt");
                    String Email = request.getParameter("Email");
                    String Parentesco = request.getParameter("Parentesco");
                    String DocTitular = request.getParameter("RucPaciente");
                    String Titular = request.getParameter("Titular");
                    String Ocupación = request.getParameter("Ocupacion");
                    String EstadoC = request.getParameter("EstadoC");
                    String GrandoI = request.getParameter("GrandoI");
                    String TipoDoc = request.getParameter("TipoDoc");
                    int edad = 2022-Integer.parseInt(año);
                    fpaciente DatosPaciente = new fpaciente();
                    DatosPaciente.setDOCI(DocI);
                    DatosPaciente.setFechaRegistro(FechaI);
                    DatosPaciente.setNombre(Nombre);
                    DatosPaciente.setDireccion(Direccion);
                    DatosPaciente.setFechaNacimiento(FechaNacimiento);
                    DatosPaciente.setEdad(String.valueOf(edad));
                    DatosPaciente.setSexo(Sexo);              
                    DatosPaciente.setIdCiudades(Integer.parseInt(Departamento));
                    DatosPaciente.setTelefono(Telefonotxt);
                    DatosPaciente.setEmail(Email);
                    DatosPaciente.setParentesco(Parentesco);
                    DatosPaciente.setDocTitular(DocTitular);
                    DatosPaciente.setNombreTitular(Titular);
                    DatosPaciente.setId_Ocupacion(Integer.parseInt(Ocupación));
                    DatosPaciente.setId_EstadoCivil(Integer.parseInt(EstadoC));
                    DatosPaciente.setId_GradoIntruccion(Integer.parseInt(GrandoI));
                    DatosPaciente.setDescripDoc(TipoDoc);
                    Ubicacion.RegistrarPaciente(DatosPaciente);
                    break;
                case "MostrarPaises":
                    List<fubicacion> DatosPais;
                    DatosPais = Ubicacion.MostrarPais();
                    Iterator<fubicacion> IteradorAux = DatosPais.iterator();
                    Iterator<fubicacion> IteradorPais = DatosPais.iterator();
                    fubicacion PaisDato = null;
                    response.setCharacterEncoding("UTF-8");
                    response.getWriter().write("[");
                    while (IteradorAux.hasNext()) {
                        aux++;
                        PaisDato = IteradorAux.next();
                    }
                    PaisDato = null;
                    while (IteradorPais.hasNext()) {
                        PaisDato = IteradorPais.next();

                        if (aux2 == aux) {
                            JSON = "{\"id_pais\":\"" + PaisDato.getId_Pais() + "\",\"Pais\":\"" + PaisDato.getPais() + "\"}";
                        } else {
                            JSON = "{\"id_pais\":\"" + PaisDato.getId_Pais() + "\",\"Pais\":\"" + PaisDato.getPais() + "\"},";
                        }
                        aux2++;

                        response.getWriter().write(JSON);
                    }
                    response.getWriter().write("]");
                    break;
                case "MostrarDepartamento":
                    String id_pais = request.getParameter("id_pais");
                    DatosPais = Ubicacion.MostrarDepartemento(id_pais);
                    Iterator<fubicacion> IteradorAux1 = DatosPais.iterator();
                    Iterator<fubicacion> IteradordDepartamento = DatosPais.iterator();
                    fubicacion PaisDato1 = null;
                    response.setCharacterEncoding("UTF-8");
                    response.getWriter().write("[");
                    while (IteradorAux1.hasNext()) {
                        aux++;
                        PaisDato1 = IteradorAux1.next();
                    }
                    PaisDato = null;
                    while (IteradordDepartamento.hasNext()) {
                        PaisDato1 = IteradordDepartamento.next();

                        if (aux2 == aux) {
                            JSON = "{\"id_Departamento\":\"" + PaisDato1.getId_Departamento() + "\",\"Departamento\":\"" + PaisDato1.getDepartamento() + "\"}";
                        } else {
                            JSON = "{\"id_Departamento\":\"" + PaisDato1.getId_Departamento() + "\",\"Departamento\":\"" + PaisDato1.getDepartamento() + "\"},";
                        }
                        aux2++;

                        response.getWriter().write(JSON);
                    }
                    response.getWriter().write("]");
                    break;
                case "MostrarOcupacion":
                    List<fpaciente> DatosOcupacion;
                    DatosOcupacion = Ubicacion.MostrarOcupacion();
                    Iterator<fpaciente> IteradorAuxOcupacion = DatosOcupacion.iterator();
                    Iterator<fpaciente> IteradorOcupacion = DatosOcupacion.iterator();
                    fpaciente OcupacionDato = null;
                    response.setCharacterEncoding("UTF-8");
                    response.getWriter().write("[");
                    while (IteradorAuxOcupacion.hasNext()) {
                        aux++;
                        OcupacionDato = IteradorAuxOcupacion.next();
                    }
                    OcupacionDato = null;
                    while (IteradorOcupacion.hasNext()) {
                        OcupacionDato = IteradorOcupacion.next();

                        if (aux2 == aux) {
                            JSON = "{\"id_Ocupacion\":\"" + OcupacionDato.getId_Ocupacion() + "\",\"Ocupacion\":\"" + OcupacionDato.getOcupacion() + "\"}";
                        } else {
                            JSON = "{\"id_Ocupacion\":\"" + OcupacionDato.getId_Ocupacion() + "\",\"Ocupacion\":\"" + OcupacionDato.getOcupacion() + "\"},";
                        }
                        aux2++;

                        response.getWriter().write(JSON);
                    }
                    response.getWriter().write("]");
                    break;
                case "MostrarEstadoCivil":
                    List<fpaciente> DatosEstadoC;
                    DatosEstadoC = Ubicacion.MostrarEstadoC();
                    Iterator<fpaciente> IteradorAuxDatosEstadoC = DatosEstadoC.iterator();
                    Iterator<fpaciente> IteradorDatosEstadoC = DatosEstadoC.iterator();
                    fpaciente EstadoCDato = null;
                    response.setCharacterEncoding("UTF-8");
                    response.getWriter().write("[");
                    while (IteradorAuxDatosEstadoC.hasNext()) {
                        aux++;
                        EstadoCDato = IteradorAuxDatosEstadoC.next();
                    }
                    EstadoCDato = null;
                    while (IteradorDatosEstadoC.hasNext()) {
                        EstadoCDato = IteradorDatosEstadoC.next();

                        if (aux2 == aux) {
                            JSON = "{\"id_EstadoC\":\"" + EstadoCDato.getId_EstadoCivil() + "\",\"EstadoC\":\"" + EstadoCDato.getEstadoCivil() + "\"}";
                        } else {
                            JSON = "{\"id_EstadoC\":\"" + EstadoCDato.getId_EstadoCivil() + "\",\"EstadoC\":\"" + EstadoCDato.getEstadoCivil() + "\"},";
                        }
                        aux2++;

                        response.getWriter().write(JSON);
                    }
                    response.getWriter().write("]");
                    break;
                case "MostrarGradoInstruccion":
                    List<fpaciente> DatosGradoI;
                    DatosGradoI = Ubicacion.MostrarGradoI();
                    Iterator<fpaciente> IteradorAuxDatosGradoI = DatosGradoI.iterator();
                    Iterator<fpaciente> IteradorDatosGradoI = DatosGradoI.iterator();
                    fpaciente GradoIDato = null;
                    response.setCharacterEncoding("UTF-8");
                    response.getWriter().write("[");
                    while (IteradorAuxDatosGradoI.hasNext()) {
                        aux++;
                        GradoIDato = IteradorAuxDatosGradoI.next();
                    }
                    GradoIDato = null;
                    while (IteradorDatosGradoI.hasNext()) {
                        GradoIDato = IteradorDatosGradoI.next();

                        if (aux2 == aux) {
                            JSON = "{\"id_GradoI\":\"" + GradoIDato.getId_GradoIntruccion() + "\",\"GradoI\":\"" + GradoIDato.getGradoIntruccion() + "\"}";
                        } else {
                            JSON = "{\"id_GradoI\":\"" + GradoIDato.getId_GradoIntruccion() + "\",\"GradoI\":\"" + GradoIDato.getGradoIntruccion() + "\"},";
                        }
                        aux2++;

                        response.getWriter().write(JSON);
                    }
                    response.getWriter().write("]");
                    break;

                default:
                    throw new AssertionError();
            }
        } catch (Exception e) {
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
