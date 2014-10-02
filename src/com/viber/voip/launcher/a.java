package com.viber.voip.launcher;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import com.viber.voip.dc;
import com.viber.voip.dk;

class a
  implements Runnable
{
  a(ContactWidget paramContactWidget, Intent paramIntent, Context paramContext) {}
  
  public void run()
  {
    int i = this.a.getIntExtra("call_count", 0);
    int j = this.a.getIntExtra("badges_count", 0);
    dc.a(dk.a).post(new b(this, i, j));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.launcher.a
 * JD-Core Version:    0.7.0.1
 */