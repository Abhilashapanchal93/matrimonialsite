﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class payment_portal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Request.QueryString["id"];
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/info.aspx?id=" + Label1.Text);
    }
}