using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShoppingNew : System.Web.UI.Page
{
    string judge = "";
    string firstItemNumber;
    string secondItemNumber;
    string thirdItemNumber;
    string forthItemNumber;



    protected void Page_Load(object sender, EventArgs e)
    {  
        if (SessionExist("MemberID"))
        {
            imgButtonLogin.ImageUrl = "./images/Common/staticBanner_Top_Login_Logout.png";
            imgButtonJoin.ImageUrl = "./images/Common/staticBanner_Top_Signup_Logout.png";
        }
        else
        {
            imgButtonLogin.ImageUrl = "./images/Common/staticBanner_Top_Login.png";
            imgButtonJoin.ImageUrl = "./images/Common/staticBanner_Top_Signup.png";
        }

        if(Session["ShoppingList"] == null)
        {
            Session.Add("ShoppingList", "Cleansing");
            judge = "C";
        }

        if(Session["ShoppingList"].ToString().Equals("Cleansing"))
        {
            imageButtonMenu1Cleansing.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_CleansingOn.png";
            imageButtonMenu1SkinCare.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_SkinCareOff.png";
            imageButtonMenu1PackMask.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_PackMaskOff.png";
            imageButtonMenu1Makeup.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_MakeupOff.png";
            imageButtonMenu1Bodyhair.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_BodyHairOff.png";
            imageButtonMenu1Man.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_ManOff.png";
            imageButtonMenu1Blo.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_bloOff.png";

            judge = "C";
        }
        else if(Session["ShoppingList"].ToString().Equals("Skin"))
        {
            imageButtonMenu1Cleansing.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_CleansingOff.png";
            imageButtonMenu1SkinCare.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_SkinCareOn.png";
            imageButtonMenu1PackMask.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_PackMaskOff.png";
            imageButtonMenu1Makeup.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_MakeupOff.png";
            imageButtonMenu1Bodyhair.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_BodyHairOff.png";
            imageButtonMenu1Man.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_ManOff.png";
            imageButtonMenu1Blo.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_bloOff.png";
            judge = "S";
        }
        else if (Session["ShoppingList"].ToString().Equals("Pack"))
        {
            imageButtonMenu1Cleansing.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_CleansingOff.png";
            imageButtonMenu1SkinCare.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_SkinCareOff.png";
            imageButtonMenu1PackMask.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_PackMaskOn.png";
            imageButtonMenu1Makeup.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_MakeupOff.png";
            imageButtonMenu1Bodyhair.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_BodyHairOff.png";
            imageButtonMenu1Man.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_ManOff.png";
            imageButtonMenu1Blo.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_bloOff.png";

            judge = "P";
        }
        else if (Session["ShoppingList"].ToString().Equals("Makeup"))
        {
            imageButtonMenu1Cleansing.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_CleansingOff.png";
            imageButtonMenu1SkinCare.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_SkinCareOff.png";
            imageButtonMenu1PackMask.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_PackMaskOff.png";
            imageButtonMenu1Makeup.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_MakeupOn.png";
            imageButtonMenu1Bodyhair.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_BodyHairOff.png";
            imageButtonMenu1Man.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_ManOff.png";
            imageButtonMenu1Blo.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_bloOff.png";

            judge = "U";
        }
        else if (Session["ShoppingList"].ToString().Equals("Body"))
        {
            imageButtonMenu1Cleansing.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_CleansingOff.png";
            imageButtonMenu1SkinCare.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_SkinCareOff.png";
            imageButtonMenu1PackMask.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_PackMaskOff.png";
            imageButtonMenu1Makeup.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_MakeupOff.png";
            imageButtonMenu1Bodyhair.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_BodyHairOn.png";
            imageButtonMenu1Man.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_ManOff.png";
            imageButtonMenu1Blo.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_bloOff.png";

            judge = "B";
        }
        else if (Session["ShoppingList"].ToString().Equals("Man"))
        {
            imageButtonMenu1Cleansing.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_CleansingOff.png";
            imageButtonMenu1SkinCare.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_SkinCareOff.png";
            imageButtonMenu1PackMask.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_PackMaskOff.png";
            imageButtonMenu1Makeup.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_MakeupOff.png";
            imageButtonMenu1Bodyhair.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_BodyHairOff.png";
            imageButtonMenu1Man.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_ManOn.png";
            imageButtonMenu1Blo.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_bloOff.png";
            judge = "M";
        }
        else if (Session["ShoppingList"].ToString().Equals("Blo"))
        {
            imageButtonMenu1Cleansing.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_CleansingOff.png";
            imageButtonMenu1SkinCare.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_SkinCareOff.png";
            imageButtonMenu1PackMask.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_PackMaskOff.png";
            imageButtonMenu1Makeup.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_MakeupOff.png";
            imageButtonMenu1Bodyhair.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_BodyHairOff.png";
            imageButtonMenu1Man.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_ManOff.png";
            imageButtonMenu1Blo.ImageUrl = "./images/Shopping/Shop/Shopping_Menu_bloOn.png";

            judge = "V";
        }

        for (int i = 1; i <= 4; i++)
        {
            string sql;
            string[] sqlResult;

            sql = " SELECT itemName, itemImage, itemPrice";
            sql = sql + " FROM tableItem";
            sql = sql + string.Format(" WHERE  (itemType = '{0}' AND itemNumber = '{1}')", Session["ShoppingList"].ToString(), judge + "000" + i);

            OleDbSqlServerQueryReader RecordData = new OleDbSqlServerQueryReader(sql, 3);
            sqlResult = RecordData.RunQueryCol();

            if(i == 1)
            {
                imgButtonFirst.ImageUrl = sqlResult[1] + "/list.png";
                labelFirstItemName.Text = sqlResult[0];
                labelFirstItemPrice.Text = sqlResult[2];
                firstItemNumber = judge + "000" + i;
            }
            else if(i == 2)
            {
                imgButtonSecond.ImageUrl = sqlResult[1] + "/list.png";
                labelSecondItemName.Text = sqlResult[0];
                labelSecondItemPrice.Text = sqlResult[2];
                secondItemNumber = judge + "000" + i;
            }
            else if (i == 3)
            {
                imgButtonThird.ImageUrl = sqlResult[1] + "/list.png";
                labelThirdItemName.Text = sqlResult[0];
                labelThirdItemPrice.Text = sqlResult[2];
                thirdItemNumber = judge + "000" + i;
            }
            else if (i == 4)
            {
                imgButtonForth.ImageUrl = sqlResult[1] + "/list.png";
                labelForthItemName.Text = sqlResult[0];
                labelForthItemPrice.Text = sqlResult[2];
                forthItemNumber = judge + "000" + i;
            }
        }
    }

    protected void LoginButton_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

    // Join Or Logout
    protected void JoinButton_Click(object sender, ImageClickEventArgs e)
    {
        if (SessionRemove("MemberID"))
        {
            Response.Redirect("Home.aspx");
        }

        Response.Redirect("SignUpIntro.aspx");
    }

    protected void BucketButton_Click(object sender, ImageClickEventArgs e)
    {
        if (SessionExist("MemberID"))
        {
            Response.Redirect("Basket.aspx");
        }

        Response.Redirect("Login.aspx");
    }

    protected void MyShopButton_Click(object sender, ImageClickEventArgs e)
    {
        if (SessionExist("MemberID"))
        {
            Response.Redirect("MemberMypage.aspx");
        }

        Response.Redirect("Login.aspx");
    }

    private bool SessionExist(string SV)
    {
        IEnumerator SL = Session.GetEnumerator();
        while (SL.MoveNext())
        {
            if (SL.Current.ToString() == SV)
            {
                return true;
            }
        }
        return false;
    }

    private bool SessionRemove(string SV)
    {
        int i = 0;
        IEnumerator SL = Session.GetEnumerator();
        while (SL.MoveNext())
        {
            if (SL.Current.ToString() == SV)
            {
                Session.RemoveAll();
                return true;
            }
        }
        return false;
    }

    protected void imageButtonFirst_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect(string.Format("Shopping_Item.aspx?itemNumber="+firstItemNumber));
    }

    protected void imageButtonSecond_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect(string.Format("Shopping_Item.aspx?itemNumber=" + secondItemNumber));
    }

    protected void imageButtonThird_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect(string.Format("Shopping_Item.aspx?itemNumber=" + thirdItemNumber));
    }

    protected void imageButtonForth_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect(string.Format("Shopping_Item.aspx?itemNumber=" + forthItemNumber));
    }

    protected void imgButtonLogo_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home.aspx");
    }

    protected void imageButtonMenu1Cleansing_Click(object sender, ImageClickEventArgs e)
    {
        
        Session.Add("ShoppingList", "Cleansing");
        Response.Redirect("Shopping.aspx");
    }

    protected void imageButtonMenu1SkinCare_Click(object sender, ImageClickEventArgs e)
    {
        Session.Add("ShoppingList", "Skin");
        Response.Redirect("Shopping.aspx");
    }

    protected void imageButtonMenu1PackMask_Click(object sender, ImageClickEventArgs e)
    {
       

        Session.Add("ShoppingList", "Pack");
        Response.Redirect("Shopping.aspx");
    }

    protected void imageButtonMenu1Makeup_Click(object sender, ImageClickEventArgs e)
    {
       

        Session.Add("ShoppingList", "Makeup");
        Response.Redirect("Shopping.aspx");
    }

    protected void imageButtonMenu1Bodyhair_Click(object sender, ImageClickEventArgs e)
    {
        
        Session.Add("ShoppingList", "Body");
        Response.Redirect("Shopping.aspx");
    }

    protected void imageButtonMenu1Man_Click(object sender, ImageClickEventArgs e)
    {
       

        Session.Add("ShoppingList", "Man");
        Response.Redirect("Shopping.aspx");
    }

    protected void imageButtonMenu1Blo_Click(object sender, ImageClickEventArgs e)
    {
       
        Session.Add("ShoppingList", "Blo");
        Response.Redirect("Shopping.aspx");
    }

    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Shopping.aspx");
    }
}