package com.viber.voip.contacts.ui;

import android.content.Intent;
import android.support.v4.app.FragmentActivity;

class cj
  implements Runnable
{
  cj(ci paramci) {}
  
  public void run()
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("thread_id", this.a.a);
    this.a.b.a.setResult(-1, localIntent);
    this.a.b.a.finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.ui.cj
 * JD-Core Version:    0.7.0.1
 */