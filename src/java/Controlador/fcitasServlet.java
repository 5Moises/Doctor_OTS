/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.DAOfcitas;
import Modelo.fmedicos;
import Modelo.fturno;
import java.io.IOException;
import java.sql.SQLException;
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

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String Consulta = request.getParameter("Consulta");
            switch (Consulta) {
                case "ConsultaDia":
                    DAOfcitas CitaConsulta = new DAOfcitas();
                    String id_Medico = request.getParameter("Id_medico");
                    String id_dia = request.getParameter("Id_dia");

                    fturno DatoTurno = new fturno();
                    fmedicos medico = new fmedicos();
                    DatoTurno.setDias(id_dia);
                    medico.setId_Medico(Integer.parseInt(id_Medico));

                    List<fturno> DatosTurnos = CitaConsulta.CondicionFecha(DatoTurno, medico);
                    Iterator<fturno> IteradorTurnos = DatosTurnos.iterator();
                    fturno TurnosDato = null;
                    while (IteradorTurnos.hasNext()) {
                        TurnosDato = IteradorTurnos.next();
                        String JSON = "{\"HoraI\":\"" +(TurnosDato.getHora_I().substring(0,2)) + "\",\"HoraF\":\"" + (TurnosDato.getHoral_F().substring(0,2)) + "\",\"Tiempo\":\"" + TurnosDato.getTiempo() + "\"}";
                        response.getWriter().write(JSON);
                    }
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
