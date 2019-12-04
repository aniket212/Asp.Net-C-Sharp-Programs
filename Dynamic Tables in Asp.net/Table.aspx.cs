using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Table : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int ro = Convert.ToInt32(r.SelectedValue.ToString()); int co = Convert.ToInt32(c.SelectedValue.ToString()); int li = Convert.ToInt32(gridli.SelectedIndex);
        Table t = new Table();
        for (int i = 1; i <= ro; i++)
        {
            TableRow tr = new TableRow(); for (int j = 1; j <= co; j++)
            {
                TableCell tc = new TableCell(); tc.Text = i + ":" + j; tr.Cells.Add(tc);
            }
            t.Rows.Add(tr);
        }
        if (gridli.SelectedIndex == 1)
        {
            t.GridLines = GridLines.Horizontal;
        }
        else if (gridli.SelectedIndex == 2)
        {
            t.GridLines = GridLines.Vertical;
        }
        else
        {
            t.GridLines = GridLines.Both;
        }
        PlaceHolder1.Controls.Add(t);
    }

    protected void r_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}