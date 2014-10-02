package com.viber.voip.phone;

import android.os.Handler;
import com.viber.jni.dialer.DialerController;
import com.viber.jni.dialer.DialerControllerDelegate.DialerCallInterruption;
import com.viber.jni.dialer.DialerControllerDelegate.DialerCallback;
import com.viber.jni.dialer.DialerControllerDelegate.DialerHoldState;
import com.viber.jni.dialer.DialerControllerDelegate.DialerIncomingScreen;
import com.viber.jni.dialer.DialerControllerDelegate.DialerLocalCallState;
import com.viber.jni.dialer.DialerControllerDelegate.DialerMuteState;
import com.viber.jni.dialer.DialerControllerDelegate.DialerOutgoingScreen;
import com.viber.jni.dialer.DialerControllerDelegate.DialerPhoneState;
import com.viber.jni.dialer.DialerControllerDelegate.DialerRemoteCallState;
import com.viber.jni.dialer.DialerControllerDelegate.DialerTransferCall;
import com.viber.jni.dialer.DialerControllerDelegate.DialerVideo;
import com.viber.jni.secure.SecureCallsDelegate;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.bc;
import com.viber.voip.phone.call.CallerInfo;
import com.viber.voip.phone.call.k;
import com.viber.voip.phone.call.n;
import com.viber.voip.settings.l;
import com.viber.voip.sound.ISoundService.SpeakerStateListener;
import java.util.List;
import org.webrtc.videoengine.ViEVideoSupport;
import org.webrtc.videoengine.VideoCaptureAndroid;
import org.webrtc.videoengine.VideoCaptureDeviceInfoAndroid;
import org.webrtc.videoengine.VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice;

public class c
  implements DialerControllerDelegate.DialerCallInterruption, DialerControllerDelegate.DialerCallback, DialerControllerDelegate.DialerHoldState, DialerControllerDelegate.DialerIncomingScreen, DialerControllerDelegate.DialerLocalCallState, DialerControllerDelegate.DialerMuteState, DialerControllerDelegate.DialerOutgoingScreen, DialerControllerDelegate.DialerPhoneState, DialerControllerDelegate.DialerRemoteCallState, DialerControllerDelegate.DialerTransferCall, DialerControllerDelegate.DialerVideo, SecureCallsDelegate, ISoundService.SpeakerStateListener
{
  private f a;
  private int b;
  private volatile k c;
  private volatile k d;
  private volatile g e = new g();
  private int f = 0;
  private DialerController g;
  private Handler h;
  
  public c(DialerController paramDialerController, Handler paramHandler)
  {
    this.g = paramDialerController;
    this.h = paramHandler;
  }
  
  private k a(k paramk)
  {
    this.c = null;
    this.d = null;
    if (this.a != null)
    {
      paramk.d().a(f.a(this.a), f.b(this.a), f.c(this.a), f.d(this.a));
      this.a = null;
    }
    paramk.d().a(this.b);
    return paramk;
  }
  
  public static boolean f()
  {
    return (ViEVideoSupport.isVideoCallSupported()) && (!"0".equals(ViberApplication.preferences().b("sound_settings_video", "1")));
  }
  
  public k a()
  {
    return this.c;
  }
  
  public k a(CallerInfo paramCallerInfo, int paramInt, boolean paramBoolean)
  {
    this.c = new k(paramCallerInfo, paramInt, paramBoolean);
    this.c = a(this.c);
    return this.c;
  }
  
  public k a(CallerInfo paramCallerInfo, boolean paramBoolean)
  {
    this.c = new k(paramCallerInfo, paramBoolean);
    this.c = a(this.c);
    return this.c;
  }
  
  protected void a(int paramInt, String paramString) {}
  
  protected void a(String paramString)
  {
    a(3, paramString);
  }
  
  public k b()
  {
    if (this.c != null) {
      return this.c;
    }
    return this.d;
  }
  
  public n c()
  {
    k localk = a();
    if (localk != null) {
      return localk.d();
    }
    return null;
  }
  
  public g d()
  {
    return this.e;
  }
  
  public void e()
  {
    if (!this.e.c()) {}
    List localList;
    VideoCaptureAndroid localVideoCaptureAndroid;
    do
    {
      return;
      localList = VideoCaptureDeviceInfoAndroid.getDevicesList();
      localVideoCaptureAndroid = VideoCaptureDeviceInfoAndroid.getCurrentCaptureObject();
    } while ((localList == null) || (localVideoCaptureAndroid == null) || (1 >= localList.size()));
    this.f = VideoCaptureDeviceInfoAndroid.getCaptureDeviceIndex(localVideoCaptureAndroid, localList);
    int i = 1 + this.f;
    this.f = i;
    this.f = (i % localList.size());
    this.g.setCaptureDeviceName(((VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice)localList.get(this.f)).deviceUniqueName);
  }
  
  public void hideCall(String paramString, boolean paramBoolean)
  {
    k localk = this.c;
    if (this.c == null) {
      return;
    }
    localk.d().A().notifyObservers();
  }
  
  public void hideCallBack() {}
  
  public void hideReception() {}
  
  public void localHold()
  {
    k localk = this.c;
    if (this.c == null) {
      return;
    }
    localk.d().a(true).b(true).notifyObservers();
    bc.a().a(localk.k().f());
  }
  
  public void localUnhold()
  {
    k localk = this.c;
    if (this.c == null) {
      return;
    }
    boolean bool = localk.d().C();
    localk.d().b(bool).a(false).notifyObservers();
  }
  
  public void mute()
  {
    k localk = this.c;
    if (this.c == null) {
      return;
    }
    localk.d().f(true).notifyObservers();
    bc.a().a(localk.k().a(true));
  }
  
  public void onCallEnded(long paramLong, boolean paramBoolean, String paramString, int paramInt1, int paramInt2)
  {
    k localk = this.c;
    if (this.c == null) {
      return;
    }
    localk.d().a(paramLong).b(paramInt1).notifyObservers();
  }
  
  public void onCallStarted(boolean paramBoolean)
  {
    k localk = this.c;
    if (this.c == null) {
      return;
    }
    localk.d().z().notifyObservers();
  }
  
  public void onDataInterruption(boolean paramBoolean)
  {
    k localk = this.c;
    if (this.c == null) {
      return;
    }
    localk.d().d(paramBoolean).notifyObservers();
  }
  
  public void onHangup() {}
  
  public void onHeadphonesConnected(boolean paramBoolean)
  {
    k localk = this.c;
    if (this.c == null) {
      return;
    }
    this.h.post(new d(this, localk, paramBoolean));
  }
  
  public void onPeerBusy() {}
  
  public void onPeerCapabilities(int paramInt)
  {
    k localk = this.c;
    if (this.c == null) {
      return;
    }
    localk.a(paramInt);
    this.e.b(localk.n());
  }
  
  public void onPeerRinging()
  {
    k localk = this.c;
    if (this.c == null) {
      return;
    }
    localk.d().c(true).notifyObservers();
  }
  
  public int onPeerVideoEnded()
  {
    k localk = this.c;
    if (this.c == null) {
      return 0;
    }
    localk.d().e(false).notifyObservers();
    return 0;
  }
  
  public int onPeerVideoEndedAck()
  {
    return 0;
  }
  
  public int onPeerVideoStarted()
  {
    k localk = this.c;
    if (this.c == null) {
      return 0;
    }
    localk.d().e(true).notifyObservers();
    return 0;
  }
  
  public int onPeerVideoStartedAck()
  {
    return 0;
  }
  
  public void onPhoneStateChanged(int paramInt)
  {
    k localk = this.c;
    this.b = paramInt;
    if (this.c == null) {}
    do
    {
      return;
      if ((this.c != null) && ((paramInt == 0) || (10 == paramInt)))
      {
        this.d = this.c;
        this.c = null;
      }
      if ((2 == paramInt) || (3 == paramInt))
      {
        boolean bool = f();
        a("onPhoneStateChanged() isVideoAvailable=" + bool);
        if (bool) {
          this.e.a(true);
        }
      }
    } while (paramInt == 0);
    localk.d().a(paramInt).notifyObservers();
  }
  
  public void onSecureCallStateChange(long paramLong, int paramInt1, byte[] paramArrayOfByte, int paramInt2, String paramString)
  {
    k localk = this.c;
    if (localk != null)
    {
      localk.d().a(paramInt1, paramArrayOfByte, paramString, paramInt2).notifyObservers();
      this.a = null;
      return;
    }
    this.a = new f(this, null);
    f.a(this.a, paramLong);
    f.a(this.a, paramInt1);
    f.a(this.a, paramArrayOfByte);
    f.a(this.a, paramString);
    f.b(this.a, paramInt2);
  }
  
  public void onSpeakerStateChanged(boolean paramBoolean)
  {
    k localk = this.c;
    if (this.c == null) {
      return;
    }
    this.h.post(new e(this, localk, paramBoolean));
    bc.a().a(localk.k().b(paramBoolean));
  }
  
  public void onSpeakerStatePreChanged(boolean paramBoolean) {}
  
  public void onStartRingback(String paramString) {}
  
  public void onTransferFailed(int paramInt)
  {
    k localk = this.c;
    if (this.c == null) {}
    do
    {
      return;
      localk.d().i(false).notifyObservers();
    } while (paramInt != 5);
    bc.a().a(localk.k().p());
  }
  
  public void onTransferReplyOK(long paramLong)
  {
    k localk = this.c;
    if (this.c == null) {}
    n localn;
    do
    {
      return;
      localn = localk.d();
    } while ((paramLong == localn.v()) || (!localn.u()));
    localn.b(paramLong);
    localn.notifyObservers();
  }
  
  public void peerHold()
  {
    k localk = this.c;
    if (this.c == null) {
      return;
    }
    localk.d().b(true).j(true).notifyObservers();
    bc.a().a(localk.k().g());
  }
  
  public void peerUnhold()
  {
    k localk = this.c;
    if (this.c == null) {
      return;
    }
    boolean bool = localk.d().B();
    localk.d().b(bool).j(false).notifyObservers();
  }
  
  public void showCall(String paramString, boolean paramBoolean1, boolean paramBoolean2) {}
  
  public void showCallBack(int paramInt1, int paramInt2)
  {
    k localk = this.c;
    if (this.c == null) {
      return;
    }
    localk.d().c(paramInt1).notifyObservers();
  }
  
  public void showDialog(int paramInt, String paramString) {}
  
  public void showReception(String paramString1, String paramString2, boolean paramBoolean, int paramInt) {}
  
  public void switchToGSM(String paramString) {}
  
  public void unmute()
  {
    k localk = this.c;
    if (this.c == null) {
      return;
    }
    localk.d().f(false).notifyObservers();
    bc.a().a(localk.k().a(false));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.c
 * JD-Core Version:    0.7.0.1
 */