using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Session : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string uname = TextBox1.Text;
         string pass = TextBox2.Text;
        /*
         if (pass.Equals("abc123"))
         {
             Session["uname"] = uname;
             Response.Redirect("profile.aspx");
         } */
        
        if(pass.Equals("abc"))
        {
            HttpCookie ck = new HttpCookie("uname", uname);
            Response.Cookies.Add(ck);
            Response.Redirect("profile.aspx");
        }

    }
}