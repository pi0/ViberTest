package com.viber.voip.process.a;

import android.content.Context;
import android.os.Bundle;
import com.viber.voip.process.b;
import com.viber.voip.process.j;
import com.viber.voip.stickers.b.m;
import com.viber.voip.stickers.c.d;
import com.viber.voip.stickers.r;

public class c
  extends com.viber.voip.process.c
{
  public void a(Context paramContext)
  {
    execute(paramContext, c.class, null);
  }
  
  protected void a(j paramj, int paramInt) {}
  
  public void doInTargetProcess(Bundle paramBundle, b paramb)
  {
    m localm = r.a().k();
    if ((localm != null) && (localm.a.e() != 400))
    {
      Bundle localBundle = new Bundle();
      localBundle.putInt("package_id", localm.a.e());
      localBundle.putString("package_name", localm.a.f());
      localBundle.putInt("percents", localm.b);
      paramb.a(localBundle);
    }
  }
  
  public void processResult(Bundle paramBundle)
  {
    int i = paramBundle.getInt("package_id", 0);
    if (i != 0)
    {
      a(new j(i, paramBundle.getString("package_name")), paramBundle.getInt("percents", 0));
      return;
    }
    a(null, 0);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.process.a.c
 * JD-Core Version:    0.7.0.1
 */