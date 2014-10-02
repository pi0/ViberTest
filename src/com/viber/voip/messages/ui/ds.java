package com.viber.voip.messages.ui;

import android.content.Intent;
import android.net.Uri;

class ds
  implements Runnable
{
  ds(ParticipantsCallChooser paramParticipantsCallChooser, String paramString) {}
  
  public void run()
  {
    Uri localUri = Uri.fromParts("tel", this.a, null);
    this.b.startActivity(new Intent("com.viber.voip.action.CALL", localUri));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.ds
 * JD-Core Version:    0.7.0.1
 */