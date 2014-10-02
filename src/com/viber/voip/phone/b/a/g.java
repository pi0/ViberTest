package com.viber.voip.phone.b.a;

import android.text.Editable;
import android.view.View;
import android.view.View.OnClickListener;
import com.viber.voip.sound.ISoundService;
import com.viber.voip.ui.ViberEditText;

class g
  implements View.OnClickListener
{
  private final String c;
  private final int d;
  
  static
  {
    if (!e.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public g(e parame, String paramString, int paramInt)
  {
    if ((!a) && (paramString == null)) {
      throw new AssertionError();
    }
    this.c = paramString;
    this.d = paramInt;
  }
  
  public void onClick(View paramView)
  {
    e.a(this.b).requestFocus();
    e.a(this.b).getText().append(this.c);
    e.b(this.b).sendDTMFTone(this.d);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.b.a.g
 * JD-Core Version:    0.7.0.1
 */