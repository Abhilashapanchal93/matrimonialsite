using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Net;
using System.Configuration;
using System.Drawing;

public partial class Reset_Password : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-FV1K5OO;Initial Catalog = matrimony; Integrated Security = True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //    SqlConnection con = new SqlConnection("Data Source=SEHAL-PC\\SQLEXPRESS; Initial Catalog=matrimony; Integrated Security=True");
     //con.Open();
     //SqlCommand cmd = new SqlCommand("SELECT First_Name,Password FROM Register Where Email_Id= '" +TextBox1.Text + "'", con);
     //SqlDataAdapter da = new SqlDataAdapter(cmd);
     //DataSet ds = new DataSet();
     //da.Fill(ds);
     //con.Close();
     //if (ds.Tables[0].Rows.Count > 0)
     //{
     //    MailMessage email = new MailMessage();
     //    email.From = new MailAddress(TextBox1.Text); //Enter sender email address
     //    email.To.Add(TextBox1.Text); //Destination Recipient e-mail address.
     //    email.Subject = "Your Forrget Password:";//Subject for your request
     //    email.Body = "Hi,<br/>Your Username is: " + ds.Tables[0].Rows[0]["First_Name"] + "<br/><br/>Your Password is: " + ds.Tables[0].Rows[0]["Password"] + "<br/>";
     //    email.IsBodyHtml = true;
     //    //SMTP SERVER DETAILS
     //    SmtpClient smtpc = new SmtpClient("smtp.gmail.com");
     //    smtpc.Port = 587;
     //    smtpc.UseDefaultCredentials = false;
     //    smtpc.EnableSsl = true;
     //    Label1.Text = "gagareleena15@gmail.com"; //<--Enter your gmail id here
     //    Label2.Text = "9762531866";//<--Enter gmail password here
     //    //Label3.Text = "msdotnet website"; //Subject for your website
     //    //Label4.Text = "webcome to http://msdotnet.co.in. please share this website to your friends"; //Message body
     //    smtpc.Credentials = new NetworkCredential(Label1.Text, Label2.Text);
     //    smtpc.Send(email);
     //    Label2.Text = "Your password has been sent to your email address";
     //}
     //    else
     //    {
     //    Label3.Text="This email address is not exist in our Database try again";
     //    }
     //
        try
{
DataSet ds = new DataSet();
using (SqlConnection con = new SqlConnection("Data Source=SEHAL-PC\\SQLEXPRESS; Initial Catalog=matrimony; Integrated Security=True"))
{
con.Open();
SqlCommand cmd = new SqlCommand("SELECT First_Name,Password FROM Register Where Email_Id= '" + TextBox1.Text.Trim() + "'", con);
SqlDataAdapter da = new SqlDataAdapter(cmd);
     
     
da.Fill(ds);
con.Close();
}
if(ds.Tables[0].Rows.Count>0)
{
MailMessage Msg = new MailMessage();
// Sender e-mail address.
Msg.From = new MailAddress(TextBox1.Text);
// Recipient e-mail address.
Msg.To.Add(TextBox1.Text);
Msg.Subject = "Your Password Details";
Msg.Body = "Hi, <br/>Please check your Login Detailss<br/><br/>Your Username: " + ds.Tables[0].Rows[0]["First_Name"] + "<br/><br/>Your Password: " + ds.Tables[0].Rows[0]["Password"] + "<br/><br/>";
Msg.IsBodyHtml = true;
// your remote SMTP server IP.
SmtpClient smtp = new SmtpClient();
smtp.Host = "smtp.gmail.com";
smtp.Port = 587;
smtp.Credentials = new System.Net.NetworkCredential ("gagareleeena15@gmail.com", "9762531866");
smtp.EnableSsl = true;
smtp.Send(Msg);
//Msg = null;
Label2.Text = "Your Password Details Sent to your mail";
// Clear the textbox valuess
TextBox1.Text = "";
}
else
{
Label3.Text = "The Email you entered not exists.";
}
}
catch (Exception ex)
{
Console.WriteLine("{0} Exception caught.", ex);
}
}




}




    
