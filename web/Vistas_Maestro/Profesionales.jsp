<%-- 
Document   : Profesionales
Created on : 9 jun. 2022, 13:51:03
Author     : Desarrollo2
--%>

<%@page import="Modelo.fservicios"%>
<%@page import="Modelo.fservicios"%>
<%@page import="Modelo.DAOfservicios"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.fmedicos"%>
<%@page import="Modelo.DAOfmedicos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    DAOfmedicos TipoP = new DAOfmedicos();
    List<fmedicos> DatosTipoP = TipoP.MostrartipoP(1);
    Iterator<fmedicos> IteradorTipoP = DatosTipoP.iterator();
    fmedicos TipoPDato = null;

    DAOfservicios servicios = new DAOfservicios();
    List<fservicios> DatosServicios = servicios.MostrarServicios();
    Iterator<fservicios> IteradorServicios = DatosServicios.iterator();
    fservicios ServicioDato = null;

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
                                <a onclick="Registro_G();" class="btn btn-primary float-end mt-n1"><i class="fas fa-plus"></i>Nueva Especialidad</a>
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
                            <tbody id="Resultado">                            
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<div class="modal fade" id="Registro_G" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-md" role="document">
        <div class="modal-content">
            <div class="modal-header text-cente">
                <h1 class="modal-title text-center">Registro de Medico </h1>
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
                    <div class="col-md-4">
                        <div class="mb-3">
                            <label class="form-label">CMP</label>                                                               
                            <input class="form-control" type="text" id="CMPtxt" required/>
                        </div>
                    </div>              
                    <div class="col-md-3">
                        <div class="mb-3">
                            <label class="form-label">Fecha_Nacimiento</label>                                                               
                            <input class="form-control" type="date" id="FechNaxtxt" required/>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="mb-3">
                            <label class="form-label">DNI</label>                                                               
                            <input class="form-control" type="text" id="Dnixtxt" required/>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3">
                            <label class="form-label">Dirección</label>                                                               
                            <input class="form-control" type="text" id="txtDireccion" required/>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3">
                            <label class="form-label">Telefono</label>                                                               
                            <input class="form-control" type="text" id="txtModalNombrePaciente" required/>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3">
                            <label class="form-label">Email</label>                                                               
                            <input class="form-control" type="text" id="txtEmail" required/>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="mb-3">
                            <div class="input-group">                    
                                <div class="input-group-text btn-primary">Parentesco</div>     
                                <select class="form-control" data-toggle="select2" id="Parentesco" name="Parentesco" style="font-weight: bold;" onchange="Casotitular();"> 
                                    <option value="0">ELEGIR</option>   
                                    <%                                        while (IteradorTipoP.hasNext()) {
                                            TipoPDato = IteradorTipoP.next();
                                    %>
                                    <option style="font-weight: bold;" value="<%=TipoPDato.getId_TipoPro()%>"><%=TipoPDato.getDescripcion()%></option>
                                    <%
                                        }
                                    %>
                                </select>
                            </div>                                                             
                        </div>
                    </div>   
                    <div class="col-md-12 mb-3 input-group">
                        <div class="input-group-text btn-primary">Especialidades</div>                    
                        <select class="form-control select2" data-toggle="select2" multiple>
                            <%
                                while (IteradorServicios.hasNext()) {
                                    ServicioDato = IteradorServicios.next();
                            %>
                            <option value="<%=ServicioDato.getId_servicio()%>"><%=ServicioDato.getNOMB()%></option>       
                            <%
                                }
                            %>
                        </select>
                    </div>
                </div> 
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" onclick="RegistraCita();">Guardar Medico</button>
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>                              
            </div>
        </div>
    </div>
</div>              
<div class="modal fade" id="Editar_G" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-md" role="document">
        <div class="modal-content">
            <div class="modal-header text-cente">
                <h1 class="modal-title text-center">Modificación del Medico </h1>
                <!--<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button> -->
            </div>
            <div class="modal-body">                                      
                <div class="row">
                    <div class="col-md-2">
                        <label class="form-label">Codigo</label>       
                        <div class="input-group">                                                                                                           
                            <input class="form-control" type="text" id="EditCodigo" />                                                    
                        </div>
                    </div>
                    <div class="col-md-5">
                        <label class="form-label">Nombre</label>       
                        <div class="input-group">                                                                                                           
                            <input class="form-control" type="text" id="EditN" />                                                    
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mb-3">
                            <label class="form-label">CMP</label>                                                               
                            <input class="form-control" type="text" id="EditCMP" required/>
                        </div>
                    </div>              
                    <div class="col-md-3">
                        <div class="mb-3">
                            <label class="form-label">Fecha_Nacimiento</label>                                                               
                            <input class="form-control" type="date" id="EditFecha" required/>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="mb-3">
                            <label class="form-label">DNI</label>                                                               
                            <input class="form-control" type="text" id="EditDni" required/>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3">
                            <label class="form-label">Dirección</label>                                                               
                            <input class="form-control" type="text" id="EditDireccion" required/>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3">
                            <label class="form-label">Telefono</label>                                                               
                            <input class="form-control" type="text" id="EditTelefono" required/>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3">
                            <label class="form-label">Email</label>                                                               
                            <input class="form-control" type="text" id="EditEmail" required/>
                        </div>
                    </div>           
                </div> 
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" onclick="ModificaMedico();">Guardar Medico</button>
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>                              
            </div>
        </div>
    </div>
</div>     
<script>
    document.addEventListener("DOMContentLoaded", function () {
        // Datatables clients
        $.post("fmedicosServlet", {"Consulta": "MostrarMedicos"}, function (response) {
            var datos = JSON.parse(response);

            const DOMitems = document.querySelector('#Resultado');
            // Crea las celdas
            for (var i = 0; i < datos.length; i++) {
                // Crea las hileras de la tabla
                var hilera = document.createElement("tr");
                for (var j = 0; j < 1; j++) {

                    // Crea un elemento <td> y un nodo de texto, haz que el nodo de
                    // texto sea el contenido de <td>, ubica el elemento <td> al final
                    // de la hilera de la tabla
                    const celda1 = document.createElement("td");
                    const celda2 = document.createElement("td");
                    const celda3 = document.createElement("td");
                    const celda4 = document.createElement("td");
                    const celda5 = document.createElement("td");
                    const celda6 = document.createElement("td");
                    const celda7 = document.createElement("td");
                    const celda8 = document.createElement("td");
                    const celda9 = document.createElement("td");
                    const celda10 = document.createElement("td");

                    //  const celda6 = document.createElement("td");

                    const textoCelda1 = document.createTextNode(datos[i].Id_Medico);
                    const textoCelda2 = document.createTextNode(datos[i].CMP);
                    const textoCelda3 = document.createTextNode(datos[i].Nombre);
                    const textoCelda4 = document.createTextNode(datos[i].Fecha);
                    const textoCelda5 = document.createTextNode(datos[i].DNI);
                    const textoCelda6 = document.createTextNode(datos[i].Direccion);
                    const textoCelda7 = document.createTextNode(datos[i].Correo);
                    const textoCelda8 = document.createTextNode(datos[i].Telefono);
                    const textoCelda9 = document.createTextNode(datos[i].Colegio);
                    const textoCelda10 = document.createElement('span');
                    textoCelda10.classList.add('badge', 'bg-success');
                    textoCelda10.textContent = 'ACTIVO';
                    //const boton = document.createElement('button');
                    //   boton.classList.add('btn', 'btn-danger');
                    // boton.textContent = 'Eliminar';  
                    celda1.appendChild(textoCelda1);
                    celda2.appendChild(textoCelda2);
                    celda3.appendChild(textoCelda3);
                    celda4.appendChild(textoCelda4);
                    celda5.appendChild(textoCelda5);
                    celda6.appendChild(textoCelda6);
                    celda7.appendChild(textoCelda7);
                    celda8.appendChild(textoCelda8);
                    celda9.appendChild(textoCelda9);
                    celda10.appendChild(textoCelda10);

                    //celda6.appendChild(boton);
                    hilera.appendChild(celda1);
                    hilera.appendChild(celda2);
                    hilera.appendChild(celda3);
                    hilera.appendChild(celda4);
                    hilera.appendChild(celda5);
                    hilera.appendChild(celda6);
                    hilera.appendChild(celda7);
                    hilera.appendChild(celda8);
                    hilera.appendChild(celda9);
                    hilera.appendChild(celda10);
                    //hilera.appendChild(celda6);
                }
                DOMitems.appendChild(hilera); // agrega la hilera al final de la tabla (al final del elemento tblbody)
            }
            var datatablesMulti = $("#datatables-clients").DataTable({
                responsive: true,
                lengthChange: !1
            });
            $('#datatables-clients').on('click', 'tr', function () {

                var data = datatablesMulti.row(this).data();
                swal("A wild Pikachu appeared! What do you want to do?", {
                    buttons: {
                        Editar: "Editar",
                        Eliminar: "Eliminar"
                    }
                })
                        .then((value) => {
                            switch (value) {

                                case "Editar":
                                    $('#Editar_G').modal('show');
                                    $('#EditCodigo').val(data[0]);
                                    $('#EditN').val(data[2]);
                                    $('#EditCMP').val(data[1]);
                                    $('#EditFecha').val(data[3]);
                                    $('#EditDni').val(data[4]);
                                    $('#EditDireccion').val(data[5]);
                                     $('#EditEmail').val(data[6]);
                                    $('#EditTelefono').val(data[7]);
                                   
                                    break;
                                case "Eliminar":
                                    swal(" Eliminar");
                                    break;
                                default:
                                    swal("Got away safely!");
                            }
                        });

            });
        });

    });
</script>

<script>

</script>

