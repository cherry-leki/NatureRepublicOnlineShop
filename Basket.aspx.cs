using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Basket : System.Web.UI.Page
{
    ArrayList list = new ArrayList();

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
            return;
        }

        //string sql1;
        //sql1 = " SELECT basketNumber";
        //sql1 = sql1 + " FROM tableBasket";
        //sql1 = sql1 + string.Format(" WHERE  (memberID = '{0}')", Session["MemberID"].ToString());
        //OleDbSqlServerQueryReader writing = new OleDbSqlServerQueryReader(sql1, 10);
        //writing.RunQueryRow();
        //int counter = writing.Counter();


        //string sql;
        //sql = " SELECT itemImage, itemName, itemPrice, basketCount, basketDeadline";
        //sql = sql + " FROM tableBasket INNER JOIN tableItem ON tableBasket.itemNumber = tableItem.itemNumber";
        //sql = sql + string.Format(" WHERE  (tableBasket.memberID = '{0}')", Session["MemberID"].ToString());

        //string[] sqlResult;

        //OleDbSqlServerQueryReader RecordData = new OleDbSqlServerQueryReader(sql, 5);
        //sqlResult = RecordData.RunQueryCol();

        foreach( GridViewRow row in gridViewBasket.Rows)
        {
            CheckBox chkRow = (row.Cells[0].FindControl("chkRow") as CheckBox);

            if (chkRow.Checked)
            {
                
            }
        }
        gridViewBasket.DataSource = sdsSource;
        gridViewBasket.DataBind();
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