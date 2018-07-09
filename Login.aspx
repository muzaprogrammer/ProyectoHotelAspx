<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    <link rel="stylesheet" href="assets/css/admin/module.admin.page.form_validator.min.css" />
    <link rel="shortcut icon" type="image/x-icon" href="/images/favicon.ico"/>
	<script src="assets/components/library/jquery/jquery.min.js?v=v1.2.3"></script>
    <script src="assets/components/library/jquery/jquery-migrate.min.js?v=v1.2.3"></script>
    <script src="assets/components/library/modernizr/modernizr.js?v=v1.2.3"></script>
    <script src="assets/components/plugins/less-js/less.min.js?v=v1.2.3"></script>
    <script src="assets/components/modules/admin/charts/flot/assets/lib/excanvas.js?v=v1.2.3"></script>
    <script src="assets/components/plugins/browser/ie/ie.prototype.polyfill.js?v=v1.2.3"></script>   
</head>
<body>
    <form id="form1" runat="server">
    <div id=""><h4 class="innerAll margin-none border-bottom text-center"><i class="fa fa-lock"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sistema de reservaciones<br />Hotel Terra Bella</h4>

<div class="login spacing-x2">
	<div class="placeholder text-center"><img src="imgs/hotel.png" alt="hotel" height="250" width="250  "></div>
	<div class="col-sm-6 col-sm-offset-3">
		<div class="panel panel-default">
			<div class="panel-body innerAll">
		  		

		  	  		<div class="form-group">
                            <asp:Label ID="lblUsuario" runat="server" Text="Usuario"></asp:Label>			    		
                            <asp:TextBox class="form-control" ID="txtUsuario" runat="server" ></asp:TextBox>		    			
			  		</div>
			  		<div class="form-group">
                          <asp:Label ID="lblPassword" runat="server" Text="Contraseña: "></asp:Label>        
                          <asp:TextBox class="form-control" ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>			    					    		
			  		</div>
                      <asp:Button ID="btnOk" class="btn btn-info btn-block" runat="server" Text="Ingresar" OnClick="btnOk_Click"/>			  		
		  			<div class="checkbox">			    		
			      			<asp:Label ID="lblMsj" runat="server" ForeColor="#FF3300"></asp:Label>			    		
			  		</div>
				
		  	</div>
		</div>
	</div>
	<div class="col-sm-6 col-sm-offset-3 text-center">
		
	</div>
</div>
            </div>

                    
    </div>
    </form>
</body>
</html>
