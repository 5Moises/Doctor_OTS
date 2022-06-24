<%-- 
    Document   : index
    Created on : 8 jun. 2022, 10:02:43
    Author     : Desarrollo2
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String Seccion = request.getParameter("Seccion");
    String PaginaSeccion = "MenuP.jsp";
    int AbrirSesion = 0;
%>
<html lang="es">

    <%@include file="header.jsp" %>
    <style>
        .sidebar-item{
            font-size: 120%;
        }


    </style>
    <body data-theme="light" data-layout="fluid" data-sidebar-position="left" data-sidebar-behavior="sticky" class="" onresize >
        <div class="wrapper">
            <nav id="sidebar" class="sidebar">
                <div class="sidebar-content js-simplebar">
                    <a>
                        <img src="img/logo.png" style="width: 300px; height:200px; padding: 10% 10% 10% 10%" alt="alt"/>
                    </a>

                    <ul class="sidebar-nav">
                        <li class="sidebar-header">
                            <h3 style="color: red">PRINCIPAL</h3>
                        </li>
                        <li class="sidebar-item"><a class="sidebar-link" href="index.jsp?Seccion=2"><i class="fa fa-graduation-cap turquoise_color"></i><span class="align-middle">CITAS</span></a></li>
                        <li class="sidebar-item"><a class="sidebar-link" href="index.jsp?Seccion=1"><i class="fa fa-graduation-cap turquoise_color"></i><span class="align-middle">PROGRAMACIÓN DE TURNOS</span></a></li>
                        <li class="sidebar-item"><a class="sidebar-link" href="menuMaestros.jsp"><i class="fa fa-graduation-cap turquoise_color"></i><span class="align-middle">Mantenimiento</span></a></li>
                        

                    </ul>



                    <%
                        if (Seccion == null) {
                            Seccion = "";
                        }
                        switch (Seccion) {
                            case "1":
                                PaginaSeccion = "Vistas_Principal/ProgramacionTurnos.jsp";
                                break;
                            case "2":
                                PaginaSeccion = "Vistas_Principal/Citas.jsp";
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
        <%@include file="footer.jsp" %>>
    </body>


    <!-- Mirrored from appstack.bootlab.io/dashboard-default.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 14 Jun 2022 14:46:51 GMT -->
</html>
