<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication7.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="css/GIS.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <div class="banner1">
        <div class="contents">
            <div style="width: 100%; height: 480px; margin: 0px auto; padding-top: 100px;" class="jz">
                <div style="width: 360px; height: 280px; border: 1px ; margin: 0px auto;" class="jz">
    <form id="form1" runat="server">
    <div style="width: 100%; height: 50px; color: #fff; font-size: 18px; line-height: 50px;" class="jz">登陆</div>
                    <div style="width: 100%; height: 50px; font-size: 18px; line-height: 50px; margin-top: 20px;">
                        用户名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </div>
                    <div style="width: 100%; height: 50px;font-size: 18px; line-height: 50px;">
                        通行证：<asp:TextBox ID="TextBox2" runat="server"  TextMode="Password"></asp:TextBox>
                    </div>
                    <div style="width: 100%; height: 50px; font-size: 18px; line-height: 50px;">
                         <asp:Button ID="Button1" runat="server" Font-Names="微软雅黑" Height="25px" Width="78px" Text="登录" OnClick="Button1_Click" Font-Underline="True" />
                        <asp:Button ID="Button2" runat="server" Text="注册" Font-Names="微软雅黑" Height="25px" Width="78px" OnClick="Button2_Click"/>
                    </div> 
                    <div style="width: 100%; height: 50px; font-size: 18px; line-height: 50px;" class="jz">
                            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                    </div>
          </form>
                </div>
            </div>
        </div> 
        </div>
</body>
</html>
