<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <div class="grid_3">
  <div class="container" style="text-align: center">
   <div class="form_but1" style="text-align: left">
     
        <a href="Home.aspx"><i class="fa fa-home home_1"></i></a>
        <span class="divider">&nbsp;|&nbsp;Quick Search</span>
        <br />
        <br />
        <br />
             <asp:Button ID="Button5" runat="server" Text="Back" CssClass="btn_1 submit" OnClick="Button5_Click" />

   	    <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
        
   
        <br />
        <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
        <br />
        
   
   </div>
    


      <br />
      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="search" CssClass="btn_1" />
        <br />
      <br />
      <br />
      <div>
          <center>
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
          <AlternatingRowStyle BackColor="White" />
          <Columns>
            <asp:TemplateField HeaderText="ID" ItemStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" ItemStyle-Width="50" >
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1"  Text='<%#Eval("id") %>' OnClick="LinkButton1_Click"  runat="server">LinkButton</asp:LinkButton>
                </ItemTemplate>
                 <ItemStyle HorizontalAlign="center" />
                    <HeaderStyle HorizontalAlign="center" />
<ItemStyle Width="50px"></ItemStyle>
            </asp:TemplateField>
     <asp:ImageField ControlStyle-Height="100" ControlStyle-Width="100" DataImageUrlField="id" DataImageUrlFormatString="profilepic/{0}.jpg" HeaderText="Image">
<ControlStyle Height="100px" Width="100px"></ControlStyle>
            </asp:ImageField>

            <asp:BoundField HeaderText="Name" HeaderStyle-VerticalAlign="Middle" DataField="name" ItemStyle-Width="200" >
            <HeaderStyle CssClass="grid" />
<ItemStyle HorizontalAlign="center" />
                    <HeaderStyle HorizontalAlign="center" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Age" DataField="age" ItemStyle-Width="50">
<ItemStyle HorizontalAlign="center" />
                    <HeaderStyle HorizontalAlign="center" />
            </asp:BoundField>
             <asp:BoundField DataField="email" HeaderText="Email" ItemStyle-Width="200">
            
<ItemStyle HorizontalAlign="center" />
                    <HeaderStyle HorizontalAlign="center" />
            </asp:BoundField>
            
            <asp:BoundField DataField="gender" HeaderText="Gender" ItemStyle-Width="100">
           
         
<ItemStyle HorizontalAlign="center" />
                    <HeaderStyle HorizontalAlign="center" />
            </asp:BoundField>
           
         
           
        </Columns>
          <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
          <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
          <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
          <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
          <SortedAscendingCellStyle BackColor="#FDF5AC" />
          <SortedAscendingHeaderStyle BackColor="#4D0000" />
          <SortedDescendingCellStyle BackColor="#FCF6C0" />
          <SortedDescendingHeaderStyle BackColor="#820000" />
      </asp:GridView>
          </center>
      </div>
      <br />

    

<br />
    </div></div>

</asp:Content>


