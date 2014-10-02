package com.viber.voip.util;

import android.content.Context;
import android.content.Intent;
import com.viber.voip.qrcode.ScannerActivity;

public class gz
{
  public static void a(Context paramContext)
  {
    Intent localIntent = new Intent(paramContext, ScannerActivity.class);
    localIntent.addFlags(67108864);
    paramContext.startActivity(localIntent);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.gz
 * JD-Core Version:    0.7.0.1
 */