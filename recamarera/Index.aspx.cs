using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class administrador_Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        RptCourse.DataSource = Datos.GetHabitacionesDisponibles();
        RptCourse.DataBind();

        RepeaterCheckin.DataSource = Datos.GetHabitacionesCheckin();
        RepeaterCheckin.DataBind();

        Repeaterocu.DataSource = Datos.GetHabitacionesOcupadas();
        Repeaterocu.DataBind();

        RepeaterCkeckout.DataSource = Datos.GetHabitacionesCheckout();
        RepeaterCkeckout.DataBind();

        RepeaterNotas.DataSource = Datos.GetNotas();
        RepeaterNotas.DataBind();

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
            //Response.Redirect("../Login.aspx");
        }
        else
        {
            lbluser.Text = "Conectado ==> " + Session["USER"].ToString();
            lblUsuario.Text = Session["USER"].ToString();
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
        habcheckin();
        habcheckout();
        habocupadas();
        habdisponibles();

    }
    public void habcheckin()
    {
        DataSet ds = new DataSet();
        ds = Datos.habcheckin();
        lblcheckin.Text = Convert.ToString(ds.Tables[0].Rows[0]["NUM"].ToString());
    }
    public void habcheckout()
    {
        DataSet ds = new DataSet();
        ds = Datos.habcheckout();
        lblcheckout.Text = Convert.ToString(ds.Tables[0].Rows[0]["NUM"].ToString());
    }
    public void habocupadas()
    {
        DataSet ds = new DataSet();
        ds = Datos.habocupadas();
        lblocupadas.Text = Convert.ToString(ds.Tables[0].Rows[0]["NUM"].ToString());
    }
    public void habdisponibles()
    {
        DataSet ds = new DataSet();
        ds = Datos.habdisponibles();
        lbldisponibles.Text = Convert.ToString(ds.Tables[0].Rows[0]["NUM"].ToString());
    }


    protected void btnAgregarnota2_Click(object sender, EventArgs e)
    {
        if(string.IsNullOrEmpty(txtnotas.Text))
        {
            
        }
        else
        {
            if (Datos.InsertarNota(txtnotas.Text, Convert.ToInt32(Session["EMP_ID"])))
            {
                RepeaterNotas.DataSource = Datos.GetNotas();
                RepeaterNotas.DataBind();
                txtnotas.Text = "";
            }
            else
            {

            }
        }
        
    }
}