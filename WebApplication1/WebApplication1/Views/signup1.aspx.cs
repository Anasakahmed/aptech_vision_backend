using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Views
{
    public partial class signup1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sel1_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (int.Parse(sel1.SelectedValue) == 0)
            {
                Response.Redirect("~/Views/seeker/signupuser.aspx");
            }
            else
            {
                Response.Redirect("~/Views/employeer/signupemployeer.aspx");

            }
        }

      
    }
}