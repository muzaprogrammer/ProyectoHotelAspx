using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Configuration;
using System.Data.SqlClient;


public partial class administrador_Clientes : System.Web.UI.Page
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
        RptCourse.DataSource = Datos.GetCourses();
        RptCourse.DataBind();
    }


    protected void txtbuscar_TextChanged(object sender, EventArgs e)
    {
        RptCourse.DataSource = Datos.GetCourses(txtbuscar.Text);
        RptCourse.DataBind();
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        RptCourse.DataSource = Datos.GetCourses(txtbuscar.Text);
        RptCourse.DataBind();
    }
}

