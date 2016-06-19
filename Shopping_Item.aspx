<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Shopping_Item.aspx.cs" Inherits="Item" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            height: 20px;
        }
        .auto-style5 {
            width: 1442px;
        }
        .auto-style6 {
            width: 87px;
        }
        .auto-style7 {
            width: 88px;
        }
        .auto-style10 {
            width: 200px;
        }
        .auto-style11 {
            width: 201px;
        }
        .auto-style12 {
            width: 110px;
            height: 32px;
        }
        .auto-style13 {
            width: 170px;
        }
        .auto-style14 {
            width: 1220px;
        }
        .auto-style15 {
            width: 200px;
            height: 40px;
        }
        .auto-style16 {
            width: 201px;
            height: 40px;
        }
        .auto-style17 {
            width: 170px;
            height: 40px;
        }
        .auto-style19 {
            width: 86px;
        }
        .auto-style18 {
            width: 89px;
        }
        .auto-style21 {
            height: 20px;
            width: 244px;
        }
        .auto-style22 {
            width: 244px;
        }
        .auto-style23 {
            width: 199px;
            height: 45px;
        }
        .auto-style24 {
            width: 188px;
            height: 45px;
        }
        .auto-style25 {
            width: 169px;
            height: 45px;
        }
        .auto-style26 {
            width: 190px;
            height: 45px;
        }
        .auto-style27 {
            height: 45px;
            width: 250px;
        }
        .auto-style28 {
            width: 1007px;
        }
        .auto-style29 {
            height: 20px;
            width: 1007px;
        }
        .auto-style30 {
            width: 85px;
        }
        .auto-style31 {
            width: 90px;
        }
        .auto-style32 {
            width: 82px;
        }
        .auto-style33 {
            width: 1254px;
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
        .auto-style34 {
            padding: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <p>
    
        <table class="style1">
            <tr>
                <td>
                    <img alt="" class="style2" src="Images/Common/staticBanner_Top_1.png" /></td>
                <td class="auto-style34">
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
            </table>
    
        <br />
    </p>
    <table class="auto-style5">
        <tr>
            <td class="auto-style6" rowspan="11">&nbsp;</td>
            <td colspan="9">
                <img class="auto-style14" src="images/Item/item_Title.png" /></td>
            <td class="auto-style7" rowspan="11">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="5" rowspan="9">
                <asp:Image ID="mainImage" runat="server" />
            </td>
            <td class="auto-style3" colspan="4">
                <asp:Label ID="labelTitle" runat="server" Text="Title"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">판매가</td>
            <td class="auto-style10">
                <asp:Label ID="labelPrice" runat="server" Text="Price"></asp:Label>
            </td>
            <td class="auto-style11">피부타입</td>
            <td class="auto-style13">
                <asp:Label ID="labelType" runat="server" Text="Skin"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">회원가</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">용량/사이즈</td>
            <td class="auto-style13">
                <asp:Label ID="labelSize" runat="server" Text="Size"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">적립금</td>
            <td class="auto-style10">
                <asp:Label ID="labelPoint" runat="server" Text="Point"></asp:Label>
            </td>
            <td class="auto-style11">구매수량</td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img class="auto-style12" src="file:///C:/Users/염광호/Documents/Visual%20Studio%202015/고급프로그래밍%20실습/NatureRepublicOnlineShop/images/Item/item_inBaket.png" /><img src="images/Item/item_inBuy.png" /><img src="images/Item/item_inInterest.png" /></td>
        </tr>
        <tr>
            <td colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15"></td>
            <td class="auto-style15"></td>
            <td class="auto-style16"></td>
            <td class="auto-style17"></td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
    </table>
        <p>
            &nbsp;</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style30" rowspan="3">&nbsp;</td>
                <td class="auto-style23">
                    <asp:ImageButton ID="firstImageButton_Specific0" runat="server" ImageUrl="~/images/Item/menu_specificOn.png" Width="247px" />
                </td>
                <td class="auto-style24">
                    <asp:ImageButton ID="firstImageButton_Samary0" runat="server" ImageUrl="~/images/Item/menu_SummaryOff.png" Width="246px" />
                </td>
                <td class="auto-style25">
                    <asp:ImageButton ID="firstImageButton_Deadline0" runat="server" ImageUrl="~/images/Item/menu_DeadlineOff.png" Width="246px" />
                </td>
                <td class="auto-style26">
                    <asp:ImageButton ID="firstImageButton_Photo0" runat="server" ImageUrl="~/images/Item/menu_PhotoOff.png" Width="247px" />
                </td>
                <td class="auto-style27">
                    <asp:ImageMap ID="firstImageButton_Comment0" runat="server" ImageUrl="~/images/Item/menu_CommentOff.png" Width="249px">
                    </asp:ImageMap>
                </td>
                <td class="auto-style18" rowspan="3">&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style19" rowspan="2">&nbsp;</td>
                <td>
                    <asp:Image ID="imageCenter" runat="server" />
                </td>
                <td class="auto-style18" rowspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="ImageBottom" runat="server" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style30" rowspan="3">&nbsp;</td>
                <td class="auto-style23">
                    <asp:ImageButton ID="firstImageButton_Specific1" runat="server" ImageUrl="~/images/Item/menu_specificOn.png" Width="247px" />
                </td>
                <td class="auto-style24">
                    <asp:ImageButton ID="firstImageButton_Samary1" runat="server" ImageUrl="~/images/Item/menu_SummaryOff.png" Width="246px" />
                </td>
                <td class="auto-style25">
                    <asp:ImageButton ID="firstImageButton_Deadline1" runat="server" ImageUrl="~/images/Item/menu_DeadlineOff.png" Width="246px" />
                </td>
                <td class="auto-style26">
                    <asp:ImageButton ID="firstImageButton_Photo1" runat="server" ImageUrl="~/images/Item/menu_PhotoOff.png" Width="247px" />
                </td>
                <td class="auto-style27">
                    <asp:ImageMap ID="firstImageButton_Comment1" runat="server" ImageUrl="~/images/Item/menu_CommentOff.png" Width="249px">
                    </asp:ImageMap>
                </td>
                <td class="auto-style18" rowspan="3">&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style6" rowspan="11">&nbsp;</td>
                <td class="auto-style21" style="border: 1px solid #000000; background-color: #f8f8f8">제품명</td>
                <td class="auto-style29" style="border: 1px solid #000000; background-color: #f8f8f8">
                    <asp:Label ID="labelTitle_sumary" runat="server" Text="Title" ></asp:Label>
                </td>
                <td class="auto-style31" rowspan="11">&nbsp;</td>
            </tr>
            <tr style="border: 1px solid #000000; background-color: #f8f8f8">
                <td class="auto-style21">사용기간 또는 개봉후 사용기간</td>
                <td class="auto-style29">
                    <asp:Label ID="labelDeadline" runat="server" Text="Deadline"></asp:Label>
                </td>
            </tr>
            <tr style="border: 1px solid #000000; background-color: #f8f8f8">
                <td class="auto-style21">피부타입</td>
                <td class="auto-style29">
                    <asp:Label ID="labelType_sumary" runat="server" Text="Skin"></asp:Label>
                </td>
            </tr>
            <tr style="border: 1px solid #000000; background-color: #f8f8f8">
                <td class="auto-style22">용량</td>
                <td class="auto-style28">
                    <asp:Label ID="labelSize_samary" runat="server" Text="Size"></asp:Label>
                </td>
            </tr>
            <tr style="border: 1px solid #000000; background-color: #f8f8f8">
                <td class="auto-style22">제조사</td>
                <td class="auto-style28">
                    <asp:Label ID="labelMadeby" runat="server" Text="Madeby"></asp:Label>
                </td>
            </tr>
            <tr style="border: 1px solid #000000; background-color: #f8f8f8">
                <td class="auto-style22">제조국</td>
                <td class="auto-style28">
                    <asp:Label ID="labelmadeIn" runat="server" Text="madeIn"></asp:Label>
                </td>
            </tr>
            <tr style="border: 1px solid #000000; background-color: #f8f8f8">
                <td class="auto-style22">식품의약품안전청 심사 필 유무<br />
                    (미백, 주름개선, 자외선 차단등)</td>
                <td class="auto-style28">상세페이지 참조</td>
            </tr>
            <tr style="border: 1px solid #000000; background-color: #f8f8f8">
                <td class="auto-style22">전성분</td>
                <td class="auto-style28">상세페이지 참조</td>
            </tr>
            <tr style="border: 1px solid #000000; background-color: #f8f8f8">
                <td class="auto-style21">사용상의 주의사항</td>
                <td class="auto-style29">상세페이지 참조</td>
            </tr>
            <tr style="border: 1px solid #000000; background-color: #f8f8f8">
                <td class="auto-style22">품질보증기준</td>
                <td class="auto-style28">본 제품에 이상이 있을 경우 공정거래위원회 고시 소비자분쟁해결기준에 의거하여 보상해 드립니다.</td>
            </tr>
            <tr style="border: 1px solid #000000; background-color: #f8f8f8">
                <td class="auto-style22">소비자상담관련 전화번호</td>
                <td class="auto-style28"><b>네이처리퍼블릭 고객센터 080-890-6000</b></td>
            </tr>
        </table>
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style30" rowspan="3">&nbsp;</td>
                <td class="auto-style23">
                    <asp:ImageButton ID="firstImageButton_Specific2" runat="server" ImageUrl="~/images/Item/menu_specificOff.png" Width="247px" />
                </td>
                <td class="auto-style24">
                    <asp:ImageButton ID="firstImageButton_Samary2" runat="server" ImageUrl="~/images/Item/menu_SummaryOn.png" Width="246px" />
                </td>
                <td class="auto-style25">
                    <asp:ImageButton ID="firstImageButton_Deadline2" runat="server" ImageUrl="~/images/Item/menu_DeadlineOff.png" Width="246px" />
                </td>
                <td class="auto-style26">
                    <asp:ImageButton ID="firstImageButton_Photo2" runat="server" ImageUrl="~/images/Item/menu_PhotoOff.png" Width="247px" />
                </td>
                <td class="auto-style27">
                    <asp:ImageMap ID="firstImageButton_Comment2" runat="server" ImageUrl="~/images/Item/menu_CommentOff.png" Width="249px">
                    </asp:ImageMap>
                </td>
                <td class="auto-style18" rowspan="3">&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style30" rowspan="3">&nbsp;</td>
                <td class="auto-style23">
                    <asp:ImageButton ID="firstImageButton_Specific5" runat="server" ImageUrl="~/images/Item/menu_specificOff.png" Width="247px" />
                </td>
                <td class="auto-style24">
                    <asp:ImageButton ID="firstImageButton_Samary3" runat="server" ImageUrl="~/images/Item/menu_SummaryOff.png" Width="246px" />
                </td>
                <td class="auto-style25">
                    <asp:ImageButton ID="firstImageButton_Deadline3" runat="server" ImageUrl="~/images/Item/menu_DeadlineOn.png" Width="246px" OnClick="firstImageButton_Deadline3_Click" />
                </td>
                <td class="auto-style26">
                    <asp:ImageButton ID="firstImageButton_Photo3" runat="server" ImageUrl="~/images/Item/menu_PhotoOff.png" Width="247px" />
                </td>
                <td class="auto-style27">
                    <asp:ImageMap ID="firstImageButton_Comment3" runat="server" ImageUrl="~/images/Item/menu_CommentOff.png" Width="249px">
                    </asp:ImageMap>
                </td>
                <td class="auto-style18" rowspan="3">&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style30" rowspan="3">&nbsp;</td>
                <td class="auto-style23">
                    <asp:ImageButton ID="firstImageButton_Specific6" runat="server" ImageUrl="~/images/Item/menu_specificOff.png" Width="247px" />
                </td>
                <td class="auto-style24">
                    <asp:ImageButton ID="firstImageButton_Samary4" runat="server" ImageUrl="~/images/Item/menu_SummaryOff.png" Width="246px" />
                </td>
                <td class="auto-style25">
                    <asp:ImageButton ID="firstImageButton_Deadline4" runat="server" ImageUrl="~/images/Item/menu_DeadlineOff.png" Width="246px" />
                </td>
                <td class="auto-style26">
                    <asp:ImageButton ID="firstImageButton_Photo4" runat="server" ImageUrl="~/images/Item/menu_PhotoOn.png" Width="247px" />
                </td>
                <td class="auto-style27">
                    <asp:ImageMap ID="firstImageButton_Comment4" runat="server" ImageUrl="~/images/Item/menu_CommentOff.png" Width="249px">
                    </asp:ImageMap>
                </td>
                <td class="auto-style18" rowspan="3">&nbsp;</td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style30" rowspan="3">&nbsp;</td>
                <td class="auto-style23">
                    <asp:ImageButton ID="firstImageButton_Specific7" runat="server" ImageUrl="~/images/Item/menu_specificOff.png" Width="247px" />
                </td>
                <td class="auto-style24">
                    <asp:ImageButton ID="firstImageButton_Samary5" runat="server" ImageUrl="~/images/Item/menu_SummaryOff.png" Width="246px" />
                </td>
                <td class="auto-style25">
                    <asp:ImageButton ID="firstImageButton_Deadline5" runat="server" ImageUrl="~/images/Item/menu_DeadlineOff.png" Width="246px" />
                </td>
                <td class="auto-style26">
                    <asp:ImageButton ID="firstImageButton_Photo5" runat="server" ImageUrl="~/images/Item/menu_PhotoOff.png" Width="247px" />
                </td>
                <td class="auto-style27">
                    <asp:ImageMap ID="firstImageButton_Comment5" runat="server" ImageUrl="~/images/Item/menu_CommentOn.png" Width="249px">
                    </asp:ImageMap>
                </td>
                <td class="auto-style18" rowspan="3">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
