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

    protected void ButtonSignup_Click(object sender, ImageClickEventArgs e)
    {
        string sql;

        if ((textBoxName.Text.Length > 20) || textBoxName.Text == "")
        {
            MessageBox.Show("이름을 확인해 주세요.", this);
            return;
        }

        if (textBoxBirth.Text.Length != 10)
        {
            MessageBox.Show("생년월일을 확인해 주세요.", this);
            return;
        }

        if((textBoxID.Text.Length < 4) || (textBoxID.Text.Length > 20))
        {
            MessageBox.Show("회원 아이디를 확인해 주세요.", this);
            return;
        }

        if((textBoxPW.Text.Length < 6) || (textBoxPW.Text.Length > 20))
        {
            MessageBox.Show("비밀번호 길이는 영문, 숫자, 특수문자 포함 6 ~ 20자 입니다.", this);
            return;
        }

        if(!textBoxPW.Text.Equals(textBoxPWConfigure.Text))
        {
            MessageBox.Show("비밀번호 확인이 비밀번호와 일치하지 않습니다.", this);
            return;
        }

        if((textBoxAddress.Text.Length < 19) || (textBoxAddress.Text.Length > 50))
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

        if(textBoxEmail1.Text.Length < 4 || textBoxEmail2.Text.Length  < 4)
        {
            MessageBox.Show("이메일을 확인해 주세요.", this);
            return;
        }

        if (!radioButtonMailOk.Checked && !radioButtonMailNo.Checked)
        {
            MessageBox.Show("메일 서비스 수신여부를 확인해 주세요.", this);
            return;
        }

        if (!radioButtonMarriageOk.Checked && !radioButtonMarriageNo.Checked)
        {
            MessageBox.Show("결혼 여부를 확인해 주세요.", this);
            return;
        }
        
        sql = " INSERT INTO [NatureRepublicDB].[dbo].[tableMember] ";
        sql = sql + " ([memberID], [memberPW], [memberName], [memberBirth], [memberAddr], [memberTel], [memberEmail], [memberSkin], [memberPoint]) ";
        sql = sql + string.Format(" VALUES ('{0}', '{1}', '{2}', {3}, '{4}', '{5}', '{6}', '{7}', 0 )", textBoxID.Text, textBoxPW.Text, textBoxName.Text, textBoxBirth.Text, textBoxAddress.Text,
            dropdownlistPhone.SelectedValue.ToString() + "-" + textBoxPhone1.Text + "-" + textBoxPhone2.Text, textBoxEmail1.Text + "@" + textBoxEmail2.Text, downdroplistSkinType.SelectedValue.ToString());

        OleDbSqlServerQueryRun recordData = new OleDbSqlServerQueryRun(sql);
        recordData.RunNonQuery();

        if (recordData.ChangeRecordCount > 0)
        {
            MessageBox.Show("회원가입에 성공하셨습니다.", this);
            return;
        }
        else
        {
            MessageBox.Show("가입에 실패하였습니다..", this);
            return;
        }
    }

    protected void ButtonCancel_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home.aspx");
    }

    protected void imgButtonLogo_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home.aspx");
    }

    protected void imageButtonDuplicate_Click(object sender, ImageClickEventArgs e)
    {
        if (textBoxID.Text == "")
        {
            MessageBox.Show("아이디를 입력해 주세요.",this);
            return;
        }


        string sql;
        string[] sqlResult;

        sql = " SELECT memberID";
        sql = sql + " FROM tableMember ";
        sql = sql + string.Format(" WHERE  (memberID = '{0}')", textBoxID.Text);


        OleDbSqlServerQueryReader RecordData = new OleDbSqlServerQueryReader(sql, 2);
        sqlResult = RecordData.RunQueryCol();


        if (RecordData.ResultExist)
        {
            MessageBox.Show("중복된 아이디 입니다.", this);
            return;
        }

        MessageBox.Show("사용 가능한 아이디 입니다.", this);
    }
}