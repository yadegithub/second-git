<%@ Page Title="Contact" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Patient.aspx.vb" Inherits="WebApplication1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-top:30px;">
    
        <div class="Button1">
         <asp:Button ID="Button1" runat="server" style="margin-top:10px"  Text="Insert" BackColor="#990000" Width="100px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="Button2" runat="server" style="margin-top:10px"  Text="Update" BackColor="#990000" Width="100px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="Button3" runat="server" style="margin-top:10px"  Text="Delete" BackColor="#990000" ForeColor="White" OnClientClick="confirm(&quot;ARE YOU SURE &quot;)" Width="100px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
           
            <table class="nav-justified">
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="PatientID" Width="100px"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDoneurid" runat="server"></asp:TextBox>
                    </td>
                    <td rowspan="6">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="PID" DataSourceID="SqlDataSource1" Width="80%">
                            <Columns>
                                <asp:BoundField DataField="PID" HeaderText="PID" ReadOnly="True" SortExpression="PID" />
                                <asp:BoundField DataField="PName" HeaderText="PName" SortExpression="PName" />
                                <asp:BoundField DataField="PAge" HeaderText="PAge" SortExpression="PAge" />
                                <asp:BoundField DataField="Pphone" HeaderText="Pphone" SortExpression="Pphone" />
                                <asp:BoundField DataField="PGen" HeaderText="PGen" SortExpression="PGen" />
                                <asp:BoundField DataField="PBGroup" HeaderText="PBGroup" SortExpression="PBGroup" />
                                <asp:BoundField DataField="PAddress" HeaderText="PAddress" SortExpression="PAddress" />
                            </Columns>
                            <HeaderStyle BackColor="Maroon" ForeColor="White" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Blood_BankConnectionString %>" SelectCommand="SELECT * FROM [pateint]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="PateintNom" Width="100px"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDNom" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Sex" Width="100px"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropSex" runat="server" style="margin-bottom: 57px;" Width="100px">
                            <asp:ListItem>Malle</asp:ListItem>
                            <asp:ListItem>Femelle</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Phone" Width="100px"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTel" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="DGroup" Width="100px"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDGroup" runat="server" style="margin-bottom: 57" Width="100px">
                            <asp:ListItem>A+</asp:ListItem>
                            <asp:ListItem>A-</asp:ListItem>
                            <asp:ListItem>B-</asp:ListItem>
                            <asp:ListItem>B+</asp:ListItem>
                            <asp:ListItem>O+</asp:ListItem>
                            <asp:ListItem>O-</asp:ListItem>
                            <asp:ListItem>AB-</asp:ListItem>
                            <asp:ListItem>AB+</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="PAdresse" Width="100px"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDAdresse" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
        
           
            </div>
        
            </div>
</asp:Content>
