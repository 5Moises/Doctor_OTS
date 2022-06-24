/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.DAOfturno;
import Modelo.fturno;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "fturnoServlet", urlPatterns = {"/fturnoServlet"})
@MultipartConfig(maxFileSize = 16177216)//1.5mb
public class fturnoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        String Consulta = request.getParameter("Consulta");
        DAOfturno Turnos = new DAOfturno();
        switch (Consulta) {
            case "1":
                String id_turno = request.getParameter("ip_turno");                
                List<fturno> DatosTurnos = Turnos.MostrarDias(Integer.parseInt(id_turno));
                Iterator<fturno> IteradorTurnos = DatosTurnos.iterator();
                fturno TurnosDato = null;
                String val1 = "0",
                 val2 = "0",
                 val3 = "0",
                 val4 = "0",
                 val5 = "0",
                 val6 = "0",
                 val7 = "0";
                while (IteradorTurnos.hasNext()) {
                    TurnosDato = IteradorTurnos.next();
                    String Dia = TurnosDato.getDias();
                    switch (Dia) {
                        case "LUNES":
                            val1 = "1";
                            break;
                        case "MARTES":
                            val2 = "1";
                            break;
                        case "MIERCOLES":
                            val3 = "1";
                            break;
                        case "JUEVES":
                            val4 = "1";
                            break;
                        case "VIERNES":
                            val5 = "1";
                            break;
                        case "SABADO":
                            val6 = "1";
                            break;
                        case "DOMINGO":
                            val7 = "1";
                            break;
                        default:
                            throw new AssertionError();
                    }
                }
                String JSON = "{\"LUNES\":\"" + val1 + "\",\"MARTES\":\"" + val2 + "\",\"MIERCOLES\":\"" + val3 + "\",\"JUEVES\":\"" + val4 + "\",\"VIERNES\":\"" + val5 + "\",\"SABADO\":\"" + val6 + "\",\"DOMINGO\":\"" + val7 + "\"}";
                response.getWriter().write(JSON);
                break;
            case "GuardarTurno":
                String NombreMedico = request.getParameter("NombreMtxt"); 
                String Consultorio = request.getParameter("Consultoriotxt");
                String HoraI = request.getParameter("Horatxt");
                String HoraF = request.getParameter("HoraFinaltxt");
                String Tiempo = request.getParameter("Tiempotxt");
                String[] Dias = request.getParameterValues("Diastxt[]");
                fturno DatoTurno = new fturno();
                DatoTurno.setNombreMedico(NombreMedico);
                DatoTurno.setConsultorios(Consultorio);
                DatoTurno.setHora_I(HoraI);
                DatoTurno.setHoral_F(HoraF);
                DatoTurno.setTiempo(Tiempo);
                DatoTurno.setDiasIs(Dias);
            
                try {
                    if(Turnos.RegistrarTurno(DatoTurno)==true)
                    {
                        response.getWriter().write("1");
                    }
                    else
                    {
                        response.getWriter().write("0");
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(fturnoServlet.class.getName()).log(Level.SEVERE, null, ex);
                }
            
                
                break;

                    
            default:
                throw new AssertionError();
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
