<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Shopping_Item.aspx.cs" Inherits="Shopping_ItemNew" %>

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
        a,a:hover
        {
            border:0px;
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
        .style15
        {
            width: 280px;
            height: 606px;
        }
        .contents
        {
            margin-left:-10px;
        } 
        .style16
        {
            width: 983px;
            height: 70px;
        }
        .style17
        {
            width: 260px;
            height: 596px;
        }
        .MainImage
        {
            width:380px;
            text-align:center;
        }
        .MainTable
        {
            width:570px;
            height:394px;
            background: url('Images/Item/Item_MainTable.png') no-repeat;
            position:relative;
            left:-65px;
        }
        #labelItemName
        {
            font-size:25px;
            font-weight:bold;
            position:relative;
            top:-135px;
            left:40px;
        }
        .MainTableContext
        {
            width:65%;
            position:relative;
            top:-125px;
            left:30px;
            height: 100px;
        }
        .MainTableButton
        {
            text-align: center;
            position:relative;
            top:-80px;
        }
        .ItemSummary
        {
            background: url('Images/Item/item_Summary.png') no-repeat;
            width:983px;
            height:356px;
        }
        .ItemSummaryContents
        {
            position:relative;
            top:-110px;
            left:217px;
        }
        #labelSummaryItemDuration
        {
            position:relative;
            top:10px;
        }
        #labelSummaryItemSkinType
        {
            position:relative;
            top:20px;
        }
        #labelSummaryItemSize
        {
            position:relative;
            top:30px;
        }
        #labelSummaryItemCompany
        {
            position:relative;
            top:40px;
        }
        #labelSummaryItemCountry
        {
            position:relative;
            top:50px;
        }
        .style18
        {
            width: 983px;
            height: 142px;
        }
        .style19
        {
            width: 199px;
            height: 32px;
        }
        .style20
        {
            width: 193px;
            height: 32px;
        }
        .style21
        {
            width: 197px;
            height: 32px;
        }
        .style22
        {
            width: 238px;
            height: 769px;
        }
        .style23
        {
            width: 983px;
            height: 246px;
        }
        .style24
        {
            width: 983px;
            height: 614px;
        }
        .style25
        {
            width: 983px;
            height: 112px;
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
            <td rowspan="15">
                <img alt="" class="style15" src="Images/Item/Item_BlankLeft.png" /></td>
            <td colspan="2">
                <img alt="" class="style16" src="Images/Item/item_Title_Cleansing.png" /></td>
            <td rowspan="15">
                <img alt="" class="style17" src="Images/Item/Item_BlankRight.png" /></td>
            </tr>
            <tr>
            <td class="MainImage">
                <asp:Image ID="ImageMain" runat="server" />
            </td>
            <td class="MainTable">
                <asp:Label ID="labelItemName" runat="server" Text="AAA"></asp:Label>
                <table class="MainTableContext" cellpadding="5">
                <tr>
                <td>판매가</td>
                <td><asp:Label ID="labelItemPrice" runat="server" Text=""></asp:Label></td>
                <td>피부타입</td>
                <td><asp:Label ID="labelItemSkinType" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                <td>용량/사이즈</td>
                <td><asp:Label ID="labelItemSize" runat="server" Text=""></asp:Label></td>
                <td>적립금</td>
                <td><asp:Label ID="labelItemPoint" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                <td>구매수량</td>
                <td><asp:ImageButton ID="imageButtonDecreaseCounter" runat="server" 
                        ImageUrl="~/Images/Item/item_decreaseCounter.png" OnClick="imgButtonDecrease_Click" />
&nbsp;<asp:TextBox ID="textBoxCount" runat="server" Width="22px">1</asp:TextBox>
&nbsp;<asp:ImageButton ID="imageButtonIncreaseCounter" runat="server" 
                        ImageUrl="~/Images/Item/item_increaseCounter.png" OnClick="imgButtonIncrease_Click" /></td>
                <td></td>
                <td></td>
                </tr>
                </table>
                <br />
                <div class="MainTableButton">
                
                    <asp:ImageButton ID="ImageButton12" runat="server" 
                        ImageUrl="~/Images/Item/item_inBaket.png" OnClick="imgButtonInBacket_Click"/>
&nbsp;<asp:ImageButton ID="ImageButton13" runat="server" ImageUrl="~/Images/Item/item_inBuy.png" OnClick="imgButtonPurchase_Click"/>
&nbsp;<asp:ImageButton ID="ImageButton14" runat="server" 
                        ImageUrl="~/Images/Item/item_inInterest.png" OnClick="ImageButtonInInterest_Click"/>
                
                </div>
            </td>
            </tr>
            <tr>
            <td colspan="2">
                <img alt="" class="style18" src="Images/Item/Item_BlankCenter.png" /></td>
            </tr>
            <tr>
            <td colspan="2">
                <a href="#imageButtonFirstSpecific">
                    <img alt="" class="style19" id="imageButtonFirstSpecific" src="Images/Item/menu_specificOn.png"/></a><a href="#imageButtonSecondSummary"><img alt="" class="style20" id="imageButtonFirstSummary" src="Images/Item/menu_SummaryOff.png"/></a><a href="#imageButtonThirdDeadline"><img alt="" class="style21" id="imageButtonFirstDeadline" src="Images/Item/menu_DeadlineOff.png"/></a><a href="#imageButtonFourthNotice"><img alt="" class="style21" id="imageButtonFirstNotice" src="Images/Item/menu_NoticeOff.png"/>
                </a>
                </td>
            </tr>
            <tr>
            <td colspan="2">
                <asp:Image ID="ImageCenter" runat="server" />
                <br />
                <asp:Image ID="ImageBottom" runat="server" />
                <img alt="" class="style22" src="Images/Item/Item_BestSeller.png" /></td>
            </tr>
            <tr>
            <td colspan="2">
                <img alt="" class="style18" src="Images/Item/Item_BlankCenter.png" /></td>
            </tr>
            <tr>
            <td colspan="2">
                <a href="#imageButtonFirstSpecific">
                    <img alt="" class="style21" id="imageButtonSecondSpecific" src="Images/Item/menu_specificOff.png"/></a><a href="#imageButtonSecondSummary"><img alt="" class="style21" id="imageButtonSecondSummary" src="Images/Item/menu_SummaryOn.png"/></a><a href="#imageButtonThirdDeadline"><img alt="" class="style21" id="imageButtonSecondDeadline" src="Images/Item/menu_DeadlineOff.png"/></a><a href="#imageButtonFourthNotice"><img alt="" class="style21" id="imageButtonSecondNotice" src="Images/Item/menu_NoticeOff.png"/>
                </a>
                </td>
            </tr>
            <tr>
            <td colspan="2" class="ItemSummary">
            <div class="ItemSummaryContents">
                <asp:Label ID="labelSummaryItemName" runat="server" Text="제품명"></asp:Label><br />
                <asp:Label ID="labelSummaryItemDuration" runat="server" Text="사용기한"></asp:Label><br />
                <asp:Label ID="labelSummaryItemSkinType" runat="server" Text="피부타입"></asp:Label><br />
                <asp:Label ID="labelSummaryItemSize" runat="server" Text="용량"></asp:Label><br />
                <asp:Label ID="labelSummaryItemCompany" runat="server" Text="제조사"></asp:Label><br />
                <asp:Label ID="labelSummaryItemCountry" runat="server" Text="제조국"></asp:Label>
            </div>
            </td>
            </tr>
            <tr>
            <td colspan="2">
                <img alt="" class="style18" src="Images/Item/Item_BlankCenter.png" /></td>
            </tr>
            <tr>
            <td colspan="2">
                <a href="#imageButtonFirstSpecific">
                    <img alt="" class="style21" id="imageButtonThirdSpecific" src="Images/Item/menu_specificOff.png"/></a><a href="#imageButtonSecondSummary"><img alt="" class="style20" id="imageButtonThirdSummary" src="Images/Item/menu_SummaryOff.png"/></a><a href="#imageButtonThirdDeadline"><img alt="" class="style21" id="imageButtonThirdDeadline" src="Images/Item/menu_DeadlineOn.png"/></a><a href="#imageButtonFourthNotice"><img alt="" class="style21" id="imageButtonThirdNotice" src="Images/Item/menu_NoticeOff.png"/>
                </a>
                </td>
            </tr>
            <tr>
            <td colspan="2">
                <img alt="" class="style23" src="Images/Item/Item_Expire.png" /></td>
            </tr>
            <tr>
            <td colspan="2">
                <img alt="" class="style18" src="Images/Item/Item_BlankCenter.png" /></td>
            </tr>
            <tr>
            <td colspan="2">
                <a href="#imageButtonFirstSpecific">
                    <img alt="" class="style21" id="imageButtonFourthSpecific" src="Images/Item/menu_specificOff.png"/></a><a href="#imageButtonSecondSummary"><img alt="" class="style20" id="imageButtonFourthSummary" src="Images/Item/menu_SummaryOff.png"/></a><a href="#imageButtonThirdDeadline"><img alt="" class="style21" id="imageButtonFourthDeadline" src="Images/Item/menu_DeadlineOff.png"/></a><a href="#imageButtonFourthNotice"><img alt="" class="style21" id="imageButtonFourthNotice" src="Images/Item/menu_NoticeOn.png"/>
                </a>
                </td>
            </tr>
            <tr>
            <td colspan="2">
                <img alt="" class="style24" src="Images/Item/item_Notice.png" /></td>
            </tr>
            <tr>
            <td colspan="2">
                <img alt="" class="style25" src="Images/Item/Item_BlankCenterbottom.png" /></td>
            </tr>
            </table>
            <img alt="" class="style14" src="Images/Common/staticBanner_Bottom.png" />
    
    </div>
    </form>
</body>
</html>
