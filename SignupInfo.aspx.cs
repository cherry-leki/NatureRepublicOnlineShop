using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignupInfo : System.Web.UI.Page
{
    bool IDCheck = false;

    protected void Page_Load(object sender, EventArgs e)
    {
        //if (labelDupCheck.Text.Equals("사용가능한 아이디 입니다."))
        //    IDCheck = true;
    }

    protected void buttonDupCheck_Click(object sender, EventArgs e)
    {
        //if (textBoxID.Text == "")
        //{
        //    labelDupCheck.Text = "아이디를 입력해 주세요.";
        //    return;
        //}


        //string sql;
        //string[] sqlResult;

        //sql = " SELECT memberID";
        //sql = sql + " FROM tableMemeber ";
        //sql = sql + string.Format(" WHERE  (memberID = '{0}')", textBoxID.Text);


        //OleDbSqlServerQueryReader RecordData = new OleDbSqlServerQueryReader(sql, 2);
        //sqlResult = RecordData.RunQueryCol();


        //if (RecordData.ResultExist)
        //{
        //    labelDupCheck.Text = "중복된 아이디 입니다.";
        //    return;
        //}

        //labelDupCheck.Text = "사용가능한 아이디 입니다.";
    }

    protected void ButtonSignup_Click(object sender, ImageClickEventArgs e)
    {
        if (!IDCheck)
        {
            MessageBox.Show("아이디 중복 확인해 주세요.", this);
            return;
        }

        //if (((!textBoxPWChck.Text.Equals("")) || !textBoxPW.Text.Equals("")) || (!textBoxPW.Text.Equals(textBoxPWChck.Text)))
        //{
        //    MessageBox.Show("아이디 중복 확인해 주세요.", this);

        //    labelPWCheck.Text = "비밀번호를 확인해 주세요.";
        //    return;
        //}


        //if (textBoxName.Text.Equals(""))
        //{
        //    labelOtherCheck.Text = "이름을 입력해 주세요.";
        //    return;
        //}


        //if (textBoxAddr.Text.Equals(""))
        //{
        //    labelOtherCheck.Text = "주소를 입력해 주세요.";
        //    return;
        //}

        //if (textBoxTel.Text.Equals(""))
        //{
        //    labelOtherCheck.Text = "전화번호를 입력해 주세요.";
        //    return;
        //}

        //string sql;

        //sql = " INSERT INTO [NatureRepublicDB].[dbo].[tableMemeber] ";
        //sql = sql + " ([memberID], [memberPW], [memberName], [memberBirth], [memberAddr], [memberTel], [memberEmail], [memberSkin], [memberPoint]) ";
        //sql = sql + string.Format(" VALUES ('{0}', '{1}', '{2}', '1993-01-09', '{3}', '{4}', 'koangho93@naver.com', '아리따움', 0 )", textBoxID.Text, textBoxPW.Text, textBoxName.Text, textBoxAddr.Text, textBoxTel.Text);

        //OleDbSqlServerQueryRun recordData = new OleDbSqlServerQueryRun(sql);
        //recordData.RunNonQuery();

        //if (recordData.ChangeRecordCount > 0)
        //{
        //    labelOtherCheck.Text = "가입성공";
        //}
        //else
        //{
        //    labelDupCheck.Text = "가입실패";
        //}
    }

    protected void ButtonCancel_Click(object sender, ImageClickEventArgs e)
    {

    }
}