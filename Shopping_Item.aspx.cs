using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Item : System.Web.UI.Page
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

        string sql;
        sql = " SELECT  itemName, itemImage, itemPrice, itemSize, itemSkinType, itemPoint, itemDeadline, itemMadeby, itemMadein  ";
        sql = sql + " FROM tableItem ";
        sql = sql + string.Format(" WHERE  (itemNumber = '{0}')", Request["itemNumber"]);

        string[] sqlResult;

        OleDbSqlServerQueryReader RecordData = new OleDbSqlServerQueryReader(sql, 9);
        sqlResult = RecordData.RunQueryCol();

        if (RecordData.ResultExist)
        {
            labelTitle.Text = sqlResult[0];
            mainImage.ImageUrl = sqlResult[1] + "/" + Request["itemNumber"] + "/" + "item.png";
            labelPrice.Text = sqlResult[2];
            labelSize.Text = sqlResult[3];
            labelType.Text = sqlResult[4];
            labelPoint.Text = sqlResult[5];

            imageCenter.ImageUrl = sqlResult[1] + "/" + Request["itemNumber"] + "/" + "center.jpg";
            ImageBottom.ImageUrl = sqlResult[1] + "/" + Request["itemNumber"] + "/" + "bottom.jpg";


            labelTitle_sumary.Text = labelTitle.Text;
            labelSize_samary.Text = labelSize.Text;
            labelDeadline.Text = sqlResult[6];
            labelMadeby.Text = sqlResult[7];
            labelmadeIn.Text = sqlResult[8];
        }
    }

    protected void firstImageButton_Deadline3_Click(object sender, ImageClickEventArgs e)
    {

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
}