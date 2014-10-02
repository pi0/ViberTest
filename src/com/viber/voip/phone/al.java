package com.viber.voip.phone;

import android.annotation.SuppressLint;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.dialer.DialerController;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.au;
import com.viber.voip.a.bc;
import com.viber.voip.contacts.b.b;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.phone.b.a.i;
import com.viber.voip.phone.call.CallerInfo;
import com.viber.voip.phone.call.k;
import com.viber.voip.phone.call.n;
import com.viber.voip.util.b.w;
import com.viber.voip.util.gl;
import com.viber.voip.util.gn;
import com.viber.voip.util.l;
import com.viber.voip.widget.PausableChronometer;
import org.webrtc.videoengine.ViERenderer.kRenderOrientation;

public class al
  implements View.OnClickListener, View.OnTouchListener, Runnable
{
  private final int a;
  private final int b;
  private final int c;
  private ViewGroup d;
  private FrameLayout e;
  private VideoCallMenuButton f;
  private PausableChronometer g;
  private VideoCallActivity h;
  private Handler i = dc.a(dk.a);
  private ao j;
  private DialerController k = ViberApplication.getInstance().getPhoneController(true).getDialerController();
  private com.viber.voip.phone.call.a l = ViberApplication.getInstance().getPhoneController(true).getCallHandler();
  private w m;
  private com.viber.voip.util.b.a.a n;
  private i o;
  private boolean p;
  private boolean q;
  
  public al(VideoCallActivity paramVideoCallActivity, View paramView, ao paramao)
  {
    this.d = ((ViewGroup)paramView);
    this.j = paramao;
    this.h = paramVideoCallActivity;
    this.d.setOnTouchListener(this);
    this.e = ((FrameLayout)paramView.findViewById(2131166188));
    this.f = ((VideoCallMenuButton)paramView.findViewById(2131166190));
    Resources localResources = paramVideoCallActivity.getResources();
    this.a = localResources.getDimensionPixelSize(2131362313);
    this.b = localResources.getDimensionPixelSize(2131362314);
    this.c = localResources.getDimensionPixelSize(2131362315);
    this.m = w.a(paramVideoCallActivity);
  }
  
  private void a(View paramView, Uri paramUri)
  {
    gl.a(paramView, new an(this, paramView, paramUri));
  }
  
  private void b(boolean paramBoolean)
  {
    this.p = paramBoolean;
    int i1;
    View localView1;
    View localView2;
    VideoCallActivity localVideoCallActivity;
    if (paramBoolean)
    {
      i1 = 0;
      localView1 = this.d.findViewById(2131166211);
      localView2 = this.d.findViewById(2131166212);
      if ((localView1 != null) && (localView2 != null) && (((paramBoolean) && (localView1.getVisibility() == 8) && (localView2.getVisibility() == 8)) || ((!paramBoolean) && (localView1.getVisibility() == 0) && (localView2.getVisibility() == 0))))
      {
        localVideoCallActivity = this.h;
        if (!paramBoolean) {
          break label137;
        }
      }
    }
    label137:
    for (int i2 = 17432576;; i2 = 17432577)
    {
      Animation localAnimation = AnimationUtils.loadAnimation(localVideoCallActivity, i2);
      localView1.startAnimation(localAnimation);
      localView1.setVisibility(i1);
      localView2.startAnimation(localAnimation);
      localView2.setVisibility(i1);
      return;
      i1 = 8;
      break;
    }
  }
  
  private void c(int paramInt)
  {
    this.d.findViewById(paramInt).setOnClickListener(this);
  }
  
  private n o()
  {
    k localk = ViberApplication.getInstance().getPhoneController(true).getCallHandler().b();
    if (localk != null) {
      return localk.d();
    }
    return null;
  }
  
  private void p()
  {
    this.i.removeCallbacks(this);
    this.i.postDelayed(this, 4000L);
  }
  
  public void a() {}
  
  public void a(int paramInt) {}
  
  public void a(View paramView, FrameLayout.LayoutParams paramLayoutParams)
  {
    FrameLayout localFrameLayout = (FrameLayout)this.e.findViewById(2131166189);
    if (localFrameLayout.getChildCount() > 0) {
      if (localFrameLayout.getChildAt(0) != paramView) {
        localFrameLayout.addView(paramView, paramLayoutParams);
      }
    }
    while (paramView.getParent() != null)
    {
      return;
      localFrameLayout.getChildAt(0).setLayoutParams(paramLayoutParams);
      return;
    }
    localFrameLayout.addView(paramView, paramLayoutParams);
  }
  
  public void a(View paramView, RelativeLayout.LayoutParams paramLayoutParams)
  {
    ((RelativeLayout)this.d.findViewById(2131166187)).addView(paramView, paramLayoutParams);
  }
  
  public void a(k paramk)
  {
    b localb = paramk.c().c();
    if ((localb != null) && (localb.b() != null))
    {
      a(this.d, localb.b());
      return;
    }
    gl.a(this.d, this.h.getResources().getDrawable(2130838099));
  }
  
  public void a(n paramn)
  {
    if (this.g == null) {
      return;
    }
    switch (paramn.c())
    {
    default: 
      this.g.stop();
      this.g.setVisibility(8);
    }
    while ((paramn.a()) || (paramn.C()))
    {
      b(2131493906);
      return;
      this.g.setVisibility(0);
      this.g.setBase(SystemClock.elapsedRealtime() - paramn.x());
      this.g.start();
      continue;
      this.g.setVisibility(0);
      this.g.setBase(SystemClock.elapsedRealtime() - paramn.x());
      this.g.stop();
    }
    if (paramn.n())
    {
      b(2131493907);
      return;
    }
    c();
  }
  
  public void a(ViERenderer.kRenderOrientation paramkRenderOrientation)
  {
    LayoutInflater localLayoutInflater = LayoutInflater.from(this.h);
    View localView1 = this.d.findViewById(2131166210);
    View localView2 = this.d.findViewById(2131166216);
    View localView3 = this.d.findViewById(2131166215);
    if (paramkRenderOrientation == ViERenderer.kRenderOrientation.kRenderOrientation90Deg)
    {
      if (localView1 != null) {
        this.d.removeView(localView1);
      }
      if (localView3 != null) {
        this.d.removeView(localView3);
      }
      if (localView2 == null)
      {
        localLayoutInflater.inflate(2130903355, this.d, true);
        ((ViewGroup.MarginLayoutParams)this.e.getLayoutParams()).topMargin = this.a;
        ((ViewGroup.MarginLayoutParams)this.e.getLayoutParams()).rightMargin = this.c;
        ((FrameLayout.LayoutParams)this.e.getLayoutParams()).gravity = 53;
        ((FrameLayout.LayoutParams)this.f.getLayoutParams()).gravity = 51;
        this.f.setRotation(90);
      }
    }
    for (;;)
    {
      VideoCallMenuButton localVideoCallMenuButton = (VideoCallMenuButton)this.d.findViewById(2131166037);
      k localk = this.l.b();
      boolean bool = false;
      if (localk != null) {
        bool = localk.d().q();
      }
      localVideoCallMenuButton.setChecked(bool);
      d();
      e();
      g();
      f();
      p();
      return;
      if (paramkRenderOrientation == ViERenderer.kRenderOrientation.kRenderOrientation270Deg)
      {
        if (localView1 != null) {
          this.d.removeView(localView1);
        }
        if (localView2 != null) {
          this.d.removeView(localView2);
        }
        if (localView3 == null)
        {
          localLayoutInflater.inflate(2130903354, this.d, true);
          ((ViewGroup.MarginLayoutParams)this.e.getLayoutParams()).bottomMargin = this.a;
          ((ViewGroup.MarginLayoutParams)this.e.getLayoutParams()).leftMargin = this.c;
          ((FrameLayout.LayoutParams)this.e.getLayoutParams()).gravity = 83;
          ((FrameLayout.LayoutParams)this.f.getLayoutParams()).gravity = 85;
          this.f.setRotation(270);
        }
      }
      else
      {
        if (localView2 != null) {
          this.d.removeView(localView2);
        }
        if (localView3 != null) {
          this.d.removeView(localView3);
        }
        if (localView1 == null)
        {
          localLayoutInflater.inflate(2130903353, this.d, true);
          ((ViewGroup.MarginLayoutParams)this.e.getLayoutParams()).topMargin = this.b;
          ((ViewGroup.MarginLayoutParams)this.e.getLayoutParams()).leftMargin = this.a;
          ((FrameLayout.LayoutParams)this.e.getLayoutParams()).gravity = 51;
          ((FrameLayout.LayoutParams)this.f.getLayoutParams()).gravity = 83;
          this.f.setRotation(0);
        }
      }
    }
  }
  
  public void a(boolean paramBoolean)
  {
    this.q = paramBoolean;
  }
  
  public void b() {}
  
  public void b(int paramInt)
  {
    if (this.g == null) {
      return;
    }
    this.g.b();
    this.g.stop();
    this.g.setText(paramInt);
  }
  
  public void c()
  {
    if (this.g == null) {
      return;
    }
    this.g.c();
  }
  
  public void d()
  {
    boolean bool1 = this.l.d().c();
    VideoCallMenuButton localVideoCallMenuButton = (VideoCallMenuButton)this.d.findViewById(2131166214);
    boolean bool2;
    FrameLayout localFrameLayout;
    int i1;
    if (localVideoCallMenuButton != null)
    {
      if (!bool1)
      {
        bool2 = true;
        localVideoCallMenuButton.setChecked(bool2);
      }
    }
    else
    {
      localFrameLayout = this.e;
      i1 = 0;
      if (!bool1) {
        break label67;
      }
    }
    for (;;)
    {
      localFrameLayout.setVisibility(i1);
      return;
      bool2 = false;
      break;
      label67:
      i1 = 8;
    }
  }
  
  public void e()
  {
    TextView localTextView = (TextView)this.d.findViewById(2131165400);
    k localk = this.l.b();
    CallerInfo localCallerInfo;
    if ((localTextView != null) && (localk != null))
    {
      localCallerInfo = localk.c();
      if (localCallerInfo.a().equals(this.h.getString(2131493744))) {
        localTextView.setText(localCallerInfo.b());
      }
    }
    else
    {
      return;
    }
    localTextView.setText(ViberApplication.getInstance().getBiDiAwareFormatter().a(localCallerInfo.a()));
  }
  
  public void f()
  {
    ((ImageButton)this.d.findViewById(2131166026)).setOnClickListener(new am(this));
    n localn = this.l.c().d();
    if (this.o == null)
    {
      this.o = new i((ImageButton)this.d.findViewById(2131166026));
      localn.addObserver(this.o);
    }
    for (;;)
    {
      this.o.update(localn, localn.clone());
      return;
      this.o.a((ImageButton)this.d.findViewById(2131166026));
    }
  }
  
  public void g()
  {
    this.g = ((PausableChronometer)this.d.findViewById(2131165453));
    n localn = o();
    if (localn != null) {
      a(localn);
    }
  }
  
  public void h()
  {
    c(2131166213);
  }
  
  public void i()
  {
    c(2131166214);
  }
  
  public void j()
  {
    this.f.setOnClickListener(this);
  }
  
  public void k()
  {
    c(2131166149);
  }
  
  public void l()
  {
    c(2131166037);
  }
  
  public void m()
  {
    c(2131166150);
  }
  
  public boolean n()
  {
    return this.q;
  }
  
  public void onClick(View paramView)
  {
    boolean bool1 = true;
    n localn = o();
    switch (paramView.getId())
    {
    }
    for (;;)
    {
      p();
      return;
      k localk = this.l.b();
      if (localk != null) {}
      for (CallerInfo localCallerInfo = localk.c(); localCallerInfo != null; localCallerInfo = null)
      {
        gn.a(this.h, localCallerInfo.b(), 0L, 0L, localCallerInfo.a(), null);
        bc.a().a(k.l().q());
        this.h.finish();
        break;
      }
      this.k.handleHangup();
      continue;
      if (localn != null)
      {
        boolean bool2 = localn.q();
        VideoCallMenuButton localVideoCallMenuButton = (VideoCallMenuButton)paramView;
        if (!bool2) {}
        for (;;)
        {
          localVideoCallMenuButton.setChecked(bool1);
          if (!bool2) {
            break label208;
          }
          this.k.handleUnmute();
          break;
          bool1 = false;
        }
        label208:
        this.k.handleMute();
        continue;
        if (localn != null)
        {
          if (!localn.u()) {}
          for (;;)
          {
            this.k.handleTransfer(bool1);
            break;
            bool1 = false;
          }
          this.l.g();
          bc.a().a(k.l().r());
          a(bool1);
          continue;
          if (this.j != null) {
            this.j.a();
          }
        }
      }
    }
  }
  
  @SuppressLint({"ClickableViewAccessibility"})
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (this.p)
    {
      this.i.removeCallbacks(this);
      b(false);
      return false;
    }
    b(true);
    p();
    return false;
  }
  
  public void run()
  {
    b(false);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.al
 * JD-Core Version:    0.7.0.1
 */