<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="r" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br /><br />
    <div class="grid_3">
  <div class="container">
   <div class="breadcrumb1">
     
         
        <a href="Home.aspx"><i class="fa fa-home home_1"></i></a>
        <span class="divider">&nbsp;|&nbsp;Register</span>
       
    
   </div>
      
    <div class="services">
   	  <div class="col-sm-4 login_left"  style="left: -1px; top: 0px; width: 1251px;">
	     	
	  	    <div class="form-group">
		      <label for="edit-name">Full name <span class="form-required" title="This field is required.">*</span></label>
		        <br />
		      <asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="554px"></asp:TextBox>
                  
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Plz Enter Full Name" style="z-index: 1; position: absolute; top: 31px; left: 614px" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grp2"></asp:RequiredFieldValidator>
                  
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                  &nbsp;
		    </div>
		    <div class="form-group">
		      <label for="edit-name">Email / Username <span class="form-required" title="This field is required.">*</span></label>
                <br />
                <asp:TextBox ID="TextBox3" runat="server" Height="39px" Width="554px" CausesValidation="True" EnableViewState="False"></asp:TextBox>
		      
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Plz Enter valid Email Id" style="position: absolute; z-index: 1; top: 122px; left: 616px" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2"  runat="server" ControlToValidate="TextBox3" ErrorMessage="plz Enter Email id" style="z-index: 1; position: absolute; top: 119px; left: 617px" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grp"></asp:RequiredFieldValidator>
		      <asp:RequiredFieldValidator ID="RequiredFieldValidator5"  runat="server" ControlToValidate="TextBox3" ErrorMessage="plz Enter Email id" style="z-index: 1; position: absolute; top: 119px; left: 617px" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grp2"></asp:RequiredFieldValidator>
		      
                 
                <br />
		      
                  <br />
		      
                  <asp:Button ID="Button3" CssClass="btn_1 submit" runat="server"  Text="Check availblty" OnClick="Button3_Click" style=" margin-top: 0em" ValidationGroup="grp" />
		        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" style="height: 22px" Visible="False"></asp:Label>
		    </div>
        <div class="form-group" style="height: 121px">
            <br />
            <label for="edit-pass">
            Password <span class="form-required" title="This field is required.">*</span></label><br />
            <asp:TextBox ID="TextBox2" runat="server" Height="34" Width="554" TextMode="Password"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3"  ValidationGroup="grp2" runat="server" ControlToValidate="TextBox2" ForeColor="Red" style="z-index: 1; position: absolute; top: 280px; left: 624px" SetFocusOnError="True">plz enter password</asp:RequiredFieldValidator>
&nbsp;<br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="password should be 7 to 10 (1 UpperCase Alphabet,1 LowerCase Alphabet and 1 Number)" ForeColor="Red" style="z-index: 1; position: absolute; top: 281px; left: 587px" ValidationExpression="^[a-zA-Z0-9\s]{7,10}$"></asp:RegularExpressionValidator>
                 </div>
            <div class="form-group">
		      <label for="edit-pass">Re-password <span class="form-required" title="This field is required.">*</span></label>
		        <br />
		     <asp:TextBox ID="TextBox4" runat="server" Height="34" Width="554" TextMode="Password"></asp:TextBox>
                 <asp:CompareValidator ID="CompareValidator1"  runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox4" ErrorMessage="Enter password correctly" style="z-index: 1; position: absolute; top: 401px; left: 607px" ForeColor="Red"></asp:CompareValidator>
                 &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4"  ValidationGroup="grp2" runat="server" ControlToValidate="TextBox4" ErrorMessage="plz enter Re-password " ForeColor="Red" style="z-index: 1; position: absolute; top: 395px; left: 632px; right: 437px;" SetFocusOnError="True"></asp:RequiredFieldValidator>
                &nbsp;<br />
                <br />
		   
               <div class="form-group" style="height: 29px">
                   &nbsp;<%--<div class="col-sm-5" style="width: 614px">--%><label for="edit-name">Gender <span class="form-required" title="This field is required.">*</span></label><br />
                  <asp:DropDownList ID="DropDownList1" runat="server" CssClass="col-sm-5" style="top: -32px; left: 92px; width: 10%; margin-top: 0px; height: 39px;">
                        <asp:ListItem Value="Male" Selected="True">Male</asp:ListItem>
                        <asp:ListItem Value="Female">Female</asp:ListItem>
                    </asp:DropDownList>
                   
                   <br />
                   <br />
                   
                   <br />
                   
                   <br />
                   <br />
                   
                </div>
                <div class="form-actions">
                  <asp:Button ID="Button1" CssClass="btn_1 submit"  ValidationGroup="grp2" runat="server" Text="Register" OnClick="Button1_Click" />
                    <br />
                  </div>
	            </div>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:matrimonyConnectionString2 %>" InsertCommand="INSERT INTO [user] (name, email, gender, pwd) VALUES (@name, @email, @gender, @pwd)" SelectCommand="SELECT id, name, email, gender, pwd FROM [user]">
                     <InsertParameters>
                         <asp:Parameter Name="name" />
                         <asp:Parameter Name="email" />
                         <asp:Parameter Name="gender" />
                         <asp:Parameter Name="pwd" />
                     </InsertParameters>
                </asp:SqlDataSource>
                 <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:matrimonyConnectionString2 %>" InsertCommand="INSERT INTO fedbk(name, email) VALUES (@name, @email)" SelectCommand="SELECT fedbk.* FROM fedbk">
                     <InsertParameters>
                         <asp:Parameter Name="name" />
                         <asp:Parameter Name="email" />
                     </InsertParameters>
            </asp:SqlDataSource>
                 <br />
	   
	  </div>
         <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
       <asp:UpdatePanel runat="server">
           <ContentTemplate>
       <asp:Timer ID="Timer2" runat="server" Interval="1000" ontick="Timer1_Tick">
    </asp:Timer>
       <asp:Image ID="Image1" runat="server" ImageUrl="~/img/1.jpg" style="z-index: 1; position: absolute; top: 233px; left: 875px; height: 266px;" Width="373px" />
     </ContentTemplate>
                </asp:UpdatePanel>
	  </div>
	  <div class="clearfix"> </div>
   </div>
 </div>
</asp:Content>