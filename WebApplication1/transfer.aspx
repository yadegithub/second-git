<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="transfer.aspx.vb" Inherits="WebApplication1.transfer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div style="margin-top:30px;">
       <table  class="auto-style1">
            <tr>
              
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" BackColor="White" Font-Size="Large" ForeColor="#990000" Text="list doneurs" Width="200px"></asp:Label>
                </td>
      <td class="auto-style2">
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<td>
       <asp:Label ID="Label4" runat="server" BackColor="White" Text="stok du sang" Width="200px" Font-Size="Large" ForeColor="#990000"></asp:Label>
                    
               
           
            </tr>
        </table>
       
       

       
         
                 <br />
                 <br />
                 <table class="nav-justified">
                     <tr>
                         <td>
                             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Blood_BankConnectionString %>" SelectCommand="SELECT [nomD], [DGroup] FROM [Doneur]"></asp:SqlDataSource>
                             <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="80%">
                                 <Columns>
                                     <asp:BoundField DataField="nomD" HeaderText="nomD" SortExpression="nomD" />
                                     <asp:BoundField DataField="DGroup" HeaderText="DGroup" SortExpression="DGroup" />
                                     <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Select Row" ShowHeader="True" Text="Select" />
                                 </Columns>
                                 <HeaderStyle BackColor="#990000" />
                             </asp:GridView>
                         </td>
                         <td>
                             <asp:GridView ID="GridView5" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource3" Width="80%">
                                 <Columns>
                                     <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                                     <asp:BoundField DataField="PStock" HeaderText="PStock" SortExpression="PStock" />
                                     <asp:BoundField DataField="PBGroup" HeaderText="PBGroup" SortExpression="PBGroup" />
                                 </Columns>
                                 <HeaderStyle BackColor="#990000" />
                             </asp:GridView>
                             <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Blood_BankConnectionString %>" SelectCommand="SELECT * FROM [BStock]"></asp:SqlDataSource>
                         </td>
                     </tr>
        </table>
                 <br />
                 <br />
                 <br />
            
       </div>
    
          
        <table align="center" class="auto-style1">
            <tr>
                 <td>
                     &nbsp;</td>
                <td>
                     &nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
                
                <td>
                     <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
        </table>
    <div class="Button1">

        
             <center><asp:Button ID="Button1" BackColor="#990000" runat="server" Text="Transfer" /> </center>
                 </div>
                    </asp:Content>
 