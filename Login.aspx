<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        body
        {
            width:100%;
            height:100%;
            overflow-x:hidden;
        }
        th, td
        {
            padding: 0px;
        }
        .margin_left
        {
            margin-left:-2px;
        }
        .style1
        {
            width: 100%;
            margin-top:-10px;
            margin-left:-7px;
        }
        .style2
        {
            width: 638px;
            height: 27px;
        }
        .style3
        {
            width: 662px;
            height: 27px;
            margin-left:-2px;
        }
        .style4
        {
            width: 1583px;
            height: 17px;
            margin-top:-2px;
        }
        .style5
        {
            width: 100%;
            margin-left:-7px;
        }
        .style6
        {
            width: 326px;
            height: 65px;
        }
        .style7
        {
            width: 624px;
            height: 65px;
            margin-left:-2px;
        }
        .style8
        {
            width: 115px;
            height: 65px;
            margin-left:-2px;
        }
        .style9
        {
            width: 314px;
            height: 65px;
            margin-left:-2px;
        }
        .style10
        {
            width: 1583px;
            height: 5px;
            margin-top:-2px;
            margin-left:-2px;
        }
        .style11
        {
            width: 304px;
            height: 41px;
            margin-left:-2px;
        }
        .style12
        {
            width: 137px;
            height: 41px;
            margin-left:-2px;
        }
        .style13
        {
            width: 314px;
            height: 41px;
            margin-left:-2px;
        }
        .context
        {
            width: 100%;
            margin-left:-7px;
            
        }
        .style14
        {
            background: url('Images/Login/LoginBackground.png') no-repeat;
            width:1583px;
            height:730px;
        }
        .LoginForm
        {
            position:relative;
            left:540px;
        }
        #txtID
        {
            position:relative;
            left:78px;
            top:-22px;
        }
        #txtPW
        {
            position:relative;
            left:78px;
            top:-16px;
        }
        #ImgButtonLogin
        {
            position:relative;
            left:265px;
            top:-72px;
        }
        .CheckboxID
        {
            position:relative;
            top:-60px;
            left:30px;
        }
        #ImgButtonSignup
        {
        }
        #ImgButtonFindID
        {
            position:relative;
            left:28px;
        }
        #ImgButtonFindPW
        {
            position:relative;
            left:65px;
        }
        .style22
        {
            width: 1583px;
            height: 114px;
            margin-left:-7px;
        }
        .style23
        {
            width: 1583px;
            height: 235px;
            margin-left:-7px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
                    <img alt="" class="style2" src="Images/Common/staticBanner_Top_1.png" /></td>
                <td class="test">
                    <asp:ImageButton class="margin_left" ID="ImageButton1" runat="server" 
                        ImageUrl="~/Images/Common/staticBanner_Top_Login.png"/>
                </td>
                <td>
                    <asp:ImageButton class="margin_left" ID="ImageButton2" runat="server" 
                        ImageUrl="~/Images/Common/staticBanner_Top_Signup.png" />
                </td>
                <td>
                    <asp:ImageButton class="margin_left" ID="ImageButton3" runat="server" 
                        ImageUrl="~/Images/Common/staticBanner_Top_Basket.png" />
                </td>
                <td>
                    <asp:ImageButton class="margin_left" ID="ImageButton4" runat="server" 
                        ImageUrl="~/Images/Common/staticBanner_Top_Myshop.png" />
                </td>
                <td>
                    <img alt="" class="style3" src="Images/Common/staticBanner_Top_2.png" /></td>
            </tr>
            <tr>
                <td colspan="6">
                    <img alt="" class="style4" src="Images/Common/staticBanner_First.png" /></td>
            </tr>
        </table>
    
        <table class="style5">
            <tr>
                <td>
                    <img alt="" class="style6" src="Images/Common/staticBanner_Second_1.png" /></td>
                <td>
                    <asp:ImageButton ID="ImageButton5" runat="server" 
                        ImageUrl="~/Images/Common/staticBanner_Second_Logo.png" />
                </td>
                <td>
                    <img alt="" class="style7" src="Images/Common/staticBanner_Second_Search.png" /></td>
                <td>
                    <img alt="" class="style8" src="Images/Common/staticBanner_Second_Video.png" /></td>
                <td>
                    <img alt="" class="style9" src="Images/Common/staticBanner_Second_2.png" /></td>
            </tr>
            <tr>
                <td colspan="5">
                    <img alt="" class="style10" src="Images/Common/staticBanner_Third.png" /></td>
            </tr>
        </table>
        <table class="style5">
            <tr>
                <td>
                    <img alt="" class="style11" src="Images/Common/staticBanner_Menu_1.png" /></td>
                <td>
                    <asp:ImageButton class="margin_left" ID="ImageButton6" runat="server" 
                        ImageUrl="~/Images/Common/staticBanner_Menu_Brand.png" />
                </td>
                <td>
                    <asp:ImageButton class="margin_left" ID="ImageButton7" runat="server" 
                        ImageUrl="~/Images/Common/staticBanner_Menu_Journey.png" />
                </td>
                <td>
                    <asp:ImageButton class="margin_left" ID="ImageButton8" runat="server" 
                        ImageUrl="~/Images/Common/staticBanner_Menu_Shopping.png" />
                </td>
                <td>
                    <asp:ImageButton class="margin_left" ID="ImageButton9" runat="server" 
                        ImageUrl="~/Images/Common/staticBanner_Menu_Event.png" />
                </td>
                <td>
                    <asp:ImageButton class="margin_left" ID="ImageButton10" runat="server" 
                        ImageUrl="~/Images/Common/staticBanner_Menu_Community.png" />
                </td>
                <td>
                    <img alt="" class="style12" src="Images/Common/staticBanner_Menu_Best1.png" /></td>
                <td>
                    <asp:ImageButton class="margin_left" ID="ImageButton11" runat="server" 
                        ImageUrl="~/Images/Common/staticBanner_Menu_Best2.png" />
                </td>
                <td>
                    <img alt="" class="style13" src="Images/Common/staticBanner_Menu_2.png" /></td>
            </tr>
            </table>
            <table class="context">
            <tr>
            <td class="style14">
            <div class="LoginForm">
                <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
                <br />
                <asp:TextBox ID="txtPW" runat="server"></asp:TextBox>
                <br />
                <asp:ImageButton ID="ImgButtonLogin" runat="server" 
                    ImageUrl="~/Images/Login/LoginButton.png" />
                <br />
                <div class="CheckboxID">
                <asp:CheckBox ID="CheckboxID" runat="server" Text="아이디 저장" />
                <br />
                </div>
                <asp:ImageButton ID="ImgButtonSignup" runat="server" 
                    ImageUrl="~/Images/Login/SignupButton.png" />
                <asp:ImageButton ID="ImgButtonFindID" runat="server" 
                    ImageUrl="~/Images/Login/FindIDButton.png" />
                <asp:ImageButton ID="ImgButtonFindPW" runat="server" 
                    ImageUrl="~/Images/Login/FindPWButton.png" />
                    </div>
            </td>
            </tr>
            </table>
            <img alt="" class="style22" src="Images/Signup_Info/Signup_Info_Bottom.png" /><br />
        <br />
        <img alt="" class="style23" src="Images/Common/staticBanner_Bottom.png" /></div>
    </div>
    </form>
</body>
</html>
