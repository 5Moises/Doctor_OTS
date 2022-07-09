<%-- 
    Document   : menuMaestros
    Created on : 9 jun. 2022, 10:36:13
    Author     : Desarrollo2
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String Seccion = request.getParameter("Seccion");
    String PaginaSeccion = "MenuP.jsp";
    int AbrirSesion = 0;
%>
<html>

    <%@include file="header.jsp" %>    
    <body data-theme="light" data-layout="fluid" data-sidebar-position="left" data-sidebar-behavior="sticky" class="" onresize >
        <div class="wrapper">
            <nav id="sidebar" class="sidebar">
                <div class="sidebar-content js-simplebar">
                    <a>
                        <img src="img/logo.png" style="width: 300px; height:200px; padding: 10% 10% 10% 10%" alt="alt"/>
                    </a>

                    <ul class="sidebar-nav">
                        <li class="sidebar-header">
                            <h3 style="color: red" class="text-center">MANTENIMIENTO</h3>
                        </li>

                        <li class="sidebar-item"><a class="sidebar-link" href="menuMaestros.jsp?Seccion=1"><i class="fa fa-graduation-cap turquoise_color"></i><span class="align-middle">Servicios / Especialidades</span></a></li>
                        <li class="sidebar-item"><a class="sidebar-link" href="menuMaestros.jsp?Seccion=2"><i class="fa-solid fa-user-doctor yellow_color"></i><span class="align-middle">Profesionales de la Salud</span></a></li>
                        <li class="sidebar-item"><a class="sidebar-link" href="menuMaestros.jsp?Seccion=3"><i class="fa-solid fa-house-chimney-medical red_color"></i><span class="align-middle">Consultorios</span></a></li>
                        <li class="sidebar-item"><a  class="sidebar-link" href="menuMaestros.jsp?Seccion=4"><i class="fa-solid fa-user-nurse brown_color"></i><span class="align-middle">Diagnostico</span></a></li>
                        <li class="sidebar-item"><a class="sidebar-link" href="menuMaestros.jsp?Seccion=5"><i class="fa-solid fa-bed-pulse orange_color"></i><span class="align-middle">Pacientes / Clientes</span></a></li>
                        <li class="sidebar-item"><a class="sidebar-link" href="menuMaestros.jsp?Seccion=6"><i class="fa-solid fa-users-gear green_color"></i><span class="align-middle">Personal</span></a></li>
                        <li class="sidebar-item">
                            <a data-bs-target="#pages" data-bs-toggle="collapse" class="sidebar-link collapsed">
                                <i class="fa-solid fa-basket-shopping blue1_color"></i><span class="align-middle">Productos</span>
                            </a>
                            <ul id="pages" class="sidebar-dropdown list-unstyled collapse " data-bs-parent="#sidebar">

                                <li>
                                    <a class="sidebar-link" href="menuMaestros.jsp?Seccion=7"><i class="fa-solid fa-screwdriver-wrench"></i><span>Mantenimiento</span></a>
                                </li>
                                <li>
                                    <a class="sidebar-link" href="menuMaestros.jsp?Seccion=8"><i class="fa-solid fa-flask-vial"></i><span>Laboratorios</span></a>
                                </li>
                                <li>
                                    <a class="sidebar-link" href="menuMaestros.jsp?Seccion=9"><i class="fa-solid fa-truck-ramp-box"></i><span>Proveedores</span></a>
                                </li>                                          
                            </ul>
                        </li>
                        <li class="sidebar-item">
                            <a data-bs-target="#Factura" data-bs-toggle="collapse" class="sidebar-link collapsed"><i class="fa-solid fa-scale-unbalanced-flip purple_color"></i><span  class="align-middle">Facturación</span></a>
                            <ul class="sidebar-dropdown list-unstyled collapse " data-bs-parent="#sidebar" id="Factura">
                                <li>
                                    <a class="sidebar-link" href="menuMaestros.jsp?Seccion=10"><i class="fa-solid fa-table-list"></i><span>Items Tarifario</span></a>
                                </li>
                                <li>
                                    <a class="sidebar-link" href="menuMaestros.jsp?Seccion=11"> <i class="fa-solid fa-table-columns"></i><span>Concepto / Tarifario</span></a>
                                </li>
                                <li>
                                    <a class="sidebar-link" href="menuMaestros.jsp?Seccion=12"><i class="fa-solid fa-magnifying-glass-chart"></i><span>Factor</span></a>
                                </li>     
                                <li>
                                    <a class="sidebar-link" href="menuMaestros.jsp?Seccion=13"><i class="fa-solid fa-comment-medical"></i><span>Motivos</span></a>
                                </li>   
                                <li>
                                    <a class="sidebar-link" href="menuMaestros.jsp?Seccion=14"><i class="fa-solid fa-person"></i><span>Perfiles</span></a>
                                </li>    
                            </ul>
                        </li>
                        <li class="sidebar-item"><a class="sidebar-link" href="menuMaestros.jsp?Seccion=15"><i class="fa-solid fa-building turquoise_color"></i><span  class="align-middle">Empresas / Polizas</span></a></li>
                        <li class="sidebar-item"><a class="sidebar-link" href="menuMaestros.jsp?Seccion=16"><i class="fa-solid fa-user-shield orange_color"></i><span  class="align-middle">Aseguradoras</span></a></li>
                        <li class="sidebar-item"><a  data-bs-target="#Tablas" data-bs-toggle="collapse" class="sidebar-link collapsed"><i class="fa-solid fa-table red_color"></i><span  class="align-middle">Tablas Generales</span></a>
                            <ul class="sidebar-dropdown list-unstyled collapse " data-bs-parent="#sidebar" id="Tablas">
                                <li>
                                    <a class="sidebar-link" href="menuMaestros.jsp?Seccion=17"><i class="fa-solid fa-kit-medical"></i><span>Beneficios</span></a>
                                </li>
                                <li>
                                    <a class="sidebar-link" href="menuMaestros.jsp?Seccion=18"><i class="fa-solid fa-clipboard-user"></i><span>Usuarios</span></a>
                                </li>
                                <li>
                                    <a class="sidebar-link" href="menuMaestros.jsp?Seccion=19"><i class="fa-solid fa-people-group"></i><span>Promotores</span></a>
                                </li>     
                                <li>
                                    <a class="sidebar-link" href="menuMaestros.jsp?Seccion=20"><i class="fa-solid fa-mountain-sun"></i><span>Regiones</span></a>
                                </li>   
                                <li>
                                    <a class="sidebar-link" href="menuMaestros.jsp?Seccion=21"><i class="fa-solid fa-print"></i><span>Impresoras</span></a>
                                </li>    
                                <li>
                                    <a class="sidebar-link" href="menuMaestros.jsp?Seccion=22"><i class="fa-solid fa-map"></i><span>Provincias</span></a>
                                </li>                                       
                            </ul>
                        </li>
                    </ul>
                   


                    <%
                        if (Seccion == null) {
                            Seccion = "";
                        }
                        switch (Seccion) {
                            case "1":
                                PaginaSeccion = "Vistas_Maestro/Especialidades.jsp";
                                break;
                            case "2":
                                PaginaSeccion = "Vistas_Maestro/Profesionales.jsp";
                                break;
                            case "3":
                                PaginaSeccion = "Vistas_Maestro/Consultorios.jsp";
                                break;
                            case "4":
                                PaginaSeccion = "Vistas_Maestro/Diagnostico.jsp";
                                break;
                            case "5":
                                PaginaSeccion = "Vistas_Maestro/Pacientes.jsp";
                                break;
                            case "6":
                                PaginaSeccion = "Vistas_Maestro/Personal.jsp";
                                break;
                            case "7":
                                PaginaSeccion = "Vistas_Maestro/Productos/Mantenimiento.jsp";
                                break;
                            case "8":
                                PaginaSeccion = "Vistas_Maestro/Productos/Laboratorios.jsp";
                                break;
                            case "9":
                                PaginaSeccion = "Vistas_Maestro/Productos/Proveedores.jsp";
                            case "10":
                                PaginaSeccion = "Vistas_Maestro/Facturacion/ItemTarifa.jsp";
                                break;
                            case "11":
                                PaginaSeccion = "Vistas_Maestro/Facturacion/ConceptoTarifa.jsp";
                                break;
                            case "12":
                                PaginaSeccion = "Vistas_Maestro/Facturacion/Factor.jsp";
                                break;
                            case "13":
                                PaginaSeccion = "Vistas_Maestro/Facturacion/Motivos.jsp";
                                break;
                            case "14":
                                PaginaSeccion = "Vistas_Maestro/Facturacion/Perfiles.jsp";
                                break;
                            case "15":
                                PaginaSeccion = "Vistas_Maestro/Empresas.jsp";
                                break;
                            case "16":
                                PaginaSeccion = "Vistas_Maestro/Aseguradora.jsp";
                                break;
                            case "17":
                                PaginaSeccion = "Vistas_Maestro/Tablas_Generales/Beneficios.jsp";
                                break;
                            case "18":
                                PaginaSeccion = "Vistas_Maestro/Tablas_Generales/Usuarios.jsp";
                                break;
                            case "19":
                                PaginaSeccion = "Vistas_Maestro/Tablas_Generales/Promotores.jsp";
                                break;
                            case "20":
                                PaginaSeccion = "Vistas_Maestro/Tablas_Generales/Regiones.jsp";
                                break;
                            case "21":
                                PaginaSeccion = "Vistas_Maestro/Tablas_Generales/Impresoras.jsp";
                                break;
                            case "22":
                                PaginaSeccion = "Vistas_Maestro/Tablas_Generales/Provincias.jsp";
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

                    <form class="d-none d-sm-inline-block">
                        <div class="input-group input-group-navbar">
                            <input type="text" class="form-control" placeholder="Search projects…" aria-label="Search">
                            <button class="btn" type="button">
                                <i class="align-middle" data-feather="search"></i>
                            </button>
                        </div>
                    </form>

                  
                    <div class="navbar-collapse collapse">
                        <ul class="navbar-nav navbar-align">
                            <li class="nav-item dropdown">
                                <a class="nav-icon dropdown-toggle" href="#" id="messagesDropdown" data-bs-toggle="dropdown">
                                    <div class="position-relative">
                                        <i class="align-middle" data-feather="message-circle"></i>
                                        <span class="indicator">4</span>
                                    </div>
                                </a>
                                <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end py-0" aria-labelledby="messagesDropdown">
                                    <div class="dropdown-menu-header">
                                        <div class="position-relative">
                                            4 New Messages
                                        </div>
                                    </div>
                                    <div class="list-group">
                                        <a href="#" class="list-group-item">
                                            <div class="row g-0 align-items-center">
                                                <div class="col-2">
                                                    <img src="img/avatars/avatar-5.jpg" class="avatar img-fluid rounded-circle" alt="Ashley Briggs">
                                                </div>
                                                <div class="col-10 ps-2">
                                                    <div class="text-dark">Ashley Briggs</div>
                                                    <div class="text-muted small mt-1">Nam pretium turpis et arcu. Duis arcu tortor.</div>
                                                    <div class="text-muted small mt-1">15m ago</div>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="list-group-item">
                                            <div class="row g-0 align-items-center">
                                                <div class="col-2">
                                                    <img src="img/avatars/avatar-2.jpg" class="avatar img-fluid rounded-circle" alt="Carl Jenkins">
                                                </div>
                                                <div class="col-10 ps-2">
                                                    <div class="text-dark">Carl Jenkins</div>
                                                    <div class="text-muted small mt-1">Curabitur ligula sapien euismod vitae.</div>
                                                    <div class="text-muted small mt-1">2h ago</div>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="list-group-item">
                                            <div class="row g-0 align-items-center">
                                                <div class="col-2">
                                                    <img src="img/avatars/avatar-4.jpg" class="avatar img-fluid rounded-circle" alt="Stacie Hall">
                                                </div>
                                                <div class="col-10 ps-2">
                                                    <div class="text-dark">Stacie Hall</div>
                                                    <div class="text-muted small mt-1">Pellentesque auctor neque nec urna.</div>
                                                    
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="list-group-item">
                                            <div class="row g-0 align-items-center">
                                                <div class="col-2">
                                                    <img src="img/avatars/avatar-3.jpg" class="avatar img-fluid rounded-circle" alt="Bertha Martin">
                                                </div>
                                                <div class="col-10 ps-2">
                                                    <div class="text-dark">Bertha Martin</div>
                                                    <div class="text-muted small mt-1">Aenean tellus metus, bibendum sed, posuere ac, mattis non.</div>
                                                 
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="dropdown-menu-footer">
                                        <a href="#" class="text-muted">Show all messages</a>
                                    </div>
                                </div>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-icon dropdown-toggle" href="#" id="alertsDropdown" data-bs-toggle="dropdown">
                                    <div class="position-relative">
                                        <i class="align-middle" data-feather="bell-off"></i>
                                    </div>
                                </a>
                                <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end py-0" aria-labelledby="alertsDropdown">
                                    <div class="dropdown-menu-header">
                                        4 New Notifications
                                    </div>
                                    <div class="list-group">
                                        <a href="#" class="list-group-item">
                                            <div class="row g-0 align-items-center">
                                                <div class="col-2">
                                                    <i class="text-danger" data-feather="alert-circle"></i>
                                                </div>
                                                <div class="col-10">
                                                    <div class="text-dark">Update completed</div>
                                                    <div class="text-muted small mt-1">Restart server 12 to complete the update.</div>
                                                    <div class="text-muted small mt-1">2h ago</div>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="list-group-item">
                                            <div class="row g-0 align-items-center">
                                                <div class="col-2">
                                                    <i class="text-warning" data-feather="bell"></i>
                                                </div>
                                                <div class="col-10">
                                                    <div class="text-dark">Lorem ipsum</div>
                                                    <div class="text-muted small mt-1">Aliquam ex eros, imperdiet vulputate hendrerit et.</div>
                                                    <div class="text-muted small mt-1">6h ago</div>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="list-group-item">
                                            <div class="row g-0 align-items-center">
                                                <div class="col-2">
                                                    <i class="text-primary" data-feather="home"></i>
                                                </div>
                                                <div class="col-10">
                                                    <div class="text-dark">Login from 192.186.1.1</div>
                                                    <div class="text-muted small mt-1">8h ago</div>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="list-group-item">
                                            <div class="row g-0 align-items-center">
                                                <div class="col-2">
                                                    <i class="text-success" data-feather="user-plus"></i>
                                                </div>
                                                <div class="col-10">
                                                    <div class="text-dark">New connection</div>
                                                    <div class="text-muted small mt-1">Anna accepted your request.</div>
                                                    <div class="text-muted small mt-1">12h ago</div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="dropdown-menu-footer">
                                        <a href="#" class="text-muted">Show all notifications</a>
                                    </div>
                                </div>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-flag dropdown-toggle" href="#" id="languageDropdown" data-bs-toggle="dropdown">
                                    <img src="img/flags/us.png" alt="English" />
                                </a>
                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="languageDropdown">
                                    <a class="dropdown-item" href="#">
                                        <img src="img/flags/us.png" alt="English" width="20" class="align-middle me-1" />
                                        <span class="align-middle">English</span>
                                    </a>
                                    <a class="dropdown-item" href="#">
                                        <img src="img/flags/es.png" alt="Spanish" width="20" class="align-middle me-1" />
                                        <span class="align-middle">Spanish</span>
                                    </a>
                                    <a class="dropdown-item" href="#">
                                        <img src="img/flags/de.png" alt="German" width="20" class="align-middle me-1" />
                                        <span class="align-middle">German</span>
                                    </a>
                                    <a class="dropdown-item" href="#">
                                        <img src="img/flags/nl.png" alt="Dutch" width="20" class="align-middle me-1" />
                                        <span class="align-middle">Dutch</span>
                                    </a>
                                </div>
                            </li>
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
