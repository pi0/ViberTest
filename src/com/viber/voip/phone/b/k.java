package com.viber.voip.phone.b;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.ImageButton;
import android.widget.TextView;
import com.viber.jni.PhoneControllerListener;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.dialer.DialerCallbackListener;
import com.viber.jni.dialer.DialerController;
import com.viber.jni.dialer.DialerControllerDelegate.DialerCallback;
import com.viber.jni.dialer.DialerControllerDelegate.DialerHoldState;
import com.viber.jni.dialer.DialerControllerDelegate.DialerTransferCall;
import com.viber.jni.dialer.DialerControllerDelegate.DialerVideo;
import com.viber.jni.dialer.DialerHoldStateListener;
import com.viber.jni.dialer.DialerTransferCallListener;
import com.viber.jni.dialer.DialerVideoListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.bc;
import com.viber.voip.a.u;
import com.viber.voip.messages.extras.fb.FacebookLikeDialogActivity;
import com.viber.voip.phone.CallCard;
import com.viber.voip.phone.PhoneActivity;
import com.viber.voip.phone.b.a.e;
import com.viber.voip.phone.b.a.j;
import com.viber.voip.phone.c;
import com.viber.voip.phone.call.CallerInfo;
import com.viber.voip.phone.h;
import com.viber.voip.registration.HardwareParameters;
import com.viber.voip.sound.ISoundService;
import com.viber.voip.sound.ISoundService.SpeakerStateListener;
import com.viber.voip.util.at;
import com.viber.voip.util.fy;

@Deprecated
public class k
  extends ah
  implements View.OnClickListener, ISoundService.SpeakerStateListener
{
  static final String c = k.class.getSimpleName();
  private o f;
  private View g;
  private View h;
  private TextView i;
  private e j;
  private DialogInterface k;
  private ImageButton l;
  private View m;
  private ImageButton n;
  private com.viber.voip.phone.call.a o = ViberApplication.getInstance().getPhoneController(true).getCallHandler();
  private DialerController p = ViberApplication.getInstance().getPhoneController(true).getDialerController();
  private ISoundService q = ViberApplication.getInstance().getSoundService();
  private p r = new p(this);
  private j s;
  private u t = com.viber.voip.a.a.z;
  private int[] u = { 2131494222, 2131494223, 2131494224, 2131494225 };
  private boolean v = true;
  private boolean w = true;
  private fy x = new fy(new int[][] { { 1, 4, 8, 2130838013 }, { 4, 8, 2130838013 }, { 1, 4, 2130838016 }, { 4, 2130838016 }, { 1, 8, 2, 2130838019 }, { 1, 2130838022 }, { 8, 2130838010 } });
  
  public k(View paramView, PhoneActivity paramPhoneActivity)
  {
    super(paramView, paramPhoneActivity);
    this.m = paramView.findViewById(2131165313);
    this.l = ((ImageButton)paramView.findViewById(2131165327));
    this.h = paramView.findViewById(2131166019);
    this.g = paramView.findViewById(2131165613);
    this.i = ((TextView)paramView.findViewById(2131165434));
    this.n = ((ImageButton)paramView.findViewById(2131165610));
    this.n.setOnClickListener(this);
    this.s = new j(this.o, this.p, this.i, this.u);
    this.f = new o(paramView.findViewById(2131165322));
    this.j = new e(paramView.findViewById(2131165323), ViberApplication.getInstance().getSoundService());
    this.l.setOnClickListener(this);
    this.h.setOnClickListener(this);
    this.f.b.setOnClickListener(this);
    this.f.d.setOnClickListener(this);
    this.f.e.setOnClickListener(this);
    this.f.e.setTag(Boolean.valueOf(false));
    this.f.c.setEnabled(false);
    this.f.c.setVisibility(0);
    this.f.c.setOnClickListener(this);
    this.f.c.setTag(Boolean.valueOf(false));
    this.v = ViberApplication.getInstance().getHardwareParameters().isGsmSupported();
    this.f.a.setEnabled(this.v);
    this.f.a.setOnClickListener(this);
    this.w = ViberApplication.getInstance().getSoundService().isSpeakerphoneAllowed();
    this.f.f.setOnClickListener(this);
    e();
    if ((this.w) && (this.e != null) && (this.e.d().s()) && (!f())) {}
    for (boolean bool = true;; bool = false)
    {
      this.f.f.setChecked(bool);
      this.o.a(bool);
      if ((!this.v) && (!f())) {
        ViberApplication.getInstance().getSoundService().setSpeakerphoneOn(true);
      }
      if (c.f())
      {
        this.f.g.setVisibility(0);
        this.f.g.setOnClickListener(this);
        this.f.g.setEnabled(false);
        this.f.e.setVisibility(8);
        this.f.d.setOnLongClickListener(new l(this));
      }
      try
      {
        paramView.findViewById(2131165315).setVisibility(8);
        return;
      }
      catch (Exception localException) {}
    }
  }
  
  private void a(int paramInt)
  {
    String str1 = this.e.c().a();
    if (str1.equals(this.b.getString(2131493744))) {
      str1 = this.e.c().b();
    }
    String str2;
    switch (paramInt)
    {
    default: 
      str2 = this.b.getString(2131493818);
      if ((paramInt == 1) || (paramInt == 7))
      {
        str3 = this.b.getString(2131493813);
        localbc = bc.a();
        localu = this.t;
        this.t.getClass();
        localbc.a(localu.b("345"));
        this.k = at.a(this.b, 2131493811, str3, null, new m(this), 2131493814, 2131493815, false);
      }
      break;
    }
    while ((paramInt == 3) || (paramInt == 5))
    {
      String str3;
      bc localbc;
      u localu;
      return;
      str2 = this.b.getString(2131493812);
      break;
      str2 = this.b.getString(2131493816, new Object[] { str1 });
      break;
      str2 = this.b.getString(2131493818);
      break;
      str2 = this.b.getString(2131493817);
      break;
      str2 = this.b.getString(2131493819);
      break;
    }
    this.k = at.a(this.b, this.b.getString(2131493811), str2, null, false);
  }
  
  private void e()
  {
    h localh = this.f.f;
    if ((this.w) && ((this.v) || (f()))) {}
    for (boolean bool = true;; bool = false)
    {
      localh.setEnabled(bool);
      return;
    }
  }
  
  private boolean f()
  {
    return (this.q.isHeadsetPluggedIn()) || (this.q.isBluetoothScoOn());
  }
  
  private void g()
  {
    this.b.startActivity(new Intent("com.viber.voip.action.VIDEO_CALL"));
  }
  
  public void a(PhoneControllerWrapper paramPhoneControllerWrapper)
  {
    super.a(paramPhoneControllerWrapper);
    if (this.w) {
      this.q.registerSpeakerStateListener(this);
    }
    DialerCallbackListener localDialerCallbackListener = paramPhoneControllerWrapper.getDelegatesManager().getDialerCallbackListener();
    DialerControllerDelegate.DialerCallback[] arrayOfDialerCallback = new DialerControllerDelegate.DialerCallback[1];
    arrayOfDialerCallback[0] = this.r;
    localDialerCallbackListener.registerDelegate(arrayOfDialerCallback);
    DialerVideoListener localDialerVideoListener = paramPhoneControllerWrapper.getDelegatesManager().getDialerVideoListener();
    DialerControllerDelegate.DialerVideo[] arrayOfDialerVideo = new DialerControllerDelegate.DialerVideo[1];
    arrayOfDialerVideo[0] = this.r;
    localDialerVideoListener.registerDelegate(arrayOfDialerVideo);
    DialerHoldStateListener localDialerHoldStateListener = paramPhoneControllerWrapper.getDelegatesManager().getDialerHoldStateListener();
    DialerControllerDelegate.DialerHoldState[] arrayOfDialerHoldState = new DialerControllerDelegate.DialerHoldState[1];
    arrayOfDialerHoldState[0] = this.r;
    localDialerHoldStateListener.registerDelegate(arrayOfDialerHoldState);
    DialerTransferCallListener localDialerTransferCallListener = paramPhoneControllerWrapper.getDelegatesManager().getDialerTransferCallListener();
    DialerControllerDelegate.DialerTransferCall[] arrayOfDialerTransferCall = new DialerControllerDelegate.DialerTransferCall[1];
    arrayOfDialerTransferCall[0] = this.r;
    localDialerTransferCallListener.registerDelegate(arrayOfDialerTransferCall);
    this.d.setVisibility(0);
    this.g.setVisibility(0);
    this.l.setVisibility(0);
    this.f.a(0);
    if (d()) {
      this.s.a();
    }
    this.b.setVolumeControlStream(this.q.stream_Voice());
  }
  
  public void a(com.viber.voip.phone.call.k paramk)
  {
    boolean bool1 = true;
    label460:
    for (;;)
    {
      try
      {
        super.a(paramk);
        if (paramk != null)
        {
          if (paramk.d().u()) {
            this.d.setChronometerText(2131493724);
          }
          com.viber.voip.phone.call.n localn = paramk.d();
          if (localn != null)
          {
            h localh1 = this.f.e;
            if ((!localn.a()) || (!localn.B())) {
              continue;
            }
            bool2 = bool1;
            localh1.setChecked(bool2);
            this.f.d.setChecked(localn.q());
            this.f.f.setChecked(localn.s());
            this.i.setText(this.b.getString(this.u[localn.y()]));
            this.f.c.setChecked(paramk.d().u());
            if (localn.n()) {
              break label460;
            }
            if (!paramk.d().u()) {
              continue;
            }
            break label460;
            h localh2 = this.f.e;
            if ((i1 != 0) || (localn.C()) || (paramk.d().d())) {
              continue;
            }
            bool3 = bool1;
            localh2.setEnabled(bool3);
            if (this.v)
            {
              h localh6 = this.f.f;
              if (i1 != 0) {
                continue;
              }
              bool6 = bool1;
              localh6.setEnabled(bool6);
              h localh7 = this.f.a;
              if (i1 != 0) {
                continue;
              }
              bool7 = bool1;
              localh7.setEnabled(bool7);
            }
            h localh3 = this.f.d;
            if (i1 != 0) {
              continue;
            }
            bool4 = bool1;
            localh3.setEnabled(bool4);
            h localh4 = this.f.b;
            if (i1 != 0) {
              continue;
            }
            bool5 = bool1;
            localh4.setEnabled(bool5);
            if (c.f()) {
              this.f.g.setEnabled(true);
            }
            h localh5 = this.f.c;
            if (((paramk.f()) || (i1 != 0) || (localn.a()) || (localn.C()) || (paramk.d().d())) && (!paramk.d().u())) {
              continue;
            }
            localh5.setEnabled(bool1);
            this.n.setVisibility(8);
          }
        }
        return;
        boolean bool2 = false;
        continue;
        int i1 = 0;
        continue;
        boolean bool3 = false;
        continue;
        boolean bool6 = false;
        continue;
        boolean bool7 = false;
        continue;
        boolean bool4 = false;
        continue;
        boolean bool5 = false;
        continue;
        bool1 = false;
        continue;
        i1 = bool1;
      }
      finally {}
    }
  }
  
  public void a(boolean paramBoolean)
  {
    View localView;
    if ((this.k != null) && (((Dialog)this.k).isShowing()))
    {
      localView = ((Dialog)this.k).getWindow().getDecorView();
      if (!paramBoolean) {
        break label47;
      }
    }
    label47:
    for (int i1 = 8;; i1 = 0)
    {
      localView.setVisibility(i1);
      return;
    }
  }
  
  public void b()
  {
    super.b();
    if (this.w) {
      this.q.unregisterSpeakerStateListener(this);
    }
    PhoneControllerListener localPhoneControllerListener = ViberApplication.getInstance().getPhoneController(false).getDelegatesManager();
    localPhoneControllerListener.getDialerCallbackListener().removeDelegate(this.r);
    localPhoneControllerListener.getDialerVideoListener().removeDelegate(this.r);
    localPhoneControllerListener.getDialerHoldStateListener().removeDelegate(this.r);
    localPhoneControllerListener.getDialerTransferCallListener().removeDelegate(this.r);
    this.g.setVisibility(8);
    this.l.setVisibility(8);
    this.f.a(8);
    this.n.setVisibility(8);
    if (d()) {
      this.s.b();
    }
  }
  
  public boolean c()
  {
    return false;
  }
  
  public boolean d()
  {
    return true;
  }
  
  public void onClick(View paramView)
  {
    boolean bool = true;
    if (this.e == null) {
      return;
    }
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131165327: 
      this.o.a();
      this.p.handleHangup();
      PhoneActivity.d(FacebookLikeDialogActivity.a(this.e));
      return;
    case 2131165423: 
      bc.a().a(this.e.k().l());
      return;
    case 2131166019: 
      bc.a().a(this.e.k().l());
      c();
      return;
    case 2131166037: 
      if (((h)paramView).isChecked())
      {
        this.p.handleUnmute();
        return;
      }
      this.p.handleMute();
      return;
    case 2131166038: 
      if (((h)paramView).isChecked())
      {
        this.p.handleLocalUnhold();
        return;
      }
      this.p.handleLocalHold();
      return;
    case 2131166039: 
      com.viber.voip.phone.call.a locala = this.o;
      if (!((h)paramView).isChecked()) {}
      for (;;)
      {
        locala.a(bool);
        return;
        bool = false;
      }
    case 2131166036: 
      DialerController localDialerController = this.p;
      if (!((h)paramView).isChecked()) {}
      for (;;)
      {
        localDialerController.handleTransfer(bool);
        return;
        bool = false;
      }
    case 2131166035: 
      this.p.handleSwitchToGSM(this.e.c().b());
      return;
    case 2131165610: 
      this.b.c();
      return;
    }
    if (this.o.d().a()) {}
    g();
  }
  
  public void onHeadphonesConnected(boolean paramBoolean)
  {
    e();
  }
  
  public void onSpeakerStateChanged(boolean paramBoolean)
  {
    this.b.runOnUiThread(new n(this, paramBoolean));
  }
  
  public void onSpeakerStatePreChanged(boolean paramBoolean) {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.b.k
 * JD-Core Version:    0.7.0.1
 */