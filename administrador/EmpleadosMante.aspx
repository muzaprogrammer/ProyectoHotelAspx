<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="EmpleadosMante.aspx.cs" Inherits="administrador_EmpleadosMante" %>

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
                <li class="hasSubmenu active">
					<a href="#" data-target="#empleados" data-toggle="collapse"><i class="icon-user-1"></i><span>Empleados</span></a>
					<ul class="collapse in" id="empleados">
						<li><a href="EmpleadoInsert.aspx"><i class="fa fa-user"></i><span>Agregar Empleado</span></a></li>						
                        <li><a href="Empleados.aspx"><i class="fa fa-info"></i><span>Ver Empleados</span></a></li>	
                        <li class="active"><a href="EmpleadosMante.aspx"><i class="fa fa-pencil-square"></i><span>Mantenimiento</span></a></li>						
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

<div id="content"><h1 class="content-heading bg-white border-bottom">MANTENIMIENTO EMPLEADOS</h1>
<div class="innerAll spacing-x2">

            <div class="input-group">                
                    <asp:TextBox class="form-control" ID="txtbuscar" runat="server" AutoPostBack="True"></asp:TextBox>                    
                    <div class="input-group-btn">
                        <asp:LinkButton class="btn btn-info" ID="linkbuscar" runat="server"  Text=""><i class="glyphicon glyphicon-search"></i></asp:LinkButton>
                    </div>
                </div>    
            <br />
    <asp:GridView ID="GridView1" class="table table-bordered table-striped table-white" runat="server" AutoGenerateColumns="False" DataKeyNames="EMP_ID,GEN_ID,ACC_ID,TUR_ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:TemplateField HeaderText="Aciones">
                        <EditItemTemplate>
                            <div class="btn-group btn-group-xs">
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" class="btn btn-success"><i class="glyphicon glyphicon-ok"></i></asp:LinkButton>
                            <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" class="btn btn-danger"><i class="glyphicon glyphicon-remove"></i></asp:LinkButton>
                            </div>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <div class="btn-group btn-group-xs">
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" class="btn btn-inverse"><i class="glyphicon glyphicon-pencil"></i></asp:LinkButton>
                            <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" class="btn btn-danger"><i class="glyphicon glyphicon-trash"></i></asp:LinkButton>
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
            <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="ID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" class="badge badge-primary" runat="server" Text='<%# Eval("EMP_ID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" class="badge badge-primary" runat="server" Text='<%# Bind("EMP_ID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Nombres" SortExpression="EMP_NOMBRES">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" class="form-control" style="width:150px" runat="server" Text='<%# Bind("EMP_NOMBRES") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("EMP_NOMBRES") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Apellidos" SortExpression="Apellidos">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" class="form-control" style="width:150px" runat="server" Text='<%# Bind("EMP_APELLIDOS") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("EMP_APELLIDOS") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Tipo Doc" SortExpression="EMP_TIPO_DOCUMENTO">
                <EditItemTemplate>
                    <asp:DropDownList class="form-control" style="width:150px" ID="TextBox3" runat="server" SelectedValue='<%# Bind("EMP_TIPO_DOCUMENTO") %>'>
                                <asp:ListItem Value="DUI">DUI</asp:ListItem>
                                <asp:ListItem Value="LICENCIA">LICENCIA</asp:ListItem>
                                <asp:ListItem Value="PASAPORTE">PASAPORTE</asp:ListItem>
                                <asp:ListItem Value="OTRO">OTRO</asp:ListItem>
                            </asp:DropDownList>                                                
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("EMP_TIPO_DOCUMENTO") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="#Doc" SortExpression="No Doc">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" class="form-control" style="width:150px" runat="server" Text='<%# Bind("EMP_N_DOCUMENTO") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("EMP_N_DOCUMENTO") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Direccion" SortExpression="EMP_DIRECCION">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" class="form-control" style="width:150px" runat="server" Text='<%# Bind("EMP_DIRECCION") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("EMP_DIRECCION") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Nacimiento" SortExpression="EMP_FECHA_NAC">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" class="form-control" style="width:150px" runat="server" Text='<%# Bind("EMP_FECHA_NAC") %>'></asp:TextBox>                    
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("EMP_FECHA_NAC") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Ingreso" SortExpression="EMP_FECHA_INGRESO">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" class="form-control" style="width:150px" runat="server" Text='<%# Bind("EMP_FECHA_INGRESO") %>'></asp:TextBox>                                        
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("EMP_FECHA_INGRESO") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Sueldo" SortExpression="EMP_SUELDO">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" class="form-control" style="width:150px" runat="server" Text='<%# Bind("EMP_SUELDO") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("EMP_SUELDO") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Genero" SortExpression="EMP_GENERO">
                <EditItemTemplate>
                    <asp:DropDownList class="form-control" style="width:150px" ID="TextBox9" runat="server" SelectedValue='<%# Bind("EMP_GENERO") %>'>
                                <asp:ListItem Value="1">MASCULINO</asp:ListItem>
                                <asp:ListItem Value="2">FEMENINO</asp:ListItem>                    
                            </asp:DropDownList>                                                
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" style="width:150px" Text='<%# Bind("GENERO") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Telefono" SortExpression="EMP_TELEFONO">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox10" class="form-control" style="width:150px" runat="server" Text='<%# Bind("EMP_TELEFONO") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label11" runat="server" Text='<%# Bind("EMP_TELEFONO") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Turno" SortExpression="EMP_TURNO">
                <EditItemTemplate>
                    <asp:DropDownList class="form-control" style="width:150px" ID="TextBox11" runat="server" SelectedValue='<%# Bind("EMP_TURNO") %>'>
                                <asp:ListItem Value="1">MATUTINO</asp:ListItem>
                                <asp:ListItem Value="2">VESPERTINO</asp:ListItem>                                                                
                            </asp:DropDownList>                    
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label12" runat="server" Text='<%# Bind("TURNO") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="User" SortExpression="EMP_USER">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox18" class="form-control" style="width:150px" runat="server" Text='<%# Bind("EMP_USER") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label22" runat="server" Text='<%# Bind("EMP_USER") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Contraseña" SortExpression="EMP_PASWORD">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox17" class="form-control" style="width:150px" runat="server" Text='<%# Bind("EMP_PASWORD") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label21" runat="server" Text='<%# Bind("EMP_PASWORD") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Acceso" SortExpression="EMP_ACCESO">
                <EditItemTemplate>
                    <asp:DropDownList class="form-control" style="width:150px" ID="TextBox16" runat="server" SelectedValue='<%# Bind("EMP_ACCESO") %>'>
                                <asp:ListItem Value="1">ADMINISTRADOR</asp:ListItem>
                                <asp:ListItem Value="2">RECEPCIONISTA</asp:ListItem>                                                                
                                <asp:ListItem Value="3">RECAMARERA</asp:ListItem>                                                               
                                <asp:ListItem Value="4">INVALIDO</asp:ListItem>                                                               
                            </asp:DropDownList>                    
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label20" runat="server" Text='<%# Bind("ACC_TIPO") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>            
        </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HOTELConnectionString %>" DeleteCommand="DELETE FROM [EMPLEADOS] WHERE [EMP_ID] = @EMP_ID" InsertCommand="INSERT INTO [EMPLEADOS] ([EMP_NOMBRES], [EMP_APELLIDOS], [EMP_TIPO_DOCUMENTO], [EMP_N_DOCUMENTO], [EMP_DIRECCION], [EMP_FECHA_NAC], [EMP_FECHA_INGRESO], [EMP_SUELDO], [EMP_GENERO], [EMP_TELEFONO], [EMP_TURNO], [EMP_USER], [EMP_PASWORD], [EMP_ACCESO]) VALUES (@EMP_NOMBRES, @EMP_APELLIDOS, @EMP_TIPO_DOCUMENTO, @EMP_N_DOCUMENTO, @EMP_DIRECCION, @EMP_FECHA_NAC, @EMP_FECHA_INGRESO, @EMP_SUELDO, @EMP_GENERO, @EMP_TELEFONO, @EMP_TURNO, @EMP_USER, @EMP_PASWORD, @EMP_ACCESO)" SelectCommand="SELECT * FROM EMPLEADOS INNER JOIN GENERO ON EMPLEADOS.EMP_GENERO = GENERO.GEN_ID INNER JOIN ACCESO ON ACCESO.ACC_ID=EMPLEADOS.EMP_ACCESO INNER JOIN TURNOS ON TURNOS.TUR_ID=EMPLEADOS.EMP_TURNO WHERE (([EMP_APELLIDOS] LIKE '%' + @EMP_APELLIDOS + '%') OR ([EMP_N_DOCUMENTO] LIKE '%' + @EMP_N_DOCUMENTO + '%') OR ([EMP_NOMBRES] LIKE '%' + @EMP_NOMBRES + '%'))" UpdateCommand="UPDATE [EMPLEADOS] SET [EMP_NOMBRES] = @EMP_NOMBRES, [EMP_APELLIDOS] = @EMP_APELLIDOS, [EMP_TIPO_DOCUMENTO] = @EMP_TIPO_DOCUMENTO, [EMP_N_DOCUMENTO] = @EMP_N_DOCUMENTO, [EMP_DIRECCION] = @EMP_DIRECCION, [EMP_FECHA_NAC] = @EMP_FECHA_NAC, [EMP_FECHA_INGRESO] = @EMP_FECHA_INGRESO, [EMP_SUELDO] = @EMP_SUELDO, [EMP_GENERO] = @EMP_GENERO, [EMP_TELEFONO] = @EMP_TELEFONO, [EMP_TURNO] = @EMP_TURNO, [EMP_USER] = @EMP_USER, [EMP_PASWORD] = @EMP_PASWORD, [EMP_ACCESO] = @EMP_ACCESO WHERE [EMP_ID] = @EMP_ID">
                <DeleteParameters>
                    <asp:Parameter Name="EMP_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="EMP_NOMBRES" Type="String" />
                    <asp:Parameter Name="EMP_APELLIDOS" Type="String" />
                    <asp:Parameter Name="EMP_TIPO_DOCUMENTO" Type="String" />
                    <asp:Parameter Name="EMP_N_DOCUMENTO" Type="String" />
                    <asp:Parameter Name="EMP_DIRECCION" Type="String" />
                    <asp:Parameter DbType="Date" Name="EMP_FECHA_NAC" />
                    <asp:Parameter DbType="Date" Name="EMP_FECHA_INGRESO" />
                    <asp:Parameter Name="EMP_SUELDO" Type="Decimal" />
                    <asp:Parameter Name="EMP_GENERO" Type="Int32" />
                    <asp:Parameter Name="EMP_TELEFONO" Type="String" />
                    <asp:Parameter Name="EMP_TURNO" Type="Int32" />
                    <asp:Parameter Name="EMP_USER" Type="String" />
                    <asp:Parameter Name="EMP_PASWORD" Type="String" />
                    <asp:Parameter Name="EMP_ACCESO" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtbuscar" Name="EMP_APELLIDOS" PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtbuscar" Name="EMP_N_DOCUMENTO" PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtbuscar" Name="EMP_NOMBRES" PropertyName="Text" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="EMP_NOMBRES" Type="String" />
                    <asp:Parameter Name="EMP_APELLIDOS" Type="String" />
                    <asp:Parameter Name="EMP_TIPO_DOCUMENTO" Type="String" />
                    <asp:Parameter Name="EMP_N_DOCUMENTO" Type="String" />
                    <asp:Parameter Name="EMP_DIRECCION" Type="String" />
                    <asp:Parameter DbType="Date" Name="EMP_FECHA_NAC" />
                    <asp:Parameter DbType="Date" Name="EMP_FECHA_INGRESO" />
                    <asp:Parameter Name="EMP_SUELDO" Type="Decimal" />
                    <asp:Parameter Name="EMP_GENERO" Type="Int32" />
                    <asp:Parameter Name="EMP_TELEFONO" Type="String" />
                    <asp:Parameter Name="EMP_TURNO" Type="Int32" />
                    <asp:Parameter Name="EMP_USER" Type="String" />
                    <asp:Parameter Name="EMP_PASWORD" Type="String" />
                    <asp:Parameter Name="EMP_ACCESO" Type="Int32" />
                    <asp:Parameter Name="EMP_ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
    	<!-- Widget -->
		</div>	
    <div id="footer" class="hidden-print">
			
			<!--  Copyright Line -->
			<div class="copy">&copy; Copyright 2017 - <a href="">Designed by Grupo los Iracundos Programacion II</a> - All Rights Reserved. </div>
			<!--  End Copyright Line -->
	
		</div>
		<!-- // Footer END -->
</div>
<!-- // Modal END -->	
<!-- Modal -->

<!-- // Modal END -->	
	

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

