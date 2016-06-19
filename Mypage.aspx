<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Mypage.aspx.cs" Inherits="Mypage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body
        {
            width:100%;
            height:100%;
            text-align: left;
        }
        th, td
        {
            padding: 0px;
            text-align: left;
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
        .contents
        {
            width:100%;
            margin-left:-7px;
        }
        .tdfix
        {
            vertical-align:top;
        }
        .style24
        {
            width: 496px;
            height: 610px;
        }
        .style25
        {
            width: 808px;
            height: 610px;
        }
        .informationForm
        {
            position:absolute;
            top:290px;
            left:650px;
        }
        #imageButtonModify
        {
            position:relative;
            top:-160px;
            left:705px;
        }
        #labelName
        {
        }
        #labelID
        {
            position:relative;
            top:12px;
        }
        #textBoxPW
        {
            position:relative;
            top:43px;
        }
        #textBoxPWConfigure
        {
            position:relative;
            top:43px;
            left:210px;
        }
        #textBoxAddress
        {
            width:500px;
            height:55px;
            position:relative;
            top:63px;
        }
        .Phone
        {
            position:relative;
            top:85px;
        }
        #dropdownlistPhone, #textBoxPhone1, #textBoxPhone2
        {
            width:60px;
        }
        .Email
        {
            position:relative;
            top:97px;
        }
        #dropdownlistSkinType
        {
            width:100px;
            position:relative;
            top:112px;
        }
        .style26
        {
            width: 279px;
            height: 610px;
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
                        ImageUrl="~/Images/Common/staticBanner_Top_Login.png" OnClick= "LoginButton_Click"/>
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
            <td class="tdfix">
                <img alt="" class="style24" src="Images/Mypage/Mypage_Menu.png" /></td>
            <td>
                <img alt="" class="style25" src="Images/Mypage/Mypage_Information.png" /><br />
                <asp:ImageButton ID="imageButtonModify" runat="server" 
                    ImageUrl="~/Images/Mypage/Mypage_ModifyButton.png" OnClick="buttonUpdate_Click" />
                <br />
                <div class="informationForm">
                <asp:Label ID="labelName" runat="server" Text="염광호"></asp:Label>
                <br />
                <asp:Label ID="labelID" runat="server" Text="rhkdgh93"></asp:Label>
                <br />
                <asp:TextBox ID="textBoxPW" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:TextBox ID="textBoxPWConfigure" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                    <asp:TextBox ID="textBoxAddress" runat="server"></asp:TextBox>
                <br />
                <div class="Phone">
                    <asp:DropDownList ID="dropdownlistPhone" runat="server">
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
                    &nbsp;- <asp:TextBox ID="textBoxPhone1" runat="server"></asp:TextBox>
                    &nbsp;- <asp:TextBox ID="textBoxPhone2" runat="server"></asp:TextBox>
                </div>
                <div class="Email">
                    <asp:TextBox ID="textBoxEmail1" runat="server"></asp:TextBox>
                     @ 
                    <asp:TextBox ID="textBoxEmail2" runat="server"></asp:TextBox>
                </div>    
                    <asp:DropDownList ID="dropdownlistSkinType" runat="server">
                    <asp:ListItem>모든피부</asp:ListItem>
                    <asp:ListItem>악건성</asp:ListItem>
                    <asp:ListItem>건성</asp:ListItem>
                    <asp:ListItem>복합성</asp:ListItem>
                    <asp:ListItem>지성</asp:ListItem>
                    <asp:ListItem>악지성</asp:ListItem>
                    <asp:ListItem>아크네</asp:ListItem>
                    <asp:ListItem>민감성</asp:ListItem>
                    </asp:DropDownList>
                </div>
                </td>
            <td class="tdfix">
                <img alt="" class="style26" src="Images/Mypage/Mypage_Blank.png" /></td>
            </tr>
            </table>
    <img alt="" class="style23" src="Images/Common/staticBanner_Bottom.png" />
    </div>
    </form>
</body>
</html>
