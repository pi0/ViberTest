package com.viber.voip.registration;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.viber.voip.ViberApplication;
import com.viber.voip.util.hb;

public class bn
  extends ai
  implements View.OnClickListener
{
  private boolean b = true;
  
  private void b(String paramString)
  {
    startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString)));
  }
  
  private void l()
  {
    g().setStep(0, true);
  }
  
  public void a(String paramString1, String paramString2)
  {
    super.a(paramString1, paramString2);
    d(paramString1);
  }
  
  protected void b()
  {
    dj.a(false);
    j();
  }
  
  protected void c()
  {
    if (ViberApplication.isTablet()) {
      this.b = false;
    }
    super.c();
  }
  
  protected void d()
  {
    super.d();
    if ((getActivity() != null) && (!getActivity().isFinishing()) && (ViberApplication.isTablet())) {
      this.b = true;
    }
  }
  
  public boolean onActivityBackPressed()
  {
    l();
    return true;
  }
  
  public void onClick(View paramView)
  {
    if (!this.b) {
      return;
    }
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131165460: 
      b("http://viber.com/itunes");
      return;
    case 2131165881: 
      hb.a(getActivity());
      return;
    case 2131166009: 
      l();
      return;
    case 2131165461: 
      b("http://viber.com/market");
      return;
    case 2131165462: 
      b("http://viber.com/windowsphone");
      return;
    case 2131165463: 
      b("http://viber.com/blackberry");
      return;
    }
    b("http://viber.com");
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903278, paramViewGroup, false);
    localView.findViewById(2131166009).setOnClickListener(this);
    localView.findViewById(2131166006).setOnClickListener(this);
    a(localView);
    localView.findViewById(2131165460).setOnClickListener(this);
    localView.findViewById(2131165461).setOnClickListener(this);
    localView.findViewById(2131165462).setOnClickListener(this);
    localView.findViewById(2131165463).setOnClickListener(this);
    return localView;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.bn
 * JD-Core Version:    0.7.0.1
 */