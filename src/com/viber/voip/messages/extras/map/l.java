package com.viber.voip.messages.extras.map;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.viber.dexshared.GMaps.Factory;
import com.viber.dexshared.SupportMapFragmentWrapper;
import com.viber.voip.ViberEnv;

public class l
  extends SupportMapFragmentWrapper
{
  private View a;
  private m b;
  
  public l()
  {
    super(ViberEnv.getGMapsFactory().newSupportMapFragmentHelper());
  }
  
  public m a()
  {
    return this.b;
  }
  
  public View getView()
  {
    return this.a;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.a = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    this.b = new m(getFragment().getActivity());
    this.b.addView(this.a);
    return this.b;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.map.l
 * JD-Core Version:    0.7.0.1
 */