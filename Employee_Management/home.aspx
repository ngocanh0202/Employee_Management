<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Employee_Management.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="css/master-page.css" rel ="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="banner">
                <h1>EMLPOYEE MANAGEMENT</h1>
            </div>
            <div class="active">
                <div class="function-button">
                    <div style="height: 49px; border-bottom: 3px solid;">
                        <p id="Function">
                            Function
                        </p>
                    </div>
                    <div class="function">
                        <div class="button">
                            <asp:Button ID="Button1" runat="server" Text="The total earnings" Width="200px" Height="35px" Font-Bold="true" />
                        </div>
                        <div class="button">
                            <asp:Button ID="Button2" runat="server" Text="Total number of vacation days" Width="200px" Height="35px" Font-Bold="true" />
                        </div>
                        <div class="button">
                            <asp:Button class="aa" ID="Button3" runat="server" Text="Average benefits paid" Width="200px" Height="35px" Font-Bold="true" />
                        </div>
                    </div>
                </div>
                <div class="line"></div>
                <div class="content">
                    <asp:ContentPlaceHolder ID="ContentPlaceHolder1" runat="server"></asp:ContentPlaceHolder>
                </div>
                <div class="inform">
                    <div style="margin-left: 10px;">
                        <asp:ImageButton ID="ImageButton1" runat="server" AlternateText="" ImageUrl="~/img/mess.png" /></div>
                    <span>Thông Báo</span>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
