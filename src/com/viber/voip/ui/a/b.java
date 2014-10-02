package com.viber.voip.ui.a;

import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.view.KeyEvent;

class b
  implements DialogInterface.OnKeyListener
{
  b(a parama) {}
  
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


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.ui.a.b
 * JD-Core Version:    0.7.0.1
 */