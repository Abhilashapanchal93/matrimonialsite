<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Changepassword.aspx.cs" Inherits="Change_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
   <div class="grid_3">
  <div class="container">
   <div class="breadcrumb1">
     <ul>
        <a href="Home.aspx"><i class="fa fa-home home_1"></i></a>
        <span class="divider">&nbsp;|&nbsp;</span>
        <li class="current-page">CChange Password Form</li>
     </ul>
   </div>
   <div class="services">
   	  <div class="col-sm-6 login_left">
	   <form>
           <div>             <asp:Button ID="Button1" runat="server" Text="Back" CssClass="btn_1 submit" OnClick="Button1_Click" />

   	  &nbsp;<asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>

   	  </div>
                  <table style="width: 934px">
                      &nbsp;<td style="width: 203px; height: 48px;">
Email ID:
</td>
<td style="width: 48px; height: 48px">
<asp:TextBox ID="txtUserName" runat="server" Height="30px" Width="200px" />
</td>
</tr>
          
            <tr>
                <td class="style6" style="width: 203px">
                    Enter Current Password :
                </td>
                <td class="style4" style="width: 48px">
                    <asp:TextBox ID="txtcurrentpass" runat="server" 
                        TextMode="Password"  Height="30px" Width="200px"></asp:TextBox>
                
                   </td><td style="width: 253px">

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcurrentpass" ValidationGroup="g1" ErrorMessage="Plz enter current password" BackColor="White" ForeColor="Red"></asp:RequiredFieldValidator>

                        </td>
            </tr>
            <tr>
                <td class="style6" style="height: 48px; width: 203px">
                    Enter New Password :</td>
                <td class="style4" style="height: 48px; width: 48px;">
                    <asp:TextBox ID="txtnewpass" runat="server" TextMode="Password"  Height="30px" Width="200px"></asp:TextBox>
                </td>
              <td style="width: 253px">

                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtnewpass" ValidationGroup="g1" ErrorMessage="Plz enter new password" ForeColor="Red"></asp:RequiredFieldValidator>

              </td>
            </tr>
            <tr>
                <td class="style6" style="width: 203px">
                    Confirm Password : 
                    </td>
                <td class="style4" style="width: 48px">
                    <asp:TextBox ID="txtconfirmpass" runat="server" 
                        TextMode="Password" Height="30px" Width="200px" ></asp:TextBox>
                </td>
               <td style="width: 253px">

                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtnewpass" ControlToValidate="txtconfirmpass" ValidationGroup="g1" ErrorMessage="plz enter correct password" ForeColor="Red"></asp:CompareValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtconfirmpass" ValidationGroup="g1" ErrorMessage="Plz enter confirm password" ForeColor="Red"></asp:RequiredFieldValidator>

               </td>
            </tr>
            <tr>
                <td class="text-right" style="width: 203px; height: 55px;">
                    <asp:Button ID="btnchangepass" runat="server" CssClass="btn_1" onclick="ChangePassword1_ChangedPassword" Text="Change Password" ValidationGroup="g1" style="position: absolute; z-index: 1; top: 285px; left: 135px" />
                </td>
                <td class="text-center" style="height: 55px; width: 48px">
                    
                    <span class="style3">
                    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                        Text="Log out" CssClass="btn_1" style="z-index: 1; position: absolute; top: 284px; left: 425px" />
                    </span> 
                    
                </td>
               
            </tr>
            <tr>
                <td class="style5" style="width: 203px">
                    &nbsp;</td>
                <td class="style2" colspan="2">
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp;</td>
            </tr>
                      
        </table>

           </form>
             </div>
       </div>
</asp:Content>

