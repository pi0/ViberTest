package com.viber.voip.gallery.preview;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

@SuppressLint({"ValidFragment"})
public class i
  extends Fragment
{
  ViewGroup a;
  View[] b;
  int c;
  j d;
  
  void a(int paramInt)
  {
    this.c = paramInt;
    ViewGroup localViewGroup = this.a;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(this.c);
    arrayOfObject[1] = this.d.toString();
    DoodleBaseActivity.a(localViewGroup, arrayOfObject);
  }
  
  void a(j paramj)
  {
    this.d = paramj;
    a(this.c);
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.b = new View[5];
    this.b[0] = DoodleBaseActivity.a(this.a.findViewById(2131165361), DoodleBaseActivity.d()[0]);
    this.b[1] = DoodleBaseActivity.a(this.a.findViewById(2131165364), DoodleBaseActivity.d()[1]);
    this.b[2] = DoodleBaseActivity.a(this.a.findViewById(2131165367), DoodleBaseActivity.d()[2]);
    this.b[3] = DoodleBaseActivity.a(this.a.findViewById(2131165370), DoodleBaseActivity.d()[3]);
    this.b[4] = DoodleBaseActivity.a(this.a.findViewById(2131165373), DoodleBaseActivity.d()[4]);
    DoodleBaseActivity.a(this.a.findViewById(2131165375), j.g.toString());
    DoodleBaseActivity.a(this.a.findViewById(2131165374), j.e.toString());
    DoodleBaseActivity.a(this.a.findViewById(2131165372), j.d.toString());
    DoodleBaseActivity.a(this.a.findViewById(2131165371), j.h.toString());
    DoodleBaseActivity.a(this.a.findViewById(2131165369), j.f.toString());
    DoodleBaseActivity.a(this.a.findViewById(2131165368), j.k.toString());
    DoodleBaseActivity.a(this.a.findViewById(2131165366), j.c.toString());
    DoodleBaseActivity.a(this.a.findViewById(2131165365), j.i.toString());
    DoodleBaseActivity.a(this.a.findViewById(2131165363), j.j.toString());
    DoodleBaseActivity.a(this.a.findViewById(2131165362), j.b.toString());
    a(this.d);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.a = ((ViewGroup)paramLayoutInflater.inflate(2130903060, paramViewGroup, false));
    return this.a;
  }
  
  public void onDestroyView()
  {
    this.a = null;
    this.b = null;
    super.onDestroyView();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.gallery.preview.i
 * JD-Core Version:    0.7.0.1
 */