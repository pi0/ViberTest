package com.viber.voip.phone;

import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.PowerManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout.LayoutParams;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.c.a.e;
import com.c.a.h;
import com.viber.jni.MediaStats;
import com.viber.jni.MediaStats.VideoStats;
import com.viber.jni.MediaStats.VideoStats.BandwidthEstimation;
import com.viber.jni.MediaStats.VideoStats.BandwidthUtilization;
import com.viber.jni.MediaStats.VideoStats.RTCP;
import com.viber.jni.MediaStats.VoiceStats;
import com.viber.jni.PhoneControllerListener;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.dialer.DialerController;
import com.viber.jni.dialer.DialerControllerDelegate.DialerHoldState;
import com.viber.jni.dialer.DialerControllerDelegate.DialerVideo;
import com.viber.jni.dialer.DialerHoldStateListener;
import com.viber.jni.dialer.DialerVideoListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.au;
import com.viber.voip.a.bc;
import com.viber.voip.app.ViberFragmentActivity;
import com.viber.voip.dx;
import com.viber.voip.phone.call.a;
import com.viber.voip.phone.call.k;
import com.viber.voip.phone.call.n;
import com.viber.voip.sound.AbstractSoundService;
import com.viber.voip.sound.ISoundService;
import com.viber.voip.sound.VoENativeDebugHelper;
import com.viber.voip.sound.VoENativeDebugHelper.MediaStatisticsListener;
import java.util.concurrent.atomic.AtomicInteger;
import org.webrtc.videoengine.EngineDelegate;
import org.webrtc.videoengine.EngineDelegate.VideoEngineEventSubscriber;
import org.webrtc.videoengine.ViERenderer;
import org.webrtc.videoengine.ViERenderer.ViERendererCallback;
import org.webrtc.videoengine.ViERenderer.kRenderOrientation;
import org.webrtc.videoengine.ViEVideoSupport;
import org.webrtc.videoengine.VideoCaptureAndroid;
import org.webrtc.videoengine.VideoCaptureAndroid.CaptureEventCallback;
import org.webrtc.videoengine.VideoCaptureDeviceInfoAndroid;
import org.webrtc.videoengine.VideoCaptureDeviceInfoAndroid.FrontFacingCameraType;
import org.webrtc.videoengine.VideoCaptureDeviceInfoAndroid.VideoCaptureEventListener;

public class VideoCallActivity
  extends ViberFragmentActivity
  implements ao, VoENativeDebugHelper.MediaStatisticsListener, EngineDelegate.VideoEngineEventSubscriber, ViERenderer.ViERendererCallback, VideoCaptureAndroid.CaptureEventCallback, VideoCaptureDeviceInfoAndroid.VideoCaptureEventListener
{
  static double b = 0.7853981633974483D;
  static ViERenderer.kRenderOrientation c = ViERenderer.kRenderOrientation.kRenderOrientation180Deg;
  static int d = 0;
  static int e = 0;
  static AtomicInteger f = new AtomicInteger(0);
  ag a = null;
  private View g = null;
  private View h = null;
  private al i;
  private ai j = new ai(this);
  private ah k = new ah(this, null);
  private k l;
  private h m = null;
  private h n = null;
  private TextView o = null;
  private TextView p = null;
  private TextView q = null;
  private TextView r = null;
  private TextView s = null;
  private TextView t = null;
  private TextView u = null;
  private TextView v = null;
  private TextView w = null;
  private int x = 0;
  
  private ViERenderer.kRenderOrientation a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return ViERenderer.kRenderOrientation.kRenderOrientation0Deg;
    case 270: 
      return ViERenderer.kRenderOrientation.kRenderOrientation270Deg;
    case 180: 
      return ViERenderer.kRenderOrientation.kRenderOrientation180Deg;
    }
    return ViERenderer.kRenderOrientation.kRenderOrientation90Deg;
  }
  
  private void a(View paramView)
  {
    DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
    int i1 = localDisplayMetrics.heightPixels;
    int i2 = localDisplayMetrics.widthPixels;
    VideoCaptureDeviceInfoAndroid.getCurrentCaptureObject();
    a("setLocalRenderView: aspect ratio " + 4.0D + ":" + 3.0D);
    Resources localResources = getResources();
    int i3 = localResources.getDimensionPixelSize(2131362317);
    int i4 = localResources.getDimensionPixelSize(2131362316);
    int i5;
    if (i1 > i2)
    {
      i5 = i3;
      if (i2 <= i1) {
        break label190;
      }
    }
    for (;;)
    {
      FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(i5, i3);
      if (this.g != paramView)
      {
        a("setting new local render view");
        this.g = paramView;
        b(this.g);
        this.g.setBackgroundResource(17170444);
        if ((this.g instanceof SurfaceView)) {
          ((SurfaceView)this.g).setZOrderMediaOverlay(true);
        }
      }
      this.i.a(this.g, localLayoutParams);
      return;
      i5 = i4;
      break;
      label190:
      i3 = i4;
    }
  }
  
  private void a(String paramString) {}
  
  private void a(boolean paramBoolean)
  {
    k localk = h();
    if (localk != null) {
      localk.a = paramBoolean;
    }
  }
  
  public static int b()
  {
    return d;
  }
  
  private void b(View paramView)
  {
    if (paramView.getParent() != null)
    {
      ViewGroup localViewGroup = (ViewGroup)paramView.getParent();
      if (localViewGroup != null) {
        localViewGroup.removeView(paramView);
      }
    }
  }
  
  private void b(ViERenderer.kRenderOrientation paramkRenderOrientation)
  {
    this.i.h();
    this.i.i();
    this.i.k();
    this.i.l();
    this.i.m();
    this.i.j();
  }
  
  private void d()
  {
    VideoCaptureDeviceInfoAndroid.addEventListener(this);
    EngineDelegate.addEventSubscriber(this);
    this.a = new ag(this, this);
    this.a.enable();
    setContentView(2130903352);
    this.i = new al(this, findViewById(2131166185), this);
    this.i.a(ViERenderer.kRenderOrientation.kRenderOrientation0Deg);
    b(ViERenderer.kRenderOrientation.kRenderOrientation0Deg);
    f();
  }
  
  private void e()
  {
    Window localWindow = getWindow();
    localWindow.addFlags(4751360);
    if (!((PowerManager)getSystemService("power")).isScreenOn()) {
      localWindow.addFlags(2097152);
    }
  }
  
  private void f()
  {
    DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
    int i1 = localDisplayMetrics.heightPixels;
    int i2 = localDisplayMetrics.widthPixels;
    this.h = ViERenderer.CreateRemoteRenderView(ViberApplication.getInstance());
    b(this.h);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(i2, i1);
    localLayoutParams.addRule(8);
    this.i.a(this.h, localLayoutParams);
    this.h.setBackgroundResource(17170444);
    this.h.setVisibility(4);
    a(ViERenderer.CreateLocalRenderView(ViberApplication.getInstance()));
    ViERenderer.addRenderEventSubscriber(this);
  }
  
  private ISoundService g()
  {
    return ViberApplication.getInstance().getSoundService();
  }
  
  private k h()
  {
    return j().getCallHandler().b();
  }
  
  private n i()
  {
    if (h() != null) {
      return h().d();
    }
    return null;
  }
  
  private PhoneControllerWrapper j()
  {
    return ViberApplication.getInstance().getPhoneController(true);
  }
  
  private g k()
  {
    return j().getCallHandler().d();
  }
  
  private void l()
  {
    this.g.setBackgroundResource(0);
    g().setSpeakerphoneOn(true);
    ViberApplication.getInstance().getPhoneController(true).getDialerController().startSendVideo(this.g);
    k().c(true);
    this.i.d();
  }
  
  private void m()
  {
    if (k().c()) {
      ViberApplication.getInstance().getPhoneController(true).getDialerController().stopSendVideo();
    }
    k().c(false);
    this.i.d();
    this.g.setBackgroundResource(17170444);
  }
  
  private void n()
  {
    runOnUiThread(new ad(this));
    ViberApplication.getInstance().getPhoneController(true).getDialerController().startRecvVideo(this.h);
    k().d(true);
  }
  
  private void o()
  {
    if (k().d()) {
      ViberApplication.getInstance().getPhoneController(true).getDialerController().stopRecvVideo();
    }
    k().d(false);
    g().setSpeakerphoneOn(false);
    runOnUiThread(new ae(this));
  }
  
  private void p()
  {
    ViERenderer.kRenderOrientation localkRenderOrientation = a(d);
    if (c != localkRenderOrientation)
    {
      int i2;
      int i3;
      VideoCaptureAndroid localVideoCaptureAndroid;
      if (e > 5)
      {
        c = localkRenderOrientation;
        e = 0;
        a("orientation changed to " + c);
        if ((AbstractSoundService.isVideoSupportBuiltin()) && ((0x2 & AbstractSoundService.getEngineStatus()) != 0) && (ViEVideoSupport.isVideoCallSupported()))
        {
          ViERenderer.setRenderOrientation(c, 0.0F);
          DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
          i2 = localDisplayMetrics.heightPixels;
          i3 = localDisplayMetrics.widthPixels;
          localVideoCaptureAndroid = VideoCaptureDeviceInfoAndroid.getCurrentCaptureObject();
          if (localVideoCaptureAndroid != null)
          {
            if (!ViberApplication.isTablet()) {
              break label235;
            }
            if ((VideoCaptureDeviceInfoAndroid.FrontFacingCameraType.Android23 == localVideoCaptureAndroid.getCaptureCameraFacing()) || ((d != 90) && (d != 270))) {}
          }
        }
      }
      for (d = 180 + d;; d = 180 + d) {
        label235:
        do
        {
          f.set((d + localVideoCaptureAndroid.getDeviceRotationHint()) % 360);
          j().setDeviceOrientation(f.get(), i3, i2);
          n localn = i();
          if (localn != null)
          {
            int i1 = localn.c();
            if ((2 == i1) || (3 == i1)) {
              a(localkRenderOrientation);
            }
          }
          e = 1 + e;
          return;
        } while ((VideoCaptureDeviceInfoAndroid.FrontFacingCameraType.Android23 == localVideoCaptureAndroid.getCaptureCameraFacing()) || ((d != 0) && (d != 180)));
      }
    }
    e = 0;
  }
  
  public void a()
  {
    if (k().a()) {
      if (k().c()) {
        break label44;
      }
    }
    label44:
    for (boolean bool = true;; bool = false)
    {
      bc.a().a(k.l().j(bool));
      if (!bool) {
        break;
      }
      l();
      return;
    }
    m();
    finish();
  }
  
  public void a(k paramk)
  {
    if (paramk != null)
    {
      if (paramk.d().u()) {
        this.i.b(2131493724);
      }
      n localn = paramk.d();
      if (localn != null)
      {
        this.i.e();
        this.i.a(localn.y());
        this.i.a(paramk.d());
      }
    }
  }
  
  public void a(ViERenderer.kRenderOrientation paramkRenderOrientation)
  {
    this.i.a(paramkRenderOrientation);
    b(paramkRenderOrientation);
  }
  
  public int c()
  {
    WindowManager localWindowManager = (WindowManager)getSystemService("window");
    Configuration localConfiguration = getResources().getConfiguration();
    int i1 = localWindowManager.getDefaultDisplay().getRotation();
    if (((i1 != 0) && (i1 != 2)) || ((localConfiguration.orientation == 2) || (((i1 == 1) || (i1 == 3)) && (localConfiguration.orientation == 1)))) {
      return 0;
    }
    return 1;
  }
  
  public void onCaptureAllocated(VideoCaptureAndroid paramVideoCaptureAndroid)
  {
    a("onCaptureAllocated");
    paramVideoCaptureAndroid.addEventCallback(this);
  }
  
  public void onCaptureDeleted(VideoCaptureAndroid paramVideoCaptureAndroid)
  {
    a("onCaptureDeleted");
    onStopCapture(paramVideoCaptureAndroid);
    paramVideoCaptureAndroid.removeEventCallback(this);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (dx.d) {
      setRequestedOrientation(c());
    }
    if (c.f())
    {
      e();
      d();
      if ((getIntent().getBooleanExtra("is_initiator", false)) && (k().a())) {
        k().c(true);
      }
      return;
    }
    finish();
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    if (this.a != null) {
      this.a.disable();
    }
    ViERenderer.removeRenderEventSubscriber(this);
    VideoCaptureDeviceInfoAndroid.removeEventListener(this);
    VoENativeDebugHelper.removeMediaStatisticsListener(this);
    EngineDelegate.removeEventSubscriber(this);
  }
  
  public void onFailure(int paramInt) {}
  
  public void onLocalSurfaceChanged()
  {
    a(ViERenderer.CreateLocalRenderView(ViberApplication.getInstance()));
  }
  
  protected void onPause()
  {
    super.onPause();
    if ((k().a()) && (k().c())) {
      m();
    }
    if ((k().b()) && (k().d())) {
      o();
    }
    this.k.b();
  }
  
  public void onRenderGone() {}
  
  protected void onResume()
  {
    super.onResume();
    k localk = h();
    if (localk == null) {
      finish();
    }
    do
    {
      return;
      if (localk != this.l)
      {
        this.l = localk;
        this.i.a(localk);
      }
      this.k.a(h());
      this.k.a();
      this.k.c();
    } while (!i().e());
    n();
  }
  
  protected void onStart()
  {
    super.onStart();
    PhoneControllerListener localPhoneControllerListener = ViberApplication.getInstance().getPhoneController(false).getDelegatesManager();
    DialerHoldStateListener localDialerHoldStateListener = localPhoneControllerListener.getDialerHoldStateListener();
    DialerControllerDelegate.DialerHoldState[] arrayOfDialerHoldState = new DialerControllerDelegate.DialerHoldState[1];
    arrayOfDialerHoldState[0] = this.j;
    localDialerHoldStateListener.registerDelegate(arrayOfDialerHoldState);
    DialerVideoListener localDialerVideoListener = localPhoneControllerListener.getDialerVideoListener();
    DialerControllerDelegate.DialerVideo[] arrayOfDialerVideo = new DialerControllerDelegate.DialerVideo[1];
    arrayOfDialerVideo[0] = this.j;
    localDialerVideoListener.registerDelegate(arrayOfDialerVideo);
    this.i.a();
    if ((k().a()) && (k().c())) {
      l();
    }
    if ((k().b()) && (k().d())) {
      n();
    }
    a(true);
    i.a().a(true, true);
  }
  
  public void onStartCapture(VideoCaptureAndroid paramVideoCaptureAndroid)
  {
    a("onStartCapture");
    this.i.a(false);
    runOnUiThread(new af(this));
  }
  
  public void onStartRecvVideo()
  {
    if (this.h == null) {
      return;
    }
    this.h.setVisibility(0);
  }
  
  public void onStartSendVideo() {}
  
  public void onStatisticsUpdate(MediaStats paramMediaStats)
  {
    if (paramMediaStats == null) {
      return;
    }
    if (this.o != null) {
      this.o.setText("" + paramMediaStats.voiceStats.rtt);
    }
    if ((this.q != null) && (paramMediaStats.videoStats != null) && (paramMediaStats.videoStats.bwEstimation != null)) {
      this.q.setText("" + paramMediaStats.videoStats.bwEstimation.estimatedRecvBandwidth);
    }
    if ((this.r != null) && (paramMediaStats.videoStats != null) && (paramMediaStats.videoStats.bwEstimation != null)) {
      this.r.setText("" + paramMediaStats.videoStats.bwEstimation.estimatedSendBandwidth);
    }
    if (this.p != null) {
      this.p.setText("" + paramMediaStats.send_bitrate + "/" + paramMediaStats.recv_bitrate);
    }
    if ((this.s != null) && (paramMediaStats.videoStats != null) && (paramMediaStats.videoStats.bwUtilization != null)) {
      this.s.setText("" + paramMediaStats.videoStats.bwUtilization.totalBitrateSent);
    }
    if ((this.t != null) && (paramMediaStats.videoStats != null) && (paramMediaStats.videoStats.bwUtilization != null)) {
      this.t.setText("" + paramMediaStats.videoStats.bwUtilization.videoBitrateSent);
    }
    if ((this.u != null) && (paramMediaStats.voiceStats != null) && (paramMediaStats.videoStats != null)) {
      this.u.setText("" + paramMediaStats.voiceStats.packets_lost + "/" + paramMediaStats.videoStats.discardedPacketsCount);
    }
    if ((this.v != null) && (paramMediaStats.videoStats != null) && (paramMediaStats.videoStats.local != null)) {
      this.v.setText("" + paramMediaStats.videoStats.local.fractionLost + "/" + paramMediaStats.videoStats.local.cumulativeLost + "/" + paramMediaStats.videoStats.local.jitter + "/" + paramMediaStats.videoStats.local.rttMs);
    }
    if ((this.w != null) && (paramMediaStats.videoStats != null) && (paramMediaStats.videoStats.remote != null)) {
      this.w.setText("" + paramMediaStats.videoStats.remote.fractionLost + "/" + paramMediaStats.videoStats.remote.cumulativeLost + "/" + paramMediaStats.videoStats.remote.jitter + "/" + paramMediaStats.videoStats.remote.rttMs);
    }
    if ((this.m != null) && (paramMediaStats.videoStats != null) && (paramMediaStats.videoStats.bwEstimation != null)) {
      this.m.a(new e(this.x, paramMediaStats.videoStats.bwEstimation.estimatedRecvBandwidth), true, 90);
    }
    if ((this.n != null) && (paramMediaStats.videoStats != null) && (paramMediaStats.videoStats.bwEstimation != null)) {
      this.n.a(new e(this.x, paramMediaStats.videoStats.bwEstimation.estimatedSendBandwidth), true, 90);
    }
    this.x = (1 + this.x);
  }
  
  protected void onStop()
  {
    super.onStop();
    j().setDeviceOrientation(f.get(), 0, 0);
    j().getDelegatesManager().getDialerHoldStateListener().removeDelegate(this.j);
    j().getDelegatesManager().getDialerVideoListener().removeDelegate(this.j);
    this.i.b();
    a(false);
    i.a().a(false, true);
  }
  
  public void onStopCapture(VideoCaptureAndroid paramVideoCaptureAndroid)
  {
    a("onStopCapture");
    if ((this.i != null) && (!this.i.n())) {
      finish();
    }
  }
  
  public void onStopRecvVideo()
  {
    if (this.h == null) {
      return;
    }
    this.h.setVisibility(4);
  }
  
  public void onStopSendVideo() {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.VideoCallActivity
 * JD-Core Version:    0.7.0.1
 */