﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="ResEditar.aspx.cs" Inherits="administrador_ResEditar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <link rel="stylesheet" href="../assets/css/admin/module.admin.page.form_validator.min.css" />
    <link rel="stylesheet" href="../assets/css/admin/module.admin.page.tables.min.css" />
	<script src="../assets/components/library/jquery/jquery.min.js?v=v1.2.3"></script>
    <script src="../assets/components/library/jquery/jquery-migrate.min.js?v=v1.2.3"></script>
    <script src="../assets/components/library/modernizr/modernizr.js?v=v1.2.3"></script>
    <script src="../assets/components/plugins/less-js/less.min.js?v=v1.2.3"></script>
    <script src="../assets/components/modules/admin/charts/flot/assets/lib/excanvas.js?v=v1.2.3"></script>
    <script src="../assets/components/plugins/browser/ie/ie.prototype.polyfill.js?v=v1.2.3"></script>
    <script src="../assets/components/library/jquery/jquery.min.js?v=v1.2.3"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    		<div class="navbar navbar-fixed-top navbar-primary main" role="navigation">
    
    <div class="navbar-header pull-left">
        <div class="navbar-brand">
            <div class="pull-left">
                <a href="" class="toggle-button toggle-sidebar btn-navbar"><i class="fa fa-bars"></i></a>
            </div>
            <a href="index.aspx" class="appbrand innerL">Sistema Hotel</a>
            <div class="colors pull-right hidden-xs">
                
            </div>
        </div>
    </div>
  
    <ul class="nav navbar-nav navbar-left">
        <li class=" hidden-xs">
            
        </li>
        <li class="dropdown">
            <a href="" class="dropdown-toggle user" data-toggle="dropdown"> <img src="../assets/images/people/35/8.jpg" alt="" class="img-circle"/><span > <asp:Label ID="lbluser" runat="server" Text=""></asp:Label> </span> <span class="caret"></span></a>
            <ul class="dropdown-menu list pull-right ">  
                <li><a href="../Login.aspx">Log out <i class="fa fa-sign-out pull-right"></i></a></li>
            </ul>
        </li>
    </ul>
    <ul class="nav navbar-nav navbar-right hidden-xs">
         
        
        <li><a href="../Login.aspx" class="menu-icon"><i class="fa fa-sign-out"></i></a></li>
    </ul>
</div>
	
	<div id="menu" class="hidden-print hidden-xs">
	<div class="sidebar sidebar-inverse">	
        <div class="user-profile media innerAll">
			<a href="" class="pull-left"><img src="../assets/images/people/50/8.jpg" alt="" class="img-circle"><span class="badge badge-primary"></span></a>
			<div class="media-body">        
				<a href="" class="strong">Usuario: <asp:Label ID="lblUsuario" runat="server" Text=""></asp:Label></a>	<br />			
                <a href="" class="strong"><asp:Label ID="lbltipo" runat="server" Text=""></asp:Label></a>
			</div>			
		</div>	
		<div class="sidebarMenuWrapper">
			<ul class="list-unstyled">
				<li><a href="Index.aspx"><i class=" icon-projector-screen-line"></i><span>Inicio</span></a></li>				
                <li class="hasSubmenu">
					<a href="#" data-target="#empleados" data-toggle="collapse"><i class="icon-user-1"></i><span>Empleados</span></a>
					<ul class="collapse" id="empleados">
						<li><a href="EmpleadoInsert.aspx"><i class="fa fa-user"></i><span>Agregar Empleado</span></a></li>						
                        <li><a href="Empleados.aspx"><i class="fa fa-info"></i><span>Ver Empleados</span></a></li>	
                        <li><a href="EmpleadosMante.aspx"><i class="fa fa-pencil-square"></i><span>Mantenimiento</span></a></li>						
					</ul>
				</li>
                <li class="hasSubmenu">
					<a href="#" data-target="#clientes" data-toggle="collapse"><i class="fa fa-group"></i><span>Clientes</span></a>
					<ul class="collapse" id="clientes">
						<li><a href="ClienteInsert.aspx"><i class="fa fa-user"></i><span>Agregar Clientes</span></a></li>						
                        <li><a href="Clientes.aspx"><i class="fa fa-info"></i><span>Ver Clientes</span></a></li>	
                        <li><a href="ClientesMante.aspx"><i class="fa fa-pencil-square"></i><span>Mantenimiento</span></a></li>						
					</ul>
				</li>
                <li class="hasSubmenu">
					<a href="#" data-target="#habs" data-toggle="collapse"><i class="fa fa-home"></i><span>Habitaciones</span></a>
					<ul class="collapse " id="habs">
						<li><a href="Habitaciones.aspx"><i class="icon-bank"></i><span>Ver habitaciones</span></a></li>						
					</ul>
				</li>
                <li class="hasSubmenu active">
					<a href="#" data-target="#reservas" data-toggle="collapse"><i class="icon-compose"></i><span>Reservaciones</span></a>
					<ul class="collapse in" id="reservas">
						<li><a href="Reservacion.aspx"><i class="icon-ticket"></i><span>Nueva Reservaciones</span></a></li>						
                        <li><a href="ResCheckin.aspx"><i class="fa fa-plus-circle"></i><span>Check-in</span></a></li>						
                        <li><a href="ResOcupadas.aspx"><i class="fa fa-ban"></i><span>Ocupadas</span></a></li>						
                        <li><a href="ResDisponibles.aspx"><i class="fa fa-check"></i><span>Disponibles</span></a></li>						
                        <li><a href="ResCheckout.aspx"><i class="fa fa-minus-circle"></i><span>Check-out</span></a></li>		
                        <li><a href="ResBuscar.aspx"><i class="glyphicon glyphicon-search"></i><span>Buscar reservaciones</span></a></li>		
                        <li><a href="ResVer.aspx"><i class="fa fa-eye"></i><span>Ver reservaciones</span></a></li>		
                        <li class="active"><a href="ResEditar.aspx"><i class="fa fa-pencil"></i><span>Editar reservaciones</span></a></li>		                        
                        <li><a href="ResEliminar.aspx"><i class="fa fa-trash-o"></i><span>Eliminar reservaciones</span></a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</div>

	<div id="content"><div class="heading-buttons bg-white border-bottom innerAll">
	<h1 class="content-heading padding-none pull-left">Editar reservacion</h1>
	<div class="clearfix"></div>
</div>

<div class="innerAll spacing-x2">

	<!-- Widget -->
	<div class="widget finances_summary widget-inverse">

		<div class="row row-merge">
			<!-- col -->
			<div class="col-sm-12 col-md-3">
                <div class="innerAll half border-bottom">
					<h4 class="pull-left innerT half margin-none"><strong>Datos de la reserva</strong></h4>		
					<div class="clearfix"></div>
				
				</div>					
						
						<div class="innerAll inner-2x text-left">                            
                            <h5 class="pull-left innerT half margin-none"><strong>DATOS ANTERIORES</strong></h5>		                   
            <div class="left">                 
				<div class="form-group">                        
					<div class="col-md-12">
                        <asp:Label class="control-label" ID="Label4" runat="server" Text="Check-in: " ></asp:Label>
                        
                        <strong>
                            <asp:Label class="control-label" ID="lblinicio" runat="server" Text="" ></asp:Label>
                        </strong>                        
					</div>				
				</div>
            </div>
            <div class="left">                    
				<div class="form-group">                        
					<div class="col-md-12">
                        <asp:Label class="control-label" ID="Label11" runat="server" Text="Check-out: " ></asp:Label>
                        <strong>
                            <asp:Label class="control-label" ID="lblfin" runat="server" Text="" ></asp:Label>
                        </strong>                        
					</div>				
				</div>
            </div>            
            <div class="left">                    
				<div class="form-group">                        
					<div class="col-md-12">
                        <asp:Label class="control-label" ID="Label6" runat="server" Text="Habitacion: " ></asp:Label>
                        <strong>
                            <asp:Label class="control-label" ID="lblhab" runat="server" Text="" ></asp:Label>
                        </strong>                        
					</div>				
				</div>
            </div>
            <div class="left">                    
				<div class="form-group">                        
					<div class="col-md-12">
                        <asp:Label class="control-label" ID="Label9" runat="server" Text="Cliente: " ></asp:Label>
                        <br /><strong>
                            <asp:Label class="control-label" ID="lblcliente" runat="server" Text="" ></asp:Label>
                            &nbsp;<asp:Label class="control-label" ID="lblcliente2" runat="server" Text="" ></asp:Label>
                        </strong>
					</div>				
				</div>
            </div>
            <div class="left">                    
				<div class="form-group">                        
					<div class="col-md-12">
                        <asp:Label class="control-label" ID="Label7" runat="server" Text="Fecha de reservacion: " ></asp:Label>
                        <strong>
                            <asp:Label class="control-label" ID="lblfechahoy" runat="server" Text="" ></asp:Label>
                        </strong>                        
					</div>				
				</div>
            </div>
            <div class="left">                    
				<div class="form-group">                        
					<div class="col-md-8">
                        <asp:Label class="control-label" ID="Label8" runat="server" Text="No. Noches: " ></asp:Label>
                        <strong>
                            <asp:Label class="control-label" ID="lblnoches" runat="server" Text="" ></asp:Label>
                        </strong>
					</div>				
				</div>
            </div>
            <div class="left">                    
				<div class="form-group">                        
					<div class="col-md-8">
                        <asp:Label class="control-label" ID="Label10" runat="server" Text="Precio por noche: $" ></asp:Label>
                        <strong>
                            <asp:Label class="control-label" ID="lblnoche" runat="server" Text="" ></asp:Label>
					    </strong>
                        </div>				
				</div>
            </div>
            <div class="left">                    
				<div class="form-group">                        
					<div class="col-md-8">
                        <asp:Label class="control-label" ID="Label12" runat="server" Text="Total: $" ></asp:Label>
                        <strong>
                            <asp:Label class="control-label" ID="lbltotal" runat="server" Text="" ></asp:Label>
                        </strong>                        
					</div>				
				</div>
            </div>
            <div class="left">                    
				<div class="form-group">                        
					<div class="col-md-8">
                                     
					</div>				
				</div>
            </div>		
            <h5 class="pull-left innerT half margin-none"><strong>NUEVOS DATOS</strong></h5>		                   
            <div class="left">                 
				<div class="form-group">                        
					<div class="col-md-12">
                        <asp:Label class="control-label" ID="Label13" runat="server" Text="Check-in: " ></asp:Label>
                        
                        <strong>
                            <asp:Label class="control-label" ID="lblinicio2" runat="server" Text="" ></asp:Label>
                        </strong>                        
					</div>				
				</div>
            </div>
            <div class="left">                    
				<div class="form-group">                        
					<div class="col-md-12">
                        <asp:Label class="control-label" ID="Label15" runat="server" Text="Check-out: " ></asp:Label>
                        <strong>
                            <asp:Label class="control-label" ID="lblfui2" runat="server" Text="" ></asp:Label>
                        </strong>                        
					</div>				
				</div>
            </div>
            <div class="left">                    
				<div class="form-group">                        
					<div class="col-md-12">
                        <asp:Label class="control-label" ID="Label17" runat="server" Text="Habitacion: " ></asp:Label>
                        <strong>
                            <asp:Label class="control-label" ID="lblhab2" runat="server" Text="" ></asp:Label>
                        </strong>                        
					</div>				
				</div>
            </div>
            <div class="left">                    
				<div class="form-group">                        
					<div class="col-md-12">
                        <asp:Label class="control-label" ID="Label19" runat="server" Text="Cliente: " ></asp:Label>
                        <br /><strong>
                            <asp:Label class="control-label" ID="lblcliente3" runat="server" Text="" ></asp:Label>
                            &nbsp;<asp:Label class="control-label" ID="lblcliente4" runat="server" Text="" ></asp:Label>
                        </strong>
					</div>				
				</div>
            </div>
            <div class="left">                    
				<div class="form-group">                        
					<div class="col-md-12">
                        <asp:Label class="control-label" ID="Label22" runat="server" Text="Fecha de reservacion: " ></asp:Label>
                        <strong>
                            <asp:Label class="control-label" ID="lblfechares2" runat="server" Text="" ></asp:Label>
                        </strong>                        
					</div>				
				</div>
            </div>
            <div class="left">                    
				<div class="form-group">                        
					<div class="col-md-8">
                        <asp:Label class="control-label" ID="Label24" runat="server" Text="No. Noches: " ></asp:Label>
                        <strong>
                            <asp:Label class="control-label" ID="lblnoches2" runat="server" Text="" ></asp:Label>
                        </strong>
					</div>				
				</div>
            </div>
            <div class="left">                    
				<div class="form-group">                        
					<div class="col-md-8">
                        <asp:Label class="control-label" ID="Label26" runat="server" Text="Precio por noche: $" ></asp:Label>
                        <strong>
                            <asp:Label class="control-label" ID="lblnoche2" runat="server" Text="" ></asp:Label>
					    </strong>
                        </div>				
				</div>
            </div>
            <div class="left">                    
				<div class="form-group">                        
					<div class="col-md-8">
                        <asp:Label class="control-label" ID="Label28" runat="server" Text="Total: $" ></asp:Label>
                        <strong>
                            <asp:Label class="control-label" ID="lbltotal2" runat="server" Text="" ></asp:Label>
                        </strong>                        
					</div>				
				</div>
            </div>
            <div class="left">                    
				<div class="form-group">                        
					<div class="col-md-8">
                                     
					</div>				
				</div>
            </div>						
						</div>						
			</div> 
			<!-- // END col -->

		
			<!-- col -->
			<div class="col-lg-9 col-md-9 col-sm-12">

				<div class="innerAll half border-bottom">
					<h4 class="pull-left innerT half margin-none"><strong>Seleccione los datos de la reservacion</strong></h4>		
					<div class="clearfix"></div>
				
				</div>
				<div class="innerAll ">
                    <asp:Label class="control-label center" ID="Label3" runat="server" Text="Seleccione la reserva a editar:" ></asp:Label>
            <div class="center">
                 <!-- Group -->                
					<div class="form-group">                        
						<div class="col-md-12">   
                            <div class="input-group">                          
                            <asp:DropDownList CssClass="form-control" ID="ddldatosreserva" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddldatosreserva_SelectedIndexChanged">
                            </asp:DropDownList>
                                <div class="input-group-btn">                            
                                    <asp:LinkButton class="btn btn-info" ID="LinkButton1" runat="server"  Text="" OnClick="LinkButton1_Click"><i class="glyphicon glyphicon-search"></i></asp:LinkButton>
                                </div>
                            </div>
                    
                            <br />

						</div>				                        
					</div>
					<!-- // Group END -->
            </div>	
					<div class="row">
			
				<!-- Column -->
				<div class="col-md-6">
				
					<!-- Group -->
					<div class="form-group">
                        <asp:Label class="col-md-4 control-label" ID="lbl1" runat="server" Text="Check-in: " ></asp:Label>
						<div class="col-md-8">
                            <asp:Calendar ID="Calendar1" runat="server" SelectedDate="2017-06-05" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                            <asp:Label class="control-label center" ID="lblestado2" runat="server" Text="" ForeColor="Red"></asp:Label>
						</div>				
					</div>
					<!-- // Group END -->
					
					
				</div>
				<!-- // Column END -->
				
				<!-- Column -->
				<div class="col-md-6">
                    <!-- Group -->
					<div class="form-group">
                        <asp:Label class="col-md-4 control-label" ID="Label1" runat="server" Text="Check-out: " ></asp:Label>
						<div class="col-md-8">
                            <asp:Calendar ID="Calendar2" runat="server" SelectedDate="2017-06-05" OnSelectionChanged="Calendar2_SelectionChanged"></asp:Calendar>
                            <asp:Label class="control-label center" ID="lblestado3" runat="server" Text="" ForeColor="Red"></asp:Label>
                            <br />
						</div>				
					</div>
                    
					<!-- // Group END -->
				</div>
				<!-- // Column END -->

			</div>
			<!-- // Row END -->
            <asp:Label class="control-label center" ID="Label2" runat="server" Text="Seleccione la habitacion:" ></asp:Label>
            <div class="center">
                 <!-- Group -->
					<div class="form-group">                        
						<div class="col-md-12">
                            <div class="input-group">                          
                            
                                <asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">

                            </asp:DropDownList>
                                <div class="input-group-btn">                            
                                    <asp:LinkButton class="btn btn-warning" ID="LinkButton2" runat="server"  Text="" OnClick="LinkButton2_Click"><i class="glyphicon glyphicon-pencil"></i></asp:LinkButton>
                                </div>
                            </div>                                                        
                            <br />

						</div>				                        
					</div>
					<!-- // Group END -->
            </div>							            
                    <asp:Label class="control-label" ID="Label5" runat="server" Text="Observaciones:" ></asp:Label>
                    <div class="center">
                 <!-- Group -->
                        
					<div class="form-group">                        
						<div class="col-md-12">                            
                            <asp:TextBox ID="txtobservaciones" CssClass="form-control" runat="server"></asp:TextBox>
						</div>				                        
					</div>
					<!-- // Group END -->
               <br />
				</div>

	
										

			</div> 
			<!-- // END col -->
                 <!-- Form actions -->
			<div class="form-actions">
                
			</div>
            <br />
            
			<!-- // Form actions END -->

		</div>		

		</div>
		<!-- // END row -->
	</div>
    <asp:LinkButton class="btn btn-primary" ID="linkguardar" runat="server"  Text="Guardar" OnClick="linkguardar_Click"><span></span><i class="fa fa-check-circle"></i>&nbsp;Guardar</asp:LinkButton>                
    <label class="btn btn-inverse" onclick="window.location.href='Index.aspx'"><i class="fa fa-times"></i> Cancelar</label>
    <asp:Label ID="lblEstado" runat="server"></asp:Label>
</div>
<!-- // END row-app -->

	
	
		
		</div>
		<!-- // Content END -->
		
		<div class="clearfix"></div>
		<!-- // Sidebar menu & content wrapper END -->
		
		<div id="footer" class="hidden-print">
			
			<!--  Copyright Line -->
			<div class="copy">&copy; Copyright 2017 - <a href="">Designed by Grupo los Iracundos Programacion II</a> - All Rights Reserved. </div>
			<!--  End Copyright Line -->
	
		</div>
		<!-- // Footer END -->
		
	</div>
	<!-- // Main Container Fluid END -->
	

	

	<!-- Global -->
	<script>
	var basePath = '',
		commonPath = '../assets/',
		rootPath = '../',
		DEV = false,
		componentsPath = '../assets/components/';
	
	var primaryColor = '#cb4040',
		dangerColor = '#b55151',
		infoColor = '#466baf',
		successColor = '#8baf46',
		warningColor = '#ab7a4b',
		inverseColor = '#45484d';
	
	var themerPrimaryColor = primaryColor;
	</script>
	
	<script src="../assets/components/library/bootstrap/js/bootstrap.min.js?v=v1.2.3"></script>
<script src="../assets/components/plugins/nicescroll/jquery.nicescroll.min.js?v=v1.2.3"></script>
<script src="../assets/components/plugins/breakpoints/breakpoints.js?v=v1.2.3"></script>
<script src="../assets/components/core/js/animations.init.js?v=v1.2.3"></script>
<script src="../assets/components/modules/admin/forms/validator/assets/lib/jquery-validation/dist/jquery.validate.min.js?v=v1.2.3"></script>
<script src="../assets/components/modules/admin/forms/validator/assets/custom/form-validator.init.js?v=v1.2.3"></script>
<script src="../assets/components/plugins/holder/holder.js?v=v1.2.3"></script>
<script src="../assets/components/core/js/sidebar.main.init.js?v=v1.2.3"></script>
<script src="../assets/components/core/js/sidebar.collapse.init.js?v=v1.2.3"></script>
<script src="../assets/components/helpers/themer/assets/plugins/cookie/jquery.cookie.js?v=v1.2.3"></script>
<script src="../assets/components/core/js/core.init.js?v=v1.2.3"></script>	
</asp:Content>

