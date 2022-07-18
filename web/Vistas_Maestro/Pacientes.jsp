<%-- 
    Document   : Pacientes
    Created on : 9 jun. 2022, 13:51:39
    Author     : Desarrollo2
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.fpaciente"%>
<%@page import="Modelo.DAOfpaciente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    DAOfpaciente Pacientes = new DAOfpaciente();
    List<fpaciente> DatosPacientes = Pacientes.MostrarPacientes();
    Iterator<fpaciente> IteradorPacientes = DatosPacientes.iterator();
    fpaciente PacientesDato = null;
%>
<main class="content">
    <div class="container-fluid p-0">

        <h1 class="h3 mb-3">PACIENTES / CLIENTES</h1>

        <div class="row">
            <div class="col-xl-12">
                <div class="card">
                    <div class="card-header">
                        <div class="float-end">
                            <div class="dropdown position-relative">
                                <a href="#" class="btn btn-primary float-end mt-n1"><i class="fas fa-plus"></i>Nuevo Paciente</a>
                            </div>
                        </div>
                        <h5 class="card-title mb-0">PACIENTES / CLIENTE</h5>
                    </div>
                    <div class="card-body">
                        <table id="datatables-clients" class="table table-striped" style="width:100%">
                            <thead>
                                <tr>
                                    <th>NroHistoria</th>
                                    <th>Nombre</th>
                                    <th>Edad</th>
                                    <th>Sexo</th>
                                    <th>Fecha Nacimiento</th>
                                    <th>Direccion</th>
                                    <th>Lugar Nacimiento</th>                                    
                                     <th>Email</th>
                                    <th>Titular</th>
                                    <th>Parentesco</th>
                                    <th>Ocupación</th>
                                    <th>Estado Civil</th>
                                    <th>Grado de Instrucción</th>                                    
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    while (IteradorPacientes.hasNext()) {
                                        PacientesDato = IteradorPacientes.next();


                                %>
                                <tr>                                    
                                    <td><%=PacientesDato.getDOCI()%></td>                                  
                                     <td><%=PacientesDato.getNombre()%></td>
                                     <td><%=PacientesDato.getEdad()%></td>
                                     <td><%=PacientesDato.getSexo()%></td>
                                     <td><%=PacientesDato.getFechaNacimiento()%></td>
                                     <td><%=PacientesDato.getDireccion()%></td>
                                     <td><%=PacientesDato.getPais()%> - <%=PacientesDato.getCiudad()%></td>                                     
                                     <td><%=PacientesDato.getEmail()%></td>
                                     <td><%=PacientesDato.getNombreTitular()%></td>
                                     <td><%=PacientesDato.getParentesco()%></td>
                                     <td><%=PacientesDato.getOcupacion()%></td>
                                     <td><%=PacientesDato.getEstadoCivil()%></td>
                                     <td><%=PacientesDato.getGradoIntruccion()%></td>
                                </tr>
                                   <%
                                       }
                                   %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        </div>

    </div>
</main>
<script>
    document.addEventListener("DOMContentLoaded", function () {
        // Datatables clients
        $("#datatables-clients").DataTable({
            responsive: true,
             lengthChange: !1,
            order: [
                [1, "asc"]
            ]
        });
    });
</script>
