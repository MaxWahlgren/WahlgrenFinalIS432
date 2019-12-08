using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WahlgrenFinalIS432.Pages
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/Login.aspx");
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text == null)
            {
                lblErrorMsg.Text = "Username field required to register";
            }
            else if (txtEmail.Text == null)
            {
                lblErrorMsg.Text = "Email field required to register";
            }
            else if (txtPassword.Text == null)
            {
                lblErrorMsg.Text = "Password field required to register";
            }
            else if (txtConfirmPassword.Text == null)
            {
                lblErrorMsg.Text = "Confirm password field required to register";
            }
            else if (txtPassword.Text != txtConfirmPassword.Text)
            {
                lblErrorMsg.Text = "Passwords do not match";
            }
            else
            {
                var userStore = new UserStore<IdentityUser>();
                var manager = new UserManager<IdentityUser>(userStore);
                var user = new IdentityUser()
                {
                    UserName = txtUsername.Text,
                    Email = txtEmail.Text
                };

                IdentityResult result = manager.Create(user, txtPassword.Text);

                if (result.Succeeded)
                {
                    var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                    var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
                    authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);
                    Response.Redirect("~/Pages/Dashboard.aspx");
                }
                else
                {
                    lblErrorMsg.Text = result.Errors.FirstOrDefault();
                }
            }
        }
    }
}