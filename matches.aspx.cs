using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class matches : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-FV1K5OO;Initial Catalog = matrimony; Integrated Security = True");

    SqlCommand com;

    protected void Page_Load(object sender, EventArgs e)
    {
       

        // Add any controls that have been previously added dynamically
        for (int i = 0; i < TotalNumberAdded; ++i)
        {
            AddControls(i + 1);
        }

        // Attach the event handler to the button
        Button2.Click += new EventHandler(Button2_Click);
        if (!IsPostBack)
        {
            Label1.Text = Request.QueryString["id"];
            Label2.Text = Request.QueryString["g"];

            con.Open();
            SqlCommand com = new SqlCommand("select * from [user] where id='" + Label1.Text.Trim() + "'", con);

            SqlDataReader dr1 = com.ExecuteReader();

            if (dr1.HasRows)
            {
                dr1.Read();
                cmbboxreligion.SelectedValue = dr1["religion"].ToString();
                cmbboxmothertongue.SelectedValue = dr1["tougue"].ToString();
                cmbboxinterested.SelectedValue = dr1["interested"].ToString();
                cmbboxedufield.SelectedValue = dr1["education"].ToString();

                con.Close();
                dr1.Dispose();

            }
            con.Close();

            

            {
                if (Label2.Text == "Female")
                {
                    com = new SqlCommand("Select * from [user] where gender='Male'  ", con);

                }

                if (Label2.Text == "Male")
                {
                    com = new SqlCommand("Select * from [user] where gender='Female'  ", con);

                }
                com.Connection.Open();
                GridView1.DataSource = com.ExecuteReader();

                GridView1.DataBind();

                com.Connection.Close();
                com.Connection.Dispose();

            }
        }
    }

    void AddControls(int controlNumber)
    {
        var newPanel = new Panel();

        var newTextbox = new TextBox();

        // textbox needs a unique id to maintain state information
        newTextbox.ID = "TextBox_" + controlNumber;
        newTextbox.CssClass = "textbox";



        // add the label and textbox to the panel, then add the panel to the form

        newPanel.Controls.Add(newTextbox);
    }
    int TotalNumberAdded
    {
        get { return (int)(ViewState["TotalNumberAdded"] ?? 0); }
        set { ViewState["TotalNumberAdded"] = value; }
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        Response.Redirect("~/viewbymatches.aspx?id=" + ((LinkButton)sender).Text + "&idl=" + Label1.Text + "&g=" + Label2.Text);


    }

    protected void gvwExample_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/viewall.aspx?id="  + Label1.Text + "&g=" + Label2.Text);


    }

    

    protected void Button2_Click(object sender, EventArgs e)
    {
       // GridView1.Visible = true;
        string data = cmbboxreligion.SelectedValue.ToString();
        string data1 = cmbboxmothertongue.SelectedValue.ToString();
        string data2 = cmbboxinterested.SelectedValue.ToString();
        string data3 = cmbboxedufield.SelectedValue.ToString();

        if (Label2.Text == "Female")
        {
            com = new SqlCommand("Select * from [user] where gender='Male' and religion=@religion and tougue=@tougue and interested=@interested and education=@education", new SqlConnection("Data Source=DESKTOP-FV1K5OO; Initial Catalog=matrimony; Integrated Security=True"));

        }


        if (Label2.Text == "Male")
        {
            com = new SqlCommand("Select * from [user] where gender='Female' and religion=@religion and tougue=@tougue and interested=@interested and education=@education ", new SqlConnection("Data Source=DESKTOP-FV1K5OO; Initial Catalog=matrimony; Integrated Security=True"));

        }
        
            com.Connection.Open();
        com.Parameters.Add("religion", data);
        com.Parameters.Add("tougue", data1);
        com.Parameters.Add("interested", data2);
        com.Parameters.Add("education", data3);

        GridView1.DataSource = com.ExecuteReader();

        GridView1.DataBind();

        com.Connection.Close();
        com.Connection.Dispose();

        }
}