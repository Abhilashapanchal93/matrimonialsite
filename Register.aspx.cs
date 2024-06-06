using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Services;
using System.Configuration;

public partial class Register : System.Web.UI.Page
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
        try
        {

            SqlDataSource1.InsertParameters["name"].DefaultValue = TextBox1.Text;
            SqlDataSource1.InsertParameters["email"].DefaultValue = TextBox3.Text;
            SqlDataSource1.InsertParameters["pwd"].DefaultValue = TextBox2.Text;

            SqlDataSource1.InsertParameters["gender"].DefaultValue = DropDownList1.SelectedValue.ToString();

            SqlDataSource1.Insert();

            SqlDataSource2.InsertParameters["name"].DefaultValue = TextBox1.Text;
            SqlDataSource2.InsertParameters["email"].DefaultValue = TextBox3.Text;
           
            SqlDataSource2.Insert();

            //SqlConnection con = new SqlConnection();
            //con.Open();
            //SqlCommand cmd = new SqlCommand();
            //cmd.CommandText = "insert into [user] values(@name,@email,@pwd,@gender)";
            //cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            //cmd.Parameters.AddWithValue("@email", TextBox3.Text);
            //cmd.Parameters.AddWithValue("@pwd", TextBox2.Text);
            //cmd.Parameters.AddWithValue("@gender", DropDownList1.SelectedValue.ToString());
            //cmd.Connection = con;
            //cmd.ExecuteNonQuery();
            //cmd.Parameters.Clear();
            //cmd.CommandText = "insert into [feedbk] values(@name,@email)";
            //cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            //cmd.Parameters.AddWithValue("@email", TextBox3.Text);
            //cmd.ExecuteNonQuery();

            //con.Close();

            Response.Write("<script>alert('Registration succesful')</script>");
           
        }
        catch (Exception ex)
        {
            Response.Output.Write(ex);
        }
        
        //Response.Redirect("login.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            con.ConnectionString = @"Data Source=DESKTOP-FV1K5OO;Initial Catalog = matrimony; Integrated Security = True";
            con.Open();
            string query = "select * from [user] where email=@uname and name=@name";
            SqlCommand cmd = new SqlCommand(query,con);
            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@uname", TextBox3.Text);
            cmd.Connection = con;
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.HasRows)
            {
                Label2.Visible = true;
                Label2.Text = "Email already exist";
                Label2.ForeColor = System.Drawing.Color.Red;
            }
            else
            
            {
                Label2.Visible = true;
                Label2.Text = "Email id is valid";
                Label2.ForeColor = System.Drawing.Color.Green;
            }
        }
        catch (Exception ex)
        {
            Response.Output.Write(ex);
        }

    }
}