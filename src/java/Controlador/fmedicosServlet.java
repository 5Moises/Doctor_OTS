/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.DAOfmedicos;
import Modelo.fmedicos;
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
@WebServlet(name = "fmedicosServlet", urlPatterns = {"/fmedicosServlet"})
@MultipartConfig(maxFileSize = 16177216)//1.5mb

public class fmedicosServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DAOfmedicos Medicos = new DAOfmedicos();
        String JSON;
        int aux = 0;
        int aux2 = 1;
        try {
            String Consulta = request.getParameter("Consulta");
            switch (Consulta) {
                case "BuscaMedico":
                    int id_Especialidad = Integer.parseInt(request.getParameter("id_Especialidad"));

                    List<fmedicos> DatosMedico;
                    DatosMedico = Medicos.MostrarMedicosPorEspecialidad(id_Especialidad);
                    Iterator<fmedicos> IteradorMedico = DatosMedico.iterator();
                    Iterator<fmedicos> IteradorMedico2 = DatosMedico.iterator();
                    fmedicos MedicoDato = null;
                    response.setCharacterEncoding("UTF-8");
                    response.getWriter().write("[");
                    while (IteradorMedico.hasNext()) {
                        aux++;
                        MedicoDato = IteradorMedico.next();
                    }
                    MedicoDato = null;
                    while (IteradorMedico2.hasNext()) {
                        MedicoDato = IteradorMedico2.next();

                        if (aux2 == aux) {
                            JSON = "{\"nombre\":\"" + MedicoDato.getNombre() + "\",\"Id_Medico\":\"" + MedicoDato.getId_Medico() + "\"}";
                        } else {
                            JSON = "{\"nombre\":\"" + MedicoDato.getNombre() + "\",\"Id_Medico\":\"" + MedicoDato.getId_Medico() + "\"},";
                        }
                        aux2++;

                        response.getWriter().write(JSON);
                    }
                    response.getWriter().write("]");

                    break;
                case "MostrarMedicos": 
                   List<fmedicos> DatosMedico1 = Medicos.MostrarMedicos(1);
                    Iterator<fmedicos> IteradorMedico1 = DatosMedico1.iterator();
                    Iterator<fmedicos> IteradorMedico3 = DatosMedico1.iterator();
                    fmedicos MedicoDato1 = null;
                    response.setCharacterEncoding("UTF-8");
                    response.getWriter().write("[");
                    while (IteradorMedico1.hasNext()) {
                        aux++;
                        MedicoDato1 = IteradorMedico1.next();
                    }
                    MedicoDato1 = null;
                    while (IteradorMedico3.hasNext()) {
                        MedicoDato1 = IteradorMedico3.next();

                        if (aux2 == aux) {
                            JSON = "{\"Id_Medico\":\"" + MedicoDato1.getId_Medico()+ "\",\"CMP\":\"" + (MedicoDato1.getNro_Colegiatura()) +"\",\"Nombre\":\"" + (MedicoDato1.getNombre()) + "\",\"Fecha\":\"" + (MedicoDato1.getFechaNacimiento()) +"\",\"Fecha\":\"" + (MedicoDato1.getDNI()) +"\",\"Direccion\":\"" + (MedicoDato1.getDireccion()) +"\",\"Correo\":\"" + (MedicoDato1.getEmail()) +"\",\"Telefono\":\"" + (MedicoDato1.getTelefono()) +"\",\"Colegio\":\"" + (MedicoDato1.getDescripcion()) + "\"}";
                        
                        } else {
                          JSON = "{\"Id_Medico\":\"" + MedicoDato1.getId_Medico()+ "\",\"CMP\":\"" + (MedicoDato1.getNro_Colegiatura()) +"\",\"Nombre\":\"" + (MedicoDato1.getNombre()) + "\",\"Fecha\":\"" + (MedicoDato1.getFechaNacimiento()) +"\",\"DNI\":\"" + (MedicoDato1.getDNI()) +"\",\"Direccion\":\"" + (MedicoDato1.getDireccion()) +"\",\"Correo\":\"" + (MedicoDato1.getEmail()) +"\",\"Telefono\":\"" + (MedicoDato1.getTelefono()) +"\",\"Colegio\":\"" + (MedicoDato1.getDescripcion()) + "\"},";
                        
                        }
                        aux2++;

                        response.getWriter().write(JSON);
                    }
                    response.getWriter().write("]");
                    break;
                default:
                    throw new AssertionError();
            }
        } catch (SQLException ex) {
            Logger.getLogger(fmedicosServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
