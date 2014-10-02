package com.viber.voip.phone;

import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Resources;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.TextView;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.bc;
import com.viber.voip.a.g;
import com.viber.voip.a.x;
import com.viber.voip.e.q;
import com.viber.voip.phone.call.k;
import com.viber.voip.widget.PausableChronometer;

public class i
{
  private static String a = "MinimizedCallManager";
  private static i b;
  private Context c = ViberApplication.getInstance();
  private WindowManager d = (WindowManager)this.c.getSystemService("window");
  private ActivityManager e = (ActivityManager)this.c.getSystemService("activity");
  private com.viber.voip.phone.call.a f = ViberApplication.getInstance().getPhoneController(true).getCallHandler();
  private Object g = new Object();
  private View h;
  private TextView i;
  private ImageView j;
  private PausableChronometer k;
  private boolean l;
  private q m = new j(this);
  
  public static i a()
  {
    if (b == null) {
      b = new i();
    }
    return b;
  }
  
  private void a(boolean paramBoolean)
  {
    k localk = h();
    bc localbc;
    if (localk != null)
    {
      localbc = bc.a();
      if (!paramBoolean) {
        break label33;
      }
    }
    label33:
    for (x localx = localk.k().m();; localx = localk.k().n())
    {
      localbc.a(localx);
      return;
    }
  }
  
  private void c()
  {
    this.h = LayoutInflater.from(this.c).inflate(2130903082, null);
    this.h.setVisibility(8);
    this.h.setOnClickListener(new l(this));
    this.j = ((ImageView)this.h.findViewById(2131165398));
    this.i = ((TextView)this.h.findViewById(2131165400));
    this.k = ((PausableChronometer)this.h.findViewById(2131165453));
  }
  
  private void d()
  {
    c();
    Resources localResources = this.c.getResources();
    float f1 = TypedValue.applyDimension(1, 50.0F, localResources.getDisplayMetrics());
    float f2 = TypedValue.applyDimension(1, 110.0F, localResources.getDisplayMetrics());
    float f3 = TypedValue.applyDimension(1, 68.0F, localResources.getDisplayMetrics());
    WindowManager.LayoutParams localLayoutParams = new WindowManager.LayoutParams((int)f2, (int)f1, 2007, 262184, -3);
    localLayoutParams.y = ((int)f3);
    localLayoutParams.gravity = 53;
    this.d.addView(this.h, localLayoutParams);
  }
  
  private void e()
  {
    if (this.h != null)
    {
      this.d.removeView(this.h);
      this.h = null;
    }
  }
  
  private void f()
  {
    if (this.h != null)
    {
      this.h.startAnimation(AnimationUtils.loadAnimation(this.c, 17432577));
      this.h.setVisibility(8);
      a(false);
    }
  }
  
  private void g()
  {
    if ((this.h != null) && (this.l))
    {
      this.h.startAnimation(AnimationUtils.loadAnimation(this.c, 17432576));
      this.h.setVisibility(0);
      a(true);
    }
  }
  
  private k h()
  {
    return this.f.b();
  }
  
  private com.viber.voip.g.a i()
  {
    return ViberApplication.getInstance().getPhoneApp().f();
  }
  
  public void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    Object localObject1 = this.g;
    if (paramBoolean1) {}
    for (;;)
    {
      try
      {
        f();
        com.viber.voip.g.a locala = i();
        if (paramBoolean2) {
          break label60;
        }
        bool = true;
        locala.a(bool);
        return;
      }
      finally {}
      new m(this, null).a();
      continue;
      label60:
      boolean bool = false;
    }
  }
  
  public void b()
  {
    com.viber.voip.e.a.a().a(this.m);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.i
 * JD-Core Version:    0.7.0.1
 */