package com.viber.voip.phone.b;

import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.TextView;
import com.viber.jni.PhoneControllerListener;
import com.viber.jni.dialer.DialerCallInterruptionListener;
import com.viber.jni.dialer.DialerControllerDelegate.DialerCallInterruption;
import com.viber.jni.dialer.DialerControllerDelegate.DialerPhoneState;
import com.viber.jni.dialer.DialerControllerDelegate.DialerTransferCall;
import com.viber.jni.dialer.DialerPhoneStateListener;
import com.viber.jni.dialer.DialerTransferCallListener;
import com.viber.voip.dk;
import com.viber.voip.phone.b.a.i;
import com.viber.voip.phone.b.a.j;
import com.viber.voip.phone.call.CallerInfo;
import com.viber.voip.phone.call.k;
import com.viber.voip.phone.call.n;
import com.viber.voip.registration.HardwareParameters;
import com.viber.voip.sound.ISoundService;

public class a
  extends c
  implements DialerControllerDelegate.DialerCallInterruption, DialerControllerDelegate.DialerPhoneState, DialerControllerDelegate.DialerTransferCall
{
  private View a;
  private TextView b;
  private TextView c;
  private TextView d;
  private View e;
  private TextView f;
  private ImageButton g;
  private com.viber.voip.phone.b.a.a h;
  private com.viber.voip.phone.b.a.c i;
  private i j;
  private k k;
  private int[] l = { 2131494222, 2131494223, 2131494224, 2131494225 };
  private j m;
  private View.OnClickListener n = new b(this);
  
  private void a(k paramk)
  {
    if (this.k != paramk)
    {
      this.k = paramk;
      this.h.a(paramk);
      this.i.a(paramk);
      if (!paramk.f()) {
        break label70;
      }
      this.f.setVisibility(0);
    }
    for (;;)
    {
      com.viber.voip.contacts.b.b localb = paramk.c().c();
      if (localb == null) {
        break;
      }
      this.b.setText(localb.a());
      return;
      label70:
      this.f.setVisibility(4);
    }
    this.b.setText(paramk.c().b());
  }
  
  private void b(k paramk)
  {
    n localn1 = paramk.d();
    n localn2 = (n)localn1.clone();
    localn1.addObserver(this.h);
    this.h.update(localn1, localn2);
    this.h.a(b());
    localn1.addObserver(this.i);
    this.i.update(localn1, localn2);
    if (this.j != null)
    {
      localn1.addObserver(this.j);
      this.j.update(localn1, localn2);
    }
  }
  
  private void c(k paramk)
  {
    if (paramk == null) {}
    n localn;
    do
    {
      do
      {
        return;
        localn = paramk.d();
      } while (localn == null);
      localn.deleteObserver(this.h);
      localn.deleteObserver(this.i);
    } while (this.j == null);
    localn.deleteObserver(this.j);
  }
  
  private void i()
  {
    this.m.a();
    this.e.setVisibility(0);
  }
  
  private void j()
  {
    this.e.setVisibility(4);
    this.m.b();
  }
  
  public com.viber.voip.phone.b.a.a a()
  {
    if (this.h == null) {
      this.h = new com.viber.voip.phone.b.a.a(c().b(), false, e(), d());
    }
    return this.h;
  }
  
  public boolean b()
  {
    ISoundService localISoundService = e();
    boolean bool1 = f().isGsmSupported();
    boolean bool2 = localISoundService.isSpeakerphoneAllowed();
    if ((localISoundService.isHeadsetPluggedIn()) || (localISoundService.isBluetoothScoOn())) {}
    for (int i1 = 1;; i1 = 0)
    {
      if ((!bool1) && (i1 == 0) && (bool2)) {
        localISoundService.setSpeakerphoneOn(true);
      }
      if ((!bool2) || ((!bool1) && (i1 == 0))) {
        break;
      }
      return true;
    }
    return false;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.a = paramLayoutInflater.inflate(2130903289, paramViewGroup, false);
    this.b = ((TextView)this.a.findViewById(2131166023));
    this.c = ((TextView)this.a.findViewById(2131166024));
    this.d = ((TextView)this.a.findViewById(2131166041));
    this.e = this.a.findViewById(2131166040);
    this.f = ((TextView)this.a.findViewById(2131166025));
    this.g = ((ImageButton)this.a.findViewById(2131166026));
    this.m = new j(c(), d(), this.d, this.l);
    k localk = c().b();
    if (this.h == null) {
      this.h = new com.viber.voip.phone.b.a.a(this.a, localk, false, e(), d());
    }
    for (;;)
    {
      this.h.b(this.n);
      this.i = new com.viber.voip.phone.b.a.c(this.c, localk);
      this.k = null;
      a(localk);
      return this.a;
      this.h.a(this.a);
    }
  }
  
  public void onDataInterruption(boolean paramBoolean)
  {
    com.viber.voip.phone.b.a.a locala = this.h;
    if (!paramBoolean) {}
    for (boolean bool = true;; bool = false)
    {
      locala.b(bool);
      return;
    }
  }
  
  public void onPhoneStateChanged(int paramInt)
  {
    if (paramInt == 3) {}
    for (boolean bool = true;; bool = false)
    {
      this.h.b(bool);
      if (!bool) {
        break;
      }
      i();
      return;
    }
    j();
  }
  
  public void onResume()
  {
    super.onResume();
    k localk = c().b();
    if (localk == null) {
      return;
    }
    a(localk);
    if (localk.d().c() == 3) {
      i();
    }
    for (;;)
    {
      b(localk);
      return;
      j();
    }
  }
  
  public void onStart()
  {
    super.onStart();
    g().getDialerPhoneStateListener().registerDelegate(this, dk.a.a());
    g().getDialerCallInterruptionListener().registerDelegate(this, dk.a.a());
    g().getDialerTransferCallListener().registerDelegate(this, dk.a.a());
    Log.d("xxx", "onPhoneStateChanged listener bound");
  }
  
  public void onStop()
  {
    super.onStop();
    this.m.b();
    c(this.k);
    g().getDialerPhoneStateListener().removeDelegate(this);
    g().getDialerCallInterruptionListener().removeDelegate(this);
    g().getDialerTransferCallListener().removeDelegate(this);
  }
  
  public void onTransferFailed(int paramInt)
  {
    if ((paramInt == 3) || (paramInt == 5)) {
      return;
    }
    com.viber.voip.phone.b.b.a.a(paramInt, this.b.getText().toString()).show(getFragmentManager(), "tag_transfer_failed_dialog");
  }
  
  public void onTransferReplyOK(long paramLong) {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.b.a
 * JD-Core Version:    0.7.0.1
 */