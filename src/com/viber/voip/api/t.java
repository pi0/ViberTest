package com.viber.voip.api;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.viber.voip.j.a;
import com.viber.voip.market.MarketActivity;
import com.viber.voip.util.fq;
import java.util.regex.Pattern;

public class t
  implements aa
{
  public final String[] a = { "ptt", "menu", "keyboard", "stickers" };
  
  public t(ViberUrlHandlerActivity paramViberUrlHandlerActivity) {}
  
  public void a(Context paramContext, String[] paramArrayOfString, y paramy, Uri paramUri)
  {
    if (paramArrayOfString.length >= 1)
    {
      if ("chats".equals(paramArrayOfString[0]))
      {
        paramy.a(0, new Intent("com.viber.voip.action.MESSAGES"));
        return;
      }
      if (("publicexplore".equals(paramArrayOfString[0])) && (!ViberUrlHandlerActivity.c(this.b)))
      {
        paramy.a(0, MarketActivity.b());
        return;
      }
      if (("public".equals(paramArrayOfString[0])) && (!ViberUrlHandlerActivity.c(this.b)) && (paramArrayOfString.length == 1))
      {
        paramy.a(0, new Intent("com.viber.voip.action.PUBLIC_GROUP"));
        return;
      }
      if ((paramArrayOfString[0].startsWith("chat")) || ((paramArrayOfString[0].startsWith("public")) && (!ViberUrlHandlerActivity.c(this.b))))
      {
        int i;
        String str1;
        String str2;
        String str3;
        Bundle localBundle;
        if (paramArrayOfString.length == 1)
        {
          i = 0;
          Uri localUri = Uri.parse(paramArrayOfString[i].replace("+", "%2B").replace("#", "%23"));
          str1 = localUri.getQueryParameter("number");
          str2 = localUri.getQueryParameter("id");
          str3 = localUri.getQueryParameter("draft");
          if (((!paramArrayOfString[0].startsWith("chat")) || (TextUtils.isEmpty(str1)) || (!str1.matches(fq.g.pattern()))) && ((!paramArrayOfString[0].startsWith("public")) || (TextUtils.isEmpty(str2)))) {
            break label459;
          }
          localBundle = new Bundle();
          if (str3 != null)
          {
            str3 = str3.replaceFirst("\\?.*$", "");
            localBundle.putString("draft", str3);
          }
          if (paramArrayOfString.length == 2)
          {
            if (!paramArrayOfString[1].startsWith("info")) {
              break label349;
            }
            localBundle.putBoolean("open_conversation_info", true);
          }
        }
        for (;;)
        {
          if (!paramArrayOfString[0].startsWith("chat")) {
            break label420;
          }
          ViberUrlHandlerActivity.a(str1, new u(this, str3, localBundle, paramy), paramy);
          return;
          i = 1;
          break;
          label349:
          if ((!paramArrayOfString[0].startsWith("public")) || (!paramArrayOfString[1].startsWith("ptt"))) {
            for (int j = 0; j < this.a.length; j++) {
              if (paramArrayOfString[1].startsWith(this.a[j])) {
                localBundle.putString("open_custom_menu", this.a[j]);
              }
            }
          }
        }
        label420:
        if (paramArrayOfString[0].startsWith("public"))
        {
          a.a().b();
          ViberUrlHandlerActivity.a(str2, new v(this, str2, str3, localBundle, paramy), paramy);
          return;
        }
      }
    }
    label459:
    paramy.a(1, null);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.api.t
 * JD-Core Version:    0.7.0.1
 */