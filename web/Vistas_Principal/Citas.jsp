<%-- 
    Document   : Citas
    Created on : 21 jun. 2022, 08:32:09
    Author     : Desarrollo2
--%>


<%@page import="java.util.Iterator"%>
<%@page import="Modelo.fservicios"%>
<%@page import="Modelo.DAOfservicios"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    //Mostrar Servicios_Especialidades
    DAOfservicios servicios = new DAOfservicios();
    List<fservicios> DatosServicios = servicios.MostrarServicios();
    Iterator<fservicios> IteradorServicios = DatosServicios.iterator();
    fservicios ServicioDato = null;

%>
<main class="content">
    <div class="container-fluid p-0">
        <div class="row mb-2 mb-xl-3">
            <div class="col-auto d-none d-sm-block">
                <h3>CITAS</h3>
            </div>         
        </div>
        <div class="row">
            <div class="col-xl-12">
                <div class="card">           
                    <div class="card-body">        
                        <div class="row">                       

                            <div class="col-md-3">
                                <div class="col-12">
                                    <div class="mb-3">
                                        <div class="input-group-text btn-primary text-center">ESPECIALIDAD</div>   
                                        <div class="input-group">                                                   
                                            <select class="form-control select2" data-toggle="select2"   style="width: 100%" id="Especialidadtxt" name="Especialidadtxt" onchange="buscaMedico();"> 
                                                <option>SELECCIONAR ESPECIALIDAD</option>     
                                                <%                                                while (IteradorServicios.hasNext()) {
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
                                <div class="col-md-12">
                                    <div class="mb-3">
                                        <div class="input-group-text btn-primary text-center">MEDICOS</div>   
                                        <div class="input-group">                                                   
                                            <select class="form-control select2" data-toggle="select2" style="width: 100%"  id="Medicotxt" name="Medicotxt" >  
                                                <option>SELECCIONAR MEDICO</option> 
                                            </select>
                                        </div>
                                    </div>  
                                </div>
                                <div class="col-md-12">
                                    <div class="mb-3">
                                        <div class="input-group-text btn-primary">FECHA</div>     
                                        <div class="input-group">                                                    
                                            <input type="date" class="form-control" id="Fechatxt" placeholder="Fecha del Turno" onchange="BuscaHorario();"/>
                                        </div>
                                    </div>
                                </div> 
                                <div class="col-md-12">
                                    <div class="mb-3">
                                        <a href="#" class="btn btn-lg btn-primary" style="width: 100%">CONSULTAR CITAS X PACIENTE</a>                                        
                                    </div>  
                                </div>  
                                <div class="col-md-12">
                                    <div class="mb-3">
                                        <a href="#" class="btn btn-lg btn-primary" style="width: 100%">TRANSFERIR PACIENTE</a>                                        
                                    </div>  
                                </div>        
                            </div>
                            <div class="col-md-9">
                                <div id='calendar'></div>                                
                            </div>
                            <div class="modal fade" id="Registro_Horario" tabindex="-1" role="dialog" aria-hidden="true">
                                <div class="modal-dialog modal-md" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h1 class="modal-title" style="margin-left: 25%;">Registro de Horario </h1>
                                            <!--<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button> -->
                                        </div>
                                        <div class="modal-body">

                                            <div class="card-body">

                                                <div class="row">
                                                    <div class="col-md-8">                                                        
                                                        <h5 class="form-label">MEDICO: Dr.   <span id="txtModalDoctor"></span></h5>                                                       

                                                    </div>
                                                    <div class="col-md-4 text-end ">                                                        


                                                        <h4 class="form-label">Consultorio:    <span id="txtConsultorio"></span></h4> 


                                                    </div>


                                                    <hr />
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <label class="form-label">DNI</label>       
                                                        <div class="input-group">                                                                                                           
                                                            <input class="form-control" type="text" id="txtModalDNI" />
                                                            <button class="btn btn-secondary" type="button"><img style="width: 24px; height: 24px;" src="img/illustrations/Buscar.png" alt="Buscar"/></button>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <div class="mb-3">
                                                            <label class="form-label">PACIENTE</label>                                                               
                                                            <input class="form-control" type="text" id="txtModalNombrePaciente" required/>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="mb-3">
                                                            <label class="form-label">HORA DE ATENCIÓN</label>

                                                            <select class="form-control"  id="ModalHoratxt">  
                                                                <option>SELECCIONAR HORA</option> 
                                                            </select>                                                      
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="mb-3">
                                                            <label class="form-label">DURACIÓN</label>
                                                            <input class="form-control form-control-lg" type="text" id="ModalHDuraciontxt" readonly/>
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="mb-3">
                                                    <label class="form-label">DESCRIPCION</label>
                                                    <textarea  class="form-control form-control-lg" id="ModalDescrip"></textarea>

                                                </div>                                                        
                                                <button type="submit" class="btn btn-primary" onclick="RegistraCita();">Guardar Cita</button>    


                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>                              
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal fade" id="Registro_Usuario" tabindex="-1" role="dialog" aria-hidden="true">
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
                        </div>
                    </div><!-- comment -->  
                </div>
            </div>
        </div>
    </div>
</main>
<script>
    //Bucar medico por especialidad
    function buscaMedico() {
        const medico = document.querySelector('#Medicotxt');
        var id_Especialidad = document.getElementById("Especialidadtxt").value;
        $.post("fmedicosServlet", {"id_Especialidad": id_Especialidad, "Consulta": "BuscaMedico"}, function (response) {
            var datos = JSON.parse(response);

            for (var i = 0; i < datos.length; i++) {
                const op = document.createElement("option");
                op.value = datos[i].Id_Medico;
                const text = document.createTextNode(datos[i].nombre);
                op.appendChild(text);
                medico.appendChild(op);
            }

        });
    }
    function BuscaHorario()
    {
        var medico1 = document.getElementById("Medicotxt").value;
        var id_Especialidad1 = document.getElementById("Especialidadtxt").value;
        if (medico1 === "")
        {
            alert("Seleccione Medico");
        } else
        {
            var fecha = document.getElementById("Fechatxt").value;

            $.post("fcitasServlet", {"Fecha": fecha, "id_servicio": id_Especialidad1, "Id_medico": medico1, "Consulta": "ConsultaCita"}, function (response) {

                if (response !== "")
                {
                    var datos = JSON.parse(response);
                    
                    //$('#Duraciontxt').val(datos[1].Tiempo + "Minutos");
                    var aux = "[";
                    var aux2 = "]";
                    //Calendario
                     $('#ModalHDuraciontxt').val( datos[1].Tiempo +  "Minutos");
                    var calendarEl = document.getElementById('calendar');
                    var initialLocaleCode = 'es';
                    for (var i = 0; i < datos.length; i++) {
                        var jsonTexto = '{"title":"' + datos[i].Paciente + '","start": "' + datos[i].Fecha + 'T' + datos[i].HoraA + '","end":"' + datos[i].Fecha + 'T' + datos[i].HoraF + ':00"}';
                        if (i < datos.length - 1)
                        {
                            jsonTexto = jsonTexto + ',';
                            aux = aux + jsonTexto;
                        } else
                        {
                            aux = aux + jsonTexto;
                        }
                    }
                    aux = aux + aux2;
                    var coche = JSON.parse(aux);
                    var calendar = new FullCalendar.Calendar(calendarEl, {
                        headerToolbar: {
                            left: 'prev,next today',
                            center: 'title',
                            right: 'timeGridDay,dayGridMonth,timeGridWeek,listDay'
                        },
                        locale: initialLocaleCode,

                        navLinks: true, // can click day/week names to navigate views
                        selectable: true,
                        selectMirror: true,
                        select: function () {                      
                            //var title = prompt('Event Title:');           
                            var medico1 = document.getElementById("Medicotxt").value;
                            var fechacita = document.getElementById("Fechatxt").value;
                            const fechaComoCadena = fechacita + " 23:37:22"; // día lunes
                            const dias = [
                                '7',
                                '1',
                                '2',
                                '3',
                                '4',
                                '5',
                                '6'
                            ];
                            const numeroDia = new Date(fechaComoCadena).getDay();
                            const nombreDia = dias[numeroDia];
                            console.log(nombreDia);
                            $.post("fcitasServlet", {"medico1": medico1, "Fecha": nombreDia, "Consulta": "BuscarConsultorio"}, function (response) {

                              
                                var dato1 = response;
                                if (dato1 === "")
                                {
                                    alert("El medico no tiene Turno este Dia");
                                } else
                                {
                                    document.getElementById('txtConsultorio').innerHTML = response;
                                    $('#Registro_Horario').modal('show');
                                    $(document).on('shown.bs.modal', '#Registro_Horario', function ()
                                    {
                                        //var id_Especialidad1 = document.getElementById("Especialidadtxt").value;
                                        var texto = $("#Medicotxt").find('option:selected').text();
                                        $('#txtModalDNI').focus();
                                        document.getElementById('txtModalDoctor').innerHTML = texto;                                        
                                       
                                    });

                                }
                            }),
                                    function RegistraCita()
                                    {
                                        var txtModalDNI = document.getElementById("txtModalDNI").value;
                                        var txtModalNombrePaciente = document.getElementById("txtModalNombrePaciente").value;
                                        var txtModalHora = document.getElementById("ModalHoratxt").value;
                                        var idDescripcion = document.getElementById("idDescripcion").value;


                                        $.post("fcitasServlet", {"txtModalDNI": txtModalDNI, "txtModalNombrePaciente": txtModalNombrePaciente, "txtModalHora": txtModalHora, "idDescripcion": idDescripcion, "Consulta": "ResgistraCita"}, function () {

                                            swal
                                                    ({
                                                        title: "Cita Registrado!",
                                                        icon: "success",
                                                        text: " ",
                                                        buttons: [true],
                                                        timer: 500
                                                    })
                                                    .then(() => {
                                                        $("#Registro_Horario").modal('hide');
                                                    });
                                            
                                        });

                                    };

                            /* if (title) {
                             
                             }*/
                            //    ,
                        },
                        eventClick: function (arg) {
                                alert("Modifica");
                        },
                        editable: true,
                        dayMaxEvents: true, // allow "more" link when too many events
                        events: coche
                    });
                    calendar.render();
                    //FIncalendario
                }


            });
        }
    }
</script>
<!-- CALENDARIO PRINCIPAL -->
<script>
    document.addEventListener('DOMContentLoaded', function () {

        $(".select2").each(function () {
            $(this)

                    .select2({
                        placeholder: "ELEGIR",
                        dropdownParent: $(this).parent()
                    });
        });
        var calendarEl = document.getElementById('calendar');
        var initialLocaleCode = 'es';
        var calendar = new FullCalendar.Calendar(calendarEl, {
            headerToolbar: {
                left: 'prev,next today',
                center: 'title',
                right: 'timeGridDay,dayGridMonth,timeGridWeek,listDay'
            },
            locale: initialLocaleCode
        });
        calendar.render();
    });
</script>
<!-- Registra CIta -->
<script>

</script>
<!-- MODALDEUSUARIOS  -->  
<script type="text/javascript">
    let DNI = document.getElementById("txtModalDNI");

    DNI.addEventListener('keyup', (e) => {
        if (e.keyCode === 13)
        {
            $.post("fcitasServlet", {"DNI": e.target.value, "Consulta": "BuscaDNI"}, function (response) {

                var datos = JSON.parse(response);
                $("#txtModalNombrePaciente").val(datos.nombre);
                if (datos.Nuevo === "SI")
                {

                    swal
                            ({
                                title: "SE NECESITA ACTUALIZAR LOS DATOS",
                                icon: "warning",
                                text: " ",
                                buttons: [true],
                                timer: 1000
                            })
                            .then(() => {
                                $('#Registro_Usuario').modal('show');
                                $("#NombreCompleto").val(datos.nombre);
                                var DOCDNI = document.getElementById("txtModalDNI").value;
                                $("#DNItxt").val(DOCDNI);

                                $(document).on('shown.bs.modal', '#Registro_Usuario', function ()
                                {
                                    $('#NombreCompleto').focus();

                                    var ValidaPais = document.getElementById("Pais").value;
                                    var ValidaO = document.getElementById("Ocupacion").value;
                                    var EstadoC = document.getElementById("EstadoC").value;
                                    var GrandoI = document.getElementById("GrandoI").value;
                                    if (ValidaPais === "0")
                                    {
                                        $.post("fpacienteServlet", {"Consulta": "MostrarPaises"}, function (response) {
                                            var datos = JSON.parse(response);
                                            const Paises = document.querySelector('#Pais');
                                            for (var i = 0; i < datos.length; i++) {
                                                const op = document.createElement("option");
                                                op.value = datos[i].id_pais;
                                                const text = document.createTextNode(datos[i].Pais);
                                                op.appendChild(text);
                                                Paises.appendChild(op);
                                            }
                                        });
                                    }
                                    if (ValidaO === "0")
                                    {
                                        $.post("fpacienteServlet", {"Consulta": "MostrarOcupacion"}, function (response) {
                                            var datos = JSON.parse(response);
                                            const Ocupacion = document.querySelector('#Ocupacion');
                                            for (var i = 0; i < datos.length; i++) {
                                                const op = document.createElement("option");
                                                op.value = datos[i].id_Ocupacion;
                                                const text = document.createTextNode(datos[i].Ocupacion);
                                                op.appendChild(text);
                                                Ocupacion.appendChild(op);
                                            }
                                        });
                                    }
                                    if (EstadoC === "0")
                                    {
                                        $.post("fpacienteServlet", {"Consulta": "MostrarEstadoCivil"}, function (response) {
                                            var datos = JSON.parse(response);
                                            const EstadoC = document.querySelector('#EstadoC');
                                            for (var i = 0; i < datos.length; i++) {
                                                const op = document.createElement("option");
                                                op.value = datos[i].id_EstadoC;
                                                const text = document.createTextNode(datos[i].EstadoC);
                                                op.appendChild(text);
                                                EstadoC.appendChild(op);
                                            }
                                        });
                                    }
                                    if (GrandoI === "0")
                                    {
                                        $.post("fpacienteServlet", {"Consulta": "MostrarGradoInstruccion"}, function (response) {
                                            var datos = JSON.parse(response);
                                            const GrandoI = document.querySelector('#GrandoI');
                                            for (var i = 0; i < datos.length; i++) {
                                                const op = document.createElement("option");
                                                op.value = datos[i].id_GradoI;
                                                const text = document.createTextNode(datos[i].GradoI);
                                                op.appendChild(text);
                                                GrandoI.appendChild(op);
                                            }
                                        });
                                    }
                                });
                            });
                }

            });
        }
    });
</script>
<!-- RegistroUsuarios  -->  
<script>
    function Casotitular()
    {
        var Parentesco = document.getElementById("Parentesco").value;
        var NombreC = document.getElementById("NombreCompleto").value;
        var Documento = document.getElementById("DNItxt").value;
        if (Parentesco === "1")
        {
            $('#Titular').val(NombreC);
            $('#RucPaciente').val(Documento);
        } else
        {
            $('#Titular').val("");
            $('#RucPaciente').val("");
        }
    }
    function FiltroPorPais()
    {
        var id_pais = document.getElementById("Pais").value;
        $.post("fpacienteServlet", {"id_pais": id_pais, "Consulta": "MostrarDepartamento"}, function (response) {
            var datos = JSON.parse(response);
            const Departamento = document.querySelector('#Departamento');
            for (var i = 0; i < datos.length; i++) {
                const op = document.createElement("option");
                op.value = datos[i].id_Departamento;
                const text = document.createTextNode(datos[i].Departamento);
                op.appendChild(text);
                Departamento.appendChild(op);
            }
        });
    }
    function RegistrarP()
    {
        var FechInresotxts = document.getElementById("FechInresotxts").value;
        var DNItxt = document.getElementById("DNItxt").value;
        var NombreCompleto = document.getElementById("NombreCompleto").value;
        var DireccionPaciente = document.getElementById("DireccionPaciente").value;
        var FechNaciPaciente = document.getElementById("FechNaciPaciente").value;
        var SexoPaciente = document.getElementById("SexoPaciente").value;
        var Pais = document.getElementById("Pais").value;
        var Departamento = document.getElementById("Departamento").value;
        var Telefonotxt = document.getElementById("Telefonotxt").value;
        var Email = document.getElementById("Email").value;
        var Parentesco = document.getElementById("Parentesco").value;
        var RucPaciente = document.getElementById("RucPaciente").value;
        var Titular = document.getElementById("Titular").value;
        var Ocupacion = document.getElementById("Ocupacion").value;
        var EstadoC = document.getElementById("EstadoC").value;
        var GrandoI = document.getElementById("GrandoI").value;

        $.post("fpacienteServlet", {"FechInresotxts": FechInresotxts, "DNItxt": DNItxt, "NombreCompleto": NombreCompleto, "DireccionPaciente": DireccionPaciente, "FechNaciPaciente": FechNaciPaciente, "SexoPaciente": SexoPaciente, "Pais": Pais, "Departamento": Departamento, "Telefonotxt": Telefonotxt, "Email": Email, "Parentesco": Parentesco, "RucPaciente": RucPaciente, "Titular": Titular, "Ocupacion": Ocupacion, "EstadoC": EstadoC, "GrandoI": GrandoI, "TipoDoc": "DNI", "Consulta": "ResgistraP"}, function () {

            swal
                    ({
                        title: "Paciente Registrado!",
                        icon: "success",
                        text: " ",
                        buttons: [true],
                        timer: 500
                    })
                    .then(() => {
                        $("#Registro_Usuario").modal('hide');
                    });
        });
    }
</script>

