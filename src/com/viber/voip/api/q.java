package com.viber.voip.api;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.viber.voip.WelcomeActivity;
import com.viber.voip.market.MarketActivity;
import com.viber.voip.rakuten.l;
import com.viber.voip.util.fq;
import com.viber.voip.viberout.ui.ViberOutActivity;
import java.util.regex.Pattern;

public class q
  implements aa
{
  public static String a(Uri paramUri)
  {
    if (ViberUrlHandlerActivity.a(paramUri)) {
      return paramUri.getQueryParameter("number");
    }
    return null;
  }
  
  public static String a(String paramString)
  {
    return "viber://add?number=" + paramString;
  }
  
  public void a(Context paramContext, String[] paramArrayOfString, y paramy, Uri paramUri)
  {
    if (paramArrayOfString.length == 1)
    {
      if ("calls".equals(paramArrayOfString[0]))
      {
        paramy.a(0, new Intent("com.viber.voip.action.DIALER"));
        return;
      }
      if (paramArrayOfString[0].startsWith("keypad"))
      {
        if ("keypad".equals(paramArrayOfString[0]))
        {
          Intent localIntent4 = new Intent("com.viber.voip.action.DIALER");
          localIntent4.addFlags(67108864);
          localIntent4.putExtra("open_keypad_number", "");
          paramy.a(0, localIntent4);
          return;
        }
        String str7 = Uri.parse(paramArrayOfString[0].replace("+", "%2B")).getQueryParameter("number");
        if ((!TextUtils.isEmpty(str7)) && (str7.matches(fq.g.pattern()))) {
          ViberUrlHandlerActivity.a(str7, new r(this, str7, paramy), paramy);
        }
      }
      else
      {
        if ("more".equals(paramArrayOfString[0]))
        {
          paramy.a(0, new Intent("com.viber.voip.action.YOU"));
          return;
        }
        if (paramArrayOfString[0].startsWith("setrtoken"))
        {
          String str5 = paramUri.getQueryParameter("t");
          String str6 = paramUri.getQueryParameter("r");
          l.a().a(paramContext, str5, str6);
          paramy.a(0, new Intent(paramContext, WelcomeActivity.class));
          return;
        }
        if (paramArrayOfString[0].startsWith("add"))
        {
          String str4 = Uri.parse(paramArrayOfString[0].replace("+", "%2B")).getQueryParameter("number");
          if ((!TextUtils.isEmpty(str4)) && (str4.matches(fq.g.pattern()))) {
            ViberUrlHandlerActivity.a(str4, new s(this, paramContext, paramy), paramy);
          }
        }
      }
    }
    else if (paramArrayOfString.length >= 2)
    {
      if ("settings".equals(paramArrayOfString[1]))
      {
        Intent localIntent1 = new Intent("com.viber.voip.action.SETTINGS");
        int i;
        if (paramArrayOfString.length == 3)
        {
          i = -1;
          if (!"privacy".equals(paramArrayOfString[2])) {
            break label389;
          }
          i = 2131493534;
        }
        for (;;)
        {
          if (i != -1) {
            localIntent1.putExtra("selected_item", i);
          }
          paramy.a(0, localIntent1);
          return;
          label389:
          if ("notifications".equals(paramArrayOfString[2])) {
            i = 2131493535;
          } else if ("callsandmessages".equals(paramArrayOfString[2])) {
            i = 2131493536;
          } else if ("media".equals(paramArrayOfString[2])) {
            i = 2131493537;
          } else if ("display".equals(paramArrayOfString[2])) {
            i = 2131493538;
          } else if ("general".equals(paramArrayOfString[2])) {
            i = 2131493539;
          }
        }
      }
      if ("about".equals(paramArrayOfString[1]))
      {
        Intent localIntent2 = new Intent("com.viber.voip.action.ABOUT");
        localIntent2.setFlags(67108864);
        paramy.a(0, localIntent2);
        return;
      }
      if ("viberout".equals(paramArrayOfString[1]))
      {
        Intent localIntent3 = new Intent(paramContext, ViberOutActivity.class);
        localIntent3.setFlags(67108864);
        paramy.a(0, localIntent3);
        return;
      }
      if (paramArrayOfString[1].startsWith("stickermarket"))
      {
        if (paramArrayOfString.length == 2)
        {
          if ("stickermarket".equals(paramArrayOfString[1]))
          {
            MarketActivity.a();
            paramy.a(0, null);
            return;
          }
          String str3 = Uri.parse(paramArrayOfString[1]).getQueryParameter("id");
          if ((!TextUtils.isEmpty(str3)) && (str3.matches("\\d+"))) {
            paramy.a(0, new Intent(MarketActivity.a(Integer.parseInt(str3))));
          }
        }
        else
        {
          String str2 = paramArrayOfString[2].replace("stickers.", "");
          if ((!TextUtils.isEmpty(str2)) && (str2.matches("\\d+"))) {
            paramy.a(0, new Intent(MarketActivity.a(Integer.parseInt(str2))));
          }
        }
      }
      else if ((paramArrayOfString[1].startsWith("rakuten")) && (l.a().b()))
      {
        String str1 = paramUri.getQuery();
        l.a().a(paramContext, str1);
        paramy.a(0, null);
        return;
      }
    }
    paramy.a(1, null);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.api.q
 * JD-Core Version:    0.7.0.1
 */