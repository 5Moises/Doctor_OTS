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
                                <a onclick="Registro_G();" class="btn btn-primary float-end mt-n1"><i class="fas fa-plus"></i>Nuevo Paciente</a>
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
    <div class="modal fade" id="Registro_G" tabindex="-1" role="dialog" aria-hidden="true">
                                <div class="modal-dialog modal-md" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h1 class="modal-title" style="margin-left: 30%;">Registro Paciente </h1>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body ">  
                                            <form>
                                                <div class="row">

                                                    <div class="col-md-6">
                                                        <div class="mb-3">
                                                            <div class="input-group">                    
                                                                <div class="input-group-text btn-primary">Fecha de Ingreso</div>     
                                                                <input type="date" class="form-control"  id="FechInresotxts"/>
                                                            </div>                                                             
                                                        </div>    
                                                    </div> 
                                                    <div class="col-md-6">
                                                        <div class="mb-3">
                                                            <div class="input-group">                    
                                                                <div class="input-group-text btn-primary">Doc de Identidad</div>     
                                                                <input type="text" class="form-control" id="DNItxt"/>
                                                            </div>                                                             
                                                        </div>
                                                    </div> 
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="mb-3 r">
                                                        <div class="input-group">                    
                                                            <div class="input-group-text btn-primary">Nombre Completo</div>     
                                                            <input  type="text" class="form-control " id="NombreCompleto">
                                                            <span style="color: red; font-size: 150%">*</span>
                                                        </div>                                                             
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="mb-3">
                                                        <div class="input-group">                    
                                                            <div class="input-group-text btn-primary">Dirección</div>     
                                                            <input type="text" class="form-control" id="DireccionPaciente"/>
                                                        </div>                                                             
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-7">
                                                        <div class="mb-3">
                                                            <div class="input-group">                    
                                                                <div class="input-group-text btn-primary">Fec. Nacimiento</div>     
                                                                <input type="date" class="form-control" id="FechNaciPaciente"/><span style="color: red; font-size: 150%">*</span>
                                                            </div>                                                             
                                                        </div>
                                                    </div>
                                                    <div class="col-md-5">
                                                        <div class="mb-3">
                                                            <div class="input-group">                    
                                                                <div class="input-group-text btn-primary">Sexo</div>     
                                                                <select class="form-control" data-toggle="select2" id="SexoPaciente" name="Sexo"> 
                                                                    <option>Seleccinar Sexo</option>   
                                                                    <option value="MASCULINO">MASCULINO</option>  
                                                                    <option value="FEMENINO">FEMENINO</option>  
                                                                </select><span style="color: red; font-size: 150%">*</span>
                                                            </div>                                                             
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="mb-3">
                                                            <div class="input-group">                    
                                                                <div class="input-group-text btn-primary">Pais:</div>     
                                                                <select class="form-control" data-toggle="select2" id="Pais" name="Pais" onchange="FiltroPorPais();"> 
                                                                    <option value="0">Elegir</option>   
                                                                </select>
                                                            </div>                                                             
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="mb-3">
                                                            <div class="input-group">                    
                                                                <div class="input-group-text btn-primary">Dpto:</div>     
                                                                <select class="form-control" data-toggle="select2" id="Departamento" name="Departamento"> 
                                                                    <option value="0">Elegir</option>   
                                                                </select>
                                                            </div>                                                             
                                                        </div>
                                                    </div>
                                                    <div class="col-md-5">
                                                        <div class="mb-3">
                                                            <div class="input-group">                    
                                                                <div class="input-group-text btn-primary">Telefono</div>     
                                                                <input type="text" class="form-control" id="Telefonotxt"/>
                                                                <button class="btn btn-facebook" type="button"><i class="fa-solid fa-plus"></i></button>                      
                                                            </div>                                                             
                                                        </div>                                                   
                                                    </div> 
                                                    <div class="col-md-5">
                                                        <div class="mb-3">
                                                            <div class="input-group">                    
                                                                <div class="input-group-text btn-primary">Email</div>     
                                                                <input type="text" class="form-control" id="Email"/>                                                                           
                                                            </div>                                                             
                                                        </div>                                                   
                                                    </div> 
                                                    <div class="col-md-4">
                                                        <div class="mb-3">
                                                            <div class="input-group">                    
                                                                <div class="input-group-text btn-primary">Parentesco</div>     
                                                                <select class="form-control" data-toggle="select2" id="Parentesco" name="Parentesco" style="font-weight: bold;" onchange="Casotitular();"> 
                                                                    <option value="0">ELEGIR</option>   
                                                                    <option style="font-weight: bold;" value="1">TITULAR</option>
                                                                    <option style="font-weight: bold;" value="2">HIJO</option>
                                                                    <option style="font-weight: bold;" value="3">CONYUGE</option>
                                                                    <option style="font-weight: bold;" value="4">MADRE</option>
                                                                    <option style="font-weight: bold;" value="5">PADRE</option>
                                                                    <option style="font-weight: bold;" value="6">OTROS</option>
                                                                </select><span style="color: red; font-size: 150%">*</span>
                                                            </div>                                                             
                                                        </div>
                                                    </div>   
                                                    <div class="col-md-3">
                                                        <div class="mb-3">
                                                            <div class="input-group">                    
                                                                <div class="input-group-text btn-primary">Doc I.</div>     
                                                                <input type="text" class="form-control" id="RucPaciente"/>                                                 
                                                            </div>                                                             
                                                        </div>                                                   
                                                    </div>     
                                                    <div class="col-md-7">
                                                        <div class="mb-3">
                                                            <div class="input-group">                    
                                                                <div class="input-group-text btn-primary">Titular</div>     
                                                                <input type="text" class="form-control" id="Titular"/><span style="color: red; font-size: 150%">*</span>                                                                   
                                                            </div>                                                             
                                                        </div>                                                   
                                                    </div>    


                                                    <div class="col-md-5">
                                                        <div class="mb-3">
                                                            <div class="input-group">                    
                                                                <div class="input-group-text btn-primary">Ocupación</div>     
                                                                <select class="form-control" data-toggle="select2" id="Ocupacion"  style="font-weight: bold;" onchange="Casotitular();"> 
                                                                    <option value="0">ELEGIR</option>                                                                 
                                                                </select><span style="color: red; font-size: 150%">*</span>
                                                            </div>                                                             
                                                        </div>
                                                    </div>  
                                                    <div class="col-md-6">
                                                        <div class="mb-3">
                                                            <div class="input-group">                    
                                                                <div class="input-group-text btn-primary">Estado Civil</div>     
                                                                <select class="form-control" data-toggle="select2" id="EstadoC" style="font-weight: bold;" onchange="Casotitular();"> 
                                                                    <option value="0">ELEGIR</option>                                                                 
                                                                </select><span style="color: red; font-size: 150%">*</span>
                                                            </div>                                                             
                                                        </div>
                                                    </div>  
                                                    <div class="col-md-6">
                                                        <div class="mb-3">
                                                            <div class="input-group">                    
                                                                <div class="input-group-text btn-primary">Grado I.</div>     
                                                                <select class="form-control" data-toggle="select2" id="GrandoI" style="font-weight: bold;" onchange="Casotitular();"> 
                                                                    <option value="0">ELEGIR</option>                                                                 
                                                                </select><span style="color: red; font-size: 150%">*</span>
                                                            </div>                                                             
                                                        </div>
                                                    </div>  
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="mb-3">
                                                        <div class="input-group">                    
                                                            <button type="button" class="btn btn-primary" style="width: 100%; height: 10%;" onclick="RegistrarP();">AGREGAR CLIENTE</button>                                                                       
                                                        </div>                                                             
                                                    </div>                                                   
                                                </div> 
                                            </form>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>                              
                                            </div>
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