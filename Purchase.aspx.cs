using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Purchase : System.Web.UI.Page
{
    int totalPrice = 0;
    int orderCounter = 0;

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

        for (int i = 0; i < item.Length - 1; i++)
        {
            string[] unitance = System.Text.RegularExpressions.Regex.Split(item[i], "-");
            dt.Rows.Add(unitance[0], unitance[1], unitance[2], (Convert.ToInt32(unitance[1]) * Convert.ToInt32(unitance[2])).ToString(), (Convert.ToInt32(unitance[1]) / 10).ToString());
            totalPrice += (Convert.ToInt32(unitance[1]) * Convert.ToInt32(unitance[2]));
        }

        gridViewBasket.DataSource = dt;
        gridViewBasket.DataBind();


        if(!IsPostBack)
        {
            string sql;
            sql = " SELECT  memberName, memberAddr, memberTel, memberEmail";
            sql = sql + " FROM tableMember ";
            sql = sql + string.Format(" WHERE  (memberID = '{0}')", Session["MemberID"].ToString());

            string[] sqlResult;

            OleDbSqlServerQueryReader RecordData = new OleDbSqlServerQueryReader(sql, 4);

            sqlResult = RecordData.RunQueryCol();

            labelName.Text = sqlResult[0];
            labelEmail.Text = sqlResult[3];
            labelPhone.Text = sqlResult[2];
            labelAddress.Text = sqlResult[1];



            if (radioButtonIdentical.Checked)
            {
                textBoxReceiverName.Text = labelName.Text;
                textBoxAddress.Text = labelAddress.Text;

                string[] phone = System.Text.RegularExpressions.Regex.Split(sqlResult[2], "-");
                textBoxPhone1.Text = phone[1];
                textBoxPhone2.Text = phone[2];

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

    protected void imgButtonLogo_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home.aspx");
    }

    protected void Delivery_checkedChanged(object sender, EventArgs e)
    {
        if(radioButtonIdentical.Checked)
        {
            string sql;
            sql = " SELECT  memberName, memberAddr, memberTel, memberEmail";
            sql = sql + " FROM tableMember ";
            sql = sql + string.Format(" WHERE  (memberID = '{0}')", Session["MemberID"].ToString());

            string[] sqlResult;

            OleDbSqlServerQueryReader RecordData = new OleDbSqlServerQueryReader(sql, 4);
            sqlResult = RecordData.RunQueryCol();

            textBoxReceiverName.Text = labelName.Text;
            textBoxAddress.Text = labelAddress.Text;

            string[] phone = System.Text.RegularExpressions.Regex.Split(sqlResult[2], "-");
            textBoxPhone1.Text = phone[1];
            textBoxPhone2.Text = phone[2];
        }
        else
        {
            textBoxReceiverName.Text = "";
            textBoxAddress.Text = "";
            textBoxPhone1.Text = "";
            textBoxPhone2.Text = "";
        }
    }

    protected void imageButtonPay_Click(object sender, ImageClickEventArgs e)
    {
        if ((textBoxReceiverName.Text.Length > 20) || textBoxReceiverName.Text.Length < 1)
        {
            MessageBox.Show("수취인을 확인해 주세요.", this);
            return;
        }

        if ((textBoxAddress.Text.Length < 19) || (textBoxAddress.Text.Length > 50))
        {
            MessageBox.Show("주소를 확인해 주세요. 주소는 30 ~ 50자 내외 여야 합니다..", this);
            return;
        }

        if ((textBoxPhone1.Text.Length < 3) || (textBoxPhone2.Text.Length < 3))
        {
            MessageBox.Show("휴대폰 번호를 확인해 주세요.", this);
            return;
        }

        if (!radioButtonMsgOk.Checked && !radioButtonMsgNo.Checked)
        {
            MessageBox.Show("문자메시지 수신여부를 확인해 주세요.", this);
            return;
        }

        string sql;
        sql = " SELECT orderNumber";
        sql = sql + " FROM tableOrder";
        OleDbSqlServerQueryReader readCount = new OleDbSqlServerQueryReader(sql, 9);
        readCount.RunQueryRow();
        orderCounter = readCount.Counter() + 1;
        

        sql = " INSERT INTO [NatureRepublicDB].[dbo].[tableOrder] ";
        sql = sql + " ([orderNumber], [memberID], [orderDate], [orderAddr], [orderReceiver], [orderPhone], [orderMemo], [orderPrice]) ";
        sql = sql + string.Format(" VALUES ('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}')", "O000"+ orderCounter, Session["MemberID"].ToString(), DateTime.Now.ToString("yyyy-MM-dd"), textBoxAddress.Text, textBoxReceiverName.Text,
            dropdownlistPhone.SelectedValue.ToString() + "-" + textBoxPhone1.Text + "-" + textBoxPhone2.Text, textBoxMemo.Text, totalPrice.ToString());

        OleDbSqlServerQueryRun recordData = new OleDbSqlServerQueryRun(sql);
        recordData.RunNonQuery();

        Session.Add("PurchaseItem", Session["PurchaseItem"].ToString() + "@" + "O000" + orderCounter);
        Response.Redirect("Payment.aspx");
    }
}