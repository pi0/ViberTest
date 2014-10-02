package com.viber.voip.phone.b;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageButton;
import com.viber.voip.ViberApplication;
import com.viber.voip.phone.b.a.e;
import com.viber.voip.phone.call.CallerInfo;
import com.viber.voip.phone.call.k;
import com.viber.voip.sound.ISoundService;
import com.viber.voip.util.gl;

public class u
  extends c
  implements com.viber.voip.g.b
{
  private View a;
  private View b;
  private View c;
  private k d;
  
  private ag a()
  {
    ag localag = (ag)getChildFragmentManager().findFragmentByTag("fragment_call_keypad");
    if (localag == null)
    {
      localag = new ag();
      localag.a().a(new v(this));
    }
    return localag;
  }
  
  private a b()
  {
    a locala = (a)getChildFragmentManager().findFragmentByTag("fragment_call_controls");
    if (locala == null)
    {
      locala = new a();
      locala.a().a(new w(this));
    }
    return locala;
  }
  
  public void a(boolean paramBoolean)
  {
    View localView1 = getView();
    View localView2;
    if ((localView1 != null) && (localView1.getParent() != null))
    {
      localView2 = (View)localView1.getParent();
      if (!paramBoolean) {
        break label44;
      }
    }
    label44:
    for (int i = 8;; i = 0)
    {
      localView2.setVisibility(i);
      b(paramBoolean);
      return;
    }
  }
  
  @TargetApi(11)
  public void b(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      getActivity().getWindow().addFlags(1024);
      if (Build.VERSION.SDK_INT >= 11) {
        getActivity().getWindow().getDecorView().setSystemUiVisibility(2);
      }
    }
    do
    {
      return;
      getActivity().getWindow().clearFlags(1024);
    } while (Build.VERSION.SDK_INT < 11);
    getActivity().getWindow().getDecorView().setSystemUiVisibility(0);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    paramActivity.setVolumeControlStream(e().stream_Voice());
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.a = paramLayoutInflater.inflate(2130903287, paramViewGroup, false);
    this.b = paramViewGroup;
    this.c = ((ImageButton)this.a.findViewById(2131166033));
    this.c.setOnClickListener(new x(this, null));
    getChildFragmentManager().beginTransaction().replace(2131166032, b(), "fragment_call_controls").commit();
    return this.a;
  }
  
  public void onPause()
  {
    super.onPause();
    ViberApplication.getInstance().getPhoneApp().f().a(null);
  }
  
  public void onResume()
  {
    super.onResume();
    ViberApplication.getInstance().getPhoneApp().f().a(this);
    k localk = c().b();
    if ((localk != null) && (localk != this.d))
    {
      this.d = localk;
      com.viber.voip.contacts.b.b localb = localk.c().c();
      if ((localb != null) && (localb.b() != null)) {
        a(this.b, localb.b(), 2130838099);
      }
    }
    else
    {
      return;
    }
    gl.a(this.b, getResources().getDrawable(2130838099));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.b.u
 * JD-Core Version:    0.7.0.1
 */