using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class info : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-FV1K5OO;Initial Catalog = matrimony; Integrated Security = True");
    SqlCommand com;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email_id"] != null)
        {
            Label2.Text = "Login Successfully  " + Session["Email_id"].ToString();
        }
        else
        {
            Response.Redirect("login.aspx");
        }
        Label1.Text = Request.QueryString["id"];
        gender.Text = Request.QueryString["gender"];

        // Add any controls that have been previously added dynamically
        for (int i = 0; i < TotalNumberAdded; ++i)
        {
            AddControls(i + 1);
        }

        // Attach the event handler to the button
        Button1.Click += new EventHandler(Button1_Click);
        Button2.Click += new EventHandler(Button2_Click);
        Button3.Click += new EventHandler(Button3_Click);
        Button4.Click += new EventHandler(Button4_Click);
        Button5.Click += new EventHandler(Button5_Click);
        Button9.Click += new EventHandler(Button9_Click);
        //if (!IsPostBack)
        //{
        //    Label1.Text = Request.QueryString["id"].ToString();


        //}
        try
        {
            con.Open();
            
            com = new SqlCommand("select * from [user]  where id = '" + Label1.Text.Trim() + "'", con);

            SqlDataReader d = com.ExecuteReader();

            if (d.HasRows)
            {
                d.Read();
                name.Text = d["name"].ToString();
                gender.Text = d["gender"].ToString();

                Image1.ImageUrl = "~/profilepic/" + d["img"].ToString();
                con.Close();
                d.Dispose();
            }
        }
        catch(Exception ex)
        {
            Label3.Visible = true;
            Label3.Text = "error..!!! plz login again..!!";
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
            get { return (int)(ViewState["TotalNumberAdded"] ?? 0);
            }
            set { ViewState["TotalNumberAdded"] = value;
            }
        }

    protected void Button2_Click(object sender, EventArgs e)
    {
        //Label1.Text = Request.QueryString["id"];
        Response.Redirect("~/Changepassword.aspx?id=" + Label1.Text);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session.Clear();
       
        Session.RemoveAll();
        Session.Abandon();
       
        Response.Redirect("Home.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        //Label1.Text = Request.QueryString["id"];
        Response.Redirect("~/updateinfo.aspx?id=" + Label1.Text);
        //Response.Redirect("update.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Label1.Text = Request.QueryString["id"];
        Response.Redirect("~/viewprofile.aspx?id=" + Label1.Text);
    }

    protected void Button5_Click(object sender, EventArgs e)
    {

       // Label1.Text = Request.QueryString["id"];
        Response.Redirect("~/feedback.aspx?id=" + Label1.Text);
    }

    

    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/viewall.aspx?id=" + Label1.Text+"&g="+ gender.Text);

    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/payment.aspx?id=" + Label1.Text);
    }

    public static string filename;
    protected void Button9_Click(object sender, EventArgs e)
    {
        try
        {
        //    con.Open();

        //com = new SqlCommand("Update [user] set img=@img where id='" + Label1.Text.Trim() + "'", con);
        //com.Parameters.AddWithValue("img", FileUpload1.FileContent);
        //com.ExecuteNonQuery();
        //com.Dispose();
        //con.Close();
       
            if (FileUpload1.PostedFile != null)
            {
                try
                {
                    con.Open();
                    string query = "update [user] set img='" + FileUpload1.FileName + "' where id='" + Label1.Text.Trim() + "'";
                    com = new SqlCommand(query, con);
                    SqlDataReader dr = com.ExecuteReader();

                    filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    //save to disk
                    FileUpload1.SaveAs(Server.MapPath("~/profilepic/") + filename);
                    dr.Close();

                    com.ExecuteNonQuery();

                    con.Close();


                }
                catch (Exception ex)
                {
                    Label3.Visible = true;
                    Label3.Text = " Plz upload the image!!!!";
                }
            }
        }
        catch (Exception ex)
        {
            Label3.Visible = true;
            Label3.Text = " Plz upload the image!!!!";
        }

        Response.Redirect("~/info.aspx?id=" + Label1.Text);
    }

    protected void Button10_Click(object sender, EventArgs e)
    {
        try
        {
            { 
            con.Open();
            
                com = new SqlCommand("delete from [user] where id='" + Label1.Text.Trim() + "'", con);

                com.ExecuteNonQuery();
                com.Dispose();
                con.Close();
            }
            {
                con.Open();

                com = new SqlCommand("delete from [fedbk] where id='" + Label1.Text.Trim() + "'", con);

                com.ExecuteNonQuery();
                com.Dispose();
                con.Close();
            }
        } 
        catch (Exception ex)
        {
            Label3.Visible = true;
            Label3.Text = "plz chk again";
        }

        Response.Redirect("Home.aspx");


    }
}
        
        

       
        
        

        

          

      