﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MemberMypage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void buttonUpdate_Click(object sender, EventArgs e)
    {
        string sql;
        string[] sqlResult;

        sql = " SELECT memberPW";
        sql = sql + " FROM tableMember ";
        sql = sql + string.Format(" WHERE  (memberID = '{0}')", Session["MemberID"].ToString());


        OleDbSqlServerQueryReader RecordData = new OleDbSqlServerQueryReader(sql, 2);
        sqlResult = RecordData.RunQueryCol();

        if(sqlResult[0].Equals(textBoxPW.Text))
        {
            Response.Redirect("MemberUpdate.aspx");
        }
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