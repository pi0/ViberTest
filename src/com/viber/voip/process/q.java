package com.viber.voip.process;

import android.os.Bundle;
import com.viber.voip.ViberApplication;

class q
  extends c
{
  public void a(boolean paramBoolean, int paramInt)
  {
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("create", paramBoolean);
    localBundle.putInt("count", paramInt);
    super.execute(ViberApplication.getInstance(), q.class, localBundle);
  }
  
  public void doInTargetProcess(Bundle paramBundle, b paramb)
  {
    int i = paramBundle.getInt("count", 0);
    if (paramBundle.getBoolean("create", false))
    {
      l.a(l.a(), i);
      return;
    }
    l.b(l.a(), i);
  }
  
  public void processResult(Bundle paramBundle) {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.process.q
 * JD-Core Version:    0.7.0.1
 */