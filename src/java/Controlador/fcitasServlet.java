/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.DAOfcitas;
import Modelo.DAOfpaciente;
import Modelo.fcitas;
import Modelo.fmedicos;
import Modelo.fpaciente;
import Modelo.fservicios;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.sql.SQLException;
import java.time.LocalTime;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

/**
 *
 * @author Desarrollo2
 */
@WebServlet(name = "fcitasServlet", urlPatterns = {"/fcitasServlet"})
@MultipartConfig(maxFileSize = 16177216)//1.5mb
public class fcitasServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            response.getWriter().write("]");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String id_Medico;
            String id_servicio;
            String Fecha;
            String Consulta = request.getParameter("Consulta");
            switch (Consulta) {
                case "ResgistraCita":
                    id_Medico = request.getParameter("Id_medico");
                    id_servicio = request.getParameter("id_servicio");
                    Fecha = request.getParameter("Fecha");
                    String doc = request.getParameter("txtModalDNI");
                    String HoraA = request.getParameter("txtModalHora");
                    String FechaA = request.getParameter("");
                    break;
                case "ConsultaCita":
                    //Trae datos del jsp
                    DAOfcitas CitaConsulta = new DAOfcitas();
                    id_Medico = request.getParameter("Id_medico");
                    id_servicio = request.getParameter("id_servicio");
                    Fecha = request.getParameter("Fecha");
                    String JSON;
                    fcitas DatoCitas = new fcitas();
                    fmedicos medico = new fmedicos();
                    fservicios servicio = new fservicios();
                    DatoCitas.setFechaAtencion(Fecha);
                    medico.setId_Medico(Integer.parseInt(id_Medico));
                    servicio.setId_servicio(Integer.parseInt(id_servicio));
                    //Variables de auxiliares
                    int aux = 0;
                    int aux2 = 1;
                    String hora1,
                     Min1,
                     Hora2,
                     min2;
                    int cont = 0;
                    int minutos1,
                     minutos2;
                    boolean condi;
                    //Llmando al Modelo
                    List<fcitas> DatosCitas = CitaConsulta.VerCitas(DatoCitas, medico, servicio);
                    String cant = String.valueOf(DatosCitas.size());

                    Iterator<fcitas> IteradorCitas = DatosCitas.iterator();
                    Iterator<fcitas> IteradorCitas2 = DatosCitas.iterator();
                    fcitas CitasDato = null;

                    response.getWriter().write("[");
                    while (IteradorCitas.hasNext()) {
                        aux++;
                        CitasDato = IteradorCitas.next();
                    }
                    CitasDato = null;
                    while (IteradorCitas2.hasNext()) {
                        CitasDato = IteradorCitas2.next();
                        //Obtener minutis y horas de hora Inicial
                        if ("0".equals(CitasDato.getHoraAtencion().substring(0, 1))) {
                            hora1 = CitasDato.getHoraAtencion().substring(1, 2);
                        } else {
                            hora1 = CitasDato.getHoraAtencion().substring(0, 2);
                        }
                        if ("00".equals(CitasDato.getHoraAtencion().substring(3, 5))) {
                            Min1 = "0";
                        } else {
                            Min1 = CitasDato.getHoraAtencion().substring(3, 5);
                        }

                        //Generar Horas con el tiempo Correspondido
                        LocalTime tiempoI = LocalTime.of(Integer.parseInt(hora1), Integer.parseInt(Min1));
                        tiempoI = tiempoI.plusMinutes(Integer.parseInt(CitasDato.getTiempo()));

                        //Validad JSON
                        if (aux2 == aux) {
                            JSON = "{\"Paciente\":\"" + (CitasDato.getPaciente()) + "\",\"Fecha\":\"" + (CitasDato.getFechaAtencion()) + "\",\"Consultorio\":\"" + (CitasDato.getConsultorio()) + "\",\"HoraA\":\"" + (CitasDato.getHoraAtencion()) + "\",\"HoraF\":\"" + tiempoI + "\",\"Tiempo\":\"" + CitasDato.getTiempo() + "\",\"Estado\":\"" + CitasDato.getEstado() + "\"}";
                        } else {
                            JSON = "{\"Paciente\":\"" + (CitasDato.getPaciente()) + "\",\"Fecha\":\"" + (CitasDato.getFechaAtencion()) + "\",\"Consultorio\":\"" + (CitasDato.getConsultorio()) + "\",\"HoraA\":\"" + (CitasDato.getHoraAtencion()) + "\",\"HoraF\":\"" + tiempoI + "\",\"Tiempo\":\"" + CitasDato.getTiempo() + "\",\"Estado\":\"" + CitasDato.getEstado() + "\"},";
                        }
                        aux2++;

                        response.getWriter().write(JSON);
                    }

                    response.getWriter().write("]");

                    break;
                case "BuscaDNI":
                    String DocI = request.getParameter("DNI");
                    fpaciente DNI = new fpaciente();
                    DNI.setDOCI(DocI);
                    DAOfpaciente BuscaDNI = new DAOfpaciente();
                    String Nombre = BuscaDNI.BuscaPaciente(DNI);
                    if (Nombre != null) {
                        response.getWriter().write("{\"nombre\":\"" + BuscaDNI.BuscaPaciente(DNI) + "\"}");
                    } else {
                        JsonParser jp = new JsonParser();
                        String enlace = "http://api.apis.net.pe/v1/dni?numero=" + DocI;
                        URL url = new URL(enlace);
                        URLConnection rLConnection = url.openConnection();
                        rLConnection.connect();
                        JsonElement root = jp.parse(new InputStreamReader((InputStream) rLConnection.getContent()));
                        JsonObject rootobj = root.getAsJsonObject();
                        String apellidop = rootobj.get("apellidoPaterno").getAsString();
                        String apellidoM = rootobj.get("apellidoMaterno").getAsString();
                        String Nombres = rootobj.get("nombres").getAsString();
                        response.setCharacterEncoding("UTF-8");
                        String nombreC = Nombres + " " + apellidop + " " + apellidoM;
                        String JSON1 = "{\"nombre\":\"" + nombreC + "\",\"Nuevo\":\"SI\"}";
                        response.getWriter().write(JSON1);
                    }

                    //DatoCitas.setFechaAtencion(Fecha);
                    break;
                default:
                    throw new AssertionError();
            }
        } catch (SQLException ex) {
            Logger.getLogger(fcitasServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
