package com.viber.voip.api;

import android.os.Handler;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.connection.ConnectionListener;

final class l
  implements n
{
  l(PhoneControllerWrapper paramPhoneControllerWrapper, ConnectionListener paramConnectionListener, z paramz) {}
  
  public void onConnect() {}
  
  public void onConnectionStateChange(int paramInt)
  {
    if (this.a.isConnected())
    {
      ViberUrlHandlerActivity.b().removeCallbacks(this);
      this.b.removeDelegate(this);
      this.c.a(this.a);
    }
  }
  
  public void run()
  {
    this.b.removeDelegate(this);
    this.c.a();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.api.l
 * JD-Core Version:    0.7.0.1
 */