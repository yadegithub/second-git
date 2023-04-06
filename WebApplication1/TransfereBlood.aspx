<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="TransfereBlood.aspx.vb" Inherits="WebApplication1.TransfereBlood" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-top:50px;">
    <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Blood Group" Width="200px" Font-Bold="True" Font-Size="Large" ForeColor="#990000"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <table align="center" class="auto-style1">
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="PID" DataValueField="PID" Width="200px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Blood_BankConnectionString %>" SelectCommand="SELECT [PID] FROM [pateint]"></asp:SqlDataSource>
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table align="center" class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="No Blood avialbel" Width="200px" ForeColor="#990000"></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="Button2" runat="server" BackColor="#990000" Text="Transfer" />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
</asp:Content>
