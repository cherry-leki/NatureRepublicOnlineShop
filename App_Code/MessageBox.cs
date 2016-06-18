using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

/// <summary>
/// MessageBox의 요약 설명입니다.
/// </summary>
public class MessageBox
{
    public MessageBox()
    {
        //
        // TODO: 여기에 생성자 논리를 추가합니다.
        //
    }

    public static void Show(String message, Page page)
    {
        page.ClientScript.RegisterStartupScript(page.GetType(), "MessageBox", "alert(\"" + message + "\");", true);
    }
}