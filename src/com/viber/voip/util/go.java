package com.viber.voip.util;

import android.content.Context;
import android.content.Intent;
import com.viber.voip.a.bc;
import com.viber.voip.a.k;

final class go
  implements Runnable
{
  go(Context paramContext, Intent paramIntent, k paramk) {}
  
  public void run()
  {
    this.a.startActivity(this.b);
    if (this.c != null) {
      bc.a().a(this.c.c());
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.go
 * JD-Core Version:    0.7.0.1
 */