package com.viber.voip.phone.call;

import android.content.Intent;
import android.net.Uri;
import com.viber.voip.ViberApplication;

class e
  implements Runnable
{
  e(a parama, String paramString) {}
  
  public void run()
  {
    a.a(this.b, "submitNewPendingTaskForCallState number:" + this.a);
    Intent localIntent = new Intent("android.intent.action.CALL", Uri.fromParts("tel", this.a, null));
    localIntent.setFlags(268435456);
    a.b(this.b).startActivity(localIntent);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.call.e
 * JD-Core Version:    0.7.0.1
 */