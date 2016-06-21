using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Mypage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (SessionExist("MemberID"))
        {
            imgButtonLogin.ImageUrl = "./images/Common/staticBanner_Top_Login_Logout.png";
            imgButtonLogin.Enabled = false;
            imgButtonJoin.ImageUrl = "./images/Common/staticBanner_Top_Signup_Logout.png";
        }
        else {
            Response.Redirect("Home.aspx");
        }

        // 포스트백을 사용하지 않으면 뜨지 않음.
        if (!IsPostBack)
        {
            string sql;
            sql = " SELECT  memberID, memberName, memberAddr, memberTel, memberEmail, memberSkin ";
            sql = sql + " FROM tableMember ";
            sql = sql + string.Format(" WHERE  (memberID = '{0}')", Session["MemberID"].ToString());

            string[] sqlResult;

            OleDbSqlServerQueryReader RecordData = new OleDbSqlServerQueryReader(sql, 6);
            sqlResult = RecordData.RunQueryCol();

            if (RecordData.ResultExist)
            {
                labelID.Text = sqlResult[0];
                labelName.Text = sqlResult[1];

                textBoxAddress.Text = sqlResult[2];

                string[] textPhone = System.Text.RegularExpressions.Regex.Split(sqlResult[3], "-");
                textBoxPhone1.Text = textPhone[1];
                textBoxPhone2.Text = textPhone[2];

                string[] email = System.Text.RegularExpressions.Regex.Split(sqlResult[4], "@");
                textBoxEmail1.Text = email[0];
                textBoxEmail2.Text = email[1];

                dropdownlistSkinType.SelectedValue = sqlResult[5];
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

    protected void buttonUpdate_Click(object sender, EventArgs e)
    {
        if ((textBoxPW.Text.Length < 6) || (textBoxPW.Text.Length > 20))
        {
            MessageBox.Show("비밀번호 길이는 영문, 숫자, 특수문자 포함 6 ~ 20자 입니다.", this);
            return;
        }

        if (!textBoxPW.Text.Equals(textBoxPWConfigure.Text))
        {
            MessageBox.Show("비밀번호 확인이 비밀번호와 일치하지 않습니다.", this);
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

        if (textBoxEmail1.Text.Length < 4 || textBoxEmail2.Text.Length < 4)
        {
            MessageBox.Show("이메일을 확인해 주세요.", this);
            return;
        }

        string sql;

        sql = " UPDATE [NatureRepublicDB].[dbo].[tableMember] SET ";
        sql = sql + string.Format("[memberPW] = '{0}', ", textBoxPW.Text);
        sql = sql + string.Format("[memberAddr] = '{0}', ", textBoxAddress.Text);
        sql = sql + string.Format("[memberTel] = '{0}', ", dropdownlistPhone.SelectedValue.ToString() + "-" + textBoxPhone1.Text + "-" + textBoxPhone2.Text);
        sql = sql + string.Format("[memberEmail] = '{0}', ", textBoxEmail1.Text + "@" + textBoxEmail2.Text);
        sql = sql + string.Format("[memberSkin] = '{0}'", dropdownlistSkinType.SelectedValue.ToString());
        sql = sql + string.Format(" WHERE memberID = '{0}' ", Session["MemberID"].ToString());


        OleDbSqlServerQueryRun recordData = new OleDbSqlServerQueryRun(sql);
        recordData.RunNonQuery();

        if (recordData.ChangeRecordCount > 0)
        {
            MessageBox.Show("수정 성공", this);
        }
        else
        {
            MessageBox.Show("수정 실패", this);
        }
    }

    protected void imgButtonLogo_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home.aspx");
    }

    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Shopping.aspx");
    }

    protected void buttonOrderSearch_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("OrderSearch.aspx");
    }
}
