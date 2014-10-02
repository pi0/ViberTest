package com.viber.voip.app;

import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;

public abstract class ViberReplaceFragmentActivity
  extends ViberSingleFragmentActivity
{
  protected void a()
  {
    this.a = b();
    getSupportFragmentManager().beginTransaction().replace(2131165332, this.a, "single_pane").commit();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.app.ViberReplaceFragmentActivity
 * JD-Core Version:    0.7.0.1
 */