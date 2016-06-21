<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignupInfo.aspx.cs" Inherits="SignupInfo" %>

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
            margin-left:-8px;
            height: 1003px;
        }
        .style18
        {
            width: 785px;
            height: 48px;
        }
        .style19
        {
            width: 306px;
            height: 635px;
        }
        .style20
        {
            width: 189px;
            height: 960px;
        }
        .style22
        {
            width: 1583px;
            height: 114px;
            margin-left:-7px;
        }
        .style23
        {
            width: 1583px;
            height: 235px;
            margin-left:-7px;
        }
        .style24
        {
            width: 103%;
        }
        .style25
        {
            background: url('Images/Signup_Info/Signup_Info_Information.png') no-repeat left 50%;
            width: 100%;
            height: 100%;
            }
        .SignupForm
        {
            position:relative;
            top:2px;
            left:170px;
        }
        #textBoxName
        {
            position:relative;
            top:8px;
        }
        #textBoxBirth
        {
            position:relative;
            top:18px;
        }
        #labelBirth
        {
            position:relative;
            top:18px;
            left:25px;
        }
        #textBoxID
        {
            position:relative;
            top:50px;
        }
        #imageButtonDuplicate
        {
            position:relative;
            top:55px;
            left:5px;
        }
        #labelIDDuplicate
        {
            position:relative;
            top:50px;
            left:10px;
        }
        #textBoxPW
        {
            position:relative;
            top:62px;
        }
        #textBoxPWConfigure
        {
            position:relative;
            top:62px;
            left:180px;
        }
        #DDLPWHint
        {
            position:relative;
            width:300px;
            top:75px;
            left:38px;
        }
        #textBoxPWHintAns
        {
            position:relative;
            width:300px;
            top:88px;
            left:38px;
        }
        #textBoxAddress
        {
            position:relative;
            top:105px;
            width:500px;
            height:55px;
        }
        .style26
        {
            position:relative;
            top:125px;
        }
        #DDLTel, #textBoxTel1, #textBoxTel2, #dropdownlistPhone, #textBoxPhone1, #textBoxPhone2
        {
            width:60px;
        }
        .style27
        {
            position:relative;
            top:133px;
        }
        .style29
        {
            position:relative;
            top:103px;
        }
        .style28
        {
            position:relative;
            top:112px;
            font-size:13px;
        }
        .style30
        {
            position:relative;
            top:100px;
        }
        #lblEmail
        {
            position:relative;
            top:80px;
            font-size:13px;
        }
        #downdroplistSkinType
        {
            position:relative;
            width:100px;
            top:95px;
        }
        .style31
        {
            position:relative;
            top:85px;
        }
        #imgButtonCancel
        {
            position:absolute;
            top:1080px;
            left:540px;
        }
        #imgButtonSignup
        {
            position:absolute;
            top:1080px;
            left:1168px;
        }
        .auto-style1 {
            height: 23px;
        }
        .style32
        {
            width: 290px;
            height: 994px;
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
                        ImageUrl="~/Images/Common/staticBanner_Top_Signup.png" />
                </td>
                <td>
                    <asp:ImageButton class="margin_left" ID="ImageButton3" runat="server" 
                        ImageUrl="~/Images/Common/staticBanner_Top_Basket.png" />
                </td>
                <td>
                    <asp:ImageButton class="margin_left" ID="ImageButton4" runat="server" 
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
                    <img alt="" class="style13" src="Images/Common/staticBanner_Menu_2.png" />
                </td>
            </tr>
            </table>
        <table class="style14">
            <tr>
                <td rowspan="2">
                    <img alt="" class="style19" src="Images/Signup_Info/Signup_Info_Blank1.png" /></td>
                <td rowspan="2">
                    <img alt="" class="style20" src="Images/Signup_Info/Signup_Info_Menu.png"/><br />
                </td>
                <td class="style24">
                    <img alt="" class="style18" src="Images/Signup_Info/Signup_Info_Top.png" /></td>
                <td rowspan="2">
                    <img alt="" class="style32" src="Images/Signup_Info/Signup_Info_Blank2.png" /></td>
            </tr>
            <tr>
                <td class="style25">
                    <br />
                    <div class="SignupForm">
                    <asp:TextBox ID="textBoxName" runat="server" MaxLength="20"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="textBoxBirth" runat="server" MaxLength="10"></asp:TextBox>
                    <asp:Label ID="labelBirth" runat="server" Text="예) 1999-01-01"></asp:Label>
                    <br />
                    <asp:TextBox ID="textBoxID" runat="server" MaxLength="20"></asp:TextBox>
                    <asp:ImageButton ID="imageButtonDuplicate" runat="server" 
                            ImageUrl="~/Images/Signup_Info/Signup_Info_DuplicateConfirm.png" OnClick="imageButtonDuplicate_Click" />
                    <asp:Label ID="labelIDDuplicate" runat="server" Text="aa"></asp:Label> 
                    <br />
                    <asp:TextBox ID="textBoxPW" runat="server" MaxLength="20" TextMode="Password"></asp:TextBox>
                    <asp:TextBox ID="textBoxPWConfigure" runat="server" MaxLength="20" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:DropDownList ID="DDLPWHint" runat="server">
                    <asp:ListItem>내가 태어난 곳은?</asp:ListItem>
                    <asp:ListItem>존경하는 위인은?</asp:ListItem>
                    <asp:ListItem>추억의 장소는?</asp:ListItem>
                    <asp:ListItem>내가 태어난 해의 띠는?</asp:ListItem>
                    <asp:ListItem>가장 감명깊은 책은?</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:TextBox ID="textBoxPWHintAns" runat="server"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="textBoxAddress" runat="server" MaxLength="50"></asp:TextBox>
                    <br />
                        <table class="style26">
                            <tr>
                                <td class="auto-style1">
                        <asp:DropDownList ID="DDLTel" runat="server">
                        <asp:ListItem>02</asp:ListItem>
                        <asp:ListItem>031</asp:ListItem><asp:ListItem>032</asp:ListItem><asp:ListItem>033</asp:ListItem>
                        <asp:ListItem>041</asp:ListItem><asp:ListItem>042</asp:ListItem><asp:ListItem>043</asp:ListItem><asp:ListItem>044</asp:ListItem>
                        <asp:ListItem>051</asp:ListItem><asp:ListItem>052</asp:ListItem><asp:ListItem>053</asp:ListItem><asp:ListItem>054</asp:ListItem><asp:ListItem>055</asp:ListItem>
                        <asp:ListItem>061</asp:ListItem><asp:ListItem>062</asp:ListItem><asp:ListItem>063</asp:ListItem><asp:ListItem>064</asp:ListItem>
                        <asp:ListItem>0505</asp:ListItem><asp:ListItem>070</asp:ListItem>
                        </asp:DropDownList>
                        - <asp:TextBox ID="textBoxTel1" runat="server" MaxLength="4"></asp:TextBox>
                        - <asp:TextBox ID="textBoxTel2" runat="server" MaxLength="4"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        <table class="style27">
                            <tr>
                                <td>
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
                        - <asp:TextBox ID="textBoxPhone1" runat="server" MaxLength="4"></asp:TextBox>
                        - <asp:TextBox ID="textBoxPhone2" runat="server" MaxLength="4"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    <br />
                        <br />
                           <table class="style29">
                            <tr>
                                <td>
                                    <asp:RadioButton ID="radioButtonMsgOk" Groupname="RBMsg" runat="server" Text="받음" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton ID="radioButtonMsgNo" Groupname="RBMsg" runat="server" Text="받지않음" />
                                </td>
                            </tr>
                        </table>
                        <table class="style28">
                            <tr>
                                <td>
                                    <asp:TextBox ID="textBoxEmail1" runat="server" MaxLength="20"></asp:TextBox>
                                    @ <asp:TextBox ID="textBoxEmail2" runat="server" MaxLength="10"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    <br />
                        <table class="style30">
                            <tr>
                                <td>
                                    <asp:RadioButton ID="radioButtonMailOk" Groupname="RBEmail" runat="server" Text="예" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton ID="radioButtonMailNo" Groupname="RBEmail" runat="server" Text="아니오" />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <asp:Label ID="lblEmail" runat="server" 
                            Text="이메일 수신거부시 아래의 혜택을 누리실 수 없습니다.<br>- 무료영화, 연극 시사회 증정 정보<br>- 알짜배기 이벤트 정보(무료 샘플 신청, 경품 이벤트)<br>- 신상품정보, 피부미용 강좌"></asp:Label>
                        <br />
                        <asp:DropDownList ID="downdroplistSkinType" runat="server">
                        <asp:ListItem>모든피부</asp:ListItem>
                        <asp:ListItem>악건성</asp:ListItem>
                        <asp:ListItem>건성</asp:ListItem>
                        <asp:ListItem>복합성</asp:ListItem>
                        <asp:ListItem>지성</asp:ListItem>
                        <asp:ListItem>악지성</asp:ListItem>
                        <asp:ListItem>아크네</asp:ListItem>
                        <asp:ListItem>민감성</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                    <br />
                        <table class="style31">
                            <tr>
                                <td>
                                    <asp:RadioButton ID="radioButtonMarriageNo" Groupname="RBMarriage" runat="server" Text="미혼" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton ID="radioButtonMarriageOk" Groupname="RBMarriage" runat="server" Text="기혼" />
                                </td>
                            </tr>
                        </table>
                        <br />
                    </div>
                      <asp:ImageButton ID="imgButtonCancel" runat="server" 
                        ImageUrl="~/Images/Signup_Info/Signup_Info_CancelButton.png" OnClick="ButtonCancel_Click" />
                        <asp:ImageButton ID="imgButtonSignup" runat="server" 
                        ImageUrl="~/Images/Signup_Info/Signup_Info_SignupButton.png" OnClick="ButtonSignup_Click" />
                </td>
            </tr>
        </table>
        <img alt="" class="style22" src="Images/Signup_Info/Signup_Info_Bottom.png" /><br />
        <br />
        <img alt="" class="style23" src="Images/Common/staticBanner_Bottom.png" />
    </div>
    </form>
</body>
</html>
