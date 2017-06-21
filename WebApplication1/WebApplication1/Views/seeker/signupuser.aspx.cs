using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Models;

namespace WebApplication1.Views
{
    public partial class signupuser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtname.Text.Length==0 && txtconfirmpassword.Text.Length==0)
            {
                Returnclass rc = new Returnclass();
               string dbpassword= rc.scalarReturn("select login_password from login_user where login_email='" + txtemail.Text + "'");
               if (dbpassword==txtpassword.Text)
               {
                   

               }
               else
               {
                   Label1.Text = "Email ID doesnot Exist!";

               }



            }

            else
            {

                Seeker s = new Seeker();
                s.email = txtemail.Text;
                s.passwrod = txtpassword.Text;
                s.name = txtname.Text;
                insert_seeker ins = new insert_seeker();
                Session["id"] = ins.loginmethod(s);
                Response.Redirect("~/Views/seeker/seekerpersonal.aspx");

            }
        }
    }
}