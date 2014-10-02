package com.viber.voip.rakuten;

import android.os.Bundle;
import com.viber.voip.ViberApplication;
import com.viber.voip.process.b;
import com.viber.voip.process.c;

class h
  extends c
{
  public void a()
  {
    super.execute(ViberApplication.getInstance(), h.class, null);
  }
  
  public void doInTargetProcess(Bundle paramBundle, b paramb)
  {
    l.a().d();
    paramb.a(null);
  }
  
  public void processResult(Bundle paramBundle) {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.rakuten.h
 * JD-Core Version:    0.7.0.1
 */