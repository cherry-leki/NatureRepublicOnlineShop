<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Join_Main.aspx.cs" Inherits="MemberJoin" %>

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
            width: 145px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td colspan="2">회원가입</td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="labelID" runat="server" Text="아이디"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="textBoxID" runat="server"></asp:TextBox>
&nbsp;
                    <asp:Label ID="labelDupCheck" runat="server"></asp:Label>
                    <asp:Button ID="buttonDupCheck" runat="server" Text="중복확인" OnClick="buttonDupCheck_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="labelPW" runat="server" Text="패스워드"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="textBoxPW" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="labelPW0" runat="server" Text="패스워드"></asp:Label>
                &nbsp;확인</td>
                <td>
                    <asp:TextBox ID="textBoxPWChck" runat="server"></asp:TextBox>
                    <asp:Label ID="labelPWCheck" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="labelName" runat="server" Text="이름"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="textBoxName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="labelAddr" runat="server" Text="주소"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="textBoxAddr" runat="server" Width="353px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="labelTel" runat="server" Text="전화번호"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="textBoxTel" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="buttonJoin" runat="server" Text="회원가입" OnClick="buttonJoin_Click" />
&nbsp;
                    <asp:Button ID="buttonCancel" runat="server" Text="취소" />
                &nbsp;&nbsp;
                    <asp:Label ID="labelOtherCheck" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
