using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class administrador_EmpleadosInsert : System.Web.UI.Page
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


    protected void likcancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Index.aspx");
    }

    protected void linkguardar_Click(object sender, EventArgs e)
    {
        if (Datos.InsertarEmpleado(txtnombre.Text, txtapellido.Text, Convert.ToString(ddltipo.SelectedValue), txtnumero.Text, txtdireccion.Text, Convert.ToDateTime(fecha.Text), Convert.ToDateTime(fechaingreso.Text), Convert.ToDouble(txtsueldo.Text), Convert.ToInt32(genero.SelectedValue), txttelefono.Text, Convert.ToInt32(ddlturno.SelectedValue),txtuser.Text, txtpass.Text, Convert.ToInt32(ddlacceso.SelectedValue)))
        {
            Response.Redirect("Empleados.aspx");
        }
        else
        {
            lblEstado.Text = "Algo anda mal no se guardo el registro...";
            lblEstado.ForeColor = System.Drawing.Color.DarkRed;
        }
    }
}