using System;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Web;

namespace WahlgrenFinalIS432.Pages
{
    public partial class MyLibrary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string bookId = GetBookIdFromURL();
            lblBookId.Text = bookId;
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/Dashboard.aspx");
        }

        protected void btnReadBook_Click(object sender, EventArgs e)
        {
            string bookPdf = null;

            using (SqlConnection con = new SqlConnection(SqlDataSource1.ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("getBookPdfUrlFromId", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@BookId", SqlDbType.NVarChar).Value = lblBookId.Text;

                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        bookPdf = reader["PdfUrl"].ToString();
                    }

                    reader.Close();
                }
            }
            if (bookPdf != null)
            {
                Response.Redirect("~/Images/" + bookPdf);
            }
        }


        private string GetBookIdFromURL()
        {
            string url = HttpContext.Current.Request.Url.AbsoluteUri;
            string bookId = url.Substring(url.IndexOf('=') + 1);

            return bookId;
        }
    }
}