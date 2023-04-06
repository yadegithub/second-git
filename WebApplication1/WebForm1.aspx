﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
                        <asp:Label ID="Label2" runat="server" Text="DoneurID" Width="100px"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDoneurid" runat="server"></asp:TextBox>
                    </td>
                    <td rowspan="6">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="DoneurID" DataSourceID="SqlDataSource1" Width="80%">
                            <Columns>
                                <asp:BoundField DataField="DoneurID" HeaderText="DoneurID" ReadOnly="True" SortExpression="DoneurID" />
                                <asp:BoundField DataField="nomD" HeaderText="nomD" SortExpression="nomD" />
                                <asp:BoundField DataField="sexD" HeaderText="sexD" SortExpression="sexD" />
                                <asp:BoundField DataField="TelD" HeaderText="TelD" SortExpression="TelD" />
                                <asp:BoundField DataField="DGroup" HeaderText="DGroup" SortExpression="DGroup" />
                                <asp:BoundField DataField="DAdresse" HeaderText="DAdresse" SortExpression="DAdresse" />
                            </Columns>
                            <HeaderStyle BackColor="Maroon" ForeColor="White" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Blood_BankConnectionString %>" SelectCommand="SELECT * FROM [Doneur]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="DoneurNom" Width="100px"></asp:Label>
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
                        <asp:DropDownList ID="DropSex" runat="server" style="margin-bottom: 57" Width="100px">
                            <asp:ListItem>Malle</asp:ListItem>
                            <asp:ListItem>Femelle</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Tel" Width="100px"></asp:Label>
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
                        <asp:Label ID="Label7" runat="server" Text="DAdresse" Width="100px"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDAdresse" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
        
           
            </div>
        
            </div>
    </form>
</body>
</html>
