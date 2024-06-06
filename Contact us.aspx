<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact us.aspx.cs" Inherits="Contact_us" %>

    
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="grid_3">
  <div class="container">
   <div class="breadcrumb1">
     
        <a href="Home.aspx"><i class="fa fa-home home_1"></i></a>
       <span class="divider">&nbsp;|&nbsp; Contact</span>
      
    
   </div>
   <div class="grid_5">
       <p class="style19">
           Please leave your messages here :
       </p>
       <p>
           We at <strong>HumsafarMatrimony.com</strong> are a social site and always love to hear from you. You can contact us at our addresses mentioned below for Customer Care or Business Enquiries (franchisee, advertising and services).</p>
       <p>
           <strong>Fill all mendatory fields.</strong></p>
       <div class="form-group">
           <div class="alert alert-warning" role="alert">
               <strong>Fill all mendatory fields.</strong></div>
       </div>
    </div>
   </div>
</div>
<div class="about_middle">
    
  <div class="container">
      <center>
	 <h2>Contact Form</h2>
	  <form id="contact-form" class="text-center">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <fieldset style="width: 680px">
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="text" class="form-text required" placeholder="" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" style="width: 100%; height: 41px;"><br />
          <input type="text" class="form-text required" placeholder="" value="Phone" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Phone';}" style="width: 100%">
            <br />
          <input type="text" class="form-text required" placeholder="" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" style="width: 100%">
           <br />
            <textarea value="Message" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}" style="width: 100%; height: 175px;" class="text ">Message</textarea><br />
           <br />
            <input name="submit" class="btn-info" type="submit" id="submit" value="Submit" style="width: 100%; height: 58px;">
        </fieldset>
      </form></center>
  </div>
</div>
    <br />
<br />
        <dl class="grid_4">
            <dt>Address :</dt>
            <dd>
                8901 Nulla Pariatur, <br>
                Ipsum, D05 87GR.
            </dd>
        </dl>
        <dl class="grid_4">
            <dt>Telephones :</dt>
            <dd>
                +1 800 245 4578 <br>
                +1 800 789 5478
            </dd>
        </dl>
        <dl class="grid_4">
            <dt>E-mail :</dt>
            <dd><a href="malito:mail@demolink.org">mail(at)Marital.com</a></dd>
        </dl>
    <br />
</asp:Content>

