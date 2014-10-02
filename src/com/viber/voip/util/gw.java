package com.viber.voip.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.viber.voip.a.au;
import com.viber.voip.a.bc;
import com.viber.voip.a.x;

public class gw
{
  private static void a(Context paramContext, Intent paramIntent)
  {
    if ((paramContext instanceof Activity)) {
      paramIntent.addFlags(268435456);
    }
    paramContext.startActivity(paramIntent);
  }
  
  public static void a(Context paramContext, String paramString, com.viber.voip.a.k paramk)
  {
    Intent localIntent = new Intent("com.viber.voip.action.CALL", Uri.fromParts("tel", paramString, null));
    localIntent.setFlags(268435456);
    gn.a(paramContext, localIntent, true, paramk);
  }
  
  public static void a(Context paramContext, String paramString, boolean paramBoolean, com.viber.voip.a.k paramk)
  {
    Intent localIntent = new Intent("com.viber.voip.action.CALL", Uri.fromParts("tel", paramString, null));
    if (paramBoolean) {
      localIntent.putExtra("viber_out", true);
    }
    localIntent.setFlags(268435456);
    gn.a(paramContext, localIntent, true, paramk);
  }
  
  public static void a(Context paramContext, boolean paramBoolean)
  {
    Intent localIntent = new Intent("com.viber.voip.action.VIDEO_CALL");
    localIntent.putExtra("is_initiator", paramBoolean);
    a(paramContext, localIntent);
    bc localbc = bc.a();
    if (paramBoolean) {}
    for (x localx = com.viber.voip.phone.call.k.l().s();; localx = com.viber.voip.phone.call.k.l().t())
    {
      localbc.a(localx);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.gw
 * JD-Core Version:    0.7.0.1
 */