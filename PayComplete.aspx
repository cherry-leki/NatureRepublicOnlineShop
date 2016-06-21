<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PayComplete.aspx.cs" Inherits="PayComplete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body
        {
            width:100%;
            height:100%;
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
        .style14
        {
            width: 1583px;
            height: 235px;
            margin-left:-7px;
        }
        .contents
        {
            margin-left:-7px;
        }
        .tdfix
        {
            vertical-align:top;
        }
        .style15
        {
            width: 495px;
            height: 623px;
        }
        .style16
        {
            width: 791px;
            height: 623px;
        }
        .style17
        {
            width: 297px;
            height: 623px;
        }
        .style18
        {
            text-align: right;
        }
        .bottombutton
        {
            position:relative;
            top:-130px;
        }
        #imageButtonShopping
        {
            position:relative;
            top:-1px;
        }
        .style19
        {
            width: 791px;
            height: 105px;
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
                    <asp:ImageButton class="margin_left" ID="imgButtonLogin" runat="server" 
                        ImageUrl="~/Images/Common/staticBanner_Top_Login.png" OnClick ="LoginButton_Click"/>
                </td>
                <td>
                    <asp:ImageButton class="margin_left" ID="imgButtonJoin" runat="server" 
                        ImageUrl="~/Images/Common/staticBanner_Top_Signup.png" OnClick="JoinButton_Click"/>
                </td>
                <td>
                    <asp:ImageButton class="margin_left" ID="ImageButton3" runat="server" 
                        ImageUrl="~/Images/Common/staticBanner_Top_Basket.png" OnClick="BucketButton_Click"/>
                </td>
                <td>
                    <asp:ImageButton class="margin_left" ID="ImageButton4" runat="server" 
                        ImageUrl="~/Images/Common/staticBanner_Top_Myshop.png" OnClick="MyShopButton_Click" />
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
                    <asp:ImageButton ID="imgButtonLogo" runat="server" 
                        ImageUrl="~/Images/Common/staticBanner_Second_Logo.png" OnClick="imgButtonLogo_Click" />
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
                        ImageUrl="~/Images/Common/staticBanner_Menu_Shopping.png" OnClick="ImageButton8_Click" />
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
            <table class="contents">
            <tr>
            <td rowspan="2" class="tdfix">
                <img alt="" class="style15" 
                    src="Images/Payment_Complete/Payment_Complete_Menu.png" /></td>
            <td class="style18">
                <img alt="" class="style16" 
                    src="Images/Payment_Complete/Payment_Complete_Main.png" /><br />
                    <div class="bottombutton">
                <asp:ImageButton ID="imageButtonOrderConfirm" runat="server" 
                    ImageUrl="~/Images/Payment_Complete/Payment_Complete_OrderConfirm.png" OnClick="imageButtonOrderConfirm_Click" />
&nbsp;<asp:ImageButton ID="imageButtonShopping" runat="server" 
                    ImageUrl="~/Images/Payment_Complete/Payment_Complete_Shopping.png" OnClick="imageButtonShopping_Click" />
                    </div>
                </td>
            <td rowspan="2" class="tdfix">
                <img alt="" class="style17" 
                    src="Images/Payment_Complete/Payment_Complete_Blank.png" /></td>
            </tr>
            <tr>
            <td>
                <img alt="" class="style19" 
                    src="Images/Payment_Complete/Payment_Complete_Blankbottom.png" /></td>
            </tr>
            </table>
            <img alt="" class="style14" src="Images/Common/staticBanner_Bottom.png" />
    </div>
    </form>
</body>
</html>
