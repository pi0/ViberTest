package com.viber.voip.util;

import android.content.Intent;
import android.os.Bundle;
import com.viber.voip.user.YouFragment;

class bt
  implements Runnable
{
  private Intent b = new Intent();
  
  public bt(bo parambo, Intent paramIntent)
  {
    this.b.setAction(paramIntent.getAction());
    Bundle localBundle = paramIntent.getExtras();
    if (localBundle != null) {
      this.b.putExtras(localBundle);
    }
  }
  
  public Intent a()
  {
    return this.b;
  }
  
  public void run()
  {
    bo.f(this.a).openSettings();
    bo.a(this.a, this.b);
    bo.a(this.a, null);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.bt
 * JD-Core Version:    0.7.0.1
 */