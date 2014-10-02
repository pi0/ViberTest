package com.viber.voip.phone.b;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.viber.voip.phone.call.CallerInfo;
import com.viber.voip.phone.call.k;
import com.viber.voip.sound.ISoundService;
import com.viber.voip.ui.call.WavesView;

class ae
  implements DialogInterface.OnCancelListener
{
  ae(ac paramac) {}
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    k localk = this.a.e;
    if (localk != null) {
      ac.d(this.a).playRingtone(ac.d(this.a).getRingtone(localk.c().d()));
    }
    ac.e(this.a).setVisibility(0);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.b.ae
 * JD-Core Version:    0.7.0.1
 */