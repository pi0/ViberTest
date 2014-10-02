package com.viber.voip.util;

import android.content.Context;
import android.content.Intent;
import com.viber.voip.rakuten.RakutenAccountWebViewActivity;

public class gy
{
  public static void a(Context paramContext, String paramString)
  {
    Intent localIntent = new Intent(paramContext, RakutenAccountWebViewActivity.class);
    localIntent.putExtra("url", paramString);
    hy.a(localIntent);
    paramContext.startActivity(localIntent);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.gy
 * JD-Core Version:    0.7.0.1
 */