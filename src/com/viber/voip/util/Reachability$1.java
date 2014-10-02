package com.viber.voip.util;

import android.content.IntentFilter;

class Reachability$1
  extends IntentFilter
{
  Reachability$1(ft paramft)
  {
    addAction("android.net.conn.CONNECTIVITY_CHANGE");
    addAction("android.net.conn.BACKGROUND_DATA_SETTING_CHANGED");
    addAction("android.intent.action.AIRPLANE_MODE");
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.Reachability.1
 * JD-Core Version:    0.7.0.1
 */