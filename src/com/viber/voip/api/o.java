package com.viber.voip.api;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.viber.voip.util.fq;
import java.util.regex.Pattern;

public class o
  implements aa
{
  public o(ViberUrlHandlerActivity paramViberUrlHandlerActivity) {}
  
  public void a(Context paramContext, String[] paramArrayOfString, y paramy, Uri paramUri)
  {
    if (paramArrayOfString.length == 1)
    {
      if ("contactsviber".equals(paramArrayOfString[0]))
      {
        Intent localIntent1 = new Intent("com.viber.voip.action.CONTACTS");
        localIntent1.putExtra("filter", 0);
        paramy.a(0, localIntent1);
        return;
      }
      if ("contactsall".equals(paramArrayOfString[0]))
      {
        Intent localIntent2 = new Intent("com.viber.voip.action.CONTACTS");
        localIntent2.putExtra("filter", 1);
        paramy.a(0, localIntent2);
        return;
      }
      if ("contactsviberout".equals(paramArrayOfString[0]))
      {
        Intent localIntent3 = new Intent("com.viber.voip.action.CONTACTS");
        localIntent3.putExtra("filter", 2);
        paramy.a(0, localIntent3);
        return;
      }
      if (paramArrayOfString[0].startsWith("contact"))
      {
        String str = Uri.parse(paramArrayOfString[0].replace("+", "%2B")).getQueryParameter("number");
        if ((!TextUtils.isEmpty(str)) && (str.matches(fq.g.pattern())))
        {
          ViberUrlHandlerActivity.a(str, new p(this, paramy), paramy);
          return;
        }
      }
    }
    paramy.a(1, null);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.api.o
 * JD-Core Version:    0.7.0.1
 */