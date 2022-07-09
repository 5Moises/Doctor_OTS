<%-- 
    Document   : ConsultaAmbulatoria
    Created on : 7 jul. 2022, 09:16:26
    Author     : Desarrollo2
--%>
<main class="content">
    <div class="container-fluid p-0">

        <div class="row">
            <div class="col-lg-9">
                <div class="card">

                    <div class="card-body">
                        <h5 class="card-title">Consulta Ambulatoria</h5>
                        <div id="smartwizard-arrows-success" class="wizard wizard-success">
                            <ul class="nav">
                                <li class="nav-item"><a class="nav-link" href="#arrows-success-step-1" style="font-size: 20px;">DATOS DE ATENCIÓN<br /></a></li>
                                <li class="nav-item"><a class="nav-link" onclick="MostrarHistoria();" style="font-size: 20px;">HISTORIA CLINICA<br /></a></li>                               
                            </ul>

                            <div class="tab-content">
                                <div id="arrows-success-step-1" class="tab-pane" role="tabpanel">
                                    <div class="row">
                                        <hr />
                                        <label class="form-label">DATOS PERSONALES</label>       


                                        <div class="col-md-2">
                                            <label class="form-label">N° Atención</label>       
                                            <div class="input-group">                                                                                                           
                                                <input class="form-control"   style="flex: 1 1 auto" type="text" id="txtModalDNI" autofocus/>
                                                <button class="btn btn-secondary" type="button"><img style="width: 20px; height: 20px;" src="img/illustrations/Buscar.png" alt="Buscar"/></button>
                                            </div>
                                        </div>
                                        <div class="col-md-2">
                                            <label class="form-label">N° Historia</label>       

                                            <input class="form-control" type="text" id="2" />                                                

                                        </div>
                                        <div class="col-md-2">
                                            <label class="form-label">Fecha Atención</label>       

                                            <input class="form-control" type="date" id="3" />                                                

                                        </div>
                                        <div class="col-md-2">
                                            <div class="mb-3">
                                                <label class="form-label">Grupo Sanguinio</label>       

                                                <select class="form-control" data-toggle="select2" id="SexoPaciente" name="Sexo"> 
                                                    <option>ELEGIR</option>                                                                    
                                                </select>

                                            </div>
                                        </div>
                                        <div class="col-md-2">
                                            <label class="form-label">Hora</label>       

                                            <input class="form-control" type="time" id="4" />                                                

                                        </div>
                                        <div class="col-md-2">
                                            <label class="form-label">Edad</label>       

                                            <input class="form-control" type="text" id="5" />                                                

                                        </div>
                                    </div> 
                                    <div class="row">                                    
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">NOMBRE</label>
                                                <input class="form-control form-control-lg" type="text" id="txtModalHora" />
                                            </div>
                                        </div>          
                                        <div class="col-md-2">
                                            <div class="mb-3">
                                                <label class="form-label">Sexo</label>
                                                <input class="form-control form-control-lg" type="text" id="txtModalHora" />
                                            </div>
                                        </div>     
                                        <div class="col-md-4">
                                            <div class="mb-3">
                                                <label class="form-label">ESPECIALIDAD</label>
                                                <input class="form-control form-control-lg" type="text" id="txtModalHora" />
                                            </div>
                                        </div>        
                                    </div>
                                    <hr />
                                    <div class="row">  

                                        <div class="col-md-6">
                                            <label class="form-label">DATOS DEL CONTRATANTE</label> 
                                            <div class="input-group mb-3" > 
                                                <div class="input-group-text btn-secondary">Contratante</div>
                                                <input type="text" class="form-control">
                                                <input type="text" class="form-control" style=" margin-left: -40%"  >
                                            </div>
                                        </div>  

                                        <div class="col-md-6">
                                            <label class="form-label">DATOS DE ATENCIÓN</label> 
                                            <div class="input-group mb-3" > 
                                                <div class="input-group-text btn-secondary">Medico</div>
                                                <select class="form-control"  id="medico" name="medico"> 
                                                    <option>Elegir</option>                                                   
                                                </select>
                                            </div>
                                        </div> 
                                    </div> 
                                    <div class="row">                                          
                                        <div class="col-md-6">
                                            <div class="input-group mb-3" > 
                                                <div class="input-group-text btn-secondary">Aseguradora</div>
                                                <input type="text" class="form-control">
                                                <input type="text" class="form-control" style=" margin-left: -35%"  >
                                            </div>
                                        </div>    
                                        <div class="col-md-6">

                                            <div class="input-group mb-3" > 
                                                <div class="input-group-text btn-secondary">Tip. Consulta</div>
                                                <select class="form-control"  id="medico" name="medico"> 
                                                    <option>Elegir</option>                                                   
                                                </select>
                                            </div>
                                        </div> 
                                    </div> 
                                    <div class="row">                                          
                                        <div class="col-md-6">
                                            <div class="input-group mb-3" > 
                                                <div class="input-group-text btn-secondary">Deducible</div>
                                                <select class="form-control"  id="SexoPaciente" name="Sexo"> 
                                                    <option>S/.</option>  
                                                    <option>$/.</option>     
                                                </select>
                                                <input type="text" class="form-control" style=" margin-left: -50%"  >
                                            </div>
                                        </div>    
                                        <div class="col-md-6">                                    
                                            <div class="input-group mb-3" > 
                                                <div class="input-group-text btn-secondary">Derivados</div>
                                                <select class="form-control"  id="medico" name="medico"> 
                                                    <option>Elegir</option>                                                   
                                                </select>
                                            </div>
                                        </div> 
                                    </div> 

                                </div>



                                <div class="modal fade" id="ModalHistoria" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                    <div class="modal-dialog modal-lg" role="document" >
                                        <div class="modal-content" style="background-color: #E8E8E6" >
                                            <div class="modal-header">
                                                <h5 class="modal-title">HISTORIA CLINICA</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                        aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="mb-3">
                                                            <div class="input-group">                    
                                                                <div class="input-group-text btn-success">N° Atención</div>     
                                                                <input type="text" class="form-control" id="Historia"/>
                                                                <button class="btn btn-secondary" type="button"><img style="width: 20px; height: 20px;" src="img/illustrations/Buscar.png" alt="Buscar"/></button>
                                                            </div>                                                             
                                                        </div>
                                                    </div>    

                                                    <div class="col-md-4">
                                                        <div class="mb-3">
                                                            <div class="input-group">                    
                                                                <div class="input-group-text btn-success">N° Historia</div>     
                                                                <input type="text" class="form-control" id="Historia"/>
                                                            </div>                                                             
                                                        </div>
                                                    </div>                                      
                                                    <div class="col-md-2" >     
                                                        <button class="btn btn-light" type="button" style="width: 100%">ANTERIOR</button>    
                                                    </div>
                                                    <div class="col-md-2">
                                                        <button class="btn btn-light" type="button" style="width: 100%">SIGUIENTE</button>    
                                                    </div>
                                                </div> 
                                                <div class="row">
                                                    <hr />
                                                    <label class="form-label">DATOS PERSONALES</label>       
                                                    <div class="col-md-5">
                                                        <div class="mb-3">
                                                            <div class="input-group">                    
                                                                <div class="input-group-text btn btn-success">Paciente</div>     
                                                                <input type="text" class="form-control" id="Paciente"/>
                                                            </div>                                                             
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="mb-3">
                                                            <div class="input-group">                    
                                                                <div class="input-group-text btn btn-success">Ubicación</div>     
                                                                <input type="text" class="form-control" id="Ubicación"/>
                                                            </div>                                                             
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="mb-3">
                                                            <div class="input-group">                    
                                                                <div class="input-group-text btn btn-success">Sexo</div>     
                                                                <input type="text" class="form-control" id="Sexo"/>
                                                            </div>                                                             
                                                        </div>
                                                    </div>

                                                    <div class="col-md-5">
                                                        <div class="mb-3">
                                                            <div class="input-group">                    
                                                                <div class="input-group-text btn btn-success">Dirección</div>     
                                                                <input type="text" class="form-control" id="Paciente"/>
                                                            </div>                                                             
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="mb-3">
                                                            <div class="input-group">                    
                                                                <div class="input-group-text btn btn-success">Edad</div>     
                                                                <input type="text" class="form-control" id="Ubicación"/>
                                                            </div>                                                             
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="mb-3">
                                                            <div class="input-group">                    
                                                                <div class="input-group-text btn btn-success">Tipo Sangre</div>     
                                                                <input type="text" class="form-control" id="Sexo"/>
                                                            </div>                                                             
                                                        </div>
                                                    </div>
                                                    <div class="col-md-5">
                                                        <div class="mb-3">
                                                            <div class="input-group">                    
                                                                <div class="input-group-text btn btn-success">Medico</div>     
                                                                <input type="text" class="form-control" id="Paciente"/>
                                                            </div>                                                             
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="mb-3">
                                                            <div class="input-group">                    
                                                                <div class="input-group-text btn btn-success">Telefono</div>     
                                                                <input type="text" class="form-control" id="Ubicación"/>
                                                            </div>                                                             
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="mb-3">
                                                            <div class="input-group">                    
                                                                <div class="input-group-text btn btn-success">Fecha</div>     
                                                                <input type="date" class="form-control" id="Sexo"/>
                                                            </div>                                                             
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="mb-3">
                                                            <div class="input-group">                    
                                                                <div class="input-group-text btn btn-success">Servicio</div>     
                                                                <input type="text" class="form-control" id="Sexo"/>
                                                            </div>                                                             
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="mb-3">
                                                            <div class="input-group">                    
                                                                <div class="input-group-text btn btn-success">Modelo</div>     
                                                                <input type="text" class="form-control" id="Sexo"/>
                                                            </div>                                                             
                                                        </div>
                                                    </div>
                                                    <hr />    
                                                </div>                                             
                                                <div class="row">
                                                    <div class="col-md-3 col-xl-2">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <div class="list-group list-group-flush" role="tablist">
                                                                    <a class="list-group-item list-group-item-action active" data-bs-toggle="list" href="#Alergias" role="tab">
                                                                        Alergias y Enfermedades Cronicas
                                                                    </a>
                                                                    <a class="list-group-item list-group-item-action" data-bs-toggle="list" href="#Clinica" role="tab">
                                                                        Ficha Clinica
                                                                    </a>
                                                                    <a class="list-group-item list-group-item-action" data-bs-toggle="list" href="#Imagenes" role="tab">
                                                                        Imagenes
                                                                    </a>
                                                                    <a class="list-group-item list-group-item-action" data-bs-toggle="list" href="#Anamnesis" role="tab">
                                                                        Anamnesis
                                                                    </a>
                                                                    <a class="list-group-item list-group-item-action" data-bs-toggle="list" href="#Diagnostico" role="tab">
                                                                        Diagnostico
                                                                    </a>
                                                                    <a class="list-group-item list-group-item-action" data-bs-toggle="list" href="#Tratamientos" role="tab">
                                                                        Tratamientos
                                                                    </a>
                                                                    <a class="list-group-item list-group-item-action" data-bs-toggle="list" href="#Examenes" role="tab">
                                                                        Examenes Auxiliares
                                                                    </a>
                                                                    <a class="list-group-item list-group-item-action" data-bs-toggle="list" href="#Procedimiento" role="tab">
                                                                        Detalle del Procedimiento
                                                                    </a>
                                                                    <a class="list-group-item list-group-item-action" data-bs-toggle="list" href="#Evolución" role="tab">
                                                                        Datos de Evolución
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-9 col-xl-10">
                                                        <div class="tab-content" style="margin-top: -1.5%">
                                                            <div class="tab-pane fade show active" id="Alergias" role="tabpanel">        
                                                                <div class="card" >
                                                                    <div class="card-body">
                                                                        <div class="row">
                                                                            <div class="col-md-6">
                                                                                <h5 class="card-title mb-0">Enfermedades Cronicas</h5>
                                                                                <hr />
                                                                                <div class="row">
                                                                                    <div class="col-md-6">
                                                                                        <div class="mb-0">
                                                                                            <div class="input-group">
                                                                                                <div class="input-group-text">
                                                                                                    <input type="checkbox">
                                                                                                </div>
                                                                                                <input type="text" class="form-control" Value="Diabetes" readonly>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-6">
                                                                                        <div class="mb-0">
                                                                                            <div class="input-group">
                                                                                                <div class="input-group-text">
                                                                                                    <input type="checkbox">
                                                                                                </div>
                                                                                                <input type="text" class="form-control" Value="Diabetes" readonly>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>

                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-6 ">
                                                                                <h5 class="card-title mb-0">Alergias</h5>
                                                                                <hr />
                                                                                <div class="clearfix">
                                                                                    <div id="quill-toolbar">
                                                                                        <span class="ql-formats">
                                                                                            <select class="ql-font"></select>
                                                                                            <select class="ql-size"></select>
                                                                                        </span>
                                                                                        <span class="ql-formats">
                                                                                            <button class="ql-bold"></button>
                                                                                            <button class="ql-italic"></button>
                                                                                            <button class="ql-underline"></button>
                                                                                            <button class="ql-strike"></button>
                                                                                        </span>
                                                                                        <span class="ql-formats">
                                                                                            <select class="ql-color"></select>
                                                                                            <select class="ql-background"></select>
                                                                                        </span>
                                                                                        <span class="ql-formats">
                                                                                            <button class="ql-script" value="sub"></button>
                                                                                            <button class="ql-script" value="super"></button>
                                                                                        </span>
                                                                                        <span class="ql-formats">
                                                                                            <button class="ql-header" value="1"></button>
                                                                                            <button class="ql-header" value="2"></button>
                                                                                            <button class="ql-blockquote"></button>
                                                                                            <button class="ql-code-block"></button>
                                                                                        </span>
                                                                                        <span class="ql-formats">
                                                                                            <button class="ql-list" value="ordered"></button>
                                                                                            <button class="ql-list" value="bullet"></button>
                                                                                            <button class="ql-indent" value="-1"></button>
                                                                                            <button class="ql-indent" value="+1"></button>
                                                                                        </span>
                                                                                        <span class="ql-formats">
                                                                                            <button class="ql-direction" value="rtl"></button>
                                                                                            <select class="ql-align"></select>
                                                                                        </span>
                                                                                        <span class="ql-formats">
                                                                                            <button class="ql-link"></button>
                                                                                            <button class="ql-image"></button>
                                                                                            <button class="ql-video"></button>
                                                                                        </span>
                                                                                        <span class="ql-formats">
                                                                                            <button class="ql-clean"></button>
                                                                                        </span>
                                                                                    </div>
                                                                                    <div id="quill-editor"></div>
                                                                                </div>
                                                                            </div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="tab-pane fade" id="Clinica" role="tabpanel">
                                                                <div class="card">
                                                                    <div class="card-body">
                                                                        <div class="row" >
                                                                            <div class="col-md-6">
                                                                                <span class="input-group-text">Tiempo de Enfermedad</span>
                                                                                <div class="input-group input-group-lg mb-3">                                                                                    
                                                                                    <input type="text" class="form-control">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-6">
                                                                                <span class="input-group-text">Motivo de Consulta Enfermedad Actual</span>
                                                                                <div class="input-group input-group-lg mb-3">                                                                                   
                                                                                    <input type="text" class="form-control">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-6">
                                                                                <span class="input-group-text">Funcioanes Biologicas</span>
                                                                                <div class="input-group input-group-lg mb-3">                                                                                    
                                                                                    <input type="text" class="form-control">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-6">
                                                                                <span class="input-group-text">Antecedentes de Importancia</span>
                                                                                <div class="input-group input-group-lg mb-3">                                                                                   
                                                                                    <input type="text" class="form-control">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-3">
                                                                                <span class="input-group-text">Pulso</span>
                                                                                <div class="input-group input-group-lg mb-3">                                                                                    
                                                                                    <input type="text" class="form-control">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-2">
                                                                                <span class="input-group-text">Frec.Respiratoria</span>
                                                                                <div class="input-group input-group-lg mb-3">                                                                                   
                                                                                    <input type="text" class="form-control">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-2">
                                                                                <span class="input-group-text">Temperatura</span>
                                                                                <div class="input-group input-group-lg mb-3">                                                                                   
                                                                                    <input type="text" class="form-control">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-2">
                                                                                <span class="input-group-text">P.A.</span>
                                                                                <div class="input-group input-group-lg mb-3">                                                                                   
                                                                                    <input type="text" class="form-control">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-3">
                                                                                <span class="input-group-text">Peso</span>
                                                                                <div class="input-group input-group-lg mb-3">                                                                                   
                                                                                    <input type="text" class="form-control">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-6">
                                                                                <span class="input-group-text">Estado General</span>
                                                                                <div class="input-group input-group-lg mb-3">                                                                                    
                                                                                    <input type="text" class="form-control">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-6">
                                                                                <span class="input-group-text">Examen Preferencial</span>
                                                                                <div class="input-group input-group-lg mb-3">                                                                                   
                                                                                    <input type="text" class="form-control">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-6">
                                                                                <span class="input-group-text">Prescipciones y Ordenes medica</span>
                                                                                <div class="input-group input-group-lg mb-3">                                                                                    
                                                                                    <input type="text" class="form-control">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-6">
                                                                                <span class="input-group-text">Examen Auxiliares</span>
                                                                                <div class="input-group input-group-lg mb-3">                                                                                   
                                                                                    <input type="text" class="form-control">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="tab-pane fade" id="Imagenes" role="tabpanel">
                                                                <div class="card">
                                                                    <div class="card-body">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="tab-pane fade" id="Anamnesis" role="tabpanel">
                                                                <div class="card">
                                                                    <div class="card-body">
                                                                        <div class="clearfix">
                                                                            <div id="quill-toolbar1">
                                                                                <span class="ql-formats">
                                                                                    <select class="ql-font"></select>
                                                                                    <select class="ql-size"></select>
                                                                                </span>
                                                                                <span class="ql-formats">
                                                                                    <button class="ql-bold"></button>
                                                                                    <button class="ql-italic"></button>
                                                                                    <button class="ql-underline"></button>
                                                                                    <button class="ql-strike"></button>
                                                                                </span>
                                                                                <span class="ql-formats">
                                                                                    <select class="ql-color"></select>
                                                                                    <select class="ql-background"></select>
                                                                                </span>
                                                                                <span class="ql-formats">
                                                                                    <button class="ql-script" value="sub"></button>
                                                                                    <button class="ql-script" value="super"></button>
                                                                                </span>
                                                                                <span class="ql-formats">
                                                                                    <button class="ql-header" value="1"></button>
                                                                                    <button class="ql-header" value="2"></button>
                                                                                    <button class="ql-blockquote"></button>
                                                                                    <button class="ql-code-block"></button>
                                                                                </span>
                                                                                <span class="ql-formats">
                                                                                    <button class="ql-list" value="ordered"></button>
                                                                                    <button class="ql-list" value="bullet"></button>
                                                                                    <button class="ql-indent" value="-1"></button>
                                                                                    <button class="ql-indent" value="+1"></button>
                                                                                </span>
                                                                                <span class="ql-formats">
                                                                                    <button class="ql-direction" value="rtl"></button>
                                                                                    <select class="ql-align"></select>
                                                                                </span>
                                                                                <span class="ql-formats">
                                                                                    <button class="ql-link"></button>
                                                                                    <button class="ql-image"></button>
                                                                                    <button class="ql-video"></button>
                                                                                </span>
                                                                                <span class="ql-formats">
                                                                                    <button class="ql-clean"></button>
                                                                                </span>
                                                                            </div>
                                                                            <div id="quill-editor1"></div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="tab-pane fade" id="Diagnostico" role="tabpanel">
                                                                <div class="card">
                                                                    <div class="card-body">
                                                                        <div class="row">
                                                                            <div class="col-12">
                                                                                <div class="card">

                                                                                    <div class="card-body">
                                                                                        <table id="datatables-multi" class="table table-striped" style="width:100%">
                                                                                            <thead>
                                                                                                <tr>
                                                                                                    <th>Codigo</th>
                                                                                                    <th>Descripción</th>
                                                                                                    <th>Unidad</th>
                                                                                                    <th>CMP</th>
                                                                                                    <th>Cantidad</th>
                                                                                                    <th>Coaseguro</th>
                                                                                                    <th>Factor</th>
                                                                                                    <th>Estado</th>
                                                                                                    <th>Fecha Kayros</th>
                                                                                                    <th>Fecha de Expedicion</th>
                                                                                                    <th>Costo</th>
                                                                                                    <th>Laboratorio</th>
                                                                                                    <th>DsctoFarma</th>
                                                                                                    <th>TotNeto</th>
                                                                                                    <th>TotNetoIgv</th>
                                                                                                    <th>CoaSeguro</th>
                                                                                                    <th>CoasIGV</th>
                                                                                                </tr>
                                                                                            </thead>
                                                                                            <tbody>
                                                                                                <tr>
                                                                                                    <td>Dato 1</td>
                                                                                                    <td>Dato 1</td>
                                                                                                    <td>Dato 1</td>
                                                                                                    <td>Dato 1</td>
                                                                                                    <td>Dato 1</td>
                                                                                                    <td>Dato 1</td>
                                                                                                    <td>Dato 1</td>
                                                                                                    <td>Dato 1</td>
                                                                                                    <td>Dato 1</td>
                                                                                                    <td>Dato 1</td>
                                                                                                    <td>Dato 1</td>
                                                                                                    <td>Dato 1</td>
                                                                                                    <td>Dato 1</td>
                                                                                                    <td>Dato 1</td>
                                                                                                    <td>Dato 1</td>
                                                                                                    <td>Dato 1</td>
                                                                                                    <td>Dato 1</td>
                                                                                                </tr>
                                                                                            </tbody>
                                                                                        </table>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="tab-pane fade" id="Tratamientos" role="tabpanel">
                                                                <div class="card">
                                                                    <div class="card-body">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="tab-pane fade" id="Examenes" role="tabpanel">
                                                                <div class="card">
                                                                    <div class="card-body">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="tab-pane fade" id="Procedimiento" role="tabpanel">
                                                                <div class="card">
                                                                    <div class="card-body">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="tab-pane fade" id="Evolución" role="tabpanel">
                                                                <div class="card">
                                                                    <div class="card-body">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary"
                                                        data-bs-dismiss="modal">Cerrar</button>
                                                <button type="button" class="btn btn-pinterest">Guardar </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-12 col-lg-3 d-flex">
                <div class="card flex-fill w-100">                    
                    <div class="card-body">
                        <h5 class="card-title mb-0 text-center">ACCIONES</h5>
                        <div class="row  text-center">
                            <hr />
                            <label class="form-label red_color">SERVICIOS</label>
                            <hr />
                            <div class="col-md-6 mb-3">                               
                                <button class="btn btn-outline-warning" style="width: 100%"><i style="width: 50px; height:50px; font-size: 50px" class="fa-solid fa-hand-holding-medical turquoise_color"></i></button>
                                <label class="form-label text-center">Servicios Medicos</label> 
                            </div>
                            <div class="col-md-6 mb-3">                               
                                <button class="btn btn-outline-warning" style="width: 100%"><i style="width: 50px; height:50px; font-size: 50px" class="fa-solid fa-pills orange_color"></i></button>
                                <label class="form-label text-center">Registro de Farmacos</label> 
                            </div>

                            <div class="col-md-6 mb-3">                               
                                <button class="btn btn-outline-warning" style="width: 100%"><i style="width: 50px; height:50px; font-size: 50px" class="fa-solid fa-radiation red_color "></i></button>
                                <label class="form-label text-center">Examenes de Imagenologicos</label> 
                            </div>
                            <div class="col-md-6 mb-3">                               
                                <button class="btn btn-outline-warning" style="width: 100%"><i style="width: 50px; height:50px; font-size: 50px" class="fa-solid fa-microscope blue2_color"></i></button>
                                <label class="form-label text-center">Examenes Laboratorio</label> 
                            </div>
                            <hr />


                            <label class="form-label red_color">MANTENIMIENTO</label> 
                            <hr />
                            <div class="col-md-12 mb-3">                               
                                <button class="btn btn-outline-warning" style="width: 100%"><i style="width: 50px; height:50px; font-size: 50px" class="fa-solid fa-floppy-disk red_color"></i></button>

                            </div>
                            <div class="col-md-6 mb-3">                               
                                <button class="btn btn-outline-warning" style="width: 100%"><i style="width: 50px; height:50px; font-size: 50px" class="fa-solid fa-print orange_color"></i></button>

                            </div>
                            <div class="col-md-6 mb-3">                               
                                <button class="btn btn-outline-warning" style="width: 100%"><i style="width: 50px; height:50px; font-size: 50px" class="fa-regular fa-clipboard green_color"></i></button>

                            </div>
                            <div class="col-md-6 mb-3">                               
                                <button class="btn btn-outline-warning" style="width: 100%"><i style="width: 50px; height:50px; font-size: 50px" class="fa-solid fa-rectangle-xmark brown_color"></i></button>
                            </div>
                            <div class="col-md-6 mb-3 text-center">                               
                                <button class="btn btn-outline-warning" style="width: 100%"><i style="width: 50px; height:50px; font-size: 50px" class="fa-solid fa-arrow-right-from-bracket yellow_color "></i></button>

                            </div>

                            <hr/>                                  
                        </div>
                    </div>
                </div>
            </div>
        </div>
</main>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        $("#smartwizard-arrows-success").smartWizard({
            theme: "arrows"
        });
    });
</script>
<script>
    function MostrarHistoria()
    {
        jQuery('#ModalHistoria').modal('show');
        //jQuery('#ModalHistoria').modal(backdrop: 'static', keyboard: false);
        $('#ModalHistoria').modal({
            backdrop: 'static'
        });
         $(document).on('shown.bs.modal', '#ModalHistoria', function () {       

        var datatablesMulti = $("#datatables-multi").DataTable({
            responsive: true
        });
        $('#datatables-multi tbody').on('click', 'tr', function () {
            var data = datatablesMulti.row(this).data();
            alert('You clicked on ' + data[0] + "'s row");
        });

    });
    }
</script>
<script>
    document.addEventListener("DOMContentLoaded", function () {
        if (!window.Quill) {
            return $("#quill-editor1,#quill-editor,#quill-toolbar1,#quill-toolbar").remove();
        }
        var editor = new Quill("#quill-editor1", {
            modules: {
                toolbar: "#quill-toolbar1"
            },
            placeholder: "Anemnesis",
            theme: "snow"
        });
        var editor = new Quill("#quill-editor", {
            modules: {
                toolbar: "#quill-toolbar"
            },
            placeholder: "Alergias",
            theme: "snow"
        });
    });
</script>
