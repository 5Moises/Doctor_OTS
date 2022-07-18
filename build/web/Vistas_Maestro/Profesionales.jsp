<%-- 
    Document   : Profesionales
    Created on : 9 jun. 2022, 13:51:03
    Author     : Desarrollo2
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.fmedicos"%>
<%@page import="Modelo.DAOfmedicos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    DAOfmedicos Medicos = new DAOfmedicos();
    List<fmedicos> DatosMedico = Medicos.MostrarMedicos(1);
    Iterator<fmedicos> IteradorMedico = DatosMedico.iterator();
    fmedicos MedicoDato = null;
%>
<main class="content">
    <div class="container-fluid p-0">

        <h1 class="h3 mb-3">PROFESIONALES DE LA SALUD</h1>

        <div class="row">
            <div class="col-xl-12">
                <div class="card">
                    <div class="card-header">
                        <div class="float-end">
                            <div class="dropdown position-relative">
                                <a href="#" class="btn btn-primary float-end mt-n1"><i class="fas fa-plus"></i>Nueva Especialidad</a>
                            </div>
                        </div>
                        <h5 class="card-title mb-0">PROFESIONALES DE LA SALUD</h5>
                    </div>
                    <div class="card-body">
                        <table id="datatables-clients" class="table table-striped" style="width:100%">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>CMP</th>
                                    <th>Nombre</th>
                                    <th>Fecha Nacimiento</th>
                                    <th>DNI</th>
                                    <th>Direccion</th>
                                    <th>Correo</th>
                                    <th>Telefono</th>
                                     <th>Colegio</th>
                                    <th>Estado</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    while (IteradorMedico.hasNext()) {
                                        MedicoDato = IteradorMedico.next();


                                %>
                                <tr>                                    
                                    <td><%=MedicoDato.getId_Medico()%></td>                                  
                                    <td><%=MedicoDato.getNro_Colegiatura()%></td>   
                                    <td><%=MedicoDato.getNombre()%></td>
                                    <td><%=MedicoDato.getFechaNacimiento()%></td><!-- comment -->
                                    <td><%=MedicoDato.getDNI()%></td><!-- comment -->
                                    <td><%=MedicoDato.getDireccion()%></td>
                                    <td><%=MedicoDato.getEmail()%></td><!-- comment -->
                                    <td><%=MedicoDato.getTelefono()%></td>                                    
                                    <td><%=MedicoDato.getDescripcion()%></td>
                                    <td><span class="badge bg-success">Active</span></td>
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