using System;

namespace WahlgrenFinalIS432.Pages
{
    public partial class MyLibrary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/Dashboard.aspx");
        }

        protected void btnReadBook_Click(object sender, EventArgs e)
        {
            
        }
    }
}