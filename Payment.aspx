<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

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
            text-align: justify;
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
        .style23
        {
            width: 1583px;
            height: 235px;
            margin-left:-7px;
        }
        .tdfix
        {
            vertical-align:top;
        }
        .contents
        {
            margin-left:-7px;
        }
        .style24
        {
            width: 494px;
            height: 1112px;
        }
        .style25
        {
            width: 821px;
            height: 253px;
        }
        .style26
        {
            width: 821px;
            height: 116px;
        }
        .style27
        {
            width: 821px;
            height: 140px;
        }
        #labelPrice
        {
            font-weight:bold;
            font-size:23px;
            position:relative;
            left:675px;
            top:-86px;
        }
        .style28
        {
            width: 821px;
            height: 603px;
        }
        .style29
        {
            width: 268px;
            height: 1112px;
        }
        .bottombutton
        {            
            text-align: right;
            position:relative;
            top:-90px;
            left:-30px;
        }
        .paymentform
        {
            position:relative;
            top:-610px;
            left:145px;
        }
        #textBoxUsePoint
        {
            width:90px;
        }
        #labelPoint
        {
            font-size:13px;
            position:relative;
            left:184px;
            top:-2px;
        }
        .Price
        {
            position:relative;
            top:40px;
        }
        .radiobutton
        {
            font-size:14px;
            position:relative;
            top:65px;
            left:-5px;
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
                        ImageUrl="~/Images/Common/staticBanner_Top_Login.png"/>
                </td>
                <td>
                    <asp:ImageButton class="margin_left" ID="imgButtonJoin" runat="server" 
                        ImageUrl="~/Images/Common/staticBanner_Top_Signup.png"/>
                </td>
                <td>
                    <asp:ImageButton class="margin_left" ID="ImageButton3" runat="server" 
                        ImageUrl="~/Images/Common/staticBanner_Top_Basket.png"/>
                </td>
                <td>
                    <asp:ImageButton class="margin_left" ID="ImageButton4" runat="server" 
                        ImageUrl="~/Images/Common/staticBanner_Top_Myshop.png"/>
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
            <table class="contents">
            <tr>
            <td rowspan="4" class="tdfix">
                <img alt="" class="style24" src="Images/Payment/Payment_Menu.png" /></td>
            <td>
                <img alt="" class="style25" src="Images/Payment/Payment_Order.png" /></td>
            <td rowspan="4" class="tdfix">
                <img alt="" class="style29" src="Images/Payment/Payment_Blank.png" /></td>
            </tr>
            <tr>
            <td>
                <img alt="" class="style26" src="Images/Payment/Payment_Orderlist.png" /></td>
            </tr>
            <tr>
            <td>
                <img alt="" class="style27" src="Images/Payment/Payment_Orderprice.png" /><br />
                <asp:Label ID="labelPrice" runat="server" ForeColor="#197B30" Text="12,000"></asp:Label>
                </td>
            </tr>
            <tr>
            <td>
                <img alt="" class="style28" src="Images/Payment/Payment_OrderInfo.png" /><br />
                <div class="bottombutton">
                <asp:ImageButton ID="ImageButton12" runat="server" 
                    ImageUrl="~/Images/Payment/Payment_Paybutton.png" />
&nbsp;<asp:ImageButton ID="ImageButton13" runat="server" 
                    ImageUrl="~/Images/Payment/Payment_Backbutton.png" />
                    </div>
                <br />
                <div class="paymentform">
                <asp:TextBox ID="textBoxUsePoint" runat="server"></asp:TextBox>
                <asp:Label ID="labelPoint" runat="server" Text="1000" ForeColor="#E89748"></asp:Label>
                <br />
                <div class="Price">
                    <asp:Label ID="labelmeasure" runat="server" Text="\"></asp:Label>
                <asp:Label ID="labelPayPrice" runat="server" Text="12,000"></asp:Label>
                </div>
                <br />
                <div class="radiobutton">
                    <asp:RadioButton ID="radioButtonCard" runat="server" GroupName="Payment" 
                        Text="신용카드"/>
&nbsp;
                    <asp:RadioButton ID="radioButtonVirtual" runat="server" GroupName="Payment" 
                        Text="무통장입금(가상계좌)" />
&nbsp;
                    <asp:RadioButton ID="radioButtonDelivery" runat="server" GroupName="Payment" 
                        Text="실시간계좌이체" />
&nbsp;
                    <asp:RadioButton ID="radioButtonPayPhone" runat="server" GroupName="Payment" 
                        Text="휴대폰결제" />
&nbsp;
                    <asp:RadioButton ID="radioButtonKakao" runat="server" GroupName="Payment" 
                        Text="카카오페이" />
                </div>
                </div>
                </td>
            </tr>
            </table>
    <img alt="" class="style23" src="Images/Common/staticBanner_Bottom.png" />
    </div>
    </form>
</body>
</html>
