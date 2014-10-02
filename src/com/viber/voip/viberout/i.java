package com.viber.voip.viberout;

import android.app.Activity;
import android.content.Intent;

public class i
{
  boolean a;
  Activity b;
  Intent c;
  
  i(Activity paramActivity, Intent paramIntent)
  {
    this.b = paramActivity;
    this.c = paramIntent;
  }
  
  public String toString()
  {
    return "EntryCookie{activity: " + this.b.getClass().getSimpleName() + ", fromNotification: " + this.a + "}";
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.viberout.i
 * JD-Core Version:    0.7.0.1
 */