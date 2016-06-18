<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Shopping.aspx.cs" Inherits="Shoping" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1442px;
        }
        .auto-style4 {
            height: 180px;
            width: 136px;
        }
        .auto-style19 {
            width: 135px;
        }
        .auto-style28 {
            width: 144px;
        }
        .auto-style31 {
            width: 174px;
        }
        .auto-style32 {
            width: 111px;
        }
        .auto-style33 {
            height: 20px;
            width: 144px;
        }
        .auto-style36 {
            width: 150px;
        }
        .auto-style37 {
            width: 151px;
        }
        .auto-style38 {
            height: 20px;
            width: 150px;
        }
        .auto-style39 {
            height: 20px;
            width: 151px;
        }
        .auto-style41 {
            height: 20px;
        }
        .auto-style48 {
            width: 174px;
            height: 55px;
        }
        .auto-style75 {
            width: 196px;
        }
        .auto-style77 {
            width: 122px;
        }
        .auto-style82 {
            height: 20px;
            width: 248px;
        }
        .auto-style83 {
            width: 73px;
        }
        .auto-style87 {
            height: 20px;
            width: 247px;
        }
        .auto-style88 {
            width: 247px;
        }
        .auto-style89 {
            width: 248px;
        }
        .auto-style90 {
            width: 1433px;
            height: 111px;
        }
        .auto-style91 {
            width: 247px;
            height: 24px;
        }
        .auto-style92 {
            width: 248px;
            height: 24px;
        }
        .auto-style93 {
            width: 245px;
            height: 42px;
        }
        .auto-style94 {
            width: 245px;
        }
        .auto-style96 {
            width: 109px;
        }
        .auto-style98 {
            width: 66px;
        }
        .auto-style101 {
            width: 314px;
        }
        .auto-style102 {
            width: 315px;
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
        .margin_left
        {
            margin-left:-2px;
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
        .auto-style103 {
            width: 1430px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <div>
    
        <table class="style1">
            <tr>
                <td>
                    <img alt="" class="style2" src="Images/Common/staticBanner_Top_1.png" /></td>
                <td class="test">
                    <asp:ImageButton class="margin_left" ID="imagebuttonLogin" runat="server" 
                        ImageUrl="~/Images/Common/staticBanner_Top_Login.png"/>
                </td>
                <td>
                    <asp:ImageButton class="margin_left" ID="imagebuttonJoin" runat="server" 
                        ImageUrl="~/Images/Common/staticBanner_Top_Signup.png"/>
                </td>
                <td>
                    <asp:ImageButton class="margin_left" ID="imagebuttonBaket" runat="server" 
                        ImageUrl="~/Images/Common/staticBanner_Top_Basket.png" />
                </td>
                <td>
                    <asp:ImageButton class="margin_left" ID="imagebuttonMyShop" runat="server" 
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
        <table class="auto-style103">
            <tr>
                <td colspan="10">
                    <img class="auto-style90" src="images/Shopping/Cleansing/Shopping_Cleansing_Top.png" /></td>
            </tr>
            <tr>
                <td rowspan="9" class="auto-style75">&nbsp;</td>
                <td class="auto-style33">
                    <img class="auto-style4" src="images/Shopping/Cleansing/Shopping_Menu_CleansingOn.png" /></td>
                <td class="auto-style38">
                    <img class="auto-style19" src="images/Shopping/Cleansing/Shopping_Menu_SkinCareOff.png" /></td>
                <td class="auto-style41">
                    <img src="images/Shopping/Cleansing/Shopping_Menu_FackOff.png" /></td>
                <td class="auto-style38">
                    <img src="images/Shopping/Cleansing/Shopping_Menu_MakeupOff.png" /></td>
                <td class="auto-style41">
                    <img src="images/Shopping/Cleansing/Shopping_Menu_BodyHairOff.png" /></td>
                <td class="auto-style39">
                    <img src="images/Shopping/Cleansing/Shopping_Menu_ManOff.png" /></td>
                <td class="auto-style39">
                    <img src="images/Shopping/Cleansing/Shopping_Menu_bloOff.png" /></td>
                <td class="auto-style31" rowspan="4"></td>
                <td rowspan="9" class="auto-style32"></td>
            </tr>
            <tr>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style36">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style36">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style28">
                    <img src="images/Shopping/Cleansing/Shopping_Cleansing_Menu2_allOn.png" /></td>
                <td class="auto-style36">
                    <img src="images/Shopping/Cleansing/Shopping_Cleansing_Menu2_CleansingOff.png" /></td>
                <td>
                    <img src="images/Shopping/Cleansing/Shopping_Cleansing_Menu2_CleansingCreamOff.png" /></td>
                <td class="auto-style36">
                    <img src="images/Shopping/Cleansing/Shopping_Cleansing_Menu2_CleansingOilOff.png" /></td>
                <td>
                    <img src="images/Shopping/Cleansing/Shopping_Cleansing_Menu2_CleansingJellOff.png" /></td>
                <td class="auto-style37">
                    <img src="images/Shopping/Cleansing/Shopping_Cleansing_Menu2_CleansingJTisueOff.png" /></td>
                <td class="auto-style37">
                    <img src="images/Shopping/Cleansing/Shopping_Cleansing_Menu2_CleansingJETCOff.png" /></td>
            </tr>
            <tr>
                <td class="auto-style33"></td>
                <td class="auto-style38"></td>
                <td class="auto-style41"></td>
                <td class="auto-style38"></td>
                <td class="auto-style41"></td>
                <td class="auto-style39"></td>
                <td class="auto-style39"></td>
            </tr>
            <tr>
                <td colspan="7" rowspan="5">&nbsp;</td>
                <td class="auto-style31">
                    <img src="images/Shopping/Cleansing/Shopping_Cleansing_side_MEN`s%20SHOP.png" /></td>
            </tr>
            <tr>
                <td class="auto-style31">
                    <img src="images/Shopping/Cleansing/Shopping_Cleansing_side_NEW%20PRODUCT.png" /></td>
            </tr>
            <tr>
                <td class="auto-style31">
                    <img src="images/Shopping/Cleansing/Shopping_Cleansing_side_PRODUCT%20LINE.png" /></td>
            </tr>
            <tr>
                <td class="auto-style31">
                    <img src="images/Shopping/Cleansing/Shopping_Cleansing_side_ONLY%20ONLINE.png" /></td>
            </tr>
            <tr>
                <td class="auto-style48">
                    <img src="images/Shopping/Cleansing/Shopping_Cleansing_side_SHOPPING%20AWARD.png" /></td>
            </tr>
            </table>
        <br />
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style77" rowspan="10"></td>
                <td class="auto-style87">기능별 검색</td>
                <td class="auto-style87">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="보습/수분" />
                </td>
                <td class="auto-style87">
                    <asp:CheckBox ID="CheckBox2" runat="server" Text="탄력강화/주름개선" />
                </td>
                <td class="auto-style82">
                    <asp:CheckBox ID="CheckBox3" runat="server" Text="화이트닝/피부톤개선" />
                </td>
                <td class="auto-style82">
                    <asp:CheckBox ID="CheckBox4" runat="server" Text="각질제거/피부결개선" />
                </td>
                <td class="auto-style83" rowspan="10"></td>
            </tr>
            <tr>
                <td class="auto-style88">&nbsp;</td>
                <td class="auto-style88">
                    <asp:CheckBox ID="CheckBox8" runat="server" Text="피지/블랙헤드/모공" />
                </td>
                <td class="auto-style88">
                    <asp:CheckBox ID="CheckBox7" runat="server" Text="트러블/여드름" />
                </td>
                <td class="auto-style89">
                    <asp:CheckBox ID="CheckBox6" runat="server" Text="피부진정" />
                </td>
                <td class="auto-style89">
                    <asp:CheckBox ID="CheckBox5" runat="server" Text="자외선차단" />
                </td>
            </tr>
            <tr>
                <td class="auto-style88">자연 성분별 검색</td>
                <td class="auto-style88">
                    <asp:CheckBox ID="CheckBox9" runat="server" Text="알로에" />
                </td>
                <td class="auto-style88">
                    <asp:CheckBox ID="CheckBox10" runat="server" Text="그린티" />
                </td>
                <td class="auto-style89">
                    <asp:CheckBox ID="CheckBox11" runat="server" Text="해양심층수" />
                </td>
                <td class="auto-style89">
                    <asp:CheckBox ID="CheckBox12" runat="server" Text="자연발효" />
                </td>
            </tr>
            <tr>
                <td class="auto-style88">&nbsp;</td>
                <td class="auto-style88">
                    <asp:CheckBox ID="CheckBox16" runat="server" Text="스네일" />
                </td>
                <td class="auto-style88">
                    <asp:CheckBox ID="CheckBox15" runat="server" Text="비베놈" />
                </td>
                <td class="auto-style89">
                    <asp:CheckBox ID="CheckBox14" runat="server" Text="아르간" />
                </td>
                <td class="auto-style89">
                    <asp:CheckBox ID="CheckBox13" runat="server" Text="콜라겐" />
                </td>
            </tr>
            <tr>
                <td class="auto-style88">&nbsp;</td>
                <td class="auto-style88">
                    <asp:CheckBox ID="CheckBox17" runat="server" Text="식물 줄기세포" />
                </td>
                <td class="auto-style88">
                    <asp:CheckBox ID="CheckBox18" runat="server" Text="히비스커스" />
                </td>
                <td class="auto-style89">
                    <asp:CheckBox ID="CheckBox19" runat="server" Text="바오밥" />
                </td>
                <td class="auto-style89">
                    <asp:CheckBox ID="CheckBox20" runat="server" Text="시어버터" />
                </td>
            </tr>
            <tr>
                <td class="auto-style91"></td>
                <td class="auto-style91">
                    <asp:CheckBox ID="CheckBox21" runat="server" Text="한방" />
                </td>
                <td class="auto-style91"></td>
                <td class="auto-style92"></td>
                <td class="auto-style92"></td>
            </tr>
            <tr>
                <td class="auto-style41" colspan="5"></td>
            </tr>
            <tr>
                <td class="auto-style41" colspan="5"></td>
            </tr>
            <tr>
                <td class="auto-style88">현재</td>
                <td colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style88">
                    <img class="auto-style93" src="images/Shopping/Cleansing/Shopping_Cleansing2_NEW.png" /></td>
                <td class="auto-style88">
                    <img class="auto-style94" src="images/Shopping/Cleansing/Shopping_Cleansing2_SELL.png" /></td>
                <td class="auto-style88">
                    <img class="auto-style94" src="images/Shopping/Cleansing/Shopping_Cleansing2_COM.png" /></td>
                <td class="auto-style89">
                    <img class="auto-style94" src="images/Shopping/Cleansing/Shopping_Cleansing2_AEC.png" /></td>
                <td class="auto-style89">
                    <img class="auto-style94" src="images/Shopping/Cleansing/Shopping_Cleansing2_DEC.png" /></td>
            </tr>
            </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style96" rowspan="6">&nbsp;</td>
                <td class="auto-style101">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="260px" ImageUrl="~/images/Item/Cleansing/00001/item.png" OnClick="ImageButton1_Click" Width="306px" />
                </td>
                <td class="auto-style101">&nbsp;</td>
                <td class="auto-style101">&nbsp;</td>
                <td class="auto-style102">&nbsp;</td>
                <td class="auto-style98" rowspan="6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style101">&nbsp;</td>
                <td class="auto-style101">&nbsp;</td>
                <td class="auto-style101">&nbsp;</td>
                <td class="auto-style102">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style101">&nbsp;</td>
                <td class="auto-style101">&nbsp;</td>
                <td class="auto-style101">&nbsp;</td>
                <td class="auto-style102">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style101">&nbsp;</td>
                <td class="auto-style101">&nbsp;</td>
                <td class="auto-style101">&nbsp;</td>
                <td class="auto-style102">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style101">&nbsp;</td>
                <td class="auto-style101">&nbsp;</td>
                <td class="auto-style101">&nbsp;</td>
                <td class="auto-style102">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style101">&nbsp;</td>
                <td class="auto-style101">&nbsp;</td>
                <td class="auto-style101">&nbsp;</td>
                <td class="auto-style102">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
