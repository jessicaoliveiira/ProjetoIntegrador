using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            try
            {
                SqlDataSource1.Insert();
                lblMensag.Text = "Produto cadastrado com Sucesso";


            }
            catch (Exception ex)
            {

                lblMensag.Text = ex.Message;
            }
        }
    }
}