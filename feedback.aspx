<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <div class="grid_3">
  <div class="container">
   <div class="breadcrumb1">
    
        <a href="Home.aspx"><i class="fa fa-home home_1"></i></a>
        <span class="divider">&nbsp;|&nbsp;Feedback</span>

     
   </div>
    <div>             <asp:Button ID="Button1" runat="server" Text="Back" CssClass="btn_1 submit" OnClick="Button1_Click" />

   	  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>

        <br />

   	  </div>
      
       &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <table class="nav-justified" align="center" style="width: 52%">
          <tr>
              <td class="text-center" colspan="2" style="background-color: #3366FF; height: 50px;"><span style="color: #000000">FEEDBACK</span><span style="color: #3366FF"> </span><span style="color: #000000"><span style="background-color: #3366FF">FORM</span></span></td>
          </tr>
          <tr>
              <td class="text-center" colspan="2" style="height: 41px">Help us improve this site. Place your valueable feedback.</td>
          </tr>
          <tr>
              <td class="modal-sm" style="width: 233px; height: 46px">
                        <asp:Label ID="lblname" runat="server" Text="Name"></asp:Label>
                        </td>
              <td style="width: 230px; height: 50px"> 
                        <asp:TextBox ID="txtname" runat="server" Width="200px" Height="25px" 
                            ></asp:TextBox></td>
             
          </tr>
          <tr>
              <td class="modal-sm" style="width: 233px; height: 50px;">Email</td>
              <td style="width: 230px; height: 50px;" height: 50px"> 
                        <asp:TextBox ID="txtemail" runat="server" Width="200px" Height="25px" 
                            ></asp:TextBox></td>
          </tr>
          <tr>
              <td class="modal-sm" style="width: 233px; height: 50px;"><asp:Label ID="lblrate" runat="server" Text="Rate the site"></asp:Label>
                        </td>
              <td style="width: 230px; height: 50px;" height: 50px"> 
                        <asp:DropDownList ID="cmbboxrate" runat="server" Width="200px" Height="25px">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Excellent</asp:ListItem>
                            <asp:ListItem>Very Good</asp:ListItem>
                            <asp:ListItem>Good</asp:ListItem>
                            <asp:ListItem>Fair</asp:ListItem>
                            <asp:ListItem>Can Be Better</asp:ListItem>
                        </asp:DropDownList>
                        <br />
              </td>
               <td>

                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="cmbboxrate" ErrorMessage="plz Rate the site" ForeColor="Red" ValidationGroup="gp"></asp:RequiredFieldValidator>

              </td>
          </tr>
          <tr>
              <td class="modal-sm" style="width: 233px; height: 50px;"><asp:Label ID="lblservice" runat="server" Text="Have you used our services*"></asp:Label>
                        </td>
              <td style="width: 230px; height: 50px;"> 
                        <asp:DropDownList ID="cmbboxourservice" runat="server" Width="200px" 
                            Height="25px">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:DropDownList>
                        <br />
              </td>
               <td>

                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="cmbboxourservice" ErrorMessage="hv you used ?" ForeColor="Red" ValidationGroup="gp"></asp:RequiredFieldValidator>

              </td>
          </tr>
          <tr>
              <td class="modal-sm" style="width: 233px; height: 50px;"><asp:Label ID="lbllike" runat="server" Text="Did you like our services*"></asp:Label>
                        </td>
              <td style="width: 230px; height: 50px;">
                        <asp:DropDownList ID="cmbboxlike" runat="server" Width="200px" Height="25px">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:DropDownList>
                  <br />
              </td>
               <td>

                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="cmbboxlike" ErrorMessage="did u like?" ForeColor="Red" ValidationGroup="gp"></asp:RequiredFieldValidator>

              </td>
          </tr>
          <tr>
              <td style="height: 49px; width: 233px"><asp:Label ID="lbluse" runat="server" Text="Was the site easy to use* "></asp:Label> 
                        </td>
              <td style="height: 49px; width: 230px"> 
                        <asp:DropDownList ID="cmbboxuse" runat="server" Width="200px" Height="25px">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:DropDownList>
                  <br />
              </td>
               <td>

                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="cmbboxuse" ErrorMessage="site is easy?" ForeColor="Red" ValidationGroup="gp"></asp:RequiredFieldValidator>

              </td>
          </tr>
          <tr>
              <td class="modal-sm" style="width: 233px; height: 50px;">
                        <asp:Label ID="lblagain" runat="server" Text="Will you visit here again*"></asp:Label>
                  </td>
              <td style="width: 230px; height: 50px;">
                  <asp:DropDownList ID="cmbboxvisit"
                            runat="server" Width="200px" Height="25px">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:DropDownList>
                  <br />
              </td>
               <td>

                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="cmbboxvisit" ErrorMessage="will u visit again?" ForeColor="Red" ValidationGroup="gp"></asp:RequiredFieldValidator>

              </td>
          </tr>
          <tr>
              <td class="modal-sm" style="width: 233px; height: 47px;">
                        <asp:Label ID="lblothers" runat="server" Text="Will you recommend others*"></asp:Label> 
                        </td>
              <td style="width: 230px; height: 47px;"> 
                        <asp:DropDownList ID="cmbboxothers" runat="server" Width="200px" Height="25px">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:DropDownList>
                  <br />
              </td>
               <td>

                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="cmbboxothers" ErrorMessage="will u recomend others?" ForeColor="Red" ValidationGroup="gp"></asp:RequiredFieldValidator>

              </td>
          </tr>
          <tr>
              <td colspan="2" class="text-center" style="height: 50px">
                        <asp:Label ID="lblcomment" runat="server" Text="Your comment* (255 Chars Max)"></asp:Label>
              </td>
               <td>

                   <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtcomment" ErrorMessage="plz enter ur cooment " ForeColor="Red" ValidationGroup="gp"></asp:RequiredFieldValidator>

                   <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

              </td>
          </tr>
          <tr>
              <td colspan="2" class="text-center">
                        <asp:TextBox ID="txtcomment" runat="server" Height="75px" Width="453px" TextMode="MultiLine"></asp:TextBox></td>
          </tr>
           <tr>
               <td colspan="2" class="text-center" style="height: 52px">

                   <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" Text="Submit" Width="110px" CssClass="btn_1" Height="35px" />

               </td>
           </tr>
      </table>
        <br />
    
  </div>
    </div>


</asp:Content>

