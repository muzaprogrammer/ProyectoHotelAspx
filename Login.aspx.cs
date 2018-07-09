using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnOk_Click(object sender, EventArgs e)
    {
        if (Datos.loger(txtUsuario.Text, txtPass.Text))
        {
            DataSet ds = new DataSet();
            ds = Datos.LeerUsuarios(txtUsuario.Text);
            int rol, iduser;
            
            rol = Convert.ToInt32(ds.Tables[0].Rows[0]["EMP_ACCESO"].ToString());
            iduser = Convert.ToInt32(ds.Tables[0].Rows[0]["EMP_ID"].ToString());            
            if (rol == 4)
            {
                lblMsj.Text = "Usuario Inactivo!!!";
            }
            else
            {
                Session["USER"] = txtUsuario.Text;
                Session["EMP_ACCESO"] = rol.ToString();
                Session["EMP_ID"] = iduser.ToString();                
                switch (rol)
                {
                    case 1:
                        Response.Redirect("administrador/Index.aspx");
                        break;
                    case 2:
                        Response.Redirect("recepcionista/Index.aspx");
                        break;
                    case 3:
                        Response.Redirect("recamarera/Index.aspx");
                        break;
                    default:
                        Response.Redirect("Login.aspx");
                        break;
                }
            }
        }
        else
        {
            lblMsj.Text = "Usuario No Valido!!!";
        }
    }
}