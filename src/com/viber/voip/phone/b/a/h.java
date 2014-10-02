package com.viber.voip.phone.b.a;

import android.text.Editable;
import android.view.View;
import android.view.View.OnLongClickListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.settings.j;
import com.viber.voip.settings.l;
import com.viber.voip.sound.ISoundService;
import com.viber.voip.sound.IVibratorService;
import com.viber.voip.ui.ViberEditText;

class h
  implements View.OnLongClickListener
{
  private h(e parame) {}
  
  public boolean onLongClick(View paramView)
  {
    e.a(this.a).getText().append("+");
    e.b(this.a).sendDTMFTone(10);
    if (ViberApplication.preferences().b(j.w(), j.x())) {
      e.b(this.a).getVibratorService().vibrate(35L);
    }
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.b.a.h
 * JD-Core Version:    0.7.0.1
 */