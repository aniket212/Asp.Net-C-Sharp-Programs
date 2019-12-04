using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class login : System.Web.UI.Page

{

    protected void Page_Load(object sender, EventArgs e)
    {

         if(IsPostBack)
        {
            /*SqlConnection conn = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = |DataDirectory|\\myDatabase.mdf; Integrated Security = True");
            conn.Open();
            string checkuser = "select count(*) from [Table] where username = '"+uname+"'";
            
            conn.Close(); */
            TextBox5.Text = "0";

            string uname = TextBox1.Text;
            string password = TextBox2.Text;
            string email = TextBox4.Text;

            int age = int.Parse(TextBox5.Text);

            SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\myDatabase.mdf; Integrated Security=True");
            conn.Open();
            string query1 = "insert into [Table] (username,password,email,age) values (@uname1,@pass,@mail,@age1)";

            SqlCommand cmd = new SqlCommand(query1, conn);
            cmd.Parameters.AddWithValue("@uname1", uname);
            cmd.Parameters.AddWithValue("@pass", password);
            cmd.Parameters.AddWithValue("@mail", email);
            cmd.Parameters.AddWithValue("@age1", age);
            cmd.ExecuteNonQuery();


            conn.Close();


        }
    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Response.Write(TextBox5.Text);


       

    }

    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}