using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Services;
using System.Web.Configuration;
using System.Configuration;

public partial class other_services : System.Web.UI.Page
{
    SqlConnection SQLConn = new SqlConnection("Data Source=DESKTOP-FV1K5OO;Initial Catalog = matrimony; Integrated Security = True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ChangePassword1_ChangedPassword(object sender, EventArgs e)
    {
        lblmsg.Text = "";
       // SqlConnection SQLConn = new SqlConnection("Data Source=SEHAL-PC\\SQLEXPRESS; Initial Catalog=matrimony; Integrated Security=True");
        SqlDataAdapter SQLAdapter = new SqlDataAdapter("select Count(*) from infor where Password='" + txtcurrentpass.Text + "'", SQLConn);
        DataTable DT = new DataTable();
        SQLAdapter.Fill(DT);

        if (DT.Rows.Count == 0)
        {
            lblmsg.Text = "Invalid current password";
            lblmsg.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            SQLAdapter = new SqlDataAdapter("update infor  set Password='" + txtnewpass.Text + "' where FullName='" + txtUserName.Text + "'", SQLConn);
            SQLAdapter.Fill(DT);


            lblmsg.Text = "Password changed successfully";
            lblmsg.ForeColor = System.Drawing.Color.Green;
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {

        Session.Abandon();
        Session.Clear();
        Response.Redirect("Home.aspx");
    }
}