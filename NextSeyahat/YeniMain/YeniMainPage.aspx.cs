using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NextSeyahat
{
    public partial class YeniMainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Server.Transfer("~/YeniMain/index.html");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}