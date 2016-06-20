<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home_1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
            width: 100%;
            margin-top:-4px;
            margin-left:-9px;
        }
        .style15
        {
            width: 1583px;
            height: 404px;
        }
        .banner_bottom
        {
            background : url("Images/Home/Home_BannerBottom.png");
        }
        .style16
        {
            width:100%;
            height:60px;
            margin:0 auto;
            text-align:center;
        }
        .style17
        {
            width: 306px;
        }
        .style18
        {
            width: 306px;
        }
        .style19
        {
            width: 1583px;
            height:668px;
            background : url("Images/Home/Home_bottom_background.png");
            margin-left:-6px;
        }
        .style20
        {
            width: 100%;
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
                        ImageUrl="~/Images/Common/staticBanner_Top_Login.png" OnClick="LoginButton_Click"/>
                </td>
                <td>
                    <asp:ImageButton class="margin_left" ID="imgButtonJoin" runat="server" 
                        ImageUrl="~/Images/Common/staticBanner_Top_Signup.png" OnClick="JoinButton_Click" />
                </td>
                <td>
                    <asp:ImageButton class="margin_left" ID="imgButtonBucket" runat="server" 
                        ImageUrl="~/Images/Common/staticBanner_Top_Basket.png" OnClick="BucketButton_Click" />
                </td>
                <td>
                    <asp:ImageButton class="margin_left" ID="imgButtonMyshop" runat="server" 
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
                    <asp:ImageButton class="margin_left" ID="imgButtonShopping" runat="server" 
                        ImageUrl="~/Images/Common/staticBanner_Menu_Shopping.png" OnClick="imgButtonShopping_Click" />
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
        <table class="style14">
            <tr>
                <td colspan="3">
                    <img alt="" class="style15" src="Images/Home/shopMain_Banner1.png" /></td>
            </tr>
            <tr class="banner_bottom">
                <td class="style17">
                    &nbsp;</td>
                <td>
                    <table class="style16">
                        <tr>
                            <td>
                                <asp:ImageButton ID="ImageButton12" runat="server" 
                                    ImageUrl="~/Images/Home/Home_BannerBottom_left.png" />
                                &nbsp;
                            </td>
                            <td>
                                <asp:ImageButton ID="ImageButton13" runat="server" 
                                    ImageUrl="~/Images/Home/Home_BannerBottom_1_act.png" />
                            </td>
                            <td>
                                <asp:ImageButton ID="ImageButton14" runat="server" 
                                    ImageUrl="~/Images/Home/Home_BannerBottom_2_inact.png" />
                            </td>
                            <td>
                                <asp:ImageButton ID="ImageButton15" runat="server" 
                                    ImageUrl="~/Images/Home/Home_BannerBottom_3_inact.png" />
                            </td>
                            <td>
                                <asp:ImageButton ID="ImageButton16" runat="server" 
                                    ImageUrl="~/Images/Home/Home_BannerBottom_4_inact.png" />
                            </td>
                            <td>
                                <asp:ImageButton ID="ImageButton17" runat="server" 
                                    ImageUrl="~/Images/Home/Home_BannerBottom_5_inact.png" />
                            </td>
                            <td>
                                &nbsp;<asp:ImageButton ID="ImageButton18" runat="server" 
                                    ImageUrl="~/Images/Home/Home_BannerBottom_right.png" />
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="style18">
                    &nbsp;</td>
            </tr>
        </table>
        <table class="style19">
            <tr>
                <td>
                    <table class="style20">
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <br />
    
    </div>
    </form>
</body>
</html>
