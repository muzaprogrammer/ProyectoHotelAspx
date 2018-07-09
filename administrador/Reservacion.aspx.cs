using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class administrador_Reservacion : System.Web.UI.Page
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

    protected void RptCourse_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
    public void llenarclientes()
    {
        DropDownList2.DataSource = (Datos.ListarClientes());
        DropDownList2.DataTextField = "NOMBRE";
        DropDownList2.DataValueField = "CLI_ID";
        DropDownList2.DataBind();
    }

    DateTime fechaHoy = DateTime.Now;
    //listahabitacionesdisponibles
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        DataSet ds = new DataSet();
        ds = Datos.Preciohab(Convert.ToInt32(DropDownList1.SelectedValue));
        lblnoche.Text = Convert.ToString(ds.Tables[0].Rows[0]["COSTO"].ToString());                
        TimeSpan ts;
        // Diferencia de fechas
        ts = Calendar2.SelectedDate - Calendar1.SelectedDate;

        // Diferencia de días
        int noches = ts.Days;        

        lblhab.Text = Convert.ToString(DropDownList1.SelectedItem.ToString());        
        lblfechahoy.Text = Convert.ToString(fechaHoy.Date.ToShortDateString());
        lblnoches.Text = Convert.ToString(noches);
        double total = Convert.ToDouble(ds.Tables[0].Rows[0]["COSTO"].ToString()) * Convert.ToDouble(noches);
        lbltotal.Text = Convert.ToString(total);
        llenarclientes();

    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblcliente.Text = Convert.ToString(DropDownList2.SelectedItem.ToString());
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        DropDownList1.DataSource = (Datos.ListarHabitaciones(Calendar1.SelectedDate, Calendar2.SelectedDate));
        DropDownList1.DataTextField = "NOMBRE";
        DropDownList1.DataValueField = "HAB_ID";
        DropDownList1.DataBind();
        lblinicio.Text = Convert.ToString(Calendar1.SelectedDate.ToShortDateString());
    }

    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        DropDownList1.DataSource = (Datos.ListarHabitaciones(Calendar1.SelectedDate, Calendar2.SelectedDate));
        DropDownList1.DataTextField = "NOMBRE";
        DropDownList1.DataValueField = "HAB_ID";
        DropDownList1.DataBind();
        lblfin.Text = Convert.ToString(Calendar2.SelectedDate.ToShortDateString());
    }


    protected void linkguardar_Click(object sender, EventArgs e)
    {
        if(string.IsNullOrEmpty(lblinicio.Text) & string.IsNullOrEmpty(lblfin.Text) & string.IsNullOrEmpty(lblhab.Text) & string.IsNullOrEmpty(lblcliente.Text))
        {
            lblEstado.Text = "Seleccion fecha de inicio y fin y selecciones habitacion y empleado";
        }
        else
        {
            if(Convert.ToInt32(lblnoches.Text)<=0)
            {
                lblEstado.Text = "Las fechas de checkin y checkout estan incorrectas";
            }
            else
            {
                if (Datos.InsertReserva(Convert.ToInt32(DropDownList1.SelectedValue), Convert.ToInt32(DropDownList2.SelectedValue), Convert.ToInt32(Session["EMP_ID"]), fechaHoy, Calendar1.SelectedDate, Calendar2.SelectedDate, Convert.ToInt32(lblnoches.Text), Convert.ToDouble(lbltotal.Text), txtobservaciones.Text, 2))
                {
                    Response.Redirect("Index.aspx");
                }
                else
                {
                    lblEstado.Text = "Algo anda mal no se guardo el registro...";
                    lblEstado.ForeColor = System.Drawing.Color.DarkRed;
                }
            }
            
        }
    }
}