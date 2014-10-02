package com.viber.voip.util;

import android.os.Handler;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.b.h;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.settings.l;
import com.viber.voip.settings.m;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class fz
{
  private static final String a = fz.class.getSimpleName();
  private static fz c;
  private l b = ViberApplication.preferences();
  private Set<gf> d = Collections.synchronizedSet(new HashSet());
  private m e = new ga(this);
  
  private fz()
  {
    this.b.a(this.e);
  }
  
  public static fz a()
  {
    if (c == null) {
      c = new fz();
    }
    return c;
  }
  
  private void b(String paramString)
  {
    Iterator localIterator = this.d.iterator();
    while (localIterator.hasNext())
    {
      gf localgf = (gf)localIterator.next();
      if ("badges_count".equals(paramString))
      {
        localgf.a(0, g());
      }
      else if ("recents_count".equals(paramString))
      {
        localgf.a(1, d());
      }
      else if ("show_public_groups_badge".equals(paramString))
      {
        if (e()) {}
        for (int i = 1;; i = 0)
        {
          localgf.a(3, i);
          break;
        }
      }
    }
  }
  
  private static void c(String paramString) {}
  
  public int a(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = this.b.b("last_tab", paramInt3);
    if ((i == paramInt1) || (i >= paramInt2)) {
      return paramInt3;
    }
    return i;
  }
  
  public void a(int paramInt)
  {
    this.b.a("last_tab", paramInt);
  }
  
  public void a(int paramInt, Set<h> paramSet)
  {
    gg.a(paramInt, paramSet);
  }
  
  public void a(long paramLong, boolean paramBoolean)
  {
    dc.a(dk.h).post(new gd(this, paramBoolean, paramLong));
  }
  
  public void a(gf paramgf)
  {
    this.d.add(paramgf);
  }
  
  public void a(boolean paramBoolean)
  {
    this.b.a("show_public_groups_badge", paramBoolean);
  }
  
  public void a(long[] paramArrayOfLong)
  {
    boolean bool = true;
    this.b.a("badges_count", (int)(paramArrayOfLong[0] + paramArrayOfLong[bool]));
    if ((paramArrayOfLong[3] != h()) || ((paramArrayOfLong[3] == h()) && ((int)paramArrayOfLong[2] != f()))) {
      if (paramArrayOfLong[3] <= h()) {
        break label103;
      }
    }
    for (;;)
    {
      a(bool);
      this.b.a("public_groups_badges_count", (int)paramArrayOfLong[2]);
      this.b.a("public_groups_last_unread_message_time", paramArrayOfLong[3]);
      return;
      label103:
      bool = false;
    }
  }
  
  public void b()
  {
    this.b.a("last_tab");
  }
  
  public void b(gf paramgf)
  {
    this.d.remove(paramgf);
  }
  
  public int c()
  {
    return this.b.b("call_count", 0);
  }
  
  public int d()
  {
    return this.b.b("recents_count", 0);
  }
  
  public boolean e()
  {
    return this.b.b("show_public_groups_badge", false);
  }
  
  public int f()
  {
    return this.b.b("public_groups_badges_count", 0);
  }
  
  public int g()
  {
    int i = this.b.b("badges_count", 0);
    if (i > 100) {
      return 100;
    }
    return i;
  }
  
  public long h()
  {
    return this.b.b("public_groups_last_unread_message_time", 0L);
  }
  
  public void i()
  {
    this.b.a("badges_count", 0);
  }
  
  public void j()
  {
    this.b.a("badges_count", 0);
    this.b.a("recents_count", 0);
    this.b.a("public_groups_last_unread_message_time", 0);
    this.b.a("show_public_groups_badge", false);
  }
  
  public void k()
  {
    dc.a(dk.h).post(new gb(this));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.fz
 * JD-Core Version:    0.7.0.1
 */