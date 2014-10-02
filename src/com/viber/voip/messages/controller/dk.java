package com.viber.voip.messages.controller;

import android.net.Uri;
import android.os.Handler;
import android.util.SparseArray;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.sound.ISoundService;

public class dk
{
  private static final int[] a = { 2131099669, 2131099665, 2131099666 };
  private final Handler b;
  private final SparseArray<dm> c = new SparseArray();
  private ISoundService d;
  private Uri e;
  private boolean f;
  
  public dk(Handler paramHandler)
  {
    this.b = paramHandler;
    this.c.append(0, new dm(this, 0, null));
    this.c.append(1, new dm(this, 1, null));
    this.c.append(2, new dm(this, 2, null));
    this.c.append(3, new dm(this, 3, null));
    this.c.append(4, new dm(this, 4, null));
    ViberApplication.getInstance().getPhoneController(false).addReadyListener(new dl(this));
  }
  
  public void a(int paramInt, boolean paramBoolean)
  {
    dm localdm = (dm)this.c.get(paramInt);
    if (localdm != null)
    {
      if (paramBoolean)
      {
        dm.a(localdm);
        this.b.removeCallbacks(localdm);
        this.b.postDelayed(localdm, 400L);
      }
    }
    else {
      return;
    }
    localdm.run();
  }
  
  public void a(Uri paramUri)
  {
    this.e = paramUri;
  }
  
  public void a(boolean paramBoolean)
  {
    this.f = paramBoolean;
  }
  
  public boolean a()
  {
    ISoundService localISoundService = this.d;
    boolean bool = false;
    if (localISoundService != null)
    {
      int i = this.d.getStreamVolume(this.d.stream_Notification());
      bool = false;
      if (i != 0) {
        bool = true;
      }
    }
    return bool;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.dk
 * JD-Core Version:    0.7.0.1
 */