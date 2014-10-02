package com.viber.voip.e;

import android.os.Handler;
import com.viber.jni.PhoneControllerListener;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.dialer.DialerControllerDelegate.DialerLocalCallState;
import com.viber.jni.dialer.DialerLocalCallStateListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.phone.call.i;
import com.viber.voip.phone.call.k;
import com.viber.voip.phone.call.n;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class a
  implements i
{
  private static a a;
  private g b;
  private List<r> c = new ArrayList();
  
  private a()
  {
    ViberApplication.getInstance().getPhoneController(false).addCallInfoListener(this);
    DialerLocalCallStateListener localDialerLocalCallStateListener = ViberApplication.getInstance().getPhoneController(false).getDelegatesManager().getDialerLocalCallStateListener();
    DialerControllerDelegate.DialerLocalCallState[] arrayOfDialerLocalCallState = new DialerControllerDelegate.DialerLocalCallState[1];
    arrayOfDialerLocalCallState[0] = new b(this);
    localDialerLocalCallStateListener.registerDelegate(arrayOfDialerLocalCallState);
  }
  
  public static a a()
  {
    if (a == null) {
      a = new a();
    }
    return a;
  }
  
  private void a(s params)
  {
    dc.a(dk.a).post(new f(this, params));
  }
  
  private void b(s params)
  {
    synchronized (this.c)
    {
      ArrayList localArrayList = new ArrayList(this.c);
      Iterator localIterator = localArrayList.iterator();
      if (localIterator.hasNext()) {
        params.a((r)localIterator.next());
      }
    }
  }
  
  public void a(r paramr)
  {
    synchronized (this.c)
    {
      this.c.add(paramr);
      PhoneControllerWrapper localPhoneControllerWrapper = ViberApplication.getInstance().getPhoneController(false);
      localPhoneControllerWrapper.addInitializedListener(new d(this, localPhoneControllerWrapper));
      return;
    }
  }
  
  public void onCallInfoReady(k paramk)
  {
    this.b = new g(this, paramk);
    paramk.d().addObserver(this.b);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.e.a
 * JD-Core Version:    0.7.0.1
 */