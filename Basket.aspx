<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Basket.aspx.cs" Inherits="Basket" %>

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
        .style23
        {
            width: 1583px;
            height: 235px;
            margin-left:-7px;
        }
        .context
        {
            margin-left:-7px;
        }
        .menu
        {
            vertical-align:top;
        }
        .style24
        {
            width: 495px;
            height: 633px;
        }
        .style25
        {
            width: 810px;
            height: 354px;
        }
        .style26
        {
            width: 810px;
            height: 61px;
        }
        .style27
        {
            width: 810px;
            height: 218px;
        }
        .style28
        {
            width: 278px;
            height: 633px;
        }
        .bottombutton
        {
            position:relative;
            top:-150px;
            left:-22px;
        }
        #imageButtonDelete
        {
            position:relative;
            left:-230px;
        }
        .style29
        {
            font-size: 2px;
        }
        .style30
        {
            text-align: justify;
        }
        .auto-style1 {
            text-align: justify;
            height: 152px;
        }
        .auto-style2 {
            margin-left: 6px;
        }
        #buttonMemberInfo
        {
            position:absolute;
            top:241px;
            left:312px;
            width:157px;
            height:25px;
        }
        #buttonOrderSearch
        {
            position:absolute;
            top:267px;
            left:312px;
            width:157px;
            height:25px;
        }
        #buttonInterest
        {
            position:absolute;
            top:293px;
            left:312px;
            width:157px;
            height:25px;
        }
        #buttonBasket
        {
            position:absolute;
            top:319px;
            left:312px;
            width:157px;
            height:25px;
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
            <div class="context">
            <table class="context_table">
            <tr>
            <td class="menu" rowspan="4">
                <img alt="" class="style24" src="Images/Basket/Basket_Menu.png" />
                <asp:ImageButton ID="buttonMemberInfo" runat="server"
                    ImageUrl="~/Images/Mypage/Mypage_MemberInfo.png"/>
                <asp:ImageButton ID="buttonOrderSearch" runat="server"
                    ImageUrl="~/Images/Mypage/Mypage_OrderSearchButton.png" OnClick="buttonOrderSearch_Click"/>
                <asp:ImageButton ID="buttonInterest" runat="server"
                    ImageUrl="~/Images/Mypage/Mypage_Interest.png"/>
                <asp:ImageButton ID="buttonBasket" runat="server"
                    ImageUrl="~/Images/Mypage/Mypage_Basket.png"/>
            </td>
            <td>
                <img alt="" class="style25" src="Images/Basket/Basket_Basket.png" /></td>
            <td rowspan="4">
                <img alt="" class="style28" src="Images/Basket/Basket_Blank.png" /></td>
            </tr>
            <tr>
            <td class="auto-style1">
                <asp:GridView ID="gridViewBasket" runat="server" AutoGenerateColumns="False" 
                    CssClass="auto-style2" Width="782px" BorderColor="White" BorderStyle="None" 
                    BorderWidth="0px">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:CheckBox ID="checkBox" runat="server" />
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                            <ItemStyle Width="54px" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="itemName" SortExpression="itemName">
                        <ItemStyle Width="407px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="itemPrice" SortExpression="itemPrice" >
                        <ItemStyle Width="78px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="basketCount" SortExpression="basketCount" >

                        <ItemStyle Width="78px" />
                        </asp:BoundField>

                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="labelTotalPrice" runat="server" Text="Label"></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Size="Small" Width="80px" />
                            <ItemStyle Width="79px" />
                        </asp:TemplateField>

                         <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="labelPoint" runat="server" Text="Label"></asp:Label>
                            </ItemTemplate>
                             <ItemStyle Font-Size="Small" Width="80px" />
                             <ItemStyle Width="78px" />
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="sdsSource" runat="server" ConnectionString="<%$ ConnectionStrings:NatureRepublicDBConnectionString %>" SelectCommand="SELECT tableItem.itemPrice, tableItem.itemName, tableBasket.memberID, tableBasket.basketCount, tableBasket.basketNumber FROM tableItem INNER JOIN tableBasket ON tableItem.itemNumber = tableBasket.itemNumber WHERE (tableBasket.memberID = @Param1)" >
                    <SelectParameters>
                        <asp:SessionParameter Name="Param1" SessionField="MemberID" />
                    </SelectParameters>
                </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
            <td>
                <img alt="" class="style27" src="Images/Basket/Basket_Price.png" /></td>
            </tr>
            <tr>
            <td class="bottombutton">
                <asp:ImageButton ID="imageButtonDelete" runat="server" 
                    ImageUrl="~/Images/Basket/Basket_DeleteButton.png" style="text-align: right" OnClick="imageButtonDelete_Click" />
&nbsp;&nbsp;
                <asp:ImageButton ID="imageButtonPurchaseAll" runat="server" 
                    ImageUrl="~/Images/Basket/Basket_PurchaseAll.png" OnClick="imageButtonPurchaseAll_Click" />
                <span class="style29">&nbsp;</span><asp:ImageButton ID="imageButtonPurchaseSelected" runat="server" 
                    ImageUrl="~/Images/Basket/Basket_PurchaseSelected.png" OnClick="imageButtonPurchaseSelected_Click" />
                <span class="style29">&nbsp;</span><asp:ImageButton ID="imageButtonShopping" runat="server" 
                    ImageUrl="~/Images/Basket/Basket_ShoppingButton.png" OnClick="imageButtonShopping_Click" />
                </td>
            </tr>
            </table>
            </div>
        <br />
        <img alt="" class="style23" src="Images/Common/staticBanner_Bottom.png" />
    </div>
    </form>
</body>
</html>
