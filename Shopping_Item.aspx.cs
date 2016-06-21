using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Shopping_ItemNew : System.Web.UI.Page
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
            labelItemName.Text = sqlResult[0];
            ImageMain.ImageUrl = sqlResult[1] + "/main.jpg";
            labelItemPrice.Text = sqlResult[2];
            labelItemSize.Text = sqlResult[3];
            labelItemSkinType.Text = sqlResult[4];
            labelItemPoint.Text = sqlResult[5];

            ImageCenter.ImageUrl = sqlResult[1] + "/center.jpg";
            ImageBottom.ImageUrl = sqlResult[1] + "/bottom.jpg";


            labelSummaryItemName.Text = labelItemName.Text;
            labelSummaryItemSize.Text = labelItemSize.Text;
            labelSummaryItemDuration.Text = sqlResult[6];
            labelSummaryItemSkinType.Text = sqlResult[4];
            labelSummaryItemCompany.Text = sqlResult[7];
            labelSummaryItemCountry.Text = sqlResult[8];
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

        Response.Redirect("SignUpAgreement.aspx");
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
            Response.Redirect("Mypage.aspx");
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

    protected void imgButtonInBacket_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["MemberID"] == null)
        {
            MessageBox.Show("로그인을 해주세요.", this);
            return;
        }

        int counter = 0;
        DateTime time = DateTime.Now + new TimeSpan(7, 0, 0, 0);

        string sql;

        sql = "SELECT basketNumber FROM tableBasket";
        sql = sql + string.Format(" WHERE memberID = '{0}'", Session["MemberID"].ToString());

        OleDbSqlServerQueryReader counterMethod = new OleDbSqlServerQueryReader(sql, 10);
        counterMethod.RunQueryRow();
        counter = counterMethod.Counter();

        sql = " INSERT INTO [NatureRepublicDB].[dbo].[tableBasket] ";
        sql = sql + " ([basketNumber], [memberID], [itemNumber], [basketCount], [basketDeadline]) ";
        sql = sql + string.Format(" VALUES ('{0}', '{1}', '{2}', {3}, '{4}')", "B000" + (counter + 1), Session["MemberID"], Request["itemNumber"], textBoxCount.Text, time.ToString("yyyy-MM-dd"));

        OleDbSqlServerQueryRun recordData = new OleDbSqlServerQueryRun(sql);
        recordData.RunNonQuery();

        if (recordData.ChangeRecordCount > 0)
        {
            MessageBox.Show("장바구니에 등록 하였습니다..", this);
            return;
        }
        else
        {
            MessageBox.Show("장바구니 등록에 오류가 발생했습니다.", this);
            return;
        }
    }

    protected void imgButtonIncrease_Click(object sender, ImageClickEventArgs e)
    {
        int counter = Convert.ToInt32(textBoxCount.Text);
        if (counter < 99)
        {
            counter++;
            textBoxCount.Text = counter.ToString();
        }
    }

    protected void imgButtonDecrease_Click(object sender, ImageClickEventArgs e)
    {
        int counter = Convert.ToInt32(textBoxCount.Text);
        if (counter > 1)
        {
            counter--;
            textBoxCount.Text = counter.ToString();
        }
    }

    protected void ImageButtonInInterest_Click(object sender, ImageClickEventArgs e)
    {
        if(Session["MemberID"] == null)
        {
            MessageBox.Show("로그인을 해주세요.", this);
            return;
        }

        int counter = 0;
        DateTime time = DateTime.Now + new TimeSpan(30, 0, 0, 0);

        string sql;
        sql = "SELECT interestNumber FROM tableInterest";
        sql = sql + string.Format(" WHERE memberID = '{0}'", Session["MemberID"].ToString());

        OleDbSqlServerQueryReader counterMethod = new OleDbSqlServerQueryReader(sql, 10);
        counterMethod.RunQueryRow();
        counter = counterMethod.Counter();

        sql = " INSERT INTO [NatureRepublicDB].[dbo].[tableInterest] ";
        sql = sql + " ([interestNumber], [memberID], [itemNumber], [itemDeadLine]) ";
        sql = sql + string.Format(" VALUES ('{0}', '{1}', '{2}', '{3}')", "I000" + (counter + 1), Session["MemberID"], Request["itemNumber"], time.ToString("yyyy-MM-dd"));

        OleDbSqlServerQueryRun recordData = new OleDbSqlServerQueryRun(sql);
        recordData.RunNonQuery();

        if (recordData.ChangeRecordCount > 0)
        {
            MessageBox.Show("관심상품에 등록 하였습니다..", this);
            return;
        }
        else
        {
            MessageBox.Show("관심상품 등록에 오류가 발생했습니다.", this);
            return;
        }
    }

    protected void imgButtonPurchase_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["MemberID"] == null)
        {
            MessageBox.Show("로그인을 해주세요.", this);
            return;
        }

        string buf = "";

        buf = labelItemName.Text + "-" + labelItemPrice.Text + "-" + textBoxCount.Text + "@";

        Session.Add("PurchaseItem", buf);
        Response.Redirect("Purchase.aspx");
    }

    protected void imgButtonLogo_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}