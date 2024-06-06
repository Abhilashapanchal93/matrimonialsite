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

public partial class Change_password : System.Web.UI.Page
{
    SqlConnection SQLConn = new SqlConnection("Data Source=DESKTOP-FV1K5OO;Initial Catalog = matrimony; Integrated Security = True");

    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Request.QueryString["id"];

        SQLConn.Open();
        SqlCommand com = new SqlCommand("select email from [user] where id='" + Label1.Text.Trim() + "'", SQLConn);

        SqlDataReader dr1 = com.ExecuteReader();

        if (dr1.HasRows)
        {
            dr1.Read();

            txtUserName.Text = dr1["email"].ToString();

            SQLConn.Close();
            dr1.Dispose();
        }
        }
    protected void ChangePassword1_ChangedPassword(object sender, EventArgs e)
    {
       
        lblmsg.Text = "";
        //SqlConnection SQLConn = new SqlConnection("Data Source=SEHAL-PC\\SQLEXPRESS; Initial Catalog=matrimony; Integrated Security=True");
        SqlDataAdapter SQLAdapter = new SqlDataAdapter("select Count(*) from [user] where pwd='" + txtcurrentpass.Text + "'", SQLConn);
        DataTable DT = new DataTable();
        SQLAdapter.Fill(DT);

        if (DT.Rows.Count == 0)
        {
            lblmsg.Text = "Invalid current password";
            lblmsg.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            SQLAdapter = new SqlDataAdapter("update [user] set pwd='" + txtnewpass.Text + "' where email ='" + txtUserName.Text + "'", SQLConn);

            SQLAdapter.Fill(DT);
           
          
            lblmsg.Text = "Password changed successfully";
            lblmsg.ForeColor = System.Drawing.Color.Green;
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("Home.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/info.aspx?id=" + Label1.Text);
    }
}