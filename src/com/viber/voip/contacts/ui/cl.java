package com.viber.voip.contacts.ui;

import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import java.util.Map;

class cl
  implements Runnable
{
  cl(ck paramck, String paramString1, String paramString2) {}
  
  public void run()
  {
    this.c.a.setEnabled(true);
    cb.b(this.c.b, "check_number_dialog");
    if (this.a != null)
    {
      Intent localIntent = new Intent(this.a).setFlags(268435456);
      this.c.b.a.startActivity(localIntent);
      return;
    }
    this.c.b.b.put(this.b, new cn(this.c.b).a(true));
    cb.c(this.c.b).a(true, null, this.b, false);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.ui.cl
 * JD-Core Version:    0.7.0.1
 */