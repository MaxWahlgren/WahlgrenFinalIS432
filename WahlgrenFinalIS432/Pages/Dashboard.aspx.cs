using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WahlgrenFinalIS432.Pages
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (User.Identity.IsAuthenticated)
                {
                    LoadMostRecentBooks();
                }
                else
                {
                    Response.Redirect("~/Pages/Login.aspx");
                }
            }
        }

        protected void btnFind_Click(object sender, EventArgs e)
        {
            if (txtSearch.Text == "")
            {
                LoadMostRecentBooks();
            }
            else
            {
                Repeater1.DataSource = SqlDataSource2;
                Repeater1.DataBind();
            }
        }

        protected void LoadMostRecentBooks()
        {
            Repeater1.DataSource = SqlDataSource1;
            Repeater1.DataBind();
        }
    }
}