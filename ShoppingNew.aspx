<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShoppingNew.aspx.cs" Inherits="ShoppingNew" %>

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
            height: 439px;
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
            width: 1583px;
            height: 143px;
            position:relative;
            top:-4px;
            left:-7px;
        }
        .style16
        {
            width: 302px;
            height: 1390px;
        }
        .style17
        {
            width: 980px;
            height: 61px;
        }
        .style18
        {
            width: 301px;
            height: 1390px;
        }
        .style20
        {
            text-align: center;
        }
        .style21
        {
            width: 980px;
            height: 23px;
        }
        .style22
        {
            width: 980px;
            height: 22px;
        }
        .style23
        {
            width: 773px;
            height: 254px;
        }
        .style24
        {
            width: 207px;
            height: 254px;
        }
        .style25
        {
            width: 980px;
            height: 21px;
        }
        .style26
        {
            width: 100%;
        }
        .style27
        {
            width: 980px;
            height: 56px;
        }
        #imageButtonMenu2Foam, #imageButtonMenu2Cream,#imageButtonMenu2Oil,#imageButtonMenu2Jel,
        #imageButtonMenu2Tissue,#imageButtonMenu2Etc
        {
            margin-left:-6px;
        }
        #imageButtonOrderSell, #imageButtonOrderComment, #imageButtonOrderLowPrice, #imageButtonOrderHighPrice
        {
            margin-left:-6px;
        }
        .Itemtd
        {
            text-align:center;
            padding-top:49px;
            padding-bottom:49px;
            width:245px;
        }
        .ItemlabelTable
        {
            text-align: left;
            font-size:13px;
        }
        .Itemlabeltd
        {
            text-align:left;
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
                        ImageUrl="~/Images/Common/staticBanner_Top_Signup.png" OnClick="JoinButton_Click"/>
                </td>
                <td>
                    <asp:ImageButton class="margin_left" ID="ImageButton3" runat="server" 
                        ImageUrl="~/Images/Common/staticBanner_Top_Basket.png" OnClick="BucketButton_Click" />
                </td>
                <td>
                    <asp:ImageButton class="margin_left" ID="ImageButton4" runat="server" 
                        ImageUrl="~/Images/Common/staticBanner_Top_Myshop.png" OnClick="MyShopButton_Click"/>
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
            <td colspan="3">
                <img alt="" class="style15" 
                    src="Images/Shopping/Cleansing/Shopping_Cleansing.png" /></td>
            </tr>
            <tr>
            <td class="tdfix" rowspan="11">
                <img alt="" class="style16" src="Images/Shopping/Shop/Shopping_BlankLeft.png" /></td>
            <td class="style20">
                <img alt="" class="style17" 
                    src="Images/Shopping/Shop/Shopping_BlankCenter1.png" /></td>
            <td class="tdfix" rowspan="11">
                <img alt="" class="style18" 
                    src="Images/Shopping/Shop/Shopping_BlankRight.png" /></td>
            </tr>
            <tr>
            <td class="style20">
                <asp:ImageButton ID="imageButtonMenu1Cleansing" runat="server" 
                    ImageUrl="~/Images/Shopping/Cleansing/Shopping_Menu_CleansingOn.png" />
                &nbsp;&nbsp;
                <asp:ImageButton ID="imageButtonMenu1SkinCare" runat="server" 
                    ImageUrl="~/Images/Shopping/Cleansing/Shopping_Menu_SkinCareOff.png" />
                &nbsp;&nbsp;
                <asp:ImageButton ID="imageButtonMenu1PackMask" runat="server" 
                    ImageUrl="~/Images/Shopping/Cleansing/Shopping_Menu_PackMaskOff.png" />
                &nbsp;&nbsp;
                <asp:ImageButton ID="imageButtonMenu1Makeup" runat="server" 
                    ImageUrl="~/Images/Shopping/Cleansing/Shopping_Menu_MakeupOff.png" />
                &nbsp;&nbsp;
                <asp:ImageButton ID="imageButtonMenu1Bodyhair" runat="server" 
                    ImageUrl="~/Images/Shopping/Cleansing/Shopping_Menu_BodyHairOff.png" />
                &nbsp;&nbsp;
                <asp:ImageButton ID="imageButtonMenu1Man" runat="server" 
                    ImageUrl="~/Images/Shopping/Cleansing/Shopping_Menu_ManOff.png" />
                &nbsp;&nbsp;
                <asp:ImageButton ID="imageButtonMenu1Blo" runat="server" 
                    ImageUrl="~/Images/Shopping/Cleansing/Shopping_Menu_bloOff.png" />
                </td>
            </tr>
            <tr>
            <td class="style20">
                <img alt="" class="style21" 
                    src="Images/Shopping/Shop/Shopping_BlankCenter2.png" /></td>
            </tr>
            <tr>
            <td class="style20">
                <asp:ImageButton ID="imageButtonMenu2All" runat="server"
                    ImageUrl="~/Images/Shopping/Cleansing/Shopping_Cleansing_Menu2_allOn.png" />
                <asp:ImageButton ID="imageButtonMenu2Foam" runat="server" 
                    
                    ImageUrl="~/Images/Shopping/Cleansing/Shopping_Cleansing_Menu2_CleansingFoamOff.png" />
                <asp:ImageButton ID="imageButtonMenu2Cream" runat="server" 
                    
                    ImageUrl="~/Images/Shopping/Cleansing/Shopping_Cleansing_Menu2_CleansingCreamOff.png" />
                <asp:ImageButton ID="imageButtonMenu2Oil" runat="server" 
                    
                    ImageUrl="~/Images/Shopping/Cleansing/Shopping_Cleansing_Menu2_CleansingOilOff.png" />
                <asp:ImageButton ID="imageButtonMenu2Jel" runat="server" 
                    
                    ImageUrl="~/Images/Shopping/Cleansing/Shopping_Cleansing_Menu2_CleansingJellOff.png" />
                <asp:ImageButton ID="imageButtonMenu2Tissue" runat="server" 
                    
                    ImageUrl="~/Images/Shopping/Cleansing/Shopping_Cleansing_Menu2_CleansingTisueOff.png" />
                <asp:ImageButton ID="imageButtonMenu2Etc" runat="server" 
                    
                    ImageUrl="~/Images/Shopping/Cleansing/Shopping_Cleansing_Menu2_CleansingETCOff.png" />
                </td>
            </tr>
            <tr>
            <td class="style20">
                <img alt="" class="style22" 
                    src="Images/Shopping/Shop/Shopping_BlankCenter3.png" /></td>
            </tr>
            <tr>
            <td class="style20">
                <img alt="" class="style23" 
                    src="Images/Shopping/Cleansing/Shopping_Cleansing_WeeklyHotNine.png" /><img 
                    alt="" class="style24" 
                    src="Images/Shopping/Cleansing/Shopping_Cleansing_WeeklyMenu.png" /></td>
            </tr>
            <tr>
            <td class="style20">
                <img alt="" class="style25" 
                    src="Images/Shopping/Shop/Shopping_BlankCenter4.png" /></td>
            </tr>
            <tr>
            <td class="style20">
                <asp:ImageButton ID="imageButtonOrderNew" runat="server" 
                    ImageUrl="~/Images/Shopping/Shop/Shopping_Order_NewOn.png" />
                <asp:ImageButton ID="imageButtonOrderSell" runat="server" 
                    ImageUrl="~/Images/Shopping/Shop/Shopping_Order_SellOff.png" />
                <asp:ImageButton ID="imageButtonOrderComment" runat="server" 
                    ImageUrl="~/Images/Shopping/Shop/Shopping_Order_CommentOff.png" />
                <asp:ImageButton ID="imageButtonOrderLowPrice" runat="server" 
                    ImageUrl="~/Images/Shopping/Shop/Shopping_Order_LowPriceOff.png" />
                <asp:ImageButton ID="imageButtonOrderHighPrice" runat="server" 
                    ImageUrl="~/Images/Shopping/Shop/Shopping_Order_HighPriceOff.png" />
                </td>
            </tr>
            <tr>
            <td class="style20">
                <table class="style26">
                    <tr>
                        <td class="Itemtd">
                            <div>
                                <img src="Images/Shopping/Cleansing/Shopping_Cleansing_Item_JejuSparklingFoamCleanser.png" />
                                <br/>

                                <br />
                                <table class="ItemlabelTable">
                                    <tr>
                                        <td class="Itemlabeltd">
                                            <asp:Label ID="labelItemName" runat="server" Text="제주 탄산 폼클렌저"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="Itemlabeltd">
                                            <asp:Label ID="labelItemPrice" runat="server" Text="12,000원"></asp:Label>
                                        </td>
                                    </tr>
                                </table>

                            </div>
                        </td>
                        <td class="Itemtd">
                            &nbsp;</td>
                        <td class="Itemtd">
                            &nbsp;</td>
                        <td class="Itemtd">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="Itemtd">
                            &nbsp;</td>
                        <td class="Itemtd">
                            &nbsp;</td>
                        <td class="Itemtd">
                            &nbsp;</td>
                        <td class="Itemtd">
                            &nbsp;</td>
                    </tr>
                </table>
                </td>
            </tr>
            <tr>
            <td class="style20">
                <img alt="" class="style27" 
                    src="Images/Shopping/Shop/Shopping_BottomLine.png" /></td>
            </tr>
            <tr>
            <td class="style20">
                <asp:ImageButton ID="ImageButton31" runat="server" 
                    ImageUrl="~/Images/Shopping/Shop/Shopping_ButtonLeftEnd.png" />
                <asp:ImageButton ID="ImageButton32" runat="server" 
                    ImageUrl="~/Images/Shopping/Shop/Shopping_ButtonLeft.png" />
&nbsp;1 2 3
                <asp:ImageButton ID="ImageButton33" runat="server" 
                    ImageUrl="~/Images/Shopping/Shop/Shopping_ButtonRight.png" />
                <asp:ImageButton ID="ImageButton34" runat="server" 
                    ImageUrl="~/Images/Shopping/Shop/Shopping_ButtonRightEnd.png" />
                </td>
            </tr>
            </table>
            <br />
        <img alt="" class="style14" 
            src="Images/Shopping/Shop/Shopping_bottom.png" />
    </div>
    </form>
</body>
</html>
