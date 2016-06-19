<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Purchase.aspx.cs" Inherits="Purchase" %>

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
        .menu
        {
            vertical-align:top;
        }
        .style24
        {
            width: 496px;
            height: 1148px;
        }
        .style25
        {
            width: 811px;
            height: 268px;
        }
        .style26
        {
            width: 811px;
            height: 116px;
        }
        .style27
        {
            width: 811px;
            height: 86px;
        }
        .OrderForm
        {
            background: url('Images/Purchase/Purchase_OrderForm.png') no-repeat;
            width:100%;
            height:678px;
        }
        .OrderFormdiv
        {
            position:relative;
            left:148px;
        }
        .style28
        {
            position:relative;
            width: 278px;
            height: 1148px;
            top:0px;
        }
        .style30
        {
            height: 23px;
        }
        #labelName
        {    
            position:relative;
            top:-108px;
        }
        #labelEmail
        {
            position:relative;
            top:-108px;
            left:244px;
        }
        #labelPhone
        {
            position:relative;
            top:-95px;
        }
        #labelAddress
        {
            position:relative;
            top:-81px;
        }
        .DeliveryAddressRadioButton
        {
            position:relative;
            top:-45px;
            left:-7px;
        }
        #textBoxReceiverName
        {
            position:relative;
            top:-56px;
            width:130px;
        }
        .Phone
        {
            position:relative;
            top:-44px;
            left:-9px;
        }
        #dropdownlistPhone, #textBoxPhone1, #textBoxPhone2
        {
            width:60px;
        }
        .MsgRadioButton
        {
            position:relative;
            top:-57px;
            left:-7px;
        }
        #textBoxAddress
        {
            width:500px;
            height:55px;
            position:relative;
            top:-60px;
        }
        #textBoxMemo
        {
            position:relative;
            top:-13px;
            width:380px;
        }
        .PurchaseButton
        {
            position:relative;
            top:-160px;
            left:-23px;
            text-align: right;
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
            <div class="context">
            <table>
            <tr>
            <td class="menu" rowspan="5">
                <img alt="" class="style24" src="Images/Purchase/Purchase_Menu.png" />
                </td>
            <td>
                <img alt="" class="style25" src="Images/Purchase/Purchase_Purchase.png" /></td>
            <td rowspan="5">
                <img alt="" class="style28" src="Images/Purchase/Purchase_Blank.png" /></td>
            </tr>
            <tr>
            <td>
                <img alt="" class="style26" src="Images/Purchase/Purchase_Demo.png" /><br />
                </td>
            </tr>
            <tr>
            <td>
                <img alt="" class="style27" src="Images/Purchase/Purchase_Price.png" /></td>
            </tr>
            <tr>
            <td class="OrderForm">
            <div class="OrderFormdiv">
                <asp:Label ID="labelName" runat="server" Text="a"></asp:Label>
                <asp:Label ID="labelEmail" runat="server" Text="b"></asp:Label>
                <br />
                <asp:Label ID="labelPhone" runat="server" Text="c"></asp:Label>
                <br />
                <asp:Label ID="labelAddress" runat="server" Text="dddddddddd"></asp:Label>
                <br />
                <br />
                <table class="DeliveryAddressRadioButton">
                    <tr>
                        <td>
                            <asp:RadioButton ID="radioButtonIdentical" runat="server" 
                                GroupName="DeliveryAddress" Text="주문 고객과 동일한 주소" checked/>
&nbsp;&nbsp;
                            <asp:RadioButton ID="radioButtonNew" runat="server" GroupName="DeliveryAddress" 
                                Text="새로운 배송지" />
                        </td>
                    </tr>
                </table>
                <br />
                <asp:TextBox ID="textBoxReceiverName" runat="server"></asp:TextBox>
                <br />
                <table class="Phone">
                    <tr>
                        <td>
&nbsp;<asp:DropDownList ID="dropdownlistPhone" runat="server">
                                <asp:ListItem>010</asp:ListItem>
                                <asp:ListItem>011</asp:ListItem>
                                <asp:ListItem>012</asp:ListItem>
                                <asp:ListItem>016</asp:ListItem>
                                <asp:ListItem>017</asp:ListItem>
                                <asp:ListItem>018</asp:ListItem>
                                <asp:ListItem>019</asp:ListItem>
                                <asp:ListItem>0502</asp:ListItem>
                                <asp:ListItem>0505</asp:ListItem>
                                <asp:ListItem>0506</asp:ListItem>
                            </asp:DropDownList>
                            -
                            <asp:TextBox ID="textBoxPhone1" runat="server"></asp:TextBox>
&nbsp;-
                            <asp:TextBox ID="textBoxPhone2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <br />
                <table class="MsgRadioButton">
                    <tr>
                        <td class="style30">
                            <asp:RadioButton ID="radioButtonMsgOk" runat="server" GroupName="Msg" 
                                Text="받음" />
&nbsp;&nbsp;
                            <asp:RadioButton ID="radioButtonMsgNo" runat="server" GroupName="Msg" 
                                Text="받지 않음" />
                        </td>
                    </tr>
                </table>
                <br />
                <asp:TextBox ID="textBoxAddress" runat="server"></asp:TextBox>
                <br />
                <asp:TextBox ID="textBoxMemo" runat="server"></asp:TextBox>
                </div>
                </td>
            </tr>
            <tr>
            <td class="PurchaseButton">
                <asp:ImageButton ID="imageButtonPay" runat="server" 
                    ImageUrl="~/Images/Purchase/Purchase_Paybutton.png" />
                &nbsp;<asp:ImageButton ID="imageButtonBack" runat="server" 
                    ImageUrl="~/Images/Purchase/Purchase_Backbutton.png" />
            </td>
            </tr>
            </table>
            </div>
            <img alt="" class="style23" src="Images/Common/staticBanner_Bottom.png" />
    
    </div>
    </form>
</body>
</html>
