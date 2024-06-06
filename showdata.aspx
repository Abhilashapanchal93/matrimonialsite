<%@ Page Title="" Language="C#"  MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="showdata.aspx.cs" Inherits="other_services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <strong>
    
    <br style="color: #FFFFFF" />
    <span style="color: #FFFFFF">&nbsp;</span></strong>&nbsp;<br />
    

<br />
    <br />
    <br />
    <br />
    <center>
        <asp:DataList ID="DataList1" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Calibri" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" Height="92px" HorizontalAlign="Center" RepeatColumns="5" RepeatDirection="Horizontal" ShowFooter="False" ShowHeader="False" Width="409px">
            <AlternatingItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <EditItemStyle Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" />
            <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle Font-Names="Lucida Calligraphy" HorizontalAlign="Center" VerticalAlign="Middle" />
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
            <SelectedItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <SeparatorStyle Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:DataList>
&nbsp;
    </center>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    

    <br />
    <br />
    <br />
    

</asp:Content>

