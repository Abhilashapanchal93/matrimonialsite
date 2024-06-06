<%@ Page Language="C#"MasterPageFile="~/MasterPage.master" AutoEventWireup="true"CodeFile="info.aspx.cs" Inherits="info" %>

<asp:Content ID=one ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="grid_3">
  <div class="container">
   <div class="breadcrumb1">
     <ul>
        <a href="Home.aspx"><i class="fa fa-home home_1"></i></a>
         <li>sq</li>
        <span class="divider">&nbsp;|&nbsp;</span>
        <li class="current-page">Profile</li>
     </ul>
   </div>
    <div>
<table border="0" cellpadding="1" cellspacing="0" style="width: 99%">
      <!--DWLayoutTable-->
      <tr>
        <td width="21" height="147">&nbsp;</td>
          <td valign="top" class="modal-lg" style="width: 896px"><table cellspacing="0" cellpadding="0" style="width: 1245px">
              <!--DWLayoutTable-->
              <tr>
                <td height="15" colspan="2" align="left" valign="top"><div align="center"><span class="style3">Welcome<strong>&nbsp;to&nbsp; MatrimonyIndia </strong></span> </div></td>
              </tr>
              <tr>
                <td height="9" valign="top" class="text-center" style="width: 20px">&nbsp;</td>
                <td valign="top" class="text-left" style="height: 32px; width: 2182px;"><span class="style3"><strong>
                    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                        Text="update info" CssClass="btn_1 submit" Height="41px" Width="135px" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" CssClass="btn_1 submit" Text="View Profile" style="right: -343px; " Height="41px" Width="143px" />
        &nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button7" runat="server" CssClass="btn_1 submit" Height="41px" Text="search" OnClick="Button7_Click" Width="112px" />
&nbsp;&nbsp; <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                        Text="Change Password" CssClass="btn_1 submit" style="margin-left: 52" Width="188px" Height="41px" />
                    &nbsp;&nbsp;
                    <asp:Button ID="Button8" runat="server" CssClass="btn_1 submit" Height="41px" Text="payment" OnClick="Button8_Click" Width="117px" />
&nbsp;
&nbsp;<asp:Button ID="Button5" runat="server" CssClass="btn_1 submit" OnClick="Button5_Click" Text="Feedback" Height="41px" Width="121px" />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                        Text="Log out" CssClass="btn_1 submit" Height="41px" Width="112px" />
                    &nbsp;&nbsp;&nbsp;
                                        
                        <asp:Button ID="Button10" runat="server" CssClass="btn_1 submit" Text="Deactiveted" OnClick="Button10_Click" Width="146px" />
                    
                    <br />
                    <asp:Label ID="gender" runat="server" Visible="False"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </strong>
                    <em><strong>
                    <asp:Label ID="Label2" runat="server" style="font-size: large"></asp:Label>
                    <br />
                    </strong></em><strong>
                    <br />
                    </strong>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><em><span style="font-size: x-large">&nbsp;</span><span style="font-size: larger"> Welcome </span></em></strong>
                    </span> <strong><em><span style="font-size: larger">
                    <asp:Label ID="name" runat="server"></asp:Label>
                    </span></em></strong> </td>
              </tr>
          
              <tr>
                <td height="15" colspan="2" align="left" valign="top"><span class="red_text">Dear member</span>   ,</td>
              </tr>
              <tr>
                <td height="135" style="width: 20px">&nbsp;</td>
                <td align="left" valign="top" style="width: 2182px">
                    <p class="text-center">
                        &nbsp;</p>
                    <p class="red_text">You have login your account successfully, now you can use simple and reliable   matrimonial services introduced by<strong> MatrimonyIndia </strong>for your convenience. To get your   desired partner easily. </p>
                  <p class="red_text" style="height: 268px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                      Save Profile Image as <span class="style3">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    </span> .jpg<br />
                    » Give adequate information … briefly<br />
                    » Let   your profile reflect your Personality by uploading your video&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <strong>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FileUpload1" ErrorMessage="plz select the img" ForeColor="Red" style="z-index: 1; position: absolute; top: 502px; left: 846px" ValidationGroup="g"></asp:RequiredFieldValidator>
                      </strong>
                      <br />
                    » Check   Spellings and Grammar mistakes<br />
                    » Upload your Photograph<br />
                    <br />
                  We wish you   good luck with your Partner search! 
                    <strong><em>
                    <asp:FileUpload ID="FileUpload1" runat="server" style="width: 301px; height: 24px; z-index: 1; position: absolute; top: 659px; left: 734px;" />
                    </em></strong>
                    </p>
                    <p class="red_text" style="height: 268px">
                        <asp:Image ID="Image1" runat="server" style="position: relative; left: 641px; top: -232px; width: 134px; height: 146px" />
                        <asp:Button ID="Button9" runat="server" CssClass="btn_1 submit" OnClick="Button9_Click" style="position: relative; left: 662px; top: -214px; margin-top: 0" Text="Upload" ValidationGroup="g" />
                    
                   <br />
                  </td>
              </tr>
             
          </table>       
          
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      

    </table>
</div>
   </div>
    </div>

</asp:Content>