package com.viber.voip.phone.call;

import android.app.KeyguardManager;
import android.content.res.Resources;
import android.os.Handler;
import android.text.TextUtils;
import com.viber.jni.PhoneControllerDelegate;
import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.jni.PhoneControllerListener;
import com.viber.jni.dialer.DialerCallInterruptionListener;
import com.viber.jni.dialer.DialerCallbackListener;
import com.viber.jni.dialer.DialerController;
import com.viber.jni.dialer.DialerControllerDelegate.DialerCallback;
import com.viber.jni.dialer.DialerControllerDelegate.DialerIncomingScreen;
import com.viber.jni.dialer.DialerControllerDelegate.DialerLocalCallState;
import com.viber.jni.dialer.DialerControllerDelegate.DialerMuteState;
import com.viber.jni.dialer.DialerControllerDelegate.DialerPhoneState;
import com.viber.jni.dialer.DialerHoldStateListener;
import com.viber.jni.dialer.DialerIncomingScreenListener;
import com.viber.jni.dialer.DialerLocalCallStateListener;
import com.viber.jni.dialer.DialerMuteStateListener;
import com.viber.jni.dialer.DialerOutgoingScreenListener;
import com.viber.jni.dialer.DialerPhoneStateListener;
import com.viber.jni.dialer.DialerRemoteCallStateListener;
import com.viber.jni.dialer.DialerTransferCallListener;
import com.viber.jni.dialer.DialerVideoListener;
import com.viber.jni.secure.SecureCallsListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.bc;
import com.viber.voip.a.x;
import com.viber.voip.dk;
import com.viber.voip.phone.c;
import com.viber.voip.phone.v;
import com.viber.voip.sound.ISoundService;
import com.viber.voip.util.hd;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

public class a
  implements DialerControllerDelegate.DialerCallback, DialerControllerDelegate.DialerIncomingScreen, DialerControllerDelegate.DialerLocalCallState, DialerControllerDelegate.DialerMuteState, DialerControllerDelegate.DialerPhoneState
{
  private final ViberApplication a;
  private final DialerController b;
  private Set<i> c = new HashSet(10);
  private c d;
  private boolean e;
  private Map<Integer, List<Runnable>> f = Collections.synchronizedMap(new WeakHashMap());
  private int g;
  private PhoneControllerDelegateAdapter h = new f(this);
  
  public a(ViberApplication paramViberApplication, DialerController paramDialerController, PhoneControllerListener paramPhoneControllerListener)
  {
    this.a = paramViberApplication;
    this.b = paramDialerController;
    Handler localHandler1 = dk.a.a();
    this.d = new c(paramDialerController, localHandler1);
    paramPhoneControllerListener.getSecureCallsListener().registerDelegate(this.d, localHandler1);
    paramPhoneControllerListener.getDialerVideoListener().registerDelegate(this.d, localHandler1);
    paramPhoneControllerListener.getDialerLocalCallStateListener().registerDelegate(this.d, localHandler1);
    paramPhoneControllerListener.getDialerRemoteCallStateListener().registerDelegate(this.d, localHandler1);
    paramPhoneControllerListener.getDialerPhoneStateListener().registerDelegate(this.d, localHandler1);
    paramPhoneControllerListener.getDialerMuteStateListener().registerDelegate(this.d, localHandler1);
    paramPhoneControllerListener.getDialerHoldStateListener().registerDelegate(this.d, localHandler1);
    paramPhoneControllerListener.getDialerTransferCallListener().registerDelegate(this.d, localHandler1);
    paramPhoneControllerListener.getDialerIncomingScreenListener().registerDelegate(this.d, localHandler1);
    paramPhoneControllerListener.getDialerOutgoingScreenListener().registerDelegate(this.d, localHandler1);
    paramPhoneControllerListener.getDialerCallInterruptionListener().registerDelegate(this.d, localHandler1);
    paramPhoneControllerListener.getDialerCallbackListener().registerDelegate(this.d, localHandler1);
    paramViberApplication.getSoundService().registerSpeakerStateListener(this.d);
    Handler localHandler2 = dk.f.a();
    paramPhoneControllerListener.getDialerLocalCallStateListener().registerDelegate(this, localHandler1);
    paramPhoneControllerListener.getDialerMuteStateListener().registerDelegate(this, localHandler2);
    paramPhoneControllerListener.getDialerPhoneStateListener().registerDelegate(this, localHandler2);
    paramPhoneControllerListener.getDialerCallbackListener().registerDelegate(this, localHandler2);
    paramPhoneControllerListener.getDialerIncomingScreenListener().registerDelegate(this, localHandler2);
    PhoneControllerDelegate[] arrayOfPhoneControllerDelegate = new PhoneControllerDelegate[1];
    arrayOfPhoneControllerDelegate[0] = this.h;
    paramPhoneControllerListener.registerDelegate(arrayOfPhoneControllerDelegate);
    com.viber.voip.phone.call.a.e locale = new com.viber.voip.phone.call.a.e(this.a.getSoundService());
    paramPhoneControllerListener.getDialerIncomingScreenListener().registerDelegate(locale, localHandler2);
    a(locale);
    com.viber.voip.phone.call.a.f localf = new com.viber.voip.phone.call.a.f(paramViberApplication);
    paramPhoneControllerListener.getDialerIncomingScreenListener().registerDelegate(localf, localHandler2);
    paramPhoneControllerListener.getDialerOutgoingScreenListener().registerDelegate(localf, localHandler2);
    a(localf);
    com.viber.voip.phone.call.a.a locala = new com.viber.voip.phone.call.a.a();
    paramPhoneControllerListener.getDialerLocalCallStateListener().registerDelegate(locala, localHandler2);
    a(locala);
  }
  
  private void a(int paramInt)
  {
    List localList;
    synchronized (this.f)
    {
      localList = (List)this.f.put(Integer.valueOf(paramInt), null);
      if (localList == null) {
        return;
      }
    }
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext()) {
      ((Runnable)localIterator.next()).run();
    }
  }
  
  private void a(String paramString1, l paraml, int paramInt1, boolean paramBoolean1, boolean paramBoolean2, String paramString2, int paramInt2, i parami)
  {
    Set localSet = ViberApplication.getInstance().getContactManager().a(paramString1);
    StringBuilder localStringBuilder = new StringBuilder();
    Object localObject = null;
    if (localSet != null)
    {
      Iterator localIterator = localSet.iterator();
      while (localIterator.hasNext())
      {
        com.viber.voip.contacts.b.b localb = (com.viber.voip.contacts.b.b)localIterator.next();
        if (localObject == null) {
          localObject = localb;
        }
        if (localStringBuilder.length() > 0) {
          localStringBuilder.append(',').append(' ');
        }
        localStringBuilder.append(localb.a());
      }
    }
    String str1 = localStringBuilder.toString();
    if (TextUtils.isEmpty(str1)) {}
    label280:
    label286:
    for (String str2 = this.a.getResources().getString(2131493744);; str2 = str1)
    {
      boolean bool;
      CallerInfo localCallerInfo;
      c localc;
      int i;
      if ((1 == paramInt1) && (ViberApplication.preferences().b("viber_in_enabled", true)))
      {
        bool = true;
        localCallerInfo = new CallerInfo(str2, paramString1, localObject, this.a.getPhoneApp().a(paramBoolean1, bool));
        if (l.a != paraml) {
          break label286;
        }
        localc = this.d;
        if (!bool) {
          break label280;
        }
        i = 1;
      }
      label210:
      for (k localk = localc.a(localCallerInfo, i, paramBoolean1);; localk = this.d.a(localCallerInfo, paramBoolean2))
      {
        localk.b(paramInt2);
        localk.d().addObserver(new com.viber.voip.phone.call.a.d());
        localk.d().notifyObservers();
        if (parami != null) {
          parami.onCallInfoReady(localk);
        }
        a(localk);
        return;
        bool = false;
        break;
        i = 0;
        break label210;
      }
    }
  }
  
  private void a(String paramString1, String paramString2, boolean paramBoolean)
  {
    try
    {
      hd.a(this.a, paramString2, new b(this, paramString2, paramBoolean, paramString1));
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  private void c(String paramString) {}
  
  public void a()
  {
    this.e = true;
    this.b.handleHangup();
  }
  
  public void a(int paramInt, Runnable paramRunnable)
  {
    if (this.d.a() == null) {
      return;
    }
    if (paramInt == this.d.c().c())
    {
      paramRunnable.run();
      return;
    }
    synchronized (this.f)
    {
      Object localObject2 = (List)this.f.get(Integer.valueOf(paramInt));
      if (localObject2 == null) {
        localObject2 = new ArrayList();
      }
      ((List)localObject2).add(paramRunnable);
      this.f.put(Integer.valueOf(paramInt), localObject2);
      return;
    }
  }
  
  public void a(k paramk)
  {
    Iterator localIterator = new HashSet(this.c).iterator();
    while (localIterator.hasNext()) {
      ((i)localIterator.next()).onCallInfoReady(paramk);
    }
  }
  
  public void a(String paramString)
  {
    a(paramString, paramString, false);
  }
  
  @Deprecated
  public void a(boolean paramBoolean)
  {
    c("handleSpeaker() stateOn: " + paramBoolean);
    ISoundService localISoundService = this.a.getSoundService();
    k localk = this.d.a();
    if ((localk != null) && (localISoundService.isSpeakerphoneAllowed()) && ((!localISoundService.rejectSpeakerActiveState()) || (paramBoolean != localISoundService.isSpeakerphoneOn())))
    {
      localISoundService.setSpeakerphoneOn(paramBoolean);
      bc.a().a(localk.k().b(paramBoolean));
      c("handleSpeaker() done");
    }
  }
  
  public boolean a(i parami)
  {
    if (this.d.a() != null) {
      parami.onCallInfoReady(this.d.a());
    }
    return this.c.add(parami);
  }
  
  public k b()
  {
    return this.d.a();
  }
  
  public void b(String paramString)
  {
    a(com.viber.voip.viberout.e.c().c(paramString), paramString, true);
  }
  
  public void b(boolean paramBoolean)
  {
    c("handleCallTransfer " + paramBoolean);
    k localk = this.d.a();
    if (localk == null) {
      return;
    }
    localk.d().i(paramBoolean).notifyObservers();
    if (paramBoolean) {
      bc.a().a(localk.k().o());
    }
    for (;;)
    {
      this.b.handleTransfer(paramBoolean);
      return;
      bc.a().a(localk.k().c(Long.valueOf((System.currentTimeMillis() - localk.d().w()) / 1000L)));
    }
  }
  
  public boolean b(i parami)
  {
    return this.c.remove(parami);
  }
  
  public k c()
  {
    return this.d.b();
  }
  
  public com.viber.voip.phone.g d()
  {
    return this.d.d();
  }
  
  public void e()
  {
    this.a.getSoundService().setMicrophoneMute(true);
    this.d.mute();
    c("handleMute() done");
  }
  
  public void f()
  {
    this.a.getSoundService().setMicrophoneMute(false);
    this.d.unmute();
    c("handleMute() done");
  }
  
  public void g()
  {
    this.d.e();
  }
  
  public void hideCallBack() {}
  
  public void hideReception() {}
  
  public void mute()
  {
    this.a.getSoundService().setMicrophoneMute(true);
  }
  
  public void onCallEnded(long paramLong, boolean paramBoolean, String paramString, int paramInt1, int paramInt2)
  {
    n localn = this.d.c();
    long l;
    x localx;
    if (localn != null)
    {
      if (paramInt1 != 3) {
        break label93;
      }
      l = localn.x() / 1000L;
      bc localbc = bc.a();
      if (!this.e) {
        break label73;
      }
      localx = b().k().e(Long.valueOf(l));
      localbc.a(localx);
    }
    for (;;)
    {
      this.e = false;
      return;
      label73:
      localx = b().k().f(Long.valueOf(l));
      break;
      label93:
      if ((localn != null) && (paramInt1 == 9)) {
        bc.a().a(b().k().d(Long.valueOf((System.currentTimeMillis() - localn.w()) / 1000L)));
      }
    }
  }
  
  public void onCallStarted(boolean paramBoolean) {}
  
  public void onHangup() {}
  
  public void onPhoneStateChanged(int paramInt)
  {
    k localk = this.d.a();
    bc localbc;
    com.viber.voip.a.g localg;
    if (localk != null) {
      if ((this.g != 5) && (paramInt == 5))
      {
        boolean bool = ((KeyguardManager)this.a.getSystemService("keyguard")).inKeyguardRestrictedInputMode();
        localbc = bc.a();
        localg = localk.k();
        if (!bool) {
          break label95;
        }
      }
    }
    label95:
    for (String str = "Locked";; str = "Unlocked")
    {
      localbc.a(localg.b(str));
      this.g = paramInt;
      a(paramInt);
      this.a.getPhoneApp().d();
      return;
    }
  }
  
  public void showCallBack(int paramInt1, int paramInt2) {}
  
  public void showDialog(int paramInt, String paramString) {}
  
  public void showReception(String paramString1, String paramString2, boolean paramBoolean, int paramInt)
  {
    hd.a(this.a, paramString1, new d(this, paramString1, paramInt, paramBoolean, paramString2));
  }
  
  public void switchToGSM(String paramString)
  {
    c("switchToGSM number :" + paramString);
    a(0, new e(this, paramString));
  }
  
  public void unmute()
  {
    this.a.getSoundService().setMicrophoneMute(false);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.call.a
 * JD-Core Version:    0.7.0.1
 */