<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MemberMypage.aspx.cs" Inherits="MemberMypage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 394px;
        }
        .auto-style3 {
            width: 128px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="labelID" runat="server" Text="아이디"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="textBoxID" runat="server"></asp:TextBox>
                </td>
                <td rowspan="2">
                    <asp:Button ID="buttonUpdate" runat="server" OnClick="buttonUpdate_Click" Text="확인" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="labelPW" runat="server" Text="패스워드"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="textBoxPW" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
