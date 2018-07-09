using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPageRecep : System.Web.UI.MasterPage
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

        }
    }
}
