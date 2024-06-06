using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
using System.Data;



public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Request.QueryString["id"];
        Label2.Text = Request.QueryString["g"];

    }
    
    protected void gvwExample_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
   
   
    protected void Button4_Click(object sender, EventArgs e)
    {
        string data = TextBox1.Text;



        SqlCommand cmd = new SqlCommand("SELECT * FROM [user] where id=@id ", new SqlConnection("Data Source=DESKTOP-FV1K5OO; Initial Catalog=matrimony; Integrated Security=True"));


        cmd.Connection.Open();
        cmd.Parameters.Add("id", data);

        GridView1.DataSource = cmd.ExecuteReader();

        GridView1.DataBind();

        cmd.Connection.Close();
        cmd.Connection.Dispose();
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        Response.Redirect("~/viewbyid.aspx?id=" + ((LinkButton)sender).Text + "&idl=" + Label1.Text + "&g=" + Label2.Text);


    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/viewall.aspx?id=" + Label1.Text + "&g=" + Label2.Text);

    }
}
