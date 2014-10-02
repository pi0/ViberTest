package com.viber.voip.util;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.text.Html;
import com.viber.voip.ViberApplication;

public class bd
{
  public static void a(String paramString1, String paramString2, Uri paramUri)
  {
    Intent localIntent = new Intent("android.intent.action.SEND");
    localIntent.setType("plain/text");
    localIntent.setFlags(268435456);
    if (paramString2 != null) {
      localIntent.putExtra("android.intent.extra.TEXT", paramString2);
    }
    if (paramString1 != null) {
      localIntent.putExtra("android.intent.extra.SUBJECT", paramString1);
    }
    if (paramUri != null) {
      localIntent.putExtra("android.intent.extra.STREAM", paramUri);
    }
    try
    {
      ViberApplication.getInstance().startActivity(localIntent);
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      localActivityNotFoundException.printStackTrace();
    }
  }
  
  public static void b(String paramString1, String paramString2, Uri paramUri)
  {
    Intent localIntent = new Intent("android.intent.action.SEND");
    localIntent.setType("plain/text");
    localIntent.setFlags(268435456);
    localIntent.putExtra("android.intent.extra.SUBJECT", paramString1);
    localIntent.putExtra("android.intent.extra.TEXT", Html.fromHtml(paramString2));
    if (paramUri != null) {
      localIntent.putExtra("android.intent.extra.STREAM", paramUri);
    }
    try
    {
      ViberApplication.getInstance().startActivity(localIntent);
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      localActivityNotFoundException.printStackTrace();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.bd
 * JD-Core Version:    0.7.0.1
 */