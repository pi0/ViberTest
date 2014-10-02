package com.viber.voip.ui.a;

import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.view.KeyEvent;

class e
  implements DialogInterface.OnKeyListener
{
  e(d paramd) {}
  
  public boolean onKey(DialogInterface paramDialogInterface, int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = true;
    switch (paramInt)
    {
    default: 
      bool = false;
    }
    do
    {
      return bool;
    } while (!this.a.b);
    paramDialogInterface.cancel();
    return bool;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.ui.a.e
 * JD-Core Version:    0.7.0.1
 */