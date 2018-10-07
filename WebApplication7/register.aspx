<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WebApplication7.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/GIS.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
        <div class="banner2">
        <div class="contents">
            <div style="width: 100%; height: 480px; margin: 0px auto; padding-top: 100px;">
                 <div style="width: 360px; height: 280px; border: 1px ; margin: 0px auto;" class="jz">
                    <form id="form1" runat="server" method="get">
                        <div style="width:100% ; height:50px; color:#fff; font-size:18px;line-height:50px;" class="jz">账号注册</div>
                        <div style="width: 100%; height: 50px; font-size: 18px; line-height: 50px; margin-top: 20px;" class="jz">
                            用户名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </div>
                        <div style="width: 100%; height: 50px; font-size: 18px; line-height: 50px; margin-top: 20px;" class="jz">
                            通行证：<asp:TextBox ID="TextBox2" runat="server"  TextMode="Password"></asp:TextBox>
                        </div>
                        <div style="width: 95%; height: 50px; font-size: 18px; line-height: 50px; margin-top: 20px;" class="jz">
                         通行证确认：<asp:TextBox ID="TextBox3" runat="server" style="margin-right: 18px" TextMode="Password" ></asp:TextBox>
                        </div>
                        <div style="width: 100%; height: 50px; font-size: 18px; line-height: 50px; margin-top: 20px;" class="jz">
                        <asp:Button ID="Button1" runat="server" Font-Names="微软雅黑" Height="25px" Width="78px" Text="注册" OnClick="Button1_Click" Font-Underline="True" />
                        <asp:Button ID="Button2" runat="server" Text="返回" Font-Names="微软雅黑" Height="25px" Width="78px" OnClick="Button2_Click"/>
                        </div>
                        <div style="width: 100%; height: 50px; font-size: 18px; line-height: 50px; margin-top: 20px;" class="jz">
                            <asp:Label ID="Label1" runat="server" ForeColor="#ff3300"></asp:Label>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
