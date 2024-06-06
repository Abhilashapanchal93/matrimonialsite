using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class feedback1 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-FV1K5OO;Initial Catalog = matrimony; Integrated Security = True");
    SqlCommand com;


    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Request.QueryString["id"];

        // Add any controls that have been previously added dynamically
        for (int i = 0; i < TotalNumberAdded; ++i)
        {
            AddControls(i + 1);
        }

        // Attach the event handler to the button
        btnSubmit.Click += new EventHandler(btnSubmit_Click);
        if (!IsPostBack)
        {
            Label1.Text = Request.QueryString["id"].ToString();

            //{
            //    con.Open();
            //    SqlCommand com = new SqlCommand("select name,email from [user] where id='" + Label1.Text.Trim() + "'", con);

            //    SqlDataReader dr2 = com.ExecuteReader();

            //    if (dr2.HasRows)
            //    {
            //        dr2.Read();

            //        txtname.Text = dr2["name"].ToString();
            //        txtemail.Text = dr2["email"].ToString();

            //        con.Close();
            //        dr2.Dispose();

            //    }
            //    con.Close();
            //}
            {
                con.Open();
                com = new SqlCommand("select name,email  from [fedbk] where id = '" + Label1.Text.Trim() + "'", con);

                SqlDataReader dr1 = com.ExecuteReader();


                if (dr1.HasRows)
                {
                    dr1.Read();
                    txtname.Text = dr1["name"].ToString();
                    txtemail.Text = dr1["email"].ToString();
                }
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


    protected void btnSubmit_Click(object sender, EventArgs e)
    {


       // SqlConnection con = new SqlConnection();
       // conn.ConnectionString = "Data Source=SEHAL-PC\\SQLEXPRESS; Initial Catalog=matrimony; Integrated Security=True";
        con.Open();
        string query = "update [fedbk] set rate=@rate,used=@used,lik=@lik,easy=@easy,visit=@visit,recommend=@recommend,msg=@msg where id='" + Label1.Text.Trim() + "'";
        //('" + cmbboxrate.SelectedValue + "','" + cmbboxourservice.SelectedValue + "','" + cmbboxlike.SelectedValue + "','" + cmbboxuse.SelectedValue + "','" + cmbboxvisit.SelectedValue + "','" + cmbboxothers.SelectedValue + "','" + txtcomment.Text + "')";
        com = new SqlCommand(query, con);
       // com.Parameters.AddWithValue("@name", txtname.Text);
       // com.Parameters.AddWithValue("@email", txtname.Text);
        com.Parameters.AddWithValue("rate", cmbboxrate.SelectedItem.Value.ToString());
        com.Parameters.AddWithValue("used", cmbboxourservice.SelectedItem.Value.ToString());
        com.Parameters.AddWithValue("lik", cmbboxlike.SelectedItem.Value.ToString());
        com.Parameters.AddWithValue("easy", cmbboxuse.SelectedItem.Value.ToString());
        com.Parameters.AddWithValue("visit", cmbboxvisit.SelectedItem.Value.ToString());
        com.Parameters.AddWithValue("recommend", cmbboxothers.SelectedItem.Value.ToString());
        com.Parameters.AddWithValue("msg", txtcomment.Text);
       // com.Parameters.AddWithValue("id", Label1.Text);

        com.ExecuteNonQuery();
        com.Dispose();
     
        // SqlDataReader drr = new SqlDataReader();
        //drr.Read();

        con.Close();

        Response.Redirect("~/info.aspx?id=" + Label1.Text);

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/info.aspx?id=" + Label1.Text);
    }
}