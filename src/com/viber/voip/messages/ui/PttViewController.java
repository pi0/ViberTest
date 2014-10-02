package com.viber.voip.messages.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.FrameLayout;
import com.viber.jni.PhoneControllerListener;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.connection.ConnectionDelegate;
import com.viber.jni.connection.ConnectionListener;
import com.viber.jni.ptt.PttController;
import com.viber.jni.ptt.PttController.EPttRecordStatus;
import com.viber.jni.ptt.PttController.EPttRecordStopReason;
import com.viber.jni.ptt.PttControllerDelegate.Recorder;
import com.viber.jni.ptt.PttRecorderListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.a;
import com.viber.voip.a.ad;
import com.viber.voip.a.bc;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.h.b;
import com.viber.voip.util.ao;
import com.viber.voip.util.at;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.atomic.AtomicBoolean;

public class PttViewController
  extends FrameLayout
  implements View.OnTouchListener, PttControllerDelegate.Recorder
{
  private RadialGradientView a;
  private TimeFillView b;
  private View c;
  private long d = 0L;
  private Timer e;
  private TimerTask f;
  private View g;
  private View.OnTouchListener h;
  private Handler i;
  private Handler j;
  private AtomicBoolean k;
  private eb l;
  private ec m;
  private PttController n;
  private String o;
  private dz p;
  private ConnectionDelegate q = new dw(this);
  
  public PttViewController(Context paramContext)
  {
    this(paramContext, null);
    a();
  }
  
  public PttViewController(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    if (!isInEditMode())
    {
      ViberApplication.getInstance().getPhoneController(false).addInitializedListener(new dx(this));
      a();
    }
  }
  
  private void d()
  {
    onStopPttIndicator();
    if (this.o != null)
    {
      this.b.b();
      this.i.post(this.m);
      long l1 = System.currentTimeMillis() - this.d;
      bc.a().a(a.r.a(Long.valueOf(l1 / 1000L)));
      if ((l1 < 0L) && (this.n != null)) {
        this.n.handleDeletePtt(this.o);
      }
      if (this.p != null) {
        this.p.a(this.o, l1);
      }
      this.d = 0L;
      this.o = null;
    }
  }
  
  private boolean e()
  {
    boolean bool1 = isInEditMode();
    boolean bool2 = false;
    if (!bool1)
    {
      boolean bool3 = ViberApplication.getInstance().getPhoneController(false).isInitialized();
      bool2 = false;
      if (bool3)
      {
        boolean bool4 = ViberApplication.getInstance().getPhoneController(false).isConnected();
        bool2 = false;
        if (bool4) {
          bool2 = true;
        }
      }
    }
    return bool2;
  }
  
  public void a()
  {
    View localView = inflate(getContext(), 2130903318, this);
    this.a = ((RadialGradientView)localView.findViewById(2131166099));
    this.b = ((TimeFillView)localView.findViewById(2131166100));
    this.g = localView.findViewById(2131166101);
    this.g.setOnTouchListener(this);
    this.c = localView.findViewById(2131166104);
    this.k = new AtomicBoolean(false);
    this.i = dc.a(dk.h);
    this.j = dc.a(dk.a);
    this.l = new eb(this, null);
    this.m = new ec(this, null);
    setEnabled(e());
  }
  
  public void b()
  {
    if (!isInEditMode())
    {
      PhoneControllerListener localPhoneControllerListener = ViberApplication.getInstance().getPhoneController(false).getDelegatesManager();
      localPhoneControllerListener.getPttRecorderListener().registerDelegate(new PttControllerDelegate.Recorder[] { this });
      localPhoneControllerListener.getConnectionListener().registerDelegate(this.q, dc.a(dk.a));
      setEnabled(e());
      ViberApplication.log(4, "PttViewController", "Ptt on");
    }
  }
  
  public void c()
  {
    PhoneControllerListener localPhoneControllerListener = ViberApplication.getInstance().getPhoneController(false).getDelegatesManager();
    localPhoneControllerListener.getPttRecorderListener().removeDelegate(this);
    localPhoneControllerListener.getConnectionListener().removeDelegate(this.q);
    if (this.e != null)
    {
      this.e.purge();
      this.e.cancel();
    }
    ViberApplication.log(4, "PttViewController", "Ptt off");
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    b();
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    c();
  }
  
  public void onPttRecordStopped(String paramString, int paramInt)
  {
    d();
    if (paramInt == PttController.EPttRecordStopReason.RECORD_STOP_NO_CONNECTION) {
      getContext().startActivity(new Intent("com.viber.voip.action.CONNECTION_PROBLEM").setFlags(268435456));
    }
  }
  
  public void onStartPttIndicator()
  {
    this.a.a();
  }
  
  public void onStartRecordPttReply(int paramInt1, String paramString, int paramInt2)
  {
    if (PttController.EPttRecordStatus.RECORD_OK == paramInt2)
    {
      this.o = paramString;
      this.b.a();
      this.d = System.currentTimeMillis();
      if ((this.k.getAndSet(false)) && (this.n != null))
      {
        this.n.handleStopRecordPtt(this.o);
        d();
      }
    }
    for (;;)
    {
      if (PttController.EPttRecordStatus.RECORD_FAILED == paramInt2) {
        at.a(getContext(), null, getContext().getString(2131493796), null);
      }
      if (PttController.EPttRecordStatus.RECORD_NO_SPACE == paramInt2) {
        getContext().startActivity(new Intent("com.viber.voip.action.PTT_LOW_STORAGE_DIALOG").setFlags(268435456));
      }
      return;
      this.o = null;
    }
  }
  
  public void onStopPttIndicator()
  {
    this.a.b();
  }
  
  public void onStopRecordPttReply(String paramString, int paramInt)
  {
    d();
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    ViberApplication.log(3, "PttViewController", "onTouchEvent action: " + paramMotionEvent.getAction());
    if ((this.h != null) && (this.h.onTouch(paramView, paramMotionEvent))) {
      return true;
    }
    switch (paramMotionEvent.getAction())
    {
    case 2: 
    default: 
    case 0: 
      for (;;)
      {
        return false;
        this.g.setSelected(true);
        this.k.set(false);
        this.i.postDelayed(this.l, 200L);
        this.a.setActive(true);
        if ((getContext() instanceof Activity)) {
          ao.a((Activity)getContext());
        }
      }
    case 1: 
      this.b.b();
    }
    if ((this.o != null) && (this.n != null))
    {
      this.n.handleStopRecordPtt(this.o);
      d();
    }
    for (;;)
    {
      if ((getContext() instanceof Activity)) {
        ao.b((Activity)getContext());
      }
      this.a.setActive(false);
      this.j.postDelayed(new dy(this), 50L);
      break;
      this.k.set(true);
      this.i.removeCallbacks(this.l);
    }
  }
  
  public void setCallbacks(dz paramdz)
  {
    this.p = paramdz;
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    if ((!paramBoolean) && (b.d().a())) {
      at.a(getContext(), 2131493726, 2131493727, null);
    }
    super.setEnabled(paramBoolean);
    this.b.setEnabled(paramBoolean);
    this.a.setEnabled(paramBoolean);
    if (paramBoolean)
    {
      this.g.setVisibility(0);
      this.c.setVisibility(8);
      return;
    }
    this.g.setVisibility(8);
    this.c.setVisibility(0);
  }
  
  public void setOnTouchListener(View.OnTouchListener paramOnTouchListener)
  {
    super.setOnTouchListener(paramOnTouchListener);
    this.h = paramOnTouchListener;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.PttViewController
 * JD-Core Version:    0.7.0.1
 */