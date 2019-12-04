using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Application.Lock();
        TextBox2.Text = Application["Msg"].ToString();
        Application.UnLock();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Application.Lock();
        String msg = Application["Msg"].ToString() + "Person 2 : " + TextBox1.Text + "\n"; Application["Msg"] = msg;
        Application.UnLock(); Response.Redirect("Application.aspx");
    }
}
