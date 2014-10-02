package com.viber.voip.messages.ui.chathead;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.Window;

public class ChatHeadBackActivity
  extends Activity
{
  private BroadcastReceiver a = new a(this);
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    getWindow().clearFlags(2);
  }
  
  protected void onPause()
  {
    unregisterReceiver(this.a);
    super.onPause();
  }
  
  protected void onResume()
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.viber.voip.action.CLOSE_POPUP_BACKGROUND_ACTIVITY");
    registerReceiver(this.a, localIntentFilter);
    super.onResume();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.ChatHeadBackActivity
 * JD-Core Version:    0.7.0.1
 */