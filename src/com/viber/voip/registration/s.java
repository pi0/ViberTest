package com.viber.voip.registration;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import com.viber.voip.ViberApplication;
import com.viber.voip.util.t;
import java.io.IOException;
import java.util.Locale;

class s
  implements Runnable
{
  final String a;
  final String b;
  final String c;
  final String d;
  
  private s(ActivationController paramActivationController, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
    this.d = paramString4;
  }
  
  public void run()
  {
    ActivationController.access$100("$RegisterTask started");
    try
    {
      ViberApplication localViberApplication1 = ViberApplication.getInstance();
      String str = localViberApplication1.getResources().getConfiguration().locale.getLanguage();
      ActivationController localActivationController = localViberApplication1.getActivationController();
      localActivationController.checkNetworkConnection();
      cj localcj = localActivationController.getRegistrationManager();
      ViberApplication localViberApplication2 = ViberApplication.getInstance();
      cn localcn = new cn();
      localcn.a = Settings.Secure.getString(localViberApplication2.getContentResolver(), "android_id");
      localcn.c = ((WifiManager)localViberApplication2.getSystemService("wifi")).getConnectionInfo().getMacAddress();
      localcn.d = ((TelephonyManager)localViberApplication2.getSystemService("phone")).getDeviceId();
      localcn.e = null;
      if (Build.VERSION.SDK_INT > 8) {
        localcn.b = Build.SERIAL;
      }
      ActivationController.access$100("$RegisterTask.doInBackground: PUT: " + this.a + this.b);
      HardwareParameters localHardwareParameters = localViberApplication1.getHardwareParameters();
      df localdf2 = localcj.a(this.b, this.a, localHardwareParameters.getPushToken(), localHardwareParameters.getUdid(), localHardwareParameters.getDeviceType(), localHardwareParameters.getSystemVersion(), localHardwareParameters.getMCC(), localHardwareParameters.getMNC(), localHardwareParameters.getCC(), this.c, this.d, str, dj.d(), localcn, new t());
      localdf1 = localdf2;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        ViberApplication.log(6, "RegisterTask", localIOException.getMessage(), localIOException);
        df localdf1 = null;
      }
    }
    ActivationController.access$100("$RegisterTask notifyCallbacks with responseResult = " + localdf1);
    ActivationController.access$800(this.e, localdf1);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.registration.s
 * JD-Core Version:    0.7.0.1
 */