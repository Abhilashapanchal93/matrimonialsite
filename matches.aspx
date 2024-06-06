<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/MasterPage.master" CodeFile="matches.aspx.cs" Inherits="matches" %>

<asp:Content ID="Contentm" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
      <div class="grid_3">
  <div class="container">
   <div class="breadcrumb1">
     
        <a href="Home.aspx"><i class="fa fa-home home_1"></i></a>
        <span class="divider">&nbsp;|&nbsp; Matches</span>
        
   </div>  
    <div class="services">
   	  <div class="col-sm-6 login_left" style="left: 0px; top: 0px; width: 1296px">
             <asp:Button ID="Button1" runat="server" Text="Back" CssClass="btn_1 submit" OnClick="Button1_Click" />

   	         <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
             &nbsp;<br />
                <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
                <br />
                <br />
             <br />
             <div class="text-center">
&nbsp;Mother Tongue<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" BackColor="White" ValidationGroup="grp1" ControlToValidate="cmbboxmothertongue" ErrorMessage="select Mother Tougue" ForeColor="Red">*</asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; <asp:DropDownList ID="cmbboxmothertongue" runat="server" 
                        Width="136px">
                        <asp:ListItem Value="Does Not Matter">Does Not Matter</asp:ListItem>
                        <asp:ListItem>Aasamese</asp:ListItem>
                        <asp:ListItem>Bengali</asp:ListItem>
                        <asp:ListItem>Gujarati</asp:ListItem>
                        <asp:ListItem>English</asp:ListItem>
                        <asp:ListItem>Hindi</asp:ListItem>
                        <asp:ListItem>Kannada</asp:ListItem>
                        <asp:ListItem>Konkani</asp:ListItem>
                        <asp:ListItem>Malyalam</asp:ListItem>
                        <asp:ListItem>Marathi</asp:ListItem>
                        <asp:ListItem>Marwari</asp:ListItem>
                        <asp:ListItem>Oriya</asp:ListItem>
                        <asp:ListItem>Sindhi</asp:ListItem>
                        <asp:ListItem>Punjabi</asp:ListItem>
                        <asp:ListItem>Tamil</asp:ListItem>
                        <asp:ListItem>Telegu</asp:ListItem>
                        <asp:ListItem>Urdu</asp:ListItem>
                        <asp:ListItem>Bhojpuri</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Religion<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="cmbboxreligion" ErrorMessage="select Religion" ForeColor="Red" ValidationGroup="grp1">*</asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<asp:DropDownList 
                        ID="cmbboxreligion" runat="server" Width="136px">
                        <asp:ListItem Value="Does Not Matter">Does Not Matter</asp:ListItem>
                        <asp:ListItem>Hindu</asp:ListItem>
                        <asp:ListItem>Muslim</asp:ListItem>
                        <asp:ListItem>Christian</asp:ListItem>
                        <asp:ListItem>Sikh</asp:ListItem>
                        <asp:ListItem>Parsi</asp:ListItem>
                        <asp:ListItem>Jain</asp:ListItem>
                        <asp:ListItem>Jewish</asp:ListItem>
                        <asp:ListItem>Buddhist</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
             <br />
&nbsp; Interested In<asp:RequiredFieldValidator ID="RequiredFieldValidator7" ValidationGroup="grp1" runat="server" BackColor="White" ControlToValidate="cmbboxinterested" ErrorMessage="select Interested " ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:DropDownList ID="cmbboxinterested" runat="server" 
                        Width="136px">
                        <asp:ListItem>SELECT</asp:ListItem>
                        <asp:ListItem>Sports &amp; Adventure </asp:ListItem>
                        <asp:ListItem>Movies &amp; Entertainment</asp:ListItem>
                        <asp:ListItem>Arts &amp; Science</asp:ListItem>
                        <asp:ListItem>Technology</asp:ListItem>
                         <asp:ListItem>Fashion</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Education Field<asp:RequiredFieldValidator ID="RequiredFieldValidator10" ValidationGroup="grp1" runat="server" BackColor="White" ControlToValidate="cmbboxedufield" ErrorMessage="select edu field" ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="cmbboxedufield" runat="server" Width="136px">
                        <asp:ListItem>SELECT</asp:ListItem>
                        <asp:ListItem>Advertising</asp:ListItem>
                        <asp:ListItem>Marketing</asp:ListItem>
                        <asp:ListItem>Administrative Services</asp:ListItem>
                        <asp:ListItem>Architecture</asp:ListItem>
                        <asp:ListItem>Computers/IT</asp:ListItem>
                        <asp:ListItem>Engineering/Technology</asp:ListItem>
                        <asp:ListItem>Arts</asp:ListItem>
                        <asp:ListItem>Commerce</asp:ListItem>
                        <asp:ListItem>Law</asp:ListItem>
                        <asp:ListItem>Fashion</asp:ListItem>
                        <asp:ListItem>Fine Arts</asp:ListItem>
                        <asp:ListItem>Management</asp:ListItem>
                        <asp:ListItem>Medicine</asp:ListItem>
                        <asp:ListItem>Shipping</asp:ListItem>
                        <asp:ListItem>Travel/Tourism</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp; &nbsp;&nbsp;
             <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" CssClass="btn_1 submit" />
                 <br />
             </div><br />
             <br />
             &nbsp;<br />
                <br />
             <div class="text-center">
     
       
                 <center>
  
                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="Vertical" Width="1028px">
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

            <asp:BoundField HeaderText="Name" HeaderStyle-VerticalAlign="Middle" DataField="name" ItemStyle-Width="150" >
            <HeaderStyle CssClass="grid" />
<ItemStyle HorizontalAlign="center" />
                    <HeaderStyle HorizontalAlign="center" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Age" DataField="age" ItemStyle-Width="50">
<ItemStyle HorizontalAlign="center" />
                    <HeaderStyle HorizontalAlign="center" />
            </asp:BoundField>
             <asp:BoundField DataField="email" HeaderText="Email" ItemStyle-Width="150">
            
<ItemStyle HorizontalAlign="center" />
                    <HeaderStyle HorizontalAlign="Justify" />
                 <HeaderStyle VerticalAlign="Middle" />
            </asp:BoundField>
            
            <asp:BoundField DataField="gender" HeaderText="Gender" ItemStyle-Width="75">
           
         
<ItemStyle HorizontalAlign="center" />
                    <HeaderStyle HorizontalAlign="center" />
            </asp:BoundField>
           
          <asp:BoundField DataField="tougue" HeaderText="Mother Tougue" ItemStyle-Width="200">
           
         <HeaderStyle HorizontalAlign="Justify" />
              <ItemStyle HorizontalAlign="Center" />
                    
            </asp:BoundField>

   <asp:BoundField DataField="religion" HeaderText="Religion" ItemStyle-Width="100">
           
         
<ItemStyle HorizontalAlign="center" />
                    <HeaderStyle HorizontalAlign="center" />
            </asp:BoundField>
            <asp:BoundField DataField="interested" HeaderText="Interested In" ItemStyle-Width="200">
           
         
<ItemStyle HorizontalAlign="center" />
                    <HeaderStyle HorizontalAlign="center" />
            </asp:BoundField>
                         
            <asp:BoundField DataField="education" HeaderText="Education Field" ItemStyle-Width="200">
           
         
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

   	  </div></div></div></div>
</asp:Content>