using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { 

        }

        public string retornarImagemProduto(object idProduto)
        {
            string strRetorno = string.Format("<img src='http://eclair.sistemasparainter.net/imagens/{0}.jpg' width='100'/>", idProduto.ToString());
            return strRetorno;
        }
        public string retornarDesc(object descProduto)
        {
            string strRetorno = descProduto.ToString();

            if (descProduto.ToString().Length > 100)
            {
                strRetorno = descProduto.ToString().Substring(0, 100);
            }
            return strRetorno + "...";

        }
    }
}