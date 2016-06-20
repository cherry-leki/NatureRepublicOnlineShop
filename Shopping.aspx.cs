using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShoppingNew : System.Web.UI.Page
{



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
        }


            if (Session["ShoppingList"].ToString().Equals("Cleansing"))
            {
                imgButtonFirst.ImageUrl = "./images/Item/Cleansing/00001/Shopping_Cleansing_Item_JejuSparklingFoamCleanser.png";
                imgButtonSecond.ImageUrl = "./images/Item/Cleansing/00002/Shopping_Cleansing_Item_BeeVenomCleansingFoam.png";
                imgButtonThird.ImageUrl = "./images/Item/Cleansing/00003/Shopping_Cleansing_Item_SnailSolutionFoamCleanser.png";
                imgButtonForth.ImageUrl = "./images/Item/Cleansing/00004/Shopping_Cleansing_Item_RealNaturePeelingJel_Lemon.png";    
            }

        if (Session["ShoppingList"].ToString().Equals("Skin"))
        {
            imgButtonFirst.ImageUrl = "./images/Item/Cleansing/00001/Shopping_Cleansing_Item_JejuSparklingFoamCleanser.png";
            imgButtonSecond.ImageUrl = "./images/Item/Cleansing/00002/Shopping_Cleansing_Item_BeeVenomCleansingFoam.png";
            imgButtonThird.ImageUrl = "./images/Item/Cleansing/00003/Shopping_Cleansing_Item_SnailSolutionFoamCleanser.png";
            imgButtonForth.ImageUrl = "./images/Item/Cleansing/00004/Shopping_Cleansing_Item_RealNaturePeelingJel_Lemon.png";
        }

        if (Session["ShoppingList"].ToString().Equals("Pack"))
        {
            imgButtonFirst.ImageUrl = "./images/Item/Cleansing/00001/Shopping_Cleansing_Item_JejuSparklingFoamCleanser.png";
            imgButtonSecond.ImageUrl = "./images/Item/Cleansing/00002/Shopping_Cleansing_Item_BeeVenomCleansingFoam.png";
            imgButtonThird.ImageUrl = "./images/Item/Cleansing/00003/Shopping_Cleansing_Item_SnailSolutionFoamCleanser.png";
            imgButtonForth.ImageUrl = "./images/Item/Cleansing/00004/Shopping_Cleansing_Item_RealNaturePeelingJel_Lemon.png";
        }

        if (Session["ShoppingList"].ToString().Equals("Makeup"))
        {
            imgButtonFirst.ImageUrl = "./images/Item/Cleansing/00001/Shopping_Cleansing_Item_JejuSparklingFoamCleanser.png";
            imgButtonSecond.ImageUrl = "./images/Item/Cleansing/00002/Shopping_Cleansing_Item_BeeVenomCleansingFoam.png";
            imgButtonThird.ImageUrl = "./images/Item/Cleansing/00003/Shopping_Cleansing_Item_SnailSolutionFoamCleanser.png";
            imgButtonForth.ImageUrl = "./images/Item/Cleansing/00004/Shopping_Cleansing_Item_RealNaturePeelingJel_Lemon.png";
        }

        if (Session["ShoppingList"].ToString().Equals("Body"))
        {
            imgButtonFirst.ImageUrl = "./images/Item/Cleansing/00001/Shopping_Cleansing_Item_JejuSparklingFoamCleanser.png";
            imgButtonSecond.ImageUrl = "./images/Item/Cleansing/00002/Shopping_Cleansing_Item_BeeVenomCleansingFoam.png";
            imgButtonThird.ImageUrl = "./images/Item/Cleansing/00003/Shopping_Cleansing_Item_SnailSolutionFoamCleanser.png";
            imgButtonForth.ImageUrl = "./images/Item/Cleansing/00004/Shopping_Cleansing_Item_RealNaturePeelingJel_Lemon.png";
        }

        if (Session["ShoppingList"].ToString().Equals("Man"))
        {
            imgButtonFirst.ImageUrl = "./images/Item/Cleansing/00001/Shopping_Cleansing_Item_JejuSparklingFoamCleanser.png";
            imgButtonSecond.ImageUrl = "./images/Item/Cleansing/00002/Shopping_Cleansing_Item_BeeVenomCleansingFoam.png";
            imgButtonThird.ImageUrl = "./images/Item/Cleansing/00003/Shopping_Cleansing_Item_SnailSolutionFoamCleanser.png";
            imgButtonForth.ImageUrl = "./images/Item/Cleansing/00004/Shopping_Cleansing_Item_RealNaturePeelingJel_Lemon.png";
        }

        if (Session["ShoppingList"].ToString().Equals("Blo"))
        {
            imgButtonFirst.ImageUrl = "./images/Item/Cleansing/00001/Shopping_Cleansing_Item_JejuSparklingFoamCleanser.png";
            imgButtonSecond.ImageUrl = "./images/Item/Cleansing/00002/Shopping_Cleansing_Item_BeeVenomCleansingFoam.png";
            imgButtonThird.ImageUrl = "./images/Item/Cleansing/00003/Shopping_Cleansing_Item_SnailSolutionFoamCleanser.png";
            imgButtonForth.ImageUrl = "./images/Item/Cleansing/00004/Shopping_Cleansing_Item_RealNaturePeelingJel_Lemon.png";
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
        Response.Redirect(string.Format("Shopping_Item.aspx?itemNumber=C0001"));
    }

    protected void imgButtonLogo_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home.aspx");
    }

    protected void imageButtonMenu1Cleansing_Click(object sender, ImageClickEventArgs e)
    {
        Session.Add("ShoppingList", "Cleansing");
    }

    protected void imageButtonMenu1SkinCare_Click(object sender, ImageClickEventArgs e)
    {
        Session.Add("ShoppingList", "Skin");
    }

    protected void imageButtonMenu1PackMask_Click(object sender, ImageClickEventArgs e)
    {
        Session.Add("ShoppingList", "Pack");
    }

    protected void imageButtonMenu1Makeup_Click(object sender, ImageClickEventArgs e)
    {
        Session.Add("ShoppingList", "Makeup");
    }

    protected void imageButtonMenu1Bodyhair_Click(object sender, ImageClickEventArgs e)
    {
        Session.Add("ShoppingList", "Body");
    }

    protected void imageButtonMenu1Man_Click(object sender, ImageClickEventArgs e)
    {
        Session.Add("ShoppingList", "Man");
    }

    protected void imageButtonMenu1Blo_Click(object sender, ImageClickEventArgs e)
    {
        Session.Add("ShoppingList", "Blo");
    }
}