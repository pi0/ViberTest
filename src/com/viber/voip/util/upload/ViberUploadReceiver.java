package com.viber.voip.util.upload;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;

public class ViberUploadReceiver
  extends BroadcastReceiver
{
  public static void a(Context paramContext, Uri paramUri)
  {
    Intent localIntent = new Intent("com.viber.voip.action.util.upload.CANCEL_UPLOAD");
    localIntent.putExtra("extra_data", paramUri);
    paramContext.sendBroadcast(localIntent);
  }
  
  public static void a(Context paramContext, Uri paramUri, String paramString)
  {
    Intent localIntent = new Intent("com.viber.voip.action.util.upload.START_UPLOAD");
    localIntent.putExtra("extra_data", paramUri);
    localIntent.putExtra("extra_upload_type", paramString);
    paramContext.sendBroadcast(localIntent);
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("com.viber.voip.action.util.upload.START_UPLOAD".equals(paramIntent.getAction()))
    {
      localUri = (Uri)paramIntent.getParcelableExtra("extra_data");
      str = paramIntent.getStringExtra("extra_upload_type");
      ac.a(localUri, System.currentTimeMillis() / 1000L + "", str, null);
    }
    while (!"com.viber.voip.action.util.upload.CANCEL_UPLOAD".equals(paramIntent.getAction()))
    {
      Uri localUri;
      String str;
      return;
    }
    ac.a((Uri)paramIntent.getParcelableExtra("extra_data"));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.upload.ViberUploadReceiver
 * JD-Core Version:    0.7.0.1
 */