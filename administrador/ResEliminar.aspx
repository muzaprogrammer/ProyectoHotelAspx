<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="ResEliminar.aspx.cs" Inherits="administrador_ResEliminar" %>

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
                        <li class="active"><a href="ResBuscar.aspx"><i class="glyphicon glyphicon-search"></i><span>Buscar reservaciones</span></a></li>		
                        <li><a href="ResVer.aspx"><i class="fa fa-eye"></i><span>Ver reservaciones</span></a></li>		
                        <li><a href="ResEditar.aspx"><i class="fa fa-pencil"></i><span>Editar reservaciones</span></a></li>		                        
                        <li><a href="ResEliminar.aspx"><i class="fa fa-trash-o"></i><span>Eliminar reservaciones</span></a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</div>

<div id="content"><h1 class="content-heading bg-white border-bottom">ELIMINAR RESERVAS</h1>
<div class="innerAll spacing-x2">

	<!-- Widget -->
	<div class="widget widget-inverse">
		<div class="widget-head">
			<h4 class="heading">Eliminar Reservaciones</h4>
		</div>
        

		<div class="widget-body innerAll inner-2x">   
            <!-- Table -->
            <asp:GridView ID="GridView1" class="table table-bordered table-striped table-white"  runat="server" AutoGenerateColumns="False" DataKeyNames="RES_ID" DataSourceID="SqlDataSource1">
                
                <Columns>
                    <asp:TemplateField HeaderText="Aciones">                      
                        <ItemTemplate>                            
                            <div class="center">
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" class="btn btn-danger"><i class="glyphicon glyphicon-trash"></i></asp:LinkButton>
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="RES_ID">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("RES_ID") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("RES_ID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="HAB" SortExpression="HAB_NUM">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("HAB_NUM") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("HAB_NUM") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="NOMBRE" SortExpression="NOMBRE">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("NOMBRE") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("NOMBRE") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="APELLIDO" SortExpression="APELLIDO">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("APELLIDO") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("APELLIDO") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="RESERVACION" SortExpression="FECHA_RESERVACION">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("FECHA_RESERVACION") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("FECHA_RESERVACION") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CHECKIN" SortExpression="CHECKIN">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("CHECKIN") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("CHECKIN") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CHECKOUT" SortExpression="CHECKOUT">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("CHECKOUT") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("CHECKOUT") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="NOCHES" SortExpression="N_NOCHES">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("N_NOCHES") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Bind("N_NOCHES") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="COSTO" SortExpression="COSTO_TOTAL">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("COSTO_TOTAL") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label9" runat="server" Text='<%# Bind("COSTO_TOTAL") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="OBSERVACIONES" SortExpression="OBSERVACIONES">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("OBSERVACIONES") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label10" runat="server" Text='<%# Bind("OBSERVACIONES") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ESTADO" SortExpression="ESTADO">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("ESTADO") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label11" runat="server" Text="Reservado"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
			<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HOTELConnectionString %>" DeleteCommand="DELETE FROM [RESERVA] WHERE [RES_ID] = @RES_ID" InsertCommand="INSERT INTO [RESERVA] ([HAB_ID], [CLI_ID], [EMP_ID], [FECHA_RESERVACION], [CHECKIN], [CHECKOUT], [N_NOCHES], [COSTO_TOTAL], [OBSERVACIONES], [ESTADO]) VALUES (@HAB_ID, @CLI_ID, @EMP_ID, @FECHA_RESERVACION, @CHECKIN, @CHECKOUT, @N_NOCHES, @COSTO_TOTAL, @OBSERVACIONES, @ESTADO)" SelectCommand="SELECT RES_ID, HAB_NUM, CLIENTES.CLI_NOMBRES AS NOMBRE, CLI_APELLIDOS AS APELLIDO, FECHA_RESERVACION, CHECKIN, CHECKOUT, N_NOCHES, COSTO_TOTAL, OBSERVACIONES, ESTADO FROM RESERVA INNER JOIN CLIENTES ON RESERVA.CLI_ID = CLIENTES.CLI_ID INNER JOIN HABITACIONES ON RESERVA.HAB_ID = HABITACIONES.HAB_ID WHERE ESTADO = 2 ORDER BY RES_ID DESC" UpdateCommand="UPDATE [RESERVA] SET [HAB_ID] = @HAB_ID, [CLI_ID] = @CLI_ID, [EMP_ID] = @EMP_ID, [FECHA_RESERVACION] = @FECHA_RESERVACION, [CHECKIN] = @CHECKIN, [CHECKOUT] = @CHECKOUT, [N_NOCHES] = @N_NOCHES, [COSTO_TOTAL] = @COSTO_TOTAL, [OBSERVACIONES] = @OBSERVACIONES, [ESTADO] = @ESTADO WHERE [RES_ID] = @RES_ID">
                <DeleteParameters>
                    <asp:Parameter Name="RES_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="HAB_ID" Type="Int32" />
                    <asp:Parameter Name="CLI_ID" Type="Int32" />
                    <asp:Parameter Name="EMP_ID" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="FECHA_RESERVACION" />
                    <asp:Parameter DbType="Date" Name="CHECKIN" />
                    <asp:Parameter DbType="Date" Name="CHECKOUT" />
                    <asp:Parameter Name="N_NOCHES" Type="Int32" />
                    <asp:Parameter Name="COSTO_TOTAL" Type="Decimal" />
                    <asp:Parameter Name="OBSERVACIONES" Type="String" />
                    <asp:Parameter Name="ESTADO" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="HAB_ID" Type="Int32" />
                    <asp:Parameter Name="CLI_ID" Type="Int32" />
                    <asp:Parameter Name="EMP_ID" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="FECHA_RESERVACION" />
                    <asp:Parameter DbType="Date" Name="CHECKIN" />
                    <asp:Parameter DbType="Date" Name="CHECKOUT" />
                    <asp:Parameter Name="N_NOCHES" Type="Int32" />
                    <asp:Parameter Name="COSTO_TOTAL" Type="Decimal" />
                    <asp:Parameter Name="OBSERVACIONES" Type="String" />
                    <asp:Parameter Name="ESTADO" Type="Int32" />
                    <asp:Parameter Name="RES_ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
			<!-- Table -->
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
<script src="../assets/components/modules/admin/tables/responsive/assets/lib/js/footable.min.js?v=v1.2.3"></script>
<script src="../assets/components/modules/admin/tables/responsive/assets/custom/js/tables-responsive-footable.init.js?v=v1.2.3"></script>
<script src="../assets/components/plugins/holder/holder.js?v=v1.2.3"></script>
<script src="../assets/components/core/js/sidebar.main.init.js?v=v1.2.3"></script>
<script src="../assets/components/core/js/sidebar.collapse.init.js?v=v1.2.3"></script>
<script src="../assets/components/helpers/themer/assets/plugins/cookie/jquery.cookie.js?v=v1.2.3"></script>
<script src="../assets/components/core/js/core.init.js?v=v1.2.3"></script>	
</asp:Content>