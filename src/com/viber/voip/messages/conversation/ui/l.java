package com.viber.voip.messages.conversation.ui;

import android.app.Activity;
import android.content.Intent;
import com.viber.voip.ViberApplication;
import com.viber.voip.util.gn;

class l
  implements Runnable
{
  l(k paramk, Activity paramActivity) {}
  
  public void run()
  {
    Intent localIntent = gn.b(this.a);
    if (localIntent == null)
    {
      ViberApplication.getInstance().showToast(this.a.getString(2131493847));
      return;
    }
    localIntent.putExtra("fromConversation", true);
    k.a(this.b).startActivityForResult(localIntent, 101);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.l
 * JD-Core Version:    0.7.0.1
 */