package com.viber.voip.pixie;

import android.telephony.TelephonyManager;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.registration.ActivationController;
import java.net.ProxySelector;

class PixieControllerImpl$5
  implements Runnable
{
  PixieControllerImpl$5(PixieControllerImpl paramPixieControllerImpl) {}
  
  public void run()
  {
    ViberApplication localViberApplication = ViberApplication.getInstance();
    PixieControllerImpl.access$402(this.this$0, PixieServices.getInstance(localViberApplication));
    ViberApplication.log(3, PixieControllerImpl.access$000(), "Pixie: startPixieTask. mPixieSettings: " + PixieControllerImpl.access$1100());
    boolean bool1;
    if (PixieControllerImpl.PixieSettings.PIXIE_MODE_OFF != PixieControllerImpl.access$1100())
    {
      String str1 = localViberApplication.getActivationController().getRegNumberCanonized();
      String str2 = ((TelephonyManager)localViberApplication.getSystemService("phone")).getNetworkOperator();
      PixieServices localPixieServices = PixieControllerImpl.access$400(this.this$0);
      boolean bool2;
      boolean bool3;
      if (PixieControllerImpl.PixieSettings.PIXIE_MODE_ALWAYS_ON == PixieControllerImpl.access$1100())
      {
        bool2 = true;
        bool3 = localPixieServices.shouldUsePixieSystem(str1, str2, bool2);
        if (PixieControllerImpl.access$1200(this.this$0) == bool3) {
          break label151;
        }
      }
      label151:
      for (bool1 = true;; bool1 = false)
      {
        if (bool1) {
          break label156;
        }
        ViberApplication.log(3, PixieControllerImpl.access$000(), "Pixie: no change in pixie settings");
        PixieControllerImpl.access$600(this.this$0);
        return;
        bool2 = false;
        break;
      }
      label156:
      PixieControllerImpl.access$1202(this.this$0, bool3);
      PixieControllerImpl.access$400(this.this$0).setListener(this.this$0.mPixieListener);
    }
    for (;;)
    {
      if (PixieControllerImpl.access$1200(this.this$0))
      {
        ViberApplication.log(3, PixieControllerImpl.access$000(), "Pixie: will start pixie when PhoneController is ready.");
        PixieControllerImpl.access$200(this.this$0).addReadyListener(PixieControllerImpl.access$100(this.this$0));
        return;
      }
      ViberApplication.log(3, PixieControllerImpl.access$000(), "Pixie: not in a blocked country. continuing.");
      PixieControllerImpl.access$600(this.this$0);
      ViberApplication.log(3, PixieControllerImpl.access$000(), "Pixie: startPixieTask mPixieSettings:" + PixieControllerImpl.access$1100() + " pixieSettingsWereChanged:" + bool1 + " mShouldUsePixieSystem:" + PixieControllerImpl.access$1200(this.this$0));
      if ((PixieControllerImpl.PixieSettings.PIXIE_MODE_OFF == PixieControllerImpl.access$1100()) || (!bool1) || (PixieControllerImpl.access$1200(this.this$0))) {
        break;
      }
      PixieControllerImpl.access$1302(this.this$0, false);
      PixieControllerImpl.access$200(this.this$0).addInitializedListener(PixieControllerImpl.access$700(this.this$0));
      ProxySelector localProxySelector = ProxySelector.getDefault();
      if (!(localProxySelector instanceof PixieControllerImpl.PixieProxySelector)) {
        break;
      }
      ((PixieControllerImpl.PixieProxySelector)localProxySelector).redirect(false);
      return;
      bool1 = false;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.pixie.PixieControllerImpl.5
 * JD-Core Version:    0.7.0.1
 */