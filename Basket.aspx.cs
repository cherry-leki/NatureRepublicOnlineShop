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


        if(!IsPostBack)
        {
            gridViewBasket.DataSource = sdsSource;
            gridViewBasket.DataBind();

            foreach (GridViewRow row in gridViewBasket.Rows)
            {
                CheckBox chkRow = (row.Cells[0].FindControl("checkBox") as CheckBox);
                Label labelTotalPrice = (row.Cells[4].FindControl("labelTotalPrice") as Label);
                Label labelPoint = (row.Cells[5].FindControl("labelPoint") as Label);

                labelTotalPrice.Text = (Convert.ToInt32(row.Cells[2].Text) * Convert.ToInt32(row.Cells[3].Text)).ToString();
                labelPoint.Text = (Convert.ToInt32(row.Cells[2].Text) / 10).ToString();
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

    protected void imgButtonLogo_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home.aspx");
    }

    protected void imageButtonPurchaseSelected_Click(object sender, ImageClickEventArgs e)
    {
        string buf = "";
        string sql;
        int counter = 0;
        Session.Remove("PurchaseItem");

        foreach (GridViewRow row in gridViewBasket.Rows)
        {
            CheckBox chkRow = (row.Cells[0].FindControl("checkBox") as CheckBox);

            counter++;
            if (chkRow.Checked)
            {
                 buf = buf + row.Cells[1].Text + "-" + row.Cells[2].Text + "-" +row.Cells[3].Text + "@";

                sql = "DELETE from tableBasket";
                sql = sql + string.Format(" WHERE ([memberID] = '{0}' AND[basketNumber] = '{1}') ", Session["MemberID"].ToString(), "B000" + counter);

                OleDbSqlServerQueryRun recorddata = new OleDbSqlServerQueryRun(sql);
                recorddata.RunNonQuery();
            }
        }

        DBSort();

        Session.Add("PurchaseItem", buf);
        Response.Redirect("Purchase.aspx");
    }

    protected void imageButtonDelete_Click(object sender, ImageClickEventArgs e)
    {
        string sql;
        int counter = 0;

        foreach (GridViewRow row in gridViewBasket.Rows)
        {
            counter++;
            sql = "";
            CheckBox chkRow = (row.Cells[0].FindControl("checkBox") as CheckBox);

            if (chkRow.Checked)
            {
                sql = "DELETE from tableBasket";
                sql = sql + string.Format(" WHERE ([memberID] = '{0}' AND[basketNumber] = '{1}') ", Session["MemberID"].ToString(), "B000" + counter);

                OleDbSqlServerQueryRun recorddata = new OleDbSqlServerQueryRun(sql);
                recorddata.RunNonQuery();
            }
        }

        DBSort();
        Response.Redirect("Basket.aspx");
    }

    public void DBSort()
    {
        string sql;
        int counter = 0;

        sql = "SELECT basketNumber FROM tableBasket";
        sql = sql + string.Format(" WHERE memberID = '{0}'", Session["MemberID"].ToString());

        OleDbSqlServerQueryReader counterMethod = new OleDbSqlServerQueryReader(sql, 10);
        string[] strResult = counterMethod.RunQueryRow();
        counter = counterMethod.Counter();


        for (int i = 1; i <= counter; i++)
        {
            int Ccounter = 0;
            for (; Ccounter < 10; Ccounter++)
            {
                if (strResult[i - 1].Equals("B000" + Ccounter))
                {
                    sql = " UPDATE [NatureRepublicDB].[dbo].[tableBasket] SET ";
                    sql = sql + string.Format("[basketNumber] = '{0}'", "B000" + i);
                    sql = sql + string.Format(" WHERE memberID = '{0}' AND basketNumber = '{1}'", Session["MemberID"].ToString(), strResult[i - 1]);

                    OleDbSqlServerQueryRun recordData = new OleDbSqlServerQueryRun(sql);
                    recordData.RunNonQuery();

                    break;
                }
            }
        }

    }
}