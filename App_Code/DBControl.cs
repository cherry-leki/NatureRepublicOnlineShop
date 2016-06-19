using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.OleDb;

/// <summary>
/// DBControl을 DBControl_OneRecord, DBControl_NonRecord가 상속
/// </summary>
/// 

    
public class OleDbSqlServerConnectionString
{
    protected OleDbConnection cn;
    protected OleDbCommand cmd;
    protected string[] rd_Data;
    public Boolean ResultExist;

    // OleDbSqlServerQueryReader용 생성자
    public OleDbSqlServerConnectionString(string _Sql, int _FieldCnt)
    {
        rd_Data = new string[_FieldCnt];
        string DBS = @"Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=NatureRepublicDB;Data Source=DESKTOP-QKNNQFE";

        cn = new OleDbConnection(DBS);
        cmd = new OleDbCommand(_Sql, cn);
    }

    // OleDbSqlServerQueryRun용 생성자
    public OleDbSqlServerConnectionString(string _Sql)
    {
        //rd_Data = new string[50];
        string DBS = @"Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=NatureRepublicDB;Data Source=DESKTOP-QKNNQFE";

        cn = new OleDbConnection(DBS);
        cmd = new OleDbCommand(_Sql, cn);
    }
}

// SELECT를 이용하여 읽어오기 Select
public class OleDbSqlServerQueryReader : OleDbSqlServerConnectionString
{
    public OleDbDataReader rd;
    public int counter = 0;
    public OleDbSqlServerQueryReader(string _Sql, int _FieldCnt)
        : base(_Sql, _FieldCnt)
    {
        ResultExist = false;
    }

    // 교수님이 거꾸로 만드셨음 

    // Record
    public string[] RunQueryCol()
    {
        int i = 0;

        cn.Open();   // DB접속 요청
        rd = cmd.ExecuteReader();   // SQL문 실행

        if (rd.Read())
        {
            ResultExist = true;
            while (i < rd.FieldCount)
            {
                rd_Data[i] = rd[i].ToString();
                i++;
            }
        }

        rd.Close();
        cn.Close();
        return rd_Data;
    }

    // Field
    public string[] RunQueryRow()
    {
        int i = 0;

        cn.Open();
        OleDbDataReader rd = cmd.ExecuteReader();

        while (rd.Read())
        {
            ResultExist = true;
            rd_Data[i++] = rd[0].ToString();

            counter++;
        }

        rd.Close();
        cn.Close();
        return rd_Data;
    }

    public int Counter()
    {
        return counter;
    }
}

// 데이터 베이스의 테이블 레코딩 넘겨주기 Insert, Delete
public class OleDbSqlServerQueryRun : OleDbSqlServerConnectionString
{
    public int ChangeRecordCount;

    public OleDbSqlServerQueryRun(string _Sql)
        : base(_Sql)
    {
        ChangeRecordCount = 0;
    }

    public int RunNonQuery()
    {
        cn.Open();
        ChangeRecordCount = cmd.ExecuteNonQuery(); // 수정된 숫자가 돌아온다.
        cn.Close();
        return ChangeRecordCount;
    }
}
