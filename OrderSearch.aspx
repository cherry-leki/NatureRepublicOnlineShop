<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OrderSearch.aspx.cs" Inherits="OrderSearch" %>

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
            text-align: right;
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
            width: 496px;
            height: 972px;
        }
        .style16
        {
            width: 809px;
            height: 72px;
        }
        .labelOrderTop
        {
            position:relative;
            left:10px;
            font-size:13px;
        }
        .style17
        {
            width: 278px;
            height: 972px;
        }
        
        .style18
        {
            width: 809px;
            height: 77px;
        }
        .style19
        {
            width: 809px;
            height: 116px;
        }
        .OrderPriceTable
        {
            background: url('Images/Order_Search/Order_Search_OrderPriceTable.png') no-repeat;
            height:198px;
        }
        .PaymentInfo
        {
            background: url('Images/Order_Search/Order_Search_PaymentInfo.png') no-repeat;
            height:115px;
        }
        .DeliveryInfo
        {
            background: url('Images/Order_Search/Order_Search_DeliveryInfo.png') no-repeat;
            height:182px;
        }
        .style20
        {
            width: 809px;
            height: 173px;
        }
        .style21
        {
            background: url('Images/Order_Search/Order_Search_PaymentInfo.png') no-repeat;
            height: 115px;
            text-align: left;
        }
        .style22
        {
            background: url('Images/Order_Search/Order_Search_DeliveryInfo.png') no-repeat;
            height: 182px;
            text-align: left;
        }
        .OrderPriceLabel
        {
            position:relative;
            left:-30px;
            top:-38px;
        }
        #labelOrderItemCount
        {
            position:relative;
            left:-135px;
        }
        #labelOrderItemAllPrice
        {
            font-weight:bold;
        }
        #labelOrderItemPrice
        {
            position:relative;
            top:18px;
        }
        #labelDeliveryFee
        {
            position:relative;
            top:36px;
        }
        #labelPoint
        {
            position:relative;
            top:50px;
        }
        #labelSumPrice
        {
            position:relative;
            top:69px;
            font-size:20px;
            font-weight:bold;
        }
        .style23
        {
            position: relative;
            left: 10px;
            font-size: 13px;
            text-align: left;
        }
        .Paymentlabel
        {
            position:relative;
            top:13px;
            left:170px;
        }
        #labelPaymentOrderDate
        {
        }
        #labelPaymentPayWay
        {
            position:relative;
            left:225px;
        }
        #labelPaymentPayPrice
        {
            position:relative;
            top:13px;
            left:27px;
            font-weight:bold;
        }
        #labelPaymentPoint
        {
            position:relative;
            top:14px;
            left:290px;
        }
        .Deliverylabel
        {
            position:relative;
            top:1px;
            left:170px;
        }
        #labelDeliveryName
        {
        }
        #labelDeliveryPhone
        {
            position:relative;
            top:13px;   
        }
        #labelDeliveryAddress
        {
            position:relative;
            top:23px;
        }
        #labelDeliveryComment
        {
            position:relative;
            top:37px;
        }
        #imageButtonOrderCancel
        {
            position:relative;
            top:-155px;
            left:-20px;
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
            <td rowspan="5" class="tdfix">
                <img alt="" class="style15" src="Images/Order_Search/Order_Search_Menu.png" /></td>
            <td>
                <img alt="" class="style16" 
                    src="Images/Order_Search/Order_Search_BlankCenter1.png" /><br />
                    <div class="style23">
                <asp:Label ID="labelOrderTopName" runat="server" Text=""></asp:Label>님의
                <asp:Label ID="labelOrderTopDate" runat="server" Text=""></asp:Label> 주문하신
                <asp:Label ID="labelOrderTopNumber" runat="server" Text=""></asp:Label> 상세 주문 내역입니다.
                </div>
            </td>
            <td rowspan="5" class="tdfix">
                <img alt="" class="style17" src="Images/Order_Search/Order_Search_Blank.png" /></td>
            </tr>
            <tr>
            <td class="OrderInfo">
            
                <img alt="" class="style18" 
                    src="Images/Order_Search/Order_Search_OrderInfo.png" /></td>
            </tr>
            <tr>
            <td>
                <img alt="" class="style19" 
                    src="Images/Order_Search/Order_Search_OrderSample.png" /></td>
            </tr>
            <tr>
            <td class="OrderPriceTable">
                <div class="OrderPriceLabel">
                <asp:Label ID="labelOrderItemCount" runat="server" Text="1"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="labelOrderItemAllPrice" runat="server" Text="9,900"></asp:Label><br />
                <asp:Label ID="labelOrderItemPrice" runat="server" Text="9,900"></asp:Label><br />
                <asp:Label ID="labelDeliveryFee" runat="server" Text="0"></asp:Label><br />
                <asp:Label ID="labelPoint" runat="server" ForeColor="#FFAF00" Text="990"></asp:Label><br />
                <asp:Label ID="labelSumPrice" runat="server" Text="9900" ForeColor="#197B30"></asp:Label>
                </div>
            </td>
            </tr>
            <tr>
            <td>
                <img alt="" class="style20" 
                    src="Images/Order_Search/Order_Search_BlankCenter2.png" />
                <asp:ImageButton ID="imageButtonOrderCancel" runat="server" 
                    ImageUrl="~/Images/Order_Search/Order_Search_OrderCancel.png" /></td>
            </tr>
            </table>
    <img alt="" class="style14" src="Images/Common/staticBanner_Bottom.png" />
    </div>
    </form>
</body>
</html>
