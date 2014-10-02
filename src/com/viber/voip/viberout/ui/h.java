package com.viber.voip.viberout.ui;

import android.os.Handler;
import android.view.View;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.ui.PositioningAwareFrameLayout;
import com.viber.voip.messages.ui.du;

class h
  extends du
{
  private boolean c;
  
  h(ViberOutActivity paramViberOutActivity, PositioningAwareFrameLayout paramPositioningAwareFrameLayout) {}
  
  public void b(View paramView, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (!this.c)
    {
      int i = paramInt3 - paramInt1;
      dc.a(dk.a).post(new i(this, i));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.viberout.ui.h
 * JD-Core Version:    0.7.0.1
 */