package com.viber.voip.messages.ui.popup;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.view.Window;
import com.viber.voip.messages.conversation.as;

public class PopupMessageActivity$ScreenReceiver
  extends BroadcastReceiver
{
  public PopupMessageActivity$ScreenReceiver(PopupMessageActivity paramPopupMessageActivity) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals("android.intent.action.SCREEN_OFF"))
    {
      this.a.a("BroadcastReceiver:  ACTION_SCREEN_OFF");
      PopupMessageActivity.a(this.a, false);
      this.a.getWindow().clearFlags(4194304);
    }
    do
    {
      do
      {
        return;
        if (paramIntent.getAction().equals("android.intent.action.SCREEN_ON"))
        {
          this.a.a("BroadcastReceiver:  ACTION_SCREEN_ON");
          PopupMessageActivity.a(this.a, false);
          return;
        }
        if (!paramIntent.getAction().equals("android.intent.action.USER_PRESENT")) {
          break;
        }
        this.a.a("BroadcastReceiver:  ACTION_USER_PRESENT");
      } while ((PopupMessageActivity.e(this.a) == null) || (!PopupMessageActivity.e(this.a).a()) || (this.a.c == PopupMessageActivity.e(this.a).getCount()));
      PopupMessageActivity.f(this.a);
      return;
    } while ((!paramIntent.getAction().equals("com.viber.voip.action.CLOSE_POPUP")) || (this.a.isFinishing()));
    this.a.a("BroadcastReceiver:  ACTION_CLOSE_POPUP");
    if (paramIntent.getBooleanExtra("hidenotify", false)) {
      PopupMessageActivity.g(this.a);
    }
    this.a.finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.popup.PopupMessageActivity.ScreenReceiver
 * JD-Core Version:    0.7.0.1
 */