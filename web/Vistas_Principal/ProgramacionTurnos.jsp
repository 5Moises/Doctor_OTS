<%-- 
    Document   : ProgramacionTurnos
    Created on : 17 jun. 2022, 13:23:04
    Author     : Desarrollo2
--%>

<%@page import="Modelo.fconsultorio"%>
<%@page import="Modelo.DAOfconsultorio"%>
<%@page import="Modelo.fmedicos"%>
<%@page import="Modelo.DAOfmedicos"%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.fturno"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.DAOfturno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    DAOfturno Turnos = new DAOfturno();
    List<fturno> DatosTurnos = Turnos.MostrarTurnos();
    Iterator<fturno> IteradorTurnos = DatosTurnos.iterator();
    fturno TurnosDato = null;

    // MEDICOS
    DAOfmedicos Medicos = new DAOfmedicos();
    List<fmedicos> DatosMedico = Medicos.MostrarMedicos(0);
    Iterator<fmedicos> IteradorMedico = DatosMedico.iterator();
    fmedicos MedicoDato = null;

    //Consultorios
    DAOfconsultorio consultorios = new DAOfconsultorio();
    List<fconsultorio> DatosConsultorios = consultorios.MostrarConsultorios();
    Iterator<fconsultorio> IteradorConsultorios = DatosConsultorios.iterator();
    fconsultorio ConsultorioDato = null;
%>

<main class="content">
    <div class="container-fluid p-0">

        <h1 class="h3 mb-3">TURNOS</h1>

        <div class="row">
            <div class="col-xl-9">
                <div class="card">
                    <div class="card-header">
                        <div class="card-actions float-end">
                            <div class="dropdown position-relative">
                                <button type="button" class="btn btn-primary my-1" data-bs-toggle="modal"
                                        data-bs-target="#defaultModalPrimary"><i class="fas fa-plus"></i>
                                    Asignar Turno
                                </button>
                                <div class="modal fade" id="defaultModalPrimary" tabindex="-1" role="dialog"
                                     aria-hidden="true">
                                    <div class="modal-dialog modal-lg" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h3 class="modal-title" style="margin-left: 38%;">REGISTRO DE TURNO</h3>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>

                                            <div class="modal-body m-3">
                                                <div class="card">                                                    
                                                    <div class="card-body"> 

                                                        <div class="row">
                                                            <div class="col-md-8">
                                                                <div class="mb-3">
                                                                    <div class="input-group">
                                                                        <button class="btn btn-facebook" type="button">MEDICO</button>                                        
                                                                        <input type="text" class="form-control" id="NombreMtxt" name="NombreMtxt">        
                                                                        <button class="btn btn-facebook"  onclick="VerMedico();"><i class="fa-brands fa-searchengin"></i></button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <div class="mb-3">
                                                                    <div class="input-group">
                                                                        <button class="btn btn-facebook" type="button">CONSULTORIO</button>                                        
                                                                        <input type="text" class="form-control" id="Consultoriotxt" name="Consultoriotxt">        
                                                                        <button class="btn btn-facebook" onclick="VerConsultorio();"><i class="fa-brands fa-searchengin"></i></button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">                                                           
                                                            <div class="col-md-4">
                                                                <div class="mb-3">
                                                                    <div class="input-group">
                                                                        <button class="btn btn-facebook" type="button">Hora Inicial.</button>                                        
                                                                        <input type="time" class="form-control" name="Horatxt" id="Horatxt">               
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <div class="mb-3">
                                                                    <div class="input-group">
                                                                        <button class="btn btn-facebook" type="button">Hora Final.</button>                                        
                                                                        <input type="time" class="form-control"  name="HoraFinaltxt" id="HoraFinaltxt">                        
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <div class="mb-3">
                                                                    <div class="input-group">
                                                                        <button class="btn btn-facebook" type="button">TIEMPO DE LA  CITA</button>                                        
                                                                        <input type="number" class="form-control" name="Tiempotxt" id="Tiempotxt">                              
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="mb-3">                                                            
                                                                <h5 class="card-title">DIAS DE PROGRAMACIÒN</h5>              
                                                                <select class="form-control select2"  data-toggle="select2" multiple name="Diastxt" id="Diastxt" data-value="{{Diastxt}}">                                                                    
                                                                    <option value="1">LUNES</option>
                                                                    <option value="2">MARTES</option>
                                                                    <option value="3">MIERCOLES</option>
                                                                    <option value="4">JUEVES</option>
                                                                    <option value="5">VIERNES</option>
                                                                    <option value="6">SABADO</option>
                                                                    <option value="7">DOMINGO</option>                                                                    
                                                                </select>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>


                                            </div>

                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary"
                                                        data-bs-dismiss="modal">Cerrar</button>
                                                <button type="submit" class="btn btn-primary" onclick="GuardarTurno();">Guardar</button>                                              
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <h5 class="card-title mb-0">TURNOS</h5>                      
                    </div>
                    <div class="card-body">
                        <table id="datatables-clients" class="table table-striped" style="width:100%">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>MEDICO</th>
                                    <th>SERVICIO</th>
                                    <th class="text-center">CONSULTORIO</th>
                                    <th>TIEMPO ATENCION</th>
                                    <th>DETALLE</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%   while (IteradorTurnos.hasNext()) {
                                        TurnosDato = IteradorTurnos.next();


                                %>
                                <tr>     
                                    <td><%=TurnosDato.getId_Turno()%></td>
                                    <td><%=TurnosDato.getNombreMedico()%></td>
                                    <td><%=TurnosDato.getServicio()%></td>
                                    <td class="text-center"><%=TurnosDato.getConsultorios()%></td>
                                    <td><%=TurnosDato.getHora_I()%> - <%=TurnosDato.getHoral_F()%></td>
                                    <td><button class="btn btn-success" onclick="Verdetalle(<%=TurnosDato.getId_Turno()%>, '<%=TurnosDato.getNombreMedico()%>')">Ver Detalle</button></td>
                                </tr>       
                                <%                                    }
                                %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="col-xl-3">
                <div class="card">                   
                    <div class="card-body">
                        <div class="row">
                               <h2 class="" style="font-weight: bold" id="Nombretxt"></h2>
                            <div class="col-sm-12 text-center">
                                <img style="margin-left: -35%;" src="img/illustrations/social.png" width="250" height="250" class="rounded-circle mt-2"/>
                            </div>
                            <div class="col-sm-9 col-xl-12 col-xxl-9">
                                <strong>Dias De Trabajo</strong>                                
                            </div>
                        </div>

                        <table class="table table-sm my-2">
                            <tbody>
                                <tr>
                                    <th>Lunes</th>

                                    <td><span id="LUNES"></span></td>                        
                                </tr>
                                <tr>
                                    <th>Martes</th>                                  
                                    <td><span id="MARTES"></span></td>
                                </tr>
                                <tr>
                                    <th>Miercoles</th>
                                    <td><span id="MIERCOLES"></span></td>
                                </tr>
                                <tr>
                                    <th>Jueves</th>
                                    <td><span id="JUEVES"></span></td>
                                </tr>
                                <tr>
                                    <th>Viernes</th>
                                    <td><span id="VIERNES"></span></td>
                                </tr>
                                <tr>
                                    <th>Sabado</th>
                                    <td><span id="SABADO"></span></td>
                                </tr>
                                <tr>
                                    <th>Domingo</th>
                                    <td><span id="DOMINGO"></span></td>
                                </tr>                               
                            </tbody>
                        </table>
                        <hr/>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="SeleccMedicos" tabindex="-1" role="dialog"
             aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h3 class="modal-title" style="margin-left: 38%;">SELECCIONAR MEDICO</h3>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                aria-label="Close"></button>
                    </div>
                    <div class="modal-body m-3">
                        <table id="tablaMedicos" class="table table-striped" style="width:100%">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>CMP</th>
                                    <th>Nombre</th>                                         
                                    <th>Colegio</th>
                                    <th>Estado</th>
                                    <th>Seleccionar</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%                                    while (IteradorMedico.hasNext()) {
                                        MedicoDato = IteradorMedico.next();


                                %>
                                <tr>                                    
                                    <td><%=MedicoDato.getId_Medico()%></td>                                  
                                    <td><%=MedicoDato.getNro_Colegiatura()%></td>   
                                    <td><%=MedicoDato.getNombre()%></td>                                                      
                                    <td><%=MedicoDato.getDescripcion()%></td>
                                    <td><span class="badge bg-success">ACTIVO</span></td>
                                    <td><button class="btn btn-success"  onclick="RegresaMedico('<%=MedicoDato.getNombre()%>');">Seleccionar</button></td>
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
        <div class="modal fade" id="SeleccConsultorio" tabindex="-1" role="dialog"
             aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h3 class="modal-title" style="margin-left: 38%;">SELECCIONAR CONSULTORIO</h3>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                aria-label="Close"></button>
                    </div>
                    <div class="modal-body m-3">
                        <table id="tablaConsultorios" class="table table-striped" style="width:100%">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Consultorio</th>                                   
                                    <th>Estado</th>
                                    <th>Seleccionar</th>
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
                                    <td><span class="badge bg-success">ACTIVO</span></td>
                                    <td><button class="btn btn-success"  onclick="RegresaConsultorio('<%=ConsultorioDato.getDescripcion()%>');">Seleccionar</button></td>
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
    function Verdetalle(codigo, nombre) {

        document.getElementById('Nombretxt').innerHTML = "Dr. "+nombre;
        $.post("fturnoServlet", {"ip_turno": codigo, "Consulta": "1"}, function (response) {
            var datos = JSON.parse(response);
            const MARTES = document.querySelector('#MARTES');
            const MIERCOLES = document.querySelector('#MIERCOLES');
            const JUEVES = document.querySelector('#JUEVES');
            const VIERNES = document.querySelector('#VIERNES');
            const SABADO = document.querySelector('#SABADO');
            const LUNES = document.querySelector('#LUNES');
            const DOMINGO = document.querySelector('#DOMINGO');
            

            if (datos.LUNES === "1")
            {
                LUNES.className = "badge bg-success";
                 document.getElementById('LUNES').innerHTML = "ACTIVO";              
            } else
            {
                LUNES.className = "badge bg-warning";
                document.getElementById('LUNES').innerHTML = "INACTIVO";
            }
            if (datos.MARTES === "1")
            {
                MARTES.className = "badge bg-success";
                 document.getElementById('MARTES').innerHTML = "ACTIVO";
            } else
            {
                MARTES.className = "badge bg-warning";
                   document.getElementById('MARTES').innerHTML = "INACTIVO";
            }
            if (datos.MIERCOLES === "1")
            {
                MIERCOLES.className = "badge bg-success";
                 document.getElementById('MIERCOLES').innerHTML = "ACTIVO";
            } else
            {
                MIERCOLES.className = "badge bg-warning";
                 document.getElementById('MIERCOLES').innerHTML = "INACTIVO";
            }
            if (datos.JUEVES === "1")
            {
                JUEVES.className = "badge bg-success";
                 document.getElementById('JUEVES').innerHTML = "ACTIVO";
            } else
            {
                JUEVES.className = "badge bg-warning";
                 document.getElementById('JUEVES').innerHTML = "INACTIVO";
            }
            if (datos.VIERNES === "1")
            {
                VIERNES.className = "badge bg-success";
                 document.getElementById('VIERNES').innerHTML = "ACTIVO";
            } else
            {
                VIERNES.className = "badge bg-warning";
                 document.getElementById('VIERNES').innerHTML = "INACTIVO";
            }
            if (datos.SABADO === "1")
            {
                SABADO.className = "badge bg-success";
                 document.getElementById('SABADO').innerHTML = "ACTIVO";
            } else
            {
                SABADO.className = "badge bg-warning";
                  document.getElementById('SABADO').innerHTML = "INACTIVO";
            }
            if (datos.DOMINGO === "1")
            {
                DOMINGO.className = "badge bg-success";
                document.getElementById('DOMINGO').innerHTML = "ACTIVO";
            } else
            {
                DOMINGO.className = "badge bg-warning";
                 document.getElementById('DOMINGO').innerHTML = "INACTIVO";
            }
            

        });
    }
</script>                           
<script>
    document.addEventListener("DOMContentLoaded", function () {
        // Datatables clients
        $("#datatables-clients").DataTable({
            responsive: true,
            order: [
                [1, "asc"]
            ]
        });
        $("#tablaMedicos").DataTable({
            responsive: true,
            order: [
                [1, "asc"]
            ]
        });
        $("#tablaConsultorios").DataTable({
            responsive: true,
            order: [
                [1, "asc"]
            ]
        });
    });
</script>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        // Select2
        $(".select2").each(function () {
            $(this)
                    .wrap("<div class=\"position-relative\"></div>")
                    .select2({
                        placeholder: "DIAS",
                        dropdownParent: $(this).parent()
                    });
        });

    });
</script>
<script>
    function GuardarTurno()
    {
        NombreMtxt = document.getElementById("NombreMtxt").value;
        Consultoriotxt = document.getElementById("Consultoriotxt").value;
        Horatxt = document.getElementById("Horatxt").value;
        HoraFinaltxt = document.getElementById("HoraFinaltxt").value;
        Tiempotxt = document.getElementById("Tiempotxt").value;
        const ids = [...$("#Diastxt :selected")].map(e => e.value);
        $.post("fturnoServlet", {"Consulta": 'GuardarTurno', "NombreMtxt": NombreMtxt, "Consultoriotxt": Consultoriotxt, "Horatxt": Horatxt, "HoraFinaltxt": HoraFinaltxt, "Tiempotxt": Tiempotxt, "Diastxt": ids}, function (response) {
            if (response === "1")
            {
                swal("Good job!", "You clicked the button!", "success"),
                  location.reload();
            }
        });

    }
    function VerMedico()
    {
        $('#SeleccMedicos').modal('show');
    }
    function VerConsultorio()
    {
        $('#SeleccConsultorio').modal('show');
    }
    function RegresaMedico(Nombre)
    {

        $('#NombreMtxt').val(Nombre);
        $('#SeleccMedicos').modal('hide');

    }
    function RegresaConsultorio(Consultorio)
    {
        $('#Consultoriotxt').val(Consultorio);
        $('#SeleccConsultorio').modal('hide');
    }
</script>