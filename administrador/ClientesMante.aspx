<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="ClientesMante.aspx.cs" Inherits="administrador_ClienteMante" %>

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
					<ul class="collapse " id="empleados">
						<li><a href="EmpleadoInsert.aspx"><i class="fa fa-user"></i><span>Agregar Empleado</span></a></li>						
                        <li><a href="Empleados.aspx"><i class="fa fa-info"></i><span>Ver Empleados</span></a></li>	
                        <li><a href="EmpleadosMante.aspx"><i class="fa fa-pencil-square"></i><span>Mantenimiento</span></a></li>						
					</ul>
				</li>
                <li class="hasSubmenu active">
					<a href="#" data-target="#clientes" data-toggle="collapse"><i class="fa fa-group"></i><span>Clientes</span></a>
					<ul class="collapse in" id="clientes">
						<li><a href="ClienteInsert.aspx"><i class="fa fa-user"></i><span>Agregar Clientes</span></a></li>						
                        <li><a href="Clientes.aspx"><i class="fa fa-info"></i><span>Ver Clientes</span></a></li>	
                        <li class="active"><a href="ClientesMante.aspx"><i class="fa fa-pencil-square"></i><span>Mantenimiento</span></a></li>						
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

<div id="content"><h1 class="content-heading bg-white border-bottom">MANTENIMIENTO CLIENTES</h1>
<div class="innerAll spacing-x2">

            <div class="input-group">                
                    <asp:TextBox class="form-control" ID="txtbuscar" runat="server" AutoPostBack="True"></asp:TextBox>                    
                    <div class="input-group-btn">
                        <asp:LinkButton class="btn btn-info" ID="linkbuscar" runat="server"  Text=""><i class="glyphicon glyphicon-search"></i></asp:LinkButton>
                    </div>
                </div>    
            <br />
    <asp:GridView class="table table-bordered table-striped table-white" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CLI_ID" DataSourceID="SqlDataSource1">
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
                    <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="CLI_ID">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" class="badge badge-primary" runat="server" Text='<%# Eval("CLI_ID") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate >
                            <asp:Label ID="Label1" class="badge badge-primary" runat="server" Text='<%# Bind("CLI_ID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Nombre" SortExpression="CLI_NOMBRES">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" class="form-control" style="width:150px" runat="server" Text='<%# Bind("CLI_NOMBRES") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("CLI_NOMBRES") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Apellido" SortExpression="CLI_APELLIDOS">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" class="form-control" style="width:150px" runat="server" Text='<%# Bind("CLI_APELLIDOS") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("CLI_APELLIDOS") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Tipo Doc." SortExpression="CLI_TIPO_DOCUMENTO">
                        <EditItemTemplate>
                            <asp:DropDownList class="form-control" ID="TextBox3" style="width:150px" runat="server" SelectedValue='<%# Bind("CLI_TIPO_DOCUMENTO") %>'>
                                <asp:ListItem Value="DUI">DUI</asp:ListItem>
                                <asp:ListItem Value="LICENCIA">LICENCIA</asp:ListItem>
                                <asp:ListItem Value="PASAPORTE">PASAPORTE</asp:ListItem>
                                <asp:ListItem>OTRO</asp:ListItem>
                            </asp:DropDownList>                            
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("CLI_TIPO_DOCUMENTO") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="# Doc." SortExpression="CLI_N_DOCUMENTO">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" class="form-control" style="width:150px" runat="server" Text='<%# Bind("CLI_N_DOCUMENTO") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("CLI_N_DOCUMENTO") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Nacimiento" SortExpression="CLI_FECHA_NAC">                        
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" class="form-control" style="width:150px" Text='<%# Bind("CLI_FECHA_NAC") %>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("CLI_FECHA_NAC") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Genero" SortExpression="CLI_GENERO">
                        <EditItemTemplate>
                            <asp:DropDownList class="form-control" ID="TextBox6" style="width:150px" runat="server" SelectedValue='<%# Bind("CLI_GENERO") %>'>
                                <asp:ListItem Value="1">MASCULINO</asp:ListItem>
                                <asp:ListItem Value="2">FEMENINO</asp:ListItem>                    
                            </asp:DropDownList>                            
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("CLI_GENERO") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Telefono" SortExpression="CLI_TELEFONO">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox7" class="form-control" style="width:150px" runat="server" Text='<%# Bind("CLI_TELEFONO") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Bind("CLI_TELEFONO") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Pais" SortExpression="CLI_PAIS">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox8" class="form-control" style="width:150px" runat="server" Text='<%# Bind("CLI_PAIS") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label9" runat="server" Text='<%# Bind("CLI_PAIS") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email" SortExpression="CLI_EMAIL">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox9" class="form-control" style="width:150px" runat="server" Text='<%# Bind("CLI_EMAIL") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label10" runat="server" Text='<%# Bind("CLI_EMAIL") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
			<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HOTELConnectionString %>" DeleteCommand="DELETE FROM [CLIENTES] WHERE [CLI_ID] = @CLI_ID" InsertCommand="INSERT INTO [CLIENTES] ([CLI_NOMBRES], [CLI_APELLIDOS], [CLI_TIPO_DOCUMENTO], [CLI_N_DOCUMENTO], [CLI_FECHA_NAC], [CLI_GENERO], [CLI_TELEFONO], [CLI_PAIS], [CLI_EMAIL]) VALUES (@CLI_NOMBRES, @CLI_APELLIDOS, @CLI_TIPO_DOCUMENTO, @CLI_N_DOCUMENTO, @CLI_FECHA_NAC, @CLI_GENERO, @CLI_TELEFONO, @CLI_PAIS, @CLI_EMAIL)" SelectCommand="SELECT * FROM [CLIENTES] WHERE (([CLI_APELLIDOS] LIKE '%' + @CLI_APELLIDOS + '%') OR ([CLI_NOMBRES] LIKE '%' + @CLI_NOMBRES + '%') OR ([CLI_N_DOCUMENTO] LIKE '%' + @CLI_N_DOCUMENTO + '%'))" UpdateCommand="UPDATE [CLIENTES] SET [CLI_NOMBRES] = @CLI_NOMBRES, [CLI_APELLIDOS] = @CLI_APELLIDOS, [CLI_TIPO_DOCUMENTO] = @CLI_TIPO_DOCUMENTO, [CLI_N_DOCUMENTO] = @CLI_N_DOCUMENTO, [CLI_FECHA_NAC] = @CLI_FECHA_NAC, [CLI_GENERO] = @CLI_GENERO, [CLI_TELEFONO] = @CLI_TELEFONO, [CLI_PAIS] = @CLI_PAIS, [CLI_EMAIL] = @CLI_EMAIL WHERE [CLI_ID] = @CLI_ID">
                <DeleteParameters>
                    <asp:Parameter Name="CLI_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CLI_NOMBRES" Type="String" />
                    <asp:Parameter Name="CLI_APELLIDOS" Type="String" />
                    <asp:Parameter Name="CLI_TIPO_DOCUMENTO" Type="String" />
                    <asp:Parameter Name="CLI_N_DOCUMENTO" Type="String" />
                    <asp:Parameter DbType="Date" Name="CLI_FECHA_NAC" />
                    <asp:Parameter Name="CLI_GENERO" Type="Int32" />
                    <asp:Parameter Name="CLI_TELEFONO" Type="String" />
                    <asp:Parameter Name="CLI_PAIS" Type="String" />
                    <asp:Parameter Name="CLI_EMAIL" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtbuscar" Name="CLI_APELLIDOS" PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtbuscar" Name="CLI_NOMBRES" PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtbuscar" Name="CLI_N_DOCUMENTO" PropertyName="Text" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CLI_NOMBRES" Type="String" />
                    <asp:Parameter Name="CLI_APELLIDOS" Type="String" />
                    <asp:Parameter Name="CLI_TIPO_DOCUMENTO" Type="String" />
                    <asp:Parameter Name="CLI_N_DOCUMENTO" Type="String" />
                    <asp:Parameter DbType="Date" Name="CLI_FECHA_NAC" />
                    <asp:Parameter Name="CLI_GENERO" Type="Int32" />
                    <asp:Parameter Name="CLI_TELEFONO" Type="String" />
                    <asp:Parameter Name="CLI_PAIS" Type="String" />
                    <asp:Parameter Name="CLI_EMAIL" Type="String" />
                    <asp:Parameter Name="CLI_ID" Type="Int32" />
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

