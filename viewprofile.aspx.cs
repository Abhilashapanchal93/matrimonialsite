using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Configuration;

using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.IO;

public partial class view_profile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-FV1K5OO;Initial Catalog = matrimony; Integrated Security = True");
    SqlCommand com;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Text = Request.QueryString["id"];
        
            con.Open();
            //com = new SqlCommand("select name from [user] where id='" + Label3.Text.Trim() + "'", con);
            com = new SqlCommand("select * from [user]  where id = '" + Label3.Text.Trim() + "'", con);

            SqlDataReader d = com.ExecuteReader();

            if (d.HasRows)
            {
            d.Read();
            name.Text = d["name"].ToString();
            email.Text = d["email"].ToString();
            gender.Text = d["gender"].ToString();
            age.Text = d["age"].ToString();
            religion.Text = d["religion"].ToString();
            tougue.Text = d["tougue"].ToString();
            weight.Text = d["weight"].ToString();
            status.Text = d["status"].ToString();
            located.Text = d["located"].ToString();
            interested.Text = d["interested"].ToString();
            bloodgrp.Text = d["bloodgrp"].ToString();
            complexion.Text = d["complexion"].ToString();
            education.Text = d["education"].ToString();
            annual.Text = d["annual"].ToString();
            mobile.Text = d["mobile"].ToString();

            Image2.ImageUrl = "~/profilepic/" + d["img"].ToString();
                con.Close();
                d.Dispose();
            }



        }


    protected void Button1_Click(object sender, EventArgs e)
    {

        Response.Redirect("~/info.aspx?id=" + Label3.Text);
    }
}



   