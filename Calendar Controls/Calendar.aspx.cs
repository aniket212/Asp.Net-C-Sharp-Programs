using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Calendar : System.Web.UI.Page
{
    DateTime d;
    protected void Page_Load(object sender, EventArgs e)

    {
        Label2.Visible = false; submit.Visible = false; TextBox1.Visible = false;
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        d = Calendar1.SelectedDate;
    }
    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.Date == d)
        {
            Label l = new Label(); l.Text = TextBox1.Text; l.Visible = true; e.Cell.Controls.Add(l);
        }
        Response.Write(Calendar1.SelectedDate.ToShortDateString());
        Response.Write(e.Day.IsOtherMonth);
        Response.Write(e.Day.IsWeekend);
        Response.Write(e.Day.IsSelectable);
        Response.Write(Calendar1.SelectedDate.ToLongDateString());
  

    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedItem.Value == "Yes")
        {
            Label2.Visible = true; submit.Visible = true; TextBox1.Visible = true;
        }
        else
        {
            Response.Write("Please Select Date To Set A Reminder");
        }
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        RadioButtonList1.ClearSelection();
    }

}