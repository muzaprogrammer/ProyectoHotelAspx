using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class administrador_ClienteInsert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int permiso;
        try
        {
            permiso = Convert.ToInt32(Session["EMP_ACCESO"].ToString());
        }
        catch
        {
            permiso = 0;
        }
        if (permiso > 3 || permiso < 1)
        {
            Response.Redirect("../Login.aspx");
        }
        else
        {
            lblUsuario.Text = Session["USER"].ToString();
            lbluser.Text = "Conectado ==> " + Session["USER"].ToString();
            switch (permiso)
            {
                case 1:
                    lbltipo.Text = "Administrador";
                    break;
                case 2:
                    lbltipo.Text = "Recepcionista";
                    break;
                case 3:
                    lbltipo.Text = "Recamarera";
                    break;
                default:
                    break;
            }
        }

    }

    protected void linkguardar_Click(object sender, EventArgs e)
    {
        if (Datos.InsertarCliente(txtnombre.Text, txtapellido.Text, Convert.ToString(ddltipo.SelectedValue), txtnumero.Text, Convert.ToDateTime(fecha.Text), Convert.ToInt32(genero.SelectedValue), txttelefono.Text, pais.Text, txtemail.Text))
        {
            Response.Redirect("Clientes.aspx");
        }
        else
        {
            lblEstado.Text = "Algo anda mal no se guardo el registro...";
            lblEstado.ForeColor = System.Drawing.Color.DarkRed;
        }
    }

    protected void likcancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Index.aspx");
    }
}