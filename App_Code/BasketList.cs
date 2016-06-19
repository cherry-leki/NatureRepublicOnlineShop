using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// BasketList의 요약 설명입니다.
/// </summary>
public class BasketList
{
    string itemImage;
    string itemPrice;
    string basketCount;
    string basketDeadLine;

    public BasketList()
    {
        //
        // TODO: 여기에 생성자 논리를 추가합니다.
        //
        
    }

    public void addList(string itemImage, string itemPrice, string basketCount, string basketDeadLine)
    {
        this.itemImage = itemImage;
        this.itemPrice = itemPrice;
        this.basketCount = basketCount;
        this.basketDeadLine = basketDeadLine;
    }
}