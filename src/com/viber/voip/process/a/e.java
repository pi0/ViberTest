package com.viber.voip.process.a;

import android.os.Bundle;
import com.viber.voip.ViberEnv;
import com.viber.voip.pixie.PixieController;
import com.viber.voip.pixie.PixieController.PixieReadyListener;
import com.viber.voip.process.b;

class e
  implements PixieController.PixieReadyListener
{
  e(d paramd, b paramb) {}
  
  public void onReady()
  {
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("use_local_proxy", ViberEnv.getPixieController().useLocalProxy());
    localBundle.putInt("local_proxy_port", ViberEnv.getPixieController().getLocalProxyPort());
    this.a.a(localBundle);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.process.a.e
 * JD-Core Version:    0.7.0.1
 */