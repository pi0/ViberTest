package com.viber.voip.util;

import android.content.Context;
import com.viber.voip.ViberApplication;
import com.viber.voip.calls.u;
import com.viber.voip.calls.w;
import com.viber.voip.phone.call.CallerInfo;
import com.viber.voip.phone.call.k;
import com.viber.voip.phone.call.l;
import com.viber.voip.phone.call.n;

public class q
{
  public static void a(long paramLong1, k paramk, long paramLong2, w paramw)
  {
    String str = paramk.c().b();
    boolean bool1 = paramk.e();
    int i;
    int j;
    label38:
    int k;
    long l;
    int i4;
    label93:
    int n;
    label97:
    int i1;
    label120:
    u localu1;
    if (paramk.d().o() == 10)
    {
      i = 1;
      if (!bool1) {
        break label182;
      }
      j = 1;
      k = paramk.d().o();
      int m = paramk.a();
      l = System.currentTimeMillis() - 1000L * paramLong2;
      if (paramk.b() != l.a) {
        break label194;
      }
      if ((paramLong2 <= 0L) && (i == 0) && (!bool1)) {
        break label188;
      }
      i4 = 1;
      n = i4;
      if ((m != 1) && (!paramk.f())) {
        break label242;
      }
      if (!paramk.f()) {
        break label200;
      }
      i1 = 2;
      int i2 = paramk.o();
      if (i2 == 2147483647) {
        break label212;
      }
      localu1 = ViberApplication.getInstance().getRecentCallsManager();
      if (i2 != 0) {
        break label206;
      }
    }
    label182:
    label188:
    label194:
    label200:
    label206:
    for (boolean bool2 = true;; bool2 = false)
    {
      localu1.a(paramLong1, str, n, bool2, i1, j, k, l, paramLong2, 0, paramw);
      return;
      i = 0;
      break;
      j = 0;
      break label38;
      i4 = 3;
      break label93;
      n = 2;
      break label97;
      i1 = 3;
      break label120;
    }
    label212:
    hd.a(ViberApplication.getInstance(), str, new r(paramLong1, n, i1, j, k, l, paramLong2, paramw));
    return;
    label242:
    u localu2 = ViberApplication.getInstance().getRecentCallsManager();
    if (paramk.f()) {}
    for (int i3 = 2;; i3 = 1)
    {
      localu2.a(paramLong1, str, n, true, i3, j, k, l, paramLong2, 0, paramw);
      return;
    }
  }
  
  public static void a(Context paramContext, long paramLong1, String paramString1, long paramLong2, long paramLong3, int paramInt1, int paramInt2, int paramInt3, int paramInt4, String paramString2, int paramInt5, String paramString3, w paramw)
  {
    hd.a(ViberApplication.getInstance(), paramString1, new s(paramLong1, paramString1, paramInt1, paramInt2, paramInt3, paramLong2, paramLong3, paramInt4, paramw));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.q
 * JD-Core Version:    0.7.0.1
 */