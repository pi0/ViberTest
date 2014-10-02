package com.viber.voip.gallery.selection;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import com.viber.provider.b;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.gallery.GalleryItem;
import com.viber.voip.gallery.a.d;
import com.viber.voip.ui.ViberListView;
import com.viber.voip.ui.al;
import com.viber.voip.util.b.ab;
import com.viber.voip.util.b.ad;

public class q
  extends al
  implements com.viber.provider.e, n, p
{
  static final String a = q.class.getSimpleName();
  private i b;
  private ad c;
  private com.viber.voip.gallery.a.e d;
  private j e;
  private ViberListView f;
  private View g;
  private boolean h;
  private String i;
  private String j;
  
  private void a(GalleryItem paramGalleryItem, boolean paramBoolean)
  {
    if (this.b.a(paramGalleryItem, paramBoolean)) {
      this.e.notifyDataSetChanged();
    }
  }
  
  public void a()
  {
    if (this.e != null) {
      this.e.notifyDataSetChanged();
    }
  }
  
  public void a(b paramb) {}
  
  public void a(b paramb, boolean paramBoolean)
  {
    this.e.notifyDataSetChanged();
    if (this.e.getCount() == 0)
    {
      Toast.makeText(getActivity(), 2131494429, 0).show();
      dc.a(dk.a).post(new r(this));
    }
  }
  
  public void a(d paramd)
  {
    a(paramd.a(), false);
  }
  
  public boolean a(GalleryItem paramGalleryItem)
  {
    if (this.b != null) {
      return this.b.a(paramGalleryItem);
    }
    return false;
  }
  
  public void b()
  {
    this.h = true;
    if (this.g != null) {
      this.g.setVisibility(0);
    }
  }
  
  public void b(d paramd)
  {
    a(paramd.a(), true);
  }
  
  public void c()
  {
    this.h = false;
    if (this.g != null) {
      this.g.setVisibility(8);
    }
  }
  
  public void d()
  {
    if (this.c != null) {
      this.c.g();
    }
  }
  
  public void e()
  {
    if (this.c != null)
    {
      this.c.f();
      this.c.h();
    }
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    Context localContext = getActivity().getApplicationContext();
    if ((getArguments() == null) || (!getArguments().containsKey("extra_bucket_id")))
    {
      getFragmentManager().popBackStack();
      return;
    }
    this.j = getArguments().getString("extra_bucket_id");
    this.i = getArguments().getString("extra_bucket_name");
    this.c = ab.a(localContext, getActivity().getSupportFragmentManager());
    this.d = new com.viber.voip.gallery.a.e(this.j, localContext, getLoaderManager(), this);
    this.e = new j(localContext, this.c, this.d, this, this);
    this.f.setAdapter(this.e);
    this.d.e();
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if (!(paramActivity instanceof i)) {
      throw new RuntimeException("parent must implement Listener and GalleryController of GalleryImagesFragment");
    }
    this.b = ((i)paramActivity);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView1 = paramLayoutInflater.inflate(2130903068, paramViewGroup, false);
    View localView2 = paramLayoutInflater.inflate(2130903069, null, false);
    this.f = ((ViberListView)localView1.findViewById(16908298));
    this.g = localView2.findViewById(2131165402);
    this.f.addFooterView(localView2);
    View localView3;
    if (this.h)
    {
      localView3 = this.g;
      if (!this.h) {
        break label87;
      }
    }
    label87:
    for (int k = 0;; k = 8)
    {
      localView3.setVisibility(k);
      return localView1;
    }
  }
  
  public void onResume()
  {
    super.onResume();
    this.b.b(this.j, this.i);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.gallery.selection.q
 * JD-Core Version:    0.7.0.1
 */