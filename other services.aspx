<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="other services.aspx.cs" Inherits="other_services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<table>

            <tr>
                <td colspan="3" 
                    style="border-bottom: thin solid #008080; font-weight: 700; text-align: center;">
                    Change Password Form</td>
            </tr>
            <tr>
<td>
Username:
</td>
<td>
<asp:TextBox ID="txtUserName" runat="server"/>
</td>
</tr>
<tr>
                <td>
                    Enter Current Password :
                </td>
                <td >
                    <asp:TextBox ID="txtcurrentpass" runat="server" Width="120px" 
                        TextMode="Password"></asp:TextBox>
                </td>
                <td style="width: 480px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td >
                    Enter New Password :</td>
                <td >
                    <asp:TextBox ID="txtnewpass" runat="server" Width="120px" TextMode="Password"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td >
                    Confirm Password : </td>
                <td >
                    <asp:TextBox ID="txtconfirmpass" runat="server" Width="120px" 
                        TextMode="Password" Height="22px"></asp:TextBox>
                </td>
              
            </tr>
              <tr><td></td>
              <td>
                    <asp:Button ID="btnchangepass" runat="server" Text="Change Password" 
                        onclick="ChangePassword1_ChangedPassword" />
                  </td>
              <td>
                  <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                      Text="Log out" />
                  </td>
    </tr>
              <tr>
              <td>
              </td>
              <td><asp:Label ID="lblmsg" runat="server"></asp:Label></td>
              </tr>  
                
        </table></center>
</asp:Content>

