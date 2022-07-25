<%-- 
    Document   : Especialidades
    Created on : 9 jun. 2022, 13:50:52
    Author     : Desarrollo2
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.fservicios"%>
<%@page import="Modelo.DAOfservicios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    DAOfservicios servicios = new DAOfservicios();
    List<fservicios> DatosServicios = servicios.MostrarServicios();
    Iterator<fservicios> IteradorServicios = DatosServicios.iterator();
    fservicios ServicioDato = null;
%>

<main class="content">
    <div class="container-fluid p-0">

        <h1 class="h3 mb-3">Clients</h1>

        <div class="row">
            <div class="col-xl-12">
                <div class="card">
                    <div class="card-header">
                        <div class="float-end">
                            <div class="dropdown position-relative">
                                <a onclick="Registro_Espe();" class="btn btn-primary float-end mt-n1"><i class="fas fa-plus"></i>Nueva Especialidad</a>
                            </div>
                        </div>
                        <h5 class="card-title mb-0">SERVICIOS / ESPECIALIDADES</h5>
                    </div>
                    <div class="card-body">
                        <table id="datatables-clients" class="table table-striped" style="width:100%">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Nombre</th>
                                    <th>Abreviatura</th>
                                    <th>Estado</th>

                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    while (IteradorServicios.hasNext()) {
                                        ServicioDato = IteradorServicios.next();
                                %>
                                <tr>
                                    <td><%=ServicioDato.getId_servicio()%></td>                                  
                                    <td><%=ServicioDato.getNOMB()%></td>   
                                    <td><%=ServicioDato.getSERV()%></td>
                                    <td><span class="badge bg-success">Active</span></td>
                                </tr>
                                <%
                                    }
                                %>
                            </tbody>
                        </table>
                        <div class="modal fade" id="Registro_Especialidad" tabindex="-1" role="dialog" aria-hidden="true">
                            <div class="modal-dialog modal-md" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h1 class="modal-title" style="margin-left: 25%;">Registro de Espacialidad </h1>
                                        <!--<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button> -->
                                    </div>
                                    <div class="modal-body">                                      
                                        <div class="row">
                                            <div class="col-md-8">
                                                <label class="form-label">Nombre</label>       
                                                <div class="input-group">                                                                                                           
                                                    <input class="form-control" type="text" id="txtModalDNI" />                                                    
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="mb-3">
                                                    <label class="form-label">Abreviatura</label>                                                               
                                                    <input class="form-control" type="text" id="txtModalNombrePaciente" required/>
                                                </div>
                                            </div>                                         
                                        </div> 


                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-primary" onclick="RegistraCita();">Guardar Especialidad</button>
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>                              
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
<script>
    function Registro_Espe()
    {
        $('#Registro_Especialidad').modal('show');
    }
</script>