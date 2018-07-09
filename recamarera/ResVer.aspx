<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="ResVer.aspx.cs" Inherits="administrador_ResVer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
	<link rel="stylesheet" href="../assets/css/admin/module.admin.page.tables_responsive.min.css" />
	
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
					<ul class="collapse" id="habs">
						<li><a href="Habitaciones.aspx"><i class="icon-bank"></i><span>Ver habitaciones</span></a></li>						
					</ul>
				</li>
                <li class="hasSubmenu active">
					<a href="#" data-target="#reservas" data-toggle="collapse"><i class="icon-compose"></i><span>Reservaciones</span></a>
					<ul class="collapse in" id="reservas">
						<!--<li><a href="Reservacion.aspx"><i class="icon-ticket"></i><span>Nueva Reservaciones</span></a></li>-->
                        <li><a href="ResCheckin.aspx"><i class="fa fa-plus-circle"></i><span>Check-in</span></a></li>						
                        <li><a href="ResOcupadas.aspx"><i class="fa fa-ban"></i><span>Ocupadas</span></a></li>						
                        <li><a href="ResDisponibles.aspx"><i class="fa fa-check"></i><span>Disponibles</span></a></li>						
                        <li><a href="ResCheckout.aspx"><i class="fa fa-minus-circle"></i><span>Check-out</span></a></li>		
                        <!--<li><a href="ResBuscar.aspx"><i class="glyphicon glyphicon-search"></i><span>Buscar reservaciones</span></a></li>-->
                        <li class="active"><a href="ResVer.aspx"><i class="fa fa-eye"></i><span>Ver reservaciones</span></a></li>		
                        <!--<li><a href="ResEditar.aspx"><i class="fa fa-pencil"></i><span>Editar reservaciones</span></a></li>-->
                        <!--<li><a href="ResEliminar.aspx"><i class="fa fa-trash-o"></i><span>Eliminar reservaciones</span></a></li>-->
					</ul>
				</li>
			</ul>
		</div>
	</div>
</div>

	<div id="content"><div class="heading-buttons bg-white border-bottom innerAll">
	<h1 class="content-heading padding-none pull-left">Ver reservaciones</h1>
	<div class="clearfix"></div>
</div>

<div class="innerAll spacing-x2">

    <!-- Widget -->
	<div class="widget finances_summary widget-inverse">

		<div class="row row-merge">
			<!-- col -->
			<div class="col-sm-12 col-md-3">
                <div class="innerAll half border-bottom">
					<h4 class="pull-left innerT half margin-none"><strong>DIA</strong></h4>		
					<div class="clearfix"></div>
				
				</div>					
						
						<div class="innerAll inner-2x text-left"> 
                            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>                                                               
						</div>						
			</div> 
			<!-- // END col -->

		
			<!-- col -->
			<div class="col-lg-9 col-md-9 col-sm-12">

				<div class="innerAll half border-bottom">
					<h4 class="pull-left innerT half margin-none"><strong>DETALLES</strong></h4>		
					<div class="clearfix"></div>
				
				</div>
				<div class="innerAll ">
            <div class="center">		                                        
                <table class="table table-bordered table-striped table-white">
                    <thead>
                        <tr>
                            <th>                            
                                <asp:Label ID="Label3" runat="server" Text="FECHA: "></asp:Label>                            
                            </th>
                        </tr>                        
                    </thead>                    
                    <tr>
                        <td>
                            <asp:Label ID="lblfecha" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                </table>
                <asp:GridView ID="GridView4" class="table table-bordered table-striped table-white" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4">
                    <Columns>
                        <asp:TemplateField HeaderText="DISPONIBLES" SortExpression="NUM">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("NUM") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("NUM") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
			    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:HOTELConnectionString %>" SelectCommand="SELECT  DISTINCT COUNT (HAB_ID) AS NUM FROM HABITACIONES WHERE HABITACIONES.HAB_ID Not In (SELECT DISTINCT RESERVA.HAB_ID FROM RESERVA WHERE @fecha &lt;= CHECKIN AND DATEADD(DAY,1,@fecha) &gt; CHECKIN OR @fecha &lt; CHECKOUT AND DATEADD(DAY,1,@fecha) &gt; CHECKOUT OR @fecha &gt;= CHECKIN AND DATEADD(DAY,1,@fecha) &lt;= CHECKOUT)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Calendar1" Name="fecha" PropertyName="SelectedDate" />
                    </SelectParameters>
                </asp:SqlDataSource>                
                <asp:GridView ID="GridView1" class="table table-bordered table-striped table-white" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">                    
                    <Columns>
                        <asp:BoundField DataField="OCUPADAS" HeaderText="OCUPADAS" ReadOnly="True" SortExpression="OCUPADAS:" >
                        <HeaderStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:HOTELConnectionString %>" SelectCommand="SELECT COUNT (RESERVA.HAB_ID) AS OCUPADAS FROM RESERVA INNER JOIN CLIENTES ON RESERVA.CLI_ID = CLIENTES.CLI_ID INNER JOIN HABITACIONES ON RESERVA.HAB_ID = HABITACIONES.HAB_ID WHERE @fecha &lt;= CHECKIN AND DATEADD(DAY,1,@fecha) &gt; CHECKIN OR @fecha &lt; CHECKOUT AND DATEADD(DAY,1,@fecha) &gt; CHECKOUT OR @fecha &gt;= CHECKIN AND DATEADD(DAY,1,@fecha) &lt;= CHECKOUT">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Calendar1" Name="fecha" PropertyName="SelectedDate" />
                    </SelectParameters>
                </asp:SqlDataSource>                
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
</div>
<!-- // END row-app -->
	<!-- Widget -->
	<div class="widget finances_summary widget-inverse">

		<div class="row row-merge">
			<!-- col -->
			<div class="col-sm-12 col-md-3">
                <div class="innerAll half border-bottom">
					<h4 class="pull-left innerT half margin-none"><strong>DISPONIBLES</strong></h4>		
					<div class="clearfix"></div>
				
				</div>					
						
						<div class="innerAll inner-2x text-left">                            
                            <asp:GridView ID="GridView2" class="table table-bordered table-striped table-white" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                            <Columns>
                                <asp:BoundField DataField="HAB_NUM" HeaderText="HAB" SortExpression="HAB_NUM" />
                                <asp:BoundField DataField="TIPO_NOMBRE" HeaderText="TIPO" SortExpression="TIPO_NOMBRE" />
                            </Columns>
                            </asp:GridView>
						</div>						
                
			    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HOTELConnectionString %>" SelectCommand="SELECT  DISTINCT HAB_NUM, TIPO_NOMBRE FROM HABITACIONES INNER JOIN TIPO_HAB ON HABITACIONES.TIPO_ID=TIPO_HAB.TIPO_ID WHERE HABITACIONES.HAB_ID Not In (SELECT DISTINCT RESERVA.HAB_ID FROM RESERVA WHERE @fecha &lt;= CHECKIN AND DATEADD(DAY,1,@fecha) &gt; CHECKIN OR @fecha &lt; CHECKOUT AND DATEADD(DAY,1,@fecha) &gt; CHECKOUT OR @fecha &gt;= CHECKIN AND DATEADD(DAY,1,@fecha) &lt;= CHECKOUT)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Calendar1" Name="fecha" PropertyName="SelectedDate" />
                    </SelectParameters>
                </asp:SqlDataSource>
			</div> 
			<!-- // END col -->

		
			<!-- col -->
			<div class="col-lg-9 col-md-9 col-sm-12">

				<div class="innerAll half border-bottom">
					<h4 class="pull-left innerT half margin-none"><strong>OCUPADAS</strong></h4>		
					<div class="clearfix"></div>
				
				</div>
				<div class="innerAll ">
            <div class="center">		                
                <asp:GridView ID="GridView3" class="table table-bordered table-striped table-white" runat="server" AutoGenerateColumns="False" DataKeyNames="RES_ID" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="RES_ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="RES_ID" />
                        <asp:BoundField DataField="HAB_NUM" HeaderText="HAB" SortExpression="HAB_NUM" />
                        <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" ReadOnly="True" SortExpression="NOMBRE" />
                        <asp:BoundField DataField="FECHA_RESERVACION" HeaderText="FECHA RESERVACION" SortExpression="FECHA_RESERVACION" />
                        <asp:BoundField DataField="CHECKIN" HeaderText="CHECKIN" SortExpression="CHECKIN" />
                        <asp:BoundField DataField="CHECKOUT" HeaderText="CHECKOUT" SortExpression="CHECKOUT" />
                        <asp:BoundField DataField="N_NOCHES" HeaderText="NOCHES" SortExpression="N_NOCHES" />
                        <asp:BoundField DataField="COSTO_TOTAL" HeaderText="COSTO" SortExpression="COSTO_TOTAL" />
                        <asp:BoundField DataField="OBSERVACIONES" HeaderText="OBSERVACIONES" SortExpression="OBSERVACIONES" />
                        <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" />
                    </Columns>
                </asp:GridView>
			    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HOTELConnectionString %>" SelectCommand="SELECT RES_ID, HAB_NUM, CONCAT(CLIENTES.CLI_NOMBRES,' ',CLI_APELLIDOS) AS NOMBRE, FECHA_RESERVACION, CHECKIN, CHECKOUT, N_NOCHES, COSTO_TOTAL, OBSERVACIONES, ESTADO FROM RESERVA INNER JOIN CLIENTES ON RESERVA.CLI_ID = CLIENTES.CLI_ID INNER JOIN HABITACIONES ON RESERVA.HAB_ID = HABITACIONES.HAB_ID WHERE @fecha &lt;= CHECKIN AND DATEADD(DAY,1,@fecha) &gt; CHECKIN OR @fecha &lt; CHECKOUT AND DATEADD(DAY,1,@fecha) &gt; CHECKOUT OR @fecha &gt;= CHECKIN AND DATEADD(DAY,1,@fecha) &lt;= CHECKOUT">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Calendar1" Name="fecha" PropertyName="SelectedDate" />
                    </SelectParameters>
                </asp:SqlDataSource>
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

