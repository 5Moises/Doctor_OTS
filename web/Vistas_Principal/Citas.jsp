<%-- 
    Document   : Citas
    Created on : 21 jun. 2022, 08:32:09
    Author     : Desarrollo2
--%>

<%@page import="Modelo.fmedicos"%>
<%@page import="Modelo.DAOfmedicos"%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.fservicios"%>
<%@page import="Modelo.DAOfservicios"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
    .rb-container {
        font-family: "PT Sans", sans-serif;
        width: 100%;
        display: block;
        position: relative;
    }

    .rb-container ul.rb {
        margin: 2.5em 0;
        padding: 0;
        display: inline-block;
    }

    .rb-container ul.rb li {
        list-style: none;
        margin-left: 10%;
        border-left: 1px dashed black;
        padding: 0px 0px 15px 30px;
        position: relative;
    }

    .rb-container ul.rb li:last-child {
        border-left: 0;
    }

    .rb-container ul.rb li::before {
        position: absolute;
        left: -17px;
        top: -5px;
        content: "";
        border: 8px solid rgba(80, 216, 144, 1);
        border-radius: 500%;
        background: #ffff33;
        height: 30px;
        width: 30px;
        transition: all 100ms ease-in-out;
    }

    .rb-container ul.rb li:hover::before {
        border-color: #232931;
        transition: all 1000ms ease-in-out;
    }

    ul.rb li .timestamp {
        color: #50d890;
        position: relative;
        width: 200px;
        font-size: 12px;
    }

    .item-title {
        color: rgb(5, 5, 5);
        width: 100%;
    }
</style>
<%
    DAOfservicios servicios = new DAOfservicios();
    List<fservicios> DatosServicios = servicios.MostrarServicios();
    Iterator<fservicios> IteradorServicios = DatosServicios.iterator();
    fservicios ServicioDato = null;


%>
<main class="content">
    <div class="container-fluid p-0">
        <h1 class="h3 mb-3">Citas</h1>
        <div class="row">
            <div class="col-xl-12">
                <div class="card">           
                    <div class="card-body">        
                        <div class="col-12 col-lg-12 col-xxl-12 d-flex">
                            <div class="card flex-fill">                                
                                <div class="card-body">    
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="mb-3">
                                                <div class="input-group">
                                                    <div class="input-group-text btn-primary">ESPECIALIDAD</div>   
                                                    <select class="form-control select2" data-toggle="select2" id="Especialidadtxt" name="Especialidadtxt" onchange="buscaMedico();"> 
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
                                        <div class="col-md-4">
                                            <div class="mb-3">
                                                <div class="input-group">
                                                    <div class="input-group-text btn-primary">MEDICOS</div>   
                                                    <select class="form-control select2" data-toggle="select2" id="Medicotxt" name="Medicotxt" >  
                                                        <option value="">SELECCIONAR MEDICO</option> 
                                                    </select>
                                                </div>
                                            </div>  
                                        </div>
                                        <div class="col-md-4">
                                            <div class="mb-3">
                                                <div class="input-group">
                                                    <div class="input-group-text btn-primary">Fecha</div>     
                                                    <input type="date" class="form-control" id="Fechatxt" placeholder="Fecha del Turno" onchange="BuscaHorario();"/>
                                                </div>
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
                            </div>
                        </div>
                    </div>
                </div>
            </div><!-- comment -->            
        </div>
        <div class="col-xl-12">
            <div class="card">  

                <div class="card-body">        

                    <div id="fullcalendar"></div>
                </div>
            </div>
        </div><!-- comment -->
    </div>
</main>
<script>
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
        if (medico1 === "")
        {
            alert("Seleccione Medico");
        } else
        {
            var fecha = document.getElementById("Fechatxt").value;
            const fechaComoCadena = fecha + " 23:37:22";
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

            $.post("fcitasServlet", {"Id_dia": numeroDia, "Id_medico": medico1, "Consulta": "ConsultaDia"}, function (response) {
                var datos = JSON.parse(response);
                const DOMitems = document.querySelector('#Citas');
                for (var i = datos.HoraI * 100; i < datos.HoraF * 100; ) {
                    const li = document.createElement("li");
                    li.className = "rb-item";
                    const a = document.createElement("a");
                    const div1 = document.createElement("div");
                    div1.className = "timestamp";
                    const div2 = document.createElement("div");
                    div2.className = "item-title";
                    const text = document.createTextNode(i);
                    const text1 = document.createTextNode("Paciente");
                    div1.appendChild(text);
                    div2.appendChild(text1);
                    a.appendChild(div1);
                    a.appendChild(div2);
                    li.appendChild(a);

                    DOMitems.appendChild(li);
                    i = i + 25;
                }



            });
        }

    }
</script>
<script>
    document.addEventListener("DOMContentLoaded", function () {

        var calendarEl = document.getElementById('fullcalendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
            themeSystem: 'bootstrap',
            initialView: 'timeGridDay',
            headerToolbar: {
                left: 'prev,next Hoy',
                center: 'title',
                right: 'dayGridMonth,timeGridWeek,timeGridDay'
            },
            events: [
                {

                    title: 'Repeating Event',
                    start: '2022-06-23T16:00:00',
                    end: '2022-06-23T16:25:00',
                    click: 'BuscaHorario()'
                }
            ]
        });
        setTimeout(function () {
            calendar.render();
        }, 250)
    });
</script>   
