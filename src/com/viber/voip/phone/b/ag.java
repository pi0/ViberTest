package com.viber.voip.phone.b;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.viber.voip.a.bc;
import com.viber.voip.a.g;
import com.viber.voip.phone.b.a.e;
import com.viber.voip.phone.call.a;
import com.viber.voip.phone.call.k;

public class ag
  extends c
{
  private View a;
  private e b;
  
  public e a()
  {
    if (this.b == null) {
      this.b = new e(e());
    }
    return this.b;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.a = paramLayoutInflater.inflate(2130903284, paramViewGroup, false);
    if (this.b == null) {
      this.b = new e(this.a, e());
    }
    for (;;)
    {
      return this.a;
      this.b.a(this.a);
    }
  }
  
  public void onResume()
  {
    super.onResume();
    k localk = c().b();
    if (localk != null) {
      bc.a().a(localk.k().l());
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.b.ag
 * JD-Core Version:    0.7.0.1
 */