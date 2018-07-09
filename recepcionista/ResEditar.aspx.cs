using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class administrador_ResEditar : System.Web.UI.Page
{
    SqlConnection cnn = new SqlConnection(Datos.cadena);
    SqlDataReader dr = null;
    SqlCommand cmd = null;
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
    public void llenarreservas()
    {
        ddldatosreserva.DataSource = (Datos.ListarReservas());
        ddldatosreserva.DataTextField = "NOMBRE";
        ddldatosreserva.DataValueField = "RES_ID";
        ddldatosreserva.DataBind();
    }

    protected void ddldatosreserva_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        cmd = new SqlCommand("SELECT * FROM RESERVA INNER JOIN CLIENTES ON RESERVA.CLI_ID= CLIENTES.CLI_ID INNER JOIN HABITACIONES ON RESERVA.HAB_ID=HABITACIONES.HAB_ID WHERE RES_ID = '" + ddldatosreserva.SelectedValue + "'", cnn);
        cnn.Open();
        try
        {
            dr = cmd.ExecuteReader();
            if(dr.Read() == true)
            {                
                Calendar1.SelectedDate = Convert.ToDateTime(dr["CHECKIN"].ToString());
                Calendar2.SelectedDate = Convert.ToDateTime(dr["CHECKOUT"].ToString());
                lblfin.Text = Convert.ToString(Calendar2.SelectedDate.ToShortDateString());
                lblinicio.Text = Convert.ToString(Calendar1.SelectedDate.ToShortDateString());
                lblfui2.Text = Convert.ToString(Calendar2.SelectedDate.ToShortDateString());
                lblinicio2.Text = Convert.ToString(Calendar1.SelectedDate.ToShortDateString());
                lblcliente.Text = dr["CLI_NOMBRES"].ToString();
                lblcliente2.Text = dr["CLI_APELLIDOS"].ToString();
                lblcliente3.Text = dr["CLI_NOMBRES"].ToString();
                lblcliente4.Text = dr["CLI_APELLIDOS"].ToString();
                lblhab.Text = dr["HAB_NUM"].ToString();
                lblnoches.Text = dr["N_NOCHES"].ToString();
                lblhab2.Text = dr["HAB_NUM"].ToString();
                lblnoches2.Text = dr["N_NOCHES"].ToString();
                calculos(Convert.ToInt32(dr["HAB_ID"].ToString()));
                DropDownList2.SelectedValue = dr["HAB_ID"].ToString();
                txtobservaciones.Text = dr["OBSERVACIONES"].ToString();                
            }
            
        }
        catch
        {

        }   
        finally
        {
            cnn.Close();
        }
    }
    DateTime fechaHoy = DateTime.Now;
    protected void calculos(int hab)
    {
        DataSet ds = new DataSet();
        ds = Datos.Preciohab(hab);
        lblnoche.Text = Convert.ToString(ds.Tables[0].Rows[0]["COSTO"].ToString());
        lblnoche2.Text = Convert.ToString(ds.Tables[0].Rows[0]["COSTO"].ToString());
        TimeSpan ts;
        // Diferencia de fechas
        ts = Calendar2.SelectedDate - Calendar1.SelectedDate;
        lblfechahoy.Text = Convert.ToString(fechaHoy.Date.ToShortDateString());
        lblfechares2.Text = Convert.ToString(fechaHoy.Date.ToShortDateString());
        double total = Convert.ToDouble(ds.Tables[0].Rows[0]["COSTO"].ToString()) * Convert.ToDouble(lblnoches.Text);
        lbltotal.Text = Convert.ToString(total);
        lbltotal2.Text = Convert.ToString(total);
        DropDownList2.DataSource = (Datos.ListarHabitaciones2(Calendar1.SelectedDate, Calendar2.SelectedDate, hab));
        DropDownList2.DataTextField = "NOMBRE";
        DropDownList2.DataValueField = "HAB_ID";
        DropDownList2.DataBind();
        DropDownList2.Enabled = false;
    }
    protected void calculos2(int hab)
    {
        DataSet ds = new DataSet();
        ds = Datos.Preciohab(hab);
        lblnoche2.Text = Convert.ToString(ds.Tables[0].Rows[0]["COSTO"].ToString());
        TimeSpan ts;
        // Diferencia de fechas
        ts = Calendar2.SelectedDate - Calendar1.SelectedDate;

        // Diferencia de días
        int noches = ts.Days;
        lblhab2.Text=(ds.Tables[0].Rows[0]["HAB_NUM"].ToString());
        lblnoches2.Text = Convert.ToString(noches);
        ts = Calendar2.SelectedDate - Calendar1.SelectedDate;
        lblfechares2.Text = Convert.ToString(fechaHoy.Date.ToShortDateString());
        double total = Convert.ToDouble(ds.Tables[0].Rows[0]["COSTO"].ToString()) * Convert.ToDouble(noches);
        lbltotal2.Text = Convert.ToString(total);
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        llenarreservas();
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        
        lblinicio2.Text = Convert.ToString(Calendar1.SelectedDate.ToShortDateString());
        if(string.IsNullOrEmpty(lblinicio.Text))
        {

        }
        else
        {
            if (Calendar1.SelectedDate < Convert.ToDateTime(lblinicio.Text) || Calendar1.SelectedDate >= Convert.ToDateTime(lblfin.Text))
            {
                lblestado2.Text = "No puede seleccionar una fecha de entrada menor a la anterior o mayor o igual a la de salida ";
            }
            else
            {
                lblestado2.Text = "";
                if (string.IsNullOrEmpty(DropDownList2.SelectedValue))
                {
                    lblestado2.Text = "";
                }
                else
                {
                    lblestado2.Text = "";
                    calculos2(Convert.ToInt32(DropDownList2.SelectedValue));
                }
            }
        }
        
    }

    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {        
        lblfui2.Text = Convert.ToString(Calendar2.SelectedDate.ToShortDateString());
        if (string.IsNullOrEmpty(lblinicio.Text))
        {

        }
        else
        {
            if (Calendar2.SelectedDate > Convert.ToDateTime(lblfin.Text))
            {
                lblestado3.Text = "No puede seleccionar una fecha de salida mayor a la anterior solo una menor";
            }
            else
            {
                lblestado3.Text = "";
                if (string.IsNullOrEmpty(DropDownList2.SelectedValue))
                {
                    lblestado3.Text = "";
                }
                else
                {
                    lblestado3.Text = "";
                    calculos2(Convert.ToInt32(DropDownList2.SelectedValue));
                }
            }
        }
    }

    

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        DropDownList2.Enabled = true;
        DropDownList2.DataSource = (Datos.ListarHabitaciones(Calendar1.SelectedDate, Calendar2.SelectedDate));
        DropDownList2.DataTextField = "NOMBRE";
        DropDownList2.DataValueField = "HAB_ID";
        DropDownList2.DataBind();
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        calculos2(Convert.ToInt32(DropDownList2.SelectedValue));
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        calculos2(Convert.ToInt32(DropDownList2.SelectedValue));
    }

    protected void linkguardar_Click(object sender, EventArgs e)
    {
        if (Datos.EditarReserva(Convert.ToInt32(DropDownList2.SelectedValue), Calendar1.SelectedDate, Calendar2.SelectedDate, Convert.ToInt32(lblnoches2.Text), Convert.ToDouble(lbltotal2.Text), txtobservaciones.Text,Convert.ToInt32(ddldatosreserva.SelectedValue)))
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