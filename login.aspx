<%@ Page Title="" Language="C#"  AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="login.aspx.cs" Inherits="login" %>
<asp:Content ID="Contentl" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
  
    <div class="grid_3">
  <div class="container">
   <div class="breadcrumb1">
    
        <a href="Home.aspx"><i class="fa fa-home home_1"></i></a>
        <span class="divider">&nbsp;|&nbsp;Login</span>
        <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
      
  
   </div>
    
   <div class="services">
   	  <div class="col-sm-6 login_left" style="left: 0px; top: 0px; width: 712px">
	  
  	    <div class="form-item form-type-textfield form-item-name">
	      <label for="edit-name">Username <span class="form-required" title="This field is required.">*</span></label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-text "></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter username plz" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;</div>
	    <div class="form-item form-type-password form-item-pass">
	      <label for="edit-pass">Password <span class="form-required" title="This field is required.">*</span></label>
	        <br />
&nbsp;<asp:TextBox ID="TextBox2" runat="server" CssClass="form-text " TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter password plz" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn_1 submit" OnClick="Button1_Click"   />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Invalid Email or Password" Visible="False"></asp:Label>
            <br />
            <br />
	    </div>
             </div>
         <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
       <asp:UpdatePanel runat="server">
           <ContentTemplate>
       <asp:Timer ID="Timer2" runat="server" Interval="1000" ontick="Timer1_Tick">
    </asp:Timer>
       <asp:Image ID="Image1" runat="server" Height="288px" ImageUrl="~/img/1.jpg" style="z-index: 1; position: absolute; top: 174px; left: 842px" Width="373px" />
     </ContentTemplate>
                </asp:UpdatePanel>
            </div>

	  </div>
        
	  <div class="col-sm-6">
	    <ul class="sharing">
			<li><a href="#" class="facebook" title="Facebook"><i class="fa fa-boxed fa-fw fa-facebook"></i> Share on Facebook</a></li>
		  	<li><a href="#" class="twitter" title="Twitter"><i class="fa fa-boxed fa-fw fa-twitter"></i> Tweet</a></li>
		  	<li><a href="#" class="google" title="Google"><i class="fa fa-boxed fa-fw fa-google-plus"></i> Share on Google+</a></li>
		  	<li><a href="#" class="linkedin" title="Linkedin"><i class="fa fa-boxed fa-fw fa-linkedin"></i> Share on LinkedIn</a></li>
		  	<li><a href="#" class="mail" title="Email"><i class="fa fa-boxed fa-fw fa-envelope-o"></i> E-mail</a></li>
		</ul>
	  </div>
        
	  <div class="clearfix"> </div>
   </div>
    
  
    

    
    	 
</asp:Content>