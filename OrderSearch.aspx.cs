using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OrderSearch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int counter = 0;
        int totalPrice = 0;

        if (SessionExist("MemberID"))
        {
            imgButtonLogin.ImageUrl = "./images/Common/staticBanner_Top_Login_Logout.png";
            imgButtonLogin.Enabled = false;
            imgButtonJoin.ImageUrl = "./images/Common/staticBanner_Top_Signup_Logout.png";
        }
        else
        {
            imgButtonLogin.ImageUrl = "./images/Common/staticBanner_Top_Login.png";
            imgButtonJoin.ImageUrl = "./images/Common/staticBanner_Top_Signup.png";
        }

        gridViewInfomation.DataSource = sdsSource;
        gridViewInfomation.DataBind();

        labelOrderTopName.Text = Session["MemberID"].ToString();
        labelOrderTopDate.Text = DateTime.Now.ToString("yyyy-MM-dd");

        foreach (GridViewRow row in gridViewInfomation.Rows)
        {
            counter++;
            totalPrice += Convert.ToInt32(row.Cells[3].Text);
        }

        labelOrderItemCount.Text = counter.ToString();
        labelOrderItemPrice.Text = totalPrice.ToString();
        labelPoint.Text = (totalPrice / 100).ToString();
        labelSumPrice.Text = totalPrice.ToString();


        if(Session["OrderData"] != null)
        {
            string sql;
            sql = "SELECT [orderDate], [orderAddr], [orderReceiver], [orderPhone], [orderMemo], [orderPrice] FROM tableOrder";
            sql = sql + string.Format(" WHERE ([memberID] = '{0}' AND [orderNumber] = '{1}') ", Session["MemberID"].ToString(), Session["OrderData"].ToString());

            OleDbSqlServerQueryReader recorddata = new OleDbSqlServerQueryReader(sql, 6);
            string[] sqlresult = recorddata.RunQueryCol();

            labelPaymentOrderDate.Text = sqlresult[0];
            labelPaymentPayPrice.Text = sqlresult[5];
            labelPaymentPoint.Text = (Convert.ToInt32(sqlresult[5]) / 100).ToString();
            labelDeliveryName.Text = sqlresult[2];
            labelDeliveryPhone.Text = sqlresult[3];
            labelDeliveryAddress.Text = sqlresult[1];
            labelDeliveryComment.Text = sqlresult[4];
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

    protected void imgButtonShopping_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Shopping.aspx");
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
    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {

    }

    protected void checkButton_CheckedChanged(object sender, EventArgs e)
    {
        foreach (GridViewRow row in gridViewInfomation.Rows)
        {
            CheckBox chkRow = (row.Cells[0].FindControl("checkButton") as CheckBox);

            if (chkRow.Checked)
            {

                Session.Add("OrderData", row.Cells[2].Text);
                //MessageBox.Show(row.Cells[2].Text.);

                Response.Redirect("OrderSearch.aspx");
                return;
            }
        }
    }
}