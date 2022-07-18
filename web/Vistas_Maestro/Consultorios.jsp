<%-- 
    Document   : Consultorios
    Created on : 9 jun. 2022, 13:51:12
    Author     : Desarrollo2
--%>

<%@page import="Modelo.fconsultorio"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.DAOfconsultorio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    DAOfconsultorio consultorios = new DAOfconsultorio();
    List<fconsultorio> DatosConsultorios = consultorios.MostrarConsultorios();
    Iterator<fconsultorio> IteradorConsultorios = DatosConsultorios.iterator();
    fconsultorio ConsultorioDato = null;
%>

<main class="content d-flex p-0">
    <div class="container d-flex flex-column">
        <div class="row h-100">
            <div class="col-sm-10 col-md-8 col-lg-9 mx-auto d-table h-100">
                <div class="d-table-cell align-middle">

                    <div class="container-fluid p-0">

                        <h1 class="h3 mb-3">CONSULTORIOS</h1>

                        <div class="row">
                            <div class="col-xl-12">
                                <div class="card">
                                    <div class="card-header">
                                        <div class="float-end">
                                            <div class="dropdown position-relative">
                                                <a href="#" class="btn btn-primary float-end mt-n1"><i class="fas fa-plus"></i>Nueva Especialidad</a>
                                            </div>
                                        </div>
                                        <h5 class="card-title mb-0">CONSULTORIOS</h5>
                                    </div>
                                    <div class="card-body">
                                        <table id="datatables-clients" class="table table-striped text-center" style="width:100%">
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Consultorio</th>                                   
                                                    <th>Estado</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    while (IteradorConsultorios.hasNext()) {
                                                        ConsultorioDato = IteradorConsultorios.next();


                                                %>
                                                <tr>                                    
                                                    <td><%=ConsultorioDato.getId_Consultorios()%></td>                                  
                                                    <td><%=ConsultorioDato.getDescripcion()%></td>                                      
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