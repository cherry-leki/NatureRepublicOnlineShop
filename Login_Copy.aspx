<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login_Copy.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 38%;
        }
        .auto-style2 {
            height: 16px;
            width: 115px;
        }
        .auto-style5 {
            height: 16px;
            width: 55px;
        }
        .auto-style6 {
            width: 55px;
            height: 31px;
        }
        .auto-style7 {
            width: 115px;
            height: 31px;
        }
        .auto-style8 {
            margin-bottom: 0px;
        }
        .auto-style9 {
            width: 33px;
        }
        .auto-style14 {
            height: 99px;
        }
    </style>
</head>
<body style="width: 660px; height: 286px">
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td colspan="3" class="auto-style14">
                    &nbsp;</td>
                <td rowspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:TextBox ID="textboxID" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9" rowspan="2">
                    <asp:Button ID="buttonLogin" runat="server" OnClick="buttonLogin_Click" Text="로그인" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style7">
                    <asp:TextBox ID="textboxPW" runat="server" CssClass="auto-style8"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
