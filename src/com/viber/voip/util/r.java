package com.viber.voip.util;

import com.viber.voip.ViberApplication;
import com.viber.voip.calls.u;
import com.viber.voip.calls.w;

final class r
  implements hj
{
  r(long paramLong1, int paramInt1, int paramInt2, int paramInt3, int paramInt4, long paramLong2, long paramLong3, w paramw) {}
  
  public void a(boolean paramBoolean, int paramInt, String paramString)
  {
    u localu = ViberApplication.getInstance().getRecentCallsManager();
    long l = this.a;
    int i = this.b;
    if (paramInt == 0) {}
    for (boolean bool = true;; bool = false)
    {
      localu.a(l, paramString, i, bool, this.c, this.d, this.e, this.f, this.g, 0, this.h);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.r
 * JD-Core Version:    0.7.0.1
 */