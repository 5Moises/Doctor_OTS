<%-- 
    Document   : index
    Created on : 8 jun. 2022, 10:02:43
    Author     : Desarrollo2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <%@include file="header.jsp" %>    

    <%
        String Seccion = request.getParameter("Seccion");
        String PaginaSeccion = "MenuP.jsp";
        int AbrirSesion = 0;
    %>
    <body data-theme="light" data-layout="fluid" data-sidebar-position="left" data-sidebar-behavior="sticky">
        <div class="wrapper">
            <nav id="sidebar" class="sidebar">
                <div class="sidebar-content js-simplebar">
                    <a class="sidebar-brand" href="index.html">
                        <img src="img/logo.svg" height="100" width="100">
                        <span class="align-middle me-3 white_bg" style="margin-left: -10px;">DOCTORWEB</span>
                    </a>


                    <ul class="sidebar-nav">
                        <li class="sidebar-header">
                            <h3 style="color: red">PRINCIPAL</h3>
                        </li>
                        <li class="sidebar-item"><a class="sidebar-link" href="index.jsp?Seccion=2"><i class="fa-regular fa-calendar-days turquoise_color"></i><span class="align-middle">CITAS</span></a></li>
                        <li class="sidebar-item"><a class="sidebar-link" href="index.jsp?Seccion=1"><i class="fa-solid fa-user-doctor yellow_color"></i><span class="align-middle">PROGRAMACIÓN DE TURNOS</span></a></li>
                        <li class="sidebar-item"><a class="sidebar-link" href="index.jsp?Seccion=3"><i class="fa-solid fa-person-circle-plus brown_color"></i><span class="align-middle">ADMINISION</span></a></li>
                        <li class="sidebar-item"><a class="sidebar-link" href="index.jsp?Seccion=4"><i class="fa-solid fa-house-medical-flag orange_color"></i><span class="align-middle">CONSULTA AMBULATORIA</span></a></li>                        
                        <li class="sidebar-item"><a class="sidebar-link" href="index.jsp?Seccion=5"><i class="fa-solid fa-cash-register turquoise_color"></i><span class="align-middle">FLUJO DE CAJA</span></a></li>
                        <li class="sidebar-item"><a class="sidebar-link" href="index.jsp?Seccion=6"><i class="fa-solid fa-handshake orange_color"></i><span class="align-middle">CUENTAS CORRIENTES</span></a></li>
                        <li class="sidebar-item"><a class="sidebar-link" href="index.jsp?Seccion=7"><i class="fa-solid fa-chart-column"></i><span class="align-middle">DATAMINING</span></a></li>
                        <li class="sidebar-item"><a class="sidebar-link" href="menuMaestros.jsp"><i class="fa-solid fa-gears red_color"></i><span class="align-middle">MANTENIMIENTO</span></a></li>


                    </ul>



                    <%
                        if (Seccion == null) {
                            Seccion = " ";
                        }
                        switch (Seccion) {
                            case "1":
                                PaginaSeccion = "Vistas_Principal/ProgramacionTurnos.jsp";
                                break;
                            case "2":
                                PaginaSeccion = "Vistas_Principal/Citas.jsp";
                                break;
                            case "3":
                                PaginaSeccion = "Vistas_Principal/Admision.jsp";
                                break;
                            case "4":
                                PaginaSeccion = "Vistas_Principal/ConsultaAmbulatoria.jsp";
                                break;
                            case "5":
                                PaginaSeccion = "Vistas_Principal/FlujoCaja.jsp";
                                break;
                            case "6":
                                PaginaSeccion = "Vistas_Principal/CuentasCorrientes.jsp";
                                break;
                            case "7":
                                PaginaSeccion = "Vistas_Principal/DataMining.jsp";
                                break;
                            default:
                                PaginaSeccion = "MenuP.jsp";
                        }
                    %>

                </div>
            </nav>
            <div class="main">
                <nav class="navbar navbar-expand navbar-light navbar-bg">
                    <a class="sidebar-toggle">
                        <i class="hamburger align-self-center"></i>
                    </a>




                    <div class="navbar-collapse collapse">
                        <ul class="navbar-nav navbar-align">

                            <li class="nav-item dropdown">
                                <a class="nav-icon dropdown-toggle d-inline-block d-sm-none" href="#" data-bs-toggle="dropdown">
                                    <i class="align-middle" data-feather="settings"></i>
                                </a>

                                <a class="nav-link dropdown-toggle d-none d-sm-inline-block" href="#" data-bs-toggle="dropdown">
                                    <img src="img/avatars/avatar.jpg" class="avatar img-fluid rounded-circle me-1" alt="Chris Wood" /> <span class="text-dark">Chris Wood</span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-end">
                                    <a class="dropdown-item" href="pages-profile.html"><i class="align-middle me-1" data-feather="user"></i> Profile</a>
                                    <a class="dropdown-item" href="#"><i class="align-middle me-1" data-feather="pie-chart"></i> Analytics</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="pages-settings.html">Settings & Privacy</a>
                                    <a class="dropdown-item" href="#">Help</a>
                                    <a class="dropdown-item" href="#">Sign out</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>             
                <jsp:include page="<%= PaginaSeccion%>"/>

            </div>
        </div> 
        <%@include file="footer.jsp" %>
    </body>



</html>
