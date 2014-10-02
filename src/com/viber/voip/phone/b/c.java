package com.viber.voip.phone.b;

import android.app.Activity;
import android.net.Uri;
import android.support.v4.app.Fragment;
import android.view.View;
import com.viber.jni.PhoneControllerListener;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.dialer.DialerController;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.g;
import com.viber.voip.phone.call.k;
import com.viber.voip.registration.HardwareParameters;
import com.viber.voip.sound.ISoundService;
import com.viber.voip.util.b.w;
import com.viber.voip.util.gl;

public class c
  extends Fragment
{
  private com.viber.voip.phone.call.a a;
  private DialerController b;
  private ISoundService c;
  private HardwareParameters d;
  private PhoneControllerListener e;
  private w f;
  private com.viber.voip.util.b.a.a g;
  
  public void a(View paramView, Uri paramUri, int paramInt)
  {
    gl.a(paramView, new d(this, paramView, paramInt, paramUri));
  }
  
  public com.viber.voip.phone.call.a c()
  {
    if (this.a == null) {
      this.a = ViberApplication.getInstance().getPhoneController(true).getCallHandler();
    }
    return this.a;
  }
  
  public DialerController d()
  {
    if (this.b == null) {
      this.b = ViberApplication.getInstance().getPhoneController(true).getDialerController();
    }
    return this.b;
  }
  
  public ISoundService e()
  {
    if (this.c == null) {
      this.c = ViberApplication.getInstance().getSoundService();
    }
    return this.c;
  }
  
  public HardwareParameters f()
  {
    if (this.d == null) {
      this.d = ViberApplication.getInstance().getHardwareParameters();
    }
    return this.d;
  }
  
  public PhoneControllerListener g()
  {
    if (this.e == null) {
      this.e = ViberApplication.getInstance().getPhoneController(false).getDelegatesManager();
    }
    return this.e;
  }
  
  public g h()
  {
    return c().b().k();
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    this.f = w.a(paramActivity);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.b.c
 * JD-Core Version:    0.7.0.1
 */