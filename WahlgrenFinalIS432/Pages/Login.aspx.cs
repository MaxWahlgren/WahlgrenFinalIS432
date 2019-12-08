using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using System;
using System.Web;

namespace WahlgrenFinalIS432.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtUsername.Text))
            {
                lblErrorMsg.Text = "Do you need to register?";
            }
            else if (string.IsNullOrEmpty(txtPassword.Text))
            {
                lblErrorMsg.Text = "Password is required to login";
            }
            else
            {
                var userStore = new UserStore<IdentityUser>();
                var userManager = new UserManager<IdentityUser>(userStore);
                var user = userManager.Find(txtUsername.Text, txtPassword.Text);

                if (user != null)
                {
                    var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                    var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                    authenticationManager.SignIn(new AuthenticationProperties() { IsPersistent = false }, userIdentity);
                    Response.Redirect("~/Pages/Dashboard.aspx");
                }
                else
                {
                    lblErrorMsg.Text = "Invalid username or password.";
                }
            }
        }
    }
}