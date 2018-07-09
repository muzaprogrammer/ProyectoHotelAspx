<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="administrador_Index" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="../assets/css/admin/module.admin.page.index.min.css" />
	
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

	<script src="../assets/components/library/jquery/jquery.min.js?v=v1.2.3"></script>
<script src="../assets/components/library/jquery/jquery-migrate.min.js?v=v1.2.3"></script>
<script src="../assets/components/library/modernizr/modernizr.js?v=v1.2.3"></script>
<script src="../assets/components/plugins/less-js/less.min.js?v=v1.2.3"></script>
<script src="../assets/components/modules/admin/charts/flot/assets/lib/excanvas.js?v=v1.2.3"></script>
<script src="../assets/components/plugins/browser/ie/ie.prototype.polyfill.js?v=v1.2.3"></script>
<script src="../assets/components/library/jquery-ui/js/jquery-ui.min.js?v=v1.2.3"></script>
<script src="../assets/components/plugins/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js?v=v1.2.3"></script>	
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
				<li class="active"><a href="Index.aspx"><i class=" icon-projector-screen-line"></i><span>Inicio</span></a></li>				
                <!--<li class="hasSubmenu">
					<a href="#" data-target="#empleados" data-toggle="collapse"><i class="icon-user-1"></i><span>Empleados</span></a>
					<ul class="collapse " id="empleados">
						<li><a href="EmpleadoInsert.aspx"><i class="fa fa-user"></i><span>Agregar Empleado</span></a></li>						
                        <li><a href="Empleados.aspx"><i class="fa fa-info"></i><span>Ver Empleados</span></a></li>	
                        <li><a href="EmpleadosMante.aspx"><i class="fa fa-pencil-square"></i><span>Mantenimiento</span></a></li>						
					</ul>
				</li>
                <li class="hasSubmenu ">
					<a href="#" data-target="#clientes" data-toggle="collapse"><i class="fa fa-group"></i><span>Clientes</span></a>
					<ul class="collapse" id="clientes">
						<li class=""><a href="ClienteInsert.aspx"><i class="fa fa-user"></i><span>Agregar Clientes</span></a></li>						
                        <li><a href="Clientes.aspx"><i class="fa fa-info"></i><span>Ver Clientes</span></a></li>	
                        <li><a href="ClientesMante.aspx"><i class="fa fa-pencil-square"></i><span>Mantenimiento</span></a></li>						
					</ul>
				</li>-->
                <li class="hasSubmenu">
					<a href="#" data-target="#habs" data-toggle="collapse"><i class="fa fa-home"></i><span>Habitaciones</span></a>
					<ul class="collapse " id="habs">
						<li><a href="Habitaciones.aspx"><i class="icon-bank"></i><span>Ver habitaciones</span></a></li>						
					</ul>
				</li>
                <li class="hasSubmenu">
					<a href="#" data-target="#reservas" data-toggle="collapse"><i class="icon-compose"></i><span>Reservaciones</span></a>
					<ul class="collapse" id="reservas">
						<!--<li><a href="Reservacion.aspx"><i class="icon-ticket"></i><span>Nueva Reservaciones</span></a></li>-->
                        <li><a href="ResCheckin.aspx"><i class="fa fa-plus-circle"></i><span>Check-in</span></a></li>						
                        <li><a href="ResOcupadas.aspx"><i class="fa fa-ban"></i><span>Ocupadas</span></a></li>						
                        <li><a href="ResDisponibles.aspx"><i class="fa fa-check"></i><span>Disponibles</span></a></li>						
                        <li><a href="ResCheckout.aspx"><i class="fa fa-minus-circle"></i><span>Check-out</span></a></li>		
                        <!--<li><a href="ResBuscar.aspx"><i class="glyphicon glyphicon-search"></i><span>Buscar reservaciones</span></a></li>-->
                        <li><a href="ResVer.aspx"><i class="fa fa-eye"></i><span>Ver reservaciones</span></a></li>		
                        <!--<li><a href="ResEditar.aspx"><i class="fa fa-pencil"></i><span>Editar reservaciones</span></a></li>-->
                        <!--<li><a href="ResEliminar.aspx"><i class="fa fa-trash-o"></i><span>Eliminar reservaciones</span></a></li>-->
					</ul>
				</li>
			</ul>
		</div>
	</div>
</div>


<div id="content"><h1 class="bg-white content-heading border-bottom"> Bienvenido al sistema de reservaciones Hotel Terra Bella</h1>						
<div class="innerAll spacing-x2">    

	<div class="row">        
        <br />
		<div class="col-md-3 col-sm-6">
			<div class="panel-3d">                
				<div class="front">
					<div class="widget text-center">
						<div class="widget-body padding-none">
							<div>
								<div class="innerAll bg-success">
                                    
									<a href="ResCheckin.aspx"><p class="lead text-white strong margin-none"><i class="fa fa-plus-circle"></i><br/>CHECK-IN</p></a>
                                    <br />
                                    <asp:Label class="lead text-white strong margin-none" ID="lblcheckin" runat="server" Text=""></asp:Label>
								</div>
								<div class="innerAll">
									<asp:LinkButton ID="LinkButton1" class="btn btn-success" href="#" runat="server"><i class="icon-refresh-6"></i></asp:LinkButton>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="back">
					<div class="widget widget-inverse widget-scroll" data-scroll-height="165px">
						<div class="widget-head bg-success">
                            <asp:LinkButton ID="LinkButton2" class="btn btn-xs btn-default pull-right" href="#" runat="server"><i class="fa fa-times"></i></asp:LinkButton>							
							<h4 class="heading">Check-in</h4>
						</div>
                        
                        <asp:Repeater ID="RepeaterCheckin" runat="server">
                            <HeaderTemplate>
                                <table class="table table-condensed">
                                    <thead>
                                        <tr>                    
                                            <th colspan="2">Num</th>                    
                                            <th>Nombre</th>                                       
                                        </tr>
                                    </thead>
                            </HeaderTemplate>
                            <ItemTemplate>
                                    <tbody>
                                        <tr class="gradeA">
                                            <td>
                                                <asp:Label ID="Label3" runat="server" Text="HAB # "></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label runat = "server" ID="Label1" class="badge badge-success" Text='<%# Eval("numero") %>' />
                                            </td>
                                            <td >
                                                <asp:Label runat = "server" ID="Label2" Text='<%# Eval("nombre") %>' />
                                            </td>                               
                                    </tbody>
                            </ItemTemplate>
                            <FooterTemplate>
                                </table>
                            </FooterTemplate>
                        </asp:Repeater>
					</div>
				</div>
			</div>
		</div>
        <div class="col-md-3 col-sm-6">
			<div class="panel-3d">
				<div class="front">
					<div class="widget text-center">
						<div class="widget-body padding-none">
							<div>
								<div class="innerAll bg-inverse">            
                                    <a href="ResOcupadas.aspx"><p class="lead text-white strong margin-none"><i class="fa fa-ban"></i><br/>OCUPADAS</p></a>                        									
                                    <br />
                                    <asp:Label class="lead text-white strong margin-none" ID="lblocupadas" runat="server" Text="0"></asp:Label>
								</div>
								<div class="innerAll">
                                    <asp:LinkButton ID="LinkButton6" class="btn btn-inverse" href="#" runat="server"><i class="icon-refresh-6"></i></asp:LinkButton>                                    									
                                    
								</div>
							</div>
						</div>
					</div>

				</div>
				<div class="back">
					<div class="widget widget-inverse widget-scroll" data-scroll-height="165px">
						<div class="widget-head">
                            <asp:LinkButton ID="LinkButton4" class="btn btn-xs btn-default pull-right" href="#" runat="server"><i class="fa fa-times"></i></asp:LinkButton>							
							<h4 class="heading">Ocupadas</h4>
						</div>						
                        <asp:Repeater ID="Repeaterocu" runat="server">
                            <HeaderTemplate>
                                <table class="table table-condensed">
                                    <thead>
                                        <tr>                    
                                            <th colspan="2">Num</th>                    
                                            <th>Nombre</th>                                       
                                        </tr>
                                    </thead>
                            </HeaderTemplate>
                            <ItemTemplate>
                                    <tbody>
                                        <tr class="gradeA">
                                            <td>
                                                <asp:Label ID="Label3" runat="server" Text="HAB # "></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label runat = "server" ID="Label1" class="badge badge-inverse" Text='<%# Eval("numero") %>' />
                                            </td>
                                            <td >
                                                <asp:Label runat = "server" ID="Label2" Text='<%# Eval("nombre") %>' />
                                            </td>                               
                                    </tbody>
                            </ItemTemplate>
                            <FooterTemplate>
                                </table>
                            </FooterTemplate>
                        </asp:Repeater>
					</div>
				</div>
			</div>
		</div>
        <div class="col-md-3 col-sm-6">
			<div class="panel-3d">
				<div class="front">

					<div class="widget text-center">
						<div class="widget-body padding-none">
							<div>
								<div class="bg-info innerAll">
                                    <a href="ResDisponibles.aspx"><p class="lead text-white strong margin-none"><i class="fa fa-check"></i><br/>DISPONIBLES</p></a>                        									
                                    <br />
                                    <asp:Label class="lead text-white strong margin-none" ID="lbldisponibles" runat="server" Text="0"></asp:Label>
								</div>
								<div class="innerAll">
                                    <asp:LinkButton ID="LinkButton3" class="btn btn-info" href="#" runat="server"><i class="icon-refresh-6"></i></asp:LinkButton>									
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="back">
					<div class="widget widget-inverse widget-scroll" data-scroll-height="165px">
						<div class="widget-head bg-info">
                            <asp:LinkButton ID="LinkButton5" class="btn btn-xs btn-default pull-right" href="#" runat="server"><i class="fa fa-times"></i></asp:LinkButton>							
							<h4 class="heading">Disponibles</h4>
						</div>
                        <asp:Repeater ID = "RptCourse" runat="server">
        <HeaderTemplate>
            <table class="table table-condensed">
                <thead>
                <tr>                    
                    <th colspan="2">Num</th>                    
                    <th>Tipo</th>                                       
                </tr>
                </thead>
        </HeaderTemplate>

        <ItemTemplate>
            <tbody>
            <tr class="gradeA">
                <td>
                    <asp:Label ID="Label3" runat="server" Text="HAB # "></asp:Label>
                </td>
                <td>
                    <asp:Label runat = "server" ID="Label1" class="badge badge-info"
                        Text='<%# Eval("numero") %>' />
                </td>
                <td >
                    <asp:Label runat = "server" ID="Label2"
                        Text='<%# Eval("nombre") %>' />
                </td>                               
            </tbody>
        </ItemTemplate>        
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>						
					</div>
				</div>
			</div>
		</div>      
        <div class="col-md-3 col-sm-6">
			<div class="panel-3d">                
				<div class="front">
					<div class="widget text-center">
						<div class="widget-body padding-none">
							<div>
								<div class="innerAll bg-primary">
                                    <a href="ResCheckout.aspx"><p class="lead text-white strong margin-none"><i class="fa fa-minus-circle"></i><br/>CHECK-OUT</p></a>									
                                    <br /><asp:Label class="lead text-white strong margin-none" ID="lblcheckout" runat="server" Text=""></asp:Label>
								</div>
								<div class="innerAll">
									<asp:LinkButton ID="LinkButton7" class="btn btn-primary" href="#" runat="server"><i class="icon-refresh-6"></i></asp:LinkButton>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="back">
					<div class="widget widget-inverse widget-scroll" data-scroll-height="165px">
						<div class="widget-head bg-primary">
                            <asp:LinkButton ID="LinkButton8" class="btn btn-xs btn-default pull-right" href="#" runat="server"><i class="fa fa-times"></i></asp:LinkButton>							
							<h4 class="heading">Ckeck-out</h4>
						</div>
						<asp:Repeater ID="RepeaterCkeckout" runat="server">
                            <HeaderTemplate>
                                <table class="table table-condensed">
                                    <thead>
                                        <tr>                    
                                            <th colspan="2">Num</th>                    
                                            <th>Nombre</th>                                       
                                        </tr>
                                    </thead>
                            </HeaderTemplate>
                            <ItemTemplate>
                                    <tbody>
                                        <tr class="gradeA">
                                            <td>
                                                <asp:Label ID="Label3" runat="server" Text="HAB # "></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label runat = "server" ID="Label1" class="badge badge-primary" Text='<%# Eval("numero") %>' />
                                            </td>
                                            <td >
                                                <asp:Label runat = "server" ID="Label2" Text='<%# Eval("nombre") %>' />
                                            </td>                               
                                    </tbody>
                            </ItemTemplate>
                            <FooterTemplate>
                                </table>
                            </FooterTemplate>
                        </asp:Repeater>
					</div>
				</div>
			</div>
		</div>
    </div>        
			<!-- Chat -->
<!--<div class="widget widget-inverse widget-chat" data-builder-exclude>

	<div class="widget-head">
		<h4 class="heading"><i class="icon-comment-fill-1"></i> Notas</h3>
	</div>
	<div class="widget-body padding-none border-bottom">
	
	
	<div class="slim-scroll chat-items" data-scroll-height="235px" data-scroll-size="0">
	
		<div class="media innerAll">
            <asp:Repeater ID="RepeaterNotas" runat="server">
                <HeaderTemplate>
                    <table width="100%">
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td style="text-align:left; width:150px">
    			            <div class="strong" style="color: red"><p><asp:Label ID="Label4" runat="server" Text='<%# Eval("nombre") %>'></asp:Label></p></div>
                        </td>
                        <td style="text-align:left; width:150px">
                            <p><asp:Label ID="Label5" runat="server" Text='<%# Eval("fecha") %>'></asp:Label></p>
			            </td>
                        <td>
                            <div style="text-align:left; width:100%; color: blue">                                
				                <p><asp:Label ID="Label6" runat="server" Text='<%# Eval("nota") %>'></asp:Label></p>                              
			                </div>
                        </td>
                </tr>

                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>            
		</div>
	
		
	</div>
	
	</div>
	
	<div class="chat-controls bg-default innerAll half">
		<div class="">
			<form class="margin-none">
				<div class="input-group">
                    <asp:TextBox ID="txtnotas" class="form-control" placeholder="Escriba su nota .." runat="server"></asp:TextBox>					
					<div class="input-group-btn">
                        <asp:LinkButton ID="btnAgregarnota2" runat="server" class="btn btn-primary" OnClick="btnAgregarnota2_Click"><i class="fa fa-comments-o"></i></asp:LinkButton>		                        
					</div>
				</div>
			</form>
		</div>
	</div>
    
	
</div>-->
<!-- // Chat END -->	
    
			
		</div>
	</div>
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
<script src="../assets/components/modules/admin/charts/flot/assets/lib/jquery.flot.js?v=v1.2.3"></script>
<script src="../assets/components/modules/admin/charts/flot/assets/lib/jquery.flot.resize.js?v=v1.2.3"></script>
<script src="../assets/components/modules/admin/charts/flot/assets/lib/plugins/jquery.flot.tooltip.min.js?v=v1.2.3"></script>
<script src="../assets/components/modules/admin/charts/flot/assets/custom/js/flotcharts.common.js?v=v1.2.3"></script>
<script src="../assets/components/modules/admin/charts/flot/assets/custom/js/flotchart-simple.init.js?v=v1.2.3"></script>
<script src="../assets/components/modules/admin/charts/flot/assets/custom/js/flotchart-simple-bars.init.js?v=v1.2.3"></script>
<script src="../assets/components/modules/admin/widgets/widget-chat/assets/js/widget-chat.js?v=v1.2.3"></script>
<script src="../assets/components/plugins/slimscroll/jquery.slimscroll.js?v=v1.2.3"></script>
<script src="../assets/components/modules/admin/forms/elements/bootstrap-datepicker/assets/lib/js/bootstrap-datepicker.js?v=v1.2.3"></script>
<script src="../assets/components/modules/admin/forms/elements/bootstrap-datepicker/assets/custom/js/bootstrap-datepicker.init.js?v=v1.2.3"></script>
<script src="../assets/components/modules/admin/charts/easy-pie/assets/lib/js/jquery.easy-pie-chart.js?v=v1.2.3"></script>
<script src="../assets/components/modules/admin/charts/easy-pie/assets/custom/easy-pie.init.js?v=v1.2.3"></script>
<script src="../assets/components/modules/admin/widgets/widget-scrollable/assets/js/widget-scrollable.init.js?v=v1.2.3"></script>
<script src="../assets/components/plugins/holder/holder.js?v=v1.2.3"></script>
<script src="../assets/components/core/js/sidebar.main.init.js?v=v1.2.3"></script>
<script src="../assets/components/core/js/sidebar.collapse.init.js?v=v1.2.3"></script>
<script src="../assets/components/helpers/themer/assets/plugins/cookie/jquery.cookie.js?v=v1.2.3"></script>
<script src="../assets/components/core/js/core.init.js?v=v1.2.3"></script>	
</asp:Content>

