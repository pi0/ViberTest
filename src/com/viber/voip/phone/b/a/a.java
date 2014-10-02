package com.viber.voip.phone.b.a;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ToggleButton;
import com.viber.jni.dialer.DialerController;
import com.viber.voip.phone.c;
import com.viber.voip.phone.call.CallerInfo;
import com.viber.voip.phone.call.k;
import com.viber.voip.phone.call.n;
import com.viber.voip.sound.ISoundService;
import java.util.Observable;
import java.util.Observer;

public class a
  implements View.OnClickListener, Observer
{
  private ISoundService a;
  private DialerController b;
  private boolean c;
  private Button d;
  private Button e;
  private ToggleButton f;
  private ToggleButton g;
  private ToggleButton h;
  private ToggleButton i;
  private Button j;
  private View.OnClickListener k;
  private View[] l;
  private boolean m = true;
  private k n;
  
  public a(View paramView, k paramk, boolean paramBoolean, ISoundService paramISoundService, DialerController paramDialerController)
  {
    this(paramk, paramBoolean, paramISoundService, paramDialerController);
    if (paramView != null) {
      a(paramView);
    }
  }
  
  public a(k paramk, boolean paramBoolean, ISoundService paramISoundService, DialerController paramDialerController)
  {
    this.n = paramk;
    this.a = paramISoundService;
    this.b = paramDialerController;
    a(paramBoolean);
  }
  
  public void a(View.OnClickListener paramOnClickListener)
  {
    this.k = paramOnClickListener;
    if (this.e != null) {
      this.e.setOnClickListener(paramOnClickListener);
    }
  }
  
  public void a(View paramView)
  {
    this.d = ((Button)paramView.findViewById(2131166035));
    this.e = ((Button)paramView.findViewById(2131165423));
    this.f = ((ToggleButton)paramView.findViewById(2131166036));
    this.g = ((ToggleButton)paramView.findViewById(2131166037));
    this.h = ((ToggleButton)paramView.findViewById(2131166038));
    this.i = ((ToggleButton)paramView.findViewById(2131166039));
    this.j = ((Button)paramView.findViewById(2131166034));
    this.i.setEnabled(this.c);
    View[] arrayOfView = new View[3];
    arrayOfView[0] = this.e;
    arrayOfView[1] = this.g;
    arrayOfView[2] = this.h;
    this.l = arrayOfView;
    this.d.setOnClickListener(this);
    this.f.setOnClickListener(this);
    this.g.setOnClickListener(this);
    this.i.setOnClickListener(this);
    this.h.setOnClickListener(this);
    if (this.k != null) {
      this.e.setOnClickListener(this.k);
    }
  }
  
  public void a(k paramk)
  {
    this.n = paramk;
  }
  
  public void a(boolean paramBoolean)
  {
    this.c = paramBoolean;
    if (this.i != null) {
      this.i.setEnabled(paramBoolean);
    }
  }
  
  public void b(View.OnClickListener paramOnClickListener)
  {
    this.j.setOnClickListener(paramOnClickListener);
  }
  
  public void b(boolean paramBoolean)
  {
    boolean bool1 = true;
    this.m = paramBoolean;
    for (int i1 = 0; i1 < this.l.length; i1++) {
      this.l[i1].setEnabled(paramBoolean);
    }
    boolean bool2;
    Button localButton;
    if ((paramBoolean) && (!this.n.d().a()))
    {
      bool2 = bool1;
      localButton = this.j;
      if ((!bool2) || (!c.f())) {
        break label93;
      }
    }
    for (;;)
    {
      localButton.setEnabled(bool1);
      this.f.setEnabled(bool2);
      return;
      bool2 = false;
      break;
      label93:
      bool1 = false;
    }
  }
  
  public void onClick(View paramView)
  {
    if (paramView == this.h) {
      if (this.h.isChecked()) {
        this.b.handleLocalHold();
      }
    }
    do
    {
      return;
      this.b.handleLocalUnhold();
      return;
      if (paramView == this.g)
      {
        if (this.g.isChecked())
        {
          this.b.handleMute();
          return;
        }
        this.b.handleUnmute();
        return;
      }
      if (paramView == this.i)
      {
        this.a.setSpeakerphoneOn(this.i.isChecked());
        return;
      }
      if (paramView == this.f)
      {
        this.b.handleTransfer(this.f.isChecked());
        return;
      }
    } while (paramView != this.d);
    this.b.handleSwitchToGSM(this.n.c().b());
  }
  
  public void update(Observable paramObservable, Object paramObject)
  {
    n localn = (n)paramObservable;
    b(this.n.h());
    this.g.setChecked(localn.q());
    this.i.setChecked(localn.s());
    ToggleButton localToggleButton = this.h;
    if ((localn.a()) && (localn.B())) {}
    for (boolean bool = true;; bool = false)
    {
      localToggleButton.setChecked(bool);
      this.f.setChecked(localn.u());
      if (!this.c) {
        this.i.setEnabled(localn.r());
      }
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.b.a.a
 * JD-Core Version:    0.7.0.1
 */