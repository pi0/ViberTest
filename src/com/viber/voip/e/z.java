package com.viber.voip.e;

import android.app.NotificationManager;
import java.util.HashSet;
import java.util.Map;

class z
  implements Runnable
{
  z(u paramu, long paramLong) {}
  
  public void run()
  {
    u.c(this.b).cancel("join", (int)this.a);
    u.c(this.b).cancel("pg_join", (int)this.a);
    u.c(this.b).cancel("you_join", (int)this.a);
    u.c(this.b).cancel("rename", (int)this.a);
    u.c(this.b).cancel("smart", (int)this.a);
    u.c(this.b).cancel("message", (int)this.a);
    u.c(this.b).cancel("missed_call", (int)this.a);
    u.c(this.b).cancel("group_follow", (int)this.a);
    u.c(this.b).cancel("group_background_changed", (int)this.a);
    u.c(this.b).cancel("group_icon_changed", (int)this.a);
    u.c(this.b).cancel("group_many_attrs_changed", (int)this.a);
    u.c(this.b).cancel("pg_welcome", (int)this.a);
    if (u.e(this.b).contains(Long.valueOf(this.a)))
    {
      u.e(this.b).remove(Long.valueOf(this.a));
      u.b(this.b, -1L, false);
    }
    u.f(this.b).remove(Long.valueOf(this.a));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.e.z
 * JD-Core Version:    0.7.0.1
 */