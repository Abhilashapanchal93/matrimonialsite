using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class updateinfo : System.Web.UI.Page
{
   SqlConnection con = new SqlConnection("Data Source=DESKTOP-FV1K5OO;Initial Catalog = matrimony; Integrated Security = True");
    SqlCommand com;

    protected void Page_Load(object sender, EventArgs e)
    {

        Label2.Text = Request.QueryString["id"];

        // Add any controls that have been previously added dynamically
        for (int i = 0; i < TotalNumberAdded; ++i)
        {
            AddControls(i + 1);
        }

        // Attach the event handler to the button
        Button2.Click += new EventHandler(Button2_Click);
        if (!IsPostBack)
        {
            Label2.Text = Request.QueryString["id"].ToString();


            //SqlConnection con = new SqlConnection("Data Source = SEHAL-PC\\SQLEXPRESS; Initial Catalog = matrimony; Integrated Security = True");
            con.Open();
            SqlCommand com = new SqlCommand("select name,email,gender,pwd,age,religion,tougue,weight,status,located,interested,bloodGrp,complexion,education,annual,mobile,img from [user] where id='" + Label2.Text.Trim() + "'", con);

            SqlDataReader dr1 = com.ExecuteReader();

            if (dr1.HasRows)
            {
                dr1.Read();

                TextBox1.Text = dr1["name"].ToString();
                TextBox3.Text = dr1["email"].ToString();
                TextBox4.Text = dr1["Pwd"].ToString();
                cmbboxgender.SelectedValue = dr1["gender"].ToString();
                cmbboxage.SelectedValue = dr1["age"].ToString();
                cmbboxreligion.SelectedValue = dr1["religion"].ToString();
                cmbboxmothertongue.SelectedValue = dr1["tougue"].ToString(); 
                cmbboxweight.SelectedValue = dr1["weight"].ToString();
                cmbboxstatus.SelectedValue = dr1["status"].ToString();
                cmbboxlocated.SelectedValue = dr1["located"].ToString();
                cmbboxinterested.SelectedValue = dr1["interested"].ToString();
                cmbboxbloodgrp.SelectedValue = dr1["bloodgrp"].ToString();
                cmbboxcomplexion.SelectedValue = dr1["complexion"].ToString();
                cmbboxedufield.SelectedValue = dr1["education"].ToString();
                cmbboxannualincome.SelectedValue = dr1["annual"].ToString();
                TextBox2.Text = dr1["mobile"].ToString();

                con.Close();
                dr1.Dispose();

            }
            con.Close();
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


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/info.aspx?id=" + Label2.Text);
    
    }

    public static string filename;
    public string id { get; set; }
    protected void Button2_Click(object sender, EventArgs e)
    {

        // SqlConnection con = new SqlConnection("Data Source=DESKTOP-FV1K5OO;Initial Catalog = matrimony; Integrated Security = True");
        try
        {
            con.Open();
            string query = "Update [user] set age=@age,religion=@religion,tougue=@tougue,weight=@weight,status=@status,located=@located,interested=@interested,bloodgrp=@bloodgrp,complexion=@complexion,education=@education,annual=@annual,mobile=@mobile where id='" + Label2.Text.Trim() + "'";
            com = new SqlCommand(query, con);
           
            // com.Parameters.AddWithValue("name", TextBox1.Text); [name]=@name,[email]=@email,[pwd]=@pwd,[gender]=@gender,
            // com.Parameters.AddWithValue("email", TextBox3.Text);
            // com.Parameters.AddWithValue("pwd", TextBox4.Text);
            //  com.Parameters.AddWithValue("gender", cmbboxgender.SelectedItem.Value.ToString());
            com.Parameters.AddWithValue("age", cmbboxage.SelectedItem.Value.ToString());
            com.Parameters.AddWithValue("religion", cmbboxreligion.SelectedItem.Value.ToString());
            com.Parameters.AddWithValue("tougue", cmbboxmothertongue.SelectedItem.Value.ToString());
            com.Parameters.AddWithValue("weight", cmbboxweight.SelectedItem.Value.ToString());
            com.Parameters.AddWithValue("status", cmbboxstatus.SelectedItem.Value.ToString());
            com.Parameters.AddWithValue("located", cmbboxlocated.SelectedItem.Value.ToString());
            com.Parameters.AddWithValue("interested", cmbboxinterested.SelectedItem.Value.ToString());
            com.Parameters.AddWithValue("bloodgrp", cmbboxbloodgrp.SelectedItem.Value.ToString());
            com.Parameters.AddWithValue("complexion", cmbboxcomplexion.SelectedItem.Value.ToString());
            com.Parameters.AddWithValue("education", cmbboxedufield.SelectedItem.Value.ToString());
            com.Parameters.AddWithValue("annual", cmbboxannualincome.SelectedItem.Value.ToString());
            //cmbboxannualincome.SelectedValue.ToString());
            com.Parameters.AddWithValue("@mobile", TextBox2.Text);
            //com.Parameters.AddWithValue("id", Label2.Text);
           
            com.ExecuteNonQuery();
            com.Dispose();
            con.Close();
            Label3.Visible = true;
            Label3.Text = "update successfully !!";
            // Response.Write("<script>alert('updated Successfully');</script>");
            
        }
        catch (Exception ex)
        {
            //Label1.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;

           //Label1.Text = "Plz upload the image!!!!"+ex.Message;
            // Response.Write("<script>alert('Plz upload the image!!!!')</script>" );
        }
        // Response.Write("<script>alert('updated')</script>");
        //Response.Redirect("~/info.aspx?id=" + Label2.Text);
    }
    
}


    