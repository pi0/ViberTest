package com.viber.voip.messages.conversation.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import com.viber.voip.messages.j;
import com.viber.voip.util.hj;

class o
  implements hj
{
  o(m paramm, String paramString) {}
  
  public void a(boolean paramBoolean, int paramInt, String paramString)
  {
    String str;
    switch (paramInt)
    {
    case 1: 
    case 3: 
    default: 
      str = "com.viber.voip.action.INVITE_NUMBER_NOT_VIBER_DIALOG";
      FragmentActivity localFragmentActivity = m.a(this.b).getActivity();
      if (localFragmentActivity != null) {
        localFragmentActivity.runOnUiThread(new p(this, str));
      }
      break;
    }
    while (m.a(this.b).D() == null)
    {
      return;
      str = null;
      break;
      str = "com.viber.voip.action.CONNECTION_PROBLEM";
      break;
      str = "com.viber.voip.action.NO_SERVICE_DIALOG";
      break;
    }
    if (str != null)
    {
      m.a(this.b).D().sendBroadcast(new Intent("com.viber.voip.action.CLOSE_POPUP"));
      Intent localIntent2 = new Intent(str).setFlags(268435456);
      localIntent2.putExtra("dialog_context", this.a);
      m.a(this.b).D().startActivity(localIntent2);
      return;
    }
    m.a(this.b).D().sendBroadcast(new Intent("com.viber.voip.action.CLOSE_POPUP"));
    Intent localIntent1 = j.a(0L, 0L, this.a, 0, 0L, 0L, null);
    localIntent1.addFlags(268435456);
    localIntent1.putExtra("send_1to1", true);
    m.a(this.b).D().startActivity(localIntent1);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.o
 * JD-Core Version:    0.7.0.1
 */