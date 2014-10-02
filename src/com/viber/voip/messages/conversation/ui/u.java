package com.viber.voip.messages.conversation.ui;

import android.os.Handler;
import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.a.a;
import com.viber.voip.messages.conversation.h;
import com.viber.voip.util.hd;
import java.util.HashMap;

class u
  extends PhoneControllerDelegateAdapter
{
  u(m paramm) {}
  
  public void onGroupUserIsTyping(long paramLong, String paramString, boolean paramBoolean1, int paramInt, boolean paramBoolean2)
  {
    if (m.d(this.a) == null) {}
    String str;
    ct localct;
    do
    {
      do
      {
        return;
        m.a(this.a, "onGroupUserIsTyping groupId=" + paramLong + ", fromNumber=" + paramString + ", startStopFlag=" + paramBoolean1 + ", deviceId=" + paramInt + ", isSecondaryDevice=" + paramBoolean2);
        str = hd.a(ViberApplication.getInstance(), paramString, paramString);
      } while (paramLong != m.d(this.a).d());
      localct = new ct(str, paramInt, paramBoolean2);
    } while (!paramBoolean1);
    for (;;)
    {
      synchronized (this.a)
      {
        localab = (ab)m.f(this.a).get(str);
        if (localab != null)
        {
          m.j(this.a).removeCallbacks(localab);
          m.j(this.a).postDelayed(localab, 6000L);
          m.g(this.a).put(str, localct);
          m.a(this.a, m.i(this.a).a(m.h(this.a), m.g(this.a).values()), true);
          return;
        }
      }
      ab localab = new ab(this.a, str);
      m.f(this.a).put(str, localab);
    }
  }
  
  public void onUserIsTyping(String paramString, boolean paramBoolean1, int paramInt, boolean paramBoolean2)
  {
    if ((m.d(this.a) == null) || (m.d(this.a).b() != 0)) {}
    ct localct;
    do
    {
      String str;
      do
      {
        return;
        str = hd.a(ViberApplication.getInstance(), paramString, paramString);
      } while ((m.d(this.a).q() == null) || (!m.d(this.a).q().equals(str)));
      localct = new ct(str, paramInt, paramBoolean2);
    } while (!paramBoolean1);
    for (;;)
    {
      synchronized (this.a)
      {
        if (m.k(this.a) != null)
        {
          m.j(this.a).removeCallbacks(m.k(this.a));
          m.j(this.a).postDelayed(m.k(this.a), 6000L);
          m.a(this.a, m.i(this.a).a(m.h(this.a), localct), paramBoolean1);
          return;
        }
      }
      m.a(this.a, new ac(this.a, null));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.u
 * JD-Core Version:    0.7.0.1
 */