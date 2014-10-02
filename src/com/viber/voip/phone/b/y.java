package com.viber.voip.phone.b;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnKeyListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.viber.jni.dialer.DialerController;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.bc;
import com.viber.voip.a.g;
import com.viber.voip.contacts.b.b;
import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.i;
import com.viber.voip.phone.call.CallerInfo;
import com.viber.voip.phone.call.a;
import com.viber.voip.phone.call.k;
import com.viber.voip.phone.call.n;
import com.viber.voip.sound.ISoundService;
import com.viber.voip.ui.call.WavesView;
import com.viber.voip.ui.call.f;
import com.viber.voip.util.gn;

public class y
  extends c
  implements View.OnKeyListener, f
{
  private View a;
  private ImageView b;
  private WavesView c;
  private TextView d;
  private TextView e;
  private k f;
  
  private Dialog a()
  {
    return new AlertDialog.Builder(getActivity()).setItems(2131623937, new aa(this)).setOnCancelListener(new z(this)).create();
  }
  
  private void a(String paramString1, String paramString2)
  {
    i locali = ViberApplication.getInstance().getMessagesManager();
    if ((!TextUtils.isEmpty(paramString2)) && (locali != null)) {
      locali.c().a(0, paramString2, 0L, "", 0, true, null, new ab(this, paramString2, paramString1, locali));
    }
  }
  
  public void a(int paramInt)
  {
    k localk = c().b();
    if (localk == null) {
      return;
    }
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      d().handleDecline();
      bc.a().a(h().b(Long.valueOf(localk.d().t() / 1000L)));
      getActivity().finish();
      return;
    case 2: 
      d().handleAnswer();
      bc.a().a(h().a(Long.valueOf(localk.d().t() / 1000L)));
      return;
    }
    e().stopRingtone();
    this.c.setVisibility(4);
    a().show();
  }
  
  public void a(k paramk, String paramString)
  {
    if (paramk != null)
    {
      if (TextUtils.isEmpty(paramString)) {
        gn.a(getActivity(), paramk.c().b(), 0L, 0L, paramk.c().a(), null);
      }
    }
    else {
      return;
    }
    a(paramString, paramk.c().b());
  }
  
  public void a(String paramString, int paramInt)
  {
    k localk = c().b();
    if (localk != null) {
      bc.a().a(h().a("Option " + paramInt, Long.valueOf(localk.d().t() / 1000L)));
    }
    d().handleDecline();
    a(localk, paramString);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    paramActivity.setVolumeControlStream(e().stream_Ring());
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.a = paramLayoutInflater.inflate(2130903290, paramViewGroup, false);
    this.c = ((WavesView)this.a.findViewById(2131166042));
    this.b = ((ImageView)this.a.findViewById(2131166022));
    this.d = ((TextView)this.a.findViewById(2131166023));
    this.e = ((TextView)this.a.findViewById(2131166024));
    this.c.setTargetListener(this);
    return this.a;
  }
  
  public void onDestroyView()
  {
    getView().setOnKeyListener(null);
    super.onDestroyView();
  }
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getAction() == 0) && ((24 == paramKeyEvent.getKeyCode()) || (25 == paramKeyEvent.getKeyCode()))) {
      return ViberApplication.getInstance().getSoundService().stopRingtone();
    }
    switch (paramInt)
    {
    default: 
      return false;
    }
    if (paramKeyEvent.getAction() == 0) {
      a(2);
    }
    return true;
  }
  
  public void onPause()
  {
    super.onPause();
  }
  
  public void onResume()
  {
    super.onResume();
    k localk = c().b();
    if ((localk != null) && (this.f != localk))
    {
      this.f = localk;
      b localb = localk.c().c();
      if (localb == null) {
        break label104;
      }
      this.d.setText(localb.a());
      a(this.b, localb.b(), 2130838385);
    }
    for (;;)
    {
      getView().setFocusableInTouchMode(true);
      getView().setFocusable(true);
      getView().setOnKeyListener(this);
      getView().requestFocus();
      return;
      label104:
      a(this.b, null, 2130838385);
      this.d.setText(localk.c().b());
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.b.y
 * JD-Core Version:    0.7.0.1
 */