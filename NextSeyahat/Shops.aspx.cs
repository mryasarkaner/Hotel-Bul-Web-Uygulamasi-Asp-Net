using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NextSeyahat
{
    public partial class Shops : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void ddlSortBy_SelectedIndexChanged(object sender, EventArgs e)
        {
            // DropDownList seçilen öğesinin değerini ViewState'e kaydet
            ViewState["SortBy"] = ddlSortBy.SelectedValue;
        }

        protected void btnSort_Click(object sender, EventArgs e)
        {
            string sortBy = ddlSortBy.SelectedValue;
            string query = "SELECT * FROM [tblTurPaket] ORDER BY Fiyat " + sortBy;
            SqlDataSource1.SelectCommand = query;
            Repeater1.DataBind();
        }


    }
}