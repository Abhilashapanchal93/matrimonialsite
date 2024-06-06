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

public partial class login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-FV1K5OO;Initial Catalog = matrimony; Integrated Security = True");

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            setimageUrl();
        }
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        setimageUrl();
    }

    private void setimageUrl()
    {
        Random r = new Random();
        int i = r.Next(1, 9);
        Image1.ImageUrl = "~/img/" + i.ToString() + ".jpg";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        string commandString = "Select id from [user] where email=@email and pwd=@pass";
        SqlCommand sqlCmd = new SqlCommand(commandString, con);
        sqlCmd.Parameters.AddWithValue("@email", TextBox1.Text);
        sqlCmd.Parameters.AddWithValue("@pass", TextBox2.Text);
        sqlCmd.Parameters.AddWithValue("@id", Label1.Text);
        SqlDataReader dr5 = sqlCmd.ExecuteReader();
        if (dr5.HasRows)
        {
            dr5.Read();
            Label1.Text = dr5["id"].ToString();
            Session["Email_id"]= TextBox1.Text;
            Response.Redirect("~/info.aspx?id=" + Label1.Text);
        }
        else
        {
            Label2.Visible=true;
        }
        //Response.Write("<script> alert('invalid password')</script>");
        TextBox1.Text = "";
        TextBox1.Focus();
        dr5.Close();
        con.Close();
    }
}