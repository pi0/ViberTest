package com.viber.voip.billing;

import android.os.Bundle;
import com.viber.voip.ViberApplication;
import com.viber.voip.process.b;
import com.viber.voip.process.c;

class ck
  extends c
{
  private static String a = "success";
  private cj b;
  
  public void a(cj paramcj)
  {
    this.b = paramcj;
    execute(ViberApplication.getInstance(), ck.class, null);
  }
  
  public void doInTargetProcess(Bundle paramBundle, b paramb)
  {
    bv.a(bv.a(), new cl(this, paramb));
  }
  
  public void processResult(Bundle paramBundle)
  {
    if (this.b != null) {
      this.b.a(paramBundle.getBoolean(a));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.billing.ck
 * JD-Core Version:    0.7.0.1
 */