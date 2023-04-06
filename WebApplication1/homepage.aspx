<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="homepage.aspx.vb" Inherits="WebApplication1.homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 258px;
            height: 106px;
        }
        .auto-style2 {
            width: 841px;
            height: 110px;
        }
        body{
            background-color:whitesmoke;
            margin-left:7%;
        }
        .auto-style3 {
            width: 1129px;
            height: 350px;
        }
    </style>
</head>
<body style="height: 156px">
    <form id="form1" runat="server">
        <div>

            <img alt="" class="auto-style1" src="Stock/logo.gif" /><img alt="" class="auto-style2" src="Stock/home.png" /
        </div>
        <div>

            <asp:Menu ID="Menu1" runat="server" ForeColor="White" Orientation="Horizontal">
                <DynamicMenuItemStyle HorizontalPadding="90px" />
                <Items>
                    <asp:MenuItem Text="Home" Value="Home" NavigateUrl="homepage.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Doneurs&nbsp;" Value="Doneurs&nbsp;" NavigateUrl="WebForm1.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Pateints" Value="Pateints" NavigateUrl="Patient.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="transfere sang" Value="transfere sang" NavigateUrl="TransfereBlood.aspx"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="White" />
                <StaticMenuItemStyle HorizontalPadding="105px" BackColor="#990000"  VerticalPadding="10px" />
                
            </asp:Menu>

        </div>
        <div>

            <img alt="" class="auto-style3" src="Stock/blood%20bank.jfif" />
             <h1>قوله تعالى (وَمَنْ أَحْيَاهَا فَكَأَنَّمَا أَحْيَا النَّاسَ جَمِيعاً</h1>
        </div>
        <div>
            <h1> Doneurs</h1>
            <p>ggggggggggggggggggggggggggggggggggggggg  bxmzbv.kjmnc mcb ,</p>
            <p>ggggggggggggggggggggggggggggggggggggggg  bxmzbv.kjmnc mcb ,</p>
            <p>ggggggggggggggggggggggggggggggggggggggg  bxmzbv.kjmnc mcb ,</p>
            <p>ggggggggggggggggggggggggggggggggggggggg  bxmzbv.kjmnc mcb ,</p>
        </div>
    </form>
</body>
</html>
<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" runat="server" href="~/">BloodBank</a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a runat="server" href="~/">Home</a></li>
                <li><a runat="server" href="~/Doneur">Doneur</a></li>
                <li><a runat="server" href="~/Pateints">Pateints</a></li>
                <li><a runat="server" href="~/transfere">Donate</a></li>
                <li><a runat="server" href="~/TransfereSang">Transfere</a></li>
            </ul>
        </div>
    </div>
</div>