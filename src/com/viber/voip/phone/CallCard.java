package com.viber.voip.phone;

import android.content.Context;
import android.content.res.Resources;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.viber.voip.ViberApplication;
import com.viber.voip.phone.call.CallerInfo;
import com.viber.voip.phone.call.k;
import com.viber.voip.phone.call.n;
import com.viber.voip.widget.PausableChronometer;

public class CallCard
  extends FrameLayout
{
  private RelativeLayout a;
  private TextView b;
  private TextView c;
  private TextView d;
  private TextView e;
  private PausableChronometer f;
  private ImageView g;
  private b h;
  private int i;
  private int j;
  
  public CallCard(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    LayoutInflater.from(paramContext).inflate(2130903146, this, true);
  }
  
  private void a(n paramn)
  {
    switch (paramn.c())
    {
    case 5: 
    default: 
      this.f.stop();
      this.f.setVisibility(8);
      this.b.setVisibility(0);
    case 3: 
      do
      {
        return;
        this.b.setVisibility(8);
        this.f.setVisibility(0);
        this.e.setVisibility(8);
        if (paramn.d())
        {
          this.f.stop();
          if (this.h == null) {
            this.h = new b(this, this.f);
          }
          b.a(this.h, 0);
          this.f.post(this.h);
          return;
        }
        this.f.setBase(SystemClock.elapsedRealtime() - paramn.x());
        this.f.start();
      } while (this.h == null);
      this.f.removeCallbacks(this.h);
      this.f.setMinWidth(0);
      return;
    case 2: 
      this.f.setVisibility(0);
      this.f.setBase(SystemClock.elapsedRealtime() - paramn.x());
      this.f.stop();
      this.e.setVisibility(8);
      return;
    }
    this.b.setVisibility(0);
    this.f.stop();
    this.f.setVisibility(8);
  }
  
  private void a(String paramString)
  {
    ViberApplication.log(3, "CallCard", paramString);
  }
  
  private void b()
  {
    this.a.setBackgroundColor(getResources().getColor(2131296442));
    this.a.setPadding((int)a(16.0F), 0, (int)a(16.0F), 0);
  }
  
  private void b(k paramk)
  {
    c(paramk);
  }
  
  private void c()
  {
    this.a.setBackgroundResource(2131296512);
    this.a.setPadding((int)a(16.0F), 0, (int)a(16.0F), 0);
  }
  
  private void c(k paramk)
  {
    if (paramk == null) {}
    do
    {
      return;
      paramk.d().c();
      d(paramk);
      e(paramk);
      a(paramk.d());
    } while (this.i == 0);
    this.e.setText(this.i);
    this.e.setTextColor(getResources().getColor(this.j));
    this.e.setVisibility(0);
  }
  
  private void d(k paramk)
  {
    int k = 2131493713;
    n localn = paramk.d();
    int m = localn.c();
    b();
    TextView localTextView;
    switch (m)
    {
    case 9: 
    default: 
      a("updateCardTitleWidgets#unknown call state = " + localn.c());
      return;
    case 6: 
      if (localn.b()) {
        k = 2131493714;
      }
    case 4: 
      String str = getContext().getString(k);
      this.b.setText(str);
      localTextView = this.b;
      if (m == 5) {}
      break;
    }
    for (boolean bool = true;; bool = false)
    {
      localTextView.setSingleLine(bool);
      return;
      if (paramk.e())
      {
        k = 2131493723;
        break;
      }
      k = 2131493808;
      break;
      k = 2131493715;
      break;
      k = 2131493717;
      break;
      if (localn.p() == 8) {
        k = 2131493722;
      }
      for (;;)
      {
        c();
        break;
        if (localn.p() == 7) {
          k = 2131493721;
        } else if (localn.p() == 2) {
          k = 2131493716;
        } else {
          k = 2131493718;
        }
      }
      k = 2131493720;
      b();
      break;
    }
  }
  
  private void e(k paramk)
  {
    CallerInfo localCallerInfo = paramk.c();
    a("updateDisplayForPerson(" + localCallerInfo + ")...");
    if (localCallerInfo.a().equals(getContext().getString(2131493744))) {
      this.d.setText(localCallerInfo.b());
    }
    for (;;)
    {
      this.e.setVisibility(8);
      if (localCallerInfo.c() != null) {
        setPhoto(localCallerInfo.c());
      }
      a("....updateDisplayForPerson done");
      return;
      this.d.setText(localCallerInfo.a());
    }
  }
  
  private void setPhoto(com.viber.voip.contacts.b.b paramb)
  {
    post(new a(this, paramb));
  }
  
  public float a(float paramFloat)
  {
    return TypedValue.applyDimension(1, paramFloat, getContext().getResources().getDisplayMetrics());
  }
  
  public void a()
  {
    this.f.c();
  }
  
  public void a(k paramk)
  {
    b(paramk);
  }
  
  public void a(boolean paramBoolean)
  {
    a("indicateViberOut: " + paramBoolean);
    TextView localTextView = this.c;
    if (paramBoolean) {}
    for (int k = 0;; k = 8)
    {
      localTextView.setVisibility(k);
      return;
    }
  }
  
  public TextView getUpperTitle()
  {
    return this.b;
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    if (isInEditMode()) {
      return;
    }
    this.a = ((RelativeLayout)findViewById(2131165611));
    this.b = ((TextView)findViewById(2131165612));
    this.c = ((TextView)findViewById(2131165614));
    this.d = ((TextView)findViewById(2131165400));
    this.e = ((TextView)findViewById(2131165615));
    this.f = ((PausableChronometer)findViewById(2131165453));
    this.g = ((ImageView)findViewById(2131165458));
  }
  
  public void setChronometerText(int paramInt)
  {
    this.f.b();
    this.f.stop();
    this.f.setText(paramInt);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.CallCard
 * JD-Core Version:    0.7.0.1
 */