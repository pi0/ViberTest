package com.viber.voip.contacts.c.f;

import android.content.SharedPreferences;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.c.d.at;
import com.viber.voip.contacts.c.d.au;
import com.viber.voip.settings.l;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class a
  implements at
{
  private static final String a = a.class.getSimpleName();
  private static a b;
  private Set<au> c = Collections.synchronizedSet(new HashSet());
  private l d = ViberApplication.preferences();
  
  private a(ViberApplication paramViberApplication)
  {
    SharedPreferences localSharedPreferences = paramViberApplication.getSharedPreferences("com.voip.viber.contacts.vibersync", 0);
    if (!this.d.b("seq"))
    {
      this.d.a("seq", localSharedPreferences.getInt("seq", 100));
      this.d.a("sync_las_seq", localSharedPreferences.getInt("sync_las_seq", -1));
      this.d.a("sync_success_seq", localSharedPreferences.getInt("sync_success_seq", -1));
      this.d.a("sync_state", localSharedPreferences.getInt("sync_state", 0));
    }
  }
  
  public static a a(ViberApplication paramViberApplication)
  {
    if (b == null) {
      b = new a(paramViberApplication);
    }
    return b;
  }
  
  public void a(int paramInt)
  {
    for (;;)
    {
      int i;
      try
      {
        i = d();
        if ((i == 0) && (paramInt == 1))
        {
          e(paramInt);
          this.d.a("sync_state", paramInt);
          return;
        }
      }
      finally {}
      if (((i != 0) && (i != 1) && (i != 3)) || ((paramInt != 2) && (((i != 0) && (i != 1) && (i != 2)) || (paramInt != 3)))) {
        if ((i == 4) || (paramInt != 4)) {}
      }
    }
  }
  
  public void a(int paramInt, boolean paramBoolean) {}
  
  public void a(au paramau)
  {
    synchronized (this.c)
    {
      this.c.add(paramau);
      paramau.a(d(), true);
      return;
    }
  }
  
  public boolean a()
  {
    return this.d.b("sync_las_seq", -1) == this.d.b("sync_success_seq", -1);
  }
  
  public int b()
  {
    return this.d.b("seq", 100);
  }
  
  public void b(int paramInt)
  {
    this.d.a("sync_success_seq", paramInt);
  }
  
  public void b(au paramau)
  {
    synchronized (this.c)
    {
      this.c.remove(paramau);
      return;
    }
  }
  
  public void c(int paramInt)
  {
    this.d.a("sync_las_seq", paramInt);
  }
  
  public boolean c()
  {
    return d() != 4;
  }
  
  public int d()
  {
    try
    {
      boolean bool = this.d.b("sync_state");
      int i = 0;
      if (bool)
      {
        int j = this.d.b("sync_state", 0);
        i = j;
      }
      return i;
    }
    finally {}
  }
  
  public void d(int paramInt)
  {
    this.d.a("seq", paramInt);
  }
  
  public void e(int paramInt)
  {
    synchronized (this.c)
    {
      HashSet localHashSet = new HashSet(this.c);
      Iterator localIterator = localHashSet.iterator();
      if (localIterator.hasNext()) {
        ((au)localIterator.next()).a(paramInt, false);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.a
 * JD-Core Version:    0.7.0.1
 */