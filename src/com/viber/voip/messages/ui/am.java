package com.viber.voip.messages.ui;

import android.app.ProgressDialog;

class am
  implements Runnable
{
  am(aj paramaj, ProgressDialog paramProgressDialog) {}
  
  public void run()
  {
    if ((this.a != null) && (this.a.isShowing())) {
      this.a.dismiss();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.am
 * JD-Core Version:    0.7.0.1
 */