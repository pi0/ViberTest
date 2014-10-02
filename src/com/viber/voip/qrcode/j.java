package com.viber.voip.qrcode;

import android.app.Activity;
import android.util.Log;
import com.viber.voip.util.b.a;

final class j
  extends a<Object, Object, Object>
{
  private j(h paramh) {}
  
  protected Object a(Object... paramVarArgs)
  {
    try
    {
      Thread.sleep(300000L);
      Log.i(h.e(), "Finishing activity due to inactivity");
      h.b(this.a).finish();
      label25:
      return null;
    }
    catch (InterruptedException localInterruptedException)
    {
      break label25;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.qrcode.j
 * JD-Core Version:    0.7.0.1
 */