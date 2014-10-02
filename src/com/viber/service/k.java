package com.viber.service;

import android.util.Log;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;

class k
  implements Runnable
{
  k(VoipConnectorService paramVoipConnectorService) {}
  
  public void run()
  {
    Log.i("VoipConnectorService", "ViberApplication initApplication STARTED");
    if (!ViberApplication.getInstance().getPhoneController(false).isReady()) {
      VoipConnectorService.a(this.a);
    }
    Log.i("VoipConnectorService", "ViberApplication initApplication FINISHED");
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.service.k
 * JD-Core Version:    0.7.0.1
 */