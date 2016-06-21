using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Payment : System.Web.UI.Page
{
    int totalPrice = 0;
    string orderNumber;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (SessionExist("MemberID"))
        {
            imgButtonLogin.ImageUrl = "./images/Common/staticBanner_Top_Login_Logout.png";
            imgButtonJoin.ImageUrl = "./images/Common/staticBanner_Top_Signup_Logout.png";
        }
        else
        {
            Response.Redirect("Home.aspx");
        }

        string[] item = System.Text.RegularExpressions.Regex.Split(Session["PurchaseItem"].ToString(), "@");


        DataTable dt = new DataTable();
        dt.Columns.AddRange(new DataColumn[5] { new DataColumn("Name"), new DataColumn("Price"), new DataColumn("Count"), new DataColumn("TotalPrice"), new DataColumn("Point") });

        for (int i = 0; i < item.Length - 2; i++)
        {
            string[] unitance = System.Text.RegularExpressions.Regex.Split(item[i], "-");
            dt.Rows.Add(unitance[0], unitance[1], unitance[2], (Convert.ToInt32(unitance[1]) * Convert.ToInt32(unitance[2])).ToString(), (Convert.ToInt32(unitance[1]) / 10).ToString());
            totalPrice += (Convert.ToInt32(unitance[1]) * Convert.ToInt32(unitance[2]));
        }

        gridViewBasket.DataSource = dt;
        gridViewBasket.DataBind();

        orderNumber = item[item.Length - 1];
        labelPrice.Text = totalPrice.ToString();

        string sql;
        sql = "SELECT memberPoint";
        sql = sql + " FROM tableMember";
        sql = sql + string.Format(" WHERE memberID = '{0}'", Session["MemberID"].ToString());

        OleDbSqlServerQueryReader point = new OleDbSqlServerQueryReader(sql, 1);
        string[] stlresult = point.RunQueryCol();

        labelPoint.Text = stlresult[0];
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

    protected void textBoxUsePoint_TextChanged(object sender, EventArgs e)
    {
        int point = Convert.ToInt32(labelPoint.Text);
        int usePoint = Convert.ToInt32(textBoxUsePoint.Text);


        if (point - usePoint >= 0)
        {
            if(usePoint < 2000)
            {
                MessageBox.Show("2000 포인트이상 사용하실 수 있습니다.", this);
                return;
            }
        }
        else
        {
            MessageBox.Show("가지고 있는 포인트보다 사용하고자는 포인트가 많습니다.", this);
            return;
        }
        
        labelPayPrice.Text = (totalPrice - usePoint).ToString();
    }

    protected void imgButtonBefore_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Purchase.aspx");
    }

    protected void imgButtonPay_Click(object sender, ImageClickEventArgs e)
    {
        int paymentCounter = 0;
        string payHow = "";

        if(radioButtonCard.Checked)
        {
            payHow = radioButtonCard.Text;
        }
        else if(radioButtonVirtual.Checked)
        {
            payHow = radioButtonVirtual.Text;
        }
        else if (radioButtonDelivery.Checked)
        {
            payHow = radioButtonDelivery.Text;
        }
        else if (radioButtonPayPhone.Checked)
        {
            payHow = radioButtonPayPhone.Text;
        }
        else if (radioButtonKakao.Checked)
        {
            payHow = radioButtonKakao.Text;
        }

        string sql;
        sql = " SELECT orderNumber";
        sql = sql + " FROM tableOrder";
        OleDbSqlServerQueryReader readCount = new OleDbSqlServerQueryReader(sql, 9);
        readCount.RunQueryRow();

        paymentCounter = readCount.Counter() + 1;


        sql = " INSERT INTO [NatureRepublicDB].[dbo].[tablePayment] ";
        sql = sql + " ([paymentNumber], [memberID], [orderNumber], [paymentHow], [paymentResult]) ";
        sql = sql + string.Format(" VALUES ('{0}', '{1}', '{2}', '{3}', '{4}')", "P000" + paymentCounter, Session["MemberID"].ToString(), orderNumber,
           "dd", labelPayPrice.Text);

        OleDbSqlServerQueryRun recordData = new OleDbSqlServerQueryRun(sql);
        recordData.RunNonQuery();

        

        Response.Redirect("Home.aspx");
    }

    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Shopping.aspx");
    }

    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home.aspx");

    }
}