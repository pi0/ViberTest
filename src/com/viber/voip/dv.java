package com.viber.voip;

import android.os.Bundle;
import com.viber.voip.process.b;
import com.viber.voip.process.c;

class dv
  extends c
{
  private static String a = "is_on_foreground";
  private static String b = "class_name";
  
  public void a(boolean paramBoolean, String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putBoolean(a, paramBoolean);
    localBundle.putString(b, paramString);
    execute(ViberApplication.getInstance(), dv.class, localBundle);
  }
  
  public void doInTargetProcess(Bundle paramBundle, b paramb)
  {
    boolean bool = paramBundle.getBoolean(a);
    String str = paramBundle.getString(b);
    ViberApplication.access$500(ViberApplication.getInstance(), bool, str);
    paramb.a(null);
  }
  
  public void processResult(Bundle paramBundle) {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.dv
 * JD-Core Version:    0.7.0.1
 */