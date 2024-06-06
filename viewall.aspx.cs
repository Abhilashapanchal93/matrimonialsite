using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;

public partial class viewall : System.Web.UI.Page
{
    //SqlConnection con = new SqlConnection("Data Source=DESKTOP-FV1K5OO;Initial Catalog = abc; Integrated Security = True");

    SqlConnection con = new SqlConnection("Data Source=DESKTOP-FV1K5OO;Initial Catalog = matrimony; Integrated Security = True");
    SqlCommand com;
    public string Female ,Male;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Request.QueryString["id"];
        Label2.Text = Request.QueryString["g"];

       try
        {
            if (Label2.Text == "Female")
            {
                com = new SqlCommand("Select * from [user] where gender='Male' ", con);

                //com.Connection.Open();
               
            }

            if (Label2.Text == "Male")
            {
                com = new SqlCommand("Select * from [user] where gender='Female' ", con);

              
                
            }

            com.Connection.Open();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(com);
            da.Fill(dt);
           
            DataList1.DataSource = dt;
            DataList1.DataBind();
           
            com.Connection.Close();
            com.Connection.Dispose();
            // con.Close();

        }
        catch (Exception ex)
        {
            Label3.Visible = true;
            Label3.Text = " error occour bcoz of"+ex.Message;
        }
    }




    protected void LinkButton1_Click(object sender, EventArgs e)
    {
       
        Response.Redirect("~/view.aspx?id=" + ((LinkButton)sender).Text + "&idl=" + Label1.Text + "&g=" + Label2.Text);
        

    }

    protected void gvwExample_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        Response.Redirect("~/info.aspx?id=" + Label1.Text);
       
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/matches.aspx?id="+ Label1.Text + "&g=" + Label2.Text);

    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/search.aspx?id=" + Label1.Text + "&g=" + Label2.Text);
    }
}
    