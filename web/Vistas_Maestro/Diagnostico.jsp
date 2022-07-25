<%-- 
    Document   : Diagnostico
    Created on : 9 jun. 2022, 13:51:28
    Author     : Desarrollo2
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.fdiagnostico"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.DAOfdiagnostico"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    DAOfdiagnostico Diagnosticos = new DAOfdiagnostico();
    List<fdiagnostico> Datosiagnosticos = Diagnosticos.MostrarDIagnosticos();
    Iterator<fdiagnostico> iteradorDiagnosticos = Datosiagnosticos.iterator();
    fdiagnostico DiagnosticosDato = null;
%>

<main class="content d-flex p-0">
    <div class="container d-flex flex-column">
        <div class="row h-100">
            <div class="col-sm-10 col-md-8 col-lg-9 mx-auto d-table h-100">
                <div class="d-table-cell align-middle">

                    <div class="container-fluid p-0">

                        <h1 class="h3 mb-3">DIAGNOSTICOS</h1>

                        <div class="row">
                            <div class="col-xl-12">
                                <div class="card">
                                    <div class="card-header">
                                        <div class="float-end">
                                            <div class="dropdown position-relative">
                                                <a onclick="Registro_G();" class="btn btn-primary float-end mt-n1"><i class="fas fa-plus"></i>Nuevo Diagnostico</a>
                                            </div>
                                        </div>
                                        <h5 class="card-title mb-0">DIAGNOSTICOS</h5>
                                    </div>
                                    <div class="card-body">
                                        <table id="datatables-clients" class="table table-striped text-center" style="width:100%">
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Codigo</th>
                                                    <th>Diagnostico</th>                                   
                                                    <th>Estado</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    while (iteradorDiagnosticos.hasNext()) {
                                                        DiagnosticosDato = iteradorDiagnosticos.next();


                                                %>
                                                <tr>                                    
                                                    <td><%=DiagnosticosDato.getId_Diagnosticos()%></td>
                                                    <td><%=DiagnosticosDato.getCodigo()%></td>      
                                                    <td><%=DiagnosticosDato.getDescripcion()%></td>                                      
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
<div class="modal fade" id="Registro_G" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-md" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title" style="margin-left: 25%;">Registro de Diagnosticos </h1>
                <!--<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button> -->
            </div>
            <div class="modal-body">                                      
                <div class="row">
                    <div class="col-md-3">
                        <label class="form-label">Codigo</label>       
                        <div class="input-group">                                                                                                           
                            <input class="form-control" type="text" id="txtModalDNI" />                                                    
                        </div>
                    </div>    
                    <div class="col-md-9">
                        <label class="form-label">Nombre Diagnostico</label>       
                        <div class="input-group">                                                                                                           
                            <input class="form-control" type="text" id="txtModalDNI" />                                                    
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
    function Registro_G()
    {
        $('#Registro_G').modal('show');
        $(document).on('shown.bs.modal', '#Registro_G', function ()
        {
            $(".select2").each(function () {
                $(this)
                        .select2({
                            placeholder: "ELEGIR",
                            dropdownParent: $(this).parent()
                        });
            });
        });
    }
</script>