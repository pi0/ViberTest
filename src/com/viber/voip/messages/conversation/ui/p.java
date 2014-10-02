package com.viber.voip.messages.conversation.ui;

import android.content.Intent;
import com.viber.voip.messages.j;

class p
  implements Runnable
{
  p(o paramo, String paramString) {}
  
  public void run()
  {
    if (this.a != null)
    {
      Intent localIntent2 = new Intent(this.a).setFlags(268435456);
      localIntent2.putExtra("dialog_context", this.b.a);
      m.a(this.b.b).startActivity(localIntent2);
      return;
    }
    Intent localIntent1 = j.a(0L, 0L, this.b.a, 0, 0L, 0L, null);
    localIntent1.putExtra("send_1to1", true);
    m.a(this.b.b).startActivity(localIntent1);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.p
 * JD-Core Version:    0.7.0.1
 */