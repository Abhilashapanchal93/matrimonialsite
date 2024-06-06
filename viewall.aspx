<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="viewall.aspx.cs" Inherits="viewall" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <div class="grid_3">
  <div class="container">
   <div class="breadcrumb1">
     
        <a href="Home.aspx"><i class="fa fa-home home_1"></i></a>
        <span class="divider">&nbsp;|&nbsp; View all Profile</span>
       
    
   </div>
        <div style="height: 699px" class="text-center">
            <div class="text-center">
                <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                &nbsp;<asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
                &nbsp;<asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
                <br />
            <br />
             &nbsp;&nbsp; <span class="style3"><strong>
                <asp:Button ID="Button6" runat="server" CssClass="btn_1 submit" Height="41px" Text="Matches" OnClick="Button6_Click" Width="123px" />
                    </strong>
                    </span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style3"><strong>
                <asp:Button ID="Button7" runat="server" CssClass="btn_1 submit" Height="41px" Text="search by ID" OnClick="Button7_Click" Width="188px" />
                    </strong>
                    </span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" Text="Back" CssClass="btn_1 submit" OnClick="Button1_Click" Height="41px" />

                &nbsp;

                <br />
                <br />

                <asp:DataList ID="DataList1" runat="server" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" RepeatColumns="5" RepeatDirection="Horizontal" ShowFooter="False" ShowHeader="False" Width="409px">

                    <AlternatingItemStyle Font-Bold="True" Font-Italic="False" Font-Names="Lucida Calligraphy" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <EditItemStyle Font-Bold="True" Font-Italic="False" Font-Names="Lucida Calligraphy" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <FooterStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle Font-Bold="True" Font-Italic="False" Font-Names="Lucida Calligraphy" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" />

                    <ItemTemplate>
                <table>
                    <center>
                        <caption>
                        <br />
                            <tr>
                                <td class="style21">View Profile:<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Text='<%#Eval("id") %>'> </asp:LinkButton>
                                <br />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                <img src="profilepic/<%#Eval("img") %>" Height="170" style="width: 200px" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style21"><%#Eval("name")%></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="style21">
                                    <asp:Label ID="Label4" runat="server" Text="Age    :    "></asp:Label>
                                    <%#Eval("age")%></td>
                            </tr>
                            <tr>
                                <td class="style21"><%#Eval("located")%></td>
                                <td></td>
                            </tr>
                            </tr>
                            <td><%#Eval("gender")%></td>
                        </caption>
                    </center>
                </table>
            </ItemTemplate>

                    <SelectedItemStyle Font-Bold="True" Font-Italic="False" Font-Names="Lucida Calligraphy" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <SeparatorStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" />

                </asp:DataList>

    </div>
        </div>

 
      </div>
        </div>
</asp:Content>

