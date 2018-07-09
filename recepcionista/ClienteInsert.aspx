<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="ClienteInsert.aspx.cs" Inherits="administrador_ClienteInsert" %>

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
                <!--<li class="hasSubmenu">
					<a href="#" data-target="#empleados" data-toggle="collapse"><i class="icon-user-1"></i><span>Empleados</span></a>
					<ul class="collapse " id="empleados">
						<li><a href="EmpleadoInsert.aspx"><i class="fa fa-user"></i><span>Agregar Empleado</span></a></li>						
                        <li><a href="Empleados.aspx"><i class="fa fa-info"></i><span>Ver Empleados</span></a></li>	
                        <li><a href="EmpleadosMante.aspx"><i class="fa fa-pencil-square"></i><span>Mantenimiento</span></a></li>						
					</ul>
				</li>-->
                <li class="hasSubmenu active">
					<a href="#" data-target="#clientes" data-toggle="collapse"><i class="fa fa-group"></i><span>Clientes</span></a>
					<ul class="collapse in" id="clientes">
						<li class="active"><a href="ClienteInsert.aspx"><i class="fa fa-user"></i><span>Agregar Clientes</span></a></li>						
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
                <li class="hasSubmenu">
					<a href="#" data-target="#reservas" data-toggle="collapse"><i class="icon-compose"></i><span>Reservaciones</span></a>
					<ul class="collapse" id="reservas">
						<li><a href="Reservacion.aspx"><i class="icon-ticket"></i><span>Nueva Reservaciones</span></a></li>						
                        <li><a href="ResCheckin.aspx"><i class="fa fa-plus-circle"></i><span>Check-in</span></a></li>						
                        <li><a href="ResOcupadas.aspx"><i class="fa fa-ban"></i><span>Ocupadas</span></a></li>						
                        <li><a href="ResDisponibles.aspx"><i class="fa fa-check"></i><span>Disponibles</span></a></li>						
                        <li><a href="ResCheckout.aspx"><i class="fa fa-minus-circle"></i><span>Check-out</span></a></li>		
                        <li><a href="ResBuscar.aspx"><i class="glyphicon glyphicon-search"></i><span>Buscar reservaciones</span></a></li>		
                        <li><a href="ResVer.aspx"><i class="fa fa-eye"></i><span>Ver reservaciones</span></a></li>		
                        <li><a href="ResEditar.aspx"><i class="fa fa-pencil"></i><span>Editar reservaciones</span></a></li>		                        
                        <li><a href="ResEliminar.aspx"><i class="fa fa-trash-o"></i><span>Eliminar reservaciones</span></a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</div>



	<div id="content"><h1 class="content-heading bg-white border-bottom">CLIENTES</h1>
<div class="innerAll spacing-x2">

	<!-- Form -->
<div class="form-horizontal margin-none" id="validateSubmitForm">
	
	<!-- Widget -->
	<div class="widget widget-inverse">
	
		<!-- Widget heading -->
		<div class="widget-head">
			<h4 class="heading">Formulario agregar cliente</h4>
		</div>
		<!-- // Widget heading END -->
		
		<div class="widget-body">
		
			<!-- Row -->
			<div class="row">
			
				<!-- Column -->
				<div class="col-md-5">
				
					<!-- Group -->
					<div class="form-group">
                        <asp:Label class="col-md-4 control-label" ID="lbl1" runat="server" Text="Nombres" ></asp:Label>
						<div class="col-md-8"><asp:TextBox ID="txtnombre" class="form-control" Text="" runat="server"></asp:TextBox></div>				
					</div>
					<!-- // Group END -->
					
					<!-- Group -->
					<div class="form-group">
                        <asp:Label class="col-md-4 control-label" ID="Label1" runat="server" Text="Apellido" ></asp:Label>
                        <div class="col-md-8"><asp:TextBox ID="txtapellido" class="form-control" Text="" runat="server"></asp:TextBox></div>                        						
					</div>
					<!-- // Group END -->

                    <!-- Group -->
					<div class="form-group">
                        <asp:Label class="col-md-4 control-label" ID="Label4" runat="server" Text="Genero" ></asp:Label>
                        <div class="col-md-8">
                            <asp:DropDownList class="form-control" ID="genero" runat="server">
                                <asp:ListItem Value="1">MASCULINO</asp:ListItem>
                                <asp:ListItem Value="2">FEMENINO</asp:ListItem>                    
                            </asp:DropDownList>
                        </div>                        						
					</div>
					<!-- // Group END -->
                                         
                    <!-- Group -->
					<div class="form-group">
                        <asp:Label class="col-md-4 control-label" ID="Label2" runat="server" Text="Tipo Documento" ></asp:Label>
                        <div class="col-md-8">
                            <asp:DropDownList class="form-control" ID="ddltipo" runat="server">
                                <asp:ListItem Value="DUI">DUI</asp:ListItem>
                                <asp:ListItem Value="LICENCIA">LICENCIA</asp:ListItem>
                                <asp:ListItem Value="PASAPORTE">PASAPORTE</asp:ListItem>
                                <asp:ListItem>OTRO</asp:ListItem>
                            </asp:DropDownList>
                        </div>                        						
					</div>
					<!-- // Group END -->
                    <!-- Group -->
					<div class="form-group">
                        <asp:Label class="col-md-4 control-label" ID="Label3" runat="server" Text="Documento" ></asp:Label>
                        <div class="col-md-8"><asp:TextBox ID="txtnumero" class="form-control" Text="" runat="server"></asp:TextBox></div>                        						
					</div>
					<!-- // Group END -->
				</div>
				<!-- // Column END -->
				
				<!-- Column -->
				<div class="col-md-5">
				
					<!-- Group -->
					<div class="form-group">
                        <div style="text-align: right"><asp:Label class="col-md-4" ID="Label6" runat="server" Text="Telefono" ></asp:Label>						</div>
						<div class="col-md-8"><asp:TextBox ID="txttelefono" class="form-control" Text="" runat="server"></asp:TextBox></div>
					</div>
					<!-- // Group END -->

					<!-- Group -->
					<div class="form-group">
						<asp:Label class="col-md-4 control-label" ID="Label7" runat="server" Text="Email" ></asp:Label>
						<div class="col-md-8"><asp:TextBox ID="txtemail" class="form-control" Text="" runat="server"></asp:TextBox></div>
					</div>
					<!-- // Group END -->
                     
                    <!-- Group -->
					<div class="form-group">
						<asp:Label class="col-md-4 control-label" ID="Label8" runat="server" Text="Fecha de nacimiento" ></asp:Label>
						<div class="col-md-8"><asp:TextBox ID="fecha" class="form-control" Text="" runat="server"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="dd/MM/yyyy" ControlToValidate="fecha" ValidationExpression="(0[1-9]|[12][0-9]|3[01])[-/.](0[1-9]|1[012])[-/.](19|20)\d\d"></asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Campo requerido" ControlToValidate="fecha"></asp:RequiredFieldValidator></div>
					</div>
					<!-- // Group END -->
                    <!-- Group -->
					<div class="form-group">
                        <asp:Label class="col-md-4 control-label" ID="Label5" runat="server" Text="Pais" ></asp:Label>
                        <div class="col-md-8"><asp:TextBox ID="pais" class="form-control" Text="" runat="server"></asp:TextBox></div>                        						
					</div>
					<!-- // Group END -->
					
				</div>
				<!-- // Column END -->
				
			</div>
			<!-- // Row END -->
			
			<hr class="separator" />			
			
			<!-- Form actions -->
			<div class="form-actions">
                <asp:LinkButton class="btn btn-primary" ID="linkguardar" runat="server"  Text="Guardar" OnClick="linkguardar_Click" ><span></span><i class="fa fa-check-circle"></i>&nbsp;Guardar</asp:LinkButton>                
                <label class="btn btn-inverse" onclick="window.location.href='Index.aspx'"><i class="fa fa-times"></i> Cancelar</label>
			</div>
            <asp:Label ID="lblEstado" runat="server"></asp:Label>
			<!-- // Form actions END -->
			
		</div>
	</div>
	<!-- // Widget END -->
	
</div>
<!-- // Form END -->


	
</div>	
	
		
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

