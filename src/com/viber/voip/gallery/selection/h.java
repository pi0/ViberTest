package com.viber.voip.gallery.selection;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.viber.provider.e;
import com.viber.voip.gallery.a.a;
import com.viber.voip.ui.al;
import com.viber.voip.util.b.ab;
import com.viber.voip.util.b.ad;

public class h
  extends al
  implements e, f
{
  static final String a = h.class.getSimpleName();
  private i b;
  private a c;
  private ad d;
  private c e;
  private ListView f;
  private View g;
  private boolean h;
  
  public void a()
  {
    this.h = true;
    if (this.g != null) {
      this.g.setVisibility(0);
    }
  }
  
  public void a(com.viber.provider.b paramb) {}
  
  public void a(com.viber.provider.b paramb, boolean paramBoolean)
  {
    this.e.notifyDataSetChanged();
  }
  
  public void a(com.viber.voip.gallery.a.b paramb)
  {
    this.b.a(paramb.a(), paramb.b());
  }
  
  public void b()
  {
    this.h = false;
    if (this.g != null) {
      this.g.setVisibility(8);
    }
  }
  
  public void c()
  {
    if (this.d != null) {
      this.d.g();
    }
  }
  
  public void d()
  {
    if (this.d != null)
    {
      this.d.f();
      this.d.h();
    }
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    Context localContext = getActivity().getApplicationContext();
    this.d = ab.b(localContext, getActivity().getSupportFragmentManager());
    this.c = new a(getActivity().getApplicationContext(), getLoaderManager(), this);
    this.e = new c(localContext, this.d, this.c, this);
    this.f.setAdapter(this.e);
    this.c.e();
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if (!(paramActivity instanceof i)) {
      throw new RuntimeException("parent must implement GalleryController");
    }
    this.b = ((i)paramActivity);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView1 = paramLayoutInflater.inflate(2130903067, paramViewGroup, false);
    View localView2 = paramLayoutInflater.inflate(2130903069, null, false);
    this.f = ((ListView)localView1.findViewById(16908298));
    this.g = localView2.findViewById(2131165402);
    this.f.addFooterView(localView2);
    View localView3;
    if (this.h)
    {
      localView3 = this.g;
      if (!this.h) {
        break label96;
      }
    }
    label96:
    for (int i = 0;; i = 8)
    {
      localView3.setVisibility(i);
      this.b.b();
      return localView1;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.gallery.selection.h
 * JD-Core Version:    0.7.0.1
 */