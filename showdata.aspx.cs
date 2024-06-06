using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class other_services : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-FV1K5OO;Initial Catalog = matrimony; Integrated Security = True");
    SqlCommand com;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        com = con.CreateCommand();
        com.CommandType = CommandType.Text;
        com.CommandText = "select * from [user]";
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(com);
        da.Fill(dt);
        DataList1.DataSource = dt;
        DataList1.DataBind();
        con.Close();


    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {



        Response.Redirect("~/viewbyid.aspx?id=" + ((LinkButton)sender).Text);



    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        
        Response.Redirect("~/viewbyid.aspx?id=" + ((LinkButton)sender).Text);



    }




    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("~/viewbyid.aspx?id=" + ((LinkButton)sender).Text );

    }
}