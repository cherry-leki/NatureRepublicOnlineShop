using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class memberUpdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!SessionExist("MemberID"))
        {
            Response.Redirect("Home.aspx");
        }

        // 포스트백을 사용하지 않으면 뜨지 않음.
        if(!IsPostBack)
        {
            string sql;
            sql = " SELECT  memberID, memberName, memberAddr, memberTel ";
            sql = sql + " FROM tableMemeber ";
            sql = sql + string.Format(" WHERE  (memberID = '{0}')", Session["MemberID"].ToString());

            string[] sqlResult;

            OleDbSqlServerQueryReader RecordData = new OleDbSqlServerQueryReader(sql, 4);
            sqlResult = RecordData.RunQueryCol();

            if (RecordData.ResultExist)
            {
                textBoxID.Text = sqlResult[0];
                textBoxName.Text = sqlResult[1];

                textBoxAddr.Text = sqlResult[2];
                textBoxTel.Text = sqlResult[3];
            }
        }
    }

    protected void buttonUpdate_Click(object sender, EventArgs e)
    {
        if ( textBoxPW.Text == "" || textBoxPWChck.Text == "" || (!textBoxPW.Text.Equals(textBoxPWChck.Text)))
        {
            labelPWCheck.Text = "비밀번호를 확인해 주세요.";
            return;
        }


        if (textBoxName.Text.Equals(""))
        {
            labelOtherCheck.Text = "이름을 입력해 주세요.";
            return;
        }


        if (textBoxAddr.Text.Equals(""))
        {
            labelOtherCheck.Text = "주소를 입력해 주세요.";
            return;
        }

        if (textBoxTel.Text.Equals(""))
        {
            labelOtherCheck.Text = "전화번호를 입력해 주세요.";
            return;
        }

        string sql;

        sql = " UPDATE [NatureRepublicDB].[dbo].[tableMemeber] SET ";
        sql = sql + string.Format("[memberPW] = '{0}', ", textBoxPW.Text);
        sql = sql + string.Format("[memberName] = '{0}', ", textBoxName.Text);
        sql = sql + string.Format("[memberBirth] = '1993-01-09', ");
        sql = sql + string.Format("[memberAddr] = '{0}', ", textBoxAddr.Text);
        sql = sql + string.Format("[memberTel] = '{0}', ", textBoxTel.Text);
        sql = sql + string.Format("[memberEmail] = 'koangho93@naver.com', ", textBoxPW.Text);
        sql = sql + string.Format("[memberSkin] = '아리따움', ");
        sql = sql + string.Format("[memberPoint] = '0' ");
        sql = sql + string.Format(" WHERE memberID = '{0}' ", Session["MemberID"].ToString());

      
        OleDbSqlServerQueryRun recordData = new OleDbSqlServerQueryRun(sql);
        recordData.RunNonQuery();

        if (recordData.ChangeRecordCount > 0)
        {
            labelOtherCheck.Text = "수정성공";
        }
        else
        {
            labelOtherCheck.Text = "수정실패";
        }
    }

    private bool SessionExist(string SV)
    {
        int i = 0;
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

}