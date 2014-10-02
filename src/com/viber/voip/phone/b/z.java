package com.viber.voip.phone.b;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.viber.voip.phone.call.CallerInfo;
import com.viber.voip.phone.call.a;
import com.viber.voip.phone.call.k;
import com.viber.voip.sound.ISoundService;
import com.viber.voip.ui.call.WavesView;

class z
  implements DialogInterface.OnCancelListener
{
  z(y paramy) {}
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    k localk = this.a.c().b();
    if (localk != null) {
      this.a.e().playRingtone(this.a.e().getRingtone(localk.c().d()));
    }
    y.a(this.a).setVisibility(0);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.b.z
 * JD-Core Version:    0.7.0.1
 */